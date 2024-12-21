# Creating SmartDesign "Video_Pipeline_HDMI"
set sd_name {Video_Pipeline_HDMI}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_IF_penable_i} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_IF_psel_i} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_IF_pwrite_i} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_arready} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_awready} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_bvalid} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_rlast} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_rvalid} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_wready} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM1_RX_CLK_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM1_RX_CLK_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_150MHz} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_50MHz} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_DDR} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CTRLR_READY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HPD_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {IMX334_TRNG_RST_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {INIT_DONE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE0_RXD_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE0_RXD_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE1_RXD_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE1_RXD_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE2_RXD_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE2_RXD_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE3_RXD_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE3_RXD_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_50MHz} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_DDR} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_DISP} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_VID170MHZ} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SCL_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {VID_TX_CLK_170MHZ} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_blue_ARREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_blue_AWREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_blue_BVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_blue_RLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_blue_RVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_blue_WREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_green_ARREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_green_AWREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_green_BVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_green_RLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_green_RVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_green_WREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_red_ARREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_red_AWREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_red_BVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_red_RLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_red_RVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_red_WREADY} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_IF_pready_o} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_IF_pslverr_o} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_arvalid} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_awvalid} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_bready} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_rready} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_wlast} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_wvalid} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DISP_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HPD_O} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE0_TXD_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE0_TXD_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE1_TXD_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE1_TXD_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE2_TXD_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE2_TXD_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE3_TXD_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE3_TXD_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_blue_ARVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_blue_AWVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_blue_BREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_blue_RREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_blue_WLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_blue_WVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_green_ARVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_green_AWVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_green_BREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_green_RREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_green_WLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_green_WVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_red_ARVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_red_AWVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_red_BREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_red_RREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_red_WLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {axi4_red_WVALID} -port_direction {OUT}

sd_create_scalar_port -sd_name ${sd_name} -port_name {SDA} -port_direction {INOUT} -port_is_pad {1}

# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {APB_IF_paddr_i} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {APB_IF_pwdata_i} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_bid} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_bresp} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_rdata} -port_direction {IN} -port_range {[511:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_rid} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_rresp} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {CAM1_RXD_N} -port_direction {IN} -port_range {[3:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {CAM1_RXD} -port_direction {IN} -port_range {[3:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_blue_BID} -port_direction {IN} -port_range {[6:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_blue_BRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_blue_RDATA} -port_direction {IN} -port_range {[255:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_blue_RID} -port_direction {IN} -port_range {[6:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_blue_RRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_green_BID} -port_direction {IN} -port_range {[6:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_green_BRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_green_RDATA} -port_direction {IN} -port_range {[255:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_green_RID} -port_direction {IN} -port_range {[6:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_green_RRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_red_BID} -port_direction {IN} -port_range {[6:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_red_BRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_red_RDATA} -port_direction {IN} -port_range {[255:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_red_RID} -port_direction {IN} -port_range {[6:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_red_RRESP} -port_direction {IN} -port_range {[1:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {APB_IF_prdata_o} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_araddr} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_arburst} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_arcache} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_arid} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_arlen} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_arlock} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_arprot} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_arsize} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_awaddr} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_awburst} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_awcache} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_awid} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_awlen} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_awlock} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_awprot} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_awsize} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_wdata} -port_direction {OUT} -port_range {[511:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_wstrb} -port_direction {OUT} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_blue_ARADDR} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_blue_ARBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_blue_ARCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_blue_ARID} -port_direction {OUT} -port_range {[6:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_blue_ARLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_blue_ARPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_blue_ARSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_blue_AWADDR} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_blue_AWBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_blue_AWCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_blue_AWID} -port_direction {OUT} -port_range {[6:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_blue_AWLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_blue_AWPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_blue_AWSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_blue_WDATA} -port_direction {OUT} -port_range {[255:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_blue_WSTRB} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_green_ARADDR} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_green_ARBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_green_ARCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_green_ARID} -port_direction {OUT} -port_range {[6:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_green_ARLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_green_ARPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_green_ARSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_green_AWADDR} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_green_AWBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_green_AWCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_green_AWID} -port_direction {OUT} -port_range {[6:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_green_AWLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_green_AWPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_green_AWSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_green_WDATA} -port_direction {OUT} -port_range {[255:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_green_WSTRB} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_red_ARADDR} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_red_ARBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_red_ARCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_red_ARID} -port_direction {OUT} -port_range {[6:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_red_ARLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_red_ARPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_red_ARSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_red_AWADDR} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_red_AWBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_red_AWCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_red_AWID} -port_direction {OUT} -port_range {[6:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_red_AWLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_red_AWPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_red_AWSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_red_WDATA} -port_direction {OUT} -port_range {[255:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {axi4_red_WSTRB} -port_direction {OUT} -port_range {[31:0]}


