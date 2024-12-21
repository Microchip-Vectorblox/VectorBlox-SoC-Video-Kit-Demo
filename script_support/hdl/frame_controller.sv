module frame_controller (
    input logic        pclk_i,
    input logic        resetn_i,
    input logic        p_min_delay_path_sel_i,
    input logic        p_frame_swap_toggle_i,
    input logic [31:0] p_scal_b_frame_offset_addr_i,
    input logic [31:0] p_scal_g_frame_offset_addr_i,
    input logic [31:0] p_scal_r_frame_offset_addr_i,
    ////////////////////////////////////////////////////////
    input logic        vid_in_clk_i,
    input logic        vid_in_frame_sync_i,

    input  logic        disp_clk_i,
    ////////////////////////////////////////////////////////
    output logic [ 7:0] p_frame_process_addr_o,
    output logic [ 7:0] p_frame_overlay_draw_addr_o,
    ///////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////
    output logic [ 7:0] vid_in_frame_write_addr_o,
    output logic [31:0] vid_in_scal_b_frame_write_addr_o,
    output logic [31:0] vid_in_scal_g_frame_write_addr_o,
    output logic [31:0] vid_in_scal_r_frame_write_addr_o,

    ///////////////////////////////////////////////////////
    output logic [7:0] d_frame_read_addr_o,

    ///////////////////////////////////////////////////////
    output logic [7:0] d_frame_overlay_rd_addr_o,
    output logic [7:0] d_frame_overlay_wr_addr_o
    ///////////////////////////////////////////////////////
);

  localparam bit [7:0] SCALER_FRAME_BASE_ADDRESS = 32'h6800_0000 >> 24;
  localparam bit [7:0] MAIN_FRAME_BASE_ADDRESS = 32'h7000_0000 >> 24;
  localparam bit [7:0] OVERLAY_FRAME_BASE_ADDRESS = 32'h7800_0000 >> 24;

  logic [ 7:0] d_frame_process_addr_o;

  logic [2:0] d_frame_wr_ptr;
  logic       d_frame_swap_toggle;
  logic       d_min_delay_path_sel;
  logic       vid_in_frame_wr_done;

  vb_sync2ff u_2_vb_sync2ff (
      .clk(disp_clk_i),
      .reset_n(resetn_i),
      .d_i(p_min_delay_path_sel_i),
      .q_o(d_min_delay_path_sel)
  );

  vb_sync2ff u_1_vb_sync2ff (
      .clk(disp_clk_i),
      .reset_n(resetn_i),
      .d_i(p_frame_swap_toggle_i),
      .q_o(d_frame_swap_toggle)
  );

  vbx_cm_cdc #(.DATA_WIDTH(1)) u_vbx_cm_cdc (
    .from_clk(vid_in_clk_i),
    .from_resetn(resetn_i),
    .from_valid_pulse_i(vid_in_frame_wr_done),
    .from_data_i(1'b0),
    .to_clk(disp_clk_i),
    .to_resetn(resetn_i),
    .to_valid_pulse_o(d_frame_wr_done),
    .to_data_o()
);


  frame_controller_disp u_frame_controller_disp (
      .disp_clk_i                 (disp_clk_i),
      .resetn_i                   (resetn_i),
      .d_min_delay_path_sel       (d_min_delay_path_sel),
      .d_frame_swap_toggle        (d_frame_swap_toggle),
      .d_frame_wr_done            (d_frame_wr_done),
      .d_frame_process_addr_o     (d_frame_process_addr_o),
      .d_frame_overlay_draw_addr_o(d_frame_overlay_draw_addr_o),
      .d_frame_read_addr_o        (d_frame_read_addr_o),
      .d_frame_overlay_rd_addr_o  (d_frame_overlay_rd_addr_o),
      .d_frame_overlay_wr_addr_o  (d_frame_overlay_wr_addr_o),
      .d_frame_wr_ptr_o           (d_frame_wr_ptr)
  );


  // p_frame_process_addr_o and p_frame_overlay_draw_addr_o address are stable by the time SW application reads
  // these values from registers after it toggles the Frame SWAP reg bit.
  assign p_frame_process_addr_o = d_frame_process_addr_o;
  assign p_frame_overlay_draw_addr_o = {
    OVERLAY_FRAME_BASE_ADDRESS[7:3], p_frame_process_addr_o[2:0]
  };


  // Not concerned on CDC for offset addr at the moment as the base address top bits are
  // static (SCALER_FRAME_BASE_ADDRESS) and these offsets are updated only once at
  // the setup before running VB model
  wire [23:0] vid_in_scaler_b_frame_offset_addr = p_scal_b_frame_offset_addr_i[23:0];
  wire [23:0] vid_in_scaler_g_frame_offset_addr = p_scal_g_frame_offset_addr_i[23:0];
  wire [23:0] vid_in_scaler_r_frame_offset_addr = p_scal_r_frame_offset_addr_i[23:0];

  frame_controller_vid_in u_frame_controller_vid_in (
      .resetn_i                           (resetn_i),
      .vid_in_clk_i                       (vid_in_clk_i),
      .vid_in_frame_sync_i                (vid_in_frame_sync_i),
      .vid_in_scaler_b_frame_offset_addr_i(vid_in_scaler_b_frame_offset_addr),
      .vid_in_scaler_g_frame_offset_addr_i(vid_in_scaler_g_frame_offset_addr),
      .vid_in_scaler_r_frame_offset_addr_i(vid_in_scaler_r_frame_offset_addr),
      .d_frame_wr_ptr_i                   (d_frame_wr_ptr),
      ////////////////////////////////////////////////////////////
      .vid_in_frame_wr_done_o             (vid_in_frame_wr_done),
      .vid_in_frame_write_addr_o          (vid_in_frame_write_addr_o),
      .vid_in_scal_b_frame_write_addr_o   (vid_in_scal_b_frame_write_addr_o),
      .vid_in_scal_g_frame_write_addr_o   (vid_in_scal_g_frame_write_addr_o),
      .vid_in_scal_r_frame_write_addr_o   (vid_in_scal_r_frame_write_addr_o)
  );


  wire error_overlay_wr_ptr_eq_frame_wr_ptr = (d_frame_overlay_wr_addr_o[2:0] == d_frame_wr_ptr);
  wire error_overlay_wr_ptr_eq_process_rd_ptr = (d_frame_overlay_wr_addr_o[2:0] == d_frame_process_addr_o[2:0]);
  wire error_overlay_wr_ptr_eq_disp_rd_ptr = (d_frame_overlay_wr_addr_o[2:0] == d_frame_read_addr_o[2:0]);
  wire error_vid_in_wr_ptr_eq_disp_rd_ptr = (vid_in_frame_write_addr_o[2:0] == d_frame_read_addr_o[2:0]);

endmodule
