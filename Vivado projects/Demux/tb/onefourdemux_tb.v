`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2025 19:25:59
// Design Name: 
// Module Name: onefourdemux_tb
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



module tb_demux_1to4;
reg D;
reg [1:0] S;
wire [3:0] Y;

demux_1to4 uut (.D(D), .S(S), .Y(Y));

initial begin
    $display("Time(ns) | D | S1 S0 | Y3 Y2 Y1 Y0");
    $monitor("%t | %b | %b  %b | %b  %b  %b  %b", 
              $time, D, S[1], S[0], Y[3], Y[2], Y[1], Y[0]);

    D = 1;  
    S = 2'b00; #10;  
    S = 2'b01; #10;  
    S = 2'b10; #10;  
    S = 2'b11; #10;  

    D = 0; #10; 
    $finish;
end

endmodule
