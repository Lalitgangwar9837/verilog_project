
module arithmetic();
  integer a,b;
  integer SUM,MULTIPLY,DIVIDE,SUB;
  
  
  function integer sum;
    input integer a,b;
    begin
      sum=a+b;
    end
  endfunction
  
  function integer sub;
    input integer a,b;
    begin
      sub=a-b;
    end
  endfunction
  
  function integer multiply;
    input integer a,b;
    begin
      multiply=a*b;
    end
  endfunction
  
  function integer divide;
    input integer a,b;
    begin
      divide=a/b;
    end
  endfunction
  
  initial
    begin
      SUM=sum(5,6);
      MULTIPLY=multiply(5,10);
      DIVIDE=divide(9,3);
      SUB=sub(9,5);
      $display("sum=%0d\t,sub=%0d\t,multiply=%0d\t,divide=%0d",SUM,SUB,MULTIPLY,DIVIDE);
      
    end
endmodule
    
