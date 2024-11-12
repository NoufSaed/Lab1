`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2024 12:55:32
// Design Name: 
// Module Name: and4gate
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
module and4gate(
    input logic a,
    input logic b,
    input logic c,
    input logic d,
    output logic f
);
    logic w1, w2;

    // Using built-in AND gate primitives
    and (w1, a, b);
    and (w2, c, d);
    and (f, w1, w2);

endmodule

