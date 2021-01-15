############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_interface -mode ap_ctrl_hs "PID_Controller"
set_directive_interface -mode ap_none "PID_Controller" dout
set_directive_interface -mode ap_none "PID_Controller" test_yi
set_directive_interface -mode ap_none "PID_Controller" test_yd
set_directive_pipeline -enable_flush "PID_Controller"
set_directive_array_partition -type complete -dim 1 "PID_Controller" coeff
set_directive_array_partition -type complete -dim 1 "PID_Controller" din
set_directive_array_partition -type complete -dim 1 "PID_Controller" dout
set_directive_dependence -type inter -dependent false "PID_Controller"
