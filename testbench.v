`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:09:11 10/07/2024
// Design Name:   mainblock
// Module Name:   /home/ise/Donghoso/testbench.v
// Project Name:  Donghoso
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mainblock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg clk_50M;
	reg reset;

	// Outputs
	wire dio;
	wire sclk;
	wire stb;
	wire [7:0] data_check;
	wire [3:0] sec_chuc;
	wire [3:0] sec_dv;
	wire [3:0] min_chuc;
	wire [3:0] min_dv;
	wire [3:0] hour_chuc;
	wire [3:0] hour_dv;

	// Instantiate the Unit Under Test (UUT)
	mainblock uut (
		.clk_50M(clk_50M), 
		.reset(reset), 
		.dio(dio), 
		.sclk(sclk), 
		.stb(stb), 
		.data_check(data_check), 
		.sec_chuc(sec_chuc), 
		.sec_dv(sec_dv), 
		.min_chuc(min_chuc), 
		.min_dv(min_dv), 
		.hour_chuc(hour_chuc), 
		.hour_dv(hour_dv)
	);

	initial begin
		// Initialize Inputs
		clk_50M = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		forever #10 clk_50M = ~clk_50M;
        
		// Add stimulus here

	end
      
endmodule

