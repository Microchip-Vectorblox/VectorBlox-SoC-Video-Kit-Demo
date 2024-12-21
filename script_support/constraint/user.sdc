
# I2C clock for camera data given to MSS block
set_clock_groups -name {clk_grp_fic1} -asynchronous -group [ get_clocks { CLOCKS_AND_RESETS_inst_0/PF_CCC_MAIN/PF_CCC_C0_0/pll_inst_0/OUT1 } ]
# APB clock
set_clock_groups -name {clk_grp_fab_apb} -asynchronous -group [ get_clocks { CLOCKS_AND_RESETS_inst_0/PF_CCC_MAIN/PF_CCC_C0_0/pll_inst_0/OUT3 } ]

set_clock_groups -name {clk_grp_cam1_clk} -asynchronous -group [ get_clocks { CAM1_RX_CLK_P } ]
set_clock_groups -name {hdmi_tx_clk_grp} -asynchronous -group [ get_clocks { Video_Pipeline_HDMI_0/PF_XCVR_ERM_C2_0/I_XCVR/LANE0/TX_CLK_R } ]
set_clock_groups -name {hdmi_rx_clk_grp_b} -asynchronous -group [ get_clocks { Video_Pipeline_HDMI_0/PF_XCVR_ERM_C2_0/I_XCVR/LANE1/RX_CLK_R } ]
set_clock_groups -name {hdmi_rx_clk_grp_g} -asynchronous -group [ get_clocks { Video_Pipeline_HDMI_0/PF_XCVR_ERM_C2_0/I_XCVR/LANE2/RX_CLK_R } ]
set_clock_groups -name {hdmi_rx_clk_grp_r} -asynchronous -group [ get_clocks { Video_Pipeline_HDMI_0/PF_XCVR_ERM_C2_0/I_XCVR/LANE3/RX_CLK_R } ]

#CCC
set_clock_groups -name {clk_grp_ccc_c0o0} -asynchronous -group [ get_clocks { CLOCKS_AND_RESETS_inst_0/PF_CCC_MAIN/PF_CCC_C0_0/pll_inst_0/OUT0 } ]

#DDR
set_clock_groups -name {clk_grp_cam_ddr_o1} -asynchronous -group [ get_clocks { PF_DDR4_C0_0/CCC_0/pll_inst_0/OUT1 } ]
set_clock_groups -name {clk_grp_cam_ddr_o2} -asynchronous -group [ get_clocks { PF_DDR4_C0_0/CCC_0/pll_inst_0/OUT2 } ]
set_clock_groups -name {clk_grp_cam_ddr_o0} -asynchronous -group [ get_clocks { PF_DDR4_C0_0/CCC_0/pll_inst_0/OUT0 } ]
set_clock_groups -name {clk_grp_cam_ddr_o3} -asynchronous -group [ get_clocks { PF_DDR4_C0_0/CCC_0/pll_inst_0/OUT3 } ]

# CDC between APB and Display clocks
set_max_delay 20 -from [ get_clocks { CLOCKS_AND_RESETS_inst_0/PF_CCC_MAIN/PF_CCC_C0_0/pll_inst_0/OUT3 } ] -to [ get_clocks { Video_Pipeline_HDMI_0/PF_XCVR_ERM_C2_0/I_XCVR/LANE1/TX_CLK_R } ]
set_max_delay 6.7 -from [ get_clocks { Video_Pipeline_HDMI_0/PF_XCVR_ERM_C2_0/I_XCVR/LANE1/TX_CLK_R } ] -to [ get_clocks { CLOCKS_AND_RESETS_inst_0/PF_CCC_MAIN/PF_CCC_C0_0/pll_inst_0/OUT3 } ]

# CDC between Camera and Display clocks
set_max_delay 6.7 -from [ get_clocks { Video_Pipeline_HDMI_0/IMX334_IF_TOP_0/PF_CCC_C2_0/PF_CCC_C2_0/pll_inst_0/OUT0 } ] -to [ get_clocks { Video_Pipeline_HDMI_0/PF_XCVR_ERM_C2_0/I_XCVR/LANE1/TX_CLK_R } ]

#cam clocks
set_clock_groups -name {clk_grp_cam_ccc_o0} -asynchronous -group [ get_clocks {Video_Pipeline_HDMI_0/IMX334_IF_TOP_0/PF_CCC_C2_0/PF_CCC_C2_0/pll_inst_0/OUT0 } ]
set_clock_groups -name {clk_grp_cam_ccc_ydiv0} -asynchronous -group [ get_clocks {Video_Pipeline_HDMI_0/IMX334_IF_TOP_0/PF_IOD_GENERIC_RX_C0_0/PF_IOD_0/PF_CLK_DIV_FIFO/I_CDD/Y_DIV } ]

