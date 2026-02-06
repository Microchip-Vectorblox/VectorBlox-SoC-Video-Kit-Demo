# Creating SmartDesign "DDR_AXI4_INTERCONNECT"
set sd_name {DDR_AXI4_INTERCONNECT}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_ARREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_AWREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_BVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_RLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_RVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_WREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_DDR} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_HLS} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_MSS} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_VBX} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_ARVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_AWVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_BREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_RREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_WLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_WVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_ARVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_AWVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_BREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_RREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_WLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_WVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_ARVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_AWVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_BREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_RREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_WLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_WVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_ARVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_AWVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_BREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_RREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_WLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_WVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_DDR} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_MSS} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_VBX} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_ARVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_AWVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_BREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_RREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_WLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_WVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_ARVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_AWVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_BREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_RREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_WLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_WVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_ARVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_AWVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_BREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_RREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_WLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_WVALID} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_ARVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_AWVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_BREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_RREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_WLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_WVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_ARREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_AWREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_BVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_RLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_RVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_WREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_ARREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_AWREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_BVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_RLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_RVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_WREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_ARREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_AWREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_BVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_RLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_RVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_WREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_ARREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_AWREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_BVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_RLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_RVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_WREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_ARREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_AWREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_BVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_RLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_RVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_WREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_ARREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_AWREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_BVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_RLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_RVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_WREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_ARREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_AWREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_BVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_RLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_RVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_WREADY} -port_direction {OUT}


# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_BID} -port_direction {IN} -port_range {[10:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_BRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_BUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_RDATA} -port_direction {IN} -port_range {[511:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_RID} -port_direction {IN} -port_range {[10:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_RRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_RUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_ARADDR} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_ARBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_ARCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_ARID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_ARLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_ARLOCK} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_ARPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_ARQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_ARREGION} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_ARSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_ARUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_AWADDR} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_AWBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_AWCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_AWID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_AWLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_AWLOCK} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_AWPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_AWQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_AWREGION} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_AWSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_AWUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_WDATA} -port_direction {IN} -port_range {[255:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_WSTRB} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_WUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_ARADDR} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_ARBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_ARCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_ARID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_ARLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_ARLOCK} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_ARPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_ARQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_ARREGION} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_ARSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_ARUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_AWADDR} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_AWBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_AWCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_AWID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_AWLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_AWLOCK} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_AWPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_AWQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_AWREGION} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_AWSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_AWUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_WDATA} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_WSTRB} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_WUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_ARADDR} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_ARBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_ARCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_ARID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_ARLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_ARLOCK} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_ARPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_ARQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_ARREGION} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_ARSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_ARUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_AWADDR} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_AWBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_AWCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_AWID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_AWLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_AWLOCK} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_AWPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_AWQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_AWREGION} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_AWSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_AWUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_WDATA} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_WSTRB} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_WUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_ARADDR} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_ARBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_ARCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_ARID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_ARLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_ARLOCK} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_ARPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_ARQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_ARREGION} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_ARSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_ARUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_AWADDR} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_AWBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_AWCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_AWID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_AWLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_AWLOCK} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_AWPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_AWQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_AWREGION} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_AWSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_AWUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_WDATA} -port_direction {IN} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_WSTRB} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_WUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_ARADDR} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_ARBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_ARCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_ARID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_ARLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_ARLOCK} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_ARPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_ARQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_ARREGION} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_ARSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_ARUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_AWADDR} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_AWBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_AWCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_AWID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_AWLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_AWLOCK} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_AWPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_AWQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_AWREGION} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_AWSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_AWUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_WDATA} -port_direction {IN} -port_range {[255:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_WSTRB} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_WUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_ARADDR} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_ARBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_ARCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_ARID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_ARLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_ARLOCK} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_ARPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_ARQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_ARREGION} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_ARSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_ARUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_AWADDR} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_AWBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_AWCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_AWID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_AWLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_AWLOCK} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_AWPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_AWQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_AWREGION} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_AWSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_AWUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_WDATA} -port_direction {IN} -port_range {[255:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_WSTRB} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_WUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_ARADDR} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_ARBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_ARCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_ARID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_ARLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_ARLOCK} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_ARPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_ARQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_ARREGION} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_ARSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_ARUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_AWADDR} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_AWBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_AWCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_AWID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_AWLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_AWLOCK} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_AWPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_AWQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_AWREGION} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_AWSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_AWUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_WDATA} -port_direction {IN} -port_range {[255:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_WSTRB} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_WUSER} -port_direction {IN} -port_range {[0:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_ARADDR} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_ARBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_ARCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_ARID} -port_direction {OUT} -port_range {[10:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_ARLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_ARLOCK} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_ARPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_ARQOS} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_ARREGION} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_ARSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_ARUSER} -port_direction {OUT} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_AWADDR} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_AWBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_AWCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_AWID} -port_direction {OUT} -port_range {[10:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_AWLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_AWLOCK} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_AWPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_AWQOS} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_AWREGION} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_AWSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_AWUSER} -port_direction {OUT} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_WDATA} -port_direction {OUT} -port_range {[511:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_WSTRB} -port_direction {OUT} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4mslave0_SLAVE0_WUSER} -port_direction {OUT} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_BID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_BRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_BUSER} -port_direction {OUT} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_RDATA} -port_direction {OUT} -port_range {[255:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_RID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_RRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M_MASTER4_RUSER} -port_direction {OUT} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_BID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_BRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_BUSER} -port_direction {OUT} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_RDATA} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_RID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_RRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M_MASTER2_RUSER} -port_direction {OUT} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_BID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_BRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_BUSER} -port_direction {OUT} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_RDATA} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_RID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_RRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M_MASTER3_RUSER} -port_direction {OUT} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_BID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_BRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_BUSER} -port_direction {OUT} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_RDATA} -port_direction {OUT} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_RID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_RRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M_MASTER0_RUSER} -port_direction {OUT} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_BID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_BRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_BUSER} -port_direction {OUT} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_RDATA} -port_direction {OUT} -port_range {[255:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_RID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_RRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M_MASTER5_RUSER} -port_direction {OUT} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_BID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_BRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_BUSER} -port_direction {OUT} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_RDATA} -port_direction {OUT} -port_range {[255:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_RID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_RRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM_MASTER1_RUSER} -port_direction {OUT} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_BID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_BRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_BUSER} -port_direction {OUT} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_RDATA} -port_direction {OUT} -port_range {[255:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_RID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_RRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM_MASTER6_RUSER} -port_direction {OUT} -port_range {[0:0]}


