`default_nettype none
`ifndef SYNTHESIS
module pwm_comp (
    input wire vdd,
    input wire vss,
    input wire vinp,
    input wire vinn,
    output wire out
);
    assign out = (vinp > vinn);
endmodule
`endif
