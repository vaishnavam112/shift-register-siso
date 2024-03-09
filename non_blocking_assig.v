`timescale 1ns / 1ps
module non_blocking_assig(
    input clk, clear,
    input s_in, 
    output reg [3:0]s_out
    );
    
    //reg [3:0] tmp;

always @(posedge clk )
begin

    if (clear)
        //tmp = 4'b0000;
        s_out=4'b0000;
    else
        //s_out = s_out >> 1;
        s_out[3] <= s_in;
        s_out[2] <= s_out[3];
        s_out[1] <= s_out[2];
        s_out[0] <=s_out[1];
        //s_out = tmp[0];
end
endmodule
    

