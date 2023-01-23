module full_adder(sum,carry,carry_in,a,b);
  input  a,b,carry_in;
  output sum,carry;
  assign {carry,sum}=a+b+carry_in;
endmodule

module carry_look_adder(sum,carry,carry_in,a,b);
  input [3:0]a,b;
  input carry_in;
  output reg [3:0]sum;
  output reg  carry;
  wire t1,t2,t3,t4;
  reg[4:0]c;
  reg [3:0]p,g;
  
   always @(*)
    begin
      c[0]=carry_in;
      for (int i;i<4;i++)
        begin
          g[i]=a[i]*b[i];
          p[i]=a[i]^b[i];
          c[i+1]=g[i]|p[i]*c[i];
          // sum[i]=p[i]^c[i]; use this or use full adder
          if (i==3)
            begin
              carry=c[i];
              break;
            end
          else 
            continue;
            
        end
    end
  full_adder f1 (sum[0],t1,carry_in,a[0],b[0]);
  full_adder f2 (sum[1],t2,c[1],a[1],b[1]);
  full_adder f3 (sum[2],t3,c[2],a[2],b[2]);
  full_adder f4 (sum[3],t4,c[3],a[3],b[3]);
   
  ///or
  
  //assign {carry,sum}=a+b+carry_in;
  
  
  
endmodule
