// Code your design here
module d_latch (input d, clk, output reg q);

  always @ * 
    begin
      if ( clk )
        q <= d ;
      else 
        q <= q;
    end
  
endmodule

module clk_gater ( input en,clk ,output clk_out);
  
  not n1 (clk_bar,clk);
  d_latch d1 (en,clk_bar,w1);
 or o1 (clk_out,w1,clk);  
endmodule
