# Creating SmartDesign "Camera_subsys"
set sd_name {Camera_subsys}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM1_RX_CLK_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM1_RX_CLK_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {IMX334_ARST_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {IMX334_TRNG_RST_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {pclk} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {presetn} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_DATA_VALID_O} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_EOF_O} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_RESET_N} -port_direction {OUT}


# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {CAM1_RXD_N} -port_direction {IN} -port_range {[3:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {CAM1_RXD} -port_direction {IN} -port_range {[3:0]} -port_is_pad {1}

sd_create_bus_port -sd_name ${sd_name} -port_name {CAM_BLUE_O} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {CAM_GREEN_O} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {CAM_RED_O} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {intensity_sum_o} -port_direction {OUT} -port_range {[31:0]}


# Add CAMERA_ISP_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CAMERA_ISP} -instance_name {CAMERA_ISP_0}



# Add IMX334_IF_TOP_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {IMX334_IF_TOP} -instance_name {IMX334_IF_TOP_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {IMX334_IF_TOP_0:CAMERA_CLK}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {IMX334_IF_TOP_0:c1_frame_valid_o}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM1_RX_CLK_N" "IMX334_IF_TOP_0:CAM1_RX_CLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM1_RX_CLK_P" "IMX334_IF_TOP_0:CAM1_RX_CLK_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:DATA_VALID_I" "IMX334_IF_TOP_0:c1_line_valid_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:DATA_VALID_O" "CAM_DATA_VALID_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:EOF_I" "IMX334_IF_TOP_0:c1_frame_start_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:EOF_O" "CAM_EOF_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:RESETN_I" "CAM_RESET_N" "IMX334_IF_TOP_0:CAMCLK_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:SYS_CLK_I" "CAM_CLK" "IMX334_IF_TOP_0:PARALLEL_CLOCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:pclk" "pclk" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:presetn" "presetn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMX334_ARST_N" "IMX334_IF_TOP_0:ARST_N" "IMX334_IF_TOP_0:INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMX334_IF_TOP_0:TRNG_RST_N" "IMX334_TRNG_RST_N" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM1_RXD" "IMX334_IF_TOP_0:CAM1_RXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM1_RXD_N" "IMX334_IF_TOP_0:CAM1_RXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:BLUE_O" "CAM_BLUE_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:DATA_I" "IMX334_IF_TOP_0:c1_data_out_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:GREEN_O" "CAM_GREEN_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:RED_O" "CAM_RED_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_ISP_0:intensity_sum_o" "intensity_sum_o" }


# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the SmartDesign 
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign "Camera_subsys"
generate_component -component_name ${sd_name}