# I2C clock for camera data given to MSS block
set_clock_groups -name {clk_grp_i2c} -asynchronous -group [ get_clocks { osc_rc2mhz } ]

#####################################################
#VID TX 170MHZ 
set_clock_groups -name {clk_grp_vid_tx_170mhz} -asynchronous -group [ get_clocks {CLOCKS_AND_RESETS_inst_0/PF_CCC_170MCLK_0/PF_CCC_170MCLK_0/pll_inst_0/OUT0} ]

# CDC between APB and VID 170MHZ clocks
set_max_delay 20 -from [ get_clocks { CLOCKS_AND_RESETS_inst_0/PF_CCC_MAIN/PF_CCC_C0_0/pll_inst_0/OUT3 } ] -to [ get_clocks {CLOCKS_AND_RESETS_inst_0/PF_CCC_170MCLK_0/PF_CCC_170MCLK_0/pll_inst_0/OUT0} ]
set_max_delay 5.88 -from [ get_clocks {CLOCKS_AND_RESETS_inst_0/PF_CCC_170MCLK_0/PF_CCC_170MCLK_0/pll_inst_0/OUT0} ] -to [ get_clocks { CLOCKS_AND_RESETS_inst_0/PF_CCC_MAIN/PF_CCC_C0_0/pll_inst_0/OUT3 } ]

# CDC between Camera and VID 170MHZ clocks
set_max_delay 5.88 -from [ get_clocks { Video_Pipeline_HDMI_0/IMX334_IF_TOP_0/PF_CCC_C2_0/PF_CCC_C2_0/pll_inst_0/OUT0 } ] -to [ get_clocks {CLOCKS_AND_RESETS_inst_0/PF_CCC_170MCLK_0/PF_CCC_170MCLK_0/pll_inst_0/OUT0} ]

# CDC between HDMI and VID 170MHZ clocks
set_max_delay 5.88 -from [ get_clocks {Video_Pipeline_HDMI_0/PF_XCVR_ERM_C2_0/I_XCVR/LANE0/RX_CLK_R} ] -to [ get_clocks {CLOCKS_AND_RESETS_inst_0/PF_CCC_170MCLK_0/PF_CCC_170MCLK_0/pll_inst_0/OUT0} ]
set_max_delay 5.88 -from [ get_clocks {Video_Pipeline_HDMI_0/PF_XCVR_ERM_C2_0/I_XCVR/LANE1/RX_CLK_R} ] -to [ get_clocks {CLOCKS_AND_RESETS_inst_0/PF_CCC_170MCLK_0/PF_CCC_170MCLK_0/pll_inst_0/OUT0} ]
set_max_delay 5.88 -from [ get_clocks {Video_Pipeline_HDMI_0/PF_XCVR_ERM_C2_0/I_XCVR/LANE2/RX_CLK_R} ] -to [ get_clocks {CLOCKS_AND_RESETS_inst_0/PF_CCC_170MCLK_0/PF_CCC_170MCLK_0/pll_inst_0/OUT0} ]
set_max_delay 5.88 -from [ get_clocks {Video_Pipeline_HDMI_0/PF_XCVR_ERM_C2_0/I_XCVR/LANE3/RX_CLK_R} ] -to [ get_clocks {CLOCKS_AND_RESETS_inst_0/PF_CCC_170MCLK_0/PF_CCC_170MCLK_0/pll_inst_0/OUT0} ]

# CDC between VID 170MHZ and Display clocks
set_max_delay 6.7 -from [ get_clocks {CLOCKS_AND_RESETS_inst_0/PF_CCC_170MCLK_0/PF_CCC_170MCLK_0/pll_inst_0/OUT0} ] -to [ get_clocks { Video_Pipeline_HDMI_0/PF_XCVR_ERM_C2_0/I_XCVR/LANE1/TX_CLK_R } ]
set_max_delay 6.7 -from [ get_clocks { Video_Pipeline_HDMI_0/PF_XCVR_ERM_C2_0/I_XCVR/LANE1/TX_CLK_R } ] -to [ get_clocks {CLOCKS_AND_RESETS_inst_0/PF_CCC_170MCLK_0/PF_CCC_170MCLK_0/pll_inst_0/OUT0} ]
