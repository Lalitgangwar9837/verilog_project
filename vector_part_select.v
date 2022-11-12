module m ();
  reg [7:0] a=8'b11110000; // vector of 8 bit 
  reg [3:0] b;
  reg [3:0] c;
  reg [7:0] d;
  initial
    begin
      b=a[3:0]; //part select of vector a
      c=a[7:4];
      d={b,c}; 
      $display("value of a=%b \nvalue of b=%b \nvalue of c=%b \nvalue of d=%b \n",a,b,c,d);
      
    end
endmodule


/// second code

module m ();
  reg [7:0] a=8'b11110000; // vector of 8 bit 
  reg [1:0] b;
  reg [1:0] c;
  reg [7:0] d;
  initial
    begin
      b=a[4-:2]; //part select of vector a[4:2]
      c=a[4+:2]; //part select of vector a[6:2]
      d={b,c}; 
      $display("value of a=%b \nvalue of b=%b \nvalue of c=%b \nvalue of d=%b \n",a,b,c,d);
      
    end
endmodule
