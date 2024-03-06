// Code your testbench here
// or browse Examples
module tb_latch;  
   // Declare variables that can be used to drive values to the design  
   reg d;  
   reg en;  
   reg rstn;  
   reg [2:0] delay;  
   reg [1:0] delay2;  
   integer i;  
  
   // Instantiate design and connect design ports with TB signals  
   d_latch  dl0 ( .d (d),  
                  .en (en),  
                  .rst (rstn),  
                 .q (q),
                 .q_bar (q_bar));  
  
   // This initial block forms the stimulus to test the design  
   initial begin  
     $monitor ("[%0t] en=%0b d=%0b q=%0b q_bar=%0b", $time, en, d, q, q_bar);  
  
      // 1. Initialize testbench variables  
      d <= 0;  
      en <= 0;  
      rstn <= 1;  
  
      // 2. Release reset  
      #10 rstn <= 0;  
  
      // 3. Randomly change d and enable  
      for (i = 0; i < 5; i=i+1) begin  
         delay = $random;  
         delay2 = $random;  
         #(delay2) en <= ~en;  
         #(delay) d <= i;  
      end  
   end 
  initial
    begin
      $dumpfile("dump.vcd"); $dumpvars;
    end
endmodule  
