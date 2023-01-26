`include "SISO_DESIGN.V"

module siso_testbench;
reg in,clk;
wire out;
siso dut (out,clk,in);
initial
begin
$monitor($time ,"\tclk=%0b  in=%0b  out=%0b  ",clk,in,out);
clk=1'b0;
in=1'b1;
#2 in=1'b0;
#2 in=1'b1;
#2 in=1'b1;

#8 $finish;
end

always 
#1 clk =~clk;
endmodule