# Create top level Bus interface Ports
sd_create_bif_port -sd_name ${sd_name} -port_name {axi4_green} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {master} -port_bif_mapping {\
"AWID:axi4_green_AWID" \
"AWADDR:axi4_green_AWADDR" \
"AWLEN:axi4_green_AWLEN" \
"AWSIZE:axi4_green_AWSIZE" \
"AWBURST:axi4_green_AWBURST" \
"AWCACHE:axi4_green_AWCACHE" \
"AWPROT:axi4_green_AWPROT" \
"AWVALID:axi4_green_AWVALID" \
"AWREADY:axi4_green_AWREADY" \
"WDATA:axi4_green_WDATA" \
"WSTRB:axi4_green_WSTRB" \
"WLAST:axi4_green_WLAST" \
"WVALID:axi4_green_WVALID" \
"WREADY:axi4_green_WREADY" \
"BID:axi4_green_BID" \
"BRESP:axi4_green_BRESP" \
"BVALID:axi4_green_BVALID" \
"BREADY:axi4_green_BREADY" \
"ARID:axi4_green_ARID" \
"ARADDR:axi4_green_ARADDR" \
"ARLEN:axi4_green_ARLEN" \
"ARSIZE:axi4_green_ARSIZE" \
"ARBURST:axi4_green_ARBURST" \
"ARCACHE:axi4_green_ARCACHE" \
"ARPROT:axi4_green_ARPROT" \
"ARVALID:axi4_green_ARVALID" \
"ARREADY:axi4_green_ARREADY" \
"RID:axi4_green_RID" \
"RDATA:axi4_green_RDATA" \
"RRESP:axi4_green_RRESP" \
"RLAST:axi4_green_RLAST" \
"RVALID:axi4_green_RVALID" \
"RREADY:axi4_green_RREADY" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {axi4_blue} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {master} -port_bif_mapping {\
"AWID:axi4_blue_AWID" \
"AWADDR:axi4_blue_AWADDR" \
"AWLEN:axi4_blue_AWLEN" \
"AWSIZE:axi4_blue_AWSIZE" \
"AWBURST:axi4_blue_AWBURST" \
"AWCACHE:axi4_blue_AWCACHE" \
"AWPROT:axi4_blue_AWPROT" \
"AWVALID:axi4_blue_AWVALID" \
"AWREADY:axi4_blue_AWREADY" \
"WDATA:axi4_blue_WDATA" \
"WSTRB:axi4_blue_WSTRB" \
"WLAST:axi4_blue_WLAST" \
"WVALID:axi4_blue_WVALID" \
"WREADY:axi4_blue_WREADY" \
"BID:axi4_blue_BID" \
"BRESP:axi4_blue_BRESP" \
"BVALID:axi4_blue_BVALID" \
"BREADY:axi4_blue_BREADY" \
"ARID:axi4_blue_ARID" \
"ARADDR:axi4_blue_ARADDR" \
"ARLEN:axi4_blue_ARLEN" \
"ARSIZE:axi4_blue_ARSIZE" \
"ARBURST:axi4_blue_ARBURST" \
"ARCACHE:axi4_blue_ARCACHE" \
"ARPROT:axi4_blue_ARPROT" \
"ARVALID:axi4_blue_ARVALID" \
"ARREADY:axi4_blue_ARREADY" \
"RID:axi4_blue_RID" \
"RDATA:axi4_blue_RDATA" \
"RRESP:axi4_blue_RRESP" \
"RLAST:axi4_blue_RLAST" \
"RVALID:axi4_blue_RVALID" \
"RREADY:axi4_blue_RREADY" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {axi4_red} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {master} -port_bif_mapping {\
"AWID:axi4_red_AWID" \
"AWADDR:axi4_red_AWADDR" \
"AWLEN:axi4_red_AWLEN" \
"AWSIZE:axi4_red_AWSIZE" \
"AWBURST:axi4_red_AWBURST" \
"AWCACHE:axi4_red_AWCACHE" \
"AWPROT:axi4_red_AWPROT" \
"AWVALID:axi4_red_AWVALID" \
"AWREADY:axi4_red_AWREADY" \
"WDATA:axi4_red_WDATA" \
"WSTRB:axi4_red_WSTRB" \
"WLAST:axi4_red_WLAST" \
"WVALID:axi4_red_WVALID" \
"WREADY:axi4_red_WREADY" \
"BID:axi4_red_BID" \
"BRESP:axi4_red_BRESP" \
"BVALID:axi4_red_BVALID" \
"BREADY:axi4_red_BREADY" \
"ARID:axi4_red_ARID" \
"ARADDR:axi4_red_ARADDR" \
"ARLEN:axi4_red_ARLEN" \
"ARSIZE:axi4_red_ARSIZE" \
"ARBURST:axi4_red_ARBURST" \
"ARCACHE:axi4_red_ARCACHE" \
"ARPROT:axi4_red_ARPROT" \
"ARVALID:axi4_red_ARVALID" \
"ARREADY:axi4_red_ARREADY" \
"RID:axi4_red_RID" \
"RDATA:axi4_red_RDATA" \
"RRESP:axi4_red_RRESP" \
"RLAST:axi4_red_RLAST" \
"RVALID:axi4_red_RVALID" \
"RREADY:axi4_red_RREADY" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {mirroredSlave} -port_bif_mapping {\
"AWID:ARBITER_MSLAVE_AXI4_awid" \
"AWADDR:ARBITER_MSLAVE_AXI4_awaddr" \
"AWLEN:ARBITER_MSLAVE_AXI4_awlen" \
"AWSIZE:ARBITER_MSLAVE_AXI4_awsize" \
"AWBURST:ARBITER_MSLAVE_AXI4_awburst" \
"AWLOCK:ARBITER_MSLAVE_AXI4_awlock" \
"AWCACHE:ARBITER_MSLAVE_AXI4_awcache" \
"AWPROT:ARBITER_MSLAVE_AXI4_awprot" \
"AWVALID:ARBITER_MSLAVE_AXI4_awvalid" \
"AWREADY:ARBITER_MSLAVE_AXI4_awready" \
"WDATA:ARBITER_MSLAVE_AXI4_wdata" \
"WSTRB:ARBITER_MSLAVE_AXI4_wstrb" \
"WLAST:ARBITER_MSLAVE_AXI4_wlast" \
"WVALID:ARBITER_MSLAVE_AXI4_wvalid" \
"WREADY:ARBITER_MSLAVE_AXI4_wready" \
"BID:ARBITER_MSLAVE_AXI4_bid" \
"BRESP:ARBITER_MSLAVE_AXI4_bresp" \
"BVALID:ARBITER_MSLAVE_AXI4_bvalid" \
"BREADY:ARBITER_MSLAVE_AXI4_bready" \
"ARID:ARBITER_MSLAVE_AXI4_arid" \
"ARADDR:ARBITER_MSLAVE_AXI4_araddr" \
"ARLEN:ARBITER_MSLAVE_AXI4_arlen" \
"ARSIZE:ARBITER_MSLAVE_AXI4_arsize" \
"ARBURST:ARBITER_MSLAVE_AXI4_arburst" \
"ARLOCK:ARBITER_MSLAVE_AXI4_arlock" \
"ARCACHE:ARBITER_MSLAVE_AXI4_arcache" \
"ARPROT:ARBITER_MSLAVE_AXI4_arprot" \
"ARVALID:ARBITER_MSLAVE_AXI4_arvalid" \
"ARREADY:ARBITER_MSLAVE_AXI4_arready" \
"RID:ARBITER_MSLAVE_AXI4_rid" \
"RDATA:ARBITER_MSLAVE_AXI4_rdata" \
"RRESP:ARBITER_MSLAVE_AXI4_rresp" \
"RLAST:ARBITER_MSLAVE_AXI4_rlast" \
"RVALID:ARBITER_MSLAVE_AXI4_rvalid" \
"RREADY:ARBITER_MSLAVE_AXI4_rready" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {APB_IF} -port_bif_vlnv {AMBA:AMBA2:APB:r0p0} -port_bif_role {slave} -port_bif_mapping {\
"PADDR:APB_IF_paddr_i" \
"PSELx:APB_IF_psel_i" \
"PENABLE:APB_IF_penable_i" \
"PWRITE:APB_IF_pwrite_i" \
"PRDATA:APB_IF_prdata_o" \
"PWDATA:APB_IF_pwdata_i" \
"PREADY:APB_IF_pready_o" \
"PSLVERR:APB_IF_pslverr_o" } 

# Add alpha_blender_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {alpha_blender} -instance_name {alpha_blender_0}
# Exporting Parameters of instance alpha_blender_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {alpha_blender_0} -params {\
"G_PIXEL_WIDTH:8" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {alpha_blender_0}
sd_update_instance -sd_name ${sd_name} -instance_name {alpha_blender_0}



# Add apb3_if_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {apb3_if} -instance_name {apb3_if_0}
# Exporting Parameters of instance apb3_if_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {apb3_if_0} -params {\
"g_APB3_IF_DATA_WIDTH:32" \
"g_CONST_WIDTH:12" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {apb3_if_0}
sd_update_instance -sd_name ${sd_name} -instance_name {apb3_if_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {apb3_if_0:PROCESSING_FB_ADDR_I} -pin_slices {[23:0]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:PROCESSING_FB_ADDR_I[23:0]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {apb3_if_0:PROCESSING_FB_ADDR_I} -pin_slices {[31:24]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {apb3_if_0:PROCESSING_NEXT_FB_ADDR_I} -pin_slices {[23:0]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:PROCESSING_NEXT_FB_ADDR_I[23:0]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {apb3_if_0:PROCESSING_NEXT_FB_ADDR_I} -pin_slices {[31:24]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {apb3_if_0:PROCESSING_NEXT2_FB_ADDR_I} -pin_slices {[23:0]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:PROCESSING_NEXT2_FB_ADDR_I[23:0]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {apb3_if_0:PROCESSING_NEXT2_FB_ADDR_I} -pin_slices {[31:24]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {apb3_if_0:HORZ_RES_IN_O} -pin_slices {[12:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {apb3_if_0:HORZ_RES_IN_O} -pin_slices {[15:13]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {apb3_if_0:VERT_RES_IN_O} -pin_slices {[12:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {apb3_if_0:VERT_RES_IN_O} -pin_slices {[15:13]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {apb3_if_0:HORZ_RES_OUT_O} -pin_slices {[12:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {apb3_if_0:HORZ_RES_OUT_O} -pin_slices {[15:13]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:HORZ_RES_OUT_O[15:13]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {apb3_if_0:VERT_RES_OUT_O} -pin_slices {[12:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {apb3_if_0:VERT_RES_OUT_O} -pin_slices {[15:13]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:VERT_RES_OUT_O[15:13]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:RED_MEAN_I} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:GRN_MEAN_I} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:BLU_MEAN_I} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:RED_VAR_I} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:GRN_VAR_I} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:BLU_VAR_I} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:OVERLAY_DISPLAY_ADDR_I} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:OVERLAY_BLANK_ADDR_I} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:rconst_o}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:gconst_o}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:bconst_o}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:second_const_o}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:DDR_READ_FRAME_START_ADDR_O}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:FB_FRAME_START_ADDR_O}



# Add CAMERA_ISP_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CAMERA_ISP} -instance_name {CAMERA_ISP_0}



# Add DDR_AXI4_ARBITER_PF_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {DDR_AXI4_ARBITER_PF_C0} -instance_name {DDR_AXI4_ARBITER_PF_C0_0}



# Add ddr_dma_write_axi4_blue instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {ddr_dma_write_axi4} -instance_name {ddr_dma_write_axi4_blue}
# Exporting Parameters of instance ddr_dma_write_axi4_blue
sd_configure_core_instance -sd_name ${sd_name} -instance_name {ddr_dma_write_axi4_blue} -params {\
"ADDRESS_WIDTH:32" \
"AXI_ADDRESS_WIDTH:32" \
"AXI_DATA_WIDTH:256" \
"AXI_ID_WIDTH:7" \
"DATA_WIDTH:8" \
"MAX_BURST_LENGTH:256" \
"MAX_LINE_SIZE:1920" \
"STRIDE_ISBYTES:0" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {ddr_dma_write_axi4_blue}
sd_update_instance -sd_name ${sd_name} -instance_name {ddr_dma_write_axi4_blue}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ddr_dma_write_axi4_blue:config_line_stride_i} -pin_slices {[15:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ddr_dma_write_axi4_blue:config_line_stride_i} -pin_slices {[31:16]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {ddr_dma_write_axi4_blue:config_line_stride_i[31:16]} -value {GND}



# Add ddr_dma_write_axi4_green instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {ddr_dma_write_axi4} -instance_name {ddr_dma_write_axi4_green}
# Exporting Parameters of instance ddr_dma_write_axi4_green
sd_configure_core_instance -sd_name ${sd_name} -instance_name {ddr_dma_write_axi4_green} -params {\
"ADDRESS_WIDTH:32" \
"AXI_ADDRESS_WIDTH:32" \
"AXI_DATA_WIDTH:256" \
"AXI_ID_WIDTH:7" \
"DATA_WIDTH:8" \
"MAX_BURST_LENGTH:256" \
"MAX_LINE_SIZE:1920" \
"STRIDE_ISBYTES:0" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {ddr_dma_write_axi4_green}
sd_update_instance -sd_name ${sd_name} -instance_name {ddr_dma_write_axi4_green}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ddr_dma_write_axi4_green:config_line_stride_i} -pin_slices {[15:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ddr_dma_write_axi4_green:config_line_stride_i} -pin_slices {[31:16]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {ddr_dma_write_axi4_green:config_line_stride_i[31:16]} -value {GND}



# Add ddr_dma_write_axi4_red instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {ddr_dma_write_axi4} -instance_name {ddr_dma_write_axi4_red}
# Exporting Parameters of instance ddr_dma_write_axi4_red
sd_configure_core_instance -sd_name ${sd_name} -instance_name {ddr_dma_write_axi4_red} -params {\
"ADDRESS_WIDTH:32" \
"AXI_ADDRESS_WIDTH:32" \
"AXI_DATA_WIDTH:256" \
"AXI_ID_WIDTH:7" \
"DATA_WIDTH:8" \
"MAX_BURST_LENGTH:256" \
"MAX_LINE_SIZE:1920" \
"STRIDE_ISBYTES:0" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {ddr_dma_write_axi4_red}
sd_update_instance -sd_name ${sd_name} -instance_name {ddr_dma_write_axi4_red}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ddr_dma_write_axi4_red:config_line_stride_i} -pin_slices {[15:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ddr_dma_write_axi4_red:config_line_stride_i} -pin_slices {[31:16]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {ddr_dma_write_axi4_red:config_line_stride_i[31:16]} -value {GND}



# Add ddr_dma_write_bif_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {ddr_dma_write_bif} -instance_name {ddr_dma_write_bif_0}
# Exporting Parameters of instance ddr_dma_write_bif_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {ddr_dma_write_bif_0} -params {\
"ADDRESS_WIDTH:32" \
"AXI_ADDRESS_WIDTH:32" \
"AXI_DATA_WIDTH:512" \
"AXI_ID_WIDTH:7" \
"DATA_WIDTH:32" \
"MAX_BURST_LENGTH:256" \
"MAX_LINE_SIZE:3840" \
"STRIDE_ISBYTES:1" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {ddr_dma_write_bif_0}
sd_update_instance -sd_name ${sd_name} -instance_name {ddr_dma_write_bif_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ddr_dma_write_bif_0:config_frame_address_i} -pin_slices {[23:0]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {ddr_dma_write_bif_0:config_frame_address_i[23:0]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ddr_dma_write_bif_0:config_frame_address_i} -pin_slices {[31:24]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ddr_dma_write_bif_0:target_data_i} -pin_slices {[23:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ddr_dma_write_bif_0:target_data_i} -pin_slices {[31:24]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {ddr_dma_write_bif_0:target_data_i[31:24]} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {ddr_dma_write_bif_0:config_line_stride_i} -value {00000000000000000010000000000000}



# Add DDR_Frame_Blanker_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {DDR_Frame_Blanker} -instance_name {DDR_Frame_Blanker_0}
# Exporting Parameters of instance DDR_Frame_Blanker_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {DDR_Frame_Blanker_0} -params {\
"ADDRESS_WIDTH:32" \
"AXI_ADDRESS_WIDTH:32" \
"AXI_DATA_WIDTH:512" \
"DATA_WIDTH:8" \
"FRAME_ADDR_LENGTH:8" \
"MAX_BURST_LENGTH:256" \
"MAX_LINE_SIZE:1920" \
"STRIDE_ISBYTES:0" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {DDR_Frame_Blanker_0}
sd_update_instance -sd_name ${sd_name} -instance_name {DDR_Frame_Blanker_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {DDR_Frame_Blanker_0:frame_sync_i} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {DDR_Frame_Blanker_0:line_stride_i} -value {00000000000000000010000000000000}



# Add DDR_Read_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {DDR_Read_C0} -instance_name {DDR_Read_C0_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {DDR_Read_C0_0:data_o} -pin_slices {[15:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {DDR_Read_C0_0:data_o} -pin_slices {[23:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {DDR_Read_C0_0:data_o} -pin_slices {[31:24]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {DDR_Read_C0_0:data_o[31:24]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {DDR_Read_C0_0:data_o} -pin_slices {[7:0]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {DDR_Read_C0_0:line_gap_i} -value {0010000000000000}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {DDR_Read_C0_0:h_offset_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {DDR_Read_C0_0:v_offset_i} -value {GND}



# Add DDR_Read_C0_0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {DDR_Read_C0} -instance_name {DDR_Read_C0_0_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {DDR_Read_C0_0_0:data_o} -pin_slices {[15:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {DDR_Read_C0_0_0:data_o} -pin_slices {[23:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {DDR_Read_C0_0_0:data_o} -pin_slices {[31:24]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {DDR_Read_C0_0_0:data_o} -pin_slices {[7:0]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {DDR_Read_C0_0_0:data_valid_o}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {DDR_Read_C0_0_0:line_gap_i} -value {0010000000000000}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {DDR_Read_C0_0_0:h_offset_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {DDR_Read_C0_0_0:v_offset_i} -value {GND}



# Add Display_Controller_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {Display_Controller_C0} -instance_name {Display_Controller_C0_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Display_Controller_C0_0:ENABLE_I} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Display_Controller_C0_0:ENABLE_EXT_SYNC_I} -value {VCC}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {Display_Controller_C0_0:V_ACTIVE_O}



# Add frame_controller_0 instance
sd_instantiate_hdl_module -sd_name ${sd_name} -hdl_module_name {frame_controller} -hdl_file {hdl\frame_controller.sv} -instance_name {frame_controller_0}



# Add HDMI_0_BIBUF_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {HDMI_0_BIBUF_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {HDMI_0_BIBUF_0:D} -value {GND}



# Add HDMI_RX_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {HDMI_RX_C0} -instance_name {HDMI_RX_C0_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HDMI_RX_C0_0:AUDIO_DATA_VALID_O}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HDMI_RX_C0_0:H_SYNC_O}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HDMI_RX_C0_0:PACKET_HEADER_O}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HDMI_RX_C0_0:AUX_DATA_R_O}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HDMI_RX_C0_0:AUX_DATA_G_O}



# Add HDMI_TX_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {HDMI_TX_C0} -instance_name {HDMI_TX_C0_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HDMI_TX_C0_0:XCVR_LANE_0_DATA_O}



# Add IMAGE_SCALER_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {IMAGE_SCALER_C0} -instance_name {IMAGE_SCALER_C0_0}



# Add IMX334_IF_TOP_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {IMX334_IF_TOP} -instance_name {IMX334_IF_TOP_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {IMX334_IF_TOP_0:CAMERA_CLK}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {IMX334_IF_TOP_0:c1_frame_valid_o}



# Add PF_TX_PLL_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_TX_PLL_C0} -instance_name {PF_TX_PLL_C0_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_TX_PLL_C0_0:PLL_LOCK}



# Add PF_XCVR_ERM_C2_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_XCVR_ERM_C2} -instance_name {PF_XCVR_ERM_C2_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE0_TX_CLK_R}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE0_RX_CLK_R}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE0_RX_SLIP} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE0_RX_IDLE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE0_RX_READY}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE0_RX_VAL}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE0_TX_CLK_STABLE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE0_RX_BYPASS_DATA}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE1_RX_IDLE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE1_RX_READY}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE1_RX_BYPASS_DATA}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE2_RX_IDLE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE2_RX_READY}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE2_RX_BYPASS_DATA}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE3_RX_IDLE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE3_RX_READY}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE3_RX_BYPASS_DATA}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE0_TX_DATA} -value {0000011111}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE0_RX_DATA}



# Add synchronizer_circuit_0 instance
sd_instantiate_hdl_module -sd_name ${sd_name} -hdl_module_name {synchronizer_circuit} -hdl_file {hdl\synchronizer_circuit.vhd} -instance_name {synchronizer_circuit_0}



# Add video_cdc_fifo_cam instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {video_cdc_fifo} -instance_name {video_cdc_fifo_cam}
# Exporting Parameters of instance video_cdc_fifo_cam
sd_configure_core_instance -sd_name ${sd_name} -instance_name {video_cdc_fifo_cam} -params {\
"DATA_WIDTH:24" \
"LOG2_FIFO_DEPTH:12" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {video_cdc_fifo_cam}
sd_update_instance -sd_name ${sd_name} -instance_name {video_cdc_fifo_cam}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {video_cdc_fifo_cam:target_data_i} -pin_slices {[15:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {video_cdc_fifo_cam:target_data_i} -pin_slices {[23:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {video_cdc_fifo_cam:target_data_i} -pin_slices {[7:0]}



# Add video_cdc_fifo_hdmi instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {video_cdc_fifo} -instance_name {video_cdc_fifo_hdmi}
# Exporting Parameters of instance video_cdc_fifo_hdmi
sd_configure_core_instance -sd_name ${sd_name} -instance_name {video_cdc_fifo_hdmi} -params {\
"DATA_WIDTH:24" \
"LOG2_FIFO_DEPTH:12" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {video_cdc_fifo_hdmi}
sd_update_instance -sd_name ${sd_name} -instance_name {video_cdc_fifo_hdmi}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {video_cdc_fifo_hdmi:target_data_i} -pin_slices {[15:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {video_cdc_fifo_hdmi:target_data_i} -pin_slices {[23:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {video_cdc_fifo_hdmi:target_data_i} -pin_slices {[7:0]}



# Add video_switch_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {video_switch} -instance_name {video_switch_0}
# Exporting Parameters of instance video_switch_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {video_switch_0} -params {\
"DATA_WIDTH:24" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {video_switch_0}
sd_update_instance -sd_name ${sd_name} -instance_name {video_switch_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {video_switch_0:data_o} -pin_slices {[15:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {video_switch_0:data_o} -pin_slices {[23:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {video_switch_0:data_o} -pin_slices {[7:0]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {video_switch_0:mode_i} -value {VCC}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {video_switch_0:idle_o}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM1_RX_CLK_N" "IMX334_IF_TOP_0:CAM1_RX_CLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM1_RX_CLK_P" "IMX334_IF_TOP_0:CAM1_RX_CLK_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:DATA_VALID_I" "IMX334_IF_TOP_0:c1_line_valid_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:DATA_VALID_O" "video_cdc_fifo_cam:target_data_valid_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:EOF_I" "IMX334_IF_TOP_0:c1_frame_start_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:EOF_O" "video_cdc_fifo_cam:target_frame_sync_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:RESETN_I" "IMX334_IF_TOP_0:CAMCLK_RESET_N" "video_cdc_fifo_cam:tresetn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:SYS_CLK_I" "IMX334_IF_TOP_0:PARALLEL_CLOCK" "video_cdc_fifo_cam:tclk" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:pclk" "CLK_50MHz" "apb3_if_0:pclk_i" "frame_controller_0:pclk_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:presetn" "RESETN_50MHz" "apb3_if_0:preset_i" "frame_controller_0:resetn_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_150MHz" "HDMI_RX_C0_0:EDID_CLK_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_DDR" "DDR_AXI4_ARBITER_PF_C0_0:sys_clk_i" "DDR_Frame_Blanker_0:aclk" "DDR_Read_C0_0:ddr_clk_i" "DDR_Read_C0_0_0:ddr_clk_i" "ddr_dma_write_axi4_blue:aclk" "ddr_dma_write_axi4_green:aclk" "ddr_dma_write_axi4_red:aclk" "ddr_dma_write_bif_0:aclk" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CTRLR_READY" "DDR_AXI4_ARBITER_PF_C0_0:ddr_ctrl_ready_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_AXI4_ARBITER_PF_C0_0:reset_i" "DDR_Frame_Blanker_0:aresetn" "DDR_Read_C0_0:reset_i" "DDR_Read_C0_0_0:reset_i" "RESETN_DDR" "alpha_blender_0:RESETN_I" "ddr_dma_write_axi4_blue:aresetn" "ddr_dma_write_axi4_green:aresetn" "ddr_dma_write_axi4_red:aresetn" "ddr_dma_write_bif_0:aresetn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Frame_Blanker_0:blank_done_o" "apb3_if_0:FRAME_BLANKER_DONE_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Frame_Blanker_0:enable_i" "apb3_if_0:FRAME_BLANKER_EN_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Frame_Blanker_0:frame_swap_i" "apb3_if_0:SWAP_SAVED_FB_O" "frame_controller_0:p_frame_swap_toggle_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0:data_valid_o" "alpha_blender_0:DATA_VALID_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0:frame_start_i" "DDR_Read_C0_0_0:frame_start_i" "Display_Controller_C0_0:FRAME_END_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0:pixel_clk_i" "DDR_Read_C0_0_0:pixel_clk_i" "DISP_CLK" "Display_Controller_C0_0:SYS_CLK_I" "HDMI_TX_C0_0:B_CLK_I" "HDMI_TX_C0_0:SYS_CLK_I" "PF_XCVR_ERM_C2_0:LANE1_TX_CLK_R" "alpha_blender_0:SYS_CLK_I" "frame_controller_0:disp_clk_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0:read_en_i" "DDR_Read_C0_0_0:read_en_i" "Display_Controller_C0_0:DATA_TRIGGER_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Display_Controller_C0_0:DATA_ENABLE_O" "HDMI_TX_C0_0:VIDEO_DATA_VALID_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Display_Controller_C0_0:EXT_SYNC_SIGNAL_I" "alpha_blender_0:DATA_VALID_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Display_Controller_C0_0:H_SYNC_O" "HDMI_TX_C0_0:H_SYNC_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Display_Controller_C0_0:RESETN_I" "HDMI_TX_C0_0:RESET_N_I" "PF_XCVR_ERM_C2_0:LANE0_PCS_ARST_N" "PF_XCVR_ERM_C2_0:LANE0_PMA_ARST_N" "PF_XCVR_ERM_C2_0:LANE1_PCS_ARST_N" "PF_XCVR_ERM_C2_0:LANE1_PMA_ARST_N" "PF_XCVR_ERM_C2_0:LANE2_PCS_ARST_N" "PF_XCVR_ERM_C2_0:LANE2_PMA_ARST_N" "PF_XCVR_ERM_C2_0:LANE3_PCS_ARST_N" "PF_XCVR_ERM_C2_0:LANE3_PMA_ARST_N" "RESETN_DISP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Display_Controller_C0_0:V_SYNC_O" "HDMI_TX_C0_0:V_SYNC_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_0_BIBUF_0:E" "HDMI_RX_C0_0:SDA_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_0_BIBUF_0:PAD" "SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_0_BIBUF_0:Y" "HDMI_RX_C0_0:SDA_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:BIT_SLIP_B_O" "PF_XCVR_ERM_C2_0:LANE1_RX_SLIP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:BIT_SLIP_G_O" "PF_XCVR_ERM_C2_0:LANE2_RX_SLIP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:BIT_SLIP_R_O" "PF_XCVR_ERM_C2_0:LANE3_RX_SLIP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:B_RX_CLK_I" "PF_XCVR_ERM_C2_0:LANE1_RX_CLK_R" "video_cdc_fifo_hdmi:tclk" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:B_RX_VALID_I" "PF_XCVR_ERM_C2_0:LANE1_RX_VAL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:G_RX_CLK_I" "PF_XCVR_ERM_C2_0:LANE2_RX_CLK_R" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:G_RX_VALID_I" "PF_XCVR_ERM_C2_0:LANE2_RX_VAL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:HPD_I" "synchronizer_circuit_0:sync_out" "video_switch_0:sel_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:HPD_O" "HPD_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:RESET_N_I" "IMX334_IF_TOP_0:ARST_N" "IMX334_IF_TOP_0:INIT_DONE" "INIT_DONE" "synchronizer_circuit_0:reset_n" "video_cdc_fifo_hdmi:tresetn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:R_RX_CLK_I" "PF_XCVR_ERM_C2_0:LANE3_RX_CLK_R" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:R_RX_VALID_I" "PF_XCVR_ERM_C2_0:LANE3_RX_VAL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:SCL_I" "SCL_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:VIDEO_DATA_VALID_O" "video_cdc_fifo_hdmi:target_data_valid_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:V_SYNC_O" "video_cdc_fifo_hdmi:target_frame_sync_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:B_CLK_LOCK" "PF_XCVR_ERM_C2_0:LANE1_TX_CLK_STABLE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:G_CLK_I" "PF_XCVR_ERM_C2_0:LANE2_TX_CLK_R" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:G_CLK_LOCK" "PF_XCVR_ERM_C2_0:LANE2_TX_CLK_STABLE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:R_CLK_I" "PF_XCVR_ERM_C2_0:LANE3_TX_CLK_R" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:R_CLK_LOCK" "PF_XCVR_ERM_C2_0:LANE3_TX_CLK_STABLE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HPD_I" "synchronizer_circuit_0:data_in" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:DATA_VALID_I" "ddr_dma_write_bif_0:target_data_valid_i" "video_switch_0:data_valid_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:DATA_VALID_O" "ddr_dma_write_axi4_blue:target_data_valid_i" "ddr_dma_write_axi4_green:target_data_valid_i" "ddr_dma_write_axi4_red:target_data_valid_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:IP_CLK_I" "IMAGE_SCALER_C0_0:SYS_CLK_I" "VID_TX_CLK_170MHZ" "ddr_dma_write_axi4_blue:clk" "ddr_dma_write_axi4_green:clk" "ddr_dma_write_axi4_red:clk" "ddr_dma_write_bif_0:clk" "frame_controller_0:vid_in_clk_i" "synchronizer_circuit_0:sys_clk" "video_cdc_fifo_cam:iclk" "video_cdc_fifo_hdmi:iclk" "video_switch_0:clk" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:RESETN_I" "apb3_if_0:SCALAR_RESET_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMX334_IF_TOP_0:TRNG_RST_N" "IMX334_TRNG_RST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE0_RXD_N" "PF_XCVR_ERM_C2_0:LANE0_RXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE0_RXD_P" "PF_XCVR_ERM_C2_0:LANE0_RXD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE0_TXD_N" "PF_XCVR_ERM_C2_0:LANE0_TXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE0_TXD_P" "PF_XCVR_ERM_C2_0:LANE0_TXD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE1_RXD_N" "PF_XCVR_ERM_C2_0:LANE1_RXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE1_RXD_P" "PF_XCVR_ERM_C2_0:LANE1_RXD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE1_TXD_N" "PF_XCVR_ERM_C2_0:LANE1_TXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE1_TXD_P" "PF_XCVR_ERM_C2_0:LANE1_TXD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE2_RXD_N" "PF_XCVR_ERM_C2_0:LANE2_RXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE2_RXD_P" "PF_XCVR_ERM_C2_0:LANE2_RXD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE2_TXD_N" "PF_XCVR_ERM_C2_0:LANE2_TXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE2_TXD_P" "PF_XCVR_ERM_C2_0:LANE2_TXD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE3_RXD_N" "PF_XCVR_ERM_C2_0:LANE3_RXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE3_RXD_P" "PF_XCVR_ERM_C2_0:LANE3_RXD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE3_TXD_N" "PF_XCVR_ERM_C2_0:LANE3_TXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE3_TXD_P" "PF_XCVR_ERM_C2_0:LANE3_TXD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_TX_PLL_C0_0:REF_CLK" "PF_XCVR_ERM_C2_0:LANE0_CDR_REF_CLK_0" "PF_XCVR_ERM_C2_0:LANE1_CDR_REF_CLK_0" "PF_XCVR_ERM_C2_0:LANE2_CDR_REF_CLK_0" "PF_XCVR_ERM_C2_0:LANE3_CDR_REF_CLK_0" "REF_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RESETN_VID170MHZ" "ddr_dma_write_axi4_blue:resetn" "ddr_dma_write_axi4_green:resetn" "ddr_dma_write_axi4_red:resetn" "ddr_dma_write_bif_0:resetn" "video_cdc_fifo_cam:iresetn" "video_cdc_fifo_hdmi:iresetn" "video_switch_0:resetn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"alpha_blender_0:EN_I" "apb3_if_0:ALPHA_BLEND_EN_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:MIN_LATENCY_SEL_O" "frame_controller_0:p_min_delay_path_sel_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:frame_end_i" "ddr_dma_write_axi4_blue:target_frame_sync_i" "ddr_dma_write_axi4_green:target_frame_sync_i" "ddr_dma_write_axi4_red:target_frame_sync_i" "ddr_dma_write_bif_0:target_frame_sync_i" "frame_controller_0:vid_in_frame_sync_i" "video_switch_0:frame_sync_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"video_cdc_fifo_cam:initiator_data_valid_o" "video_switch_0:s0_data_valid_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"video_cdc_fifo_cam:initiator_frame_sync_o" "video_switch_0:s0_frame_sync_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"video_cdc_fifo_hdmi:initiator_data_valid_o" "video_switch_0:s1_data_valid_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"video_cdc_fifo_hdmi:initiator_frame_sync_o" "video_switch_0:s1_frame_sync_i" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM1_RXD" "IMX334_IF_TOP_0:CAM1_RXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM1_RXD_N" "IMX334_IF_TOP_0:CAM1_RXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:BLUE_O" "video_cdc_fifo_cam:target_data_i[7:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:DATA_I" "IMX334_IF_TOP_0:c1_data_out_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:GREEN_O" "video_cdc_fifo_cam:target_data_i[15:8]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:RED_O" "video_cdc_fifo_cam:target_data_i[23:16]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:intensity_sum_o" "apb3_if_0:INTENSITY_SUM_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Frame_Blanker_0:frame_start_addr_i" "frame_controller_0:d_frame_overlay_wr_addr_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Frame_Blanker_0:horiz_resolution_i" "apb3_if_0:HORZ_RES_IN_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Frame_Blanker_0:vert_resolution_i" "apb3_if_0:VERT_RES_IN_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0:data_o[15:8]" "alpha_blender_0:CH1_G_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0:data_o[23:16]" "alpha_blender_0:CH1_R_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0:data_o[7:0]" "alpha_blender_0:CH1_B_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0:frame_start_addr_i" "frame_controller_0:d_frame_read_addr_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0:horz_resl_i" "DDR_Read_C0_0_0:horz_resl_i" "Display_Controller_C0_0:H_RES_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0_0:data_o[15:8]" "alpha_blender_0:CH2_G_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0_0:data_o[23:16]" "alpha_blender_0:CH2_R_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0_0:data_o[31:24]" "alpha_blender_0:ALPHA_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0_0:data_o[7:0]" "alpha_blender_0:CH2_B_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0_0:frame_start_addr_i" "frame_controller_0:d_frame_overlay_rd_addr_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:B_O" "video_cdc_fifo_hdmi:target_data_i[7:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:DATA_B_I" "PF_XCVR_ERM_C2_0:LANE1_RX_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:DATA_G_I" "PF_XCVR_ERM_C2_0:LANE2_RX_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:DATA_R_I" "PF_XCVR_ERM_C2_0:LANE3_RX_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:G_O" "video_cdc_fifo_hdmi:target_data_i[15:8]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:R_O" "video_cdc_fifo_hdmi:target_data_i[23:16]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:DATA_B_I" "alpha_blender_0:B_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:DATA_G_I" "alpha_blender_0:G_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:DATA_R_I" "alpha_blender_0:R_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:TMDS_B_O" "PF_XCVR_ERM_C2_0:LANE1_TX_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:TMDS_G_O" "PF_XCVR_ERM_C2_0:LANE2_TX_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:TMDS_R_O" "PF_XCVR_ERM_C2_0:LANE3_TX_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:DATA_B_I" "video_switch_0:data_o[7:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:DATA_B_O" "ddr_dma_write_axi4_blue:target_data_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:DATA_G_I" "video_switch_0:data_o[15:8]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:DATA_G_O" "ddr_dma_write_axi4_green:target_data_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:DATA_R_I" "video_switch_0:data_o[23:16]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:DATA_R_O" "ddr_dma_write_axi4_red:target_data_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:HORZ_RES_IN_I" "apb3_if_0:HORZ_RES_IN_O[12:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:HORZ_RES_OUT_I" "apb3_if_0:HORZ_RES_OUT_O[12:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:SCALE_FACTOR_HORZ_I" "apb3_if_0:SCALE_FACTOR_HORZ_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:SCALE_FACTOR_VERT_I" "apb3_if_0:SCALE_FACTOR_VERT_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:VERT_RES_IN_I" "apb3_if_0:VERT_RES_IN_O[12:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:VERT_RES_OUT_I" "apb3_if_0:VERT_RES_OUT_O[12:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:BLUE_DDR_FRAME_ADDR_O" "frame_controller_0:p_scal_b_frame_offset_addr_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:GREEN_DDR_FRAME_ADDR_O" "frame_controller_0:p_scal_g_frame_offset_addr_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:LINE_GAP_O" "ddr_dma_write_axi4_blue:config_line_stride_i[15:0]" "ddr_dma_write_axi4_green:config_line_stride_i[15:0]" "ddr_dma_write_axi4_red:config_line_stride_i[15:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:OVERLAY_DRAW_ADDR_I" "frame_controller_0:p_frame_overlay_draw_addr_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:PROCESSING_FB_ADDR_I[31:24]" "apb3_if_0:PROCESSING_NEXT2_FB_ADDR_I[31:24]" "apb3_if_0:PROCESSING_NEXT_FB_ADDR_I[31:24]" "frame_controller_0:p_frame_process_addr_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:RED_DDR_FRAME_ADDR_O" "frame_controller_0:p_scal_r_frame_offset_addr_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ddr_dma_write_axi4_blue:config_frame_address_i" "frame_controller_0:vid_in_scal_b_frame_write_addr_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ddr_dma_write_axi4_green:config_frame_address_i" "frame_controller_0:vid_in_scal_g_frame_write_addr_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ddr_dma_write_axi4_red:config_frame_address_i" "frame_controller_0:vid_in_scal_r_frame_write_addr_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ddr_dma_write_bif_0:config_frame_address_i[31:24]" "frame_controller_0:vid_in_frame_write_addr_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ddr_dma_write_bif_0:target_data_i[23:0]" "video_switch_0:data_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"video_cdc_fifo_cam:initiator_data_o" "video_switch_0:s0_data_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"video_cdc_fifo_hdmi:initiator_data_o" "video_switch_0:s1_data_i" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"APB_IF" "apb3_if_0:APB_IF" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ARBITER_MSLAVE_AXI4" "DDR_AXI4_ARBITER_PF_C0_0:MIRRORED_SLAVE_AXI4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_AXI4_ARBITER_PF_C0_0:Read_channel_0" "DDR_Read_C0_0:Read_channel" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_AXI4_ARBITER_PF_C0_0:Read_channel_1" "DDR_Read_C0_0_0:Read_channel" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_AXI4_ARBITER_PF_C0_0:Write_channel_0" "ddr_dma_write_bif_0:Write_Channel" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_AXI4_ARBITER_PF_C0_0:Write_channel_1" "DDR_Frame_Blanker_0:Write_Channel" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_TX_PLL_C0_0:CLKS_TO_XCVR" "PF_XCVR_ERM_C2_0:CLKS_FROM_TXPLL_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"axi4_blue" "ddr_dma_write_axi4_blue:AXI4Master" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"axi4_green" "ddr_dma_write_axi4_green:AXI4Master" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"axi4_red" "ddr_dma_write_axi4_red:AXI4Master" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the SmartDesign 
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign "Video_Pipeline_HDMI"
generate_component -component_name ${sd_name}
