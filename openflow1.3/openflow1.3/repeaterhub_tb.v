`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:10:19 10/31/2016
// Design Name:   repeaterhub
// Module Name:   /home/shimizu/research/openflow1.3/openflow1.3/repeaterhub_tb.v
// Project Name:  openflow1.3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: repeaterhub
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module repeaterhub_tb;

	// Inputs
	reg [3:0] rgmii_rxd_1;
	reg rgmii_rxc_1;
	reg rgmii_rx_ctl_1;

	// Outputs
	wire [3:0] rgmii_txd_1;
	wire rgmii_txc_1;
	wire rgmii_tx_ctl_1;

	// Instantiate the Unit Under Test (UUT)
	repeaterhub uut (
		.rgmii_rxd_1(rgmii_rxd_1), 
		.rgmii_rxc_1(rgmii_rxc_1), 
		.rgmii_rx_ctl_1(rgmii_rx_ctl_1), 
		.rgmii_txd_1(rgmii_txd_1), 
		.rgmii_txc_1(rgmii_txc_1), 
		.rgmii_tx_ctl_1(rgmii_tx_ctl_1)
	);

	initial begin
		// Initialize Inputs
		rgmii_rxd_1 = 0;
		rgmii_rxc_1 = 0;
		rgmii_rx_ctl_1 = 0;

		// Wait 100 ns for global reset to finish
		//#100; rgmii_rxd_1=4'b0000;
		#100; rgmii_rxd_1=4'b0001;
		#100; rgmii_rxd_1=4'b0010;
		#100; rgmii_rxd_1=4'b0011;
		#100; rgmii_rxd_1=4'b0100;
		#100; rgmii_rxd_1=4'b0101;
		#100; rgmii_rxd_1=4'b0110;
		#100; rgmii_rxd_1=4'b0111;
		#100; rgmii_rxd_1=4'b1000;
		#100; rgmii_rxd_1=4'b1001;
		#100; rgmii_rxd_1=4'b1010;
		#100; rgmii_rxd_1=4'b1011;
		#100; rgmii_rxd_1=4'b1100;
		#100; rgmii_rxd_1=4'b1101;
		#100; rgmii_rxd_1=4'b1110;
		#100; rgmii_rxd_1=4'b1111;
        
		// Add stimulus here

	end
      
endmodule

