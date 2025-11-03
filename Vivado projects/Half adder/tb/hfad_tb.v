`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2025 13:45:29
// Design Name: 
// Module Name: hfad_tb
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



module tb_half_adder;
reg A, B;
wire SUM, CARRY;

half_adder uut (.A(A), .B(B), .SUM(SUM), .CARRY(CARRY));

initial begin
    $monitor("A=%b B=%b => SUM=%b CARRY=%b", A, B, SUM, CARRY);
    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;
    $finish;
end
endmodule
