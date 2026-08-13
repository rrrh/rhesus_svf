v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {8-bit R-2R DAC with Complementary CMOS Switches} 20 -120 0 0 0.5 0.5 {}
T {R = 2k\u03A9 (rhigh W=2\u00B5m L=3.08\u00B5m), NMOS W=3\u00B5m, PMOS W=6\u00B5m} 20 -100 0 0 0.3 0.3 {layer=5}
C {iopin.sym} 50 -80 0 0 {name=p1 lab=vdd}
C {lab_pin.sym} 50 -80 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {iopin.sym} 50 340 0 0 {name=p3 lab=vss}
C {lab_pin.sym} 50 340 0 0 {name=p4 sig_type=std_logic lab=vss}
C {sg13g2_pr/rhigh.sym} 100 -15 0 0 {name=XRs0
w=2e-6
l=3.08e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
m=1}
N 100 -70 100 -45 {
lab=vdd}
C {lab_pin.sym} 100 -70 3 0 {name=p5 sig_type=std_logic lab=vdd}
N 100 15 100 25 {
lab=j0}
N 100 15 230 15 {
lab=j0}
N 230 15 230 -45 {
lab=j0}
N 230 -45 260 -45 {
lab=j0}
C {sg13g2_pr/rhigh.sym} 100 55 0 0 {name=XR2R_0
w=2e-6
l=6.16e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
m=1}
N 100 85 100 215 {
lab=sw0}
C {sg13g2_pr/sg13_lv_pmos.sym} 100 135 0 0 {name=XMp0
l=0.13e-6
w=6e-6
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
N 100 165 120 165 {
lab=sw0}
N 120 105 140 105 {
lab=vdd}
C {lab_pin.sym} 140 105 0 0 {name=p6 sig_type=std_logic lab=vdd}
N 120 135 140 135 {
lab=vdd}
C {lab_pin.sym} 140 135 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 100 245 0 0 {name=XMn0
l=0.13e-6
w=3e-6
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X}
N 100 215 120 215 {
lab=sw0}
N 120 275 140 275 {
lab=vss}
C {lab_pin.sym} 140 275 0 0 {name=p8 sig_type=std_logic lab=vss}
N 120 245 140 245 {
lab=vss}
C {lab_pin.sym} 140 245 0 0 {name=p9 sig_type=std_logic lab=vss}
N 80 135 80 245 {
lab=d0}
N 50 190 80 190 {
lab=d0}
C {lab_pin.sym} 50 190 0 0 {name=p10 sig_type=std_logic lab=d0}
T {j0} 105 3 0 0 0.2 0.2 {layer=15}
T {LSB} 50 200 0 0 0.2 0.2 {layer=5}
C {sg13g2_pr/rhigh.sym} 260 -15 0 0 {name=XRs1
w=2e-6
l=3.08e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
m=1}
N 260 15 260 25 {
lab=j1}
N 260 15 390 15 {
lab=j1}
N 390 15 390 -45 {
lab=j1}
N 390 -45 420 -45 {
lab=j1}
C {sg13g2_pr/rhigh.sym} 260 55 0 0 {name=XR2R_1
w=2e-6
l=6.16e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
m=1}
N 260 85 260 215 {
lab=sw1}
C {sg13g2_pr/sg13_lv_pmos.sym} 260 135 0 0 {name=XMp1
l=0.13e-6
w=6e-6
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
N 260 165 280 165 {
lab=sw1}
N 280 105 300 105 {
lab=vdd}
C {lab_pin.sym} 300 105 0 0 {name=p11 sig_type=std_logic lab=vdd}
N 280 135 300 135 {
lab=vdd}
C {lab_pin.sym} 300 135 0 0 {name=p12 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 260 245 0 0 {name=XMn1
l=0.13e-6
w=3e-6
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X}
N 260 215 280 215 {
lab=sw1}
N 280 275 300 275 {
lab=vss}
C {lab_pin.sym} 300 275 0 0 {name=p13 sig_type=std_logic lab=vss}
N 280 245 300 245 {
lab=vss}
C {lab_pin.sym} 300 245 0 0 {name=p14 sig_type=std_logic lab=vss}
N 240 135 240 245 {
lab=d1}
N 210 190 240 190 {
lab=d1}
C {lab_pin.sym} 210 190 0 0 {name=p15 sig_type=std_logic lab=d1}
T {j1} 265 3 0 0 0.2 0.2 {layer=15}
C {sg13g2_pr/rhigh.sym} 420 -15 0 0 {name=XRs2
w=2e-6
l=3.08e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
m=1}
N 420 15 420 25 {
lab=j2}
N 420 15 550 15 {
lab=j2}
N 550 15 550 -45 {
lab=j2}
N 550 -45 580 -45 {
lab=j2}
C {sg13g2_pr/rhigh.sym} 420 55 0 0 {name=XR2R_2
w=2e-6
l=6.16e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
m=1}
N 420 85 420 215 {
lab=sw2}
C {sg13g2_pr/sg13_lv_pmos.sym} 420 135 0 0 {name=XMp2
l=0.13e-6
w=6e-6
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
N 420 165 440 165 {
lab=sw2}
N 440 105 460 105 {
lab=vdd}
C {lab_pin.sym} 460 105 0 0 {name=p16 sig_type=std_logic lab=vdd}
N 440 135 460 135 {
lab=vdd}
C {lab_pin.sym} 460 135 0 0 {name=p17 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 420 245 0 0 {name=XMn2
l=0.13e-6
w=3e-6
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X}
N 420 215 440 215 {
lab=sw2}
N 440 275 460 275 {
lab=vss}
C {lab_pin.sym} 460 275 0 0 {name=p18 sig_type=std_logic lab=vss}
N 440 245 460 245 {
lab=vss}
C {lab_pin.sym} 460 245 0 0 {name=p19 sig_type=std_logic lab=vss}
N 400 135 400 245 {
lab=d2}
N 370 190 400 190 {
lab=d2}
C {lab_pin.sym} 370 190 0 0 {name=p20 sig_type=std_logic lab=d2}
T {j2} 425 3 0 0 0.2 0.2 {layer=15}
C {sg13g2_pr/rhigh.sym} 580 -15 0 0 {name=XRs3
w=2e-6
l=3.08e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
m=1}
N 580 15 580 25 {
lab=j3}
N 580 15 710 15 {
lab=j3}
N 710 15 710 -45 {
lab=j3}
N 710 -45 740 -45 {
lab=j3}
C {sg13g2_pr/rhigh.sym} 580 55 0 0 {name=XR2R_3
w=2e-6
l=6.16e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
m=1}
N 580 85 580 215 {
lab=sw3}
C {sg13g2_pr/sg13_lv_pmos.sym} 580 135 0 0 {name=XMp3
l=0.13e-6
w=6e-6
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
N 580 165 600 165 {
lab=sw3}
N 600 105 620 105 {
lab=vdd}
C {lab_pin.sym} 620 105 0 0 {name=p21 sig_type=std_logic lab=vdd}
N 600 135 620 135 {
lab=vdd}
C {lab_pin.sym} 620 135 0 0 {name=p22 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 580 245 0 0 {name=XMn3
l=0.13e-6
w=3e-6
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X}
N 580 215 600 215 {
lab=sw3}
N 600 275 620 275 {
lab=vss}
C {lab_pin.sym} 620 275 0 0 {name=p23 sig_type=std_logic lab=vss}
N 600 245 620 245 {
lab=vss}
C {lab_pin.sym} 620 245 0 0 {name=p24 sig_type=std_logic lab=vss}
N 560 135 560 245 {
lab=d3}
N 530 190 560 190 {
lab=d3}
C {lab_pin.sym} 530 190 0 0 {name=p25 sig_type=std_logic lab=d3}
T {j3} 585 3 0 0 0.2 0.2 {layer=15}
C {sg13g2_pr/rhigh.sym} 740 -15 0 0 {name=XRs4
w=2e-6
l=3.08e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
m=1}
N 740 15 740 25 {
lab=j4}
N 740 15 870 15 {
lab=j4}
N 870 15 870 -45 {
lab=j4}
N 870 -45 900 -45 {
lab=j4}
C {sg13g2_pr/rhigh.sym} 740 55 0 0 {name=XR2R_4
w=2e-6
l=6.16e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
m=1}
N 740 85 740 215 {
lab=sw4}
C {sg13g2_pr/sg13_lv_pmos.sym} 740 135 0 0 {name=XMp4
l=0.13e-6
w=6e-6
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
N 740 165 760 165 {
lab=sw4}
N 760 105 780 105 {
lab=vdd}
C {lab_pin.sym} 780 105 0 0 {name=p26 sig_type=std_logic lab=vdd}
N 760 135 780 135 {
lab=vdd}
C {lab_pin.sym} 780 135 0 0 {name=p27 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 740 245 0 0 {name=XMn4
l=0.13e-6
w=3e-6
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X}
N 740 215 760 215 {
lab=sw4}
N 760 275 780 275 {
lab=vss}
C {lab_pin.sym} 780 275 0 0 {name=p28 sig_type=std_logic lab=vss}
N 760 245 780 245 {
lab=vss}
C {lab_pin.sym} 780 245 0 0 {name=p29 sig_type=std_logic lab=vss}
N 720 135 720 245 {
lab=d4}
N 690 190 720 190 {
lab=d4}
C {lab_pin.sym} 690 190 0 0 {name=p30 sig_type=std_logic lab=d4}
T {j4} 745 3 0 0 0.2 0.2 {layer=15}
C {sg13g2_pr/rhigh.sym} 900 -15 0 0 {name=XRs5
w=2e-6
l=3.08e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
m=1}
N 900 15 900 25 {
lab=j5}
N 900 15 1030 15 {
lab=j5}
N 1030 15 1030 -45 {
lab=j5}
N 1030 -45 1060 -45 {
lab=j5}
C {sg13g2_pr/rhigh.sym} 900 55 0 0 {name=XR2R_5
w=2e-6
l=6.16e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
m=1}
N 900 85 900 215 {
lab=sw5}
C {sg13g2_pr/sg13_lv_pmos.sym} 900 135 0 0 {name=XMp5
l=0.13e-6
w=6e-6
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
N 900 165 920 165 {
lab=sw5}
N 920 105 940 105 {
lab=vdd}
C {lab_pin.sym} 940 105 0 0 {name=p31 sig_type=std_logic lab=vdd}
N 920 135 940 135 {
lab=vdd}
C {lab_pin.sym} 940 135 0 0 {name=p32 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 900 245 0 0 {name=XMn5
l=0.13e-6
w=3e-6
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X}
N 900 215 920 215 {
lab=sw5}
N 920 275 940 275 {
lab=vss}
C {lab_pin.sym} 940 275 0 0 {name=p33 sig_type=std_logic lab=vss}
N 920 245 940 245 {
lab=vss}
C {lab_pin.sym} 940 245 0 0 {name=p34 sig_type=std_logic lab=vss}
N 880 135 880 245 {
lab=d5}
N 850 190 880 190 {
lab=d5}
C {lab_pin.sym} 850 190 0 0 {name=p35 sig_type=std_logic lab=d5}
T {j5} 905 3 0 0 0.2 0.2 {layer=15}
C {sg13g2_pr/rhigh.sym} 1060 -15 0 0 {name=XRs6
w=2e-6
l=3.08e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
m=1}
N 1060 15 1060 25 {
lab=j6}
N 1060 15 1190 15 {
lab=j6}
N 1190 15 1190 -45 {
lab=j6}
N 1190 -45 1220 -45 {
lab=j6}
C {sg13g2_pr/rhigh.sym} 1060 55 0 0 {name=XR2R_6
w=2e-6
l=6.16e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
m=1}
N 1060 85 1060 215 {
lab=sw6}
C {sg13g2_pr/sg13_lv_pmos.sym} 1060 135 0 0 {name=XMp6
l=0.13e-6
w=6e-6
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
N 1060 165 1080 165 {
lab=sw6}
N 1080 105 1100 105 {
lab=vdd}
C {lab_pin.sym} 1100 105 0 0 {name=p36 sig_type=std_logic lab=vdd}
N 1080 135 1100 135 {
lab=vdd}
C {lab_pin.sym} 1100 135 0 0 {name=p37 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 1060 245 0 0 {name=XMn6
l=0.13e-6
w=3e-6
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X}
N 1060 215 1080 215 {
lab=sw6}
N 1080 275 1100 275 {
lab=vss}
C {lab_pin.sym} 1100 275 0 0 {name=p38 sig_type=std_logic lab=vss}
N 1080 245 1100 245 {
lab=vss}
C {lab_pin.sym} 1100 245 0 0 {name=p39 sig_type=std_logic lab=vss}
N 1040 135 1040 245 {
lab=d6}
N 1010 190 1040 190 {
lab=d6}
C {lab_pin.sym} 1010 190 0 0 {name=p40 sig_type=std_logic lab=d6}
T {j6} 1065 3 0 0 0.2 0.2 {layer=15}
C {sg13g2_pr/rhigh.sym} 1220 -15 0 0 {name=XRs7
w=2e-6
l=3.08e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
m=1}
N 1220 15 1220 25 {
lab=j7}
N 1220 15 1300 15 {
lab=vout}
C {opin.sym} 1300 15 0 0 {name=p41 lab=vout}
C {sg13g2_pr/rhigh.sym} 1220 55 0 0 {name=XR2R_7
w=2e-6
l=6.16e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
m=1}
N 1220 85 1220 215 {
lab=sw7}
C {sg13g2_pr/sg13_lv_pmos.sym} 1220 135 0 0 {name=XMp7
l=0.13e-6
w=6e-6
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
N 1220 165 1240 165 {
lab=sw7}
N 1240 105 1260 105 {
lab=vdd}
C {lab_pin.sym} 1260 105 0 0 {name=p42 sig_type=std_logic lab=vdd}
N 1240 135 1260 135 {
lab=vdd}
C {lab_pin.sym} 1260 135 0 0 {name=p43 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 1220 245 0 0 {name=XMn7
l=0.13e-6
w=3e-6
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X}
N 1220 215 1240 215 {
lab=sw7}
N 1240 275 1260 275 {
lab=vss}
C {lab_pin.sym} 1260 275 0 0 {name=p44 sig_type=std_logic lab=vss}
N 1240 245 1260 245 {
lab=vss}
C {lab_pin.sym} 1260 245 0 0 {name=p45 sig_type=std_logic lab=vss}
N 1200 135 1200 245 {
lab=d7}
N 1170 190 1200 190 {
lab=d7}
C {lab_pin.sym} 1170 190 0 0 {name=p46 sig_type=std_logic lab=d7}
T {j7} 1225 3 0 0 0.2 0.2 {layer=15}
T {MSB} 1170 200 0 0 0.2 0.2 {layer=5}
C {ipin.sym} 50 310 0 0 {name=p47 lab=d0}
C {ipin.sym} 210 310 0 0 {name=p48 lab=d1}
C {ipin.sym} 370 310 0 0 {name=p49 lab=d2}
C {ipin.sym} 530 310 0 0 {name=p50 lab=d3}
C {ipin.sym} 690 310 0 0 {name=p51 lab=d4}
C {ipin.sym} 850 310 0 0 {name=p52 lab=d5}
C {ipin.sym} 1010 310 0 0 {name=p53 lab=d6}
C {ipin.sym} 1170 310 0 0 {name=p54 lab=d7}
