`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2025 19:25:27
// Design Name: 
// Module Name: onefourdemux
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


module demux_1to4(
    input D,          
    input [1:0] S,   
    output [3:0] Y    
);

assign Y[0] = D & (~S[1]) & (~S[0]);
assign Y[1] = D & (~S[1]) & ( S[0]);
assign Y[2] = D & ( S[1])  & (~S[0]);
assign Y[3] = D & ( S[1])  & ( S[0]);

endmodule

