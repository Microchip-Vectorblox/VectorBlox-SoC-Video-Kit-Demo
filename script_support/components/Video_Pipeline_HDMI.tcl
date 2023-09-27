# Creating SmartDesign Video_Pipeline_HDMI
set sd_name {Video_Pipeline_HDMI}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_IF_penable_i} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_IF_psel_i} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_IF_pwrite_i} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {BIF_1_arready_0} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {BIF_1_awready_0} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {BIF_1_bvalid_0} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {BIF_1_rlast_0} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {BIF_1_rvalid_0} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {BIF_1_wready_0} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_150MHz} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_50MHz} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_DDR} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CTRLR_READY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HPD_I} -port_direction {IN}
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
sd_create_scalar_port -sd_name ${sd_name} -port_name {SCL_I} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_IF_pready_o} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_IF_pslverr_o} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {BIF_1_arvalid_0} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {BIF_1_awvalid_0} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {BIF_1_bready_0} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {BIF_1_rready_0} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {BIF_1_wlast_0} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {BIF_1_wvalid_0} -port_direction {OUT}
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

sd_create_scalar_port -sd_name ${sd_name} -port_name {SDA} -port_direction {INOUT} -port_is_pad {1}

# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {APB_IF_paddr_i} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {APB_IF_pwdata_i} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {BIF_1_bid_0} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {BIF_1_bresp_0} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {BIF_1_rdata_0} -port_direction {IN} -port_range {[511:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {BIF_1_rid_0} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {BIF_1_rresp_0} -port_direction {IN} -port_range {[1:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {APB_IF_prdata_o} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {BIF_1_araddr_0} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {BIF_1_arburst_0} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {BIF_1_arcache_0} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {BIF_1_arid_0} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {BIF_1_arlen_0} -port_direction {OUT} -port_range {[15:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {BIF_1_arlock_0} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {BIF_1_arprot_0} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {BIF_1_arsize_0} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {BIF_1_awaddr_0} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {BIF_1_awburst_0} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {BIF_1_awcache_0} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {BIF_1_awid_0} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {BIF_1_awlen_0} -port_direction {OUT} -port_range {[15:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {BIF_1_awlock_0} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {BIF_1_awprot_0} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {BIF_1_awsize_0} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {BIF_1_wdata_0} -port_direction {OUT} -port_range {[511:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {BIF_1_wstrb_0} -port_direction {OUT} -port_range {[63:0]}


# Create top level Bus interface Ports
sd_create_bif_port -sd_name ${sd_name} -port_name {APB_IF} -port_bif_vlnv {AMBA:AMBA2:APB:r0p0} -port_bif_role {slave} -port_bif_mapping {\
"PADDR:APB_IF_paddr_i" \
"PSELx:APB_IF_psel_i" \
"PENABLE:APB_IF_penable_i" \
"PWRITE:APB_IF_pwrite_i" \
"PRDATA:APB_IF_prdata_o" \
"PWDATA:APB_IF_pwdata_i" \
"PREADY:APB_IF_pready_o" \
"PSLVERR:APB_IF_pslverr_o" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {BIF_1} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {master} -port_bif_mapping {\
"AWID:BIF_1_awid_0" \
"AWADDR:BIF_1_awaddr_0" \
"AWLEN:BIF_1_awlen_0" \
"AWSIZE:BIF_1_awsize_0" \
"AWBURST:BIF_1_awburst_0" \
"AWLOCK:BIF_1_awlock_0" \
"AWCACHE:BIF_1_awcache_0" \
"AWPROT:BIF_1_awprot_0" \
"AWVALID:BIF_1_awvalid_0" \
"AWREADY:BIF_1_awready_0" \
"WDATA:BIF_1_wdata_0" \
"WSTRB:BIF_1_wstrb_0" \
"WLAST:BIF_1_wlast_0" \
"WVALID:BIF_1_wvalid_0" \
"WREADY:BIF_1_wready_0" \
"BID:BIF_1_bid_0" \
"BRESP:BIF_1_bresp_0" \
"BVALID:BIF_1_bvalid_0" \
"BREADY:BIF_1_bready_0" \
"ARID:BIF_1_arid_0" \
"ARADDR:BIF_1_araddr_0" \
"ARLEN:BIF_1_arlen_0" \
"ARSIZE:BIF_1_arsize_0" \
"ARBURST:BIF_1_arburst_0" \
"ARLOCK:BIF_1_arlock_0" \
"ARCACHE:BIF_1_arcache_0" \
"ARPROT:BIF_1_arprot_0" \
"ARVALID:BIF_1_arvalid_0" \
"ARREADY:BIF_1_arready_0" \
"RID:BIF_1_rid_0" \
"RDATA:BIF_1_rdata_0" \
"RRESP:BIF_1_rresp_0" \
"RLAST:BIF_1_rlast_0" \
"RVALID:BIF_1_rvalid_0" \
"RREADY:BIF_1_rready_0" } 

# Add apb3_if_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {apb3_if} -instance_name {apb3_if_0}
# Exporting Parameters of instance apb3_if_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {apb3_if_0} -params {\
"g_APB3_IF_DATA_WIDTH:32" \
"g_CONST_WIDTH:12" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {apb3_if_0}
sd_update_instance -sd_name ${sd_name} -instance_name {apb3_if_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:RED_MEAN_I} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:GRN_MEAN_I} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:BLU_MEAN_I} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:RED_VAR_I} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:GRN_VAR_I} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:BLU_VAR_I} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:rconst_o}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:gconst_o}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:bconst_o}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:second_const_o}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:DDR_READ_FRAME_START_ADDR_O}



