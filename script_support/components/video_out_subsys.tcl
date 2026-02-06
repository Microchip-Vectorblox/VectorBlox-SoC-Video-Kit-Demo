# Creating SmartDesign "video_out_subsys"
set sd_name {video_out_subsys}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {Read_channel_ARREADY_I_0} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Read_channel_ARREADY_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Read_channel_BUSER_I_0} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Read_channel_BUSER_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Read_channel_RVALID_I_0} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Read_channel_RVALID_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {alpha_blend_en_i} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ddr_clk_i} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ddr_resetn} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {disp_resetn} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {pixel_clk_i} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {DATA_ENABLE_O} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {H_SYNC_O} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Read_channel_ARVALID_O_0} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Read_channel_ARVALID_O} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {V_SYNC_O} -port_direction {OUT}


# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {Read_channel_RDATA_I_0} -port_direction {IN} -port_range {[511:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Read_channel_RDATA_I} -port_direction {IN} -port_range {[511:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {frame_start_addr_i} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {overlay_frame_start_addr_i} -port_direction {IN} -port_range {[7:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {B_O} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {G_O} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {R_O} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Read_channel_ARADDR_O_0} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Read_channel_ARADDR_O} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Read_channel_ARSIZE_O_0} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Read_channel_ARSIZE_O} -port_direction {OUT} -port_range {[7:0]}


# Create top level Bus interface Ports
sd_create_bif_port -sd_name ${sd_name} -port_name {DDR_Read_ch1} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {mirroredSlave} -port_bif_mapping {\
"ARADDR:Read_channel_ARADDR_O" \
"ARSIZE:Read_channel_ARSIZE_O" \
"ARVALID:Read_channel_ARVALID_O" \
"ARREADY:Read_channel_ARREADY_I" \
"RDATA:Read_channel_RDATA_I" \
"RVALID:Read_channel_RVALID_I" \
"BUSER:Read_channel_BUSER_I" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {DDR_Read_ch0} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {mirroredSlave} -port_bif_mapping {\
"ARADDR:Read_channel_ARADDR_O_0" \
"ARSIZE:Read_channel_ARSIZE_O_0" \
"ARVALID:Read_channel_ARVALID_O_0" \
"ARREADY:Read_channel_ARREADY_I_0" \
"RDATA:Read_channel_RDATA_I_0" \
"RVALID:Read_channel_RVALID_I_0" \
"BUSER:Read_channel_BUSER_I_0" } 

# Add alpha_blender_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {alpha_blender} -instance_name {alpha_blender_0}
# Exporting Parameters of instance alpha_blender_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {alpha_blender_0} -params {\
"G_PIXEL_WIDTH:8" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {alpha_blender_0}
sd_update_instance -sd_name ${sd_name} -instance_name {alpha_blender_0}



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



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"DATA_ENABLE_O" "Display_Controller_C0_0:DATA_ENABLE_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0:data_valid_o" "alpha_blender_0:DATA_VALID_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0:ddr_clk_i" "DDR_Read_C0_0_0:ddr_clk_i" "ddr_clk_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0:frame_start_i" "DDR_Read_C0_0_0:frame_start_i" "Display_Controller_C0_0:FRAME_END_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0:pixel_clk_i" "DDR_Read_C0_0_0:pixel_clk_i" "Display_Controller_C0_0:SYS_CLK_I" "alpha_blender_0:SYS_CLK_I" "pixel_clk_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0:read_en_i" "DDR_Read_C0_0_0:read_en_i" "Display_Controller_C0_0:DATA_TRIGGER_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0:reset_i" "DDR_Read_C0_0_0:reset_i" "alpha_blender_0:RESETN_I" "ddr_resetn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Display_Controller_C0_0:EXT_SYNC_SIGNAL_I" "alpha_blender_0:DATA_VALID_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Display_Controller_C0_0:H_SYNC_O" "H_SYNC_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Display_Controller_C0_0:RESETN_I" "disp_resetn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Display_Controller_C0_0:V_SYNC_O" "V_SYNC_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"alpha_blend_en_i" "alpha_blender_0:EN_I" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"B_O" "alpha_blender_0:B_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0:data_o[15:8]" "alpha_blender_0:CH1_G_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0:data_o[23:16]" "alpha_blender_0:CH1_R_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0:data_o[7:0]" "alpha_blender_0:CH1_B_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0:frame_start_addr_i" "frame_start_addr_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0:horz_resl_i" "DDR_Read_C0_0_0:horz_resl_i" "Display_Controller_C0_0:H_RES_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0_0:data_o[15:8]" "alpha_blender_0:CH2_G_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0_0:data_o[23:16]" "alpha_blender_0:CH2_R_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0_0:data_o[31:24]" "alpha_blender_0:ALPHA_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0_0:data_o[7:0]" "alpha_blender_0:CH2_B_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0_0:frame_start_addr_i" "overlay_frame_start_addr_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"G_O" "alpha_blender_0:G_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"R_O" "alpha_blender_0:R_O" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0:Read_channel" "DDR_Read_ch1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_Read_C0_0_0:Read_channel" "DDR_Read_ch0" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the SmartDesign 
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign "video_out_subsys"
generate_component -component_name ${sd_name}
