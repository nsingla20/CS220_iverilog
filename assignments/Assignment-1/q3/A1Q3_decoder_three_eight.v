// Including the 2-4 decoder module containing file
`include "A1Q3_decoder_two_four.v"

// Define a 3-8 decoder
module decoder_three_eight (
    input in0,
    input in1,
    input in2,
    input en,
    output d0,
    output d1,
    output d2,
    output d3,
    output d4,
    output d5,
    output d6,
    output d7
);
    
    // 3-8 decoder implemented using a 2-4 decoder
    // The decoder uses an and gate to ensure that the functioning is done with two 2-4 decoders itself
    // The output of the 3-8 decoder is and( in0/(~in0), in1/(~in1), in2/(~in2))
    // So to include the enable signal in the ouput as well using only 2 2-4 decoders, we replace any one signal, say in2/(~in2) with (in2 & en)/ ((~in2) & en)
    // Hence this decoder does the job using only two 2-4 decoders and an and gate 
    
   decoder_two_four a0(in0, in1, ((~in2) & en), d0, d1, d2, d3);
   decoder_two_four a1(in0, in1, (in2 & en), d4, d5, d6, d7);
   
    
endmodule
