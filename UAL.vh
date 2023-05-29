module UAL(
 input [3:0] a, b,
 input c_in,
 output [3:0] sum,
 output P, G, C
  );
  wire [3:0] p;
  wire [3:0] g;
  wire [3:0] carry_UAT;
    
    Adder_1bit s0(a[0], b[0], c_in, p[0], g[0], sum[0]);
    Adder_1bit s1(a[1], b[1], carry_UAT[0], p[1], g[1], sum[1]);
    Adder_1bit s2(a[2], b[2], carry_UAT[1], p[2], g[2], sum[2]);
    Adder_1bit s3(a[3], b[3], carry_UAT[2], p[3], g[3], sum[3]);
    
    UAT uat(c_in, g, p, G, P, carry_UAT); 
    assign C = carry_UAT[3];
  
endmodule
