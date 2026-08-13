v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {PWM Comparator Testbench — DC Transfer Sweep} 60 -330 0 0 0.4 0.4 {}
C {pwm_comp.sym} 500 100 0 0 {name=XDUT}
N 370 80 400 80 {
lab=vinp}
C {lab_pin.sym} 370 80 0 0 {name=p1 sig_type=std_logic lab=vinp}
N 370 120 400 120 {
lab=vinn}
C {lab_pin.sym} 370 120 0 0 {name=p2 sig_type=std_logic lab=vinn}
N 600 100 650 100 {
lab=out}
C {lab_pin.sym} 650 100 0 1 {name=p3 sig_type=std_logic lab=out}
N 600 60 650 60 {
lab=vdd}
C {lab_pin.sym} 650 60 0 1 {name=p4 sig_type=std_logic lab=vdd}
N 600 140 650 140 {
lab=GND}
C {lab_pin.sym} 650 140 0 1 {name=p5 sig_type=std_logic lab=GND}
C {vsource.sym} 150 -150 0 0 {name=Vdd value=1.2}
N 150 -180 150 -200 {
lab=vdd}
C {lab_pin.sym} 150 -200 3 0 {name=p6 sig_type=std_logic lab=vdd}
N 150 -120 150 -110 {
lab=GND}
C {gnd.sym} 150 -110 0 0 {name=l7 lab=GND}
C {vsource.sym} 80 50 0 0 {name=Vvinp value="PWL(0 0 100n 1.2 200n 0)"}
N 80 20 80 0 {
lab=vinp}
C {lab_pin.sym} 80 0 3 0 {name=p8 sig_type=std_logic lab=vinp}
N 80 80 80 90 {
lab=GND}
C {gnd.sym} 80 90 0 0 {name=l9 lab=GND}
T {vinp: 0\u21921.2V\u21920V ramp} 105 40 0 0 0.2 0.2 {layer=5}
C {vsource.sym} 80 200 0 0 {name=Vvinn value=0.6}
N 80 170 80 150 {
lab=vinn}
C {lab_pin.sym} 80 150 3 0 {name=p10 sig_type=std_logic lab=vinn}
N 80 230 80 240 {
lab=GND}
C {gnd.sym} 80 240 0 0 {name=l11 lab=GND}
T {vinn: DC 0.6V (VDD/2)} 105 190 0 0 0.2 0.2 {layer=5}
C {code_shown.sym} 60 -280 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {code_shown.sym} 350 -280 0 0 {name=NGSPICE only_toplevel=true
value="
.param temp=27
.control
save all
tran 0.1n 200n
write pwm_comp_tb.raw
.endc
"}
B 2 700 -300 1250 0 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=200e-9
divx=5
subdivx=1
node=vinp
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1}
B 2 700 0 1250 300 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=200e-9
divx=5
subdivx=1
node=out
color=7
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1}
C {launcher.sym} 700 320 0 0 {name=h1
descr="Load waves"
tclcommand="
xschem raw_read $netlist_dir/pwm_comp_tb.raw tran
xschem setprop rect 2 0 fullxzoom
"
}
C {launcher.sym} 700 350 0 0 {name=h2
descr="Simulate"
tclcommand="
set_sim_defaults
set sim(spice,1,cmd) \{ngspice \"$N\" -a\}
set sim(spice,default) 0
xschem netlist
simulate
"
}
