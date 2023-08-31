# Creating SmartDesign HDMI
set sd_name {HDMI}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {CURVE_WE_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DATA_VALID_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EDID_CLK_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EOF_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FPGA_POR_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HPD_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {H_SYNC_I} -port_direction {IN}
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
sd_create_scalar_port -sd_name ${sd_name} -port_name {SCL_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {V_SYNC_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {display_data_enable_i} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {edge_detection_i} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {pclk_i} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {penable_i} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {preset_i} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {psel_i} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {pwrite_i} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {DATA_VALID_O} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FABRIC_RESET_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HIST_RDY_O} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HPD_O} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE0_TXD_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE0_TXD_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE0_TX_CLK_R} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE1_TXD_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE1_TXD_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE2_TXD_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE2_TXD_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE3_RX_CLK_R} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE3_TXD_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE3_TXD_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RGB_VALID_O} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {V_SYNC_O} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {pready_o} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {pslverr_o} -port_direction {OUT}

sd_create_scalar_port -sd_name ${sd_name} -port_name {SWAP_SAVED_FB_O} -port_direction {OUT}

sd_create_scalar_port -sd_name ${sd_name} -port_name {SDA} -port_direction {INOUT} -port_is_pad {1}

# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {BAYER_FORMAT} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {CURVE_WADDR_I} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {CURVE_WDATA_I} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {DATA_I} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HIST_ADDR_I} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {b_gain_i} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {brightness_i} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {contrast_i} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {g_gain_i} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {input2_i} -port_direction {IN} -port_range {[23:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {paddr_i} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {pwdata_i} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {r_gain_i} -port_direction {IN} -port_range {[7:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {B_O} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {G_O} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HIST_DATA_O} -port_direction {OUT} -port_range {[23:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {R_O} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {prdata_o} -port_direction {OUT} -port_range {[31:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {PROCESSING_FB_ADDR_I} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PROCESSING_NEXT_FB_ADDR_I} -port_direction {IN} -port_range {[31:0]}

# Create top level Bus interface Ports
sd_create_bif_port -sd_name ${sd_name} -port_name {APB_IF} -port_bif_vlnv {AMBA:AMBA2:APB:r0p0} -port_bif_role {slave} -port_bif_mapping {\
"PADDR:paddr_i" \
"PSELx:psel_i" \
"PENABLE:penable_i" \
"PWRITE:pwrite_i" \
"PRDATA:prdata_o" \
"PWDATA:pwdata_i" \
"PREADY:pready_o" \
"PSLVERR:pslverr_o" } 

# Add apb3_if_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {apb3_if} -instance_name {apb3_if_0}
# Exporting Parameters of instance apb3_if_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {apb3_if_0} -params {\
"g_APB3_IF_DATA_WIDTH:32" \
"g_CONST_WIDTH:12" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {apb3_if_0}
sd_update_instance -sd_name ${sd_name} -instance_name {apb3_if_0}
# sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:mode_o}
# sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:SCALAR_RESET_O}
# sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:RGB_SUM_B2} -value {GND}
# sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:alpha_o}
# sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:step_o}
# sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:frame_tcount_o}
# sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:HORZ_RES_IN_O}
# sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:VERT_RES_IN_O}
# sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:HORZ_RES_OUT_O}
# sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:VERT_RES_OUT_O}
# sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:SCALE_FACTOR_HORZ_O}
# sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:SCALE_FACTOR_VERT_O}
# sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:RED_FRAME_DDR_ADDR_O}
# sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:GREEN_FRAME_DDR_ADDR_O}
# sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:BLUE_FRAME_DDR_ADDR_O}
# sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:HORZ_RES_DDR_RD_OUT_O}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {apb3_if_0:DDR_READ_FRAME_START_ADDR_O}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:RED_MEAN_I} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:GRN_MEAN_I} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:BLU_MEAN_I} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:RED_VAR_I} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:GRN_VAR_I} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {apb3_if_0:BLU_VAR_I} -value {GND}



# Add Bayer_Interpolation_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {Bayer_Interpolation_C0} -instance_name {Bayer_Interpolation_C0_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {Bayer_Interpolation_C0_0:EOF_O}



# Add BIBUF_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BIBUF_0:D} -value {GND}



