`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2022 10:52:18 PM
// Design Name: 
// Module Name: testFlow
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


module testFlow();
    
    reg [15:0] a,b;
    reg [1:0] op;
    wire [15:0] result;
    wire isNaN,isOverFlow;
    
    // ALU
    calculator calINST(
        .result(result),
        .isNaN(isNaN),
        .isOverFlow(isOverFlow),
        .a(a),
        .b(b),
        .op(op)
    );
    
    wire [15:0] bcd;
    wire isMinus;
    
    binaryToBCD btb(
        .bcd(bcd),
        .number(result),
        .isMinus(isMinus)
    );
    
    initial begin
        op = 0;
        
        a = 1;b=1;
        #10;
        
        a=5;b=3;
        #10;
        
        op=3;
        a=6;b=5;
        #10;
        
        $finish;
    end

endmodule
