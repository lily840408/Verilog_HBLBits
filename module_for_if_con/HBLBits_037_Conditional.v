module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    wire [7:0] out, out1;
    
    assign out = (a>b ? b : a);
    assign out1 = (c>out ? out : c);
    assign min = (d>out1 ? out1 : d);

endmodule
