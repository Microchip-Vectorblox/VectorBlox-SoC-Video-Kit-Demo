# Creating SmartDesign "VKPFSOC_TOP"
set sd_name {VKPFSOC_TOP}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM1_RX_CLK_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM1_RX_CLK_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FABRIC_HPD_N_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FABRIC_SCL_I} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE0_RXD_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE0_RXD_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE1_RXD_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE1_RXD_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE2_RXD_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE2_RXD_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE3_RXD_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE3_RXD_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_0_RXD_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_1_RXD_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REFCLK_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REFCLK} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK_PAD_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK_PAD_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_CD_EMMC_STRB} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_WP_EMMC_RSTN} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX1_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX1_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_CLK} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DIR} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_NXT} -port_direction {IN} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {ACT_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {BG} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM1_RST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_CLK_EN} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CKE} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CK_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CK} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CS} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FABRIC_CAS_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FABRIC_CK0_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FABRIC_CK0} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FABRIC_CKE} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FABRIC_CS_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FABRIC_HPD_O} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FABRIC_ODT} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FABRIC_RAS_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FABRIC_RESET_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FABRIC_WE_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE0_TXD_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE0_TXD_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE1_TXD_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE1_TXD_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE2_TXD_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE2_TXD_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE3_TXD_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE3_TXD_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED0} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED1} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED2} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED3} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_0_MDC} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_0_TXD_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_1_TXD_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ODT} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESET_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SDIO_SW_EN_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SDIO_SW_SEL0} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SDIO_SW_SEL1} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_CLK_EMMC_CLK} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_POW_EMMC_DATA4} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_CMD_DIR_EMMC_DATA7} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_DIR_0_EMMC_UNUSED} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_DIR_1_3_EMMC_UNUSED} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_EN_EMMC_DATA6} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_SEL_EMMC_DATA5} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX0_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX0_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX1_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX1_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SHIELD0} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SHIELD1} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SHIELD2} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SHIELD3} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SHIELD4} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SHIELD5} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SHIELD6} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SHIELD7} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TEN} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_STP} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_ULPI_RESET_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {VSC_8662_CMODE3} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {VSC_8662_CMODE4} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {VSC_8662_CMODE5} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {VSC_8662_CMODE6} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {VSC_8662_CMODE7} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {VSC_8662_RESETN} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {VSC_8662_SRESET} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {cam1inck} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {cam1xmaster} -port_direction {OUT}

sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM1_SCL} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM1_SDA} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FABRIC_SDA} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_0_MDIO} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_CMD_EMMC_CMD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA0_EMMC_DATA0} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA1_EMMC_DATA1} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA2_EMMC_DATA2} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA3_EMMC_DATA3} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA0} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA1} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA2} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA3} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA4} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA5} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA6} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA7} -port_direction {INOUT} -port_is_pad {1}

# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {CAM1_RXD_N} -port_direction {IN} -port_range {[3:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {CAM1_RXD} -port_direction {IN} -port_range {[3:0]} -port_is_pad {1}

