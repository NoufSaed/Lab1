`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2024 13:41:04
// Design Name: 
// Module Name: full_Adder
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


module full_Adder(input logic a, b, cin, output logic sum, carry);  

  logic sum1, carry1, carry2;
    Half_Adder HA1(a, b, sum1, carry1);
    Half_Adder HA2(sum1, cin, sum, carry2);    or(carry, carry1, carry2);
endmodule
