// Code your design here
module register #(parameter WIDTH=8) (input [WIDTH-1:0] data_in,
                                 input load,clk,
                                 input rst,
                                 output reg [WIDTH-1:0] data_out
                                );
  reg [WIDTH-1:0] temp_data;

  always  @ (posedge clk)
    begin
      
      if (rst) data_out <= 0;
      else if (load) data_out <= data_in;
      else data_out=temp_data;
      temp_data <= data_out;
      
    end
  
endmodule
