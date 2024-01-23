// Code your testbench here
// or browse Examples
module testbench;
localparam WIDTH=8;
  reg [WIDTH-1:0] data_in;
  wire [WIDTH-1:0] data_out;
  reg data_en;
  
  integer i=0;
  
  driver #(.WIDTH(WIDTH)) inst1 (.data_in(data_in),.data_out(data_out),.data_en(data_en));
  
  task exp ;
    input [WIDTH-1:0] exp_data;
    if (exp_data !== data_out)
      begin
        $display ("task fail");
        $display ("at time %0d data_in =%0b data_en =%0b data_out=%0b exp_data =%0b",$time,data_in,data_en,data_out,exp_data);
        $finish;
      end
    else
      begin
        $display ("at time %0d data_in =%0b data_en =%0b data_out=%0b exp_data =%0b",$time,data_in,data_en,data_out,exp_data);
      end
  endtask
  
  initial
    begin
    while (i < 10)
      begin
        data_in=$random;data_en=$random;
        #1
        if (data_en) exp(data_in);
        else exp('bz);
        i++;
      end
      $display("test_pass");
    end
  
  
endmodule
