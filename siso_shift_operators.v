`timescale 1ns / 1ps

module siso_shift_operators(clk,clear,s_in,s_out);
input clk,s_in,clear;
output s_out;

reg [3:0] tmp;

always @(posedge clk )
begin

    if (clear)
        tmp <= 4'b0000;
    else
        tmp <= tmp << 1;
        tmp[0] <= s_in;
        assign s_out = tmp[3];
end
endmodule
