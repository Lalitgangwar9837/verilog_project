module tb_ripple_carry_addder();
  reg [3:0] t_a,t_b;
  wire [3:0] sum;
  wire t_carry;
  ripple_carry_adder dut(.sum(sum),.carry(t_carry),.a(t_a),.b(t_b));
  initial
    begin
      $monitor("a=%b\tb=%b\tcarry=%b\tsum=%b",t_a,t_b,t_carry,sum,$time);
      t_a=4'b1010;t_b=4'b1011;
    end
endmodule
