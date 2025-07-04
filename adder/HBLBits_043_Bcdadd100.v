module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    wire [99:0] ccout;
    
    bcd_fadd instance1( a[3:0], b[3:0], cin, ccout[0], sum[3:0] );
    
    genvar i;
    generate
        for(i=1;i<100;i=i+1)begin: for_block
            bcd_fadd instance2( a[4*i+3:4*i], b[4*i+3:4*i], ccout[i-1], ccout[i], sum[4*i+3:4*i] );
        end
	endgenerate
    assign cout = ccout[99];
endmodule

