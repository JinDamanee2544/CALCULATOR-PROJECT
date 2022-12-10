`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AMD Copycat
// Engineer: 
// 
// Create Date: 12/07/2022 11:32:06 AM
// Design Name: 
// Module Name: calculator
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


module calculator(
    output reg [15:0] result,
    output reg isNaN,
    output reg isOverFlow,
    output reg isUnderFlow,
    input [1:0] op,
    input [15:0] a,
    input [15:0] b,
    input enter
);
    initial begin
        result = 0;
        isOverFlow = 0;
        isUnderFlow = 0;
        isNaN = 0;
    end
    
    always@(posedge enter) begin
        result = 0;
        isOverFlow = 0;
        isUnderFlow = 0;
        isNaN = 0;
        
        case(op)
            2'b00: result = a+b;
            2'b01: result = a-b;
            2'b10: result = a*b;
            2'b11: begin 
                if(b!=0)begin
                    result = a/b;    
                end
                else isNaN = 1;
            end
        endcase
        
        if(result>9999) isOverFlow=1;
        if(result<-9999) isUnderFlow=1;
    end
endmodule