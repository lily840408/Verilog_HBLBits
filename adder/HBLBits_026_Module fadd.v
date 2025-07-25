module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire c1, c2, cout;
    assign c1 = 1'b0; 
    
    add16 instance1 (a[15:0], b[15:0], c1, sum[15:0], c2);
    add16 instance2 (a[31:16], b[31:16], c2, sum[31:16], cout);  
    
endmodule

module add16 ( input a, input b, input cin,   output sum, output cout );
    assign sum = a ^ b ^ cin;
    assign cout = (a|cin) & (b|cin) & (a|b);

endmodule
