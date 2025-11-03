`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2025 13:43:46
// Design Name: 
// Module Name: hfadd
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module half_adder(
    input A,
    input B,
    output SUM,
    output CARRY
);
assign SUM = A ^ B;
assign CARRY = A & B;
endmodule
