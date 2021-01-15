############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_fir1ch_prj
set_top fir_filter
add_files fir.cpp
add_files -tb data -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb fir_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution_e_new"
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
source "./hls_fir1ch_prj/solution_e_new/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
