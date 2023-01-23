module half_adder(sum,carry,a,b);
  input wire a,b;
  output sum,carry;
  
  //by gate level structural
 // xor(sum,a,b);
 // and (carry,a,b);
  
 //by data flow
  
  //assign sum = a^b;
  //assign carry=a*b;
  // or
 // assign {carry,sum}=a+b;
  
  // by behavioral
  
  reg sum,carry;
  
  always @(*)
    
    // by case 
    case({a , b} )
      2'b00 : begin sum=0; carry= 0; end
      2'b01 : begin sum=1; carry= 0; end
      2'b10 : begin sum=1; carry= 0; end
      2'b11 : begin sum=0; carry= 1; end
      
    endcase
  
endmodule
