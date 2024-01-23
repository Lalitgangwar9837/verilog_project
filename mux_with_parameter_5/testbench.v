module test ;
  localparam WIDTH =5;
  reg sel;
  reg [WIDTH-1:0] in0;
  reg [WIDTH-1:0] in1;
  reg se;
  wire [WIDTH-1:0] out;
  
  integer i=0;
  
  mux #(.WIDTH(WIDTH)) mux_inst1(.in0(in0),
                .in1(in1),
                .sel(se),
                .out(out));
  
  task exp;
    input [WIDTH-1:0] exp_out;
    if(exp_out !== out) begin
      $display ("test_failed");
      $display ("At time %0d se =%0b in1=%0h in0=%0h exp_out=%0h got_out=%0h",$time,se,in1,in0,exp_out,out);
      $finish;
    end
    else
      begin
        
        $display ("At time %0d se =%0b in1=%0h in0=%0h exp_out=%0h got_out=%0h",$time,se,in1,in0,exp_out,out);
      end
      
  endtask
  
  initial
    begin
      while (i < 10)
    	begin
          se=$random;in0=$random;in1=$random;
          #1
          if (se) exp(.exp_out(in1));
          else exp(.exp_out(in1));   
          i++;
    	end
      $display ("test_pass");
    end
  
endmodule
