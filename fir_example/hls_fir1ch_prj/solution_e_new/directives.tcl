############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_array_partition -type complete -dim 1 "fir_filter" shift_reg
set_directive_pipeline "fir_filter/Shift_Accum_Loop"
set_directive_unroll "fir_filter/Shift_Accum_Loop"
set_directive_array_partition -type complete -dim 1 "fir_filter" c
