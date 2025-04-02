`timescale 1ns / 1ps
module MUX2(

    input logic in0,
    input logic in1,
    input logic sel,
    output logic out

 );
 
    assign out = (sel==0) ? in1 : in0;
  
  
endmodule
