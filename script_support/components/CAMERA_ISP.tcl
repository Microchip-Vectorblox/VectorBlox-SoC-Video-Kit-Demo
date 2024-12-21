# Creating SmartDesign "CAMERA_ISP"
set sd_name {CAMERA_ISP}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {DATA_VALID_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EOF_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SYS_CLK_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {pclk} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {presetn} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {DATA_VALID_O} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EOF_O} -port_direction {OUT}


# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {DATA_I} -port_direction {IN} -port_range {[9:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {BLUE_O} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {GREEN_O} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {RED_O} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {intensity_sum_o} -port_direction {OUT} -port_range {[31:0]}


# Add Bayer_Interpolation_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {Bayer_Interpolation_C0} -instance_name {Bayer_Interpolation_C0_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Bayer_Interpolation_C0_0:BAYER_FORMAT} -value {00}



# Add Gamma_Correction_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {Gamma_Correction_C0} -instance_name {Gamma_Correction_C0_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {Gamma_Correction_C0_0:RED_O} -pin_slices {[1:0]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {Gamma_Correction_C0_0:RED_O[1:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {Gamma_Correction_C0_0:RED_O} -pin_slices {[9:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {Gamma_Correction_C0_0:GREEN_O} -pin_slices {[1:0]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {Gamma_Correction_C0_0:GREEN_O[1:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {Gamma_Correction_C0_0:GREEN_O} -pin_slices {[9:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {Gamma_Correction_C0_0:BLUE_O} -pin_slices {[1:0]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {Gamma_Correction_C0_0:BLUE_O[1:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {Gamma_Correction_C0_0:BLUE_O} -pin_slices {[9:2]}



# Add intensity_average_0 instance
sd_instantiate_hdl_module -sd_name ${sd_name} -hdl_module_name {intensity_average} -hdl_file {hdl\intensity_average.vhd} -instance_name {intensity_average_0}



# Add intensity_sum_pclk_0 instance
sd_instantiate_hdl_module -sd_name ${sd_name} -hdl_module_name {intensity_sum_pclk} -hdl_file {hdl\intensity_sum_pclk.sv} -instance_name {intensity_sum_pclk_0}



# Add pulse_extend_0 instance
sd_instantiate_hdl_module -sd_name ${sd_name} -hdl_module_name {pulse_extend} -hdl_file {hdl\pulse_extend.sv} -instance_name {pulse_extend_0}



# Add WB_Native_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {WB_Native} -instance_name {WB_Native_0}
# Exporting Parameters of instance WB_Native_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {WB_Native_0} -params {\
"G_COEF_WIDTH:16" \
"G_DATA_WIDTH:10" \
"G_FRAC_WIDTH:12" \
"G_PIXELS:1" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {WB_Native_0}
sd_update_instance -sd_name ${sd_name} -instance_name {WB_Native_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {WB_Native_0:gain_red_i} -value {0001100000000000}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {WB_Native_0:gain_green_i} -value {0001000000000000}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {WB_Native_0:gain_blue_i} -value {0010000000000000}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {WB_Native_0:offset_red_i} -value {0000001010}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {WB_Native_0:offset_green_i} -value {0000001010}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {WB_Native_0:offset_blue_i} -value {0000001010}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"Bayer_Interpolation_C0_0:DATA_VALID_I" "DATA_VALID_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Bayer_Interpolation_C0_0:EOF_I" "EOF_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Bayer_Interpolation_C0_0:EOF_O" "intensity_average_0:frame_end_i" "pulse_extend_0:sync_in" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Bayer_Interpolation_C0_0:RESETN_I" "Gamma_Correction_C0_0:RESETN_I" "RESETN_I" "WB_Native_0:rstn_i" "intensity_average_0:RESETN_I" "pulse_extend_0:resetn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Bayer_Interpolation_C0_0:RGB_VALID_O" "WB_Native_0:data_valid_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Bayer_Interpolation_C0_0:SYS_CLK_I" "Gamma_Correction_C0_0:SYS_CLK_I" "SYS_CLK_I" "WB_Native_0:clk_i" "intensity_average_0:SYS_CLK_I" "pulse_extend_0:clk" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DATA_VALID_O" "Gamma_Correction_C0_0:DATA_VALID_O" "intensity_average_0:data_valid_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EOF_O" "intensity_sum_pclk_0:eof_i" "pulse_extend_0:sync_out" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Gamma_Correction_C0_0:DATA_VALID_I" "WB_Native_0:data_valid_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"intensity_sum_pclk_0:clk" "pclk" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"intensity_sum_pclk_0:resetn" "presetn" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"BLUE_O" "Gamma_Correction_C0_0:BLUE_O[9:2]" "intensity_average_0:b_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Bayer_Interpolation_C0_0:B_O" "WB_Native_0:data_blue_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Bayer_Interpolation_C0_0:DATA_I" "DATA_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Bayer_Interpolation_C0_0:G_O" "WB_Native_0:data_green_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Bayer_Interpolation_C0_0:R_O" "WB_Native_0:data_red_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GREEN_O" "Gamma_Correction_C0_0:GREEN_O[9:2]" "intensity_average_0:g_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Gamma_Correction_C0_0:BLUE_I" "WB_Native_0:data_blue_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Gamma_Correction_C0_0:GREEN_I" "WB_Native_0:data_green_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Gamma_Correction_C0_0:RED_I" "WB_Native_0:data_red_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Gamma_Correction_C0_0:RED_O[9:2]" "RED_O" "intensity_average_0:r_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"intensity_average_0:y_o" "intensity_sum_pclk_0:data_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"intensity_sum_o" "intensity_sum_pclk_0:data_o" }


# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the SmartDesign 
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign "CAMERA_ISP"
generate_component -component_name ${sd_name}
