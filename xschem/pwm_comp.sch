v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {PWM Comparator — 5T OTA + CMOS Inverter} 100 -60 0 0 0.5 0.5 {}
T {OTA: diff pair W=4\u00B5m L=0.5\u00B5m, load W=2\u00B5m L=0.5\u00B5m, tail W=2\u00B5m L=0.5\u00B5m} 100 -40 0 0 0.25 0.25 {layer=5}
T {Inverter: NMOS W=0.5\u00B5m L=0.13\u00B5m, PMOS W=1\u00B5m L=0.13\u00B5m} 100 -25 0 0 0.25 0.25 {layer=5}
T {OTA} 280 50 0 0 0.35 0.35 {layer=5}
T {Inverter} 590 50 0 0 0.35 0.35 {layer=5}
C {iopin.sym} 300 -10 0 0 {name=p1 lab=vdd}
C {lab_pin.sym} 300 -10 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {iopin.sym} 300 460 0 0 {name=p3 lab=vss}
C {lab_pin.sym} 300 460 0 0 {name=p4 sig_type=std_logic lab=vss}
C {ipin.sym} 100 500 0 0 {name=p5 lab=vinp}
C {ipin.sym} 300 500 0 0 {name=p6 lab=vinn}
C {opin.sym} 700 175 0 0 {name=p7 lab=out}
C {sg13g2_pr/sg13_lv_pmos.sym} 200 100 0 0 {name=XM3
l=0.5e-6
w=2e-6
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
N 150 100 180 100 {
lab=mirr}
C {lab_pin.sym} 150 100 0 0 {name=p8 sig_type=std_logic lab=mirr}
N 220 70 250 70 {
lab=vdd}
C {lab_pin.sym} 250 70 0 0 {name=p9 sig_type=std_logic lab=vdd}
N 220 100 250 100 {
lab=vdd}
C {lab_pin.sym} 250 100 0 0 {name=p10 sig_type=std_logic lab=vdd}
N 220 130 220 220 {
lab=mirr}
N 220 175 245 175 {
lab=mirr}
C {lab_pin.sym} 245 175 0 0 {name=p30 sig_type=std_logic lab=mirr}
T {mirr} 248 165 0 0 0.2 0.2 {layer=15}
C {sg13g2_pr/sg13_lv_pmos.sym} 400 100 0 0 {name=XM4
l=0.5e-6
w=2e-6
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
N 350 100 380 100 {
lab=mirr}
C {lab_pin.sym} 350 100 0 0 {name=p11 sig_type=std_logic lab=mirr}
N 420 70 450 70 {
lab=vdd}
C {lab_pin.sym} 450 70 0 0 {name=p12 sig_type=std_logic lab=vdd}
N 420 100 450 100 {
lab=vdd}
C {lab_pin.sym} 450 100 0 0 {name=p13 sig_type=std_logic lab=vdd}
N 420 130 420 220 {
lab=ota_o}
N 420 175 445 175 {
lab=ota_o}
C {lab_pin.sym} 445 175 0 0 {name=p31 sig_type=std_logic lab=ota_o}
T {ota_o} 448 165 0 0 0.2 0.2 {layer=15}
C {sg13g2_pr/sg13_lv_nmos.sym} 200 250 0 0 {name=XM1
l=0.5e-6
w=4e-6
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X}
N 150 250 180 250 {
lab=vinp}
C {lab_pin.sym} 150 250 0 0 {name=p14 sig_type=std_logic lab=vinp}
N 220 250 250 250 {
lab=vss}
C {lab_pin.sym} 250 250 0 0 {name=p15 sig_type=std_logic lab=vss}
N 220 280 250 280 {
lab=tail}
C {lab_pin.sym} 250 280 0 0 {name=p16 sig_type=std_logic lab=tail}
C {sg13g2_pr/sg13_lv_nmos.sym} 400 250 0 0 {name=XM2
l=0.5e-6
w=4e-6
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X}
N 350 250 380 250 {
lab=vinn}
C {lab_pin.sym} 350 250 0 0 {name=p17 sig_type=std_logic lab=vinn}
N 420 250 450 250 {
lab=vss}
C {lab_pin.sym} 450 250 0 0 {name=p18 sig_type=std_logic lab=vss}
N 420 280 450 280 {
lab=tail}
C {lab_pin.sym} 450 280 0 0 {name=p19 sig_type=std_logic lab=tail}
C {sg13g2_pr/sg13_lv_nmos.sym} 300 380 0 0 {name=XM5
l=0.5e-6
w=2e-6
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X}
N 250 380 280 380 {
lab=tail}
C {lab_pin.sym} 250 380 0 0 {name=p20 sig_type=std_logic lab=tail}
N 320 350 350 350 {
lab=tail}
C {lab_pin.sym} 350 350 0 0 {name=p21 sig_type=std_logic lab=tail}
N 320 380 350 380 {
lab=vss}
C {lab_pin.sym} 350 380 0 0 {name=p22 sig_type=std_logic lab=vss}
N 320 410 350 410 {
lab=vss}
C {lab_pin.sym} 350 410 0 0 {name=p23 sig_type=std_logic lab=vss}
T {tail (diode)} 255 420 0 0 0.2 0.2 {layer=5}
C {sg13g2_pr/sg13_lv_pmos.sym} 600 100 0 0 {name=XM7
l=0.13e-6
w=1e-6
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
N 550 100 580 100 {
lab=ota_o}
C {lab_pin.sym} 550 100 0 0 {name=p24 sig_type=std_logic lab=ota_o}
N 620 70 650 70 {
lab=vdd}
C {lab_pin.sym} 650 70 0 0 {name=p25 sig_type=std_logic lab=vdd}
N 620 100 650 100 {
lab=vdd}
C {lab_pin.sym} 650 100 0 0 {name=p26 sig_type=std_logic lab=vdd}
N 620 130 620 220 {
lab=out}
C {sg13g2_pr/sg13_lv_nmos.sym} 600 250 0 0 {name=XM6
l=0.13e-6
w=0.5e-6
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X}
N 550 250 580 250 {
lab=ota_o}
C {lab_pin.sym} 550 250 0 0 {name=p27 sig_type=std_logic lab=ota_o}
N 620 250 650 250 {
lab=vss}
C {lab_pin.sym} 650 250 0 0 {name=p28 sig_type=std_logic lab=vss}
N 620 280 650 280 {
lab=vss}
C {lab_pin.sym} 650 280 0 0 {name=p29 sig_type=std_logic lab=vss}
N 620 175 700 175 {
lab=out}
T {out} 640 165 0 0 0.2 0.2 {layer=15}
