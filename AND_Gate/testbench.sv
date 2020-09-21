`timescale 1ns/1ps

module testbench();
  reg a1,b1; //reg holds values at this location
  wire o1; //has no memory
  
  AND T(a1, b1, o1);
  
  initial begin
    
//set two inputs to 1 and 0
    a1 = 1'b1;
    b1 = 1'b0;
    
    $display("o1=%b", o1);
    
  end
  
endmodule