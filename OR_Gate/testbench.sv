`timescale 1ns/1ps

module testbench();
  reg a1,b1; //reg holds values at this location
  wire o1; //has no memory
  
  orgate G1(a1, b1, o1);
  
  initial begin
    
//display/dump waves
    $dumpfile("dump.vcd"); //creates dump vcd file
    
//displays testbench and design
    //$dumpvars(0);
    $dumpvars(1,testbench);
    
//set two inputs to 1 and 0
    a1 = 1'b1;
    b1 = 1'b0;
    
//time delay
    #1
    $display("o1=%b", o1);
    
    //set two inputs to 0 and 1
    a1 = 1'b0;
    b1 = 1'b1;
    
//time delay
    #1
    //set two inputs to 1 and 1
    a1 = 1'b1;
    b1 = 1'b1;
    
//time delay
    #1
    //set two inputs to 0 and 0
    a1 = 1'b0;
    b1 = 1'b0;
    
    //time delay
    #1
    //set two inputs to 1 and 1
    a1 = 1'b1;
    b1 = 1'b1;
    
    
  end
  
endmodule