module tb_testbench;
  
  // by define the name and position
  //reg t_a,t_b;
  //wire t_sum,t_carry,t_carry_in;
  //full_adder dut(t_sum,t_carry,carry_in,t_a,t_b);
  
  //or 
 // full_adder dut (.sum(t_sum),.sum(t_carry),.carry_in(tb_carry_in),.a(t_a),.b(t_b));
  
  //or by .*
  reg a,b,carry_in;
  wire sum,carry;
  full_adder dut(.*);
  
  
  initial
    begin
      $monitor("a=%0b\tb=%0b\tcarry_in=%0b,sum=%0b\tcarry=%0b",a,b,carry_in,sum,carry,$time);
         a=0;b=0;carry_in=0;
      #1 a=0;b=0;carry_in=1;
      #1 a=0;b=1;carry_in=0;
      #1 a=0;b=1;carry_in=1;
      #1 a=1;b=0;carry_in=0;
      #1 a=1;b=0;carry_in=1;
      #1 a=1;b=1;carry_in=0;
      #1 a=1;b=1;carry_in=1;
    
    end
  
  
  
  
endmodule
