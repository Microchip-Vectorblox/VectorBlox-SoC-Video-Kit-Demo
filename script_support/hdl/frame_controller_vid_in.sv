module frame_controller_vid_in (
    input  logic        resetn_i,
    input  logic        vid_in_clk_i,
    input  logic        vid_in_frame_sync_i,
    input  logic [23:0] vid_in_scaler_b_frame_offset_addr_i,
    input  logic [23:0] vid_in_scaler_g_frame_offset_addr_i,
    input  logic [23:0] vid_in_scaler_r_frame_offset_addr_i,
    input  logic [ 2:0] d_frame_wr_ptr_i,
////////////////////////////////////////////////////////////
    output logic        vid_in_frame_wr_done_o,
    output logic [ 7:0] vid_in_frame_write_addr_o,
    output logic [31:0] vid_in_scal_b_frame_write_addr_o,
    output logic [31:0] vid_in_scal_g_frame_write_addr_o,
    output logic [31:0] vid_in_scal_r_frame_write_addr_o
);


  localparam bit [7:0] SCALER_FRAME_BASE_ADDRESS = 32'h6800_0000 >> 24;
  localparam bit [7:0] MAIN_FRAME_BASE_ADDRESS = 32'h7000_0000 >> 24;
  localparam bit [7:0] OVERLAY_FRAME_BASE_ADDRESS = 32'h7800_0000 >> 24;

  logic        vid_in_frame_sync_q1;
  logic        vid_in_frame_sync_redet;
  logic        vid_in_frame_wr_done;
  logic [7:0]  vid_in_frame_wr_done_q;

  assign vid_in_frame_wr_done = vid_in_frame_sync_redet;
  always_ff @(posedge vid_in_clk_i or negedge resetn_i) begin
    if (!resetn_i) begin
      vid_in_frame_sync_q1        <= 0;
      vid_in_frame_sync_redet     <= 0;
  	  vid_in_frame_wr_done_q[7:0] <= '0;
    end else begin
      vid_in_frame_sync_q1        <= vid_in_frame_sync_i;
      vid_in_frame_sync_redet     <= (vid_in_frame_sync_i & ~vid_in_frame_sync_q1);
	  vid_in_frame_wr_done_q[7:0] <= {vid_in_frame_wr_done_q[6:0], vid_in_frame_wr_done};
    end
  end

  logic [2:0] vid_in_frame_wr_ptr;
  always_ff @(posedge vid_in_clk_i or negedge resetn_i) begin
    if (!resetn_i) begin
      vid_in_frame_wr_ptr     <= 3'b000;
    end else if (vid_in_frame_wr_done_q[6]) begin
      vid_in_frame_wr_ptr     <= d_frame_wr_ptr_i;
    end
  end

  assign vid_in_scal_b_frame_write_addr_o = {SCALER_FRAME_BASE_ADDRESS[7:3], vid_in_frame_wr_ptr[2:0], vid_in_scaler_b_frame_offset_addr_i[23:0]};
  assign vid_in_scal_g_frame_write_addr_o = {SCALER_FRAME_BASE_ADDRESS[7:3], vid_in_frame_wr_ptr[2:0], vid_in_scaler_g_frame_offset_addr_i[23:0]};
  assign vid_in_scal_r_frame_write_addr_o = {SCALER_FRAME_BASE_ADDRESS[7:3], vid_in_frame_wr_ptr[2:0], vid_in_scaler_r_frame_offset_addr_i[23:0]};
  assign vid_in_frame_write_addr_o = {MAIN_FRAME_BASE_ADDRESS[7:3], vid_in_frame_wr_ptr[2:0]};
  assign vid_in_frame_wr_done_o = vid_in_frame_wr_done;
endmodule