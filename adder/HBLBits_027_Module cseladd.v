module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire c1, c2, c3, cout;
    wire [15:0] sum1, sum2;
    assign c1 = 1'b0; 
    assign c3 = 1'b1;
    
    add16 instance1 (a[15:0], b[15:0], c1, sum[15:0], c2);
    add16 instance2 (a[31:16], b[31:16], c1, sum1, cout);
    add16 instance3 (a[31:16], b[31:16], c3, sum2, cout);
    
   always @(*) begin
       case(c2)
           1'b0: sum[31:16]<=sum1;
           1'b1: sum[31:16]<=sum2;
        endcase
    end
    
endmodule
