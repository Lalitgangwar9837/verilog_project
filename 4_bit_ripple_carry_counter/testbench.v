module testbench_ripple_carry_counter ;
  reg clk ,reset;
  wire [3:0] q;
  ripple_carry_counter R1 (clk ,reset,q);
  
  task exp ;
    input [3:0] q_exp;
    if (q == q_exp)
      begin
        $display("clk=%0b  reset=%0b q=%0b q_exp=%0b",clk,reset,q,q_exp);
      end
    else
      begin
        $display("clk=%0b  reset=%0b q=%0b q_exp=%0b",clk,reset,q,q_exp);
        $display ("task_fail");
		 $finish;
      end
   endtask
  
  initial
    begin
    clk = 0;
      forever
    	#1 clk <= !clk;
    end
  
  initial
    begin
      reset=1;@(negedge clk)  exp (4'b0000);
      #1 reset=0;@(negedge clk) exp (4'b1111);
      #1 reset=0;@(negedge clk) exp (4'b1110);
      #1 reset=0;@(negedge clk) exp (4'b1101);
      #1 reset=0;@(negedge clk) exp (4'b1100);
      #1 reset=0;@(negedge clk) exp (4'b1011);
      #1 reset=0;@(negedge clk) exp (4'b1010);
      #1 reset=0;@(negedge clk) exp (4'b1001);
      #1 reset=0;@(negedge clk) exp (4'b1000);
      #1 reset=0;@(negedge clk) exp (4'b0111);
      #1 reset=0;@(negedge clk) exp (4'b0110);
      #1 reset=0;@(negedge clk) exp (4'b0101);
      #1 reset=0;@(negedge clk) exp (4'b0100);
      #1 reset=0;@(negedge clk) exp (4'b0011);
      #1 reset=0;@(negedge clk) exp (4'b0010);
      #1 reset=0;@(negedge clk) exp (4'b0001);
      #1 reset=0;@(negedge clk) exp (4'b0000);
      #1 reset=1;@(negedge clk) exp (4'b0000);
      $display ("task_pass");
      $finish;
    end
  initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars;
    end
endmodule
