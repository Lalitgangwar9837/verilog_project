// Code your design here
module t_ff (input clk,reset , output reg q);
  reg temp ;
  always @(posedge clk or posedge reset)
    begin
      q = reset ? 0:!temp;
      temp <= q;
    end
endmodule


module ripple_carry_counter (input clk,reset,output reg [3:0] q );
  t_ff t1 (clk,reset,q[0]);
  t_ff t2 (q[0],reset,q[1]);
  t_ff t3 (q[1],reset,q[2]);
  t_ff t4 (q[2],reset,q[3]);
endmodule
