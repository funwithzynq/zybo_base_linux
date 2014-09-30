#
# Vivado (TM) v2014.2 (64-bit)
#
# zybo_base_linux_create.tcl: Tcl script for re-creating project 'zybo_base_linux'
#
# Generated by Vivado on Tue Sep 30 19:39:18 +0200 2014
# IP Build 924643 on Fri May 30 09:20:16 MDT 2014
#
# This file contains the Vivado Tcl commands for re-creating the project to the state*
# when this script was generated. In order to re-create the project, please source this
# file in the Vivado Tcl Shell.
#
# * Note that the runs in the created project will be configured the same way as the
#   original project, however they will not be launched automatically. To regenerate the
#   run results please launch the synthesis/implementation runs as needed.
#
#*****************************************************************************************
# NOTE: In order to use this script for source control purposes, please make sure that the
#       following files are added to the source control system:-
#
# 1. This project restoration tcl script (zybo_base_linux_create.tcl) that was generated.
#
# 2. The following source(s) files that were local or imported into the original project.
#    (Please see the '$orig_proj_dir' and '$origin_dir' variable setting below at the start of the script)
#
#    "C:/Users/phil/Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/system.bd"
#    "C:/Users/phil/Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/hdl/system_wrapper.v"
#    "C:/Users/phil/Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_vdd_1/system_vdd_1.upgrade_log"
#    "C:/Users/phil/Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_processing_system7_0_axi_periph_2/system_processing_system7_0_axi_periph_2.upgrade_log"
#    "C:/Users/phil/Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_SWs_4Bits_2/system_SWs_4Bits_2.upgrade_log"
#    "C:/Users/phil/Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_BTNs_4Bits_0/system_BTNs_4Bits_0.upgrade_log"
#    "C:/Users/phil/Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_LEDs_4Bits_1/system_LEDs_4Bits_1.upgrade_log"
#    "C:/Users/phil/Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_axi_protocol_converter_0_0/system_axi_protocol_converter_0_0.upgrade_log"
#    "C:/Users/phil/Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_xlconstant_0_2/system_xlconstant_0_2.upgrade_log"
#    "C:/Users/phil/Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_axi_mem_intercon_0/system_axi_mem_intercon_0.upgrade_log"
#    "C:/Users/phil/Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.upgrade_log"
#    "C:/Users/phil/Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_axi_vdma_0_0/system_axi_vdma_0_0.upgrade_log"
#    "C:/Users/phil/Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_axi_vdma_1_1/system_axi_vdma_1_1.upgrade_log"
#    "C:/Users/phil/Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_ground_0/system_ground_0.upgrade_log"
#    "C:/Users/phil/Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/constrs_1/new/base.xdc"
#
# 3. The following remote source files that were added to the original project:-
#
#    <none>
#
#*****************************************************************************************

# Set the reference directory for source file relative paths (by default the value is script directory path)
set origin_dir "."

# Set the directory path for the original project from where this script was exported
set orig_proj_dir "[file normalize "$origin_dir/zybo_base_linux"]"

# Create project
create_project zybo_base_linux ./zybo_base_linux

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Set project properties
set obj [get_projects zybo_base_linux]
set_property "board_part" "" $obj
set_property "compxlib.compiled_library_dir" "$proj_dir/zybo_base_linux.cache/compile_simlib" $obj
set_property "compxlib.edk.exclude_sub_libs" "0" $obj
set_property "compxlib.edk.exclude_superseded_cores" "1" $obj
set_property "compxlib.edk.previous_lib_path" "" $obj
set_property "compxlib.edk.source_lib" "" $obj
set_property "compxlib.edklib" "0" $obj
set_property "compxlib.funcsim" "1" $obj
set_property "compxlib.overwrite_libs" "0" $obj
set_property "compxlib.timesim" "1" $obj
set_property "compxlib.xilinxcorelib" "1" $obj
set_property "default_lib" "xil_defaultlib" $obj
set_property "managed_ip" "0" $obj
set_property "part" "xc7z010clg400-1" $obj
set_property "simulator_language" "Mixed" $obj
set_property "source_mgmt_mode" "All" $obj
set_property "target_language" "VHDL" $obj
set_property "target_simulator" "XSim" $obj

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set IP repository paths
set obj [get_filesets sources_1]
set_property "ip_repo_paths" "[file normalize "$origin_dir/lib"]" $obj

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/system.bd"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/hdl/system_wrapper.v"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_vdd_1/system_vdd_1.upgrade_log"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_processing_system7_0_axi_periph_2/system_processing_system7_0_axi_periph_2.upgrade_log"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_SWs_4Bits_2/system_SWs_4Bits_2.upgrade_log"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_BTNs_4Bits_0/system_BTNs_4Bits_0.upgrade_log"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_LEDs_4Bits_1/system_LEDs_4Bits_1.upgrade_log"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_axi_protocol_converter_0_0/system_axi_protocol_converter_0_0.upgrade_log"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_xlconstant_0_2/system_xlconstant_0_2.upgrade_log"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_axi_mem_intercon_0/system_axi_mem_intercon_0.upgrade_log"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.upgrade_log"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_axi_vdma_0_0/system_axi_vdma_0_0.upgrade_log"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_axi_vdma_1_1/system_axi_vdma_1_1.upgrade_log"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_ground_0/system_ground_0.upgrade_log"]"\
]
add_files -norecurse -fileset $obj $files

