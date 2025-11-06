`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2025 18:59:41
// Design Name: 
// Module Name: fouronemux
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


module mux_4to1(
    input [3:0] I,    
    input [1:0] S,      
    output Y             
);

assign Y = (S == 2'b00) ? I[0] :
           (S == 2'b01) ? I[1] :
           (S == 2'b10) ? I[2] :
                          I[3];

endmodule

