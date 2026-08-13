v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 750 -350 1350 -150 {flags=graph
y1=-0.1
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00129
x2=0.00989
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
y1=-0.38
y2=1.02
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00129
x2=0.00989
divx=5
subdivx=1
node="vout xdut.bp xdut.lp xdut.hp"
color="7 12 5 6"
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
x1=0.00129
x2=0.00989
divx=5
subdivx=1
node="xdut.sum1 xdut.sum2 xdut.sum3"
color="7 12 5"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1}
T {KHN 2-OTA SC Biquad Testbench} 60 -380 0 0 0.4 0.4 {}
T {HP+BP+LP mixer output, f_clk=93.75kHz, q_code=4} 60 -355 0 0 0.2 0.2 {layer=5}
T {===== STIMULUS SOURCES =====} 60 400 0 0 0.25 0.25 {layer=5}
T {Mixer enables} 60 580 0 0 0.18 0.18 {layer=5}
T {Q code = 4 (binary: 0100)} 60 730 0 0 0.18 0.18 {layer=5}
N 330 60 360 60 {
lab=vin}
N 330 100 360 100 {
lab=sc_clk}
N 330 140 360 140 {
lab=en_lp}
N 330 180 360 180 {
lab=en_bp}
N 330 220 360 220 {
lab=en_hp}
N 680 140 710 140 {
lab=vout}
N 440 0 440 20 {
lab=q0}
N 480 0 480 20 {
lab=q1}
N 520 0 520 20 {
lab=q2}
N 560 0 560 20 {
lab=q3}
N 640 0 640 20 {
lab=vdd}
N 520 320 520 340 {
lab=GND}
N 100 440 100 460 {lab=vdd}
N 100 520 100 540 {lab=GND}
N 220 440 220 460 {lab=sc_clk}
N 220 520 220 540 {lab=GND}
N 400 440 400 460 {lab=vin}
N 400 520 400 540 {lab=GND}
N 100 590 100 610 {lab=en_lp}
N 100 670 100 690 {lab=GND}
N 220 590 220 610 {lab=en_bp}
N 220 670 220 690 {lab=GND}
N 340 590 340 610 {lab=en_hp}
N 340 670 340 690 {lab=GND}
N 100 740 100 760 {lab=q0}
N 100 820 100 840 {lab=GND}
N 220 740 220 760 {lab=q1}
N 220 820 220 840 {lab=GND}
N 340 740 340 760 {lab=q2}
N 340 820 340 840 {lab=GND}
N 460 740 460 760 {lab=q3}
N 460 820 460 840 {lab=GND}
N 740 540 760 540 {lab=vout}
N 820 540 900 540 {lab=#net1}
N 860 540 860 560 {lab=#net1}
N 960 540 1040 540 {lab=#net2}
N 1000 540 1000 560 {lab=#net2}
N 860 620 860 630 {lab=0}
N 860 630 860 640 {lab=0}
N 860 630 1140 630 {lab=0}
N 1140 620 1140 630 {lab=0}
N 1000 620 1000 630 {lab=0}
N 1100 540 1160 540 {lab=vout_filt}
N 1140 540 1140 560 {lab=vout_filt}
N 1160 540 1170 540 {lab=vout_filt}
C {code_shown.sym} 60 -320 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib /data/Projects/chip/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
.lib /data/Projects/chip/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerCAP.lib cap_typ
"}
C {code_shown.sym} 350 -320 0 0 {name=NGSPICE only_toplevel=true
value="
.options method=gear reltol=5e-3 abstol=1e-12 vntol=1e-6 gmin=1e-12
.param vdd_val = 1.2
.param f_clk = 16000
.param t_clk = \{1/f_clk\}
.param vcm_bias = 0.47

* Force vcm to ideal voltage for SC debugging (bypasses weak bias gen)
Vvcm xdut.vcm 0 \{vcm_bias\}

* SC nodes float during DC OP — initialize near VCM and let transient settle
.ic v(xdut.bp)=0.614 v(xdut.lp)=0.614 v(xdut.hp)=0.47
+ v(xdut.sum1)=0.47 v(xdut.sum2)=0.47 v(xdut.sum3)=0.47
+ v(xdut.vcm)=0.47
+ v(xdut.cin_t)=0.47 v(xdut.cin_b)=0.47
+ v(xdut.cfb_t)=0.47 v(xdut.cfb_b)=0.47
+ v(xdut.cis_t)=0.47 v(xdut.cis_b)=0.47
+ v(xdut.c5_t)=0.47 v(xdut.c5_b)=0.47
+ v(xdut.c6_t)=0.47 v(xdut.c6_b)=0.47
+ v(xdut.cq0_t)=0.47 v(xdut.cq1_t)=0.47 v(xdut.cq2_t)=0.47 v(xdut.cq3_t)=0.47
+ v(xdut.x_ota1.mirr)=0.72 v(xdut.x_ota1.tail)=0.12
+ v(xdut.x_ota2.mirr)=0.72 v(xdut.x_ota2.tail)=0.12
+ v(xdut.x_ota3.mirr)=0.72 v(xdut.x_ota3.tail)=0.12
+ v(xdut.phi1)=0 v(xdut.n1)=1.2 v(xdut.n3)=1.2

.tran \{t_clk/20\} \{800*t_clk\} UIC
.control
  run
  write khn_biquad_tb.raw v(vin) v(vout) v(xdut.bp) v(xdut.lp) v(xdut.hp) v(xdut.sum1) v(xdut.sum2) v(xdut.sum3)
  set wr_singlescale
  wrdata khn_biquad_tran.data v(vout) v(xdut.bp) v(xdut.lp) v(xdut.hp) v(xdut.vcm)
.endc
"}
C {khn_biquad.sym} 520 140 0 0 {name=XDUT schematic=khn_biquad.sch}
C {lab_pin.sym} 330 60 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_pin.sym} 330 100 0 0 {name=p3 sig_type=std_logic lab=sc_clk}
C {lab_pin.sym} 330 140 0 0 {name=p11 sig_type=std_logic lab=en_lp}
C {lab_pin.sym} 330 180 0 0 {name=p12 sig_type=std_logic lab=en_bp}
C {lab_pin.sym} 330 220 0 0 {name=p13 sig_type=std_logic lab=en_hp}
C {lab_pin.sym} 710 140 0 0 {name=p2 sig_type=std_logic lab=vout}
C {lab_pin.sym} 440 0 0 0 {name=p6 sig_type=std_logic lab=q0}
C {lab_pin.sym} 480 0 0 0 {name=p7 sig_type=std_logic lab=q1}
C {lab_pin.sym} 520 0 0 0 {name=p8 sig_type=std_logic lab=q2}
C {lab_pin.sym} 560 0 0 0 {name=p9 sig_type=std_logic lab=q3}
C {lab_pin.sym} 640 0 0 0 {name=p10 sig_type=std_logic lab=vdd}
C {gnd.sym} 520 340 0 0 {name=l1 lab=GND}
C {vsource.sym} 100 490 0 0 {name=Vdd value="\{vdd_val\}"}
C {lab_pin.sym} 100 440 0 0 {name=s1 sig_type=std_logic lab=vdd}
C {gnd.sym} 100 540 0 0 {name=l2 lab=GND}
C {vsource.sym} 220 490 0 0 {name=Vclk value="PULSE(0 \{vdd_val\} 0 1n 1n \{t_clk/2 - 1n\} \{t_clk\})"}
C {lab_pin.sym} 220 440 0 0 {name=s2 sig_type=std_logic lab=sc_clk}
C {gnd.sym} 220 540 0 0 {name=l3 lab=GND}
C {vsource.sym} 400 490 0 0 {name=Vvin value="SIN(\{vcm_bias\} 0.5 1k \{100*t_clk-1n\})"}
C {lab_pin.sym} 400 440 0 0 {name=s3 sig_type=std_logic lab=vin}
C {gnd.sym} 400 540 0 0 {name=l4 lab=GND}
C {vsource.sym} 100 640 0 0 {name=Ven_lp value=0}
C {lab_pin.sym} 100 590 0 0 {name=s4 sig_type=std_logic lab=en_lp}
C {gnd.sym} 100 690 0 0 {name=l5 lab=GND}
C {vsource.sym} 220 640 0 0 {name=Ven_bp value=0}
C {lab_pin.sym} 220 590 0 0 {name=s5 sig_type=std_logic lab=en_bp}
C {gnd.sym} 220 690 0 0 {name=l6 lab=GND}
C {vsource.sym} 340 640 0 0 {name=Ven_hp value="\{vdd_val\}"}
C {lab_pin.sym} 340 590 0 0 {name=s6 sig_type=std_logic lab=en_hp}
C {gnd.sym} 340 690 0 0 {name=l7 lab=GND}
C {vsource.sym} 100 790 0 0 {name=Vq0 value=0
*"\{vdd_val\}"}
C {lab_pin.sym} 100 740 0 0 {name=s7 sig_type=std_logic lab=q0}
C {gnd.sym} 100 840 0 0 {name=l8 lab=GND}
C {vsource.sym} 220 790 0 0 {name=Vq1 value=0}
C {lab_pin.sym} 220 740 0 0 {name=s8 sig_type=std_logic lab=q1}
C {gnd.sym} 220 840 0 0 {name=l9 lab=GND}
C {vsource.sym} 340 790 0 0 {name=Vq2 value=0}
C {lab_pin.sym} 340 740 0 0 {name=s10 sig_type=std_logic lab=q2}
C {gnd.sym} 340 840 0 0 {name=l10 lab=GND}
C {vsource.sym} 460 790 0 0 {name=Vq3 value="\{vdd_val\}"}
C {lab_pin.sym} 460 740 0 0 {name=s11 sig_type=std_logic lab=q3}
C {gnd.sym} 460 840 0 0 {name=l11 lab=GND}
C {launcher.sym} 750 280 0 0 {name=h1
descr="Load waves"
tclcommand="
xschem raw_read $netlist_dir/khn_biquad_tb.raw tran
xschem setprop rect 2 0 fullxzoom
"
}
C {launcher.sym} 750 310 0 0 {name=h2
descr="Simulate"
tclcommand="
set_sim_defaults
set sim(spice,1,cmd) \{ngspice "$N" -a\}
set sim(spice,default) 0
xschem netlist
simulate
"
}
C {res.sym} 790 540 1 0 {name=R1
value=11k
footprint=1206
device=resistor
m=1}
C {res.sym} 930 540 1 0 {name=R2
value=11k
footprint=1206
device=resistor
m=1}
C {res.sym} 1070 540 1 0 {name=R3
value=11k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 740 540 0 0 {name=p4 sig_type=std_logic lab=vout}
C {capa.sym} 860 590 0 0 {name=C1
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1000 590 0 0 {name=C2
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1140 590 0 0 {name=C3
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 860 640 0 0 {name=l12 lab=0}
C {lab_pin.sym} 1170 540 2 0 {name=p5 sig_type=std_logic lab=vout_filt}
