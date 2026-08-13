v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SVF 2nd-Order Filter Testbench} 60 -380 0 0 0.4 0.4 {}
T {BP mode 0-2ms, LP mode 2-4ms, f_clk=93.75kHz, q_code=4} 60 -355 0 0 0.2 0.2 {layer=5}

C {code_shown.sym} 60 -320 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerCAP.lib cap_typ
"}

C {code_shown.sym} 350 -320 0 0 {name=NGSPICE only_toplevel=true
value="
.options method=gear reltol=5e-3 abstol=1e-12 vntol=1e-6 gmin=1e-12
.param vdd_val = 1.2
.param f_clk = 93750
.param t_clk = \{1/f_clk\}

* Power
Vdd vdd 0 \{vdd_val\}

* Clock (50% duty cycle)
Vclk sc_clk 0 PULSE(0 \{vdd_val\} 0 1n 1n \{t_clk/2 - 1n\} \{t_clk\})

* Mux select: BP mode 0-2ms, LP mode 2-4ms
.param t_switch = \{400*t_clk\}
Vsel0 sel0 0 PWL(0 \{vdd_val\} \{t_switch-1n\} \{vdd_val\} \{t_switch\} 0)
Vsel1 sel1 0 PWL(0 0 \{t_switch-1n\} 0 \{t_switch\} \{vdd_val\})

* Q code = 4 (binary: 0100 -> q2=VDD, rest=0)
Vq0 q0 0 0
Vq1 q1 0 0
Vq2 q2 0 \{vdd_val\}
Vq3 q3 0 0

* Input: DC bias at VCM + small AC sine for testing
.param vcm_bias = 0.47
Vvin vin 0 DC \{vcm_bias\}
*Vvin vin 0 DC \{vcm_bias\} SIN(\{vcm_bias\} 0.05 1000)

* Force vcm to ideal voltage for SC debugging (bypasses weak bias gen)
Vvcm xdut.vcm 0 \{vcm_bias\}

* SC nodes float during DC OP \u2014 initialize near VCM and let transient settle
.ic v(xdut.bp)=0.65 v(xdut.lp)=0.65 v(xdut.lp_neg)=0.65
+ v(xdut.sum1)=0.47 v(xdut.sum2)=0.47 v(xdut.sum3)=0.47
+ v(xdut.vcm)=0.47 v(xdut.hp)=0.47
+ v(xdut.csw1_t)=0.47 v(xdut.csw2_t)=0.47 v(xdut.csw3_t)=0.47
+ v(xdut.csw4_t)=0.47 v(xdut.csw5_t)=0.47
+ v(xdut.cq0_t)=0.47 v(xdut.cq1_t)=0.47 v(xdut.cq2_t)=0.47 v(xdut.cq3_t)=0.47
+ v(xdut.x_ota1.mirr)=0.72 v(xdut.x_ota1.tail)=0.12
+ v(xdut.x_ota2.mirr)=0.72 v(xdut.x_ota2.tail)=0.12
+ v(xdut.x_ota3.mirr)=0.72 v(xdut.x_ota3.tail)=0.12
+ v(xdut.phi1)=0 v(xdut.n1)=1.2 v(xdut.n3)=1.2

.tran \{t_clk/20\} \{800*t_clk\} UIC
.control
  run
  write svf_2nd_tb.raw v(vin) v(vout) v(xdut.bp) v(xdut.lp) v(xdut.lp_neg) v(xdut.vcm) v(xdut.sum1)
  set wr_singlescale
  wrdata svf_2nd_tran.data v(vout) v(xdut.bp) v(xdut.lp) v(xdut.lp_neg) v(xdut.vcm)
.endc
"}

C {svf_2nd.sym} 500 100 0 0 {name=XDUT}
N 330 20 360 20 {
lab=vin}
C {lab_pin.sym} 330 20 0 0 {name=p1 sig_type=std_logic lab=vin}
N 640 100 670 100 {
lab=vout}
C {lab_pin.sym} 670 100 0 0 {name=p2 sig_type=std_logic lab=vout}
N 330 60 360 60 {
lab=sc_clk}
C {lab_pin.sym} 330 60 0 0 {name=p3 sig_type=std_logic lab=sc_clk}
N 330 100 360 100 {
lab=sel0}
C {lab_pin.sym} 330 100 0 0 {name=p4 sig_type=std_logic lab=sel0}
N 330 140 360 140 {
lab=sel1}
C {lab_pin.sym} 330 140 0 0 {name=p5 sig_type=std_logic lab=sel1}
N 440 -40 440 -20 {
lab=q0}
C {lab_pin.sym} 440 -40 0 0 {name=p6 sig_type=std_logic lab=q0}
N 480 -40 480 -20 {
lab=q1}
C {lab_pin.sym} 480 -40 0 0 {name=p7 sig_type=std_logic lab=q1}
N 520 -40 520 -20 {
lab=q2}
C {lab_pin.sym} 520 -40 0 0 {name=p8 sig_type=std_logic lab=q2}
N 560 -40 560 -20 {
lab=q3}
C {lab_pin.sym} 560 -40 0 0 {name=p9 sig_type=std_logic lab=q3}
N 600 -40 600 -20 {
lab=vdd}
C {lab_pin.sym} 600 -40 0 0 {name=p10 sig_type=std_logic lab=vdd}
N 500 240 500 260 {
lab=GND}
C {gnd.sym} 500 260 0 0 {name=l1 lab=GND}

B 2 750 -350 1350 -150 {flags=graph
y1=-0.1
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4.3e-3
divx=5
subdivx=1
node=vin
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1}
B 2 750 -150 1350 50 {flags=graph
y1=-0.1
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4.3e-3
divx=5
subdivx=1
node=vout
color=7
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1}
B 2 750 50 1350 250 {flags=graph
y1=-0.1
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4.3e-3
divx=5
subdivx=1
node="sel0 sel1"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1}
C {launcher.sym} 750 280 0 0 {name=h1
descr="Load waves"
tclcommand="
xschem raw_read $netlist_dir/svf_2nd_tb.raw tran
xschem setprop rect 2 0 fullxzoom
"
}
C {launcher.sym} 750 310 0 0 {name=h2
descr="Simulate"
tclcommand="
set_sim_defaults
set sim(spice,1,cmd) \{ngspice \"$N\" -a\}
set sim(spice,default) 0
xschem netlist
simulate
"
}
