`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: nunber_show
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


module munber_show(
    input clk,
    input [3:0] num,
    output reg led1,
    output reg led2
    );
    
    always@(posedge clk) begin
        led1 <= num[0];
        led2 <= num[1];
        end

/*
wire [11:0] percent;
assign percent = 100*(num[3:2]); 
reg [10:0] cnt = 0; 
   always@(posedge clk) begin
        if(cnt == 1000) cnt<=0;
        else cnt <= cnt+1;end
*/

/* 翻来覆去这里就是过不了实现......干脆注释掉算了 */   
/*    always@(posedge clk) begin
        if(cnt <=percent)
            rgb <= 1;
        else
            rgb <= 0;
        end 
*/

endmodule
