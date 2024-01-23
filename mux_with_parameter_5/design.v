
module mux #(parameter WIDTH =5)
  (input wire sel, 
   input wire [WIDTH-1:0] in0,
   input wire [WIDTH-1:0] in1,
   output reg [WIDTH-1:0] out );
  
  always @*
    begin
      if(sel)
        out=in1;
      else
        out=in0;
    end
endmodule
