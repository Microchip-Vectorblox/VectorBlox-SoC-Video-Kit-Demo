# Exporting Component Description of core_vectorblox_C0 to TCL
# Family: PolarFireSoC
# Part Number: MPFS250TS-1FCG1152I
# Create and Configure the core component core_vectorblox_C0
create_and_configure_core -core_vlnv {Microchip:SolutionCore:core_vectorblox:3.0.001} -component_name {core_vectorblox_C0} -params {\
"M0_AXI_DATA_WIDTH:256"  \
"M1_AXI_DATA_WIDTH:128"  \
"M_AXI_PORTS:2"  \
"PRESET:3"  \
"SPARSITY:2"   }
# Exporting Component Description of core_vectorblox_C0 to TCL done
