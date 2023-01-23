module tb_testbench;
 
  reg [3:0]a,b;

  wire [3:0]sum;
  wire carry;
  bcd_adder dut(.*);
  
  
  initial
    begin
      $monitor("a=%0b\tb=%0b\t,sum=%b\tcarry=%0b",a,b,sum,carry,$time);

      a=4'b0101;b=4'b0101;
    #1a=4'b1110;b=4'b101;
     #1a=4'b1011;b=4'b101;
     #1a=4'b1000;b=4'b100;
     #1a=4'b1111;b=4'b101;
     
    
    end
  
endmodule
