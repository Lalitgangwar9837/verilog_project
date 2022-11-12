// Code your design here
module data_type();
  // reg declare
  reg a; // its size is 1 bit and store the value initial x
  //reg signed declare
  reg signed b; // its size is 1 bit signed and store the value initial x
  // wire declare
  wire c; // its size is 1 bit and store the value initial z
  //integer declare
  integer d; // its size is 32 bit and store the value initial x
  //real declare 
  real e; // its size is 32 bit and store the value initial 0
  //time declare
  time f; // its size is 64 bit and store the value initial x
  initial
    begin
      $display("value of reg a = %b \nvalue of reg signed b = %b \nvalue of wir c = %b \nvalue of intrger d = %b \nvalue of real e = %b \nvalue of time t = %b",a,b,c,d,e,f);
    end
  
endmodule