sd_create_bus_port -sd_name ${sd_name} -port_name {A} -port_direction {OUT} -port_range {[13:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {BA} -port_direction {OUT} -port_range {[1:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {CA} -port_direction {OUT} -port_range {[5:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DM} -port_direction {OUT} -port_range {[3:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {FABRIC_DM_N} -port_direction {OUT} -port_range {[7:0]} -port_is_pad {1}

sd_create_bus_port -sd_name ${sd_name} -port_name {DQS_N} -port_direction {INOUT} -port_range {[3:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQS} -port_direction {INOUT} -port_range {[3:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQ} -port_direction {INOUT} -port_range {[31:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {FABRIC_DQS_N} -port_direction {INOUT} -port_range {[7:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {FABRIC_DQS} -port_direction {INOUT} -port_range {[7:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {FABRIC_DQ} -port_direction {INOUT} -port_range {[63:0]} -port_is_pad {1}

sd_invert_pins -sd_name ${sd_name} -pin_names {FABRIC_HPD_N_I}
sd_invert_pins -sd_name ${sd_name} -pin_names {FABRIC_HPD_O}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {LED0} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {LED1} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {TEN} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_CMODE3} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_CMODE4} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_CMODE5} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_CMODE6} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_CMODE7} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_SRESET} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {cam1inck} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {cam1xmaster} -value {GND}
# Add axi_arbiter_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {axi_arbiter} -instance_name {axi_arbiter_0}
# Exporting Parameters of instance axi_arbiter_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {axi_arbiter_0} -params {\
"ADDR_WIDTH:32" \
"DATA_WIDTH:512" \
"S_ID_WIDTH:7" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {axi_arbiter_0}
sd_update_instance -sd_name ${sd_name} -instance_name {axi_arbiter_0}



# Add axi_master_scale_updown_bilinear_top_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {axi_master_scale_updown_bilinear_top} -instance_name {axi_master_scale_updown_bilinear_top_0}
sd_invert_pins -sd_name ${sd_name} -pin_names {axi_master_scale_updown_bilinear_top_0:reset}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {axi_master_scale_updown_bilinear_top_0:start} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {axi_master_scale_updown_bilinear_top_0:ready}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {axi_master_scale_updown_bilinear_top_0:finish}



# Add axi_master_warpPerspective_top_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {axi_master_warpPerspective_top} -instance_name {axi_master_warpPerspective_top_0}
sd_invert_pins -sd_name ${sd_name} -pin_names {axi_master_warpPerspective_top_0:reset}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {axi_master_warpPerspective_top_0:start} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {axi_master_warpPerspective_top_0:ready}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {axi_master_warpPerspective_top_0:finish}



# Add BIBUF_1 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_1}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BIBUF_1:D} -value {GND}



# Add BIBUF_2 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_2}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BIBUF_2:D} -value {GND}



# Add CLOCKS_AND_RESETS instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CLOCKS_AND_RESETS} -instance_name {CLOCKS_AND_RESETS}



# Add core_vectorblox_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {core_vectorblox_C0} -instance_name {core_vectorblox_C0_0}



# Add COREAXI4INTERCONNECT_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {COREAXI4INTERCONNECT_C0} -instance_name {COREAXI4INTERCONNECT_C0_0}



# Add draw_assist_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {draw_assist} -instance_name {draw_assist_0}
# Exporting Parameters of instance draw_assist_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {draw_assist_0} -params {\
"M_AXI_DATA_WIDTH:256" \
"MAX_LOG2_BURSTLENGTH:6" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {draw_assist_0}
sd_update_instance -sd_name ${sd_name} -instance_name {draw_assist_0}



# Add FIC0_INITIATOR instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FIC0_INITIATOR} -instance_name {FIC0_INITIATOR}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FIC0_INITIATOR:AXI4mslave0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FIC0_INITIATOR:AXI4mslave1}



# Add FIC_CONVERTER_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FIC_CONVERTER} -instance_name {FIC_CONVERTER_0}



# Add MSS instance
sd_instantiate_component -sd_name ${sd_name} -component_name {MSS_VIDEO_KIT} -instance_name {MSS}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:MSS_INT_F2M} -pin_slices {[0:5]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MSS:MSS_INT_F2M[0:5]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:MSS_INT_F2M} -pin_slices {[63:7]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MSS:MSS_INT_F2M[63:7]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:MSS_INT_F2M} -pin_slices {[6:6]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MSS:FIC_2_ACLK} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MSS:GPIO_2_F2M_25} -value {VCC}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:FIC_0_DLL_LOCK_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:FIC_1_DLL_LOCK_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:FIC_2_DLL_LOCK_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:FIC_3_DLL_LOCK_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MMUART_0_TXD_OE_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MMUART_1_TXD_OE_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:GPIO_2_M2F_9}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:GPIO_2_M2F_8}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:GPIO_2_M2F_3}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:GPIO_2_M2F_2}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:GPIO_2_M2F_1}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:PLL_CPU_LOCK_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:PLL_DDR_LOCK_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:PLL_SGMII_LOCK_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:FIC_3_APB_M_PSTRB}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MSS_INT_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:FIC_0_AXI4_TARGET}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:FIC_1_AXI4_TARGET}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:FIC_2_AXI4_TARGET}



# Add PF_DDR4_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_DDR4_C0} -instance_name {PF_DDR4_C0_0}



# Add pulse_generator_0 instance
sd_instantiate_hdl_module -sd_name ${sd_name} -hdl_module_name {pulse_generator} -hdl_file {hdl\pulse_generator.vhd} -instance_name {pulse_generator_0}



