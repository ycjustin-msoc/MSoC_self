############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_pipeline "matrixmul/J_LOOP"
set_directive_array_partition -type complete -dim 1 "matrixmul" a
set_directive_array_partition -type complete -dim 1 "matrixmul" b
set_directive_pipeline "matrixmul/K_LOOP"
set_directive_unroll "matrixmul/K_LOOP"
set_directive_unroll "matrixmul/J_LOOP"
set_directive_array_partition -type complete -dim 1 "matrixmul" res
set_directive_pipeline "matrixmul/I_LOOP"
set_directive_unroll "matrixmul/I_LOOP"
set_directive_pipeline "matrixmul"
