`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2022 09:19:25 PM
// Design Name: 
// Module Name: testBCD
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


module testBCD();

    wire [15:0] bcd;
    reg [15:0] number;
    wire isMinus;
    
    binaryToBCD btb(
        .bcd(bcd),
        .number(number),
        .isMinus(isMinus)
    );
    
    initial begin
        $monitor("time : %t | number : %b | bcd : %b",$time,number,bcd);
        number = 12;
        #10;
        
        number = -12;
        #10;
        
        number = 1;
        #10;
        
        number = 1000;
        #10;
        
        number = 30;
        #10
        
        $finish;
    end
endmodule
