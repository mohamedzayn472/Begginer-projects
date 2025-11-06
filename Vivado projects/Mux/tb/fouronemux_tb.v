`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2025 19:09:07
// Design Name: 
// Module Name: fouronemux_tb
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

module tb_mux_4to1;

reg [3:0] I;
reg [1:0] S;
wire Y;
mux_4to1 uut (.I(I), .S(S), .Y(Y));

initial begin
    $display("S  | I3 I2 I1 I0 | Y");
    $monitor("%b | %b  %b  %b  %b | %b", S, I[3], I[2], I[1], I[0], Y);

    I = 4'b1010;  
    
    S = 2'b00; #10; 
    S = 2'b01; #10; 
    S = 2'b10; #10; 
    S = 2'b11; #10; 

    $finish;
end

endmodule

