`include "sipo_design.sv"
module sipo_tetbench;
reg clk,data;
wire [3:0]out;
sipo dut (out,clk,data);
initial
begin
$monitor($time,"clk=%b  data=%b  out=%b",clk,data,out);
clk=1'b0;
data=1;
#2 data=0;
#2 data=1;
#2 data=1;
#2 $finish;
end

always
#1 clk=~clk;

endmodule
