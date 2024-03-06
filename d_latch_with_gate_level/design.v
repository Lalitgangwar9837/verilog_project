module d_latch (input d,en,rst, output q,q_bar);
wire d_bar,w1,w2,w3;
  
  not n1 (d_bar,d);
  and a1 (w1,en,d);
  and a2 (w2,en,d_bar);

  or o1 (w3,rst,w2);

  nor no1 (q,q_bar,w3);
  nor no2 (q_bar,q,w1);
endmodule
