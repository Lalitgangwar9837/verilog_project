
module d_ff (q,clk,d);
input clk,d;
output reg q;
always @(posedge clk)
begin
q <= d;
end


always @(negedge clk)
begin
q <= q;
end

endmodule

module pipo (out,clk,data);
input [3:0] data;
input clk;
output reg [0:3] out;
wire [0:3] q;


d_ff d1 (q[0],clk,data[0]);
d_ff d2 (q[1],clk,data[1]);
d_ff d3 (q[2],clk,data[2]);
d_ff d4 (q[3],clk,data[3]);

always @( * )
begin
    out[0]=q[0];
    out[1]=q[1];
    out[2]=q[2];
    out[3]=q[3];
end
endmodule

