module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire c1, c2, cout;
    wire [31:0] b_sub;
    
    assign b_sub = b ^ {32{sub}} ;
    
    add16 instance1 (a[15:0], b_sub[15:0], sub, sum[15:0], c2);
    add16 instance2 (a[31:16], b_sub[31:16], c2, sum[31:16], cout);

endmodule
