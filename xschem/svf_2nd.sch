v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {2nd-Order SC State Variable Filter (Tow-Thomas Biquad)} 50 -500 0 0 0.5 0.5 {}
T {IHP SG13G2 \u2014 3\u00D7 5T OTA, NOL clock, 26 CMOS TGs, 12 MIM caps, 6 inverters} 50 -475 0 0 0.25 0.25 {layer=5}

C {ipin.sym} 50 -460 0 0 {name=p1 lab=vin}
C {opin.sym} 150 -460 0 0 {name=p2 lab=vout}
C {ipin.sym} 250 -460 0 0 {name=p3 lab=sc_clk}
C {ipin.sym} 350 -460 0 0 {name=p4 lab=sel0}
C {ipin.sym} 450 -460 0 0 {name=p5 lab=sel1}
C {ipin.sym} 550 -460 0 0 {name=p6 lab=q0}
C {ipin.sym} 650 -460 0 0 {name=p7 lab=q1}
C {ipin.sym} 750 -460 0 0 {name=p8 lab=q2}
C {ipin.sym} 850 -460 0 0 {name=p9 lab=q3}
C {iopin.sym} 950 -460 0 0 {name=p10 lab=vdd}
C {iopin.sym} 1050 -460 0 0 {name=p11 lab=vss}

