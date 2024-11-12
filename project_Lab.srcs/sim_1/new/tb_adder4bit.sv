`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2024 17:16:21
// Design Name: 
// Module Name: tb_adder4bit
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


module tb_adder4bit;

  logic a0, a1, a2, a3;
  logic b0, b1, b2, b3;
  logic cin;
  logic s0, s1, s2, s3;
  logic cout;

  adder4bit dut (
    .a0(a0), .a1(a1), .a2(a2), .a3(a3),
    .b0(b0), .b1(b1), .b2(b2), .b3(b3),
    .cin(cin),
    .s0(s0), .s1(s1), .s2(s2), .s3(s3),
    .cout(cout)
  );

  initial begin
    $display("Time=%0t | A=%b%b%b%b | B=%b%b%b%b | Cin=%b || Sum=%b%b%b%b | Cout=%b", 
             $time, a3, a2, a1, a0, b3, b2, b1, b0, cin, s3, s2, s1, s0, cout);
    $monitor("Time=%0t | A=%b%b%b%b | B=%b%b%b%b | Cin=%b || Sum=%b%b%b%b | Cout=%b", 
             $time, a3, a2, a1, a0, b3, b2, b1, b0, cin, s3, s2, s1, s0, cout);
    
    a0 = 0; a1 = 0; a2 = 0; a3 = 0;
    b0 = 0; b1 = 0; b2 = 0; b3 = 0;
    cin = 0;
    #10;

    a0 = 1; a1 = 0; a2 = 0; a3 = 0;
    b0 = 1; b1 = 0; b2 = 0; b3 = 0;
    cin = 0;
    #10;

    a0 = 1; a1 = 0; a2 = 1; a3 = 0; 
    b0 = 1; b1 = 1; b2 = 1; b3 = 0;
    cin = 0;
    #10;

    a0 = 1; a1 = 1; a2 = 1; a3 = 1; 
    b0 = 0; b1 = 0; b2 = 0; b3 = 1; 
    cin = 1;
    #10;

    a0 = 0; a1 = 1; a2 = 0; a3 = 1;
    b0 = 1; b1 = 0; b2 = 1; b3 = 0;
    cin = 0;
    #10;

    $finish;
  end

endmodule