# Add Video_Pipeline_HDMI_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {Video_Pipeline_HDMI} -instance_name {Video_Pipeline_HDMI_0}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"ACT_N" "PF_DDR4_C0_0:ACT_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BG" "PF_DDR4_C0_0:BG" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_1:E" "MSS:I2C_0_SCL_OE_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_1:PAD" "CAM1_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_1:Y" "MSS:I2C_0_SCL_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_2:E" "MSS:I2C_0_SDA_OE_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_2:PAD" "CAM1_SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_2:Y" "MSS:I2C_0_SDA_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM1_RST" "MSS:GPIO_2_M2F_5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM1_RX_CLK_N" "Video_Pipeline_HDMI_0:CAM1_RX_CLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM1_RX_CLK_P" "Video_Pipeline_HDMI_0:CAM1_RX_CLK_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_CLK_EN" "MSS:GPIO_2_M2F_6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK" "MSS:CK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CKE" "MSS:CKE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK_N" "MSS:CK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:CLK_150MHz" "Video_Pipeline_HDMI_0:CLK_150MHz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:CLK_50MHz" "MSS:FIC_3_PCLK" "PF_DDR4_C0_0:PLL_REF_CLK" "Video_Pipeline_HDMI_0:CLK_50MHz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:CLK_HLS" "COREAXI4INTERCONNECT_C0_0:M_CLK2" "COREAXI4INTERCONNECT_C0_0:M_CLK3" "COREAXI4INTERCONNECT_C0_0:M_CLK4" "FIC0_INITIATOR:S_CLK3" "FIC0_INITIATOR:S_CLK4" "FIC0_INITIATOR:S_CLK5" "axi_master_scale_updown_bilinear_top_0:clk" "axi_master_warpPerspective_top_0:clk" "draw_assist_0:clk" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:CLK_MSS" "COREAXI4INTERCONNECT_C0_0:ACLK" "FIC0_INITIATOR:ACLK" "MSS:FIC_0_ACLK" "MSS:FIC_1_ACLK" "pulse_generator_0:pulse_clk" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:CLK_VBX" "COREAXI4INTERCONNECT_C0_0:M_CLK1" "FIC0_INITIATOR:S_CLK2" "core_vectorblox_C0_0:clk" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:CLK_VBX2" "core_vectorblox_C0_0:clk_2x" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:CLK_VID_TX_170MHZ" "Video_Pipeline_HDMI_0:VID_TX_CLK_170MHZ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:CLK_XCVR_REF" "Video_Pipeline_HDMI_0:REF_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:DDR_CTRLR_READY" "PF_DDR4_C0_0:CTRLR_READY" "Video_Pipeline_HDMI_0:CTRLR_READY" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:DDR_PLL_LOCK" "PF_DDR4_C0_0:PLL_LOCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:DDR_SYS_CLK" "COREAXI4INTERCONNECT_C0_0:M_CLK5" "COREAXI4INTERCONNECT_C0_0:M_CLK6" "COREAXI4INTERCONNECT_C0_0:M_CLK7" "COREAXI4INTERCONNECT_C0_0:S_CLK0" "PF_DDR4_C0_0:SYS_CLK" "Video_Pipeline_HDMI_0:CLK_DDR" "axi_arbiter_0:clk" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:DEVICE_INIT_DONE" "Video_Pipeline_HDMI_0:INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:DISP_CLK" "Video_Pipeline_HDMI_0:DISP_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:EXT_RST_N" "MSS:MSS_RESET_N_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FABRIC_POR_N" "MSS:MSS_RESET_N_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:I2C_BCLK" "MSS:I2C_0_BCLK_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:REF_CLK_PAD_N" "REF_CLK_PAD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:REF_CLK_PAD_P" "REF_CLK_PAD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:RESETN_50MHz" "PF_DDR4_C0_0:SYS_RESET_N" "Video_Pipeline_HDMI_0:RESETN_50MHz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:RESETN_DDR" "Video_Pipeline_HDMI_0:RESETN_DDR" "axi_arbiter_0:resetn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:RESETN_DISP" "Video_Pipeline_HDMI_0:RESETN_DISP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:RESETN_HLS" "axi_master_scale_updown_bilinear_top_0:reset" "axi_master_warpPerspective_top_0:reset" "draw_assist_0:resetn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:RESETN_MSS" "COREAXI4INTERCONNECT_C0_0:ARESETN" "FIC0_INITIATOR:ARESETN" "VSC_8662_RESETN" "pulse_generator_0:resetn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:RESETN_VBX" "core_vectorblox_C0_0:resetn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:RESETN_VID170MHZ" "Video_Pipeline_HDMI_0:RESETN_VID170MHZ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CS" "MSS:CS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_CAS_N" "PF_DDR4_C0_0:CAS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_CK0" "PF_DDR4_C0_0:CK0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_CK0_N" "PF_DDR4_C0_0:CK0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_CKE" "PF_DDR4_C0_0:CKE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_CS_N" "PF_DDR4_C0_0:CS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_HPD_N_I" "Video_Pipeline_HDMI_0:HPD_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_HPD_O" "Video_Pipeline_HDMI_0:HPD_O" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_ODT" "PF_DDR4_C0_0:ODT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_RAS_N" "PF_DDR4_C0_0:RAS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_RESET_N" "PF_DDR4_C0_0:RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_SCL_I" "Video_Pipeline_HDMI_0:SCL_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_SDA" "Video_Pipeline_HDMI_0:SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_WE_N" "PF_DDR4_C0_0:WE_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE0_RXD_N" "Video_Pipeline_HDMI_0:LANE0_RXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE0_RXD_P" "Video_Pipeline_HDMI_0:LANE0_RXD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE0_TXD_N" "Video_Pipeline_HDMI_0:LANE0_TXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE0_TXD_P" "Video_Pipeline_HDMI_0:LANE0_TXD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE1_RXD_N" "Video_Pipeline_HDMI_0:LANE1_RXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE1_RXD_P" "Video_Pipeline_HDMI_0:LANE1_RXD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE1_TXD_N" "Video_Pipeline_HDMI_0:LANE1_TXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE1_TXD_P" "Video_Pipeline_HDMI_0:LANE1_TXD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE2_RXD_N" "Video_Pipeline_HDMI_0:LANE2_RXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE2_RXD_P" "Video_Pipeline_HDMI_0:LANE2_RXD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE2_TXD_N" "Video_Pipeline_HDMI_0:LANE2_TXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE2_TXD_P" "Video_Pipeline_HDMI_0:LANE2_TXD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE3_RXD_N" "Video_Pipeline_HDMI_0:LANE3_RXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE3_RXD_P" "Video_Pipeline_HDMI_0:LANE3_RXD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE3_TXD_N" "Video_Pipeline_HDMI_0:LANE3_TXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE3_TXD_P" "Video_Pipeline_HDMI_0:LANE3_TXD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED2" "MSS:GPIO_2_M2F_18" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED3" "MSS:GPIO_2_M2F_19" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MAC_0_MDC" "MSS:MAC_0_MDC" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MAC_0_MDIO" "MSS:MAC_0_MDIO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_0_RXD_F2M" "MSS:MMUART_0_RXD_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_0_TXD_M2F" "MSS:MMUART_0_TXD_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_1_RXD_F2M" "MSS:MMUART_1_RXD_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_1_TXD_M2F" "MSS:MMUART_1_TXD_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_1_12_OUT" "USB_ULPI_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_1_16_OUT" "SDIO_SW_SEL0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_1_20_OUT" "SDIO_SW_SEL1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_1_23_OUT" "SDIO_SW_EN_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_M2F_7" "Video_Pipeline_HDMI_0:IMX334_TRNG_RST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:MSS_INT_F2M[6:6]" "pulse_generator_0:pulse_out" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:ODT" "ODT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:REFCLK" "REFCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:REFCLK_N" "REFCLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:RESET_N" "RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SD_CD_EMMC_STRB" "SD_CD_EMMC_STRB" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SD_CLK_EMMC_CLK" "SD_CLK_EMMC_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SD_CMD_EMMC_CMD" "SD_CMD_EMMC_CMD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SD_DATA0_EMMC_DATA0" "SD_DATA0_EMMC_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SD_DATA1_EMMC_DATA1" "SD_DATA1_EMMC_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SD_DATA2_EMMC_DATA2" "SD_DATA2_EMMC_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SD_DATA3_EMMC_DATA3" "SD_DATA3_EMMC_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SD_POW_EMMC_DATA4" "SD_POW_EMMC_DATA4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SD_VOLT_CMD_DIR_EMMC_DATA7" "SD_VOLT_CMD_DIR_EMMC_DATA7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SD_VOLT_DIR_0_EMMC_UNUSED" "SD_VOLT_DIR_0_EMMC_UNUSED" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SD_VOLT_DIR_1_3_EMMC_UNUSED" "SD_VOLT_DIR_1_3_EMMC_UNUSED" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SD_VOLT_EN_EMMC_DATA6" "SD_VOLT_EN_EMMC_DATA6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SD_VOLT_SEL_EMMC_DATA5" "SD_VOLT_SEL_EMMC_DATA5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SD_WP_EMMC_RSTN" "SD_WP_EMMC_RSTN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SGMII_RX0_N" "SGMII_RX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SGMII_RX0_P" "SGMII_RX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SGMII_RX1_N" "SGMII_RX1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SGMII_RX1_P" "SGMII_RX1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SGMII_TX0_N" "SGMII_TX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SGMII_TX0_P" "SGMII_TX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SGMII_TX1_N" "SGMII_TX1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SGMII_TX1_P" "SGMII_TX1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_CLK" "USB_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_DATA0" "USB_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_DATA1" "USB_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_DATA2" "USB_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_DATA3" "USB_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_DATA4" "USB_DATA4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_DATA5" "USB_DATA5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_DATA6" "USB_DATA6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_DATA7" "USB_DATA7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_DIR" "USB_DIR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_NXT" "USB_NXT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_STP" "USB_STP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_DDR4_C0_0:SHIELD0" "SHIELD0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_DDR4_C0_0:SHIELD1" "SHIELD1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_DDR4_C0_0:SHIELD2" "SHIELD2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_DDR4_C0_0:SHIELD3" "SHIELD3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_DDR4_C0_0:SHIELD4" "SHIELD4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_DDR4_C0_0:SHIELD5" "SHIELD5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_DDR4_C0_0:SHIELD6" "SHIELD6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_DDR4_C0_0:SHIELD7" "SHIELD7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"core_vectorblox_C0_0:output_valid" "pulse_generator_0:signal_in" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"A" "PF_DDR4_C0_0:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BA" "PF_DDR4_C0_0:BA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CA" "MSS:CA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM1_RXD" "Video_Pipeline_HDMI_0:CAM1_RXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM1_RXD_N" "Video_Pipeline_HDMI_0:CAM1_RXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DM" "MSS:DM" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQ" "MSS:DQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS" "MSS:DQS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS_N" "MSS:DQS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_DM_N" "PF_DDR4_C0_0:DM_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_DQ" "PF_DDR4_C0_0:DQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_DQS" "PF_DDR4_C0_0:DQS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_DQS_N" "PF_DDR4_C0_0:DQS_N" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_C0_0:AXI4mmaster0" "MSS:FIC_1_AXI4_INITIATOR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_C0_0:AXI4mmaster1" "core_vectorblox_C0_0:M_AXI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_C0_0:AXI4mmaster2" "axi_master_scale_updown_bilinear_top_0:master" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_C0_0:AXI4mmaster3" "axi_master_warpPerspective_top_0:master" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_C0_0:AXI4mmaster4" "draw_assist_0:m_axi" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_C0_0:AXI4mmaster5" "Video_Pipeline_HDMI_0:axi4_red" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_C0_0:AXI4mmaster6" "Video_Pipeline_HDMI_0:axi4_green" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_C0_0:AXI4mmaster7" "Video_Pipeline_HDMI_0:axi4_blue" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_C0_0:AXI4mslave0" "axi_arbiter_0:be" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC0_INITIATOR:AXI4mmaster0" "MSS:FIC_0_AXI4_INITIATOR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC0_INITIATOR:AXI4mslave2" "core_vectorblox_C0_0:S_control" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC0_INITIATOR:AXI4mslave3" "axi_master_scale_updown_bilinear_top_0:axi_s" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC0_INITIATOR:AXI4mslave4" "axi_master_warpPerspective_top_0:axi_s" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC0_INITIATOR:AXI4mslave5" "draw_assist_0:s_axi" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_CONVERTER_0:APBmslave" "Video_Pipeline_HDMI_0:APB_IF" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_CONVERTER_0:FIC3_APB3_master" "MSS:FIC_3_APB_INITIATOR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_DDR4_C0_0:AXI4slave0" "axi_arbiter_0:BIF_3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Video_Pipeline_HDMI_0:ARBITER_MSLAVE_AXI4" "axi_arbiter_0:rt" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the SmartDesign 
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign "VKPFSOC_TOP"
generate_component -component_name ${sd_name}
