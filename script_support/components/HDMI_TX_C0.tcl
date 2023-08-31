# Exporting Component Description of HDMI_TX_C0 to TCL
# Family: PolarFireSoC
# Part Number: MPFS250T_ES-1FCG1152E
# Create and Configure the core component HDMI_TX_C0
create_and_configure_core -core_vlnv {Microchip:SolutionCore:HDMI_TX:5.1.0} -component_name {HDMI_TX_C0} -params {\
"g_AUX_CHANNEL_ENABLE:0"  \
"G_FORMAT:0"  \
"g_PIXELS_PER_CLK:1"   }
# Exporting Component Description of HDMI_TX_C0 to TCL done
