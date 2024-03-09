`timescale 1ns / 1ps

module tb_shift_reg_using_dff();

reg clk,b,rst;
wire q;

shift_reg_using_dff uut(.clk(clk),.b(b),.q(q),.rst(rst));

initial
begin
clk=1'b0;
forever #5clk=~clk;
end

initial
begin
$monitor("clk=%0b,b=%0b,q=%0b",clk,b,q);
end

initial
begin
rst=1;
b=0;
#10
rst=0;
b=1;
#10;
b=0;
#4;
b=1;
#5;
b=0;
#3
b=1;
#4
b=0;
#6
b=1;

$finish;

end
endmodule