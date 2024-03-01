module testbench_t_ff ;
  reg clk ,reset;
  wire q;
  reg q_exp;
  t_ff t1 (clk ,reset,q);
  
  task exp ;
    input q_exp;
    if (q === q_exp)
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
      	 reset=1;@(negedge clk)  exp (0);
      #1 reset=0;@(negedge clk) exp (1);
      #1 reset=0;@(negedge clk) exp (0);
      #1 reset=0;@(negedge clk) exp (1);
      #1 reset=0;@(negedge clk) exp (0);
      #1 reset=1;@(negedge clk) exp (0);
      #1 reset=1;@(negedge clk) exp (0);
      $display ("task_pass");
    end
endmodule
