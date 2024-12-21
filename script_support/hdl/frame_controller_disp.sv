
module frame_controller_disp (
    input  logic       resetn_i,
    input  logic       disp_clk_i,
    input  logic       d_min_delay_path_sel,
    input  logic       d_frame_swap_toggle,
    input  logic       d_frame_wr_done,
    ////////////////////////////////////////////////////////
    output logic [7:0] d_frame_process_addr_o,
    output logic [7:0] d_frame_overlay_draw_addr_o,
    ///////////////////////////////////////////////////////
    output logic [7:0] d_frame_read_addr_o,
    ///////////////////////////////////////////////////////
    output logic [7:0] d_frame_overlay_rd_addr_o,
    output logic [7:0] d_frame_overlay_wr_addr_o,
    ///////////////////////////////////////////////////////
    output logic [2:0] d_frame_wr_ptr_o
);
  localparam bit [7:0] SCALER_FRAME_BASE_ADDRESS = 32'h6800_0000 >> 24;
  localparam bit [7:0] MAIN_FRAME_BASE_ADDRESS = 32'h7000_0000 >> 24;
  localparam bit [7:0] OVERLAY_FRAME_BASE_ADDRESS = 32'h7800_0000 >> 24;


  //logic d_frame_swap_toggle;
  logic d_frame_swap_toggle_q1;
  wire d_frame_swap_edet = (d_frame_swap_toggle_q1 != d_frame_swap_toggle);

  always_ff @(posedge disp_clk_i or negedge resetn_i) begin
    if (!resetn_i) begin
      d_frame_swap_toggle_q1 <= 0;
    end else begin
      d_frame_swap_toggle_q1 <= d_frame_swap_toggle;
    end
  end

  logic [2:0] d_frame_wr_ptr;
  logic [2:0] d_frame_process_rd_ptr;
  logic [2:0] d_frame_disp_rd_ptr;
  logic [2:0] d_frame_disp_rd_ptr_dly;
  logic [2:0] d_frame_disp_rd_ptr_dly2;
  logic [2:0] d_frame_overlay_wr_ptr;
  logic [2:0] d_frame_wrote_ptr;
  logic       d_wrote_ptr_valid;

  always_ff @(posedge disp_clk_i or negedge resetn_i) begin
    if (!resetn_i) begin
      d_frame_wr_ptr           <= 3'b000;
      d_frame_process_rd_ptr   <= 3'b001;
      d_frame_disp_rd_ptr      <= 3'b010;
      d_frame_disp_rd_ptr_dly  <= 3'b011;
      d_frame_disp_rd_ptr_dly2 <= 3'b100;
      d_frame_wrote_ptr        <= 3'b101;

      d_frame_overlay_wr_ptr   <= 3'b011;
      d_wrote_ptr_valid        <= 1'b0;
    end else if (d_frame_swap_edet && d_wrote_ptr_valid) begin
      d_frame_process_rd_ptr   <= d_frame_wr_done ? d_frame_wr_ptr : d_frame_wrote_ptr;
      d_frame_disp_rd_ptr      <= d_frame_process_rd_ptr;
      d_frame_disp_rd_ptr_dly  <= d_frame_disp_rd_ptr;
      d_frame_disp_rd_ptr_dly2 <= d_frame_disp_rd_ptr_dly;
      d_frame_wrote_ptr        <= d_frame_disp_rd_ptr_dly2;

      d_frame_overlay_wr_ptr   <= d_frame_disp_rd_ptr_dly;
      d_frame_wr_ptr           <= d_frame_wr_done ? d_frame_wrote_ptr : d_frame_wr_ptr;
      d_wrote_ptr_valid        <= 1'b0;
    end else if (d_frame_wr_done) begin
      d_frame_wrote_ptr <= d_frame_wr_ptr;
      d_frame_wr_ptr    <= d_frame_wrote_ptr;
      d_wrote_ptr_valid <= 1'b1;
    end
  end


  logic [2:0] d_frame_wr_ptr_dly;
  always_ff @(posedge disp_clk_i or negedge resetn_i) begin
    if (!resetn_i) begin
      d_frame_wr_ptr_dly <= 3'h0;
    end else if (d_frame_wr_done) begin
      d_frame_wr_ptr_dly <= d_frame_wr_ptr;
    end
  end

  assign d_frame_read_addr_o = {
    MAIN_FRAME_BASE_ADDRESS[7:3],
    d_min_delay_path_sel ? d_frame_wr_ptr_dly[2:0] : d_frame_disp_rd_ptr[2:0]
  };
  assign d_frame_overlay_rd_addr_o = {OVERLAY_FRAME_BASE_ADDRESS[7:3], d_frame_disp_rd_ptr[2:0]};
  assign d_frame_overlay_wr_addr_o = {OVERLAY_FRAME_BASE_ADDRESS[7:3], d_frame_overlay_wr_ptr[2:0]};
  assign d_frame_process_addr_o = {MAIN_FRAME_BASE_ADDRESS[7:3], d_frame_process_rd_ptr[2:0]};
  assign d_frame_overlay_draw_addr_o = {
    OVERLAY_FRAME_BASE_ADDRESS[7:3], d_frame_process_rd_ptr[2:0]
  };
  assign d_frame_wr_ptr_o = d_frame_wr_ptr;
endmodule

