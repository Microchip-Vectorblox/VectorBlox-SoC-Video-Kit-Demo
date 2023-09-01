#
# // PFSoC Video Kit VBX HDMI demo Libero design
#
# // Check Libero version and path lenth to verify project can be created
#

if {[string compare [string range [get_libero_version] 0 end-4] "2023.1"]==0} {
	puts "Libero v2023.1 detected."
} else {
	error "Incorrect Libero version. Please use Libero v2023.1 to run these scripts."
}

if { [lindex $tcl_platform(os) 0]  == "Windows" } {
	if {[string length [pwd]] < 90} {
		puts "Project path length ok."
	} else {
		error "Path to project is too long, please reduce the path and try again."
	}
}

#
# // Process arguments
#

if { $::argc > 0 } {
    set i 1
    foreach arg $::argv {
        if {[string match "*:*" $arg]} {
            set temp [split $arg ":"]
            puts "Setting parameter [lindex $temp 0] to [lindex $temp 1]"
            set [lindex $temp 0] "[lindex $temp 1]"
        } else {
            set $arg 1
            puts "set $arg to 1"
        }
        incr i
    }
} else {
    puts "no command line argument passed"
}

#
# // Set required variables and add functions
#

set install_loc [defvar_get -name ACTEL_SW_DIR]
set mss_config_loc "$install_loc/bin64/pfsoc_mss"
set local_dir [pwd]
set src_path ./script_support
set constraint_path ./script_support/constraint
set release_tag "2023.1"

set project_name "VKPFSOC_VECTORBLOX"
set project_dir "$local_dir/$project_name"

