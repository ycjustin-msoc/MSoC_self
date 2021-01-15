############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_cholesky_inverse
set_top cholesky_inverse_top
add_files cholesky_inverse.cpp
add_files -tb cholesky_inverse_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution2"
set_part {xc7k160tfbg484-1}
create_clock -period 4 -name default
source "./proj_cholesky_inverse/solution2/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