# Import local files from the original project
set files [list \
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/system.bd"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/hdl/system_wrapper.v"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_vdd_1/system_vdd_1.upgrade_log"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_processing_system7_0_axi_periph_2/system_processing_system7_0_axi_periph_2.upgrade_log"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_SWs_4Bits_2/system_SWs_4Bits_2.upgrade_log"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_BTNs_4Bits_0/system_BTNs_4Bits_0.upgrade_log"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_LEDs_4Bits_1/system_LEDs_4Bits_1.upgrade_log"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_axi_protocol_converter_0_0/system_axi_protocol_converter_0_0.upgrade_log"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_xlconstant_0_2/system_xlconstant_0_2.upgrade_log"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_axi_mem_intercon_0/system_axi_mem_intercon_0.upgrade_log"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.upgrade_log"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_axi_vdma_0_0/system_axi_vdma_0_0.upgrade_log"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_axi_vdma_1_1/system_axi_vdma_1_1.upgrade_log"]"\
 "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_ground_0/system_ground_0.upgrade_log"]"\
]
set imported_files [import_files -fileset sources_1 $files]

# Set 'sources_1' fileset file properties for remote files
# None

# Set 'sources_1' fileset file properties for local files
set file "system/system.bd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "is_enabled" "1" $file_obj
set_property "is_global_include" "0" $file_obj
set_property "is_locked" "0" $file_obj
set_property "library" "xil_defaultlib" $file_obj
set_property "path_mode" "RelativeFirst" $file_obj
set_property "used_in" "synthesis implementation simulation" $file_obj
set_property "used_in_implementation" "1" $file_obj
set_property "used_in_simulation" "1" $file_obj
set_property "used_in_synthesis" "1" $file_obj

set file "hdl/system_wrapper.v"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "Verilog" $file_obj
set_property "is_enabled" "1" $file_obj
set_property "is_global_include" "0" $file_obj
set_property "library" "xil_defaultlib" $file_obj
set_property "path_mode" "RelativeFirst" $file_obj
set_property "used_in" "synthesis implementation simulation" $file_obj
set_property "used_in_implementation" "1" $file_obj
set_property "used_in_simulation" "1" $file_obj
set_property "used_in_synthesis" "1" $file_obj

set file "system_vdd_1/system_vdd_1.upgrade_log"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "IP Update Log" $file_obj
set_property "is_enabled" "1" $file_obj
set_property "is_global_include" "0" $file_obj
set_property "library" "xil_defaultlib" $file_obj
set_property "path_mode" "RelativeFirst" $file_obj
set_property "used_in" "" $file_obj

set file "system_processing_system7_0_axi_periph_2/system_processing_system7_0_axi_periph_2.upgrade_log"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "IP Update Log" $file_obj
set_property "is_enabled" "1" $file_obj
set_property "is_global_include" "0" $file_obj
set_property "library" "xil_defaultlib" $file_obj
set_property "path_mode" "RelativeFirst" $file_obj
set_property "used_in" "" $file_obj

