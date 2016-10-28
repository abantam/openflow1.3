`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:13:46 10/28/2016 
// Design Name: 
// Module Name:    repeaterhub 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module repeaterhub(
	input  [3:0] rgmii_rxd_1,
	input        rgmii_rxc_1,
	input        rgmii_rx_ctl_1,
	output [3:0] rgmii_txd_1,
	output       rgmii_txc_1,
	output       rgmii_tx_ctl_1
    );
	 
	 reg [3:0] data1;
	 
	 always @(posedge rgmii_rxc_1) begin
		data1 <= rgmii_rxd_1;
	 end
	 
	 assign rgmii_txd_1 = data1;


endmodule
