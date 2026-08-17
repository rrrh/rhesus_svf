`default_nettype none
`ifndef SYNTHESIS
module r2r_dac_8bit (
    input wire [7:0] d0, // note: stub expects individual bits or bus depending on your instantiation, 
    // but to match individual bit instantiations:
    input wire d0, d1, d2, d3, d4, d5, d6, d7,
    input wire vdd,
    input wire vss,
    output wire vout
);
    assign vout = 1'b0;
endmodule
`endif
