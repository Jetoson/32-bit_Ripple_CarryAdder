module Adder_1bit(
input a, b, c,
output p, g, sum
    );
 assign g = a & b; 
 assign p = a ^ b;
 assign sum = p ^ c;
endmodule