# Add CORERESET_PF_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET_PF_C0} -instance_name {CORERESET_PF_C0_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C0_0:EXT_RST_N} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C0_0:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C0_0:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C0_0:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C0_0:FF_US_RESTORE} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORERESET_PF_C0_0:PLL_POWERDOWN_B}



# Add CORERESET_PF_C3_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET_PF_C3} -instance_name {CORERESET_PF_C3_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C3_0:EXT_RST_N} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C3_0:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C3_0:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C3_0:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C3_0:FF_US_RESTORE} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORERESET_PF_C3_0:PLL_POWERDOWN_B}



# Add Edge_Detection_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {Edge_Detection_C0} -instance_name {Edge_Detection_C0_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {Edge_Detection_C0_0:DATA_VALID_O}



# Add Gamma_Correction_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {Gamma_Correction_C0} -instance_name {Gamma_Correction_C0_0}



# Add HDMI_RX_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {HDMI_RX_C0} -instance_name {HDMI_RX_C0_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HDMI_RX_C0_0:H_SYNC_O}



# Add HDMI_TX_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {HDMI_TX_C0} -instance_name {HDMI_TX_C0_0}



# Add hist_ip_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {Histogram_C0} -instance_name {hist_ip_0}



# Add Image_Enhancement_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {Image_Enhancement_C0} -instance_name {Image_Enhancement_C0_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {Image_Enhancement_C0_0:DATA_I} -pin_slices {[15:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {Image_Enhancement_C0_0:DATA_I} -pin_slices {[23:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {Image_Enhancement_C0_0:DATA_I} -pin_slices {[7:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {Image_Enhancement_C0_0:DATA_O} -pin_slices {[15:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {Image_Enhancement_C0_0:DATA_O} -pin_slices {[23:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {Image_Enhancement_C0_0:DATA_O} -pin_slices {[7:0]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Image_Enhancement_C0_0:ENABLE_I} -value {VCC}



# Add intensity_average_0 instance
sd_instantiate_hdl_module -sd_name ${sd_name} -hdl_module_name {intensity_average} -hdl_file {hdl\intensity_average.vhd} -instance_name {intensity_average_0}



# Add MUX_2_to_1_0 instance
sd_instantiate_hdl_module -sd_name ${sd_name} -hdl_module_name {MUX_2_to_1} -hdl_file {hdl\MUX_2_to_1.vhd} -instance_name {MUX_2_to_1_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MUX_2_to_1_0:input1_i} -pin_slices {[15:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MUX_2_to_1_0:input1_i} -pin_slices {[23:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MUX_2_to_1_0:input1_i} -pin_slices {[7:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MUX_2_to_1_0:output_o} -pin_slices {[15:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MUX_2_to_1_0:output_o} -pin_slices {[23:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MUX_2_to_1_0:output_o} -pin_slices {[7:0]}



# Add MUX_2_to_1_1 instance
sd_instantiate_hdl_module -sd_name ${sd_name} -hdl_module_name {MUX_2_to_1} -hdl_file {hdl\MUX_2_to_1.vhd} -instance_name {MUX_2_to_1_1}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MUX_2_to_1_1:input1_i} -pin_slices {[15:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MUX_2_to_1_1:input1_i} -pin_slices {[23:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MUX_2_to_1_1:input1_i} -pin_slices {[7:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MUX_2_to_1_1:input2_i} -pin_slices {[15:8]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MUX_2_to_1_1:input2_i[15:8]} -value {10000000}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MUX_2_to_1_1:input2_i} -pin_slices {[23:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MUX_2_to_1_1:input2_i} -pin_slices {[7:0]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MUX_2_to_1_1:input2_i[7:0]} -value {10000000}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MUX_2_to_1_1:output_o} -pin_slices {[15:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MUX_2_to_1_1:output_o} -pin_slices {[23:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MUX_2_to_1_1:output_o} -pin_slices {[7:0]}



# Add PF_TX_PLL_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_TX_PLL_C0} -instance_name {PF_TX_PLL_C0_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_TX_PLL_C0_0:PLL_LOCK}



# Add PF_XCVR_ERM_C2_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_XCVR_ERM_C2} -instance_name {PF_XCVR_ERM_C2_0}
# sd_create_pin_group -sd_name ${sd_name} -group_name {PADs_IN} -instance_name {PF_XCVR_ERM_C2_0} -pin_names {"LANE0_RXD_P" "LANE0_RXD_N" "LANE1_RXD_P" "LANE1_RXD_N" "LANE2_RXD_P" "LANE2_RXD_N" "LANE3_RXD_P" "LANE3_RXD_N" }
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE0_TX_DATA} -value {0000011111}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE0_RX_DATA}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE0_RX_CLK_R}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE0_RX_SLIP} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE0_RX_IDLE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE0_RX_READY}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE0_RX_VAL}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE0_RX_BYPASS_DATA}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE1_TX_CLK_R}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE1_RX_IDLE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE1_RX_READY}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE1_TX_CLK_STABLE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE1_RX_BYPASS_DATA}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE2_TX_CLK_R}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE2_RX_IDLE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE2_RX_READY}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE2_TX_CLK_STABLE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE2_RX_BYPASS_DATA}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE3_TX_CLK_R}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE3_RX_IDLE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE3_RX_READY}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE3_TX_CLK_STABLE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C2_0:LANE3_RX_BYPASS_DATA}



