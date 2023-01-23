module full_adder(sum,carry,carry_in,a,b);
  input  a,b,carry_in;
  output sum,carry;
  assign {carry,sum}=a+b+carry_in;
endmodule

module ripple_adder(sum,carry,carry_in,a,b);
  input [3:0]a,b;
  input carry_in;
  output [3:0]sum;
  output carry;
  wire [4:0]c;
  assign c[0]=carry_in;
  generate 
    genvar i;
    for (i=0;i<4;i++)
      begin
        full_adder f1 (sum[i],c[i+1],c[i],a[i],b[i]);
       end
  endgenerate
  assign carry=c[4];
   
  ///or
  
  //assign {carry,sum}=a+b+carry_in;
  
  
  
endmodule


module bcd_adder(sum,carry,a,b);
  input [3:0]a,b;
  output [3:0]sum;
  output carry;
  wire[3:0]s;
  wire c=0;
  wire k,l;
  wire [3:0]m;
  
  ripple_adder r1 (s,k,c,a,b);
  assign carry=(s[1]*s[3])|(s[2]*s[3])|k;
  assign m={1'b0,carry,carry,1'b0};
  
  ripple_adder r2 (sum,l,c,m,s);
  
  
  
  
endmodule
