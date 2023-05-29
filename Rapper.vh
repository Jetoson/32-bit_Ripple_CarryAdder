module Rapper(
input c_in,
input [15:0] a, b,
output [15:0] sum,
output GG, GP, 
c_out
);

    wire [3:0] P;
    wire [3:0] G;
    wire [3:0] C;
    wire [3:0] carry_UAT;
    wire GP, GG;
    
    UAL result0(a[3:0], b[3:0], c_in, sum[3:0], P[0], G[0], C[0]); 
    UAL result1(a[7:4], b[7:4], carry_UAT[0], sum[7:4], P[1], G[1], C[1]);
    UAL result2(a[11:8], b[11:8], carry_UAT[1], sum[11:8], P[2], G[2], C[2]);
    UAL result3(a[15:12], b[15:12], carry_UAT[2], sum[15:12], P[3], G[3], C[3]);
    
    UAT guat(c_in, G, P,  GG, GP, carry_UAT);
    assign c_out = carry_UAT[3]; 

endmodule
