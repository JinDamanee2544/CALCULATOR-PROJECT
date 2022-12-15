`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2022 08:42:21 PM
// Design Name: 
// Module Name: binaryToBCD
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


module binaryToBCD(
        output reg [15:0] bcd,
        output reg isMinus,
        input [15:0] number
        
   );
    
   reg [15:0] bcdMEM [9999:0]; // mapping int to bcd
   
   initial begin
        bcd = 0;
        isMinus = 0;
        $readmemb("BCD.mem",bcdMEM);
   end 
   
   always@(number)begin
        isMinus=0;
        if(number[15]==0) begin
            bcd = bcdMEM[number];
        end
        else begin 
            bcd = bcdMEM[-number];
            isMinus = 1;
        end
   end
   
endmodule
