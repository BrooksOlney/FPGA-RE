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
    input wire [5:0] op,
    output wire lutOut
    );
    
    wire [7:0] ADDR;
    wire [9:0] weights;
    
    assign ADDR = {8{lutOut}};
     weights_rom #( .N(10), .Q(8)) rom (clk, {op,op[1:0]}, weights);
    LUT6 U4 (.O(lutOut), .I0(weights[0]), .I1(weights[1]), .I2(weights[2]), .I3(weights[3]), .I4(weights[4]), .I5(weights[5]));
//LUT6 U4 (.O(lutOut), .I0(op[0]), .I1(op[1]), .I2(op[2]), .I3(op[3]), .I4(op[4]), .I5(op[5]));
//    defparam U4.INIT = 64'hC0FFEEC0FFEE1337;
//    defparam U4.INIT = 64'h77ff03ecc877ff03;
    defparam U4.INIT = 64'h8800fc13378800fc;
    
    
endmodule
