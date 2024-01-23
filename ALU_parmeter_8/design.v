// Code your design here
module ALU #(parameter WIDTH = 8) 
  (input [WIDTH-1:0] in_a,in_b,
   input [2:0] opcode,
   output reg [WIDTH-1:0] alu_out,
   output reg a_is_zero);
  always @* 
    if (in_a === 3'b000)
      begin
      a_is_zero <= 1;
  	  alu_out <= in_a;
      end
    else
      begin
      a_is_zero <= 0;
      case (opcode)
        3'b000 : alu_out <= in_a;
        3'b001 : alu_out <= in_a;
        3'b010 : alu_out <= in_a+in_b;
        3'b011 : alu_out <= in_a&in_b;
        3'b100 : alu_out <= in_a^in_b;
        3'b101 : alu_out <= in_b;
        3'b110 : alu_out <= in_a;
        3'b111 : alu_out <= in_a;
        
      endcase
      end
endmodule
