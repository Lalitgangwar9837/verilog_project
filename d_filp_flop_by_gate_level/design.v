// Code your design here
module d_latch (input d,en,rst, output q,q_bar);
wire d_bar,w1,w2,w3;
  
  not n1 (d_bar,d);
  and a1 (w1,en,d);
  and a2 (w2,en,d_bar);

  or o1 (w3,rst,w2);

  nor no1 (q,q_bar,w3);
  nor no2 (q_bar,q,w1);
endmodule

module d_flip_flop (input d,clk,rst , output q);
wire clk_bar,t1;
  not n1 (clk_bar,clk);
  d_latch  d1 ( .d (d),.en (clk_bar),.rst (rst), .q (t1));
  d_latch  d2 ( .d (t1),.en (clk),.rst (rst), .q (q));
endmodule
  
