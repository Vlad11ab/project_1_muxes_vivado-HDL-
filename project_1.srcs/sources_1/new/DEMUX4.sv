
module DEMUX4(

    input logic in,
    input logic [1:0]sel,
    output logic out0, out1, out2, out3
    
    );
    
    assign out0 = ( sel == 2'b00 ) ? in : 0;
    assign out1 = ( sel == 2'b01 ) ? in : 0;
    assign out2 = ( sel == 2'b10 ) ? in : 0;
    assign out3 = ( sel == 2'b11 ) ? in : 0;
    
endmodule
