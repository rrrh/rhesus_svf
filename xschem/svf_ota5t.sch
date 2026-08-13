v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {5T OTA — External Bias} 100 -60 0 0 0.4 0.4 {}
T {PMOS load W=2u00B5m L=0.5u00B5m, NMOS diff W=4u00B5m L=0.5u00B5m, tail W=2u00B5m L=0.5u00B5m} 100 -40 0 0 0.2 0.2 {layer=5}
T {OTA} 280 50 0 0 0.35 0.35 {layer=5}
N 210 100 240 100 {
lab=mirr}
N 120 70 170 70 {
lab=vdd}
N 170 130 170 220 {
lab=mirr}
N 350 100 380 100 {
lab=mirr}
N 420 130 420 220 {
lab=vout}
N 210 250 240 250 {
lab=vinp}
N 350 250 380 250 {
lab=vinn}
N 230 380 260 380 {
lab=vbias}
N 120 100 170 100 {lab=vdd}
N 420 70 470 70 {lab=vdd}
N 420 100 470 100 {lab=vdd}
N 170 280 170 300 {lab=tail}
N 300 300 300 330 {lab=tail}
N 420 280 420 300 {lab=tail}
N 170 300 300 300 {lab=tail}
N 300 300 420 300 {lab=tail}
N 300 330 300 350 {lab=tail}
N 300 380 350 380 {lab=vss}
N 350 380 350 420 {lab=vss}
N 300 410 300 420 {lab=vss}
N 300 420 350 420 {lab=vss}
N 170 160 290 160 {lab=mirr}
N 290 100 290 160 {lab=mirr}
N 240 100 290 100 {lab=mirr}
N 290 100 350 100 {lab=mirr}
N 120 70 120 100 {lab=vdd}
N 470 70 470 100 {lab=vdd}
N 420 180 460 180 {lab=vout}
N 120 250 170 250 {lab=vss}
N 420 250 480 250 {lab=vss}
C {iopin.sym} 100 420 0 1 {name=p1 lab=vdd}
C {iopin.sym} 100 440 0 1 {name=p3 lab=vss}
C {ipin.sym} 100 500 0 0 {name=p5 lab=vinp}
C {ipin.sym} 100 520 0 0 {name=p6 lab=vinn}
C {opin.sym} 460 180 0 0 {name=p7 lab=vout}
C {ipin.sym} 100 540 0 0 {name=p8 lab=vbias}
C {sg13g2_pr/sg13_lv_pmos.sym} 190 100 0 1 {name=XM3
l=0.5e-6
w=2e-6
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
C {lab_pin.sym} 120 70 0 0 {name=p10 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_pmos.sym} 400 100 0 0 {name=XM4
l=0.5e-6
w=2e-6
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
C {lab_pin.sym} 470 70 0 1 {name=p14 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 190 250 0 1 {name=XM1
l=0.5e-6
w=4e-6
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X}
C {lab_pin.sym} 240 250 0 1 {name=p17 sig_type=std_logic lab=vinp}
C {lab_pin.sym} 120 250 0 0 {name=p18 sig_type=std_logic lab=vss}
C {sg13g2_pr/sg13_lv_nmos.sym} 400 250 0 0 {name=XM2
l=0.5e-6
w=4e-6
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X}
C {lab_pin.sym} 350 250 0 0 {name=p20 sig_type=std_logic lab=vinn}
C {lab_pin.sym} 480 250 0 1 {name=p21 sig_type=std_logic lab=vss}
C {sg13g2_pr/sg13_lv_nmos.sym} 280 380 0 0 {name=XM5
l=0.5e-6
w=2e-6
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X}
C {lab_pin.sym} 230 380 0 0 {name=p23 sig_type=std_logic lab=vbias}
C {lab_pin.sym} 350 420 0 1 {name=p26 sig_type=std_logic lab=vss}
C {lab_pin.sym} 300 330 0 0 {name=p2 sig_type=std_logic lab=tail}
C {lab_pin.sym} 290 130 0 0 {name=p4 sig_type=std_logic lab=mirr}
