############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_pipeline "dft/dft_label0"
set_directive_pipeline "dft/dft_label2"
set_directive_pipeline "dft/dft_label3"
set_directive_pipeline "dft/dft_labe01"
set_directive_pipeline "dft/dft_label1_1"
set_directive_interface -mode s_axilite "dft" sample_real
set_directive_interface -mode s_axilite "dft" sample_imag
set_directive_interface -mode s_axilite "dft"
set_directive_interface -mode m_axi -depth 256 -offset slave "dft" sample_real_out
set_directive_interface -mode m_axi -depth 256 -offset slave "dft" sample_imag_out
