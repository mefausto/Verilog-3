`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:42:00 11/13/2015 
// Design Name: 
// Module Name:    e3s3 
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
module e3s3(j,k,clk,reset,q,qb
    );
	output q,qb;
	reg q,qb;
	input j,k,clk,reset;
	wire j,k,clk,reset;
	

	always @ (posedge (clk)) begin
		if (reset) begin
			q <= 0;
			qb <= 1;
		end
	else begin
		if (j!=k) begin
			q <= j;
			qb <= k;
		end
  else if (j==1 && k==1) begin
			q <= ~q;
			qb <= ~qb;
			end
		end
	end
 

endmodule