set file "system_SWs_4Bits_2/system_SWs_4Bits_2.upgrade_log"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "IP Update Log" $file_obj
set_property "is_enabled" "1" $file_obj
set_property "is_global_include" "0" $file_obj
set_property "library" "xil_defaultlib" $file_obj
set_property "path_mode" "RelativeFirst" $file_obj
set_property "used_in" "" $file_obj

set file "system_BTNs_4Bits_0/system_BTNs_4Bits_0.upgrade_log"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "IP Update Log" $file_obj
set_property "is_enabled" "1" $file_obj
set_property "is_global_include" "0" $file_obj
set_property "library" "xil_defaultlib" $file_obj
set_property "path_mode" "RelativeFirst" $file_obj
set_property "used_in" "" $file_obj

set file "system_LEDs_4Bits_1/system_LEDs_4Bits_1.upgrade_log"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "IP Update Log" $file_obj
set_property "is_enabled" "1" $file_obj
set_property "is_global_include" "0" $file_obj
set_property "library" "xil_defaultlib" $file_obj
set_property "path_mode" "RelativeFirst" $file_obj
set_property "used_in" "" $file_obj

set file "system_axi_protocol_converter_0_0/system_axi_protocol_converter_0_0.upgrade_log"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "IP Update Log" $file_obj
set_property "is_enabled" "1" $file_obj
set_property "is_global_include" "0" $file_obj
set_property "library" "xil_defaultlib" $file_obj
set_property "path_mode" "RelativeFirst" $file_obj
set_property "used_in" "" $file_obj

set file "system_xlconstant_0_2/system_xlconstant_0_2.upgrade_log"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "IP Update Log" $file_obj
set_property "is_enabled" "1" $file_obj
set_property "is_global_include" "0" $file_obj
set_property "library" "xil_defaultlib" $file_obj
set_property "path_mode" "RelativeFirst" $file_obj
set_property "used_in" "" $file_obj

set file "system_axi_mem_intercon_0/system_axi_mem_intercon_0.upgrade_log"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "IP Update Log" $file_obj
set_property "is_enabled" "1" $file_obj
set_property "is_global_include" "0" $file_obj
set_property "library" "xil_defaultlib" $file_obj
set_property "path_mode" "RelativeFirst" $file_obj
set_property "used_in" "" $file_obj

set file "system_processing_system7_0_0/system_processing_system7_0_0.upgrade_log"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "IP Update Log" $file_obj
set_property "is_enabled" "1" $file_obj
set_property "is_global_include" "0" $file_obj
set_property "library" "xil_defaultlib" $file_obj
set_property "path_mode" "RelativeFirst" $file_obj
set_property "used_in" "" $file_obj

set file "system_axi_vdma_0_0/system_axi_vdma_0_0.upgrade_log"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "IP Update Log" $file_obj
set_property "is_enabled" "1" $file_obj
set_property "is_global_include" "0" $file_obj
set_property "library" "xil_defaultlib" $file_obj
set_property "path_mode" "RelativeFirst" $file_obj
set_property "used_in" "" $file_obj

set file "system_axi_vdma_1_1/system_axi_vdma_1_1.upgrade_log"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "IP Update Log" $file_obj
set_property "is_enabled" "1" $file_obj
set_property "is_global_include" "0" $file_obj
set_property "library" "xil_defaultlib" $file_obj
set_property "path_mode" "RelativeFirst" $file_obj
set_property "used_in" "" $file_obj

set file "system_ground_0/system_ground_0.upgrade_log"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "IP Update Log" $file_obj
set_property "is_enabled" "1" $file_obj
set_property "is_global_include" "0" $file_obj
set_property "library" "xil_defaultlib" $file_obj
set_property "path_mode" "RelativeFirst" $file_obj
set_property "used_in" "" $file_obj


