`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2022 02:13:54 AM
// Design Name: 
// Module Name: testFont
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


module testFont(
        output reg [49:0] line,
        output reg bit
    );
//    always #2 clk = ~clk;
    
    reg [16-1:0] x,y;
    
    reg [50-1:0] romFont [1300-1:0];
    initial begin
        $readmemb("font.mem",romFont);
        #10;
        line = romFont[382-1];
        bit = romFont[382-1][100];
    end 
    
endmodule
