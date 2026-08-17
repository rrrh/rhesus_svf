/* verilator lint_off MODDUP */
`default_nettype none
`ifndef SYNTHESIS
module r2r_dac_8bit (
    input wire d0, d1, d2, d3, d4, d5, d6, d7,
    input wire vdd,
    input wire vss,
    output wire vout
);
    assign vout = 1'b0;
endmodule
`endif
/* verilator lint_on MODDUP */