T {===== BIAS GENERATOR =====} 50 -420 0 0 0.25 0.25 {layer=5}
C {sg13g2_pr/sg13_lv_pmos.sym} 150 -350 0 0 {name=XXMPbias
l=0.5e-6
w=2e-6
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
N 100 -350 130 -350 {
lab=vcm}
C {lab_pin.sym} 100 -350 0 0 {name=l1 sig_type=std_logic lab=vcm}
N 170 -380 200 -380 {
lab=vdd}
C {lab_pin.sym} 200 -380 0 0 {name=l2 sig_type=std_logic lab=vdd}
N 170 -350 200 -350 {
lab=vdd}
C {lab_pin.sym} 200 -350 0 0 {name=l3 sig_type=std_logic lab=vdd}
N 170 -320 170 -280 {
lab=vcm}
C {sg13g2_pr/sg13_lv_nmos.sym} 150 -230 0 0 {name=XXMNbias
l=0.5e-6
w=2e-6
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X}
N 100 -230 130 -230 {
lab=vcm}
C {lab_pin.sym} 100 -230 0 0 {name=l4 sig_type=std_logic lab=vcm}
N 170 -230 200 -230 {
lab=vss}
C {lab_pin.sym} 200 -230 0 0 {name=l5 sig_type=std_logic lab=vss}
N 170 -200 200 -200 {
lab=vss}
C {lab_pin.sym} 200 -200 0 0 {name=l6 sig_type=std_logic lab=vss}
N 170 -260 170 -280 {
lab=vcm}
N 170 -280 200 -280 {
lab=vcm}
C {lab_pin.sym} 200 -280 0 0 {name=l7 sig_type=std_logic lab=vcm}

T {===== NOL CLOCK =====} 400 -420 0 0 0.25 0.25 {layer=5}
T {sc_clk \u2192 n1 \u2192 phi1 \u2192 n3 (phi2=NOT(phi1))} 400 -400 0 0 0.2 0.2 {layer=5}
C {sg13g2_pr/sg13_lv_pmos.sym} 450 -350 0 0 {name=XXMP_n0
l=0.13e-6 w=2e-6 ng=1 m=1 model=sg13_lv_pmos spiceprefix=X}
N 400 -350 430 -350 {lab=sc_clk}
C {lab_pin.sym} 400 -350 0 0 {name=l10 sig_type=std_logic lab=sc_clk}
N 470 -380 500 -380 {lab=vdd}
C {lab_pin.sym} 500 -380 0 0 {name=l11 sig_type=std_logic lab=vdd}
N 470 -350 500 -350 {lab=vdd}
C {lab_pin.sym} 500 -350 0 0 {name=l12 sig_type=std_logic lab=vdd}
N 470 -320 470 -280 {lab=n1}
C {sg13g2_pr/sg13_lv_nmos.sym} 450 -230 0 0 {name=XXMN_n0
l=0.13e-6 w=1e-6 ng=1 m=1 model=sg13_lv_nmos spiceprefix=X}
N 400 -230 430 -230 {lab=sc_clk}
C {lab_pin.sym} 400 -230 0 0 {name=l13 sig_type=std_logic lab=sc_clk}
N 470 -230 500 -230 {lab=vss}
C {lab_pin.sym} 500 -230 0 0 {name=l14 sig_type=std_logic lab=vss}
N 470 -200 500 -200 {lab=vss}
C {lab_pin.sym} 500 -200 0 0 {name=l15 sig_type=std_logic lab=vss}
N 470 -260 470 -280 {lab=n1}
N 470 -280 500 -280 {lab=n1}
C {lab_pin.sym} 500 -280 0 0 {name=l16 sig_type=std_logic lab=n1}

C {sg13g2_pr/sg13_lv_pmos.sym} 600 -350 0 0 {name=XXMP_n1
l=0.13e-6 w=2e-6 ng=1 m=1 model=sg13_lv_pmos spiceprefix=X}
N 550 -350 580 -350 {lab=n1}
C {lab_pin.sym} 550 -350 0 0 {name=l17 sig_type=std_logic lab=n1}
N 620 -380 650 -380 {lab=vdd}
C {lab_pin.sym} 650 -380 0 0 {name=l18 sig_type=std_logic lab=vdd}
N 620 -350 650 -350 {lab=vdd}
C {lab_pin.sym} 650 -350 0 0 {name=l19 sig_type=std_logic lab=vdd}
N 620 -320 620 -280 {lab=phi1}
C {sg13g2_pr/sg13_lv_nmos.sym} 600 -230 0 0 {name=XXMN_n1
l=0.13e-6 w=1e-6 ng=1 m=1 model=sg13_lv_nmos spiceprefix=X}
N 550 -230 580 -230 {lab=n1}
C {lab_pin.sym} 550 -230 0 0 {name=l20 sig_type=std_logic lab=n1}
N 620 -230 650 -230 {lab=vss}
C {lab_pin.sym} 650 -230 0 0 {name=l21 sig_type=std_logic lab=vss}
N 620 -200 650 -200 {lab=vss}
C {lab_pin.sym} 650 -200 0 0 {name=l22 sig_type=std_logic lab=vss}
N 620 -260 620 -280 {lab=phi1}
N 620 -280 650 -280 {lab=phi1}
C {lab_pin.sym} 650 -280 0 0 {name=l23 sig_type=std_logic lab=phi1}

C {sg13g2_pr/sg13_lv_pmos.sym} 750 -350 0 0 {name=XXMP_n2
l=0.13e-6 w=2e-6 ng=1 m=1 model=sg13_lv_pmos spiceprefix=X}
N 700 -350 730 -350 {lab=phi1}
C {lab_pin.sym} 700 -350 0 0 {name=l24 sig_type=std_logic lab=phi1}
N 770 -380 800 -380 {lab=vdd}
C {lab_pin.sym} 800 -380 0 0 {name=l25 sig_type=std_logic lab=vdd}
N 770 -350 800 -350 {lab=vdd}
C {lab_pin.sym} 800 -350 0 0 {name=l26 sig_type=std_logic lab=vdd}
N 770 -320 770 -280 {lab=n3}
C {sg13g2_pr/sg13_lv_nmos.sym} 750 -230 0 0 {name=XXMN_n2
l=0.13e-6 w=1e-6 ng=1 m=1 model=sg13_lv_nmos spiceprefix=X}
N 700 -230 730 -230 {lab=phi1}
C {lab_pin.sym} 700 -230 0 0 {name=l27 sig_type=std_logic lab=phi1}
N 770 -230 800 -230 {lab=vss}
C {lab_pin.sym} 800 -230 0 0 {name=l28 sig_type=std_logic lab=vss}
N 770 -200 800 -200 {lab=vss}
C {lab_pin.sym} 800 -200 0 0 {name=l29 sig_type=std_logic lab=vss}
N 770 -260 770 -280 {lab=n3}
N 770 -280 800 -280 {lab=n3}
C {lab_pin.sym} 800 -280 0 0 {name=l30 sig_type=std_logic lab=n3}

T {n3 = NOT(phi1) used as phi2} 850 -290 0 0 0.18 0.18 {layer=5}

T {===== STRAY-INSENSITIVE SC INTEGRATORS =====} 50 20 0 0 0.25 0.25 {layer=5}
T {Each SC element: TG(phi1) input\u2192top, TG(phi2) vcm\u2192top, bot\u2192sum} 50 40 0 0 0.18 0.18 {layer=5}

T {===== INTEGRATOR 1: vin+lp+Q \u2192 sum1 \u2192 OTA1 \u2192 bp =====} 50 70 0 0 0.25 0.25 {layer=5}

T {vin \u2192 sum1 (phi1 sample, phi2 reset)} 60 95 0 0 0.18 0.18 {layer=5}
C {cmos_tg.sym} 200 130 0 0 {name=x_sw0_in}
N 100 130 140 130 {lab=vin}
C {lab_pin.sym} 100 130 0 0 {name=l40 sig_type=std_logic lab=vin}
N 260 130 340 130 {lab=csw1_t}
N 185 80 185 60 {lab=phi1}
C {lab_pin.sym} 185 60 0 0 {name=l42 sig_type=std_logic lab=phi1}
N 215 80 215 60 {lab=n3}
C {lab_pin.sym} 215 60 0 0 {name=l43 sig_type=std_logic lab=n3}
N 170 180 170 200 {lab=vss}
C {lab_pin.sym} 170 200 0 0 {name=l44 sig_type=std_logic lab=vss}
N 230 180 230 200 {lab=vdd}
C {lab_pin.sym} 230 200 0 0 {name=l45 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 500 130 0 0 {name=x_sw0_ref}
N 400 130 440 130 {lab=vcm}
C {lab_pin.sym} 400 130 0 0 {name=l46 sig_type=std_logic lab=vcm}
N 560 130 620 130 {lab=csw1_t}
N 485 80 485 60 {lab=n3}
C {lab_pin.sym} 485 60 0 0 {name=l47 sig_type=std_logic lab=n3}
N 515 80 515 60 {lab=phi1}
C {lab_pin.sym} 515 60 0 0 {name=l48 sig_type=std_logic lab=phi1}
N 470 180 470 200 {lab=vss}
C {lab_pin.sym} 470 200 0 0 {name=l49 sig_type=std_logic lab=vss}
N 530 180 530 200 {lab=vdd}
C {lab_pin.sym} 530 200 0 0 {name=l50 sig_type=std_logic lab=vdd}
C {sg13g2_pr/cap_cmim.sym} 340 160 0 0 {name=XC_sw1
model=cap_cmim w=7.0e-6 l=7.0e-6 m=1 spiceprefix=X}
N 620 130 620 160 {lab=csw1_t}
N 340 130 340 130 {lab=csw1_t}
N 340 190 340 220 {lab=sum1}
C {lab_pin.sym} 340 220 0 0 {name=l51 sig_type=std_logic lab=sum1}
C {lab_pin.sym} 300 130 0 0 {name=l52 sig_type=std_logic lab=csw1_t}
C {lab_pin.sym} 590 130 0 0 {name=l53 sig_type=std_logic lab=csw1_t}

T {lp \u2192 sum1} 60 245 0 0 0.18 0.18 {layer=5}
C {cmos_tg.sym} 200 280 0 0 {name=x_sw2_in}
N 100 280 140 280 {lab=lp}
C {lab_pin.sym} 100 280 0 0 {name=l54 sig_type=std_logic lab=lp}
N 260 280 340 280 {lab=csw2_t}
N 185 230 185 210 {lab=phi1}
C {lab_pin.sym} 185 210 0 0 {name=l56 sig_type=std_logic lab=phi1}
N 215 230 215 210 {lab=n3}
C {lab_pin.sym} 215 210 0 0 {name=l57 sig_type=std_logic lab=n3}
N 170 330 170 350 {lab=vss}
C {lab_pin.sym} 170 350 0 0 {name=l58 sig_type=std_logic lab=vss}
N 230 330 230 350 {lab=vdd}
C {lab_pin.sym} 230 350 0 0 {name=l59 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 500 280 0 0 {name=x_sw2_ref}
N 400 280 440 280 {lab=vcm}
C {lab_pin.sym} 400 280 0 0 {name=l60 sig_type=std_logic lab=vcm}
N 560 280 620 280 {lab=csw2_t}
N 485 230 485 210 {lab=n3}
C {lab_pin.sym} 485 210 0 0 {name=l61 sig_type=std_logic lab=n3}
N 515 230 515 210 {lab=phi1}
C {lab_pin.sym} 515 210 0 0 {name=l62 sig_type=std_logic lab=phi1}
N 470 330 470 350 {lab=vss}
C {lab_pin.sym} 470 350 0 0 {name=l63 sig_type=std_logic lab=vss}
N 530 330 530 350 {lab=vdd}
C {lab_pin.sym} 530 350 0 0 {name=l64 sig_type=std_logic lab=vdd}
C {sg13g2_pr/cap_cmim.sym} 340 310 0 0 {name=XC_sw2
model=cap_cmim w=7.0e-6 l=7.0e-6 m=1 spiceprefix=X}
N 620 280 620 310 {lab=csw2_t}
N 340 280 340 280 {lab=csw2_t}
N 340 340 340 370 {lab=sum1}
C {lab_pin.sym} 340 370 0 0 {name=l65 sig_type=std_logic lab=sum1}
C {lab_pin.sym} 300 280 0 0 {name=l66 sig_type=std_logic lab=csw2_t}
C {lab_pin.sym} 590 280 0 0 {name=l67 sig_type=std_logic lab=csw2_t}

T {C_int1 + OTA1} 660 95 0 0 0.18 0.18 {layer=5}
C {sg13g2_pr/cap_cmim.sym} 730 240 0 0 {name=XC_int1
model=cap_cmim w=23.1e-6 l=23.1e-6 m=1 spiceprefix=X}
N 730 210 730 190 {lab=bp}
C {lab_pin.sym} 730 190 0 0 {name=l80 sig_type=std_logic lab=bp}
N 730 270 780 270 {lab=sum1}
C {lab_pin.sym} 700 270 0 0 {name=l81 sig_type=std_logic lab=sum1}
N 700 270 730 270 {lab=sum1}

C {svf_ota5t.sym} 880 250 0 0 {name=x_ota1}
N 750 230 780 230 {lab=vcm}
C {lab_pin.sym} 750 230 0 0 {name=l82 sig_type=std_logic lab=vcm}
N 750 300 780 300 {lab=vcm}
C {lab_pin.sym} 750 300 0 0 {name=l84 sig_type=std_logic lab=vcm}
N 980 250 1020 250 {lab=bp}
C {lab_pin.sym} 1020 250 0 0 {name=l85 sig_type=std_logic lab=bp}
N 880 170 880 150 {lab=vdd}
C {lab_pin.sym} 880 150 0 0 {name=l86 sig_type=std_logic lab=vdd}
N 880 330 880 350 {lab=vss}
C {lab_pin.sym} 880 350 0 0 {name=l87 sig_type=std_logic lab=vss}

T {===== INTEGRATOR 2: bp \u2192 sum2 \u2192 OTA2 \u2192 lp_neg =====} 50 420 0 0 0.25 0.25 {layer=5}

T {bp \u2192 sum2} 60 445 0 0 0.18 0.18 {layer=5}
C {cmos_tg.sym} 200 480 0 0 {name=x_sw6_in}
N 100 480 140 480 {lab=bp}
C {lab_pin.sym} 100 480 0 0 {name=l90 sig_type=std_logic lab=bp}
N 260 480 340 480 {lab=csw3_t}
N 185 430 185 410 {lab=phi1}
C {lab_pin.sym} 185 410 0 0 {name=l92 sig_type=std_logic lab=phi1}
N 215 430 215 410 {lab=n3}
C {lab_pin.sym} 215 410 0 0 {name=l93 sig_type=std_logic lab=n3}
N 170 530 170 550 {lab=vss}
C {lab_pin.sym} 170 550 0 0 {name=l94 sig_type=std_logic lab=vss}
N 230 530 230 550 {lab=vdd}
C {lab_pin.sym} 230 550 0 0 {name=l95 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 500 480 0 0 {name=x_sw6_ref}
N 400 480 440 480 {lab=vcm}
C {lab_pin.sym} 400 480 0 0 {name=l96 sig_type=std_logic lab=vcm}
N 560 480 620 480 {lab=csw3_t}
N 485 430 485 410 {lab=n3}
C {lab_pin.sym} 485 410 0 0 {name=l97 sig_type=std_logic lab=n3}
N 515 430 515 410 {lab=phi1}
C {lab_pin.sym} 515 410 0 0 {name=l98 sig_type=std_logic lab=phi1}
N 470 530 470 550 {lab=vss}
C {lab_pin.sym} 470 550 0 0 {name=l99 sig_type=std_logic lab=vss}
N 530 530 530 550 {lab=vdd}
C {lab_pin.sym} 530 550 0 0 {name=l100 sig_type=std_logic lab=vdd}
C {sg13g2_pr/cap_cmim.sym} 340 510 0 0 {name=XC_sw3
model=cap_cmim w=7.0e-6 l=7.0e-6 m=1 spiceprefix=X}
N 620 480 620 510 {lab=csw3_t}
N 340 480 340 480 {lab=csw3_t}
N 340 540 340 570 {lab=sum2}
C {lab_pin.sym} 340 570 0 0 {name=l101 sig_type=std_logic lab=sum2}
C {lab_pin.sym} 300 480 0 0 {name=l102 sig_type=std_logic lab=csw3_t}
C {lab_pin.sym} 590 480 0 0 {name=l103 sig_type=std_logic lab=csw3_t}

T {C_int2 + OTA2} 660 445 0 0 0.18 0.18 {layer=5}
C {sg13g2_pr/cap_cmim.sym} 730 510 0 0 {name=XC_int2
model=cap_cmim w=23.1e-6 l=23.1e-6 m=1 spiceprefix=X}
N 730 480 730 460 {lab=lp_neg}
C {lab_pin.sym} 730 460 0 0 {name=l104 sig_type=std_logic lab=lp_neg}
N 730 540 780 540 {lab=sum2}
C {lab_pin.sym} 700 540 0 0 {name=l105 sig_type=std_logic lab=sum2}
N 700 540 730 540 {lab=sum2}

C {svf_ota5t.sym} 880 520 0 0 {name=x_ota2}
N 750 500 780 500 {lab=vcm}
C {lab_pin.sym} 750 500 0 0 {name=l106 sig_type=std_logic lab=vcm}
N 750 570 780 570 {lab=vcm}
C {lab_pin.sym} 750 570 0 0 {name=l108 sig_type=std_logic lab=vcm}
N 980 520 1020 520 {lab=lp_neg}
C {lab_pin.sym} 1020 520 0 0 {name=l109 sig_type=std_logic lab=lp_neg}
N 880 440 880 420 {lab=vdd}
C {lab_pin.sym} 880 420 0 0 {name=l110 sig_type=std_logic lab=vdd}
N 880 600 880 620 {lab=vss}
C {lab_pin.sym} 880 620 0 0 {name=l111 sig_type=std_logic lab=vss}

T {===== INTEGRATOR 3 (inverter): lp_neg+lp \u2192 sum3 \u2192 OTA3 \u2192 lp =====} 50 670 0 0 0.25 0.25 {layer=5}

T {lp_neg \u2192 sum3} 60 695 0 0 0.18 0.18 {layer=5}
C {cmos_tg.sym} 200 730 0 0 {name=x_sw8_in}
N 100 730 140 730 {lab=lp_neg}
C {lab_pin.sym} 100 730 0 0 {name=l120 sig_type=std_logic lab=lp_neg}
N 260 730 340 730 {lab=csw4_t}
N 185 680 185 660 {lab=phi1}
C {lab_pin.sym} 185 660 0 0 {name=l122 sig_type=std_logic lab=phi1}
N 215 680 215 660 {lab=n3}
C {lab_pin.sym} 215 660 0 0 {name=l123 sig_type=std_logic lab=n3}
N 170 780 170 800 {lab=vss}
C {lab_pin.sym} 170 800 0 0 {name=l124 sig_type=std_logic lab=vss}
N 230 780 230 800 {lab=vdd}
C {lab_pin.sym} 230 800 0 0 {name=l125 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 500 730 0 0 {name=x_sw8_ref}
N 400 730 440 730 {lab=vcm}
C {lab_pin.sym} 400 730 0 0 {name=l126 sig_type=std_logic lab=vcm}
N 560 730 620 730 {lab=csw4_t}
N 485 680 485 660 {lab=n3}
C {lab_pin.sym} 485 660 0 0 {name=l127 sig_type=std_logic lab=n3}
N 515 680 515 660 {lab=phi1}
C {lab_pin.sym} 515 660 0 0 {name=l128 sig_type=std_logic lab=phi1}
N 470 780 470 800 {lab=vss}
C {lab_pin.sym} 470 800 0 0 {name=l129 sig_type=std_logic lab=vss}
N 530 780 530 800 {lab=vdd}
C {lab_pin.sym} 530 800 0 0 {name=l130 sig_type=std_logic lab=vdd}
C {sg13g2_pr/cap_cmim.sym} 340 760 0 0 {name=XC_sw4
model=cap_cmim w=7.0e-6 l=7.0e-6 m=1 spiceprefix=X}
N 620 730 620 760 {lab=csw4_t}
N 340 730 340 730 {lab=csw4_t}
N 340 790 340 820 {lab=sum3}
C {lab_pin.sym} 340 820 0 0 {name=l131 sig_type=std_logic lab=sum3}
C {lab_pin.sym} 300 730 0 0 {name=l132 sig_type=std_logic lab=csw4_t}
C {lab_pin.sym} 590 730 0 0 {name=l133 sig_type=std_logic lab=csw4_t}

T {lp \u2192 sum3} 60 845 0 0 0.18 0.18 {layer=5}
C {cmos_tg.sym} 200 880 0 0 {name=x_sw10_in}
N 100 880 140 880 {lab=lp}
C {lab_pin.sym} 100 880 0 0 {name=l134 sig_type=std_logic lab=lp}
N 260 880 340 880 {lab=csw5_t}
N 185 830 185 810 {lab=phi1}
C {lab_pin.sym} 185 810 0 0 {name=l136 sig_type=std_logic lab=phi1}
N 215 830 215 810 {lab=n3}
C {lab_pin.sym} 215 810 0 0 {name=l137 sig_type=std_logic lab=n3}
N 170 930 170 950 {lab=vss}
C {lab_pin.sym} 170 950 0 0 {name=l138 sig_type=std_logic lab=vss}
N 230 930 230 950 {lab=vdd}
C {lab_pin.sym} 230 950 0 0 {name=l139 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 500 880 0 0 {name=x_sw10_ref}
N 400 880 440 880 {lab=vcm}
C {lab_pin.sym} 400 880 0 0 {name=l140 sig_type=std_logic lab=vcm}
N 560 880 620 880 {lab=csw5_t}
N 485 830 485 810 {lab=n3}
C {lab_pin.sym} 485 810 0 0 {name=l141 sig_type=std_logic lab=n3}
N 515 830 515 810 {lab=phi1}
C {lab_pin.sym} 515 810 0 0 {name=l142 sig_type=std_logic lab=phi1}
N 470 930 470 950 {lab=vss}
C {lab_pin.sym} 470 950 0 0 {name=l143 sig_type=std_logic lab=vss}
N 530 930 530 950 {lab=vdd}
C {lab_pin.sym} 530 950 0 0 {name=l144 sig_type=std_logic lab=vdd}
C {sg13g2_pr/cap_cmim.sym} 340 910 0 0 {name=XC_sw5
model=cap_cmim w=7.0e-6 l=7.0e-6 m=1 spiceprefix=X}
N 620 880 620 910 {lab=csw5_t}
N 340 880 340 880 {lab=csw5_t}
N 340 940 340 970 {lab=sum3}
C {lab_pin.sym} 340 970 0 0 {name=l145 sig_type=std_logic lab=sum3}
C {lab_pin.sym} 300 880 0 0 {name=l146 sig_type=std_logic lab=csw5_t}
C {lab_pin.sym} 590 880 0 0 {name=l147 sig_type=std_logic lab=csw5_t}

T {C_int3 + OTA3} 660 695 0 0 0.18 0.18 {layer=5}
C {sg13g2_pr/cap_cmim.sym} 730 760 0 0 {name=XC_int3
model=cap_cmim w=23.1e-6 l=23.1e-6 m=1 spiceprefix=X}
N 730 730 730 710 {lab=lp}
C {lab_pin.sym} 730 710 0 0 {name=l155 sig_type=std_logic lab=lp}
N 730 790 780 790 {lab=sum3}
C {lab_pin.sym} 700 790 0 0 {name=l156 sig_type=std_logic lab=sum3}
N 700 790 730 790 {lab=sum3}

C {svf_ota5t.sym} 880 770 0 0 {name=x_ota3}
N 750 750 780 750 {lab=vcm}
C {lab_pin.sym} 750 750 0 0 {name=l148 sig_type=std_logic lab=vcm}
N 750 820 780 820 {lab=vcm}
C {lab_pin.sym} 750 820 0 0 {name=l150 sig_type=std_logic lab=vcm}
N 980 770 1020 770 {lab=lp}
C {lab_pin.sym} 1020 770 0 0 {name=l151 sig_type=std_logic lab=lp}
N 880 690 880 670 {lab=vdd}
C {lab_pin.sym} 880 670 0 0 {name=l152 sig_type=std_logic lab=vdd}
N 880 850 880 870 {lab=vss}
C {lab_pin.sym} 880 870 0 0 {name=l153 sig_type=std_logic lab=vss}

T {===== Q-TUNING BANK (4-bit binary-weighted) =====} 1050 70 0 0 0.25 0.25 {layer=5}
T {bp \u2192 TG(q) \u2192 TG(phi1) \u2192 cap_top, vcm \u2192 TG(phi2) \u2192 cap_top, cap_bot=sum1} 1050 90 0 0 0.18 0.18 {layer=5}

T {Q0} 1060 115 0 0 0.18 0.18 {layer=5}
C {cmos_tg.sym} 1120 140 0 0 {name=x_swq0_en}
N 1060 140 1060 140 {lab=bp}
C {lab_pin.sym} 1060 140 0 0 {name=l160 sig_type=std_logic lab=bp}
N 1180 140 1220 140 {lab=q0_node}
N 1105 90 1105 70 {lab=q0}
C {lab_pin.sym} 1105 70 0 0 {name=l161 sig_type=std_logic lab=q0}
N 1135 90 1135 70 {lab=q0_b}
C {lab_pin.sym} 1135 70 0 0 {name=l162 sig_type=std_logic lab=q0_b}
N 1090 190 1090 210 {lab=vss}
C {lab_pin.sym} 1090 210 0 0 {name=l163 sig_type=std_logic lab=vss}
N 1150 190 1150 210 {lab=vdd}
C {lab_pin.sym} 1150 210 0 0 {name=l164 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1300 140 0 0 {name=x_swq0_phi}
N 1220 140 1240 140 {lab=q0_node}
N 1360 140 1420 140 {lab=cq0_t}
N 1285 90 1285 70 {lab=phi1}
C {lab_pin.sym} 1285 70 0 0 {name=l165 sig_type=std_logic lab=phi1}
N 1315 90 1315 70 {lab=n3}
C {lab_pin.sym} 1315 70 0 0 {name=l166 sig_type=std_logic lab=n3}
N 1270 190 1270 210 {lab=vss}
C {lab_pin.sym} 1270 210 0 0 {name=l167 sig_type=std_logic lab=vss}
N 1330 190 1330 210 {lab=vdd}
C {lab_pin.sym} 1330 210 0 0 {name=l168 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1560 140 0 0 {name=x_swq0_ref}
N 1460 140 1500 140 {lab=vcm}
C {lab_pin.sym} 1460 140 0 0 {name=l169 sig_type=std_logic lab=vcm}
N 1620 140 1680 140 {lab=cq0_t}
N 1545 90 1545 70 {lab=n3}
C {lab_pin.sym} 1545 70 0 0 {name=l170 sig_type=std_logic lab=n3}
N 1575 90 1575 70 {lab=phi1}
C {lab_pin.sym} 1575 70 0 0 {name=l171 sig_type=std_logic lab=phi1}
N 1530 190 1530 210 {lab=vss}
C {lab_pin.sym} 1530 210 0 0 {name=l172 sig_type=std_logic lab=vss}
N 1590 190 1590 210 {lab=vdd}
C {lab_pin.sym} 1590 210 0 0 {name=l173 sig_type=std_logic lab=vdd}
C {sg13g2_pr/cap_cmim.sym} 1420 170 0 0 {name=XC_q0
model=cap_cmim w=1.81e-6 l=1.81e-6 m=1 spiceprefix=X}
N 1680 140 1680 170 {lab=cq0_t}
N 1420 140 1420 140 {lab=cq0_t}
N 1420 200 1420 230 {lab=sum1}
C {lab_pin.sym} 1420 230 0 0 {name=l174 sig_type=std_logic lab=sum1}
C {lab_pin.sym} 1390 140 0 0 {name=l174a sig_type=std_logic lab=cq0_t}
C {lab_pin.sym} 1650 140 0 0 {name=l174b sig_type=std_logic lab=cq0_t}

T {Q1} 1060 255 0 0 0.18 0.18 {layer=5}
C {cmos_tg.sym} 1120 280 0 0 {name=x_swq1_en}
N 1060 280 1060 280 {lab=bp}
C {lab_pin.sym} 1060 280 0 0 {name=l175 sig_type=std_logic lab=bp}
N 1180 280 1220 280 {lab=q1_node}
N 1105 230 1105 210 {lab=q1}
C {lab_pin.sym} 1105 210 0 0 {name=l176 sig_type=std_logic lab=q1}
N 1135 230 1135 210 {lab=q1_b}
C {lab_pin.sym} 1135 210 0 0 {name=l177 sig_type=std_logic lab=q1_b}
N 1090 330 1090 350 {lab=vss}
C {lab_pin.sym} 1090 350 0 0 {name=l178 sig_type=std_logic lab=vss}
N 1150 330 1150 350 {lab=vdd}
C {lab_pin.sym} 1150 350 0 0 {name=l179 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1300 280 0 0 {name=x_swq1_phi}
N 1220 280 1240 280 {lab=q1_node}
N 1360 280 1420 280 {lab=cq1_t}
N 1285 230 1285 210 {lab=phi1}
C {lab_pin.sym} 1285 210 0 0 {name=l180 sig_type=std_logic lab=phi1}
N 1315 230 1315 210 {lab=n3}
C {lab_pin.sym} 1315 210 0 0 {name=l181 sig_type=std_logic lab=n3}
N 1270 330 1270 350 {lab=vss}
C {lab_pin.sym} 1270 350 0 0 {name=l182 sig_type=std_logic lab=vss}
N 1330 330 1330 350 {lab=vdd}
C {lab_pin.sym} 1330 350 0 0 {name=l183 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1560 280 0 0 {name=x_swq1_ref}
N 1460 280 1500 280 {lab=vcm}
C {lab_pin.sym} 1460 280 0 0 {name=l184 sig_type=std_logic lab=vcm}
N 1620 280 1680 280 {lab=cq1_t}
N 1545 230 1545 210 {lab=n3}
C {lab_pin.sym} 1545 210 0 0 {name=l185 sig_type=std_logic lab=n3}
N 1575 230 1575 210 {lab=phi1}
C {lab_pin.sym} 1575 210 0 0 {name=l186 sig_type=std_logic lab=phi1}
N 1530 330 1530 350 {lab=vss}
C {lab_pin.sym} 1530 350 0 0 {name=l187 sig_type=std_logic lab=vss}
N 1590 330 1590 350 {lab=vdd}
C {lab_pin.sym} 1590 350 0 0 {name=l188 sig_type=std_logic lab=vdd}
C {sg13g2_pr/cap_cmim.sym} 1420 310 0 0 {name=XC_q1
model=cap_cmim w=2.56e-6 l=2.56e-6 m=1 spiceprefix=X}
N 1680 280 1680 310 {lab=cq1_t}
N 1420 280 1420 280 {lab=cq1_t}
N 1420 340 1420 370 {lab=sum1}
C {lab_pin.sym} 1420 370 0 0 {name=l189 sig_type=std_logic lab=sum1}
C {lab_pin.sym} 1390 280 0 0 {name=l189a sig_type=std_logic lab=cq1_t}
C {lab_pin.sym} 1650 280 0 0 {name=l189b sig_type=std_logic lab=cq1_t}

T {Q2} 1060 395 0 0 0.18 0.18 {layer=5}
C {cmos_tg.sym} 1120 420 0 0 {name=x_swq2_en}
N 1060 420 1060 420 {lab=bp}
C {lab_pin.sym} 1060 420 0 0 {name=l190 sig_type=std_logic lab=bp}
N 1180 420 1220 420 {lab=q2_node}
N 1105 370 1105 350 {lab=q2}
C {lab_pin.sym} 1105 350 0 0 {name=l191 sig_type=std_logic lab=q2}
N 1135 370 1135 350 {lab=q2_b}
C {lab_pin.sym} 1135 350 0 0 {name=l192 sig_type=std_logic lab=q2_b}
N 1090 470 1090 490 {lab=vss}
C {lab_pin.sym} 1090 490 0 0 {name=l193 sig_type=std_logic lab=vss}
N 1150 470 1150 490 {lab=vdd}
C {lab_pin.sym} 1150 490 0 0 {name=l194 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1300 420 0 0 {name=x_swq2_phi}
N 1220 420 1240 420 {lab=q2_node}
N 1360 420 1420 420 {lab=cq2_t}
N 1285 370 1285 350 {lab=phi1}
C {lab_pin.sym} 1285 350 0 0 {name=l195 sig_type=std_logic lab=phi1}
N 1315 370 1315 350 {lab=n3}
C {lab_pin.sym} 1315 350 0 0 {name=l196 sig_type=std_logic lab=n3}
N 1270 470 1270 490 {lab=vss}
C {lab_pin.sym} 1270 490 0 0 {name=l197 sig_type=std_logic lab=vss}
N 1330 470 1330 490 {lab=vdd}
C {lab_pin.sym} 1330 490 0 0 {name=l198 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1560 420 0 0 {name=x_swq2_ref}
N 1460 420 1500 420 {lab=vcm}
C {lab_pin.sym} 1460 420 0 0 {name=l199a sig_type=std_logic lab=vcm}
N 1620 420 1680 420 {lab=cq2_t}
N 1545 370 1545 350 {lab=n3}
C {lab_pin.sym} 1545 350 0 0 {name=l199b sig_type=std_logic lab=n3}
N 1575 370 1575 350 {lab=phi1}
C {lab_pin.sym} 1575 350 0 0 {name=l199c sig_type=std_logic lab=phi1}
N 1530 470 1530 490 {lab=vss}
C {lab_pin.sym} 1530 490 0 0 {name=l199d sig_type=std_logic lab=vss}
N 1590 470 1590 490 {lab=vdd}
C {lab_pin.sym} 1590 490 0 0 {name=l199e sig_type=std_logic lab=vdd}
C {sg13g2_pr/cap_cmim.sym} 1420 450 0 0 {name=XC_q2
model=cap_cmim w=3.62e-6 l=3.62e-6 m=1 spiceprefix=X}
N 1680 420 1680 450 {lab=cq2_t}
N 1420 420 1420 420 {lab=cq2_t}
N 1420 480 1420 510 {lab=sum1}
C {lab_pin.sym} 1420 510 0 0 {name=l199f sig_type=std_logic lab=sum1}
C {lab_pin.sym} 1390 420 0 0 {name=l199fa sig_type=std_logic lab=cq2_t}
C {lab_pin.sym} 1650 420 0 0 {name=l199fb sig_type=std_logic lab=cq2_t}

T {Q3} 1060 535 0 0 0.18 0.18 {layer=5}
C {cmos_tg.sym} 1120 560 0 0 {name=x_swq3_en}
N 1060 560 1060 560 {lab=bp}
C {lab_pin.sym} 1060 560 0 0 {name=l199g sig_type=std_logic lab=bp}
N 1180 560 1220 560 {lab=q3_node}
N 1105 510 1105 490 {lab=q3}
C {lab_pin.sym} 1105 490 0 0 {name=l199h sig_type=std_logic lab=q3}
N 1135 510 1135 490 {lab=q3_b}
C {lab_pin.sym} 1135 490 0 0 {name=l199i sig_type=std_logic lab=q3_b}
N 1090 610 1090 630 {lab=vss}
C {lab_pin.sym} 1090 630 0 0 {name=l199j sig_type=std_logic lab=vss}
N 1150 610 1150 630 {lab=vdd}
C {lab_pin.sym} 1150 630 0 0 {name=l199k sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1300 560 0 0 {name=x_swq3_phi}
N 1220 560 1240 560 {lab=q3_node}
N 1360 560 1420 560 {lab=cq3_t}
N 1285 510 1285 490 {lab=phi1}
C {lab_pin.sym} 1285 490 0 0 {name=l199l sig_type=std_logic lab=phi1}
N 1315 510 1315 490 {lab=n3}
C {lab_pin.sym} 1315 490 0 0 {name=l199m sig_type=std_logic lab=n3}
N 1270 610 1270 630 {lab=vss}
C {lab_pin.sym} 1270 630 0 0 {name=l199n sig_type=std_logic lab=vss}
N 1330 610 1330 630 {lab=vdd}
C {lab_pin.sym} 1330 630 0 0 {name=l199o sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1560 560 0 0 {name=x_swq3_ref}
N 1460 560 1500 560 {lab=vcm}
C {lab_pin.sym} 1460 560 0 0 {name=l199p sig_type=std_logic lab=vcm}
N 1620 560 1680 560 {lab=cq3_t}
N 1545 510 1545 490 {lab=n3}
C {lab_pin.sym} 1545 490 0 0 {name=l199q sig_type=std_logic lab=n3}
N 1575 510 1575 490 {lab=phi1}
C {lab_pin.sym} 1575 490 0 0 {name=l199r sig_type=std_logic lab=phi1}
N 1530 610 1530 630 {lab=vss}
C {lab_pin.sym} 1530 630 0 0 {name=l199s sig_type=std_logic lab=vss}
N 1590 610 1590 630 {lab=vdd}
C {lab_pin.sym} 1590 630 0 0 {name=l199t sig_type=std_logic lab=vdd}
C {sg13g2_pr/cap_cmim.sym} 1420 590 0 0 {name=XC_q3
model=cap_cmim w=5.11e-6 l=5.11e-6 m=1 spiceprefix=X}
N 1680 560 1680 590 {lab=cq3_t}
N 1420 560 1420 560 {lab=cq3_t}
N 1420 620 1420 650 {lab=sum1}
C {lab_pin.sym} 1420 650 0 0 {name=l199u sig_type=std_logic lab=sum1}
C {lab_pin.sym} 1390 560 0 0 {name=l199v sig_type=std_logic lab=cq3_t}
C {lab_pin.sym} 1650 560 0 0 {name=l199w sig_type=std_logic lab=cq3_t}

T {===== OUTPUT MUX =====} 1850 20 0 0 0.25 0.25 {layer=5}

C {cmos_tg.sym} 1900 100 0 0 {name=x_mux_lp}
N 1810 100 1840 100 {lab=lp}
C {lab_pin.sym} 1810 100 0 0 {name=l200 sig_type=std_logic lab=lp}
N 1960 100 2000 100 {lab=vout}
N 1885 50 1885 30 {lab=sel1}
C {lab_pin.sym} 1885 30 0 0 {name=l202 sig_type=std_logic lab=sel1}
N 1915 50 1915 30 {lab=sel1_b}
C {lab_pin.sym} 1915 30 0 0 {name=l203 sig_type=std_logic lab=sel1_b}
N 1870 150 1870 170 {lab=vss}
C {lab_pin.sym} 1870 170 0 0 {name=l204 sig_type=std_logic lab=vss}
N 1930 150 1930 170 {lab=vdd}
C {lab_pin.sym} 1930 170 0 0 {name=l205 sig_type=std_logic lab=vdd}

C {cmos_tg.sym} 1900 280 0 0 {name=x_mux_bp}
N 1810 280 1840 280 {lab=bp}
C {lab_pin.sym} 1810 280 0 0 {name=l206 sig_type=std_logic lab=bp}
N 1960 280 2000 280 {lab=vout}
N 1885 230 1885 210 {lab=sel0}
C {lab_pin.sym} 1885 210 0 0 {name=l208 sig_type=std_logic lab=sel0}
N 1915 230 1915 210 {lab=sel0_b}
C {lab_pin.sym} 1915 210 0 0 {name=l209 sig_type=std_logic lab=sel0_b}
N 1870 330 1870 350 {lab=vss}
C {lab_pin.sym} 1870 350 0 0 {name=l210 sig_type=std_logic lab=vss}
N 1930 330 1930 350 {lab=vdd}
C {lab_pin.sym} 1930 350 0 0 {name=l211 sig_type=std_logic lab=vdd}

C {cmos_tg.sym} 1900 460 0 0 {name=x_mux_hp}
N 1810 460 1840 460 {lab=hp}
C {lab_pin.sym} 1810 460 0 0 {name=l212 sig_type=std_logic lab=hp}
N 1960 460 2000 460 {lab=vout}
N 1885 410 1885 390 {lab=vss}
C {lab_pin.sym} 1885 390 0 0 {name=l214 sig_type=std_logic lab=vss}
N 1915 410 1915 390 {lab=vdd}
C {lab_pin.sym} 1915 390 0 0 {name=l215 sig_type=std_logic lab=vdd}
N 1870 510 1870 530 {lab=vss}
C {lab_pin.sym} 1870 530 0 0 {name=l216 sig_type=std_logic lab=vss}
N 1930 510 1930 530 {lab=vdd}
C {lab_pin.sym} 1930 530 0 0 {name=l217 sig_type=std_logic lab=vdd}

C {cmos_tg.sym} 1900 640 0 0 {name=x_mux_byp}
N 1810 640 1840 640 {lab=vin}
C {lab_pin.sym} 1810 640 0 0 {name=l218 sig_type=std_logic lab=vin}
N 1960 640 2000 640 {lab=vout}
N 1885 590 1885 570 {lab=vss}
C {lab_pin.sym} 1885 570 0 0 {name=l220 sig_type=std_logic lab=vss}
N 1915 590 1915 570 {lab=vdd}
C {lab_pin.sym} 1915 570 0 0 {name=l221 sig_type=std_logic lab=vdd}
N 1870 690 1870 710 {lab=vss}
C {lab_pin.sym} 1870 710 0 0 {name=l222 sig_type=std_logic lab=vss}
N 1930 690 1930 710 {lab=vdd}
C {lab_pin.sym} 1930 710 0 0 {name=l223 sig_type=std_logic lab=vdd}

N 2000 100 2000 640 {lab=vout}
C {lab_pin.sym} 2040 100 0 0 {name=l224 sig_type=std_logic lab=vout}
N 2000 100 2040 100 {lab=vout}
T {HP/bypass tied off} 1810 750 0 0 0.18 0.18 {layer=5}

T {===== COMPLEMENT INVERTERS =====} 50 1120 0 0 0.25 0.25 {layer=5}
T {q0\u2192q0_b, q1\u2192q1_b, q2\u2192q2_b, q3\u2192q3_b, sel0\u2192sel0_b, sel1\u2192sel1_b} 50 1140 0 0 0.2 0.2 {layer=5}

C {sg13g2_pr/sg13_lv_pmos.sym} 150 1200 0 0 {name=XXMP_invq0
l=0.13e-6 w=2e-6 ng=1 m=1 model=sg13_lv_pmos spiceprefix=X}
N 100 1200 130 1200 {lab=q0}
C {lab_pin.sym} 100 1200 0 0 {name=l300 sig_type=std_logic lab=q0}
N 170 1170 200 1170 {lab=vdd}
C {lab_pin.sym} 200 1170 0 0 {name=l301 sig_type=std_logic lab=vdd}
N 170 1200 200 1200 {lab=vdd}
C {lab_pin.sym} 200 1200 0 0 {name=l302 sig_type=std_logic lab=vdd}
N 170 1230 170 1310 {lab=q0_b}
C {sg13g2_pr/sg13_lv_nmos.sym} 150 1340 0 0 {name=XXMN_invq0
l=0.13e-6 w=1e-6 ng=1 m=1 model=sg13_lv_nmos spiceprefix=X}
N 100 1340 130 1340 {lab=q0}
C {lab_pin.sym} 100 1340 0 0 {name=l303 sig_type=std_logic lab=q0}
N 170 1340 200 1340 {lab=vss}
C {lab_pin.sym} 200 1340 0 0 {name=l304 sig_type=std_logic lab=vss}
N 170 1370 200 1370 {lab=vss}
C {lab_pin.sym} 200 1370 0 0 {name=l305 sig_type=std_logic lab=vss}
N 170 1270 200 1270 {lab=q0_b}
C {lab_pin.sym} 200 1270 0 0 {name=l306 sig_type=std_logic lab=q0_b}

C {sg13g2_pr/sg13_lv_pmos.sym} 350 1200 0 0 {name=XXMP_invq1
l=0.13e-6 w=2e-6 ng=1 m=1 model=sg13_lv_pmos spiceprefix=X}
N 300 1200 330 1200 {lab=q1}
C {lab_pin.sym} 300 1200 0 0 {name=l307 sig_type=std_logic lab=q1}
N 370 1170 400 1170 {lab=vdd}
C {lab_pin.sym} 400 1170 0 0 {name=l308 sig_type=std_logic lab=vdd}
N 370 1200 400 1200 {lab=vdd}
C {lab_pin.sym} 400 1200 0 0 {name=l309 sig_type=std_logic lab=vdd}
N 370 1230 370 1310 {lab=q1_b}
C {sg13g2_pr/sg13_lv_nmos.sym} 350 1340 0 0 {name=XXMN_invq1
l=0.13e-6 w=1e-6 ng=1 m=1 model=sg13_lv_nmos spiceprefix=X}
N 300 1340 330 1340 {lab=q1}
C {lab_pin.sym} 300 1340 0 0 {name=l310 sig_type=std_logic lab=q1}
N 370 1340 400 1340 {lab=vss}
C {lab_pin.sym} 400 1340 0 0 {name=l311 sig_type=std_logic lab=vss}
N 370 1370 400 1370 {lab=vss}
C {lab_pin.sym} 400 1370 0 0 {name=l312 sig_type=std_logic lab=vss}
N 370 1270 400 1270 {lab=q1_b}
C {lab_pin.sym} 400 1270 0 0 {name=l313 sig_type=std_logic lab=q1_b}

C {sg13g2_pr/sg13_lv_pmos.sym} 550 1200 0 0 {name=XXMP_invq2
l=0.13e-6 w=2e-6 ng=1 m=1 model=sg13_lv_pmos spiceprefix=X}
N 500 1200 530 1200 {lab=q2}
C {lab_pin.sym} 500 1200 0 0 {name=l314 sig_type=std_logic lab=q2}
N 570 1170 600 1170 {lab=vdd}
C {lab_pin.sym} 600 1170 0 0 {name=l315 sig_type=std_logic lab=vdd}
N 570 1200 600 1200 {lab=vdd}
C {lab_pin.sym} 600 1200 0 0 {name=l316 sig_type=std_logic lab=vdd}
N 570 1230 570 1310 {lab=q2_b}
C {sg13g2_pr/sg13_lv_nmos.sym} 550 1340 0 0 {name=XXMN_invq2
l=0.13e-6 w=1e-6 ng=1 m=1 model=sg13_lv_nmos spiceprefix=X}
N 500 1340 530 1340 {lab=q2}
C {lab_pin.sym} 500 1340 0 0 {name=l317 sig_type=std_logic lab=q2}
N 570 1340 600 1340 {lab=vss}
C {lab_pin.sym} 600 1340 0 0 {name=l318 sig_type=std_logic lab=vss}
N 570 1370 600 1370 {lab=vss}
C {lab_pin.sym} 600 1370 0 0 {name=l319 sig_type=std_logic lab=vss}
N 570 1270 600 1270 {lab=q2_b}
C {lab_pin.sym} 600 1270 0 0 {name=l320 sig_type=std_logic lab=q2_b}

C {sg13g2_pr/sg13_lv_pmos.sym} 750 1200 0 0 {name=XXMP_invq3
l=0.13e-6 w=2e-6 ng=1 m=1 model=sg13_lv_pmos spiceprefix=X}
N 700 1200 730 1200 {lab=q3}
C {lab_pin.sym} 700 1200 0 0 {name=l321 sig_type=std_logic lab=q3}
N 770 1170 800 1170 {lab=vdd}
C {lab_pin.sym} 800 1170 0 0 {name=l322 sig_type=std_logic lab=vdd}
N 770 1200 800 1200 {lab=vdd}
C {lab_pin.sym} 800 1200 0 0 {name=l323 sig_type=std_logic lab=vdd}
N 770 1230 770 1310 {lab=q3_b}
C {sg13g2_pr/sg13_lv_nmos.sym} 750 1340 0 0 {name=XXMN_invq3
l=0.13e-6 w=1e-6 ng=1 m=1 model=sg13_lv_nmos spiceprefix=X}
N 700 1340 730 1340 {lab=q3}
C {lab_pin.sym} 700 1340 0 0 {name=l324 sig_type=std_logic lab=q3}
N 770 1340 800 1340 {lab=vss}
C {lab_pin.sym} 800 1340 0 0 {name=l325 sig_type=std_logic lab=vss}
N 770 1370 800 1370 {lab=vss}
C {lab_pin.sym} 800 1370 0 0 {name=l326 sig_type=std_logic lab=vss}
N 770 1270 800 1270 {lab=q3_b}
C {lab_pin.sym} 800 1270 0 0 {name=l327 sig_type=std_logic lab=q3_b}

C {sg13g2_pr/sg13_lv_pmos.sym} 950 1200 0 0 {name=XXMP_invs0
l=0.13e-6 w=2e-6 ng=1 m=1 model=sg13_lv_pmos spiceprefix=X}
N 900 1200 930 1200 {lab=sel0}
C {lab_pin.sym} 900 1200 0 0 {name=l328 sig_type=std_logic lab=sel0}
N 970 1170 1000 1170 {lab=vdd}
C {lab_pin.sym} 1000 1170 0 0 {name=l329 sig_type=std_logic lab=vdd}
N 970 1200 1000 1200 {lab=vdd}
C {lab_pin.sym} 1000 1200 0 0 {name=l330 sig_type=std_logic lab=vdd}
N 970 1230 970 1310 {lab=sel0_b}
C {sg13g2_pr/sg13_lv_nmos.sym} 950 1340 0 0 {name=XXMN_invs0
l=0.13e-6 w=1e-6 ng=1 m=1 model=sg13_lv_nmos spiceprefix=X}
N 900 1340 930 1340 {lab=sel0}
C {lab_pin.sym} 900 1340 0 0 {name=l331 sig_type=std_logic lab=sel0}
N 970 1340 1000 1340 {lab=vss}
C {lab_pin.sym} 1000 1340 0 0 {name=l332 sig_type=std_logic lab=vss}
N 970 1370 1000 1370 {lab=vss}
C {lab_pin.sym} 1000 1370 0 0 {name=l333 sig_type=std_logic lab=vss}
N 970 1270 1000 1270 {lab=sel0_b}
C {lab_pin.sym} 1000 1270 0 0 {name=l334 sig_type=std_logic lab=sel0_b}

C {sg13g2_pr/sg13_lv_pmos.sym} 1150 1200 0 0 {name=XXMP_invs1
l=0.13e-6 w=2e-6 ng=1 m=1 model=sg13_lv_pmos spiceprefix=X}
N 1100 1200 1130 1200 {lab=sel1}
C {lab_pin.sym} 1100 1200 0 0 {name=l335 sig_type=std_logic lab=sel1}
N 1170 1170 1200 1170 {lab=vdd}
C {lab_pin.sym} 1200 1170 0 0 {name=l336 sig_type=std_logic lab=vdd}
N 1170 1200 1200 1200 {lab=vdd}
C {lab_pin.sym} 1200 1200 0 0 {name=l337 sig_type=std_logic lab=vdd}
N 1170 1230 1170 1310 {lab=sel1_b}
C {sg13g2_pr/sg13_lv_nmos.sym} 1150 1340 0 0 {name=XXMN_invs1
l=0.13e-6 w=1e-6 ng=1 m=1 model=sg13_lv_nmos spiceprefix=X}
N 1100 1340 1130 1340 {lab=sel1}
C {lab_pin.sym} 1100 1340 0 0 {name=l338 sig_type=std_logic lab=sel1}
N 1170 1340 1200 1340 {lab=vss}
C {lab_pin.sym} 1200 1340 0 0 {name=l339 sig_type=std_logic lab=vss}
N 1170 1370 1200 1370 {lab=vss}
C {lab_pin.sym} 1200 1370 0 0 {name=l340 sig_type=std_logic lab=vss}
N 1170 1270 1200 1270 {lab=sel1_b}
C {lab_pin.sym} 1200 1270 0 0 {name=l341 sig_type=std_logic lab=sel1_b}
