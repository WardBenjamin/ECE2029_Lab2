`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2018 11:06:01 AM
// Design Name: 
// Module Name: hex2seg
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


module hex2seg(
    input A,
    input B,
    input C,
    input D,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    output an0,
    output an1,
    output an2,
    output an3
    );
assign an0 = 0;
assign an1 = 1;
assign an2 = 1;
assign an3 = 1;
assign a = ((~A)&B&(~C)&(~D)) | ((~A)&(~B)&(~C)&D) | (A&B&(~C)&D) | (A&(~B)&C&D);
assign b = (A&C&D) | (B&C&(~D)) | ((~A)&B&(~C)&D) | (A&B&(~D));
assign c = ((~A)&(~B)&C&(~D)) | (A&B&(~D)) | (A&B&C);
assign d = ((~A)&B&(~C)&(~D)) | ((~B)&(~C)&D) | (B&C&D) | (A&(~B)&C&(~D));
assign e = ((~A)&D) | ((~A)&B&(~C)) | ((~B)&(~C)&D);
assign f = ((~A)&(~B)&D) | ((~A)&(~B)&C) | ((~A)&C&D) | (A&B&(~C)&D);
assign g = ((~A)&(~B)&(~C)) | ((~A)&B&C&D) | (A&B&(~C)&(~D));
endmodule
