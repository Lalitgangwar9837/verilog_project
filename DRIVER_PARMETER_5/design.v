module driver #( parameter WIDTH = 8) 
               (input wire [WIDTH-1:0] data_in,
                input data_en,
                output reg [WIDTH-1:0] data_out );
  always @ (*)
    begin
      if(data_en)
        data_out=data_in;
      else 
        data_out='bz;
    end
  
endmodule