source ./script_support/additional_configurations/functions.tcl
#
# // Create Libero project
#
if { [file exists $project_dir/$project_name.prjx] } {
    puts "Open existing project"
    open_project -file $project_dir/$project_name.prjx
} else {
    puts "Creating a new project"
    new_project \
	    -location $project_name \
	    -name $project_name \
	    -project_description {} \
	    -block_mode 0 \
	    -standalone_peripheral_initialization 0 \
	    -instantiate_in_smartdesign 1 \
	    -ondemand_build_dh 1 \
	    -use_relative_path 0 \
	    -linked_files_root_dir_env {} \
	    -hdl {VERILOG} \
	    -family {PolarFireSoC} \
	    -die {MPFS250TS} \
	    -package {FCG1152} \
	    -speed {-1} \
	    -die_voltage {1.0} \
	    -part_range {IND} \
	    -adv_options {IO_DEFT_STD:LVCMOS 1.8V} \
	    -adv_options {RESTRICTPROBEPINS:1} \
	    -adv_options {RESTRICTSPIPINS:0} \
	    -adv_options {SYSTEM_CONTROLLER_SUSPEND_MODE:0} \
	    -adv_options {TEMPR:IND} \
	    -adv_options {VCCI_1.2_VOLTR:IND} \
	    -adv_options {VCCI_1.5_VOLTR:IND} \
	    -adv_options {VCCI_1.8_VOLTR:IND} \
	    -adv_options {VCCI_2.5_VOLTR:IND} \
	    -adv_options {VCCI_3.3_VOLTR:IND} \
	    -adv_options {VOLTR:IND}

    #
    # // Download required cores
    #

    download_core -vlnv {Actel:DirectCore:CoreAPB3:4.2.100} -location {www.microchip-ip.com/repositories/DirectCore}
    download_core -vlnv {Actel:DirectCore:CORERESET_PF:2.3.100} -location {www.microchip-ip.com/repositories/DirectCore}
    download_core -vlnv {Actel:DirectCore:CORERXIODBITALIGN:2.2.100} -location {www.microchip-ip.com/repositories/DirectCore}
    download_core -vlnv {Microsemi:SgCore:PFSOC_INIT_MONITOR:1.0.307} -location {www.microchip-ip.com/repositories/SgCore}
    download_core -vlnv {Actel:SgCore:PF_CCC:2.2.220} -location {www.microchip-ip.com/repositories/SgCore}
    download_core -vlnv {Actel:SgCore:PF_CLK_DIV:1.0.103} -location {www.microchip-ip.com/repositories/SgCore}
    download_core -vlnv {Actel:SystemBuilder:PF_IOD_GENERIC_RX:2.1.109} -location {www.microchip-ip.com/repositories/SgCore}
    download_core -vlnv {Actel:SgCore:PF_OSC:1.0.102} -location {www.microchip-ip.com/repositories/SgCore}
    download_core -vlnv {Actel:SgCore:PF_XCVR_REF_CLK:1.0.103} -location {www.microchip-ip.com/repositories/SgCore}
    download_core -vlnv {Microsemi:SolutionCore:DDR_AXI4_ARBITER_PF:2.1.0} -location {www.microchip-ip.com/repositories/DirectCore}
    download_core -vlnv {Microchip:SolutionCore:core_vectorblox:1.1.15} -location {www.microchip-ip.com/repositories/DirectCore} 
    download_core -vlnv {Microsemi:SolutionCore:Display_Controller:4.5.0} -location {www.microchip-ip.com/repositories/DirectCore} 
    download_core -vlnv {Microchip:SolutionCore:HDMI_RX:5.3.0} -location {www.microchip-ip.com/repositories/DirectCore} 
    download_core -vlnv {Microchip:SolutionCore:HDMI_TX:5.1.0} -location {www.microchip-ip.com/repositories/DirectCore} 
    download_core -vlnv {Actel:SgCore:PF_TX_PLL:2.0.302} -location {www.microchip-ip.com/repositories/SgCore}
    download_core -vlnv {Actel:SystemBuilder:PF_XCVR_ERM:3.1.200} -location {www.microchip-ip.com/repositories/SgCore}
    download_core -vlnv {Actel:SystemBuilder:PF_DDR4:2.5.111} -location {www.microchip-ip.com/repositories/SgCore}
    download_core -vlnv {Actel:DirectCore:COREAXI4INTERCONNECT:2.8.103} -location {www.microchip-ip.com/repositories/DirectCore}


    #
    # // Generate base design
    #
    exec $mss_config_loc -GENERATE -CONFIGURATION_FILE:$src_path/MSS_VIDEO_KIT/MSS_VIDEO_KIT.cfg -OUTPUT_DIR:${src_path}/MSS_VIDEO_KIT
    import_mss_component -file "$src_path/MSS_VIDEO_KIT/MSS_VIDEO_KIT.cxz"


    #This Tcl file sources other Tcl files to build the design(on which recursive export is run) in a bottom-up fashion

    #Sourcing the Tcl file in which all the HDL source files used in the design are imported or linked
    source ${src_path}/hdl_source.tcl
    build_design_hierarchy

    #Sourcing the Tcl files in which HDL+ core definitions are created for HDL modules
    source ${src_path}/components/video_fifo.tcl 
    source ${src_path}/components/apb3_if.tcl
    source ${src_path}/components/ddr_rw_arbiter.tcl
    source ${src_path}/components/axi_master_scale_updown_bilinear_top.tcl 
    source ${src_path}/components/axi_master_warpPerspective_top.tcl 
    source ${src_path}/components/draw_assist.tcl 
    source ${src_path}/components/axi_arbiter.tcl 
    build_design_hierarchy

    #Sourcing the Tcl files for creating individual ${src_path}/components under the top level
    source ${src_path}/components/CORERESET_PF_C0.tcl 

    #HDMI
    source ${src_path}/components/DDR_Read_HDMI_RX.tcl 
    source ${src_path}/components/DDR_Write_HDMI_RX.tcl 
    source ${src_path}/components/Display_Controller_C0.tcl 
    source ${src_path}/components/HDMI_RX_C0.tcl 
    source ${src_path}/components/HDMI_TX_C0.tcl 
    source ${src_path}/components/PF_TX_PLL_C0.tcl 
    source ${src_path}/components/PF_XCVR_ERM_C2.tcl 
    source ${src_path}/components/read_top.tcl 
    source ${src_path}/components/write_top.tcl 
    source ${src_path}/components/Video_arbiter_top.tcl 
    source ${src_path}/components/PF_DDR4_C0.tcl 
    source ${src_path}/components/PF_CCC_C1.tcl
    source ${src_path}/components/Video_Pipeline_HDMI.tcl 

    # CLOCKS
    source ${src_path}/components/PFSOC_INIT_MONITOR_C0.tcl 
    source ${src_path}/components/PF_CCC_C0.tcl
    source ${src_path}/components/PF_CCC_VBX.tcl
    source ${src_path}/components/PF_CLK_DIV_C0.tcl
    source ${src_path}/components/PF_OSC_C0.tcl
    source ${src_path}/components/PF_XCVR_REF_CLK_C0.tcl
    source ${src_path}/components/CLOCKS_AND_RESETS.tcl


    #top level
    source ${src_path}/components/COREAXI4INTERCONNECT_C0.tcl 
    source ${src_path}/components/CoreAPB3_C0.tcl
    source ${src_path}/components/H264/FIC_CONVERTER.tcl
    source ${src_path}/components/FIC0_INITIATOR.tcl
    source ${src_path}/components/core_vectorblox_C0.tcl
    source ${src_path}/components/VKPFSOC_Vectorblox.tcl
    build_design_hierarchy
    set_root -module {VKPFSOC_TOP::work}
    #
    # // Derive timing constraints
    #
    derive_constraints_sdc
    #
    # // Import I/O constraints
    #

    import_files \
	    -convert_EDN_to_HDL 0 \
	    -io_pdc "${constraint_path}/io/VIDEO_KIT_MAC.pdc" \
	    -io_pdc "${constraint_path}/io/VIDEO_KIT_MMUART0.pdc" \
	    -io_pdc "${constraint_path}/io/VIDEO_KIT_MMUART1.pdc" \
	    -io_pdc "${constraint_path}/io/user.pdc" \

    set_as_target -type {io_pdc} -file "${constraint_path}/io/user.pdc"

    #
    # // Import floor planning constraints
    #

    import_files -convert_EDN_to_HDL 0 -fp_pdc "${constraint_path}/fp/user.pdc"
    #
    # // Import timing constraint
    #

    import_files \
	    -convert_EDN_to_HDL 0 \
	    -sdc "${constraint_path}/user.sdc"
    set_as_target -type {sdc} -file "${constraint_path}/user.sdc"    
    #
    # // Associate imported constraints with the design flow
    #
    organize_tool_files -tool {SYNTHESIZE} \
      -file "${project_dir}/constraint/VKPFSOC_TOP_derived_constraints.sdc" \
      -module {VKPFSOC_TOP::work} \
      -input_type {constraint} 
      
    organize_tool_files -tool {PLACEROUTE} \
	-file "${project_dir}/constraint/io/VIDEO_KIT_MAC.pdc" \
	-file "${project_dir}/constraint/io/VIDEO_KIT_MMUART0.pdc" \
	-file "${project_dir}/constraint/io/VIDEO_KIT_MMUART1.pdc" \
	-file "${project_dir}/constraint/io/user.pdc" \
	-file "${project_dir}/constraint/VKPFSOC_TOP_derived_constraints.sdc" \
	-file "${project_dir}/constraint/user.sdc" \
	-file "${project_dir}/constraint/fp/user.pdc" \
	-module {VKPFSOC_TOP::work} \
	-input_type {constraint}

    set_as_target -type {io_pdc} -file "${project_dir}/constraint/io/user.pdc"

    organize_tool_files -tool {VERIFYTIMING} \
	-file "${project_dir}/constraint/VKPFSOC_TOP_derived_constraints.sdc" \
	-file "${project_dir}/constraint/user.sdc" \
	-module {VKPFSOC_TOP::work} \
	-input_type {constraint}

    save_project 

}; # // Create project

