`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2024 13:01:20
// Design Name: 
// Module Name: tb_and4gate
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

module tb_and4gate;
 
    logic a, b, c, d, f;

    and4gate dut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .f(f)
    );
    initial begin
       
        $display("a b c d | f");
        $monitor("%b %b %b %b | %b", a, b, c, d, f);

    a = 0; b = 0; c = 0; d = 0; #10;
    a = 0; b = 0; c = 0; d = 1; #10;
    a = 0; b = 0; c = 1; d = 0; #10;
    a = 0; b = 0; c = 1; d = 1; #10;
    a = 0; b = 1; c = 0; d = 0; #10;
    a = 0; b = 1; c = 0; d = 1; #10;
    a = 0; b = 1; c = 1; d = 0; #10;
    a = 0; b = 1; c = 1; d = 1; #10;
    a = 1; b = 0; c = 0; d = 0; #10;
    a = 1; b = 0; c = 0; d = 1; #10;
    a = 1; b = 0; c = 1; d = 0; #10;
    a = 1; b = 0; c = 1; d = 1; #10;
    a = 1; b = 1; c = 0; d = 0; #10;
    a = 1; b = 1; c = 0; d = 1; #10;
    a = 1; b = 1; c = 1; d = 0; #10;
    a = 1; b = 1; c = 1; d = 1; #10;

$finish;
   end
endmodule
