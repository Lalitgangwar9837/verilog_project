module mem #(parameter integer AWIDTH=5 , DWIDTH =8) 
  (input [AWIDTH-1:0] addr, 
   input clk,wr,rd,  
   inout [DWIDTH-1:0] data);
  reg  [DWIDTH-1:0]mem[0:2**AWIDTH-1];
  always @ (posedge clk)
      if (wr) mem[addr]=data;
  assign data = rd ? mem[addr]:'bz;
endmodule