# Create top level Bus interface Ports
sd_create_bif_port -sd_name ${sd_name} -port_name {AXI4mslave0} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {mirroredSlave} -port_bif_mapping {\
"AWID:AXI4mslave0_SLAVE0_AWID" \
"AWADDR:AXI4mslave0_SLAVE0_AWADDR" \
"AWLEN:AXI4mslave0_SLAVE0_AWLEN" \
"AWSIZE:AXI4mslave0_SLAVE0_AWSIZE" \
"AWBURST:AXI4mslave0_SLAVE0_AWBURST" \
"AWLOCK:AXI4mslave0_SLAVE0_AWLOCK" \
"AWCACHE:AXI4mslave0_SLAVE0_AWCACHE" \
"AWPROT:AXI4mslave0_SLAVE0_AWPROT" \
"AWQOS:AXI4mslave0_SLAVE0_AWQOS" \
"AWREGION:AXI4mslave0_SLAVE0_AWREGION" \
"AWVALID:AXI4mslave0_SLAVE0_AWVALID" \
"AWREADY:AXI4mslave0_SLAVE0_AWREADY" \
"WDATA:AXI4mslave0_SLAVE0_WDATA" \
"WSTRB:AXI4mslave0_SLAVE0_WSTRB" \
"WLAST:AXI4mslave0_SLAVE0_WLAST" \
"WVALID:AXI4mslave0_SLAVE0_WVALID" \
"WREADY:AXI4mslave0_SLAVE0_WREADY" \
"BID:AXI4mslave0_SLAVE0_BID" \
"BRESP:AXI4mslave0_SLAVE0_BRESP" \
"BVALID:AXI4mslave0_SLAVE0_BVALID" \
"BREADY:AXI4mslave0_SLAVE0_BREADY" \
"ARID:AXI4mslave0_SLAVE0_ARID" \
"ARADDR:AXI4mslave0_SLAVE0_ARADDR" \
"ARLEN:AXI4mslave0_SLAVE0_ARLEN" \
"ARSIZE:AXI4mslave0_SLAVE0_ARSIZE" \
"ARBURST:AXI4mslave0_SLAVE0_ARBURST" \
"ARLOCK:AXI4mslave0_SLAVE0_ARLOCK" \
"ARCACHE:AXI4mslave0_SLAVE0_ARCACHE" \
"ARPROT:AXI4mslave0_SLAVE0_ARPROT" \
"ARQOS:AXI4mslave0_SLAVE0_ARQOS" \
"ARREGION:AXI4mslave0_SLAVE0_ARREGION" \
"ARVALID:AXI4mslave0_SLAVE0_ARVALID" \
"ARREADY:AXI4mslave0_SLAVE0_ARREADY" \
"RID:AXI4mslave0_SLAVE0_RID" \
"RDATA:AXI4mslave0_SLAVE0_RDATA" \
"RRESP:AXI4mslave0_SLAVE0_RRESP" \
"RLAST:AXI4mslave0_SLAVE0_RLAST" \
"RVALID:AXI4mslave0_SLAVE0_RVALID" \
"RREADY:AXI4mslave0_SLAVE0_RREADY" \
"AWUSER:AXI4mslave0_SLAVE0_AWUSER" \
"WUSER:AXI4mslave0_SLAVE0_WUSER" \
"BUSER:AXI4mslave0_SLAVE0_BUSER" \
"ARUSER:AXI4mslave0_SLAVE0_ARUSER" \
"RUSER:AXI4mslave0_SLAVE0_RUSER" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {MSS_FIC_1_AXI4M} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {mirroredMaster} -port_bif_mapping {\
"AWID:MSS_FIC_1_AXI4M_MASTER0_AWID" \
"AWADDR:MSS_FIC_1_AXI4M_MASTER0_AWADDR" \
"AWLEN:MSS_FIC_1_AXI4M_MASTER0_AWLEN" \
"AWSIZE:MSS_FIC_1_AXI4M_MASTER0_AWSIZE" \
"AWBURST:MSS_FIC_1_AXI4M_MASTER0_AWBURST" \
"AWLOCK:MSS_FIC_1_AXI4M_MASTER0_AWLOCK" \
"AWCACHE:MSS_FIC_1_AXI4M_MASTER0_AWCACHE" \
"AWPROT:MSS_FIC_1_AXI4M_MASTER0_AWPROT" \
"AWQOS:MSS_FIC_1_AXI4M_MASTER0_AWQOS" \
"AWREGION:MSS_FIC_1_AXI4M_MASTER0_AWREGION" \
"AWVALID:MSS_FIC_1_AXI4M_MASTER0_AWVALID" \
"AWREADY:MSS_FIC_1_AXI4M_MASTER0_AWREADY" \
"WDATA:MSS_FIC_1_AXI4M_MASTER0_WDATA" \
"WSTRB:MSS_FIC_1_AXI4M_MASTER0_WSTRB" \
"WLAST:MSS_FIC_1_AXI4M_MASTER0_WLAST" \
"WVALID:MSS_FIC_1_AXI4M_MASTER0_WVALID" \
"WREADY:MSS_FIC_1_AXI4M_MASTER0_WREADY" \
"BID:MSS_FIC_1_AXI4M_MASTER0_BID" \
"BRESP:MSS_FIC_1_AXI4M_MASTER0_BRESP" \
"BVALID:MSS_FIC_1_AXI4M_MASTER0_BVALID" \
"BREADY:MSS_FIC_1_AXI4M_MASTER0_BREADY" \
"ARID:MSS_FIC_1_AXI4M_MASTER0_ARID" \
"ARADDR:MSS_FIC_1_AXI4M_MASTER0_ARADDR" \
"ARLEN:MSS_FIC_1_AXI4M_MASTER0_ARLEN" \
"ARSIZE:MSS_FIC_1_AXI4M_MASTER0_ARSIZE" \
"ARBURST:MSS_FIC_1_AXI4M_MASTER0_ARBURST" \
"ARLOCK:MSS_FIC_1_AXI4M_MASTER0_ARLOCK" \
"ARCACHE:MSS_FIC_1_AXI4M_MASTER0_ARCACHE" \
"ARPROT:MSS_FIC_1_AXI4M_MASTER0_ARPROT" \
"ARQOS:MSS_FIC_1_AXI4M_MASTER0_ARQOS" \
"ARREGION:MSS_FIC_1_AXI4M_MASTER0_ARREGION" \
"ARVALID:MSS_FIC_1_AXI4M_MASTER0_ARVALID" \
"ARREADY:MSS_FIC_1_AXI4M_MASTER0_ARREADY" \
"RID:MSS_FIC_1_AXI4M_MASTER0_RID" \
"RDATA:MSS_FIC_1_AXI4M_MASTER0_RDATA" \
"RRESP:MSS_FIC_1_AXI4M_MASTER0_RRESP" \
"RLAST:MSS_FIC_1_AXI4M_MASTER0_RLAST" \
"RVALID:MSS_FIC_1_AXI4M_MASTER0_RVALID" \
"RREADY:MSS_FIC_1_AXI4M_MASTER0_RREADY" \
"AWUSER:MSS_FIC_1_AXI4M_MASTER0_AWUSER" \
"WUSER:MSS_FIC_1_AXI4M_MASTER0_WUSER" \
"BUSER:MSS_FIC_1_AXI4M_MASTER0_BUSER" \
"ARUSER:MSS_FIC_1_AXI4M_MASTER0_ARUSER" \
"RUSER:MSS_FIC_1_AXI4M_MASTER0_RUSER" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {core_vectorblox_M0_AXIM} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {mirroredMaster} -port_bif_mapping {\
"AWID:core_vectorblox_M0_AXIM_MASTER1_AWID" \
"AWADDR:core_vectorblox_M0_AXIM_MASTER1_AWADDR" \
"AWLEN:core_vectorblox_M0_AXIM_MASTER1_AWLEN" \
"AWSIZE:core_vectorblox_M0_AXIM_MASTER1_AWSIZE" \
"AWBURST:core_vectorblox_M0_AXIM_MASTER1_AWBURST" \
"AWLOCK:core_vectorblox_M0_AXIM_MASTER1_AWLOCK" \
"AWCACHE:core_vectorblox_M0_AXIM_MASTER1_AWCACHE" \
"AWPROT:core_vectorblox_M0_AXIM_MASTER1_AWPROT" \
"AWQOS:core_vectorblox_M0_AXIM_MASTER1_AWQOS" \
"AWREGION:core_vectorblox_M0_AXIM_MASTER1_AWREGION" \
"AWVALID:core_vectorblox_M0_AXIM_MASTER1_AWVALID" \
"AWREADY:core_vectorblox_M0_AXIM_MASTER1_AWREADY" \
"WDATA:core_vectorblox_M0_AXIM_MASTER1_WDATA" \
"WSTRB:core_vectorblox_M0_AXIM_MASTER1_WSTRB" \
"WLAST:core_vectorblox_M0_AXIM_MASTER1_WLAST" \
"WVALID:core_vectorblox_M0_AXIM_MASTER1_WVALID" \
"WREADY:core_vectorblox_M0_AXIM_MASTER1_WREADY" \
"BID:core_vectorblox_M0_AXIM_MASTER1_BID" \
"BRESP:core_vectorblox_M0_AXIM_MASTER1_BRESP" \
"BVALID:core_vectorblox_M0_AXIM_MASTER1_BVALID" \
"BREADY:core_vectorblox_M0_AXIM_MASTER1_BREADY" \
"ARID:core_vectorblox_M0_AXIM_MASTER1_ARID" \
"ARADDR:core_vectorblox_M0_AXIM_MASTER1_ARADDR" \
"ARLEN:core_vectorblox_M0_AXIM_MASTER1_ARLEN" \
"ARSIZE:core_vectorblox_M0_AXIM_MASTER1_ARSIZE" \
"ARBURST:core_vectorblox_M0_AXIM_MASTER1_ARBURST" \
"ARLOCK:core_vectorblox_M0_AXIM_MASTER1_ARLOCK" \
"ARCACHE:core_vectorblox_M0_AXIM_MASTER1_ARCACHE" \
"ARPROT:core_vectorblox_M0_AXIM_MASTER1_ARPROT" \
"ARQOS:core_vectorblox_M0_AXIM_MASTER1_ARQOS" \
"ARREGION:core_vectorblox_M0_AXIM_MASTER1_ARREGION" \
"ARVALID:core_vectorblox_M0_AXIM_MASTER1_ARVALID" \
"ARREADY:core_vectorblox_M0_AXIM_MASTER1_ARREADY" \
"RID:core_vectorblox_M0_AXIM_MASTER1_RID" \
"RDATA:core_vectorblox_M0_AXIM_MASTER1_RDATA" \
"RRESP:core_vectorblox_M0_AXIM_MASTER1_RRESP" \
"RLAST:core_vectorblox_M0_AXIM_MASTER1_RLAST" \
"RVALID:core_vectorblox_M0_AXIM_MASTER1_RVALID" \
"RREADY:core_vectorblox_M0_AXIM_MASTER1_RREADY" \
"AWUSER:core_vectorblox_M0_AXIM_MASTER1_AWUSER" \
"WUSER:core_vectorblox_M0_AXIM_MASTER1_WUSER" \
"BUSER:core_vectorblox_M0_AXIM_MASTER1_BUSER" \
"ARUSER:core_vectorblox_M0_AXIM_MASTER1_ARUSER" \
"RUSER:core_vectorblox_M0_AXIM_MASTER1_RUSER" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {HLS_scale_updown_bilinear_AXI4M} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {mirroredMaster} -port_bif_mapping {\
"AWID:HLS_scale_updown_bilinear_AXI4M_MASTER2_AWID" \
"AWADDR:HLS_scale_updown_bilinear_AXI4M_MASTER2_AWADDR" \
"AWLEN:HLS_scale_updown_bilinear_AXI4M_MASTER2_AWLEN" \
"AWSIZE:HLS_scale_updown_bilinear_AXI4M_MASTER2_AWSIZE" \
"AWBURST:HLS_scale_updown_bilinear_AXI4M_MASTER2_AWBURST" \
"AWLOCK:HLS_scale_updown_bilinear_AXI4M_MASTER2_AWLOCK" \
"AWCACHE:HLS_scale_updown_bilinear_AXI4M_MASTER2_AWCACHE" \
"AWPROT:HLS_scale_updown_bilinear_AXI4M_MASTER2_AWPROT" \
"AWQOS:HLS_scale_updown_bilinear_AXI4M_MASTER2_AWQOS" \
"AWREGION:HLS_scale_updown_bilinear_AXI4M_MASTER2_AWREGION" \
"AWVALID:HLS_scale_updown_bilinear_AXI4M_MASTER2_AWVALID" \
"AWREADY:HLS_scale_updown_bilinear_AXI4M_MASTER2_AWREADY" \
"WDATA:HLS_scale_updown_bilinear_AXI4M_MASTER2_WDATA" \
"WSTRB:HLS_scale_updown_bilinear_AXI4M_MASTER2_WSTRB" \
"WLAST:HLS_scale_updown_bilinear_AXI4M_MASTER2_WLAST" \
"WVALID:HLS_scale_updown_bilinear_AXI4M_MASTER2_WVALID" \
"WREADY:HLS_scale_updown_bilinear_AXI4M_MASTER2_WREADY" \
"BID:HLS_scale_updown_bilinear_AXI4M_MASTER2_BID" \
"BRESP:HLS_scale_updown_bilinear_AXI4M_MASTER2_BRESP" \
"BVALID:HLS_scale_updown_bilinear_AXI4M_MASTER2_BVALID" \
"BREADY:HLS_scale_updown_bilinear_AXI4M_MASTER2_BREADY" \
"ARID:HLS_scale_updown_bilinear_AXI4M_MASTER2_ARID" \
"ARADDR:HLS_scale_updown_bilinear_AXI4M_MASTER2_ARADDR" \
"ARLEN:HLS_scale_updown_bilinear_AXI4M_MASTER2_ARLEN" \
"ARSIZE:HLS_scale_updown_bilinear_AXI4M_MASTER2_ARSIZE" \
"ARBURST:HLS_scale_updown_bilinear_AXI4M_MASTER2_ARBURST" \
"ARLOCK:HLS_scale_updown_bilinear_AXI4M_MASTER2_ARLOCK" \
"ARCACHE:HLS_scale_updown_bilinear_AXI4M_MASTER2_ARCACHE" \
"ARPROT:HLS_scale_updown_bilinear_AXI4M_MASTER2_ARPROT" \
"ARQOS:HLS_scale_updown_bilinear_AXI4M_MASTER2_ARQOS" \
"ARREGION:HLS_scale_updown_bilinear_AXI4M_MASTER2_ARREGION" \
"ARVALID:HLS_scale_updown_bilinear_AXI4M_MASTER2_ARVALID" \
"ARREADY:HLS_scale_updown_bilinear_AXI4M_MASTER2_ARREADY" \
"RID:HLS_scale_updown_bilinear_AXI4M_MASTER2_RID" \
"RDATA:HLS_scale_updown_bilinear_AXI4M_MASTER2_RDATA" \
"RRESP:HLS_scale_updown_bilinear_AXI4M_MASTER2_RRESP" \
"RLAST:HLS_scale_updown_bilinear_AXI4M_MASTER2_RLAST" \
"RVALID:HLS_scale_updown_bilinear_AXI4M_MASTER2_RVALID" \
"RREADY:HLS_scale_updown_bilinear_AXI4M_MASTER2_RREADY" \
"AWUSER:HLS_scale_updown_bilinear_AXI4M_MASTER2_AWUSER" \
"WUSER:HLS_scale_updown_bilinear_AXI4M_MASTER2_WUSER" \
"BUSER:HLS_scale_updown_bilinear_AXI4M_MASTER2_BUSER" \
"ARUSER:HLS_scale_updown_bilinear_AXI4M_MASTER2_ARUSER" \
"RUSER:HLS_scale_updown_bilinear_AXI4M_MASTER2_RUSER" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {HLS_warpPerspective_AXI4M} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {mirroredMaster} -port_bif_mapping {\
"AWID:HLS_warpPerspective_AXI4M_MASTER3_AWID" \
"AWADDR:HLS_warpPerspective_AXI4M_MASTER3_AWADDR" \
"AWLEN:HLS_warpPerspective_AXI4M_MASTER3_AWLEN" \
"AWSIZE:HLS_warpPerspective_AXI4M_MASTER3_AWSIZE" \
"AWBURST:HLS_warpPerspective_AXI4M_MASTER3_AWBURST" \
"AWLOCK:HLS_warpPerspective_AXI4M_MASTER3_AWLOCK" \
"AWCACHE:HLS_warpPerspective_AXI4M_MASTER3_AWCACHE" \
"AWPROT:HLS_warpPerspective_AXI4M_MASTER3_AWPROT" \
"AWQOS:HLS_warpPerspective_AXI4M_MASTER3_AWQOS" \
"AWREGION:HLS_warpPerspective_AXI4M_MASTER3_AWREGION" \
"AWVALID:HLS_warpPerspective_AXI4M_MASTER3_AWVALID" \
"AWREADY:HLS_warpPerspective_AXI4M_MASTER3_AWREADY" \
"WDATA:HLS_warpPerspective_AXI4M_MASTER3_WDATA" \
"WSTRB:HLS_warpPerspective_AXI4M_MASTER3_WSTRB" \
"WLAST:HLS_warpPerspective_AXI4M_MASTER3_WLAST" \
"WVALID:HLS_warpPerspective_AXI4M_MASTER3_WVALID" \
"WREADY:HLS_warpPerspective_AXI4M_MASTER3_WREADY" \
"BID:HLS_warpPerspective_AXI4M_MASTER3_BID" \
"BRESP:HLS_warpPerspective_AXI4M_MASTER3_BRESP" \
"BVALID:HLS_warpPerspective_AXI4M_MASTER3_BVALID" \
"BREADY:HLS_warpPerspective_AXI4M_MASTER3_BREADY" \
"ARID:HLS_warpPerspective_AXI4M_MASTER3_ARID" \
"ARADDR:HLS_warpPerspective_AXI4M_MASTER3_ARADDR" \
"ARLEN:HLS_warpPerspective_AXI4M_MASTER3_ARLEN" \
"ARSIZE:HLS_warpPerspective_AXI4M_MASTER3_ARSIZE" \
"ARBURST:HLS_warpPerspective_AXI4M_MASTER3_ARBURST" \
"ARLOCK:HLS_warpPerspective_AXI4M_MASTER3_ARLOCK" \
"ARCACHE:HLS_warpPerspective_AXI4M_MASTER3_ARCACHE" \
"ARPROT:HLS_warpPerspective_AXI4M_MASTER3_ARPROT" \
"ARQOS:HLS_warpPerspective_AXI4M_MASTER3_ARQOS" \
"ARREGION:HLS_warpPerspective_AXI4M_MASTER3_ARREGION" \
"ARVALID:HLS_warpPerspective_AXI4M_MASTER3_ARVALID" \
"ARREADY:HLS_warpPerspective_AXI4M_MASTER3_ARREADY" \
"RID:HLS_warpPerspective_AXI4M_MASTER3_RID" \
"RDATA:HLS_warpPerspective_AXI4M_MASTER3_RDATA" \
"RRESP:HLS_warpPerspective_AXI4M_MASTER3_RRESP" \
"RLAST:HLS_warpPerspective_AXI4M_MASTER3_RLAST" \
"RVALID:HLS_warpPerspective_AXI4M_MASTER3_RVALID" \
"RREADY:HLS_warpPerspective_AXI4M_MASTER3_RREADY" \
"AWUSER:HLS_warpPerspective_AXI4M_MASTER3_AWUSER" \
"WUSER:HLS_warpPerspective_AXI4M_MASTER3_WUSER" \
"BUSER:HLS_warpPerspective_AXI4M_MASTER3_BUSER" \
"ARUSER:HLS_warpPerspective_AXI4M_MASTER3_ARUSER" \
"RUSER:HLS_warpPerspective_AXI4M_MASTER3_RUSER" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {HLS_draw_assist_AXI4M} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {mirroredMaster} -port_bif_mapping {\
"AWID:HLS_draw_assist_AXI4M_MASTER4_AWID" \
"AWADDR:HLS_draw_assist_AXI4M_MASTER4_AWADDR" \
"AWLEN:HLS_draw_assist_AXI4M_MASTER4_AWLEN" \
"AWSIZE:HLS_draw_assist_AXI4M_MASTER4_AWSIZE" \
"AWBURST:HLS_draw_assist_AXI4M_MASTER4_AWBURST" \
"AWLOCK:HLS_draw_assist_AXI4M_MASTER4_AWLOCK" \
"AWCACHE:HLS_draw_assist_AXI4M_MASTER4_AWCACHE" \
"AWPROT:HLS_draw_assist_AXI4M_MASTER4_AWPROT" \
"AWQOS:HLS_draw_assist_AXI4M_MASTER4_AWQOS" \
"AWREGION:HLS_draw_assist_AXI4M_MASTER4_AWREGION" \
"AWVALID:HLS_draw_assist_AXI4M_MASTER4_AWVALID" \
"AWREADY:HLS_draw_assist_AXI4M_MASTER4_AWREADY" \
"WDATA:HLS_draw_assist_AXI4M_MASTER4_WDATA" \
"WSTRB:HLS_draw_assist_AXI4M_MASTER4_WSTRB" \
"WLAST:HLS_draw_assist_AXI4M_MASTER4_WLAST" \
"WVALID:HLS_draw_assist_AXI4M_MASTER4_WVALID" \
"WREADY:HLS_draw_assist_AXI4M_MASTER4_WREADY" \
"BID:HLS_draw_assist_AXI4M_MASTER4_BID" \
"BRESP:HLS_draw_assist_AXI4M_MASTER4_BRESP" \
"BVALID:HLS_draw_assist_AXI4M_MASTER4_BVALID" \
"BREADY:HLS_draw_assist_AXI4M_MASTER4_BREADY" \
"ARID:HLS_draw_assist_AXI4M_MASTER4_ARID" \
"ARADDR:HLS_draw_assist_AXI4M_MASTER4_ARADDR" \
"ARLEN:HLS_draw_assist_AXI4M_MASTER4_ARLEN" \
"ARSIZE:HLS_draw_assist_AXI4M_MASTER4_ARSIZE" \
"ARBURST:HLS_draw_assist_AXI4M_MASTER4_ARBURST" \
"ARLOCK:HLS_draw_assist_AXI4M_MASTER4_ARLOCK" \
"ARCACHE:HLS_draw_assist_AXI4M_MASTER4_ARCACHE" \
"ARPROT:HLS_draw_assist_AXI4M_MASTER4_ARPROT" \
"ARQOS:HLS_draw_assist_AXI4M_MASTER4_ARQOS" \
"ARREGION:HLS_draw_assist_AXI4M_MASTER4_ARREGION" \
"ARVALID:HLS_draw_assist_AXI4M_MASTER4_ARVALID" \
"ARREADY:HLS_draw_assist_AXI4M_MASTER4_ARREADY" \
"RID:HLS_draw_assist_AXI4M_MASTER4_RID" \
"RDATA:HLS_draw_assist_AXI4M_MASTER4_RDATA" \
"RRESP:HLS_draw_assist_AXI4M_MASTER4_RRESP" \
"RLAST:HLS_draw_assist_AXI4M_MASTER4_RLAST" \
"RVALID:HLS_draw_assist_AXI4M_MASTER4_RVALID" \
"RREADY:HLS_draw_assist_AXI4M_MASTER4_RREADY" \
"AWUSER:HLS_draw_assist_AXI4M_MASTER4_AWUSER" \
"WUSER:HLS_draw_assist_AXI4M_MASTER4_WUSER" \
"BUSER:HLS_draw_assist_AXI4M_MASTER4_BUSER" \
"ARUSER:HLS_draw_assist_AXI4M_MASTER4_ARUSER" \
"RUSER:HLS_draw_assist_AXI4M_MASTER4_RUSER" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {Video_Pipeline_scaler_AXI4M} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {mirroredMaster} -port_bif_mapping {\
"AWID:Video_Pipeline_scaler_AXI4M_MASTER5_AWID" \
"AWADDR:Video_Pipeline_scaler_AXI4M_MASTER5_AWADDR" \
"AWLEN:Video_Pipeline_scaler_AXI4M_MASTER5_AWLEN" \
"AWSIZE:Video_Pipeline_scaler_AXI4M_MASTER5_AWSIZE" \
"AWBURST:Video_Pipeline_scaler_AXI4M_MASTER5_AWBURST" \
"AWLOCK:Video_Pipeline_scaler_AXI4M_MASTER5_AWLOCK" \
"AWCACHE:Video_Pipeline_scaler_AXI4M_MASTER5_AWCACHE" \
"AWPROT:Video_Pipeline_scaler_AXI4M_MASTER5_AWPROT" \
"AWQOS:Video_Pipeline_scaler_AXI4M_MASTER5_AWQOS" \
"AWREGION:Video_Pipeline_scaler_AXI4M_MASTER5_AWREGION" \
"AWVALID:Video_Pipeline_scaler_AXI4M_MASTER5_AWVALID" \
"AWREADY:Video_Pipeline_scaler_AXI4M_MASTER5_AWREADY" \
"WDATA:Video_Pipeline_scaler_AXI4M_MASTER5_WDATA" \
"WSTRB:Video_Pipeline_scaler_AXI4M_MASTER5_WSTRB" \
"WLAST:Video_Pipeline_scaler_AXI4M_MASTER5_WLAST" \
"WVALID:Video_Pipeline_scaler_AXI4M_MASTER5_WVALID" \
"WREADY:Video_Pipeline_scaler_AXI4M_MASTER5_WREADY" \
"BID:Video_Pipeline_scaler_AXI4M_MASTER5_BID" \
"BRESP:Video_Pipeline_scaler_AXI4M_MASTER5_BRESP" \
"BVALID:Video_Pipeline_scaler_AXI4M_MASTER5_BVALID" \
"BREADY:Video_Pipeline_scaler_AXI4M_MASTER5_BREADY" \
"ARID:Video_Pipeline_scaler_AXI4M_MASTER5_ARID" \
"ARADDR:Video_Pipeline_scaler_AXI4M_MASTER5_ARADDR" \
"ARLEN:Video_Pipeline_scaler_AXI4M_MASTER5_ARLEN" \
"ARSIZE:Video_Pipeline_scaler_AXI4M_MASTER5_ARSIZE" \
"ARBURST:Video_Pipeline_scaler_AXI4M_MASTER5_ARBURST" \
"ARLOCK:Video_Pipeline_scaler_AXI4M_MASTER5_ARLOCK" \
"ARCACHE:Video_Pipeline_scaler_AXI4M_MASTER5_ARCACHE" \
"ARPROT:Video_Pipeline_scaler_AXI4M_MASTER5_ARPROT" \
"ARQOS:Video_Pipeline_scaler_AXI4M_MASTER5_ARQOS" \
"ARREGION:Video_Pipeline_scaler_AXI4M_MASTER5_ARREGION" \
"ARVALID:Video_Pipeline_scaler_AXI4M_MASTER5_ARVALID" \
"ARREADY:Video_Pipeline_scaler_AXI4M_MASTER5_ARREADY" \
"RID:Video_Pipeline_scaler_AXI4M_MASTER5_RID" \
"RDATA:Video_Pipeline_scaler_AXI4M_MASTER5_RDATA" \
"RRESP:Video_Pipeline_scaler_AXI4M_MASTER5_RRESP" \
"RLAST:Video_Pipeline_scaler_AXI4M_MASTER5_RLAST" \
"RVALID:Video_Pipeline_scaler_AXI4M_MASTER5_RVALID" \
"RREADY:Video_Pipeline_scaler_AXI4M_MASTER5_RREADY" \
"AWUSER:Video_Pipeline_scaler_AXI4M_MASTER5_AWUSER" \
"WUSER:Video_Pipeline_scaler_AXI4M_MASTER5_WUSER" \
"BUSER:Video_Pipeline_scaler_AXI4M_MASTER5_BUSER" \
"ARUSER:Video_Pipeline_scaler_AXI4M_MASTER5_ARUSER" \
"RUSER:Video_Pipeline_scaler_AXI4M_MASTER5_RUSER" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {core_vectorblox_M1_AXIM} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {mirroredMaster} -port_bif_mapping {\
"AWID:core_vectorblox_M1_AXIM_MASTER6_AWID" \
"AWADDR:core_vectorblox_M1_AXIM_MASTER6_AWADDR" \
"AWLEN:core_vectorblox_M1_AXIM_MASTER6_AWLEN" \
"AWSIZE:core_vectorblox_M1_AXIM_MASTER6_AWSIZE" \
"AWBURST:core_vectorblox_M1_AXIM_MASTER6_AWBURST" \
"AWLOCK:core_vectorblox_M1_AXIM_MASTER6_AWLOCK" \
"AWCACHE:core_vectorblox_M1_AXIM_MASTER6_AWCACHE" \
"AWPROT:core_vectorblox_M1_AXIM_MASTER6_AWPROT" \
"AWQOS:core_vectorblox_M1_AXIM_MASTER6_AWQOS" \
"AWREGION:core_vectorblox_M1_AXIM_MASTER6_AWREGION" \
"AWVALID:core_vectorblox_M1_AXIM_MASTER6_AWVALID" \
"AWREADY:core_vectorblox_M1_AXIM_MASTER6_AWREADY" \
"WDATA:core_vectorblox_M1_AXIM_MASTER6_WDATA" \
"WSTRB:core_vectorblox_M1_AXIM_MASTER6_WSTRB" \
"WLAST:core_vectorblox_M1_AXIM_MASTER6_WLAST" \
"WVALID:core_vectorblox_M1_AXIM_MASTER6_WVALID" \
"WREADY:core_vectorblox_M1_AXIM_MASTER6_WREADY" \
"BID:core_vectorblox_M1_AXIM_MASTER6_BID" \
"BRESP:core_vectorblox_M1_AXIM_MASTER6_BRESP" \
"BVALID:core_vectorblox_M1_AXIM_MASTER6_BVALID" \
"BREADY:core_vectorblox_M1_AXIM_MASTER6_BREADY" \
"ARID:core_vectorblox_M1_AXIM_MASTER6_ARID" \
"ARADDR:core_vectorblox_M1_AXIM_MASTER6_ARADDR" \
"ARLEN:core_vectorblox_M1_AXIM_MASTER6_ARLEN" \
"ARSIZE:core_vectorblox_M1_AXIM_MASTER6_ARSIZE" \
"ARBURST:core_vectorblox_M1_AXIM_MASTER6_ARBURST" \
"ARLOCK:core_vectorblox_M1_AXIM_MASTER6_ARLOCK" \
"ARCACHE:core_vectorblox_M1_AXIM_MASTER6_ARCACHE" \
"ARPROT:core_vectorblox_M1_AXIM_MASTER6_ARPROT" \
"ARQOS:core_vectorblox_M1_AXIM_MASTER6_ARQOS" \
"ARREGION:core_vectorblox_M1_AXIM_MASTER6_ARREGION" \
"ARVALID:core_vectorblox_M1_AXIM_MASTER6_ARVALID" \
"ARREADY:core_vectorblox_M1_AXIM_MASTER6_ARREADY" \
"RID:core_vectorblox_M1_AXIM_MASTER6_RID" \
"RDATA:core_vectorblox_M1_AXIM_MASTER6_RDATA" \
"RRESP:core_vectorblox_M1_AXIM_MASTER6_RRESP" \
"RLAST:core_vectorblox_M1_AXIM_MASTER6_RLAST" \
"RVALID:core_vectorblox_M1_AXIM_MASTER6_RVALID" \
"RREADY:core_vectorblox_M1_AXIM_MASTER6_RREADY" \
"AWUSER:core_vectorblox_M1_AXIM_MASTER6_AWUSER" \
"WUSER:core_vectorblox_M1_AXIM_MASTER6_WUSER" \
"BUSER:core_vectorblox_M1_AXIM_MASTER6_BUSER" \
"ARUSER:core_vectorblox_M1_AXIM_MASTER6_ARUSER" \
"RUSER:core_vectorblox_M1_AXIM_MASTER6_RUSER" } 

# Add COREAXI4INTERCONNECT_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {COREAXI4INTERCONNECT_C0} -instance_name {COREAXI4INTERCONNECT_C0_0}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_DDR" "COREAXI4INTERCONNECT_C0_0:M_CLK5" "COREAXI4INTERCONNECT_C0_0:S_CLK0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_HLS" "COREAXI4INTERCONNECT_C0_0:M_CLK2" "COREAXI4INTERCONNECT_C0_0:M_CLK3" "COREAXI4INTERCONNECT_C0_0:M_CLK4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_MSS" "COREAXI4INTERCONNECT_C0_0:M_CLK0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_VBX" "COREAXI4INTERCONNECT_C0_0:ACLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_C0_0:ARESETN" "RESETN_MSS" }


# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"AXI4mslave0" "COREAXI4INTERCONNECT_C0_0:AXI4mslave0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_C0_0:AXI4mmaster0" "MSS_FIC_1_AXI4M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_C0_0:AXI4mmaster1" "core_vectorblox_M0_AXIM" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_C0_0:AXI4mmaster2" "HLS_scale_updown_bilinear_AXI4M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_C0_0:AXI4mmaster3" "HLS_warpPerspective_AXI4M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_C0_0:AXI4mmaster4" "HLS_draw_assist_AXI4M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_C0_0:AXI4mmaster5" "Video_Pipeline_scaler_AXI4M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_C0_0:AXI4mmaster6" "core_vectorblox_M1_AXIM" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the SmartDesign 
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign "DDR_AXI4_INTERCONNECT"
generate_component -component_name ${sd_name}
