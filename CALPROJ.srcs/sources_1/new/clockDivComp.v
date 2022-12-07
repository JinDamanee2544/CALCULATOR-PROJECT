`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2022 11:19:31 AM
// Design Name: 
// Module Name: clockDivComp
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


module clockDivComp(
        output divCLK,
        input clk
    );
    parameter TIMES = 19;
    
    wire [TIMES-1:0] mCLK;

    assign mCLK[0] = clk;
    genvar c;
    generate for(c=0;c<TIMES-1;c=c+1)
        begin
            clockDiv middleCLK(mCLK[c+1],mCLK[c]); // (out,in) 18 - 0
        end
    endgenerate

    clockDiv lastCLK(divCLK,mCLK[TIMES-1]);
endmodule