#
# // Run the design flow and add eNVM clients 
#

set LIBERO_INSTALL_DIR [file dirname [file dirname [file dirname [lindex $auto_path 0]]]]
catch {remove_profile -name synpro} 
add_profile -name synpro -type synthesis -tool "Synplify Pro ME" -location "$LIBERO_INSTALL_DIR/SynplifyPro/bin/synplify_pro" 
select_profile -name synpro

if {[info exists SYNTHESIZE]} {
    run_tool -name {SYNTHESIZE}
} 

configure_tool -name {VERIFYTIMING} \
    -params {CONSTRAINTS_COVERAGE:1} \
    -params {FORMAT:XML} \
    -params {MAX_EXPANDED_PATHS_TIMING:1} \
    -params {MAX_EXPANDED_PATHS_VIOLATION:0} \
    -params {MAX_PARALLEL_PATHS_TIMING:1} \
    -params {MAX_PARALLEL_PATHS_VIOLATION:1} \
    -params {MAX_PATHS_INTERACTIVE_REPORT:1} \
    -params {MAX_PATHS_TIMING:5} \
    -params {MAX_PATHS_VIOLATION:20} \
    -params {MAX_TIMING_FAST_HV_LT:1} \
    -params {MAX_TIMING_MULTI_CORNER:1} \
    -params {MAX_TIMING_SLOW_LV_HT:1} \
    -params {MAX_TIMING_SLOW_LV_LT:1} \
    -params {MAX_TIMING_VIOLATIONS_FAST_HV_LT:1} \
    -params {MAX_TIMING_VIOLATIONS_MULTI_CORNER:1} \
    -params {MAX_TIMING_VIOLATIONS_SLOW_LV_HT:1} \
    -params {MAX_TIMING_VIOLATIONS_SLOW_LV_LT:1} \
    -params {MIN_TIMING_FAST_HV_LT:1} \
    -params {MIN_TIMING_MULTI_CORNER:1} \
    -params {MIN_TIMING_SLOW_LV_HT:1} \
    -params {MIN_TIMING_SLOW_LV_LT:1} \
    -params {MIN_TIMING_VIOLATIONS_FAST_HV_LT:1} \
    -params {MIN_TIMING_VIOLATIONS_MULTI_CORNER:1} \
    -params {MIN_TIMING_VIOLATIONS_SLOW_LV_HT:1} \
    -params {MIN_TIMING_VIOLATIONS_SLOW_LV_LT:1} \
    -params {SLACK_THRESHOLD_VIOLATION:0.0} \
    -params {SMART_INTERACTIVE:1} 