# Add DDR_Read_HDMI_RX_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {DDR_Read_HDMI_RX} -instance_name {DDR_Read_HDMI_RX_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {DDR_Read_HDMI_RX_0:h_pan_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {DDR_Read_HDMI_RX_0:v_pan_i} -value {GND}



# Add DDR_Write_HDMI_RX_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {DDR_Write_HDMI_RX} -instance_name {DDR_Write_HDMI_RX_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {DDR_Write_HDMI_RX_0:data_i} -pin_slices {[15:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {DDR_Write_HDMI_RX_0:data_i} -pin_slices {[23:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {DDR_Write_HDMI_RX_0:data_i} -pin_slices {[31:24]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {DDR_Write_HDMI_RX_0:data_i[31:24]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {DDR_Write_HDMI_RX_0:data_i} -pin_slices {[7:0]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {DDR_Write_HDMI_RX_0:frame_ddr_addr_i} -value {01110000}



# Add Display_Controller_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {Display_Controller_C0} -instance_name {Display_Controller_C0_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Display_Controller_C0_0:ENABLE_I} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Display_Controller_C0_0:ENABLE_EXT_SYNC_I} -value {VCC}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {Display_Controller_C0_0:V_ACTIVE_O}



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



# Add Video_arbiter_top_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {Video_arbiter_top} -instance_name {Video_arbiter_top_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:r0_req_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:r2_req_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:r3_req_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:w0_data_valid_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:w0_req_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:w2_data_valid_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:w2_req_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:w3_data_valid_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:w3_req_i} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:r0_ack_o}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:r0_data_valid_o}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:r2_ack_o}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:r2_data_valid_o}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:r2_done_o}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:r3_ack_o}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:r3_data_valid_o}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:r3_done_o}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:w0_ack_o}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:w0_done_o}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:w2_ack_o}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:w2_done_o}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:w3_ack_o}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:w3_done_o}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:r0_burst_size_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:r0_rstart_addr_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:r2_burst_size_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:r2_rstart_addr_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:r3_burst_size_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:r3_rstart_addr_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:w0_burst_size_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:w0_data_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:w0_wstart_addr_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:w2_burst_size_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:w2_data_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:w2_wstart_addr_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:w3_burst_size_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:w3_data_i} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Video_arbiter_top_0:w3_wstart_addr_i} -value {GND}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_150MHz" "HDMI_RX_C0_0:EDID_CLK_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_50MHz" "apb3_if_0:pclk_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_DDR" "DDR_Read_HDMI_RX_0:sys_clk_i" "DDR_Write_HDMI_RX_0:ddr_clk_i" "Video_arbiter_top_0:sys_clk_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CTRLR_READY" "Video_arbiter_top_0:ddr_ctrl_ready" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_HDMI_RX_0:bayer_dvalid_o" "Display_Controller_C0_0:EXT_SYNC_SIGNAL_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_HDMI_RX_0:ddr_data_valid_i" "Video_arbiter_top_0:r1_data_valid_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_HDMI_RX_0:disp_clk_i" "DISP_CLK" "Display_Controller_C0_0:SYS_CLK_I" "HDMI_TX_C0_0:B_CLK_I" "HDMI_TX_C0_0:SYS_CLK_I" "PF_XCVR_ERM_C2_0:LANE1_TX_CLK_R" "synchronizer_circuit_0:sys_clk" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_HDMI_RX_0:frame_end_i" "Display_Controller_C0_0:FRAME_END_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_HDMI_RX_0:read_ackn_i" "Video_arbiter_top_0:r1_ack_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_HDMI_RX_0:read_done_i" "Video_arbiter_top_0:r1_done_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_HDMI_RX_0:read_en_i" "Display_Controller_C0_0:DATA_TRIGGER_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_HDMI_RX_0:read_req_o" "Video_arbiter_top_0:r1_req_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_HDMI_RX_0:reset_i" "DDR_Write_HDMI_RX_0:reset_i" "RESETN_DDR" "Video_arbiter_top_0:reset_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Write_HDMI_RX_0:data_valid_i" "HDMI_RX_C0_0:VIDEO_DATA_VALID_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Write_HDMI_RX_0:frame_valid_i" "HDMI_RX_C0_0:V_SYNC_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Write_HDMI_RX_0:parallel_clk_i" "HDMI_RX_C0_0:R_RX_CLK_I" "PF_XCVR_ERM_C2_0:LANE3_RX_CLK_R" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Write_HDMI_RX_0:rdata_rdy_o" "Video_arbiter_top_0:w1_data_valid_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Write_HDMI_RX_0:save_frame_i" "apb3_if_0:SWAP_SAVED_FB_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Write_HDMI_RX_0:write_ackn_i" "Video_arbiter_top_0:w1_ack_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Write_HDMI_RX_0:write_done_i" "Video_arbiter_top_0:w1_done_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Write_HDMI_RX_0:write_req_o" "Video_arbiter_top_0:w1_req_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Display_Controller_C0_0:DATA_ENABLE_O" "HDMI_TX_C0_0:VIDEO_DATA_VALID_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Display_Controller_C0_0:H_SYNC_O" "HDMI_TX_C0_0:H_SYNC_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Display_Controller_C0_0:RESETN_I" "HDMI_TX_C0_0:RESET_N_I" "PF_XCVR_ERM_C2_0:LANE0_PCS_ARST_N" "PF_XCVR_ERM_C2_0:LANE0_PMA_ARST_N" "PF_XCVR_ERM_C2_0:LANE1_PCS_ARST_N" "PF_XCVR_ERM_C2_0:LANE1_PMA_ARST_N" "PF_XCVR_ERM_C2_0:LANE2_PCS_ARST_N" "PF_XCVR_ERM_C2_0:LANE2_PMA_ARST_N" "PF_XCVR_ERM_C2_0:LANE3_PCS_ARST_N" "PF_XCVR_ERM_C2_0:LANE3_PMA_ARST_N" "RESETN_DISP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Display_Controller_C0_0:V_SYNC_O" "HDMI_TX_C0_0:V_SYNC_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_0_BIBUF_0:E" "HDMI_RX_C0_0:SDA_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_0_BIBUF_0:PAD" "SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_0_BIBUF_0:Y" "HDMI_RX_C0_0:SDA_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:BIT_SLIP_B_O" "PF_XCVR_ERM_C2_0:LANE1_RX_SLIP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:BIT_SLIP_G_O" "PF_XCVR_ERM_C2_0:LANE2_RX_SLIP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:BIT_SLIP_R_O" "PF_XCVR_ERM_C2_0:LANE3_RX_SLIP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:B_RX_CLK_I" "PF_XCVR_ERM_C2_0:LANE1_RX_CLK_R" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:B_RX_VALID_I" "PF_XCVR_ERM_C2_0:LANE1_RX_VAL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:G_RX_CLK_I" "PF_XCVR_ERM_C2_0:LANE2_RX_CLK_R" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:G_RX_VALID_I" "PF_XCVR_ERM_C2_0:LANE2_RX_VAL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:HPD_I" "synchronizer_circuit_0:sync_out" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:HPD_O" "HPD_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:RESET_N_I" "INIT_DONE" "synchronizer_circuit_0:reset_n" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:R_RX_VALID_I" "PF_XCVR_ERM_C2_0:LANE3_RX_VAL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:SCL_I" "SCL_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:B_CLK_LOCK" "PF_XCVR_ERM_C2_0:LANE1_TX_CLK_STABLE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:G_CLK_I" "PF_XCVR_ERM_C2_0:LANE2_TX_CLK_R" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:G_CLK_LOCK" "PF_XCVR_ERM_C2_0:LANE2_TX_CLK_STABLE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:R_CLK_I" "PF_XCVR_ERM_C2_0:LANE3_TX_CLK_R" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:R_CLK_LOCK" "PF_XCVR_ERM_C2_0:LANE3_TX_CLK_STABLE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HPD_I" "synchronizer_circuit_0:data_in" }
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
sd_connect_pins -sd_name ${sd_name} -pin_names {"RESETN_50MHz" "apb3_if_0:preset_i" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_HDMI_RX_0:beats_to_read_o" "Video_arbiter_top_0:r1_burst_size_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_HDMI_RX_0:blue_o" "HDMI_TX_C0_0:DATA_B_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_HDMI_RX_0:frame_start_addr_i" "DDR_Write_HDMI_RX_0:display_frame_addr_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_HDMI_RX_0:green_o" "HDMI_TX_C0_0:DATA_G_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_HDMI_RX_0:horz_resl_i" "Display_Controller_C0_0:H_RES_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_HDMI_RX_0:read_start_addr_o" "Video_arbiter_top_0:r1_rstart_addr_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_HDMI_RX_0:red_o" "HDMI_TX_C0_0:DATA_R_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_HDMI_RX_0:wdata_i" "Video_arbiter_top_0:rdata_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Write_HDMI_RX_0:beats_to_write_o" "Video_arbiter_top_0:w1_burst_size_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Write_HDMI_RX_0:data_i[15:8]" "HDMI_RX_C0_0:G_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Write_HDMI_RX_0:data_i[23:16]" "HDMI_RX_C0_0:R_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Write_HDMI_RX_0:data_i[7:0]" "HDMI_RX_C0_0:B_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Write_HDMI_RX_0:process_frame_addr_o" "apb3_if_0:PROCESSING_FB_ADDR_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Write_HDMI_RX_0:process_next2_frame_addr_o" "apb3_if_0:PROCESSING_NEXT2_FB_ADDR_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Write_HDMI_RX_0:process_next_frame_addr_o" "apb3_if_0:PROCESSING_NEXT_FB_ADDR_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Write_HDMI_RX_0:rdata_o" "Video_arbiter_top_0:w1_data_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Write_HDMI_RX_0:write_start_addr_o" "Video_arbiter_top_0:w1_wstart_addr_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:DATA_B_I" "PF_XCVR_ERM_C2_0:LANE1_RX_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:DATA_G_I" "PF_XCVR_ERM_C2_0:LANE2_RX_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:DATA_R_I" "PF_XCVR_ERM_C2_0:LANE3_RX_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:TMDS_B_O" "PF_XCVR_ERM_C2_0:LANE1_TX_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:TMDS_G_O" "PF_XCVR_ERM_C2_0:LANE2_TX_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:TMDS_R_O" "PF_XCVR_ERM_C2_0:LANE3_TX_DATA" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"APB_IF" "apb3_if_0:APB_IF" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIF_1" "Video_arbiter_top_0:BIF_1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_TX_PLL_C0_0:CLKS_TO_XCVR" "PF_XCVR_ERM_C2_0:CLKS_FROM_TXPLL_0" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign Video_Pipeline_HDMI
generate_component -component_name ${sd_name}
