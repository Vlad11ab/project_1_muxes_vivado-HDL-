
module tb();
    
    logic in0, in1, in2, in3;
    logic [3:0]data;
    logic [1:0]sel;
    logic out0, out1, out2, out3;
    
    TOP topp(
    .in0(in0),
    .in1(in1),
    .in2(in2),
    .in3(in3),
    .sel(sel),
    .data(data),
    .out0(out0),
    .out1(out1),
    .out2(out2),
    .out3(out3)
    );
    
    initial begin
    #10
    data = 1;
    sel = 1;
    #10
    in0 = 1;
    in1 = 1;
    in2 = 1;
    in3 = 1;
    sel = 2;
    data = 2;
    #5
    sel = 3;
    data = 3;
    #5
    sel = 2;
    data = 4;
    #5
    data = 5;
    sel = 0;
    #5
    in0 = 0;
    in2 = 0;
    in3 = 0;
    data = 6;
    #5
    data =7;
    #5
    in0 = 1;
    in3 = 1;
    data = 0;
    #35
    $stop;
    end


endmodule
