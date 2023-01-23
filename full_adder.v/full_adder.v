module full_adder(sum,carry,carry_in,a,b);
  input  a,b,carry_in;
  output sum,carry;
  
 /* //by gate level structural
  wire t1,t2;
  xor(t1,a,b);
  xor(sum,t1,carry_in);
 and (carry,t1,carry_in);*/
  
 /* //by data flow
  
  assign sum = a^b^carry_in;
  assign carry=carry_in*(a^b);
  // or
  // assign {carry,sum}=a+b+carry_in;*/
  
  // by behavioral
  
  reg sum,carry,carry_in;
  
  always @(*)
    
    // by case 
    case({a , b , carry_in} )
      3'b000 : begin sum=0; carry= 0; end
      3'b001 : begin sum=1; carry= 0; end
      3'b010 : begin sum=1; carry= 0; end
      3'b011 : begin sum=0; carry= 1; end
      
      3'b100 : begin sum=1; carry= 0; end
      3'b101 : begin sum=0; carry= 1; end
      3'b110 : begin sum=0; carry= 1; end
      3'b111 : begin sum=1; carry= 1; end
      
    endcase
  
endmodule
