`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:23:49 11/13/2015
// Design Name:   e3s3
// Module Name:   C:/Workspace/e3_s3/tb_e3s3.v
// Project Name:  e3_s3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: e3s3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_e3s3;

	// Inputs
	reg j;
	reg k;
	reg clk;
	reg reset;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	e3s3 uut (
		.j(j), 
		.k(k), 
		.clk(clk), 
		.reset(reset), 
		.q(q), 
		.qb(qb)
	);

	initial begin
	$monitor("J = %b K = %b Clock = %b Reset = %b Q = %b Q/= %b" , j , k, clk ,reset,q,qb);
  
		j = 1;
		k = 0;
		clk = 1;
		reset = 0; 
		
		
			#5 j=0;
			#5 k=1;
			#5 k=0;
			#5 k=1; j=1;
			#10 $finish;
        
  // Add stimulus here
 
	end
		always begin 
			#5 clk=~clk;
		end	
endmodule