# Set 'sources_1' fileset properties
set obj [get_filesets sources_1]
set_property "design_mode" "RTL" $obj
set_property "edif_extra_search_paths" "" $obj
set_property "generic" "" $obj
set_property "include_dirs" "" $obj
set_property "lib_map_file" "" $obj
set_property "loop_count" "1000" $obj
set_property "name" "sources_1" $obj
set_property "top" "system_wrapper" $obj
set_property "verilog_define" "" $obj
set_property "verilog_uppercase" "0" $obj

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Set 'constrs_1' fileset object
set obj [get_filesets constrs_1]

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/constrs_1/new/base.xdc"]"
set file_imported [import_files -fileset constrs_1 $file]
set file "new/base.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property "file_type" "XDC" $file_obj
set_property "is_enabled" "1" $file_obj
set_property "is_global_include" "0" $file_obj
set_property "library" "xil_defaultlib" $file_obj
set_property "path_mode" "RelativeFirst" $file_obj
set_property "processing_order" "NORMAL" $file_obj
set_property "scoped_to_cells" "" $file_obj
set_property "scoped_to_ref" "" $file_obj
set_property "used_in" "synthesis implementation" $file_obj
set_property "used_in_implementation" "1" $file_obj
set_property "used_in_synthesis" "1" $file_obj

# Set 'constrs_1' fileset properties
set obj [get_filesets constrs_1]
set_property "name" "constrs_1" $obj
set_property "target_constrs_file" "[file normalize "$origin_dir/../../../Documents/vivado/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/constrs_1/new/base.xdc"]" $obj

# Create 'sim_1' fileset (if not found)
if {[string equal [get_filesets -quiet sim_1] ""]} {
  create_fileset -simset sim_1
}

# Set 'sim_1' fileset object
set obj [get_filesets sim_1]
# Empty (no sources present)

# Set 'sim_1' fileset properties
set obj [get_filesets sim_1]
set_property "generic" "" $obj
set_property "include_dirs" "" $obj
set_property "name" "sim_1" $obj
set_property "nl.cell" "" $obj
set_property "nl.incl_unisim_models" "0" $obj
set_property "nl.process_corner" "slow" $obj
set_property "nl.rename_top" "" $obj
set_property "nl.sdf_anno" "1" $obj
set_property "nl.write_all_overrides" "0" $obj
set_property "runtime" "1000ns" $obj
set_property "source_set" "sources_1" $obj
set_property "top" "system_wrapper" $obj
set_property "unit_under_test" "" $obj
set_property "verilog_define" "" $obj
set_property "verilog_uppercase" "0" $obj
set_property "xelab.debug_level" "typical" $obj
set_property "xelab.dll" "0" $obj
set_property "xelab.load_glbl" "1" $obj
set_property "xelab.more_options" "" $obj
set_property "xelab.mt_level" "auto" $obj
set_property "xelab.nosort" "0" $obj
set_property "xelab.rangecheck" "0" $obj
set_property "xelab.relax" "1" $obj
set_property "xelab.sdf_delay" "sdfmax" $obj
set_property "xelab.snapshot" "" $obj
set_property "xelab.unifast" "0" $obj
set_property "xsim.more_options" "" $obj
set_property "xsim.saif" "" $obj
set_property "xsim.tclbatch" "" $obj
set_property "xsim.view" "" $obj
set_property "xsim.wdb" "" $obj

# Create 'synth_1' run (if not found)
if {[string equal [get_runs -quiet synth_1] ""]} {
  create_run -name synth_1 -part xc7z010clg400-1 -flow {Vivado Synthesis 2013} -strategy "Vivado Synthesis Defaults" -constrset constrs_1
} else {
  set_property strategy "Vivado Synthesis Defaults" [get_runs synth_1]
  set_property flow "Vivado Synthesis 2013" [get_runs synth_1]
}
set obj [get_runs synth_1]
set_property "constrset" "constrs_1" $obj
set_property "description" "Vivado Synthesis Defaults" $obj
set_property "flow" "Vivado Synthesis 2013" $obj
set_property "name" "synth_1" $obj
set_property "needs_refresh" "0" $obj
set_property "part" "xc7z010clg400-1" $obj
set_property "srcset" "sources_1" $obj
set_property "strategy" "Vivado Synthesis Defaults" $obj
set_property "incremental_checkpoint" "" $obj
set_property "steps.synth_design.tcl.pre" "" $obj
set_property "steps.synth_design.tcl.post" "" $obj
set_property "steps.synth_design.args.flatten_hierarchy" "rebuilt" $obj
set_property "steps.synth_design.args.gated_clock_conversion" "off" $obj
set_property "steps.synth_design.args.bufg" "12" $obj
set_property "steps.synth_design.args.fanout_limit" "10000" $obj
set_property "steps.synth_design.args.directive" "Default" $obj
set_property "steps.synth_design.args.fsm_extraction" "auto" $obj
set_property "steps.synth_design.args.keep_equivalent_registers" "0" $obj
set_property "steps.synth_design.args.resource_sharing" "auto" $obj
set_property "steps.synth_design.args.control_set_opt_threshold" "4" $obj
set_property "steps.synth_design.args.no_lc" "0" $obj
set_property "steps.synth_design.args.shreg_min_size" "3" $obj
set_property "steps.synth_design.args.max_bram" "-1" $obj
set_property "steps.synth_design.args.max_dsp" "-1" $obj
set_property -name {steps.synth_design.args.more options} -value {} -objects $obj

