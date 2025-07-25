module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );

    add1 instance1 (a[0], b[0], cin, sum[0], cout[0]);
    add1 instance2 (a[1], b[1], cout[0], sum[1], cout[1]);
    add1 instance3 (a[2], b[2], cout[1], sum[2], cout[2]);
    
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );
    assign sum = a ^ b ^ cin;
    assign cout = (a|cin) & (b|cin) & (a|b);

endmodule
