`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2024 20:44:41
// Design Name: 
// Module Name: tb_siso
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


module tb_siso();
reg clk,clear,s_in;
wire s_out;

siso uut (.clk(clk), .clear(clear),.s_in(s_in),.s_out(s_out));

initial begin

    clk = 0;
    clear = 0;
    s_in = 0;

    #5 clear=1'b1;
    #5 clear=1'b0;
    #10 s_in=1'b1;

    #10 s_in=1'b0;
    #10 s_in=1'b0;
    #10 s_in=1'b1;
    #10 s_in=1'b0;
    //#10 s_in=1'bx;

end

always #5 clk = ~clk;

initial #150 $stop;

endmodule