configure_tool -name {PLACEROUTE} \
    -params {DELAY_ANALYSIS:MAX} \
    -params {EFFORT_LEVEL:true} \
    -params {GB_DEMOTION:true} \
    -params {INCRPLACEANDROUTE:false} \
    -params {IOREG_COMBINING:true} \
    -params {MULTI_PASS_CRITERIA:VIOLATIONS} \
    -params {MULTI_PASS_LAYOUT:false} \
    -params {NUM_MULTI_PASSES:5} \
    -params {PDPR:false} \
    -params {RANDOM_SEED:0} \
    -params {REPAIR_MIN_DELAY:true} \
    -params {REPLICATION:true} \
    -params {SLACK_CRITERIA:WORST_SLACK} \
    -params {SPECIFIC_CLOCK:} \
    -params {START_SEED_INDEX:1} \
    -params {STOP_ON_FIRST_PASS:false} \
    -params {TDPR:true} 

if {[info exists PLACEROUTE]} {
    run_tool -name {PLACEROUTE}
} elseif {[info exists VERIFY_TIMING]} {
    run_tool -name {VERIFYTIMING}
}

if {[info exists HSS_UPDATE]} {
  if !{[file exists "./script_support/hss-envm-wrapper.mpfs-video-kit.hex"]} {
      if {[catch    {exec wget https://github.com/polarfire-soc/hart-software-services/releases/download/v2023.02.1/hss-envm-wrapper.mpfs-video-kit.hex -P ./script_support/} issue]} {
	  
      }
     }
  
  create_eNVM_config "$local_dir/script_support/MSS_VIDEO_KIT/ENVM.cfg" "../script_support/hss-envm-wrapper.mpfs-video-kit.hex"
  run_tool -name {GENERATEPROGRAMMINGDATA}
  configure_envm -cfg_file {script_support/MSS_VIDEO_KIT/ENVM.cfg}
} elseif {[info exists GENERATE_PROGRAMMING_DATA]} {
    run_tool -name {GENERATEPROGRAMMINGDATA} 
} 

if {[info exists EXPORT_FPE]} {   
    if {[info exists HSS_UPDATE]} {
        if {$EXPORT_FPE == 1} {
            export_fpe_job $project_name $local_dir "ENVM FABRIC SNVM"
        } else {
            export_fpe_job $project_name $EXPORT_FPE "ENVM FABRIC SNVM"
        }
    } else {
        if {$EXPORT_FPE == 1} {
            export_fpe_job $project_name $local_dir "FABRIC SNVM"
        } else {
            export_fpe_job $project_name $EXPORT_FPE "FABRIC SNVM"
        }
    }
}

save_project
