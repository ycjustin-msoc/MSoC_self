############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_memory_porting_and_ii
set_top matrixmul
add_files matrixmul.cpp
add_files -tb matrixmul_test.cpp -cflags "-DHW_COSIM"
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 100MHz -name default
config_sdx -optimization_level none -target none
config_export -vivado_optimization_level 2
source "./proj_memory_porting_and_ii/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
