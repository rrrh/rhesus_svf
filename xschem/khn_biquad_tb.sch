v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 750 -350 1350 -150 {flags=graph
y1=-0.38
y2=1.02
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.0057676853
x2=0.0028323147
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
x1=-0.0057676853
x2=0.0028323147
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
y1=0.74
y2=2.14
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.0057676853
x2=0.0028323147
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
T {KHN 2-OTA SC Biquad Testbench} 20 -570 0 0 0.4 0.4 {}
T {HP+BP+LP mixer output, f_clk=93.75kHz, q_code=4} 20 -545 0 0 0.2 0.2 {layer=5}
T {===== STIMULUS SOURCES =====} 180 60 0 0 0.25 0.25 {layer=5}
T {Mixer enables} 180 240 0 0 0.18 0.18 {layer=5}
T {Q code = 4 (binary: 0100)} 180 390 0 0 0.18 0.18 {layer=5}
N 170 -290 200 -290 {
lab=vin}
N 170 -250 200 -250 {
lab=sc_clk}
N 170 -210 200 -210 {
lab=en_lp}
N 170 -170 200 -170 {
lab=en_bp}
N 170 -130 200 -130 {
lab=en_hp}
N 520 -210 590 -210 {
lab=vout}
N 280 -350 280 -330 {
lab=q0}
N 320 -350 320 -330 {
lab=q1}
N 360 -350 360 -330 {
lab=q2}
N 400 -350 400 -330 {
lab=q3}
N 480 -350 480 -330 {
lab=vdd}
N 360 -30 360 -10 {
lab=GND}
N 220 100 220 120 {lab=vdd}
N 220 180 220 200 {lab=GND}
N 340 100 340 120 {lab=sc_clk}
N 340 180 340 200 {lab=GND}
N 570 250 570 270 {lab=vin}
N 570 330 570 350 {lab=GND}
N 220 250 220 270 {lab=en_lp}
N 220 330 220 350 {lab=GND}
N 340 250 340 270 {lab=en_bp}
N 340 330 340 350 {lab=GND}
N 460 250 460 270 {lab=en_hp}
N 460 330 460 350 {lab=GND}
N 220 400 220 420 {lab=q0}
N 220 480 220 500 {lab=GND}
N 340 400 340 420 {lab=q1}
N 340 480 340 500 {lab=GND}
N 460 400 460 420 {lab=q2}
N 460 480 460 500 {lab=GND}
N 580 400 580 420 {lab=q3}
N 580 480 580 500 {lab=GND}
N 880 380 920 380 {lab=#net1}
N 920 380 920 400 {lab=#net1}
N 920 460 920 480 {lab=0}
N 800 380 820 380 {lab=vout}
N 920 380 950 380 {lab=#net1}
N 1010 380 1060 380 {lab=#net2}
N 1030 400 1030 410 {lab=#net2}
N 1030 380 1030 400 {lab=#net2}
N 1220 380 1240 380 {lab=vout_filt}
N 1240 380 1270 380 {lab=vout_filt}
N 1240 380 1240 400 {lab=vout_filt}
N 1240 460 1240 480 {lab=0}
N 920 480 1140 480 {lab=0}
N 1030 460 1030 480 {lab=0}
N 1120 380 1140 380 {lab=#net3}
N 1140 380 1140 400 {lab=#net3}
N 1140 460 1140 480 {lab=0}
N 1140 380 1160 380 {lab=#net3}
N 1140 480 1240 480 {lab=0}
C {code_shown.sym} 20 -490 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib /data/Projects/chip/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
.lib /data/Projects/chip/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerCAP.lib cap_typ
"}
C {code_shown.sym} 1380 -500 0 0 {name=NGSPICE only_toplevel=true
value="
.options method=gear reltol=5e-3 abstol=1e-12 vntol=1e-6 gmin=1e-12
.param vdd_val = 1.2
.param f_clk = 13750
.param t_clk = \{1/f_clk\}
.param t_clk_2 = \{t_clk/2 -1n\}
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
	
  let start_freq = 10k
  let stop_freq = 260k
  let delta_freq = 50k
  let freq_act = start_freq

  * loop
  while freq_act le stop_freq
    *
    *reset
    *run
    let t_clk_new = \{1/freq_act\}
    let t_clk_2_new = \{t_clk_new/2-1n\}
    alterparam t_clk = $&t_clk_new
    alterparam t_clk_2 = $&t_clk_2_new
    
    print t_clk_2_new
    print t_clk_new 

    *let f_clk = freq_act
    *let t_clk = \{1/f_clk\}
    *let t_clk_2 = \{\{t_clk/2\}-1n\} 

    *print f_clk
    *print t_clk
    *print t_clk_2

    *alter @Vclk[PULSE] = [ 0 \{vdd_val/2\} 0 1n 1n $&t_clk_2 $&t_clk ]
    reset
    run
    write khn_biquad.out v(vout)
    write khn_biquad_tb.raw v(vin) v(vout) v(xdut.bp) v(xdut.lp) v(xdut.hp) v(xdut.sum1) v(xdut.sum2) v(xdut.sum3)
    set wr_singlescale
    wrdata khn_biquad_tran.data v(vout) v(xdut.bp) v(xdut.lp) v(xdut.hp) v(xdut.vcm)
    let freq_act = freq_act + delta_freq
  

  end
  plot tran1.vout_filt tran2.vout_filt tran3.vout_filt tran4.vout_filt tran5.vout_filt
.endc
"}
C {khn_biquad.sym} 360 -210 0 0 {name=XDUT schematic=khn_biquad.sch}
C {lab_pin.sym} 170 -290 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_pin.sym} 170 -250 0 0 {name=p3 sig_type=std_logic lab=sc_clk}
C {lab_pin.sym} 170 -210 0 0 {name=p11 sig_type=std_logic lab=en_lp}
C {lab_pin.sym} 170 -170 0 0 {name=p12 sig_type=std_logic lab=en_bp}
C {lab_pin.sym} 170 -130 0 0 {name=p13 sig_type=std_logic lab=en_hp}
C {lab_pin.sym} 590 -210 0 0 {name=p2 sig_type=std_logic lab=vout}
C {lab_pin.sym} 280 -350 0 0 {name=p6 sig_type=std_logic lab=q0}
C {lab_pin.sym} 320 -350 0 0 {name=p7 sig_type=std_logic lab=q1}
C {lab_pin.sym} 360 -350 0 0 {name=p8 sig_type=std_logic lab=q2}
C {lab_pin.sym} 400 -350 0 0 {name=p9 sig_type=std_logic lab=q3}
C {lab_pin.sym} 480 -350 0 0 {name=p10 sig_type=std_logic lab=vdd}
C {gnd.sym} 360 -10 0 0 {name=l1 lab=GND}
C {vsource.sym} 220 150 0 0 {name=Vdd value="\{vdd_val\}"}
C {lab_pin.sym} 220 100 0 0 {name=s1 sig_type=std_logic lab=vdd}
C {gnd.sym} 220 200 0 0 {name=l2 lab=GND}
C {vsource.sym} 340 150 0 0 {name=Vclk value="PULSE(0 \{vdd_val\} 0 1n 1n \{t_clk_2\} \{t_clk\})"}
C {lab_pin.sym} 340 100 0 0 {name=s2 sig_type=std_logic lab=sc_clk}
C {gnd.sym} 340 200 0 0 {name=l3 lab=GND}
C {vsource.sym} 570 300 0 0 {name=Vvin value="SIN(0 \{vcm_bias\} 500)"
* PWL(0 \{vcm_bias\} \{100*t_clk-1n\} \{vcm_bias\} \{100*t_clk\} }
C {lab_pin.sym} 570 250 0 0 {name=s3 sig_type=std_logic lab=vin}
C {gnd.sym} 570 350 0 0 {name=l4 lab=GND}
C {vsource.sym} 220 300 0 0 {name=Ven_lp value=0}
C {lab_pin.sym} 220 250 0 0 {name=s4 sig_type=std_logic lab=en_lp}
C {gnd.sym} 220 350 0 0 {name=l5 lab=GND}
C {vsource.sym} 340 300 0 0 {name=Ven_bp value="\{vdd_val\}"}
C {lab_pin.sym} 340 250 0 0 {name=s5 sig_type=std_logic lab=en_bp}
C {gnd.sym} 340 350 0 0 {name=l6 lab=GND}
C {vsource.sym} 460 300 0 0 {name=Ven_hp value=0}
C {lab_pin.sym} 460 250 0 0 {name=s6 sig_type=std_logic lab=en_hp}
C {gnd.sym} 460 350 0 0 {name=l7 lab=GND}
C {vsource.sym} 220 450 0 0 {name=Vq0 value="\{vdd_val\}"}
C {lab_pin.sym} 220 400 0 0 {name=s7 sig_type=std_logic lab=q0}
C {gnd.sym} 220 500 0 0 {name=l8 lab=GND}
C {vsource.sym} 340 450 0 0 {name=Vq1 value="\{vdd_val\}"
}
C {lab_pin.sym} 340 400 0 0 {name=s8 sig_type=std_logic lab=q1}
C {gnd.sym} 340 500 0 0 {name=l9 lab=GND}
C {vsource.sym} 460 450 0 0 {name=Vq2 value="\{vdd_val\}"
}
C {lab_pin.sym} 460 400 0 0 {name=s10 sig_type=std_logic lab=q2}
C {gnd.sym} 460 500 0 0 {name=l10 lab=GND}
C {vsource.sym} 580 450 0 0 {name=Vq3 value="\{vdd_val\}"}
C {lab_pin.sym} 580 400 0 0 {name=s11 sig_type=std_logic lab=q3}
C {gnd.sym} 580 500 0 0 {name=l11 lab=GND}
C {launcher.sym} 1220 280 0 0 {name=h1
descr="Load waves"
tclcommand="
xschem raw_read $netlist_dir/khn_biquad_tb.raw tran
xschem setprop rect 2 0 fullxzoom
"
}
C {launcher.sym} 1030 280 0 0 {name=h2
descr="Simulate"
tclcommand="
set_sim_defaults
set sim(spice,1,cmd) \{ngspice "$N" -a\}
set sim(spice,default) 0
xschem netlist
simulate
"
}
C {capa.sym} 920 430 0 0 {name=C1
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {res.sym} 850 380 1 0 {name=R1
value=11k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 920 480 0 0 {name=l12 lab=0}
C {lab_pin.sym} 800 380 0 0 {name=p4 sig_type=std_logic lab=vout}
C {lab_pin.sym} 1270 380 2 0 {name=p5 sig_type=std_logic lab=vout_filt}
C {res.sym} 980 380 1 0 {name=R2
value=11k
footprint=1206
device=resistor
m=1}
C {capa.sym} 1030 430 0 0 {name=C2
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1240 430 0 0 {name=C3
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1190 380 1 0 {name=R3
value=11k
footprint=1206
device=resistor
m=1}
C {capa.sym} 1140 430 0 0 {name=C4
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1090 380 1 0 {name=R4
value=11k
footprint=1206
device=resistor
m=1}
