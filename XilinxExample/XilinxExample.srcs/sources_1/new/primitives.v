`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2022 05:53:25 PM
// Design Name: 
// Module Name: primitives
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


module primitives(
    input wire clk,
    input wire [3:0] op,
    output wire lutOut
    );
    
    
    LUT4 U4 (.O(lutOut), .I0(op[0]), .I1(op[1]), .I2(op[2]), .I3(op[3]));
    defparam U4.INIT = 16'hFACC;
    
endmodule
