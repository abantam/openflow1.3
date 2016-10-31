#!/bin/sh
mkdir work

echo "Compiling Tri-Mode Ethernet MAC Core Simulation Models"
ncvlog -work work ../../../ethernet.v

echo "Compiling Example Design"
ncvlog -work work \
../../example_design/fifo/ethernet_tx_client_fifo.v \
../../example_design/fifo/ethernet_rx_client_fifo.v \
../../example_design/fifo/ethernet_ten_100_1g_eth_fifo.v \
../../example_design/common/ethernet_reset_sync.v \
../../example_design/common/ethernet_sync_block.v \
../../example_design/pat_gen/ethernet_address_swap.v \
../../example_design/pat_gen/ethernet_axi_mux.v \
../../example_design/pat_gen/ethernet_axi_pat_gen.v \
../../example_design/pat_gen/ethernet_axi_pat_check.v \
../../example_design/pat_gen/ethernet_axi_pipe.v \
../../example_design/pat_gen/ethernet_basic_pat_gen.v \
../../example_design/physical/ethernet_rgmii_v2_0_if.v \
../../example_design/statistics/ethernet_vector_decode.v \
../../example_design/axi_lite/ethernet_axi_lite_sm.v \
../../example_design/axi_ipif/ethernet_counter_f.v \
../../example_design/axi_ipif/ethernet_pselect_f.v \
../../example_design/axi_ipif/ethernet_address_decoder.v \
../../example_design/axi_ipif/ethernet_slave_attachment.v \
../../example_design/axi_ipif/ethernet_axi_lite_ipif.v \
../../example_design/axi_ipif/ethernet_axi4_lite_ipif_wrapper.v \
../../example_design/ethernet_clk_wiz.v \
../../example_design/ethernet_block.v \
../../example_design/ethernet_fifo_block.v \
../../example_design/ethernet_example_design.v

echo "Compiling Test Bench"
ncvlog -work work ../ethernet_frame_typ.v
ncvlog -work work ../demo_tb.v

echo "Elaborating design"
ncelab -access +rw work.demo_tb glbl

echo "Starting simulation"
ncsim -gui -input @"simvision -input wave_ncsim.sv" work.demo_tb
