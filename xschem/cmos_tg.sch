v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {CMOS Transmission Gate} 100 -60 0 0 0.4 0.4 {}
T {NMOS W=2u00B5m L=0.13u00B5m, PMOS W=4u00B5m L=0.13u00B5m} 100 -40 0 0 0.2 0.2 {layer=5}
N 150 100 180 100 {
lab=ctrl_n}
N 480 100 510 100 {
lab=ctrl_p}
N 220 100 280 100 {lab=vss}
N 370 100 440 100 {lab=vdd}
N 220 130 330 130 {lab=b}
N 330 130 440 130 {lab=b}
N 220 70 330 70 {lab=a}
N 330 70 440 70 {lab=a}
N 330 40 330 70 {lab=a}
N 330 130 330 170 {lab=b}
N 280 100 280 170 {lab=vss}
N 370 40 370 100 {lab=vdd}
C {iopin.sym} 330 40 3 0 {name=p1 lab=a}
C {iopin.sym} 330 170 1 0 {name=p2 lab=b}
C {ipin.sym} 510 100 2 0 {name=p4 lab=ctrl_p}
C {iopin.sym} 280 170 1 0 {name=p5 lab=vss}
C {iopin.sym} 370 40 3 0 {name=p6 lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 200 100 0 0 {name=XMN
l=0.13e-6
w=2e-6
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X}
C {sg13g2_pr/sg13_lv_pmos.sym} 460 100 0 1 {name=XMP
l=0.13e-6
w=4e-6
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
C {ipin.sym} 150 100 0 0 {name=p3 lab=ctrl_n}
