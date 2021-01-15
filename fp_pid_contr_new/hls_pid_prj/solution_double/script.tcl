############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_pid_prj
set_top PID_Controller
add_files C/xapp_pid.cpp -cflags "-DPID_DEBUG"
add_files -tb C/test_xapp_pid.cpp -cflags "-DPID_DEBUG -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb C/test_data -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution_double"
set_part {xc7z020clg484-1}
create_clock -period 8 -name default
config_interface -clock_enable   -m_axi_offset off -register_io off 
config_sdx -optimization_level none -target none
source "./hls_pid_prj/solution_double/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
