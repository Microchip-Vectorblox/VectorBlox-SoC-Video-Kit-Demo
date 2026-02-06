# Creating SmartDesign "HDMI_subsys"
set sd_name {HDMI_subsys}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {DATA_VALID_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HPD_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {H_SYNC_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE0_RXD_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE0_RXD_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE1_RXD_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE1_RXD_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE2_RXD_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE2_RXD_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE3_RXD_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE3_RXD_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RX_EDID_CLK_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RX_RESET_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RX_SCL_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RX_SDA_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TX_RESET_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {V_SYNC_I} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE0_TXD_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE0_TXD_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE1_RX_CLK_R} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE1_TXD_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE1_TXD_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE1_TX_CLK_R} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE2_TXD_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE2_TXD_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE3_TXD_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE3_TXD_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RX_DATA_VALID_O} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RX_HPD_O} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RX_SDA_O} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RX_V_SYNC_O} -port_direction {OUT}


# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {DATA_B_I} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {DATA_G_I} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {DATA_R_I} -port_direction {IN} -port_range {[7:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {RX_B_O} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {RX_G_O} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {RX_R_O} -port_direction {OUT} -port_range {[7:0]}


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



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"DATA_VALID_I" "HDMI_TX_C0_0:VIDEO_DATA_VALID_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:BIT_SLIP_B_O" "PF_XCVR_ERM_C2_0:LANE1_RX_SLIP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:BIT_SLIP_G_O" "PF_XCVR_ERM_C2_0:LANE2_RX_SLIP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:BIT_SLIP_R_O" "PF_XCVR_ERM_C2_0:LANE3_RX_SLIP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:B_RX_CLK_I" "LANE1_RX_CLK_R" "PF_XCVR_ERM_C2_0:LANE1_RX_CLK_R" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:B_RX_VALID_I" "PF_XCVR_ERM_C2_0:LANE1_RX_VAL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:EDID_CLK_I" "RX_EDID_CLK_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:G_RX_CLK_I" "PF_XCVR_ERM_C2_0:LANE2_RX_CLK_R" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:G_RX_VALID_I" "PF_XCVR_ERM_C2_0:LANE2_RX_VAL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:HPD_I" "HPD_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:HPD_O" "RX_HPD_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:RESET_N_I" "RX_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:R_RX_CLK_I" "PF_XCVR_ERM_C2_0:LANE3_RX_CLK_R" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:R_RX_VALID_I" "PF_XCVR_ERM_C2_0:LANE3_RX_VAL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:SCL_I" "RX_SCL_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:SDA_I" "RX_SDA_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:SDA_O" "RX_SDA_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:VIDEO_DATA_VALID_O" "RX_DATA_VALID_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:V_SYNC_O" "RX_V_SYNC_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:B_CLK_I" "HDMI_TX_C0_0:SYS_CLK_I" "LANE1_TX_CLK_R" "PF_XCVR_ERM_C2_0:LANE1_TX_CLK_R" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:B_CLK_LOCK" "PF_XCVR_ERM_C2_0:LANE1_TX_CLK_STABLE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:G_CLK_I" "PF_XCVR_ERM_C2_0:LANE2_TX_CLK_R" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:G_CLK_LOCK" "PF_XCVR_ERM_C2_0:LANE2_TX_CLK_STABLE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:H_SYNC_I" "H_SYNC_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:RESET_N_I" "PF_XCVR_ERM_C2_0:LANE0_PCS_ARST_N" "PF_XCVR_ERM_C2_0:LANE0_PMA_ARST_N" "PF_XCVR_ERM_C2_0:LANE1_PCS_ARST_N" "PF_XCVR_ERM_C2_0:LANE1_PMA_ARST_N" "PF_XCVR_ERM_C2_0:LANE2_PCS_ARST_N" "PF_XCVR_ERM_C2_0:LANE2_PMA_ARST_N" "PF_XCVR_ERM_C2_0:LANE3_PCS_ARST_N" "PF_XCVR_ERM_C2_0:LANE3_PMA_ARST_N" "TX_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:R_CLK_I" "PF_XCVR_ERM_C2_0:LANE3_TX_CLK_R" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:R_CLK_LOCK" "PF_XCVR_ERM_C2_0:LANE3_TX_CLK_STABLE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:V_SYNC_I" "V_SYNC_I" }
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

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"DATA_B_I" "HDMI_TX_C0_0:DATA_B_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DATA_G_I" "HDMI_TX_C0_0:DATA_G_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DATA_R_I" "HDMI_TX_C0_0:DATA_R_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:B_O" "RX_B_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:DATA_B_I" "PF_XCVR_ERM_C2_0:LANE1_RX_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:DATA_G_I" "PF_XCVR_ERM_C2_0:LANE2_RX_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:DATA_R_I" "PF_XCVR_ERM_C2_0:LANE3_RX_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:G_O" "RX_G_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_RX_C0_0:R_O" "RX_R_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:TMDS_B_O" "PF_XCVR_ERM_C2_0:LANE1_TX_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:TMDS_G_O" "PF_XCVR_ERM_C2_0:LANE2_TX_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HDMI_TX_C0_0:TMDS_R_O" "PF_XCVR_ERM_C2_0:LANE3_TX_DATA" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_TX_PLL_C0_0:CLKS_TO_XCVR" "PF_XCVR_ERM_C2_0:CLKS_FROM_TXPLL_0" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the SmartDesign 
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign "HDMI_subsys"
generate_component -component_name ${sd_name}
