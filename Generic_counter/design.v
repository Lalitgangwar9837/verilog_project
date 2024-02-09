module Generic_counter #(parameter integer WIDTH = 5)(input [WIDTH-1:0]cnt_in,
  input enable,load,clk,rst,
   output reg [WIDTH-1:0] cnt_out );
  reg [WIDTH-1:0] temp;
  always @ (*)
    begin
      if (rst) 
        begin 
          temp = 'b0;
        end
      else if (load) 
        begin
          temp = cnt_in;
        end
      else if (enable)
        temp = cnt_out+1;
      else 
        temp = cnt_out;
    end
  
  always @ (posedge clk) 
    begin
      cnt_out <= temp;
    end
  
endmodule
