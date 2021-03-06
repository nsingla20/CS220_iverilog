module gen_prop (
    p,g,a,b
);
    input[7:0] a,b;
    output[7:0] p,g;
    
    and(g[0],a[0],b[0]);
    xor(p[0],a[0],b[0]);

    and(g[1],a[1],b[1]);
    xor(p[1],a[1],b[1]);

    and(g[2],a[2],b[2]);
    xor(p[2],a[2],b[2]);

    and(g[3],a[3],b[3]);
    xor(p[3],a[3],b[3]);

    and(g[4],a[4],b[4]);
    xor(p[4],a[4],b[4]);

    and(g[5],a[5],b[5]);
    xor(p[5],a[5],b[5]);

    and(g[6],a[6],b[6]);
    xor(p[6],a[6],b[6]);

    and(g[7],a[7],b[7]);
    xor(p[7],a[7],b[7]);
        
endmodule