module data_type();
  //value set
  reg a=0; // it means logic zero,false condition
  reg b=1; // it means logic one,true condition
  reg c='x;// unknown logic value
  reg d='z;// it means logic zero,false condition
  initial
    begin
      $display("value of a = %b \nvalue of b = %b \nvalue of c = %b \nvalue of d = %b \n",a,b,c,d);
    end
endmodule
