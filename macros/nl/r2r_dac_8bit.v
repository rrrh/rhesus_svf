`timescale 1ns / 1ps

module r2r_dac_8bit (
    input  d0,
    input  d1,
    input  d2,
    input  d3,
    input  d4,
    input  d5,
    input  d6,
    input  d7,
    inout  vdd,
    inout  vss,
    output vout
);

`ifdef SIM
    // Internal variable to represent the analog voltage in simulation.
    real analog_voltage;
    
    // Nominal VDD for IHP SG13G2 is 1.2V
    real vdd_voltage = 1.2; 

    // Concatenate scalar inputs into an 8-bit bus for easy calculation
    wire [7:0] d_bus = {d7, d6, d5, d4, d3, d2, d1, d0};

    // Update the analog voltage calculation whenever any digital input changes
    always @(d_bus) begin
        analog_voltage = (d_bus / 256.0) * vdd_voltage;
    end
`else
    // For OpenLane synthesis/routing, the analog output is left floating.
    assign vout = 1'bz;
`endif

endmodule
