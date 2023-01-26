module d_ff(q,clk,d);
input d,clk;
output reg q;
always @(posedge clk)
begin
q<=d;
end
endmodule

module siso (out,clk,in);
input in,clk;
output out;

d_ff d1 (q0,clk,in);
d_ff d2 (q1,clk,q0);
d_ff d3 (q2,clk,q1);
d_ff d4 (out,clk,q2);


endmodule 

