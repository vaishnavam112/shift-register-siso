`timescale 1ns / 1ps

module shift_reg_using_dff(
    input clk,b,rst,
    output q
    );
wire w1,w2,w3;


d_ff dut1(.clk(clk),.d(b),.q(w1),.rst(rst));
d_ff dut2(.clk(clk),.d(w1),.q(w2),.rst(rst));
d_ff dut3(.clk(clk),.d(w2),.q(w3),.rst(rst));
d_ff dut4(.clk(clk),.d(w3),.q(q),.rst(rst));

endmodule

