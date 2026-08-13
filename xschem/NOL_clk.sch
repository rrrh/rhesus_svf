v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 620 -160 1420 240 {flags=graph
y1=-0.11809644
y2=1.2492256
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3.1957022e-08
x2=1.2625468e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="phi1
n3
sc_clk"
color="5 8 4"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/NOL_clk.raw
sim_type=tran
autoload=0}
T {===== NOL CLOCK =====} -250 -150 0 0 0.25 0.25 {layer=5}
T {sc_clk → n1 → phi1 → n3 (phi2=NOT(phi1))} -250 -130 0 0 0.2 0.2 {layer=5}
T {n3 = NOT(phi1) used as phi2} 380 -10 0 0 0.18 0.18 {layer=5}
N -140 -100 -110 -100 {lab=vdd}
N -140 -70 -110 -70 {lab=vdd}
N -140 -40 -140 0 {lab=n1}
N -140 80 -110 80 {lab=GND}
N -140 0 -140 20 {lab=n1}
N 0 -70 30 -70 {lab=n1}
N 70 -100 100 -100 {lab=vdd}
N 70 -70 100 -70 {lab=vdd}
N 70 -40 70 0 {lab=phi1}
N 0 50 30 50 {lab=n1}
N 70 50 100 50 {lab=GND}
N 70 80 100 80 {lab=GND}
N 70 0 70 20 {lab=phi1}
N 190 -70 220 -70 {lab=phi1}
N 260 -100 290 -100 {lab=vdd}
N 260 -70 290 -70 {lab=vdd}
N 260 -40 260 0 {lab=n3}
N 260 50 290 50 {lab=GND}
N 260 80 290 80 {lab=GND}
N 260 0 260 20 {lab=n3}
N 70 0 190 0 {lab=phi1}
N 190 0 190 50 {lab=phi1}
N 190 -70 190 0 {lab=phi1}
N 190 50 220 50 {lab=phi1}
N 100 -100 100 -70 {lab=vdd}
N 290 -100 290 -70 {lab=vdd}
N 100 50 100 80 {lab=GND}
N 290 50 290 80 {lab=GND}
N 0 -70 30 -70 {lab=n1}
N 70 -70 100 -70 {lab=vdd}
N 0 50 30 50 {lab=n1}
N 70 50 100 50 {lab=GND}
N 260 -70 290 -70 {lab=vdd}
N 260 50 290 50 {lab=GND}
N 0 -70 0 0 {lab=n1}
N 0 0 0 50 {lab=n1}
N -140 0 0 0 {lab=n1}
N -110 -100 -110 -70 {lab=vdd}
N -110 50 -110 80 {lab=GND}
N -140 50 -110 50 {lab=GND}
N -210 -70 -180 -70 {lab=sc_clk}
N -210 -70 -210 50 {lab=sc_clk}
N -210 50 -180 50 {lab=sc_clk}
N 260 0 290 0 {lab=n3}
N -240 0 -210 0 {lab=sc_clk}
N -370 170 -370 190 {lab=sc_clk}
N -370 250 -370 270 {lab=GND}
N -500 170 -500 190 {lab=vdd}
N -500 250 -500 270 {lab=GND}
N -370 190 -370 190 {lab=sc_clk}
N -370 250 -370 250 {lab=GND}
C {sg13g2_pr/sg13_lv_pmos.sym} -160 -70 0 0 {name=XXMP_n0
l=0.13e-6 w=2e-6 ng=1 m=1 model=sg13_lv_pmos spiceprefix=X}
C {lab_pin.sym} -110 -100 0 0 {name=l11 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} -160 50 0 0 {name=XXMN_n0
l=0.13e-6 w=1e-6 ng=1 m=1 model=sg13_lv_nmos spiceprefix=X}
C {lab_pin.sym} -240 0 0 0 {name=l13 sig_type=std_logic lab=sc_clk}
C {sg13g2_pr/sg13_lv_pmos.sym} 50 -70 0 0 {name=XXMP_n1
l=0.13e-6 w=2e-6 ng=1 m=1 model=sg13_lv_pmos spiceprefix=X}
C {lab_pin.sym} 100 -100 0 0 {name=l18 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 50 50 0 0 {name=XXMN_n1
l=0.13e-6 w=1e-6 ng=1 m=1 model=sg13_lv_nmos spiceprefix=X}
C {sg13g2_pr/sg13_lv_pmos.sym} 240 -70 0 0 {name=XXMP_n2
l=0.13e-6 w=2e-6 ng=1 m=1 model=sg13_lv_pmos spiceprefix=X}
C {lab_pin.sym} 290 -100 0 0 {name=l25 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 240 50 0 0 {name=XXMN_n2
l=0.13e-6 w=1e-6 ng=1 m=1 model=sg13_lv_nmos spiceprefix=X}
C {lab_pin.sym} 290 0 2 0 {name=l30 sig_type=std_logic lab=n3}
C {lab_pin.sym} 70 0 0 0 {name=l27 sig_type=std_logic lab=phi1}
C {lab_pin.sym} -140 0 0 0 {name=l16 sig_type=std_logic lab=n1}
C {vsource.sym} -370 220 0 0 {name=Vclk value="PULSE(0 \{vdd_val\} 0 1n 1n 20n 41n)"}
C {lab_pin.sym} -370 170 0 0 {name=s2 sig_type=std_logic lab=sc_clk}
C {gnd.sym} -370 270 0 0 {name=l3 lab=GND
}
C {vsource.sym} -500 220 0 0 {name=Vdd value="\{vdd_val\}"}
C {lab_pin.sym} -500 170 0 0 {name=s1 sig_type=std_logic lab=vdd}
C {code_shown.sym} -570 -310 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib /data/Projects/chip/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
.lib /data/Projects/chip/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerCAP.lib cap_typ
"}
C {code_shown.sym} 430 -310 0 0 {name=NGSPICE only_toplevel=true
value="
.options method=gear reltol=5e-3 abstol=1e-12 vntol=1e-6 gmin=1e-12
.param vdd_val = 1.2
.param sc_clk = 24M

.tran 1n 500n
"
}
C {gnd.sym} -500 270 0 0 {name=l1 lab=GND
}
C {gnd.sym} -110 80 0 0 {name=l2 lab=GND
}
C {gnd.sym} 100 80 0 0 {name=l4 lab=GND
}
C {gnd.sym} 290 80 0 0 {name=l5 lab=GND
}
C {launcher.sym} 670 290 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/NOL_clk.raw tran"
}
