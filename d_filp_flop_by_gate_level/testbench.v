module tb;
reg D;
reg clk;
reg reset;
wire Q;

  d_flip_flop d1(D,clk,reset,Q);

initial 
  begin 
    clk = 1'b0;
    forever #20 clk = ~clk ;
  end
  
initial 
  begin
    reset = 1'b1;
    #40;
    reset = 1'b0;
    #40;
    D = 1'b0;
    #40;
    D = 1'b1;
    #80;
    
    $finish ;
  end
  initial
    begin
      $dumpfile("dump.vcd"); $dumpvars;
    end
endmodule   
