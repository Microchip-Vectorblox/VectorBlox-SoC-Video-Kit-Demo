# Creating SmartDesign CLOCKS_AND_RESETS
set sd_name {CLOCKS_AND_RESETS}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {EXT_RST_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK_PAD_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK_PAD_P} -port_direction {IN} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_150MHz} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_50MHz} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_HLS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_MSS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_VBX2} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_VBX} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DEVICE_INIT_DONE} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FABRIC_POR_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_BCLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PLL_LOCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_150MHz} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_50MHz} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_HLS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_MSS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_VBX} -port_direction {OUT}



# Add CORERESET_CLK_50MHz instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET_PF_C0} -instance_name {CORERESET_CLK_50MHz}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_50MHz:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_50MHz:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_50MHz:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_50MHz:FF_US_RESTORE} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORERESET_CLK_50MHz:PLL_POWERDOWN_B}



# Add CORERESET_CLK_150MHz instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET_PF_C0} -instance_name {CORERESET_CLK_150MHz}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_150MHz:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_150MHz:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_150MHz:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_150MHz:FF_US_RESTORE} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORERESET_CLK_150MHz:PLL_POWERDOWN_B}



# Add CORERESET_CLK_HLS instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET_PF_C0} -instance_name {CORERESET_CLK_HLS}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_HLS:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_HLS:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_HLS:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_HLS:FF_US_RESTORE} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORERESET_CLK_HLS:PLL_POWERDOWN_B}



# Add CORERESET_CLK_MSS instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET_PF_C0} -instance_name {CORERESET_CLK_MSS}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_MSS:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_MSS:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_MSS:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_MSS:FF_US_RESTORE} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORERESET_CLK_MSS:PLL_POWERDOWN_B}



# Add CORERESET_CLK_VBX_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET_PF_C0} -instance_name {CORERESET_CLK_VBX_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_VBX_0:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_VBX_0:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_VBX_0:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_VBX_0:FF_US_RESTORE} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORERESET_CLK_VBX_0:PLL_POWERDOWN_B}



# Add INIT_MONITOR_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PFSOC_INIT_MONITOR_C0} -instance_name {INIT_MONITOR_0}
sd_create_pin_group -sd_name ${sd_name} -group_name {Group} -instance_name {INIT_MONITOR_0} -pin_names {"BANK_7_CALIB_STATUS" "PCIE_INIT_DONE" "USRAM_INIT_DONE" "SRAM_INIT_DONE" "BANK_8_CALIB_STATUS" "BANK_9_CALIB_STATUS" "XCVR_INIT_DONE" "USRAM_INIT_FROM_SNVM_DONE" "USRAM_INIT_FROM_UPROM_DONE" "USRAM_INIT_FROM_SPI_DONE" "SRAM_INIT_FROM_SNVM_DONE" "SRAM_INIT_FROM_UPROM_DONE" "SRAM_INIT_FROM_SPI_DONE" }
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:PCIE_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:USRAM_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:SRAM_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:BANK_7_CALIB_STATUS}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:BANK_8_CALIB_STATUS}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:BANK_9_CALIB_STATUS}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:XCVR_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:USRAM_INIT_FROM_SNVM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:USRAM_INIT_FROM_UPROM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:USRAM_INIT_FROM_SPI_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:SRAM_INIT_FROM_SNVM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:SRAM_INIT_FROM_UPROM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:SRAM_INIT_FROM_SPI_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:AUTOCALIB_DONE}



# Add PF_CCC_MAIN instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_CCC_C0} -instance_name {PF_CCC_MAIN}



# Add PF_CCC_VBX_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_CCC_VBX} -instance_name {PF_CCC_VBX_0}



# Add PF_CLK_DIV_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_CLK_DIV_C0} -instance_name {PF_CLK_DIV_C0_0}



# Add PF_OSC_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_OSC_C0} -instance_name {PF_OSC_C0_0}



# Add PF_XCVR_REF_CLK_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_XCVR_REF_CLK_C0} -instance_name {PF_XCVR_REF_CLK_C0_0}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_150MHz" "CORERESET_CLK_150MHz:CLK" "PF_CCC_MAIN:OUT0_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_50MHz" "CORERESET_CLK_50MHz:CLK" "PF_CCC_MAIN:OUT3_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_HLS" "CORERESET_CLK_HLS:CLK" "PF_CCC_MAIN:OUT2_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_MSS" "CORERESET_CLK_MSS:CLK" "PF_CCC_MAIN:OUT1_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_VBX" "CORERESET_CLK_VBX_0:CLK" "PF_CCC_VBX_0:OUT1_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_VBX2" "PF_CCC_VBX_0:OUT0_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_CLK_150MHz:EXT_RST_N" "CORERESET_CLK_50MHz:EXT_RST_N" "CORERESET_CLK_HLS:EXT_RST_N" "CORERESET_CLK_MSS:EXT_RST_N" "CORERESET_CLK_VBX_0:EXT_RST_N" "EXT_RST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_CLK_150MHz:FABRIC_RESET_N" "RESETN_150MHz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_CLK_150MHz:FPGA_POR_N" "CORERESET_CLK_50MHz:FPGA_POR_N" "CORERESET_CLK_HLS:FPGA_POR_N" "CORERESET_CLK_MSS:FPGA_POR_N" "CORERESET_CLK_VBX_0:FPGA_POR_N" "FABRIC_POR_N" "INIT_MONITOR_0:FABRIC_POR_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_CLK_150MHz:INIT_DONE" "CORERESET_CLK_50MHz:INIT_DONE" "CORERESET_CLK_HLS:INIT_DONE" "CORERESET_CLK_MSS:INIT_DONE" "CORERESET_CLK_VBX_0:INIT_DONE" "DEVICE_INIT_DONE" "INIT_MONITOR_0:DEVICE_INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_CLK_150MHz:PLL_LOCK" "CORERESET_CLK_50MHz:PLL_LOCK" "CORERESET_CLK_HLS:PLL_LOCK" "CORERESET_CLK_MSS:PLL_LOCK" "PF_CCC_MAIN:PLL_LOCK_0" "PLL_LOCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_CLK_50MHz:FABRIC_RESET_N" "RESETN_50MHz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_CLK_HLS:FABRIC_RESET_N" "RESETN_HLS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_CLK_MSS:FABRIC_RESET_N" "RESETN_MSS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_CLK_VBX_0:FABRIC_RESET_N" "RESETN_VBX" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_CLK_VBX_0:PLL_LOCK" "PF_CCC_VBX_0:PLL_LOCK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_BCLK" "PF_CLK_DIV_C0_0:CLK_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_CCC_MAIN:REF_CLK_0" "PF_CCC_VBX_0:REF_CLK_0" "PF_XCVR_REF_CLK_C0_0:FAB_REF_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_CLK_DIV_C0_0:CLK_IN" "PF_OSC_C0_0:RCOSC_2MHZ_CLK_DIV" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_REF_CLK_C0_0:REF_CLK" "REF_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_REF_CLK_C0_0:REF_CLK_PAD_N" "REF_CLK_PAD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_REF_CLK_C0_0:REF_CLK_PAD_P" "REF_CLK_PAD_P" }



# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign CLOCKS_AND_RESETS
generate_component -component_name ${sd_name}
