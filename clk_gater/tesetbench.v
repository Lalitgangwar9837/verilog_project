module tb_gater;
  reg en,clk;
  wire clk_out;
  clk_gater g1 (.en(en),.clk(clk),.clk_out(clk_out));
  initial
    begin
      $monitor ("en = %0b clk =%0b clk_out = %0b ",en,clk,clk_out);
      en = 0;
      clk = 0;
      #2 en =1;
      #3 en =0;
      #10 en = 1;
      #5 $finish;
    end
  
  always
    begin
    #1 clk = ~clk;
    end
  
  initial
    begin
      $dumpfile("dump.vcd"); $dumpvars;
    end
  
endmodule
