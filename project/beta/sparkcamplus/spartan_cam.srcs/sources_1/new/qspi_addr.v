`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/29 12:12:35
// Design Name: 
// Module Name: qspi_addr
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


module qspi_addr#( 
parameter addr_width = 8 
)( 
    input clk, 
input rst_n, 
//RAM  
output reg [addr_width-1:0] addr, 
input [7:0]data_in, 
output reg [7:0] data_out, 
output reg wen 
); 
//registers & wire 
reg [9:0] count;  
wire [7:0] rcount;//0x00 ~ 0x0f : get the data ; 0x10 ~ 0x1f : output the data to RAM 
assign rcount = count[9:2]; 
//count: counter of clk 
always @(posedge clk,negedge rst_n) 
begin 
    if (!rst_n) 
        count <= 0; 
    else 
        if (rcount < 32) 
            count <= count + 1; 
        else 
            count <= 0; 
end 
//addr: address to RAM, address change while count[1:0] == 2'b00, data store while count[1:0] == 2'b11 
always @(posedge clk,negedge rst_n) 
begin 
    if (!rst_n) 
        addr <= 0; 
    else 
        if (rcount < 32) 
            addr <= rcount; 
        else 
            addr <= 0; 
end 
//mem:  plus 5 while get the data from data_in and store the data in 0x00 ~ 0x0f 
reg [7:0] mem [0:15]; 
integer i; 
always @(posedge clk,negedge rst_n) 
begin 
    if (!rst_n) 
    begin 
        for (i=0;i<15;i=i+1) 
            mem[i] <= 0; 
             end 
    else 
        if ((rcount < 16)&&(count[1:0] == 2'b11)) 
            mem[rcount] <= data_in + 5; 
end 
//data_out: output the data in mem 
always @(posedge clk,negedge rst_n) 
begin 
    if (!rst_n) 
        data_out <= 0; 
    else 
        if (rcount < 32) 
            data_out <= mem[rcount-16]; 
        else 
            data_out <= 0; 
end 
//wen: write enable of RAM 
always @(posedge clk,negedge rst_n) 
begin 
    if (!rst_n) 
    begin 
        wen <= 0; 
    end 
    else 
        if ((rcount >= 16)&&(rcount < 32)) 
            wen <= 1; 
        else 
            wen <= 0; 
end 
endmodule

