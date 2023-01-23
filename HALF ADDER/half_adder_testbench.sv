module tb_testbench;
  
  // by define the name and position
  //reg t_a,t_b;
  //wire t_sum,t_carry;
  //half_adder dut(t_sum,t_carry,t_a,t_b);
  
  //or 
  //half_adder dut (.sum(t_sum),.sum(t_carry),.a(t_a),.b(t_b));
  
  //or by .*
  reg a,b;
  wire sum,carry;
  half_adder dut(.*);
  
  
  initial
    begin
      $monitor("a=%0b\tb=%0b\tsum=%0b\tcarry=%0b",a,b,sum,carry,$time);
      a=0;b=0;
      #1 a=0;b=1;
      #1 a=1;b=0;
      #1 a=1;b=1;
    
    end
  
  
  
  
endmodule
