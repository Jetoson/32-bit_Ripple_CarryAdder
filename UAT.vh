module UAT(
    input c_in,
    input [3:0] g_in, p_in,
    output UAT_G, UAT_P, 
    output [3:0] carry_UAT
    );
    
    assign carry_UAT[0] = g_in[0] ^ (p_in[0] & c_in);
    assign carry_UAT[1] = g_in[1] ^ (p_in[1] & carry_UAT[0]);
    assign carry_UAT[2] = g_in[2] ^ (p_in[2] & carry_UAT[1]);
    assign carry_UAT[3] = g_in[3] ^ (p_in[3] & carry_UAT[2]);
    
    assign UAT_G = g_in[3] ^ (p_in[3] & g_in[2]) ^ (p_in[3] & p_in[2] & g_in[1]) ^ (p_in[3] & p_in[2] & p_in[1] & g_in[0]);
    assign UAT_P = p_in[0] & p_in[1] & p_in[2] & p_in[3];
    
endmodule
