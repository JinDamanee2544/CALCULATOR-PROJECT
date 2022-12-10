`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2022 11:13:13 PM
// Design Name: 
// Module Name: testCalculator
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


module testCalculator;
    reg [15:0] operator, operand;
    reg [1:0] op;
    wire [15:0] result;
    wire isNaN, isOverflow;
    // wire isUnderFlow;
    
    calculator c(
        .a(operator),
        .b(operand),
        .result(result),
        .isNaN(isNaN),
        .isOverFlow(isOverflow),
        //.isUnderFlow(isUnderFlow),
        .op(op)
    );
    
//    always #2 clk = ~clk;
    
    initial begin
        $monitor("time %t | {a=%d b=%d op=%b} -> {result=%d nan=%b overflow=%b}", $time, operator, operand, op, result, isNaN, isOverflow);
        
        operator = 13; operand = 3;
        op = 0;
        #10;
        op = 1;
        #10;
        op = 2;
        #10;
        op = 3;
        
        #10;
        operator = 1; operand = 0;
        op = 3;
        
        #10;
        operator = 9999; operand = 1;
        op = 0;
        
        #10;
        operator = -9999; operand = -1;
        op = 0;
        
        #10;
        operator = 1; operand= 2;
        op = 0;
        
        #10;
        
        operator = -9999; operand= -9999;
        op = 0;
        
        #10
        
        operator = 1; operand= 2;
        op = 0;
        
        #10
        $finish;
    end
endmodule
