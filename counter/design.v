// Code your design here
module counter #(parameter WIDTH=5) (input [WIDTH-1:0] cnt_in,
                                     input enab,load,clk,rst,
                                     output reg [WIDTH-1:0] cnt_out);
  reg [WIDTH-1:0] temp;
  
  always @ (posedge clk)
    begin
      if (rst) temp = 'b0;
      else if(load) temp = cnt_in;
      else temp=temp+1;
      cnt_out <= temp;
    end
  
endmodule
