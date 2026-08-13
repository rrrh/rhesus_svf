v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {R-2R DAC 8-bit Testbench — Binary Counter Sweep} 60 -330 0 0 0.4 0.4 {}
C {r2r_dac_8bit.sym} 500 100 0 0 {name=XDUT}
N 350 20 380 20 {
lab=d0}
C {lab_pin.sym} 350 20 0 0 {name=p1 sig_type=std_logic lab=d0}
N 350 40 380 40 {
lab=d1}
C {lab_pin.sym} 350 40 0 0 {name=p2 sig_type=std_logic lab=d1}
N 350 60 380 60 {
lab=d2}
C {lab_pin.sym} 350 60 0 0 {name=p3 sig_type=std_logic lab=d2}
N 350 80 380 80 {
lab=d3}
C {lab_pin.sym} 350 80 0 0 {name=p4 sig_type=std_logic lab=d3}
N 350 100 380 100 {
lab=d4}
C {lab_pin.sym} 350 100 0 0 {name=p5 sig_type=std_logic lab=d4}
N 350 120 380 120 {
lab=d5}
C {lab_pin.sym} 350 120 0 0 {name=p6 sig_type=std_logic lab=d5}
N 350 140 380 140 {
lab=d6}
C {lab_pin.sym} 350 140 0 0 {name=p7 sig_type=std_logic lab=d6}
N 350 160 380 160 {
lab=d7}
C {lab_pin.sym} 350 160 0 0 {name=p8 sig_type=std_logic lab=d7}
N 620 60 650 60 {
lab=vdd}
C {lab_pin.sym} 650 60 0 1 {name=p9 sig_type=std_logic lab=vdd}
N 620 100 650 100 {
lab=vout}
C {lab_pin.sym} 650 100 0 1 {name=p10 sig_type=std_logic lab=vout}
N 620 140 650 140 {
lab=GND}
C {lab_pin.sym} 650 140 0 1 {name=p11 sig_type=std_logic lab=GND}
C {vsource.sym} 150 -150 0 0 {name=Vdd value=1.2}
N 150 -180 150 -200 {
lab=vdd}
C {lab_pin.sym} 150 -200 3 0 {name=p12 sig_type=std_logic lab=vdd}
N 150 -120 150 -110 {
lab=GND}
C {gnd.sym} 150 -110 0 0 {name=l13 lab=GND}
C {vsource.sym} 80 50 0 0 {name=Vd0 value="pulse(0 1.2 0 100p 100p 9n 20n)"}
N 80 20 80 0 {
lab=d0}
C {lab_pin.sym} 80 0 3 0 {name=p14 sig_type=std_logic lab=d0}
N 80 80 80 90 {
lab=GND}
C {gnd.sym} 80 90 0 0 {name=l15 lab=GND}
T {d0} 105 40 0 0 0.2 0.2 {layer=5}
C {vsource.sym} 80 170 0 0 {name=Vd1 value="pulse(0 1.2 0 100p 100p 19n 40n)"}
N 80 140 80 120 {
lab=d1}
C {lab_pin.sym} 80 120 3 0 {name=p16 sig_type=std_logic lab=d1}
N 80 200 80 210 {
lab=GND}
C {gnd.sym} 80 210 0 0 {name=l17 lab=GND}
T {d1} 105 160 0 0 0.2 0.2 {layer=5}
C {vsource.sym} 80 290 0 0 {name=Vd2 value="pulse(0 1.2 0 100p 100p 39n 80n)"}
N 80 260 80 240 {
lab=d2}
C {lab_pin.sym} 80 240 3 0 {name=p18 sig_type=std_logic lab=d2}
N 80 320 80 330 {
lab=GND}
C {gnd.sym} 80 330 0 0 {name=l19 lab=GND}
T {d2} 105 280 0 0 0.2 0.2 {layer=5}
C {vsource.sym} 80 410 0 0 {name=Vd3 value="pulse(0 1.2 0 100p 100p 79n 160n)"}
N 80 380 80 360 {
lab=d3}
C {lab_pin.sym} 80 360 3 0 {name=p20 sig_type=std_logic lab=d3}
N 80 440 80 450 {
lab=GND}
C {gnd.sym} 80 450 0 0 {name=l21 lab=GND}
T {d3} 105 400 0 0 0.2 0.2 {layer=5}
C {vsource.sym} 260 50 0 0 {name=Vd4 value="pulse(0 1.2 0 100p 100p 159n 320n)"}
N 260 20 260 0 {
lab=d4}
C {lab_pin.sym} 260 0 3 0 {name=p22 sig_type=std_logic lab=d4}
N 260 80 260 90 {
lab=GND}
C {gnd.sym} 260 90 0 0 {name=l23 lab=GND}
T {d4} 285 40 0 0 0.2 0.2 {layer=5}
C {vsource.sym} 260 170 0 0 {name=Vd5 value="pulse(0 1.2 0 100p 100p 319n 640n)"}
N 260 140 260 120 {
lab=d5}
C {lab_pin.sym} 260 120 3 0 {name=p24 sig_type=std_logic lab=d5}
N 260 200 260 210 {
lab=GND}
C {gnd.sym} 260 210 0 0 {name=l25 lab=GND}
T {d5} 285 160 0 0 0.2 0.2 {layer=5}
C {vsource.sym} 260 290 0 0 {name=Vd6 value="pulse(0 1.2 0 100p 100p 639n 1280n)"}
N 260 260 260 240 {
lab=d6}
C {lab_pin.sym} 260 240 3 0 {name=p26 sig_type=std_logic lab=d6}
N 260 320 260 330 {
lab=GND}
C {gnd.sym} 260 330 0 0 {name=l27 lab=GND}
T {d6} 285 280 0 0 0.2 0.2 {layer=5}
C {vsource.sym} 260 410 0 0 {name=Vd7 value="pulse(0 1.2 0 100p 100p 1279n 2560n)"}
N 260 380 260 360 {
lab=d7}
C {lab_pin.sym} 260 360 3 0 {name=p28 sig_type=std_logic lab=d7}
N 260 440 260 450 {
lab=GND}
C {gnd.sym} 260 450 0 0 {name=l29 lab=GND}
T {d7} 285 400 0 0 0.2 0.2 {layer=5}
C {code_shown.sym} 60 -280 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {code_shown.sym} 350 -280 0 0 {name=NGSPICE only_toplevel=true
value="
.param temp=27
.control
save all
tran 1n 2560n
write r2r_dac_8bit_tb.raw
.endc
"}
B 2 700 -300 1250 0 {flags=graph
y1=0
y2=1.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2560e-9
divx=5
subdivx=1
node=vout
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1}
C {launcher.sym} 700 20 0 0 {name=h1
descr="Load waves"
tclcommand="
xschem raw_read $netlist_dir/r2r_dac_8bit_tb.raw tran
xschem setprop rect 2 0 fullxzoom
"
}
C {launcher.sym} 700 50 0 0 {name=h2
descr="Simulate"
tclcommand="
set_sim_defaults
set sim(spice,1,cmd) {ngspice \"$N\" -a}
set sim(spice,default) 0
xschem netlist
simulate
"
}
