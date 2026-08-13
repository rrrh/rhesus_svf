v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 5 57.5 -92.5 62.5 -87.5 {name=vdd
dir=inout}
B 5 -42.5 -2.5 -37.5 2.5 {name=vcm
dir=inout}
N 40 -30 40 10 {
lab=vcm}
N 40 10 40 30 {
lab=vcm}
N -30 -60 0 -60 {lab=vcm}
N -30 -60 -30 60 {lab=vcm}
N -30 60 0 60 {lab=vcm}
N -40 0 -30 0 {lab=vcm}
N 40 -90 60 -90 {lab=vdd}
N 40 -60 60 -60 {lab=vdd}
N 60 -90 60 -60 {lab=vdd}
N 40 90 60 90 {lab=vss}
N 60 60 60 90 {lab=vss}
N 40 60 60 60 {lab=vss}
N -30 0 40 0 {lab=vcm}
C {sg13g2_pr/sg13_lv_pmos.sym} 20 -60 0 0 {name=XXMPbias
l=0.5e-6
w=2e-6
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
C {lab_pin.sym} 60 -90 2 0 {name=l2 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 20 60 0 0 {name=XXMNbias
l=0.5e-6
w=2e-6
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X}
C {lab_pin.sym} -40 0 0 0 {name=l4 sig_type=std_logic lab=vcm}
C {lab_pin.sym} 60 90 2 0 {name=l6 sig_type=std_logic lab=vss}
C {code_shown.sym} -60 -190 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib /data/Projects/chip/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
.lib /data/Projects/chip/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerCAP.lib cap_typ
"}
C {opin.sym} 40 0 0 0 {name=p1 lab=vcm}
C {ipin.sym} 60 -90 2 0 {name=p2 lab=vdd}
C {ipin.sym} 60 90 2 0 {name=p3 lab=vss}
