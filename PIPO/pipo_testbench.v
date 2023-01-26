`include "pipo_design.v"
module pipo_tetbench;
reg clk;
reg [3:0] data;
wire [3:0] out;
pipo dut (out,clk,data);
initial
begin
$monitor($time,"clk=%b  data=%b  out=%b",clk,data,out);
clk=1'b0;
data=4'b1111;
#2 data=4'b1001;
#2 data=4'b0001;
#2 data=4'b1000;
#2 data=4'b1010;
#2 $finish;
end

always
#1 clk=~clk;

endmodule