# set the current synth run
current_run -synthesis [get_runs synth_1]

# Create 'impl_1' run (if not found)
if {[string equal [get_runs -quiet impl_1] ""]} {
  create_run -name impl_1 -part xc7z010clg400-1 -flow {Vivado Implementation 2013} -strategy "Vivado Implementation Defaults" -constrset constrs_1 -parent_run synth_1
} else {
  set_property strategy "Vivado Implementation Defaults" [get_runs impl_1]
  set_property flow "Vivado Implementation 2013" [get_runs impl_1]
}
set obj [get_runs impl_1]
set_property "constrset" "constrs_1" $obj
set_property "description" "Vivado Implementation Defaults" $obj
set_property "flow" "Vivado Implementation 2013" $obj
set_property "name" "impl_1" $obj
set_property "needs_refresh" "0" $obj
set_property "part" "xc7z010clg400-1" $obj
set_property "srcset" "sources_1" $obj
set_property "strategy" "Vivado Implementation Defaults" $obj
set_property "incremental_checkpoint" "" $obj
set_property "steps.opt_design.is_enabled" "1" $obj
set_property "steps.opt_design.tcl.pre" "" $obj
set_property "steps.opt_design.tcl.post" "" $obj
set_property "steps.opt_design.args.verbose" "0" $obj
set_property "steps.opt_design.args.directive" "Default" $obj
set_property -name {steps.opt_design.args.more options} -value {} -objects $obj
set_property "steps.power_opt_design.is_enabled" "0" $obj
set_property "steps.power_opt_design.tcl.pre" "" $obj
set_property "steps.power_opt_design.tcl.post" "" $obj
set_property -name {steps.power_opt_design.args.more options} -value {} -objects $obj
set_property "steps.place_design.tcl.pre" "" $obj
set_property "steps.place_design.tcl.post" "" $obj
set_property "steps.place_design.args.directive" "Default" $obj
set_property -name {steps.place_design.args.more options} -value {} -objects $obj
set_property "steps.post_place_power_opt_design.is_enabled" "0" $obj
set_property "steps.post_place_power_opt_design.tcl.pre" "" $obj
set_property "steps.post_place_power_opt_design.tcl.post" "" $obj
set_property -name {steps.post_place_power_opt_design.args.more options} -value {} -objects $obj
set_property "steps.phys_opt_design.is_enabled" "0" $obj
set_property "steps.phys_opt_design.tcl.pre" "" $obj
set_property "steps.phys_opt_design.tcl.post" "" $obj
set_property "steps.phys_opt_design.args.directive" "Default" $obj
set_property -name {steps.phys_opt_design.args.more options} -value {} -objects $obj
set_property "steps.route_design.tcl.pre" "" $obj
set_property "steps.route_design.tcl.post" "" $obj
set_property "steps.route_design.args.directive" "Default" $obj
set_property -name {steps.route_design.args.more options} -value {} -objects $obj
set_property "steps.write_bitstream.tcl.pre" "" $obj
set_property "steps.write_bitstream.tcl.post" "" $obj
set_property "steps.write_bitstream.args.raw_bitfile" "0" $obj
set_property "steps.write_bitstream.args.mask_file" "0" $obj
set_property "steps.write_bitstream.args.no_binary_bitfile" "0" $obj
set_property "steps.write_bitstream.args.bin_file" "0" $obj
set_property "steps.write_bitstream.args.logic_location_file" "0" $obj
set_property -name {steps.write_bitstream.args.more options} -value {} -objects $obj

# set the current impl run
current_run -implementation [get_runs impl_1]

puts "INFO: Project created:zybo_base_linux"