# Add RGB2YCbCr_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {RGB2YCbCr_C0} -instance_name {RGB2YCbCr_C0_0}



# Add synchronizer_circuit_0 instance
sd_instantiate_hdl_module -sd_name ${sd_name} -hdl_module_name {synchronizer_circuit} -hdl_file {hdl\synchronizer_circuit.vhd} -instance_name {synchronizer_circuit_0}



# Add YCbCr2RGB_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {YCbCr2RGB_C0} -instance_name {YCbCr2RGB_C0_0}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_0:E" "HDMI_RX_C0_0:SDA_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_0:PAD" "SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_0:Y" "HDMI_RX_C0_0:SDA_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Bayer_Interpolation_C0_0:DATA_VALID_I" "DATA_VALID_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Bayer_Interpolation_C0_0:EOF_I" "EOF_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Bayer_Interpolation_C0_0:RESETN_I" "CORERESET_PF_C0_0:FABRIC_RESET_N" "FABRIC_RESET_N" "Gamma_Correction_C0_0:RESETN_I" "Image_Enhancement_C0_0:RESETN_I" "PF_XCVR_ERM_C2_0:LANE0_PCS_ARST_N" "PF_XCVR_ERM_C2_0:LANE0_PMA_ARST_N" "PF_XCVR_ERM_C2_0:LANE1_PCS_ARST_N" "PF_XCVR_ERM_C2_0:LANE1_PMA_ARST_N" "PF_XCVR_ERM_C2_0:LANE2_PCS_ARST_N" "PF_XCVR_ERM_C2_0:LANE2_PMA_ARST_N" "PF_XCVR_ERM_C2_0:LANE3_PCS_ARST_N" "PF_XCVR_ERM_C2_0:LANE3_PMA_ARST_N" "intensity_average_0:RESETN_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Bayer_Interpolation_C0_0:RGB_VALID_O" "Gamma_Correction_C0_0:DATA_VALID_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Bayer_Interpolation_C0_0:SYS_CLK_I" "CORERESET_PF_C0_0:CLK" "CORERESET_PF_C3_0:CLK" "Edge_Detection_C0_0:SYS_CLK_I" "Gamma_Correction_C0_0:SYS_CLK_I" "HDMI_TX_C0_0:SYS_CLK_I" "Image_Enhancement_C0_0:SYS_CLK_I" "LANE0_TX_CLK_R" "PF_XCVR_ERM_C2_0:LANE0_TX_CLK_R" "RGB2YCbCr_C0_0:CLOCK_I" "YCbCr2RGB_C0_0:CLOCK_I" "hist_ip_0:PIXEL_CLK_I" "intensity_average_0:SYS_CLK_I" "synchronizer_circuit_0:sys_clk" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_PF_C0_0:FPGA_POR_N" "CORERESET_PF_C3_0:FPGA_POR_N" "FPGA_POR_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_PF_C0_0:INIT_DONE" "CORERESET_PF_C3_0:INIT_DONE" "HDMI_RX_C0_0:RESET_N_I" "INIT_DONE" "synchronizer_circuit_0:reset_n" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_PF_C0_0:PLL_LOCK" "CORERESET_PF_C3_0:PLL_LOCK" "PF_XCVR_ERM_C2_0:LANE0_TX_CLK_STABLE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_PF_C3_0:FABRIC_RESET_N" "Edge_Detection_C0_0:RESETN_I" "HDMI_TX_C0_0:RESET_N_I" "RGB2YCbCr_C0_0:RESET_N_I" "YCbCr2RGB_C0_0:RESET_N_I" "hist_ip_0:RESET_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CURVE_WE_I" "hist_ip_0:CURVE_WE_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DATA_VALID_O" "HDMI_RX_C0_0:DATA_VALID_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EDID_CLK_I" "HDMI_RX_C0_0:EDID_CLK_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Edge_Detection_C0_0:DATA_VALID_I" "RGB2YCbCr_C0_0:DATA_VALID_O" "hist_ip_0:DATA_VALID_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Gamma_Correction_C0_0:DATA_VALID_O" "Image_Enhancement_C0_0:DATA_VALID_I" "intensity_average_0:data_valid_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:BIT_SLIP_B_O" "PF_XCVR_ERM_C2_0:LANE1_RX_SLIP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:BIT_SLIP_G_O" "PF_XCVR_ERM_C2_0:LANE2_RX_SLIP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:BIT_SLIP_R_O" "PF_XCVR_ERM_C2_0:LANE3_RX_SLIP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:B_RX_CLK_I" "PF_XCVR_ERM_C2_0:LANE1_RX_CLK_R" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:B_RX_VALID_I" "PF_XCVR_ERM_C2_0:LANE1_RX_VAL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:G_RX_CLK_I" "PF_XCVR_ERM_C2_0:LANE2_RX_CLK_R" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:G_RX_VALID_I" "PF_XCVR_ERM_C2_0:LANE2_RX_VAL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:HPD_I" "MUX_2_to_1_0:selection_line_i" "synchronizer_circuit_0:sync_out" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:HPD_O" "HPD_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:R_RX_CLK_I" "LANE3_RX_CLK_R" "PF_XCVR_ERM_C2_0:LANE3_RX_CLK_R" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:R_RX_VALID_I" "PF_XCVR_ERM_C2_0:LANE3_RX_VAL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:SCL_I" "SCL_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:V_SYNC_O" "V_SYNC_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:DATA_VALID_I" "display_data_enable_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:H_SYNC_I" "H_SYNC_I" }
# sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:V_SYNC_I" "V_SYNC_I" "apb3_if_0:frame_end_i" "hist_ip_0:EOF_I" "intensity_average_0:frame_end_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:V_SYNC_I" "V_SYNC_I" "hist_ip_0:EOF_I" "intensity_average_0:frame_end_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HIST_RDY_O" "hist_ip_0:HIST_RDY_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HPD_I" "synchronizer_circuit_0:data_in" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Image_Enhancement_C0_0:DATA_VALID_O" "RGB2YCbCr_C0_0:DATA_VALID_I" }
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
sd_connect_pins -sd_name ${sd_name} -pin_names {"MUX_2_to_1_1:selection_line_i" "edge_detection_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_TX_PLL_C0_0:REF_CLK" "PF_XCVR_ERM_C2_0:LANE0_CDR_REF_CLK_0" "PF_XCVR_ERM_C2_0:LANE1_CDR_REF_CLK_0" "PF_XCVR_ERM_C2_0:LANE2_CDR_REF_CLK_0" "PF_XCVR_ERM_C2_0:LANE3_CDR_REF_CLK_0" "REF_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RGB_VALID_O" "YCbCr2RGB_C0_0:DATA_VALID_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"YCbCr2RGB_C0_0:DATA_VALID_I" "hist_ip_0:DATA_VALID_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:pclk_i" "pclk_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:preset_i" "preset_i" }

sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:SWAP_SAVED_FB_O" "SWAP_SAVED_FB_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:PROCESSING_FB_ADDR_I" "PROCESSING_FB_ADDR_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:PROCESSING_NEXT_FB_ADDR_I" "PROCESSING_NEXT_FB_ADDR_I" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"BAYER_FORMAT" "Bayer_Interpolation_C0_0:BAYER_FORMAT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"B_O" "HDMI_RX_C0_0:B_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Bayer_Interpolation_C0_0:B_O" "Gamma_Correction_C0_0:BLUE_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Bayer_Interpolation_C0_0:DATA_I" "DATA_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Bayer_Interpolation_C0_0:G_O" "Gamma_Correction_C0_0:GREEN_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Bayer_Interpolation_C0_0:R_O" "Gamma_Correction_C0_0:RED_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CURVE_WADDR_I" "hist_ip_0:CURVE_WADDR_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CURVE_WDATA_I" "hist_ip_0:CURVE_WDATA_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Edge_Detection_C0_0:DATA_I" "RGB2YCbCr_C0_0:Y_OUT_O" "hist_ip_0:DATA_Y_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Edge_Detection_C0_0:DATA_O" "MUX_2_to_1_1:input2_i[23:16]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"G_O" "HDMI_RX_C0_0:G_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Gamma_Correction_C0_0:BLUE_O" "Image_Enhancement_C0_0:DATA_I[7:0]" "intensity_average_0:b_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Gamma_Correction_C0_0:GREEN_O" "Image_Enhancement_C0_0:DATA_I[15:8]" "intensity_average_0:g_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Gamma_Correction_C0_0:RED_O" "Image_Enhancement_C0_0:DATA_I[23:16]" "intensity_average_0:r_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:DATA_B_I" "PF_XCVR_ERM_C2_0:LANE1_RX_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:DATA_G_I" "PF_XCVR_ERM_C2_0:LANE2_RX_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:DATA_R_I" "PF_XCVR_ERM_C2_0:LANE3_RX_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:R_O" "R_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:DATA_B_I" "MUX_2_to_1_0:output_o[7:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:DATA_G_I" "MUX_2_to_1_0:output_o[15:8]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:DATA_R_I" "MUX_2_to_1_0:output_o[23:16]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:TMDS_B_O" "PF_XCVR_ERM_C2_0:LANE1_TX_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:TMDS_G_O" "PF_XCVR_ERM_C2_0:LANE2_TX_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:TMDS_R_O" "PF_XCVR_ERM_C2_0:LANE3_TX_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HIST_ADDR_I" "hist_ip_0:HIST_ADDR_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HIST_DATA_O" "hist_ip_0:HIST_DATA_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Image_Enhancement_C0_0:B_CONST_I" "apb3_if_0:bconst_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Image_Enhancement_C0_0:COMMON_CONST_I" "apb3_if_0:second_const_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Image_Enhancement_C0_0:DATA_O[15:8]" "RGB2YCbCr_C0_0:GREEN_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Image_Enhancement_C0_0:DATA_O[23:16]" "RGB2YCbCr_C0_0:RED_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Image_Enhancement_C0_0:DATA_O[7:0]" "RGB2YCbCr_C0_0:BLUE_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Image_Enhancement_C0_0:G_CONST_I" "apb3_if_0:gconst_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Image_Enhancement_C0_0:R_CONST_I" "apb3_if_0:rconst_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MUX_2_to_1_0:input1_i[15:8]" "YCbCr2RGB_C0_0:GREEN_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MUX_2_to_1_0:input1_i[23:16]" "YCbCr2RGB_C0_0:RED_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MUX_2_to_1_0:input1_i[7:0]" "YCbCr2RGB_C0_0:BLUE_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MUX_2_to_1_0:input2_i" "input2_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MUX_2_to_1_1:input1_i[15:8]" "hist_ip_0:Cb_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MUX_2_to_1_1:input1_i[23:16]" "hist_ip_0:Y_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MUX_2_to_1_1:input1_i[7:0]" "hist_ip_0:Cr_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MUX_2_to_1_1:output_o[15:8]" "YCbCr2RGB_C0_0:Cb_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MUX_2_to_1_1:output_o[23:16]" "YCbCr2RGB_C0_0:Y_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MUX_2_to_1_1:output_o[7:0]" "YCbCr2RGB_C0_0:Cr_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RGB2YCbCr_C0_0:Cb_OUT_O" "hist_ip_0:Cb_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RGB2YCbCr_C0_0:Cr_OUT_O" "hist_ip_0:Cr_I" }
# sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:RGB_SUM_B1" "intensity_average_0:y_o" }
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {intensity_average_0:y_o}
# sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:b_gain_i" "b_gain_i" }
# sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:brightness_i" "brightness_i" }
# sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:contrast_i" "contrast_i" }
# sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:g_gain_i" "g_gain_i" }
# sd_connect_pins -sd_name ${sd_name} -pin_names {"apb3_if_0:r_gain_i" "r_gain_i" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"APB_IF" "apb3_if_0:APB_IF" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_TX_PLL_C0_0:CLKS_TO_XCVR" "PF_XCVR_ERM_C2_0:CLKS_FROM_TXPLL_0" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign HDMI
generate_component -component_name ${sd_name}
