# Creating SmartDesign "Video_Pipeline"
set sd_name {Video_Pipeline}
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
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_ARREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_AWREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_BVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_RLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_RVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_WREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM1_RX_CLK_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM1_RX_CLK_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_50MHz} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_DDR} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CTRLR_READY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {IMX334_TRNG_RST_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {INIT_DONE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_50MHz} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_DDR} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_DISP} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_IF_pready_o} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_IF_pslverr_o} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_arvalid} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_awvalid} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_bready} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_rready} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_wlast} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_wvalid} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_ARVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_AWVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_BREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_RREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_WLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_WVALID} -port_direction {OUT}
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


# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {APB_IF_paddr_i} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {APB_IF_pwdata_i} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_bid} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_bresp} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_rdata} -port_direction {IN} -port_range {[511:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_rid} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ARBITER_MSLAVE_AXI4_rresp} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_BID} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_BRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_RDATA} -port_direction {IN} -port_range {[255:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_RID} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_RRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {CAM1_RXD_N} -port_direction {IN} -port_range {[3:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {CAM1_RXD} -port_direction {IN} -port_range {[3:0]} -port_is_pad {1}

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
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_ARADDR} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_ARBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_ARCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_ARID} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_ARLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_ARPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_ARSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_AWADDR} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_AWBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_AWCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_AWID} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_AWLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_AWPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_AWSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_WDATA} -port_direction {OUT} -port_range {[255:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_WSTRB} -port_direction {OUT} -port_range {[31:0]}


# Create top level Bus interface Ports
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

sd_create_bif_port -sd_name ${sd_name} -port_name {AXI4M_scaler} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {master} -port_bif_mapping {\
"AWID:AXI4M_scaler_AWID" \
"AWADDR:AXI4M_scaler_AWADDR" \
"AWLEN:AXI4M_scaler_AWLEN" \
"AWSIZE:AXI4M_scaler_AWSIZE" \
"AWBURST:AXI4M_scaler_AWBURST" \
"AWCACHE:AXI4M_scaler_AWCACHE" \
"AWPROT:AXI4M_scaler_AWPROT" \
"AWVALID:AXI4M_scaler_AWVALID" \
"AWREADY:AXI4M_scaler_AWREADY" \
"WDATA:AXI4M_scaler_WDATA" \
"WSTRB:AXI4M_scaler_WSTRB" \
"WLAST:AXI4M_scaler_WLAST" \
"WVALID:AXI4M_scaler_WVALID" \
"WREADY:AXI4M_scaler_WREADY" \
"BID:AXI4M_scaler_BID" \
"BRESP:AXI4M_scaler_BRESP" \
"BVALID:AXI4M_scaler_BVALID" \
"BREADY:AXI4M_scaler_BREADY" \
"ARID:AXI4M_scaler_ARID" \
"ARADDR:AXI4M_scaler_ARADDR" \
"ARLEN:AXI4M_scaler_ARLEN" \
"ARSIZE:AXI4M_scaler_ARSIZE" \
"ARBURST:AXI4M_scaler_ARBURST" \
"ARCACHE:AXI4M_scaler_ARCACHE" \
"ARPROT:AXI4M_scaler_ARPROT" \
"ARVALID:AXI4M_scaler_ARVALID" \
"ARREADY:AXI4M_scaler_ARREADY" \
"RID:AXI4M_scaler_RID" \
"RDATA:AXI4M_scaler_RDATA" \
"RRESP:AXI4M_scaler_RRESP" \
"RLAST:AXI4M_scaler_RLAST" \
"RVALID:AXI4M_scaler_RVALID" \
"RREADY:AXI4M_scaler_RREADY" } 

sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {HPD_O} -value {VCC}
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



# Add Camera_subsys_1 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {Camera_subsys} -instance_name {Camera_subsys_1}



# Add DDR_AXI4_ARBITER_PF_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {DDR_AXI4_ARBITER_PF_C0} -instance_name {DDR_AXI4_ARBITER_PF_C0_0}



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



# Add frame_controller_0 instance
sd_instantiate_hdl_module -sd_name ${sd_name} -hdl_module_name {frame_controller} -hdl_file {hdl\frame_controller.sv} -instance_name {frame_controller_0}



# Add HDMI_subsys_1 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {HDMI_subsys} -instance_name {HDMI_subsys_1}



# Add video_input_subsys_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {video_input_subsys} -instance_name {video_input_subsys_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {video_input_subsys_0:vid_data_i} -pin_slices {[15:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {video_input_subsys_0:vid_data_i} -pin_slices {[23:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {video_input_subsys_0:vid_data_i} -pin_slices {[7:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {video_input_subsys_0:vid_in_frame_wr_addr} -pin_slices {[23:0]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {video_input_subsys_0:vid_in_frame_wr_addr[23:0]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {video_input_subsys_0:vid_in_frame_wr_addr} -pin_slices {[31:24]}



# Add video_out_subsys_1 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {video_out_subsys} -instance_name {video_out_subsys_1}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM1_RX_CLK_N" "Camera_subsys_1:CAM1_RX_CLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM1_RX_CLK_P" "Camera_subsys_1:CAM1_RX_CLK_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_50MHz" "Camera_subsys_1:pclk" "apb3_if_0:pclk_i" "frame_controller_0:pclk_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_DDR" "DDR_AXI4_ARBITER_PF_C0_0:sys_clk_i" "DDR_Frame_Blanker_0:aclk" "video_input_subsys_0:ddr_aclk" "video_out_subsys_1:ddr_clk_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CTRLR_READY" "DDR_AXI4_ARBITER_PF_C0_0:ddr_ctrl_ready_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Camera_subsys_1:CAM_CLK" "frame_controller_0:vid_in_clk_i" "video_input_subsys_0:vid_in_clk" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Camera_subsys_1:CAM_DATA_VALID_O" "video_input_subsys_0:vid_data_valid_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Camera_subsys_1:CAM_EOF_O" "apb3_if_0:frame_end_i" "frame_controller_0:vid_in_frame_sync_i" "video_input_subsys_0:vid_in_frame_sync" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Camera_subsys_1:CAM_RESET_N" "video_input_subsys_0:vid_in_resetn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Camera_subsys_1:IMX334_ARST_N" "INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Camera_subsys_1:IMX334_TRNG_RST_N" "IMX334_TRNG_RST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Camera_subsys_1:presetn" "RESETN_50MHz" "apb3_if_0:preset_i" "frame_controller_0:resetn_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_AXI4_ARBITER_PF_C0_0:reset_i" "DDR_Frame_Blanker_0:aresetn" "RESETN_DDR" "video_input_subsys_0:ddr_aresetn" "video_out_subsys_1:ddr_resetn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Frame_Blanker_0:blank_done_o" "apb3_if_0:FRAME_BLANKER_DONE_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Frame_Blanker_0:enable_i" "apb3_if_0:FRAME_BLANKER_EN_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Frame_Blanker_0:frame_swap_i" "apb3_if_0:SWAP_SAVED_FB_O" "frame_controller_0:p_frame_swap_toggle_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DISP_CLK" "HDMI_subsys_1:LANE1_TX_CLK_R" "frame_controller_0:disp_clk_i" "video_out_subsys_1:pixel_clk_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_subsys_1:DATA_VALID_I" "video_out_subsys_1:DATA_ENABLE_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_subsys_1:H_SYNC_I" "video_out_subsys_1:H_SYNC_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_subsys_1:LANE0_TXD_N" "LANE0_TXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_subsys_1:LANE0_TXD_P" "LANE0_TXD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_subsys_1:LANE1_TXD_N" "LANE1_TXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_subsys_1:LANE1_TXD_P" "LANE1_TXD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_subsys_1:LANE2_TXD_N" "LANE2_TXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_subsys_1:LANE2_TXD_P" "LANE2_TXD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_subsys_1:LANE3_TXD_N" "LANE3_TXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_subsys_1:LANE3_TXD_P" "LANE3_TXD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_subsys_1:REF_CLK" "REF_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_subsys_1:TX_RESET_N" "RESETN_DISP" "video_out_subsys_1:disp_resetn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_subsys_1:V_SYNC_I" "video_out_subsys_1:V_SYNC_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:ALPHA_BLEND_EN_O" "video_out_subsys_1:alpha_blend_en_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:MIN_LATENCY_SEL_O" "frame_controller_0:p_min_delay_path_sel_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:SCALAR_RESET_O" "video_input_subsys_0:scaler_resetn" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM1_RXD" "Camera_subsys_1:CAM1_RXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM1_RXD_N" "Camera_subsys_1:CAM1_RXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Camera_subsys_1:CAM_BLUE_O" "video_input_subsys_0:vid_data_i[7:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Camera_subsys_1:CAM_GREEN_O" "video_input_subsys_0:vid_data_i[15:8]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Camera_subsys_1:CAM_RED_O" "video_input_subsys_0:vid_data_i[23:16]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Camera_subsys_1:intensity_sum_o" "apb3_if_0:INTENSITY_SUM_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Frame_Blanker_0:frame_start_addr_i" "frame_controller_0:d_frame_overlay_wr_addr_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Frame_Blanker_0:horiz_resolution_i" "apb3_if_0:HORZ_RES_IN_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Frame_Blanker_0:vert_resolution_i" "apb3_if_0:VERT_RES_IN_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_subsys_1:DATA_B_I" "video_out_subsys_1:B_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_subsys_1:DATA_G_I" "video_out_subsys_1:G_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_subsys_1:DATA_R_I" "video_out_subsys_1:R_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:BLUE_DDR_FRAME_ADDR_O" "frame_controller_0:p_scal_b_frame_offset_addr_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:GREEN_DDR_FRAME_ADDR_O" "frame_controller_0:p_scal_g_frame_offset_addr_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:HORZ_RES_IN_O[12:0]" "video_input_subsys_0:HORZ_RES_IN_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:HORZ_RES_OUT_O[12:0]" "video_input_subsys_0:HORZ_RES_OUT_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:LINE_GAP_O" "video_input_subsys_0:config_line_stride_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:OVERLAY_DRAW_ADDR_I" "frame_controller_0:p_frame_overlay_draw_addr_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:PROCESSING_FB_ADDR_I[31:24]" "apb3_if_0:PROCESSING_NEXT2_FB_ADDR_I[31:24]" "apb3_if_0:PROCESSING_NEXT_FB_ADDR_I[31:24]" "frame_controller_0:p_frame_process_addr_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:RED_DDR_FRAME_ADDR_O" "frame_controller_0:p_scal_r_frame_offset_addr_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:SCALE_FACTOR_HORZ_O" "video_input_subsys_0:SCALE_FACTOR_HORZ_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:SCALE_FACTOR_VERT_O" "video_input_subsys_0:SCALE_FACTOR_VERT_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:VERT_RES_IN_O[12:0]" "video_input_subsys_0:VERT_RES_IN_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:VERT_RES_OUT_O[12:0]" "video_input_subsys_0:VERT_RES_OUT_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"frame_controller_0:d_frame_overlay_rd_addr_o" "video_out_subsys_1:overlay_frame_start_addr_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"frame_controller_0:d_frame_read_addr_o" "video_out_subsys_1:frame_start_addr_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"frame_controller_0:vid_in_frame_write_addr_o" "video_input_subsys_0:vid_in_frame_wr_addr[31:24]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"frame_controller_0:vid_in_scal_b_frame_write_addr_o" "video_input_subsys_0:scaler_b_frame_wr_addr" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"frame_controller_0:vid_in_scal_g_frame_write_addr_o" "video_input_subsys_0:scaler_g_frame_wr_addr" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"frame_controller_0:vid_in_scal_r_frame_write_addr_o" "video_input_subsys_0:scaler_r_frame_wr_addr" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"APB_IF" "apb3_if_0:APB_IF" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ARBITER_MSLAVE_AXI4" "DDR_AXI4_ARBITER_PF_C0_0:MIRRORED_SLAVE_AXI4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AXI4M_scaler" "video_input_subsys_0:AXI4M_scaler" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_AXI4_ARBITER_PF_C0_0:Read_channel_0" "video_out_subsys_1:DDR_Read_ch0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_AXI4_ARBITER_PF_C0_0:Read_channel_1" "video_out_subsys_1:DDR_Read_ch1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_AXI4_ARBITER_PF_C0_0:Write_channel_0" "video_input_subsys_0:Write_Channel" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_AXI4_ARBITER_PF_C0_0:Write_channel_1" "DDR_Frame_Blanker_0:Write_Channel" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the SmartDesign 
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign "Video_Pipeline"
generate_component -component_name ${sd_name}
