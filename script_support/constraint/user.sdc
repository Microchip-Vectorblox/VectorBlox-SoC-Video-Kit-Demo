
set_clock_groups -name {clk_grp_fic1} -asynchronous -group [ get_clocks { CLOCKS_AND_RESETS_inst_0/PF_CCC_MAIN/PF_CCC_C0_0/pll_inst_0/OUT1 } ]
set_clock_groups -name {clk_grp_fab_apb} -asynchronous -group [ get_clocks { CLOCKS_AND_RESETS_inst_0/PF_CCC_MAIN/PF_CCC_C0_0/pll_inst_0/OUT2 } ]

set_clock_groups -name {hdmi_tx_clk_grp} -asynchronous -group [ get_clocks { Video_Pipeline_HDMI_0/PF_XCVR_ERM_C2_0/I_XCVR/LANE0/TX_CLK_R } ]
set_clock_groups -name {hdmi_rx_clk_grp_b} -asynchronous -group [ get_clocks { Video_Pipeline_HDMI_0/PF_XCVR_ERM_C2_0/I_XCVR/LANE1/RX_CLK_R } ]
set_clock_groups -name {hdmi_rx_clk_grp_g} -asynchronous -group [ get_clocks { Video_Pipeline_HDMI_0/PF_XCVR_ERM_C2_0/I_XCVR/LANE2/RX_CLK_R } ]
set_clock_groups -name {hdmi_rx_clk_grp_r} -asynchronous -group [ get_clocks { Video_Pipeline_HDMI_0/PF_XCVR_ERM_C2_0/I_XCVR/LANE3/RX_CLK_R } ]

#CCC
set_clock_groups -name {clk_grp_ccc_c0o0} -asynchronous -group [ get_clocks { CLOCKS_AND_RESETS_inst_0/PF_CCC_MAIN/PF_CCC_C0_0/pll_inst_0/OUT0 } ]

#DDR
set_clock_groups -name {clk_grp_cam_ddr_o1} -asynchronous -group [ get_clocks { Video_Pipeline_HDMI_0/PF_DDR4_C0_0/CCC_0/pll_inst_0/OUT1 } ]
set_clock_groups -name {clk_grp_cam_ddr_o2} -asynchronous -group [ get_clocks { Video_Pipeline_HDMI_0/PF_DDR4_C0_0/CCC_0/pll_inst_0/OUT2 } ]
set_clock_groups -name {clk_grp_cam_ddr_o0} -asynchronous -group [ get_clocks { Video_Pipeline_HDMI_0/PF_DDR4_C0_0/CCC_0/pll_inst_0/OUT0 } ]
set_clock_groups -name {clk_grp_cam_ddr_o3} -asynchronous -group [ get_clocks { Video_Pipeline_HDMI_0/PF_DDR4_C0_0/CCC_0/pll_inst_0/OUT3 } ]
