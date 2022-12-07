`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Compsely: 
// Engineer: 
// 
// Create Date: 09/23/2022 11:11:53 PM
// Design Name: 
// Module Name: clockDiv
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


module clockDiv(
    output reg outCLK,
    input wire inCLK
);

    initial outCLK = 0;

    always @(posedge inCLK ) begin
        outCLK = !outCLK;
    end

endmodule
