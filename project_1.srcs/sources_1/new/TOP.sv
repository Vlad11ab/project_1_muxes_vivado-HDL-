
module TOP(

    input logic in0, in1, in2, in3,
    input logic [3:0]data,
    input logic [1:0]sel,
    output logic out0, out1, out2, out3
    
    );
    
    
    logic mux21_out, mux22_out, mux23_out;
    logic [1:0]mux24_out;
    logic [1:0]not_out;
    logic par_out;
    
    MUX2 mux21(
    .in0(in0),
    .in1(in1),
    .sel( sel[0]),
    .out(mux21_out)
    );
    
    MUX2 mux22(
    .in0(mux21_out),
    .in1(mux23_out),
    .sel(sel[1]),
    .out(mux22_out)
    );
    
    MUX2 mux23(
    .in0(in2),
    .in1(in3),
    .sel(sel[0]),
    .out(mux23_out)
    );
    
    MUX2B mux24(
    .in0(not_out),
    .in1(sel),
    .sel(par_out),
    .out(mux24_out)
    );
    
    DEMUX4 ddemux4(
    .in(mux22_out),
    .sel(mux24_out),
    .out0(out0),
    .out1(out1),
    .out2(out2),
    .out3(out3)
    );
    
    parity_calc par(
    .in(data),
    .out(par_out)
    );
    
    NNOT nott(
    .in(sel),
    .out(not_out)
    );
    
    
    
    
    
endmodule
