`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2024 15:43:42
// Design Name: 
// Module Name: adder4bit
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


module adder4bit(
input logic a0,a1,a2,a3,b0,b1,b2,b3,cin,
output logic s0,s1,s2,s3,cout );

  logic c0,c1,c2 ;
  
  full_Adder H1 (a0,b0,cin,s0,c0);
  full_Adder H2 (a1,b1,c0,s1,c1);
  full_Adder H3 (a2,b2,c1,s2,c2);
  full_Adder H4 (a3,b3,c2,s3,cout);
        
endmodule
