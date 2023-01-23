// Code your design here
module half_adder(sum,carry,a,b);
    input a,b;
    output sum,carry;
  // assign {sum,carry} =a+b;
    assign sum=a^b;
    assign carry=a*b;
endmodule 

module full_adder(sum,carry,carry_in,a,b);
    input a,b,carry_in;
    output sum,carry;
  	wire s1,c1,c2;
  // assign {sum,carry} =a+b+carry_in;
     half_adder(s1,c1,a,b);
     half_adder(sum,c2,s1,carry_in);
     or (carry,a,b);
endmodule 

module ripple_carry_adder(sum,carry,a,b);
  input [3:0] a,b;
  output [3:0] sum;
  output carry;
  wire cin=0;
  wire c1,c2,c3;
  full_adder(sum[0],c1,cin,a[0],b[0]);
  full_adder(sum[1],c2,c1,a[1],b[1]);
  full_adder(sum[2],c3,c2,a[2],b[2]);
  full_adder(sum[3],carry,c3,a[3],b[3]);
endmodule
    
