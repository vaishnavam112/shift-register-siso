`timescale 1ns / 1ps
module siso(clk,clear,s_in,s_out);
input clk,s_in,clear;
output reg s_out;

reg [3:0] tmp;

always @(posedge clk )
begin
    if (clear)
        tmp <= 4'b0000;
    else
        tmp <= tmp >> 1;
        tmp[3] <= s_in;
        s_out = tmp[0];
end
endmodule