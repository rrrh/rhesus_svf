`default_nettype none

module tt_um_simple_test (
    input  wire [7:0] ui_in,    
    output wire [7:0] uo_out,   
    input  wire [7:0] uio_in,   
    output wire [7:0] uio_out,  
    output wire [7:0] uio_oe,   
    input  wire       ena,      
    input  wire       clk,      
    input  wire       rst_n     
`ifdef USE_POWER_PINS
    ,
    inout  wire       VPWR,
    inout  wire       VGND
`endif
);

    wire dac_to_comp;
    wire ramp_to_comp;
    wire comp_out;

    reg [7:0] ramp_cnt;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) 
            ramp_cnt <= 8'd0;
        else        
            ramp_cnt <= (ramp_cnt == 8'd254) ? 8'd0 : ramp_cnt + 8'd1;
    end

    assign uo_out[0]   = comp_out;
    assign uo_out[7:1] = ramp_cnt[7:1];
    assign uio_out     = ramp_cnt;
    assign uio_oe      = ~ramp_cnt;

    (* keep = 1 *)
    r2r_dac_8bit u_dac (
`ifdef USE_POWER_PINS
        .vdd(VPWR),
        .vss(VGND),
`endif
        .d0(ui_in[0]), .d1(ui_in[1]), .d2(ui_in[2]), .d3(ui_in[3]),
        .d4(ui_in[4]), .d5(ui_in[5]), .d6(ui_in[6]), .d7(ui_in[7]),
        .vout(dac_to_comp)
    );

    (* keep = 1 *)
    r2r_dac_8bit u_ramp_dac (
`ifdef USE_POWER_PINS
        .vdd(VPWR),
        .vss(VGND),
`endif
        .d0(ramp_cnt[0]), .d1(ramp_cnt[1]), .d2(ramp_cnt[2]), .d3(ramp_cnt[3]),
        .d4(ramp_cnt[4]), .d5(ramp_cnt[5]), .d6(ramp_cnt[6]), .d7(ramp_cnt[7]),
        .vout(ramp_to_comp)
    );

    (* keep = 1 *)
    pwm_comp u_comp (
`ifdef USE_POWER_PINS
        .vdd(VPWR),
        .vss(VGND),
`endif
        .vinp(dac_to_comp),
        .vinn(ramp_to_comp),
        .out(comp_out)
    );

endmodule
