
module MUX2B(

    input logic [1:0]in0, in1,
    input logic sel,
    output logic [1:0]out

    );
    
    assign out = sel ? in1 : in0;
    
endmodule
