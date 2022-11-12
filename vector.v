module vector();
  reg [7:0] a; //vector of reg of 8 bit 
  reg [2:0] b; // vector of reg 3 bit
  initial begin
    a=8'b1100_1010;
    b=a[6:4]; // vector part select from 6 to 4
    $display ("a=%b\tb=%b",a,b);
    
  end 
endmodule

