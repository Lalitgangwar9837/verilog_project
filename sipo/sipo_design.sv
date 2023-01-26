module d_ff (q,clk,d);
input clk,d;
output reg q;
always @(posedge clk)
begin
q <= d;
end

endmodule

module sipo (out,clk,data);
input data;
input clk;
output reg [0:3] out;
wire [0:3] q;

d_ff d1 (q[0],clk,data);
d_ff d2 (q[1],clk,q[0]);
d_ff d3 (q[2],clk,q[1]);
d_ff d4 (q[3],clk,q[2]);

always @(*)
begin
out [0] <= q[0];
out [1] <= q[1];
out [2] <= q[2];
out [3] <= q[3];

end


endmodule
