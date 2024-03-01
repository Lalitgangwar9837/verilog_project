module t_ff (input clk,reset , output reg q);
  reg temp ;
  always @(posedge clk or posedge reset)
    begin
      q = reset ? 0:!temp;
      temp <= q;
    end
endmodule
