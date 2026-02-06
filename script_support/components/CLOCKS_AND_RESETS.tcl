# Creating SmartDesign "CLOCKS_AND_RESETS"
set sd_name {CLOCKS_AND_RESETS}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {DDR_CTRLR_READY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DDR_PLL_LOCK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DDR_SYS_CLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DISP_CLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EXT_RST_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK_PAD_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK_PAD_P} -port_direction {IN} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_150MHz} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_50MHz} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_HLS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_MSS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_VBX_2X} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_VBX_CNN} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_VBX} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_VID_TX_170MHZ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK_XCVR_REF} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DEVICE_INIT_DONE} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FABRIC_POR_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_BCLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_50MHz} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_DDR} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_DISP} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_HLS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_MSS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_VBX} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_VID170MHZ} -port_direction {OUT}



# Add AND2_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND2} -instance_name {AND2_0}



# Add AND3_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND3} -instance_name {AND3_0}



# Add AND4_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND4} -instance_name {AND4_0}



# Add AND4_1 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND4} -instance_name {AND4_1}



# Add CORERESET_CLK_50MHz instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET_PF_C0} -instance_name {CORERESET_CLK_50MHz}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_50MHz:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_50MHz:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_50MHz:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_50MHz:FF_US_RESTORE} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORERESET_CLK_50MHz:PLL_POWERDOWN_B}



# Add CORERESET_CLK_DDR instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET_PF_C0} -instance_name {CORERESET_CLK_DDR}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_DDR:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_DDR:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_DDR:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_DDR:FF_US_RESTORE} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORERESET_CLK_DDR:PLL_POWERDOWN_B}



# Add CORERESET_CLK_DISP instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET_PF_C0} -instance_name {CORERESET_CLK_DISP}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_DISP:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_DISP:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_DISP:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_DISP:FF_US_RESTORE} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORERESET_CLK_DISP:PLL_POWERDOWN_B}



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



# Add CORERESET_CLK_VID_170MHZ instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET_PF_C0} -instance_name {CORERESET_CLK_VID_170MHZ}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_VID_170MHZ:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_VID_170MHZ:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_VID_170MHZ:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_CLK_VID_170MHZ:FF_US_RESTORE} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORERESET_CLK_VID_170MHZ:PLL_POWERDOWN_B}



# Add INIT_MONITOR_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PFSOC_INIT_MONITOR_C0} -instance_name {INIT_MONITOR_0}
sd_create_pin_group -sd_name ${sd_name} -group_name {Group} -instance_name {INIT_MONITOR_0} -pin_names {"BANK_7_CALIB_STATUS" "PCIE_INIT_DONE" "USRAM_INIT_DONE" "SRAM_INIT_DONE" "BANK_9_CALIB_STATUS" "XCVR_INIT_DONE" "USRAM_INIT_FROM_SNVM_DONE" "USRAM_INIT_FROM_UPROM_DONE" "USRAM_INIT_FROM_SPI_DONE" "SRAM_INIT_FROM_SNVM_DONE" "SRAM_INIT_FROM_UPROM_DONE" "SRAM_INIT_FROM_SPI_DONE" }
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:PCIE_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:USRAM_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:SRAM_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:BANK_7_CALIB_STATUS}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:BANK_9_CALIB_STATUS}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:XCVR_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:USRAM_INIT_FROM_SNVM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:USRAM_INIT_FROM_UPROM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:USRAM_INIT_FROM_SPI_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:SRAM_INIT_FROM_SNVM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:SRAM_INIT_FROM_UPROM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:SRAM_INIT_FROM_SPI_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:AUTOCALIB_DONE}



# Add PF_CCC_170MCLK_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_CCC_170MCLK} -instance_name {PF_CCC_170MCLK_0}



# Add PF_CCC_MAIN instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_CCC_C0} -instance_name {PF_CCC_MAIN}



# Add PF_CCC_VBX_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_CCC_VBX} -instance_name {PF_CCC_VBX_0}



# Add PF_CCC_VBX_1_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_CCC_VBX_1} -instance_name {PF_CCC_VBX_1_0}



# Add PF_CLK_DIV_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_CLK_DIV_C0} -instance_name {PF_CLK_DIV_C0_0}



# Add PF_OSC_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_OSC_C0} -instance_name {PF_OSC_C0_0}



