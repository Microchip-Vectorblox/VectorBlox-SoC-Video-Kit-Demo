module DDR_Frame_Blanker#(
  parameter DATA_WIDTH          = 8,
  parameter ADDRESS_WIDTH       = 32,
  parameter FRAME_ADDR_LENGTH   = 8,
  parameter MAX_BURST_LENGTH    = 256,
  parameter MAX_LINE_SIZE       = 1920,
  parameter STRIDE_ISBYTES      = 0,

  parameter AXI_ADDRESS_WIDTH = 32,
  parameter AXI_DATA_WIDTH    = 512
  )
  (
    //AXI signals
    input  aclk,
    input  aresetn,

    input                             enable_i,
    input                             frame_sync_i,
    input                             frame_swap_i,
    input  [FRAME_ADDR_LENGTH-1  : 0] frame_start_addr_i,
    input  [15 : 0]                   horiz_resolution_i,
    input  [15 : 0]                   vert_resolution_i,
    input  [ADDRESS_WIDTH-1 : 0]      line_stride_i,
    output                            blank_done_o,

    //BIF Signals 
    input                             AWREADY,
    output                            AWVALID,
    output [ADDRESS_WIDTH-1 : 0]      AWADDR,
    output [7 : 0]                    AWLEN,

    output [AXI_DATA_WIDTH-1 : 0]     WDATA,
    output                            WVALID,
    input                             BUSER
  );

//=================================================================================================
// parameter declarations
//=================================================================================================

  localparam  LINE_GAP          = 16'h2000;
  localparam  MAX_BIT_WIDTH     = 256;
  localparam  IDLE              = 2'd0;
  localparam  WRITE_REQUESTING  = 2'd1;
  localparam  WRITING           = 2'd2;
  localparam  V_COUNT_CHK       = 2'd3;

//=================================================================================================
// Signal declarations
//=================================================================================================
  
  reg   [1  : 0]  s_state;
  reg   [15 : 0]  s_counter;
  reg   [15 : 0]  s_hcount;
  reg   [15 : 0]  s_vcount;  
  reg   [23 : 0]  s_line_counter;
  reg             s_blank_done;
  wire            s_start;

  reg             a_wvalid;
  reg             a_awvalid;
  reg   [15 : 0]  a_awlen;
  reg   [7 : 0]   start_addr;

//=================================================================================================
//   Top level output port assignments
//=================================================================================================

  assign blank_done_o = s_blank_done;

  assign AWLEN    = a_awlen - 1;
  assign WDATA    = '0;
  assign AWVALID  = a_awvalid;
  assign WVALID   = a_wvalid;
  assign AWADDR   = {start_addr, s_line_counter};
  
//=================================================================================================
// Asynchronous blocks
//=================================================================================================
wire frame_swap_toggle;
reg frame_swap_toggle_q1;

  vb_sync2ff u_1_vb_sync2ff (
      .clk(aclk),
      .reset_n(aresetn),
      .d_i(frame_swap_i),
      .q_o(frame_swap_toggle)
  );

  wire frame_swap_edet = (frame_swap_toggle_q1 != frame_swap_toggle);
  reg [4:0] frame_swap_edet_q;
  always @(posedge aclk or negedge aresetn)
  begin
    if(!aresetn) begin
      frame_swap_toggle_q1 <= 1'b0;
      frame_swap_edet_q[4:0] <= '0;
    end else begin
      frame_swap_toggle_q1 <= frame_swap_toggle;
      frame_swap_edet_q[4:0] <= {frame_swap_edet_q[3:0], frame_swap_edet};
    end
  end
  assign s_start =  frame_swap_edet_q[4] && enable_i; // by the time frame_swap_edet_q[4] occurs the write address is stable.

  always @(posedge aclk or negedge aresetn)
  begin
    if(!aresetn) begin
      start_addr <= 8'h78;
    end else if (s_start) begin
      start_addr <= frame_start_addr_i;
    end
  end
  
// --=================================================================================================
// -- Synchronous blocks
// --=================================================================================================

// --------------------------------------------------------------------------
// -- Name       : FRAME_BLANK_FSM
// -- Description: FSM writes to DDR to clear values
// --------------------------------------------------------------------------  
  always @(posedge aclk or negedge aresetn)
  begin
    if(!aresetn)
    begin
      s_state             <= IDLE;
      a_awvalid           <= 1'b0;
      a_wvalid            <= 1'b0;
      s_hcount            <=   '0;
      s_vcount            <=   '0;
      s_counter           <=   '0;
      a_awlen             <=   '0;
      s_line_counter      <=   '0;
      s_blank_done        <= 1'b0;
    end
    else
    begin
      case (s_state)
// -----------------------------
//  IDLE state
// -----------------------------
        IDLE:
        begin
          s_blank_done    <= 1'b0;
          a_awvalid       <= 1'b0;
          s_counter       <=   '0;
          a_wvalid        <= 1'b0;
          if(s_start) 
          begin
            s_state             <= WRITE_REQUESTING;
          end
        end
// -----------------------------
//  WRITE_REQUESTING state
// -----------------------------
        WRITE_REQUESTING:
        begin
          s_counter           <= '0;
          a_awvalid           <= 1'b1;
          a_awlen             <= {4'b0, horiz_resolution_i[15:4]};
          if(AWREADY) 
          begin
            a_awvalid <= 1'b0;
            s_state   <= WRITING;
          end
        end
// -----------------------------
//  WRITING state
// -----------------------------
        WRITING:
        begin
          if(BUSER)
            s_state <= V_COUNT_CHK;
          else 
          begin 
            if (s_counter >= a_awlen)
             a_wvalid   <= 1'b0;
            else
            begin
              a_wvalid   <= 1'b1;
              s_counter  <= s_counter + 1'b1;
            end 
          end
        end
// -----------------------------
//  V_COUNT_CHK state
// -----------------------------
        V_COUNT_CHK :
        begin
          if(s_vcount < vert_resolution_i) 
          begin
            s_state        <= WRITE_REQUESTING;
            s_line_counter <= s_line_counter + LINE_GAP;
            s_vcount       <= s_vcount + 1'b1;
          end
          else
          begin
            s_vcount       <= '0;
            s_line_counter <= '0;
            s_state        <= IDLE;
            s_blank_done   <= 1'b1;
          end
        end
// -----------------------------
//  DEFAULT state (should not happen)
// -----------------------------
        default: s_state    <= IDLE;
    endcase
    end

  end


  endmodule