# Add PF_XCVR_REF_CLK_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_XCVR_REF_CLK_C0} -instance_name {PF_XCVR_REF_CLK_C0_0}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_0:A" "PF_CCC_VBX_0:PLL_LOCK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_0:B" "PF_CCC_VBX_1_0:PLL_LOCK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_0:Y" "AND4_0:D" "AND4_1:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND3_0:A" "AND4_0:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND3_0:B" "PF_CCC_170MCLK_0:PLL_LOCK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND3_0:C" "AND4_1:Y" "CORERESET_CLK_50MHz:PLL_LOCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND3_0:Y" "CORERESET_CLK_DDR:PLL_LOCK" "CORERESET_CLK_DISP:PLL_LOCK" "CORERESET_CLK_HLS:PLL_LOCK" "CORERESET_CLK_MSS:PLL_LOCK" "CORERESET_CLK_VBX_0:PLL_LOCK" "CORERESET_CLK_VID_170MHZ:PLL_LOCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_0:A" "DDR_PLL_LOCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_0:B" "DDR_CTRLR_READY" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_0:C" "AND4_1:B" "PF_CCC_MAIN:PLL_LOCK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_1:C" "INIT_MONITOR_0:BANK_0_CALIB_STATUS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_1:D" "INIT_MONITOR_0:BANK_8_CALIB_STATUS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_150MHz" "PF_CCC_MAIN:OUT0_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_50MHz" "CORERESET_CLK_50MHz:CLK" "PF_CCC_MAIN:OUT3_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_HLS" "CORERESET_CLK_HLS:CLK" "PF_CCC_MAIN:OUT2_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_MSS" "CORERESET_CLK_MSS:CLK" "PF_CCC_MAIN:OUT1_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_VBX" "CORERESET_CLK_VBX_0:CLK" "PF_CCC_VBX_0:OUT1_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_VBX_2X" "PF_CCC_VBX_0:OUT0_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_VBX_CNN" "PF_CCC_VBX_1_0:OUT0_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_VID_TX_170MHZ" "CORERESET_CLK_VID_170MHZ:CLK" "PF_CCC_170MCLK_0:OUT0_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_XCVR_REF" "PF_XCVR_REF_CLK_C0_0:REF_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_CLK_50MHz:EXT_RST_N" "CORERESET_CLK_DDR:EXT_RST_N" "CORERESET_CLK_DISP:EXT_RST_N" "CORERESET_CLK_HLS:EXT_RST_N" "CORERESET_CLK_MSS:EXT_RST_N" "CORERESET_CLK_VBX_0:EXT_RST_N" "CORERESET_CLK_VID_170MHZ:EXT_RST_N" "EXT_RST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_CLK_50MHz:FABRIC_RESET_N" "RESETN_50MHz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_CLK_50MHz:FPGA_POR_N" "CORERESET_CLK_DDR:FPGA_POR_N" "CORERESET_CLK_DISP:FPGA_POR_N" "CORERESET_CLK_HLS:FPGA_POR_N" "CORERESET_CLK_MSS:FPGA_POR_N" "CORERESET_CLK_VBX_0:FPGA_POR_N" "CORERESET_CLK_VID_170MHZ:FPGA_POR_N" "FABRIC_POR_N" "INIT_MONITOR_0:FABRIC_POR_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_CLK_50MHz:INIT_DONE" "CORERESET_CLK_DDR:INIT_DONE" "CORERESET_CLK_DISP:INIT_DONE" "CORERESET_CLK_HLS:INIT_DONE" "CORERESET_CLK_MSS:INIT_DONE" "CORERESET_CLK_VBX_0:INIT_DONE" "CORERESET_CLK_VID_170MHZ:INIT_DONE" "DEVICE_INIT_DONE" "INIT_MONITOR_0:DEVICE_INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_CLK_DDR:CLK" "DDR_SYS_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_CLK_DDR:FABRIC_RESET_N" "RESETN_DDR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_CLK_DISP:CLK" "DISP_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_CLK_DISP:FABRIC_RESET_N" "RESETN_DISP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_CLK_HLS:FABRIC_RESET_N" "RESETN_HLS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_CLK_MSS:FABRIC_RESET_N" "RESETN_MSS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_CLK_VBX_0:FABRIC_RESET_N" "RESETN_VBX" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_CLK_VID_170MHZ:FABRIC_RESET_N" "RESETN_VID170MHZ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_BCLK" "PF_CLK_DIV_C0_0:CLK_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_CCC_170MCLK_0:REF_CLK_0" "PF_CCC_MAIN:REF_CLK_0" "PF_CCC_VBX_0:REF_CLK_0" "PF_CCC_VBX_1_0:REF_CLK_0" "PF_XCVR_REF_CLK_C0_0:FAB_REF_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_CLK_DIV_C0_0:CLK_IN" "PF_OSC_C0_0:RCOSC_2MHZ_CLK_DIV" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_REF_CLK_C0_0:REF_CLK_PAD_N" "REF_CLK_PAD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_REF_CLK_C0_0:REF_CLK_PAD_P" "REF_CLK_PAD_P" }



# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the SmartDesign 
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign "CLOCKS_AND_RESETS"
generate_component -component_name ${sd_name}
