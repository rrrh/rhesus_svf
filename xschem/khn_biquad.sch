v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {KHN 2-OTA SC Biquad Filter} 110 -230 0 0 0.5 0.5 {}
T {IHP SG13G2 — 3× 5T OTA, NOL clock, 36 CMOS TGs, 12 MIM caps, output mixer} 60 -265 0 0 0.25 0.25 {layer=5}
T {===== BIAS GENERATOR =====} 60 60 0 0 0.25 0.25 {layer=5}
T {===== NOL CLOCK =====} 70 390 0 0 0.25 0.25 {layer=5}
T {sc_clk → n1 → phi1 → n3 (phi2=NOT(phi1))} 120 440 0 0 0.2 0.2 {layer=5}
T {n3 = NOT(phi1) used as phi2} 710 550 0 0 0.18 0.18 {layer=5}
T {===== INTEGRATOR 1: vin+lp_fb+Q → sum1 → OTA1 → bp =====} 1160 -240 0 0 0.25 0.25 {layer=5}
T {Parasitic-insensitive SC: 4 TGs per element (both plates switched)} 1160 -220 0 0 0.18 0.18 {layer=5}
T {SC Element 1: vin → sum1 (Config P, non-inv PI)} 1170 -185 0 0 0.18 0.18 {layer=5}
T {phi1: top→vin, bot→vcm; phi2: top→vcm, bot→sum1} 1170 -168 0 0 0.15 0.15 {layer=5}
T {SC Element 2: lp → sum1 (Config N, inverting — negative feedback)} 1170 245 0 0 0.18 0.18 {layer=5}
T {phi1: top→lp, bot→sum1; phi2: top→vcm, bot→vcm} 1170 262 0 0 0.15 0.15 {layer=5}
T {C_int1 + OTA1} 1420 1925 0 0 0.18 0.18 {layer=5}
T {===== INTEGRATOR 2: bp → sum2 → OTA2 → lp =====} 50 680 0 0 0.25 0.25 {layer=5}
T {SC Element 4: bp → sum2 (Config P, non-inv PI, OPPOSITE PHASE)} 60 705 0 0 0.18 0.18 {layer=5}
T {phi2: top→bp, bot→vcm (sample); phi1: top→vcm, bot→sum2 (transfer)} 60 722 0 0 0.15 0.15 {layer=5}
T {C_int2 + OTA2} 1410 1505 0 0 0.18 0.18 {layer=5}
T {===== Q-TUNING BANK (4-bit binary-weighted) =====} 1180 80 0 0 0.25 0.25 {layer=5}
T {bp → TG(q_en) → TG(phi1) → cap_top, vcm → TG(phi2) → cap_top, cap_bot=sum1} 1070 630 0 0 0.18 0.18 {layer=5}
T {Config N (inverting): phi1: top→bp, bot→sum1; phi2: top→vcm, bot→vcm} 1070 647 0 0 0.15 0.15 {layer=5}
T {Q0} 1090 750 0 0 0.18 0.18 {layer=5}
T {Q1} 1090 935 0 0 0.18 0.18 {layer=5}
T {Q2} 1090 1105 0 0 0.18 0.18 {layer=5}
T {Q3} 1090 1275 0 0 0.18 0.18 {layer=5}
T {===== COMPLEMENT INVERTERS =====} 50 1120 0 0 0.25 0.25 {layer=5}
T {q0→q0_b, q1→q1_b, q2→q2_b, q3→q3_b} 50 1140 0 0 0.2 0.2 {layer=5}
T {===== HP RECONSTRUCTION (resetting SC amplifier) =====} 50 1450 0 0 0.25 0.25 {layer=5}
T {OTA3 computes hp = Vin - LP (valid during phi2, reset during phi1)} 50 1470 0 0 0.18 0.18 {layer=5}
T {SC Element 5: vin -> sum3 (Config P, non-inv)} 60 1495 0 0 0.18 0.18 {layer=5}
T {phi1: top->vin, bot->vcm; phi2: top->vcm, bot->sum3} 70 1512 0 0 0.15 0.15 {layer=5}
T {SC Element 6: lp -> sum3 (Config N, inv, phi2-active)} 60 1915 0 0 0.18 0.18 {layer=5}
T {phi2: top->lp, bot->sum3; phi1: top->vcm, bot->vcm} 60 1932 0 0 0.15 0.15 {layer=5}
T {C_hp + Reset + OTA3} 1070 2115 0 0 0.18 0.18 {layer=5}
T {Reset TG shorts C_hp during phi1 (OTA3 in unity-gain)} 1030 2212 0 0 0.15 0.15 {layer=5}
T {===== OUTPUT MIXER (independent enables, passive TG sum) =====} 830 1450 0 0 0.25 0.25 {layer=5}
T {Enabled outputs are summed on vout through parallel TGs} 830 1470 0 0 0.18 0.18 {layer=5}
T {===== ENABLE COMPLEMENT INVERTERS =====} 410 70 0 0 0.25 0.25 {layer=5}
T {en_lp -> en_lp_b, en_bp -> en_bp_b, en_hp -> en_hp_b} 410 90 0 0 0.18 0.18 {layer=5}
N 180 160 180 200 {
lab=vcm}
N 180 200 180 220 {
lab=vcm}
N 190 460 220 460 {lab=vdd}
N 190 490 220 490 {lab=vdd}
N 190 520 190 560 {lab=n1}
N 190 640 220 640 {lab=vss}
N 190 560 190 580 {lab=n1}
N 330 490 360 490 {lab=n1}
N 400 460 430 460 {lab=vdd}
N 400 490 430 490 {lab=vdd}
N 400 520 400 560 {lab=phi1}
N 330 610 360 610 {lab=n1}
N 400 610 430 610 {lab=vss}
N 400 640 430 640 {lab=vss}
N 400 560 400 580 {lab=phi1}
N 520 490 550 490 {lab=phi1}
N 590 460 620 460 {lab=vdd}
N 590 490 620 490 {lab=vdd}
N 590 520 590 560 {lab=n3}
N 590 610 620 610 {lab=vss}
N 590 640 620 640 {lab=vss}
N 590 560 590 580 {lab=n3}
N 1210 -60 1250 -60 {lab=vin}
N 1370 -60 1450 -60 {lab=cin_t}
N 1295 -130 1295 -110 {lab=phi1}
N 1325 -130 1325 -110 {lab=n3}
N 1280 -10 1280 10 {lab=vss}
N 1340 -10 1340 10 {lab=vdd}
N 1210 120 1250 120 {lab=vcm}
N 1370 120 1450 120 {lab=cin_b}
N 1295 50 1295 70 {lab=phi1}
N 1325 50 1325 70 {lab=n3}
N 1280 170 1280 190 {lab=vss}
N 1340 170 1340 190 {lab=vdd}
N 1650 -60 1690 -60 {lab=vcm}
N 1810 -60 1870 -60 {lab=cin_t}
N 1735 -130 1735 -110 {lab=n3}
N 1765 -130 1765 -110 {lab=phi1}
N 1720 -10 1720 10 {lab=vss}
N 1780 -10 1780 10 {lab=vdd}
N 1650 120 1690 120 {lab=sum1}
N 1810 120 1870 120 {lab=cin_b}
N 1735 50 1735 70 {lab=n3}
N 1765 50 1765 70 {lab=phi1}
N 1720 170 1720 190 {lab=vss}
N 1780 170 1780 190 {lab=vdd}
N 1870 -60 1870 -30 {lab=cin_t}
N 1450 0 1450 120 {lab=cin_b}
N 1210 360 1250 360 {lab=lp}
N 1370 360 1450 360 {lab=cfb_t}
N 1295 290 1295 310 {lab=phi1}
N 1325 290 1325 310 {lab=n3}
N 1280 410 1280 430 {lab=vss}
N 1340 410 1340 430 {lab=vdd}
N 1210 530 1250 530 {lab=sum1}
N 1370 530 1450 530 {lab=cfb_b}
N 1295 460 1295 480 {lab=phi1}
N 1325 460 1325 480 {lab=n3}
N 1280 580 1280 600 {lab=vss}
N 1340 580 1340 600 {lab=vdd}
N 1650 360 1690 360 {lab=vcm}
N 1810 360 1870 360 {lab=cfb_t}
N 1735 290 1735 310 {lab=n3}
N 1765 290 1765 310 {lab=phi1}
N 1720 410 1720 430 {lab=vss}
N 1780 410 1780 430 {lab=vdd}
N 1650 530 1690 530 {lab=vcm}
N 1810 530 1870 530 {lab=cfb_b}
N 1735 460 1735 480 {lab=n3}
N 1765 460 1765 480 {lab=phi1}
N 1720 580 1720 600 {lab=vss}
N 1780 580 1780 600 {lab=vdd}
N 1870 360 1870 390 {lab=cfb_t}
N 1450 420 1450 530 {lab=cfb_b}
N 1500 2000 1650 2000 {lab=sum1}
N 1440 2000 1500 2000 {lab=sum1}
N 1620 1960 1650 1960 {lab=vcm}
N 1750 1840 1750 1900 {lab=vdd}
N 1750 2060 1750 2080 {lab=vss}
N 100 830 140 830 {lab=bp}
N 260 830 340 830 {lab=cis_t}
N 185 760 185 780 {lab=n3}
N 215 760 215 780 {lab=phi1}
N 170 880 170 900 {lab=vss}
N 230 880 230 900 {lab=vdd}
N 100 980 140 980 {lab=vcm}
N 260 980 340 980 {lab=cis_b}
N 185 910 185 930 {lab=n3}
N 215 910 215 930 {lab=phi1}
N 170 1030 170 1050 {lab=vss}
N 230 1030 230 1050 {lab=vdd}
N 500 830 540 830 {lab=vcm}
N 660 830 720 830 {lab=cis_t}
N 585 760 585 780 {lab=phi1}
N 615 760 615 780 {lab=n3}
N 570 880 570 900 {lab=vss}
N 630 880 630 900 {lab=vdd}
N 500 980 540 980 {lab=sum2}
N 660 980 720 980 {lab=cis_b}
N 585 910 585 930 {lab=phi1}
N 615 910 615 930 {lab=n3}
N 570 1030 570 1050 {lab=vss}
N 630 1030 630 1050 {lab=vdd}
N 720 830 720 860 {lab=cis_t}
N 340 890 340 980 {lab=cis_b}
N 1500 1540 1500 1600 {lab=lp}
N 1500 1660 1650 1660 {lab=sum2}
N 1440 1660 1500 1660 {lab=sum2}
N 1630 1620 1650 1620 {lab=vcm}
N 1750 1490 1750 1560 {lab=vdd}
N 1750 1720 1750 1740 {lab=vss}
N 1210 780 1250 780 {lab=#net1}
N 1135 710 1135 730 {lab=q0}
N 1165 710 1165 730 {lab=q0_b}
N 1120 830 1120 850 {lab=vss}
N 1180 830 1180 850 {lab=vdd}
N 1250 780 1270 780 {lab=#net1}
N 1390 780 1450 780 {lab=cq0_t}
N 1315 710 1315 730 {lab=phi1}
N 1345 710 1345 730 {lab=n3}
N 1300 830 1300 850 {lab=vss}
N 1360 830 1360 850 {lab=vdd}
N 1650 770 1690 770 {lab=vcm}
N 1810 770 1870 770 {lab=cq0_t}
N 1735 700 1735 720 {lab=n3}
N 1765 700 1765 720 {lab=phi1}
N 1720 820 1720 840 {lab=vss}
N 1780 820 1780 840 {lab=vdd}
N 1870 770 1870 800 {lab=cq0_t}
N 1450 840 1450 870 {lab=sum1}
N 1210 960 1250 960 {lab=#net2}
N 1135 890 1135 910 {lab=q1}
N 1165 890 1165 910 {lab=q1_b}
N 1120 1010 1120 1030 {lab=vss}
N 1180 1010 1180 1030 {lab=vdd}
N 1250 960 1270 960 {lab=#net2}
N 1390 960 1450 960 {lab=cq1_t}
N 1315 890 1315 910 {lab=phi1}
N 1345 890 1345 910 {lab=n3}
N 1300 1010 1300 1030 {lab=vss}
N 1360 1010 1360 1030 {lab=vdd}
N 1650 950 1690 950 {lab=vcm}
N 1810 950 1870 950 {lab=cq1_t}
N 1735 880 1735 900 {lab=n3}
N 1765 880 1765 900 {lab=phi1}
N 1720 1000 1720 1020 {lab=vss}
N 1780 1000 1780 1020 {lab=vdd}
N 1870 950 1870 980 {lab=cq1_t}
N 1450 1020 1450 1050 {lab=sum1}
N 1210 1130 1250 1130 {lab=#net3}
N 1135 1060 1135 1080 {lab=q2}
N 1165 1060 1165 1080 {lab=q2_b}
N 1120 1180 1120 1200 {lab=vss}
N 1180 1180 1180 1200 {lab=vdd}
N 1250 1130 1270 1130 {lab=#net3}
N 1390 1130 1450 1130 {lab=cq2_t}
N 1315 1060 1315 1080 {lab=phi1}
N 1345 1060 1345 1080 {lab=n3}
N 1300 1180 1300 1200 {lab=vss}
N 1360 1180 1360 1200 {lab=vdd}
N 1650 1120 1690 1120 {lab=vcm}
N 1810 1120 1870 1120 {lab=cq2_t}
N 1735 1050 1735 1070 {lab=n3}
N 1765 1050 1765 1070 {lab=phi1}
N 1720 1170 1720 1190 {lab=vss}
N 1780 1170 1780 1190 {lab=vdd}
N 1870 1120 1870 1150 {lab=cq2_t}
N 1450 1190 1450 1220 {lab=sum1}
N 1210 1300 1250 1300 {lab=#net4}
N 1135 1230 1135 1250 {lab=q3}
N 1165 1230 1165 1250 {lab=q3_b}
N 1120 1350 1120 1370 {lab=vss}
N 1180 1350 1180 1370 {lab=vdd}
N 1250 1300 1270 1300 {lab=#net4}
N 1390 1300 1450 1300 {lab=cq3_t}
N 1315 1230 1315 1250 {lab=phi1}
N 1345 1230 1345 1250 {lab=n3}
N 1300 1350 1300 1370 {lab=vss}
N 1360 1350 1360 1370 {lab=vdd}
N 1650 1290 1690 1290 {lab=vcm}
N 1810 1290 1870 1290 {lab=cq3_t}
N 1735 1220 1735 1240 {lab=n3}
N 1765 1220 1765 1240 {lab=phi1}
N 1720 1340 1720 1360 {lab=vss}
N 1780 1340 1780 1360 {lab=vdd}
N 1870 1290 1870 1320 {lab=cq3_t}
N 1450 1360 1450 1390 {lab=sum1}
N 100 1200 130 1200 {lab=q0}
N 170 1170 200 1170 {lab=vdd}
N 170 1200 200 1200 {lab=vdd}
N 170 1230 170 1310 {lab=q0_b}
N 100 1340 130 1340 {lab=q0}
N 170 1340 200 1340 {lab=vss}
N 170 1370 200 1370 {lab=vss}
N 170 1270 200 1270 {lab=q0_b}
N 300 1200 330 1200 {lab=q1}
N 370 1170 400 1170 {lab=vdd}
N 370 1200 400 1200 {lab=vdd}
N 370 1230 370 1310 {lab=q1_b}
N 300 1340 330 1340 {lab=q1}
N 370 1340 400 1340 {lab=vss}
N 370 1370 400 1370 {lab=vss}
N 370 1270 400 1270 {lab=q1_b}
N 500 1200 530 1200 {lab=q2}
N 570 1170 600 1170 {lab=vdd}
N 570 1200 600 1200 {lab=vdd}
N 570 1230 570 1310 {lab=q2_b}
N 500 1340 530 1340 {lab=q2}
N 570 1340 600 1340 {lab=vss}
N 570 1370 600 1370 {lab=vss}
N 570 1270 600 1270 {lab=q2_b}
N 700 1200 730 1200 {lab=q3}
N 770 1170 800 1170 {lab=vdd}
N 770 1200 800 1200 {lab=vdd}
N 770 1230 770 1310 {lab=q3_b}
N 700 1340 730 1340 {lab=q3}
N 770 1340 800 1340 {lab=vss}
N 770 1370 800 1370 {lab=vss}
N 770 1270 800 1270 {lab=q3_b}
N 100 1620 140 1620 {lab=vin}
N 260 1620 340 1620 {lab=c5_t}
N 185 1550 185 1570 {lab=phi1}
N 215 1550 215 1570 {lab=n3}
N 170 1670 170 1690 {lab=vss}
N 230 1670 230 1690 {lab=vdd}
N 100 1810 140 1810 {lab=vcm}
N 260 1810 340 1810 {lab=c5_b}
N 185 1740 185 1760 {lab=phi1}
N 215 1740 215 1760 {lab=n3}
N 170 1860 170 1880 {lab=vss}
N 230 1860 230 1880 {lab=vdd}
N 510 1620 550 1620 {lab=vcm}
N 670 1620 730 1620 {lab=c5_t}
N 595 1550 595 1570 {lab=n3}
N 625 1550 625 1570 {lab=phi1}
N 580 1670 580 1690 {lab=vss}
N 640 1670 640 1690 {lab=vdd}
N 510 1810 550 1810 {lab=sum3}
N 670 1810 730 1810 {lab=c5_b}
N 595 1740 595 1760 {lab=n3}
N 625 1740 625 1760 {lab=phi1}
N 580 1860 580 1880 {lab=vss}
N 640 1860 640 1880 {lab=vdd}
N 730 1620 730 1650 {lab=c5_t}
N 340 1680 340 1810 {lab=c5_b}
N 100 2040 140 2040 {lab=lp}
N 260 2040 340 2040 {lab=c6_t}
N 185 1970 185 1990 {lab=n3}
N 215 1970 215 1990 {lab=phi1}
N 170 2090 170 2110 {lab=vss}
N 230 2090 230 2110 {lab=vdd}
N 100 2220 140 2220 {lab=sum3}
N 260 2220 340 2220 {lab=c6_b}
N 185 2150 185 2170 {lab=n3}
N 215 2150 215 2170 {lab=phi1}
N 170 2270 170 2290 {lab=vss}
N 230 2270 230 2290 {lab=vdd}
N 510 2040 550 2040 {lab=vcm}
N 670 2040 730 2040 {lab=c6_t}
N 595 1970 595 1990 {lab=phi1}
N 625 1970 625 1990 {lab=n3}
N 580 2090 580 2110 {lab=vss}
N 640 2090 640 2110 {lab=vdd}
N 510 2220 550 2220 {lab=vcm}
N 670 2220 730 2220 {lab=c6_b}
N 595 2150 595 2170 {lab=phi1}
N 625 2150 625 2170 {lab=n3}
N 580 2270 580 2290 {lab=vss}
N 640 2270 640 2290 {lab=vdd}
N 730 2040 730 2070 {lab=c6_t}
N 340 2130 340 2220 {lab=c6_b}
N 1040 2220 1080 2220 {lab=sum3}
N 1200 2220 1240 2220 {lab=hp}
N 1125 2150 1125 2170 {lab=phi1}
N 1155 2150 1155 2170 {lab=n3}
N 1110 2270 1110 2290 {lab=vss}
N 1170 2270 1170 2290 {lab=vdd}
N 1500 2230 1500 2280 {lab=hp}
N 1850 2320 1880 2320 {lab=hp}
N 1750 2170 1750 2240 {lab=vdd}
N 1750 2400 1750 2420 {lab=vss}
N 1450 2340 1650 2340 {lab=sum3}
N 930 1590 970 1590 {lab=lp}
N 1090 1590 1150 1590 {lab=vout}
N 1015 1520 1015 1540 {lab=en_lp}
N 1045 1520 1045 1540 {lab=en_lp_b}
N 1000 1640 1000 1660 {lab=vss}
N 1060 1640 1060 1660 {lab=vdd}
N 930 1760 970 1760 {lab=bp}
N 1090 1760 1150 1760 {lab=vout}
N 1015 1690 1015 1710 {lab=en_bp}
N 1045 1690 1045 1710 {lab=en_bp_b}
N 1000 1810 1000 1830 {lab=vss}
N 1060 1810 1060 1830 {lab=vdd}
N 930 1930 970 1930 {lab=hp}
N 1090 1930 1150 1930 {lab=vout}
N 1015 1860 1015 1880 {lab=en_hp}
N 1045 1860 1045 1880 {lab=en_hp_b}
N 1000 1980 1000 2000 {lab=vss}
N 1060 1980 1060 2000 {lab=vdd}
N 1150 1590 1150 1930 {lab=vout}
N 1150 1590 1190 1590 {lab=vout}
N 460 160 490 160 {lab=en_lp}
N 530 130 560 130 {lab=vdd}
N 530 160 560 160 {lab=vdd}
N 530 190 530 270 {lab=en_lp_b}
N 530 300 560 300 {lab=vss}
N 530 330 560 330 {lab=vss}
N 530 230 560 230 {lab=en_lp_b}
N 660 160 690 160 {lab=en_bp}
N 730 130 760 130 {lab=vdd}
N 730 160 760 160 {lab=vdd}
N 730 190 730 270 {lab=en_bp_b}
N 730 300 760 300 {lab=vss}
N 730 330 760 330 {lab=vss}
N 730 230 760 230 {lab=en_bp_b}
N 930 130 960 130 {lab=vdd}
N 930 160 960 160 {lab=vdd}
N 930 190 930 270 {lab=en_hp_b}
N 930 300 960 300 {lab=vss}
N 930 330 960 330 {lab=vss}
N 930 230 960 230 {lab=en_hp_b}
N 1630 1620 1630 1690 {lab=vcm}
N 1630 1690 1650 1690 {lab=vcm}
N 1500 1540 1900 1540 {lab=lp}
N 1900 1540 1900 1640 {lab=lp}
N 1850 1640 1900 1640 {lab=lp}
N 1070 780 1090 780 {lab=bp}
N 1070 960 1090 960 {lab=bp}
N 1070 1130 1080 1130 {lab=bp}
N 1080 1130 1090 1130 {lab=bp}
N 1070 1300 1090 1300 {lab=bp}
N 1070 780 1070 960 {lab=bp}
N 1070 960 1070 1300 {lab=bp}
N 110 130 140 130 {lab=vcm}
N 110 130 110 250 {lab=vcm}
N 110 250 140 250 {lab=vcm}
N 100 190 110 190 {lab=vcm}
N 180 100 200 100 {lab=vdd}
N 180 130 200 130 {lab=vdd}
N 200 100 200 130 {lab=vdd}
N 180 280 200 280 {lab=vss}
N 200 250 200 280 {lab=vss}
N 180 250 200 250 {lab=vss}
N 110 190 180 190 {lab=vcm}
N 400 560 520 560 {lab=phi1}
N 520 560 520 610 {lab=phi1}
N 520 490 520 560 {lab=phi1}
N 520 610 550 610 {lab=phi1}
N 430 460 430 490 {lab=vdd}
N 620 460 620 490 {lab=vdd}
N 430 610 430 640 {lab=vss}
N 620 610 620 640 {lab=vss}
N 330 490 360 490 {lab=n1}
N 400 490 430 490 {lab=vdd}
N 330 610 360 610 {lab=n1}
N 400 610 430 610 {lab=vss}
N 590 490 620 490 {lab=vdd}
N 590 610 620 610 {lab=vss}
N 330 490 330 560 {lab=n1}
N 330 560 330 610 {lab=n1}
N 190 560 330 560 {lab=n1}
N 220 460 220 490 {lab=vdd}
N 220 610 220 640 {lab=vss}
N 190 610 220 610 {lab=vss}
N 120 490 150 490 {lab=sc_clk}
N 120 490 120 610 {lab=sc_clk}
N 120 610 150 610 {lab=sc_clk}
N 590 560 620 560 {lab=n3}
N 90 560 120 560 {lab=sc_clk}
N 1900 1880 1900 1980 {lab=bp}
N 1500 1880 1900 1880 {lab=bp}
N 1850 1980 1900 1980 {lab=bp}
N 1620 1960 1620 2030 {lab=vcm}
N 1620 2030 1650 2030 {lab=vcm}
N 1620 2300 1650 2300 {lab=vcm}
N 1620 2300 1620 2370 {lab=vcm}
N 1620 2370 1650 2370 {lab=vcm}
N 1440 2340 1450 2340 {lab=sum3}
N 1500 2230 1880 2230 {lab=hp}
N 1880 2230 1880 2320 {lab=hp}
N 1500 1880 1500 1940 {lab=bp}
N 560 130 560 160 {lab=vdd}
N 560 300 560 330 {lab=vss}
N 460 160 460 230 {lab=en_lp}
N 460 230 460 300 {lab=en_lp}
N 460 300 490 300 {lab=en_lp}
N 760 130 760 160 {lab=vdd}
N 760 300 760 330 {lab=vss}
N 660 160 660 230 {lab=en_bp}
N 660 230 660 300 {lab=en_bp}
N 660 300 690 300 {lab=en_bp}
N 960 300 960 330 {lab=vss}
N 860 230 860 300 {lab=en_hp}
N 860 300 890 300 {lab=en_hp}
N 960 130 960 160 {lab=vdd}
N 860 160 890 160 {lab=en_hp}
N 860 160 860 230 {lab=en_hp}
N 200 1170 200 1200 {lab=vdd}
N 200 1340 200 1370 {lab=vss}
N 400 1340 400 1370 {lab=vss}
N 400 1170 400 1200 {lab=vdd}
N 600 1170 600 1200 {lab=vdd}
N 600 1340 600 1370 {lab=vss}
N 800 1170 800 1200 {lab=vdd}
N 800 1340 800 1370 {lab=vss}
N 100 1200 100 1270 {lab=q0}
N 100 1270 100 1340 {lab=q0}
N 300 1200 300 1270 {lab=q1}
N 300 1270 300 1340 {lab=q1}
N 500 1200 500 1270 {lab=q2}
N 500 1270 500 1340 {lab=q2}
N 700 1200 700 1270 {lab=q3}
N 700 1270 700 1340 {lab=q3}
C {ipin.sym} 110 -190 0 0 {name=p1 lab=vin}
C {opin.sym} 610 -190 0 0 {name=p2 lab=vout}
C {ipin.sym} 210 -190 0 0 {name=p3 lab=en_lp}
C {ipin.sym} 310 -190 0 0 {name=p4 lab=en_bp}
C {ipin.sym} 400 -190 0 0 {name=p5 lab=en_hp}
C {ipin.sym} 500 -190 0 0 {name=p6 lab=sc_clk}
C {ipin.sym} 110 -130 0 0 {name=p7 lab=q0}
C {ipin.sym} 210 -130 0 0 {name=p8 lab=q1}
C {ipin.sym} 310 -130 0 0 {name=p9 lab=q2}
C {ipin.sym} 410 -130 0 0 {name=p10 lab=q3}
C {iopin.sym} 510 -130 0 0 {name=p11 lab=vdd}
C {iopin.sym} 610 -130 0 0 {name=p12 lab=vss}
C {sg13g2_pr/sg13_lv_pmos.sym} 160 130 0 0 {name=XXMPbias
l=0.5e-6
w=2e-6
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
C {lab_pin.sym} 200 100 2 0 {name=l2 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 160 250 0 0 {name=XXMNbias
l=0.5e-6
w=2e-6
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X}
C {sg13g2_pr/sg13_lv_pmos.sym} 170 490 0 0 {name=XXMP_n0
l=0.13e-6 w=2e-6 ng=1 m=1 model=sg13_lv_pmos spiceprefix=X}
C {lab_pin.sym} 220 460 0 0 {name=l11 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 170 610 0 0 {name=XXMN_n0
l=0.13e-6 w=1e-6 ng=1 m=1 model=sg13_lv_nmos spiceprefix=X}
C {lab_pin.sym} 90 560 0 0 {name=l13 sig_type=std_logic lab=sc_clk}
C {lab_pin.sym} 220 640 0 0 {name=l15 sig_type=std_logic lab=vss}
C {sg13g2_pr/sg13_lv_pmos.sym} 380 490 0 0 {name=XXMP_n1
l=0.13e-6 w=2e-6 ng=1 m=1 model=sg13_lv_pmos spiceprefix=X}
C {lab_pin.sym} 430 460 0 0 {name=l18 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 380 610 0 0 {name=XXMN_n1
l=0.13e-6 w=1e-6 ng=1 m=1 model=sg13_lv_nmos spiceprefix=X}
C {lab_pin.sym} 430 640 0 0 {name=l22 sig_type=std_logic lab=vss}
C {sg13g2_pr/sg13_lv_pmos.sym} 570 490 0 0 {name=XXMP_n2
l=0.13e-6 w=2e-6 ng=1 m=1 model=sg13_lv_pmos spiceprefix=X}
C {lab_pin.sym} 620 460 0 0 {name=l25 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 570 610 0 0 {name=XXMN_n2
l=0.13e-6 w=1e-6 ng=1 m=1 model=sg13_lv_nmos spiceprefix=X}
C {lab_pin.sym} 620 640 0 0 {name=l29 sig_type=std_logic lab=vss}
C {lab_pin.sym} 620 560 2 0 {name=l30 sig_type=std_logic lab=n3}
C {cmos_tg.sym} 1310 -60 0 0 {name=x_e1_top_vin}
C {lab_pin.sym} 1210 -60 0 0 {name=l40 sig_type=std_logic lab=vin}
C {lab_pin.sym} 1295 -130 0 0 {name=l42 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 1325 -130 0 0 {name=l43 sig_type=std_logic lab=n3}
C {lab_pin.sym} 1280 10 0 0 {name=l44 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1340 10 0 0 {name=l45 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1310 120 0 0 {name=x_e1_bot_vcm}
C {lab_pin.sym} 1210 120 0 0 {name=l46 sig_type=std_logic lab=vcm}
C {lab_pin.sym} 1295 50 0 0 {name=l47 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 1325 50 0 0 {name=l48 sig_type=std_logic lab=n3}
C {lab_pin.sym} 1280 190 0 0 {name=l49 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1340 190 0 0 {name=l50 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1750 -60 0 0 {name=x_e1_top_vcm}
C {lab_pin.sym} 1650 -60 0 0 {name=l51 sig_type=std_logic lab=vcm}
C {lab_pin.sym} 1735 -130 0 0 {name=l52 sig_type=std_logic lab=n3}
C {lab_pin.sym} 1765 -130 0 0 {name=l53 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 1720 10 0 0 {name=l54 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1780 10 0 0 {name=l55 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1750 120 0 0 {name=x_e1_bot_sum}
C {lab_pin.sym} 1650 120 0 0 {name=l56 sig_type=std_logic lab=sum1}
C {lab_pin.sym} 1735 50 0 0 {name=l57 sig_type=std_logic lab=n3}
C {lab_pin.sym} 1765 50 0 0 {name=l58 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 1720 190 0 0 {name=l59 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1780 190 0 0 {name=l60 sig_type=std_logic lab=vdd}
C {sg13g2_pr/cap_cmim.sym} 1450 -30 0 0 {name=XC_in
model=cap_cmim w=7.0e-6 l=7.0e-6 m=1 spiceprefix=X}
C {lab_pin.sym} 1410 -60 0 0 {name=l61 sig_type=std_logic lab=cin_t}
C {lab_pin.sym} 1840 -60 0 0 {name=l62 sig_type=std_logic lab=cin_t}
C {lab_pin.sym} 1410 120 0 0 {name=l63 sig_type=std_logic lab=cin_b}
C {lab_pin.sym} 1840 120 0 0 {name=l64 sig_type=std_logic lab=cin_b}
C {cmos_tg.sym} 1310 360 0 0 {name=x_e2_top_lp}
C {lab_pin.sym} 1210 360 0 0 {name=l70 sig_type=std_logic lab=lp}
C {lab_pin.sym} 1295 290 0 0 {name=l72 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 1325 290 0 0 {name=l73 sig_type=std_logic lab=n3}
C {lab_pin.sym} 1280 430 0 0 {name=l74 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1340 430 0 0 {name=l75 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1310 530 0 0 {name=x_e2_bot_sum}
C {lab_pin.sym} 1210 530 0 0 {name=l76 sig_type=std_logic lab=sum1}
C {lab_pin.sym} 1295 460 0 0 {name=l77 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 1325 460 0 0 {name=l78 sig_type=std_logic lab=n3}
C {lab_pin.sym} 1280 600 0 0 {name=l79 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1340 600 0 0 {name=l80 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1750 360 0 0 {name=x_e2_top_vcm}
C {lab_pin.sym} 1650 360 0 0 {name=l81 sig_type=std_logic lab=vcm}
C {lab_pin.sym} 1735 290 0 0 {name=l82 sig_type=std_logic lab=n3}
C {lab_pin.sym} 1765 290 0 0 {name=l83 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 1720 430 0 0 {name=l84 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1780 430 0 0 {name=l85 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1750 530 0 0 {name=x_e2_bot_vcm}
C {lab_pin.sym} 1650 530 0 0 {name=l86 sig_type=std_logic lab=vcm}
C {lab_pin.sym} 1735 460 0 0 {name=l87 sig_type=std_logic lab=n3}
C {lab_pin.sym} 1765 460 0 0 {name=l88 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 1720 600 0 0 {name=l89 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1780 600 0 0 {name=l90 sig_type=std_logic lab=vdd}
C {sg13g2_pr/cap_cmim.sym} 1450 390 0 0 {name=XC_fb
model=cap_cmim w=7.0e-6 l=7.0e-6 m=1 spiceprefix=X}
C {lab_pin.sym} 1410 360 0 0 {name=l91 sig_type=std_logic lab=cfb_t}
C {lab_pin.sym} 1840 360 0 0 {name=l92 sig_type=std_logic lab=cfb_t}
C {lab_pin.sym} 1410 530 0 0 {name=l93 sig_type=std_logic lab=cfb_b}
C {lab_pin.sym} 1840 530 0 0 {name=l94 sig_type=std_logic lab=cfb_b}
C {sg13g2_pr/cap_cmim.sym} 1500 1970 0 0 {name=XC_int1
model=cap_cmim w=23.1e-6 l=23.1e-6 m=1 spiceprefix=X}
C {lab_pin.sym} 1500 1880 0 0 {name=l100 sig_type=std_logic lab=bp}
C {lab_pin.sym} 1440 2000 0 0 {name=l101 sig_type=std_logic lab=sum1}
C {svf_ota5t.sym} 1750 1980 0 0 {name=x_ota1}
C {lab_pin.sym} 1620 1960 0 0 {name=l102 sig_type=std_logic lab=vcm}
C {lab_pin.sym} 1750 1840 0 0 {name=l106 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1750 2080 0 0 {name=l107 sig_type=std_logic lab=vss}
C {cmos_tg.sym} 200 830 0 0 {name=x_e4_top_bp}
C {lab_pin.sym} 100 830 0 0 {name=l110 sig_type=std_logic lab=bp}
C {lab_pin.sym} 185 760 0 0 {name=l112 sig_type=std_logic lab=n3}
C {lab_pin.sym} 215 760 0 0 {name=l113 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 170 900 0 0 {name=l114 sig_type=std_logic lab=vss}
C {lab_pin.sym} 230 900 0 0 {name=l115 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 200 980 0 0 {name=x_e4_bot_vcm}
C {lab_pin.sym} 100 980 0 0 {name=l116 sig_type=std_logic lab=vcm}
C {lab_pin.sym} 185 910 0 0 {name=l117 sig_type=std_logic lab=n3}
C {lab_pin.sym} 215 910 0 0 {name=l118 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 170 1050 0 0 {name=l119 sig_type=std_logic lab=vss}
C {lab_pin.sym} 230 1050 0 0 {name=l120 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 600 830 0 0 {name=x_e4_top_vcm}
C {lab_pin.sym} 500 830 0 0 {name=l121 sig_type=std_logic lab=vcm}
C {lab_pin.sym} 585 760 0 0 {name=l122 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 615 760 0 0 {name=l123 sig_type=std_logic lab=n3}
C {lab_pin.sym} 570 900 0 0 {name=l124 sig_type=std_logic lab=vss}
C {lab_pin.sym} 630 900 0 0 {name=l125 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 600 980 0 0 {name=x_e4_bot_sum}
C {lab_pin.sym} 500 980 0 0 {name=l126 sig_type=std_logic lab=sum2}
C {lab_pin.sym} 585 910 0 0 {name=l127 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 615 910 0 0 {name=l128 sig_type=std_logic lab=n3}
C {lab_pin.sym} 570 1050 0 0 {name=l129 sig_type=std_logic lab=vss}
C {lab_pin.sym} 630 1050 0 0 {name=l130 sig_type=std_logic lab=vdd}
C {sg13g2_pr/cap_cmim.sym} 340 860 0 0 {name=XC_is
model=cap_cmim w=7.0e-6 l=7.0e-6 m=1 spiceprefix=X}
C {lab_pin.sym} 300 830 0 0 {name=l131 sig_type=std_logic lab=cis_t}
C {lab_pin.sym} 690 830 0 0 {name=l132 sig_type=std_logic lab=cis_t}
C {lab_pin.sym} 300 980 0 0 {name=l133 sig_type=std_logic lab=cis_b}
C {lab_pin.sym} 690 980 0 0 {name=l134 sig_type=std_logic lab=cis_b}
C {sg13g2_pr/cap_cmim.sym} 1500 1630 0 0 {name=XC_int2
model=cap_cmim w=23.1e-6 l=23.1e-6 m=1 spiceprefix=X}
C {lab_pin.sym} 1500 1540 0 0 {name=l140 sig_type=std_logic lab=lp}
C {lab_pin.sym} 1440 1660 0 0 {name=l141 sig_type=std_logic lab=sum2}
C {svf_ota5t.sym} 1750 1640 0 0 {name=x_ota2}
C {lab_pin.sym} 1630 1620 0 0 {name=l142 sig_type=std_logic lab=vcm}
C {lab_pin.sym} 1750 1490 0 0 {name=l146 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1750 1740 0 0 {name=l147 sig_type=std_logic lab=vss}
C {cmos_tg.sym} 1150 780 0 0 {name=x_swq0_en}
C {lab_pin.sym} 1070 780 0 0 {name=l160 sig_type=std_logic lab=bp}
C {lab_pin.sym} 1135 710 0 0 {name=l161 sig_type=std_logic lab=q0}
C {lab_pin.sym} 1165 710 0 0 {name=l162 sig_type=std_logic lab=q0_b}
C {lab_pin.sym} 1120 850 0 0 {name=l163 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1180 850 0 0 {name=l164 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1330 780 0 0 {name=x_swq0_phi}
C {lab_pin.sym} 1315 710 0 0 {name=l165 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 1345 710 0 0 {name=l166 sig_type=std_logic lab=n3}
C {lab_pin.sym} 1300 850 0 0 {name=l167 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1360 850 0 0 {name=l168 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1750 770 0 0 {name=x_swq0_ref}
C {lab_pin.sym} 1650 770 0 0 {name=l169 sig_type=std_logic lab=vcm}
C {lab_pin.sym} 1735 700 0 0 {name=l170 sig_type=std_logic lab=n3}
C {lab_pin.sym} 1765 700 0 0 {name=l171 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 1720 840 0 0 {name=l172 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1780 840 0 0 {name=l173 sig_type=std_logic lab=vdd}
C {sg13g2_pr/cap_cmim.sym} 1450 810 0 0 {name=XC_q0
model=cap_cmim w=1.81e-6 l=1.81e-6 m=1 spiceprefix=X}
C {lab_pin.sym} 1450 870 0 0 {name=l174 sig_type=std_logic lab=sum1}
C {lab_pin.sym} 1420 780 0 0 {name=l174a sig_type=std_logic lab=cq0_t}
C {lab_pin.sym} 1840 770 0 0 {name=l174b sig_type=std_logic lab=cq0_t}
C {cmos_tg.sym} 1150 960 0 0 {name=x_swq1_en}
C {lab_pin.sym} 1135 890 0 0 {name=l176 sig_type=std_logic lab=q1}
C {lab_pin.sym} 1165 890 0 0 {name=l177 sig_type=std_logic lab=q1_b}
C {lab_pin.sym} 1120 1030 0 0 {name=l178 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1180 1030 0 0 {name=l179 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1330 960 0 0 {name=x_swq1_phi}
C {lab_pin.sym} 1315 890 0 0 {name=l180 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 1345 890 0 0 {name=l181 sig_type=std_logic lab=n3}
C {lab_pin.sym} 1300 1030 0 0 {name=l182 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1360 1030 0 0 {name=l183 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1750 950 0 0 {name=x_swq1_ref}
C {lab_pin.sym} 1650 950 0 0 {name=l184 sig_type=std_logic lab=vcm}
C {lab_pin.sym} 1735 880 0 0 {name=l185 sig_type=std_logic lab=n3}
C {lab_pin.sym} 1765 880 0 0 {name=l186 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 1720 1020 0 0 {name=l187 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1780 1020 0 0 {name=l188 sig_type=std_logic lab=vdd}
C {sg13g2_pr/cap_cmim.sym} 1450 990 0 0 {name=XC_q1
model=cap_cmim w=2.56e-6 l=2.56e-6 m=1 spiceprefix=X}
C {lab_pin.sym} 1450 1050 0 0 {name=l189 sig_type=std_logic lab=sum1}
C {lab_pin.sym} 1420 960 0 0 {name=l189a sig_type=std_logic lab=cq1_t}
C {lab_pin.sym} 1840 950 0 0 {name=l189b sig_type=std_logic lab=cq1_t}
C {cmos_tg.sym} 1150 1130 0 0 {name=x_swq2_en}
C {lab_pin.sym} 1135 1060 0 0 {name=l191 sig_type=std_logic lab=q2}
C {lab_pin.sym} 1165 1060 0 0 {name=l192 sig_type=std_logic lab=q2_b}
C {lab_pin.sym} 1120 1200 0 0 {name=l193 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1180 1200 0 0 {name=l194 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1330 1130 0 0 {name=x_swq2_phi}
C {lab_pin.sym} 1315 1060 0 0 {name=l195 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 1345 1060 0 0 {name=l196 sig_type=std_logic lab=n3}
C {lab_pin.sym} 1300 1200 0 0 {name=l197 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1360 1200 0 0 {name=l198 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1750 1120 0 0 {name=x_swq2_ref}
C {lab_pin.sym} 1650 1120 0 0 {name=l199a sig_type=std_logic lab=vcm}
C {lab_pin.sym} 1735 1050 0 0 {name=l199b sig_type=std_logic lab=n3}
C {lab_pin.sym} 1765 1050 0 0 {name=l199c sig_type=std_logic lab=phi1}
C {lab_pin.sym} 1720 1190 0 0 {name=l199d sig_type=std_logic lab=vss}
C {lab_pin.sym} 1780 1190 0 0 {name=l199e sig_type=std_logic lab=vdd}
C {sg13g2_pr/cap_cmim.sym} 1450 1160 0 0 {name=XC_q2
model=cap_cmim w=3.62e-6 l=3.62e-6 m=1 spiceprefix=X}
C {lab_pin.sym} 1450 1220 0 0 {name=l199f sig_type=std_logic lab=sum1}
C {lab_pin.sym} 1420 1130 0 0 {name=l199fa sig_type=std_logic lab=cq2_t}
C {lab_pin.sym} 1840 1120 0 0 {name=l199fb sig_type=std_logic lab=cq2_t}
C {cmos_tg.sym} 1150 1300 0 0 {name=x_swq3_en}
C {lab_pin.sym} 1135 1230 0 0 {name=l199h sig_type=std_logic lab=q3}
C {lab_pin.sym} 1165 1230 0 0 {name=l199i sig_type=std_logic lab=q3_b}
C {lab_pin.sym} 1120 1370 0 0 {name=l199j sig_type=std_logic lab=vss}
C {lab_pin.sym} 1180 1370 0 0 {name=l199k sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1330 1300 0 0 {name=x_swq3_phi}
C {lab_pin.sym} 1315 1230 0 0 {name=l199l sig_type=std_logic lab=phi1}
C {lab_pin.sym} 1345 1230 0 0 {name=l199m sig_type=std_logic lab=n3}
C {lab_pin.sym} 1300 1370 0 0 {name=l199n sig_type=std_logic lab=vss}
C {lab_pin.sym} 1360 1370 0 0 {name=l199o sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1750 1290 0 0 {name=x_swq3_ref}
C {lab_pin.sym} 1650 1290 0 0 {name=l199p sig_type=std_logic lab=vcm}
C {lab_pin.sym} 1735 1220 0 0 {name=l199q sig_type=std_logic lab=n3}
C {lab_pin.sym} 1765 1220 0 0 {name=l199r sig_type=std_logic lab=phi1}
C {lab_pin.sym} 1720 1360 0 0 {name=l199s sig_type=std_logic lab=vss}
C {lab_pin.sym} 1780 1360 0 0 {name=l199t sig_type=std_logic lab=vdd}
C {sg13g2_pr/cap_cmim.sym} 1450 1330 0 0 {name=XC_q3
model=cap_cmim w=5.11e-6 l=5.11e-6 m=1 spiceprefix=X}
C {lab_pin.sym} 1450 1390 0 0 {name=l199u sig_type=std_logic lab=sum1}
C {lab_pin.sym} 1420 1300 0 0 {name=l199v sig_type=std_logic lab=cq3_t}
C {lab_pin.sym} 1840 1290 0 0 {name=l199w sig_type=std_logic lab=cq3_t}
C {sg13g2_pr/sg13_lv_pmos.sym} 150 1200 0 0 {name=XXMP_invq0
l=0.13e-6 w=2e-6 ng=1 m=1 model=sg13_lv_pmos spiceprefix=X}
C {lab_pin.sym} 200 1170 0 0 {name=l301 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 150 1340 0 0 {name=XXMN_invq0
l=0.13e-6 w=1e-6 ng=1 m=1 model=sg13_lv_nmos spiceprefix=X}
C {lab_pin.sym} 100 1270 0 0 {name=l303 sig_type=std_logic lab=q0}
C {lab_pin.sym} 200 1370 0 0 {name=l305 sig_type=std_logic lab=vss}
C {lab_pin.sym} 200 1270 0 0 {name=l306 sig_type=std_logic lab=q0_b}
C {sg13g2_pr/sg13_lv_pmos.sym} 350 1200 0 0 {name=XXMP_invq1
l=0.13e-6 w=2e-6 ng=1 m=1 model=sg13_lv_pmos spiceprefix=X}
C {lab_pin.sym} 400 1170 0 0 {name=l308 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 350 1340 0 0 {name=XXMN_invq1
l=0.13e-6 w=1e-6 ng=1 m=1 model=sg13_lv_nmos spiceprefix=X}
C {lab_pin.sym} 300 1270 0 0 {name=l310 sig_type=std_logic lab=q1}
C {lab_pin.sym} 400 1370 0 0 {name=l312 sig_type=std_logic lab=vss}
C {lab_pin.sym} 400 1270 0 0 {name=l313 sig_type=std_logic lab=q1_b}
C {sg13g2_pr/sg13_lv_pmos.sym} 550 1200 0 0 {name=XXMP_invq2
l=0.13e-6 w=2e-6 ng=1 m=1 model=sg13_lv_pmos spiceprefix=X}
C {lab_pin.sym} 600 1170 0 0 {name=l315 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 550 1340 0 0 {name=XXMN_invq2
l=0.13e-6 w=1e-6 ng=1 m=1 model=sg13_lv_nmos spiceprefix=X}
C {lab_pin.sym} 500 1270 0 0 {name=l317 sig_type=std_logic lab=q2}
C {lab_pin.sym} 600 1370 0 0 {name=l319 sig_type=std_logic lab=vss}
C {lab_pin.sym} 600 1270 0 0 {name=l320 sig_type=std_logic lab=q2_b}
C {sg13g2_pr/sg13_lv_pmos.sym} 750 1200 0 0 {name=XXMP_invq3
l=0.13e-6 w=2e-6 ng=1 m=1 model=sg13_lv_pmos spiceprefix=X}
C {lab_pin.sym} 800 1170 0 0 {name=l322 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 750 1340 0 0 {name=XXMN_invq3
l=0.13e-6 w=1e-6 ng=1 m=1 model=sg13_lv_nmos spiceprefix=X}
C {lab_pin.sym} 700 1270 0 0 {name=l324 sig_type=std_logic lab=q3}
C {lab_pin.sym} 800 1370 0 0 {name=l326 sig_type=std_logic lab=vss}
C {lab_pin.sym} 800 1270 0 0 {name=l327 sig_type=std_logic lab=q3_b}
C {cmos_tg.sym} 200 1620 0 0 {name=x_e5_top_vin}
C {lab_pin.sym} 100 1620 0 0 {name=l500 sig_type=std_logic lab=vin}
C {lab_pin.sym} 185 1550 0 0 {name=l501 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 215 1550 0 0 {name=l502 sig_type=std_logic lab=n3}
C {lab_pin.sym} 170 1690 0 0 {name=l503 sig_type=std_logic lab=vss}
C {lab_pin.sym} 230 1690 0 0 {name=l504 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 200 1810 0 0 {name=x_e5_bot_vcm}
C {lab_pin.sym} 100 1810 0 0 {name=l505 sig_type=std_logic lab=vcm}
C {lab_pin.sym} 185 1740 0 0 {name=l506 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 215 1740 0 0 {name=l507 sig_type=std_logic lab=n3}
C {lab_pin.sym} 170 1880 0 0 {name=l508 sig_type=std_logic lab=vss}
C {lab_pin.sym} 230 1880 0 0 {name=l509 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 610 1620 0 0 {name=x_e5_top_vcm}
C {lab_pin.sym} 510 1620 0 0 {name=l510 sig_type=std_logic lab=vcm}
C {lab_pin.sym} 595 1550 0 0 {name=l511 sig_type=std_logic lab=n3}
C {lab_pin.sym} 625 1550 0 0 {name=l512 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 580 1690 0 0 {name=l513 sig_type=std_logic lab=vss}
C {lab_pin.sym} 640 1690 0 0 {name=l514 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 610 1810 0 0 {name=x_e5_bot_sum3}
C {lab_pin.sym} 510 1810 0 0 {name=l515 sig_type=std_logic lab=sum3}
C {lab_pin.sym} 595 1740 0 0 {name=l516 sig_type=std_logic lab=n3}
C {lab_pin.sym} 625 1740 0 0 {name=l517 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 580 1880 0 0 {name=l518 sig_type=std_logic lab=vss}
C {lab_pin.sym} 640 1880 0 0 {name=l519 sig_type=std_logic lab=vdd}
C {sg13g2_pr/cap_cmim.sym} 340 1650 0 0 {name=XC5
model=cap_cmim w=7.0e-6 l=7.0e-6 m=1 spiceprefix=X}
C {lab_pin.sym} 300 1620 0 0 {name=l680a sig_type=std_logic lab=c5_t}
C {lab_pin.sym} 700 1620 0 0 {name=l680b sig_type=std_logic lab=c5_t}
C {lab_pin.sym} 300 1810 0 0 {name=l680c sig_type=std_logic lab=c5_b}
C {lab_pin.sym} 700 1810 0 0 {name=l680d sig_type=std_logic lab=c5_b}
C {cmos_tg.sym} 200 2040 0 0 {name=x_e6_top_lp}
C {lab_pin.sym} 100 2040 0 0 {name=l520 sig_type=std_logic lab=lp}
C {lab_pin.sym} 185 1970 0 0 {name=l521 sig_type=std_logic lab=n3}
C {lab_pin.sym} 215 1970 0 0 {name=l522a sig_type=std_logic lab=phi1}
C {lab_pin.sym} 170 2110 0 0 {name=l523 sig_type=std_logic lab=vss}
C {lab_pin.sym} 230 2110 0 0 {name=l524a sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 200 2220 0 0 {name=x_e6_bot_sum3}
C {lab_pin.sym} 100 2220 0 0 {name=l525a sig_type=std_logic lab=sum3}
C {lab_pin.sym} 185 2150 0 0 {name=l526a sig_type=std_logic lab=n3}
C {lab_pin.sym} 215 2150 0 0 {name=l527a sig_type=std_logic lab=phi1}
C {lab_pin.sym} 170 2290 0 0 {name=l528a sig_type=std_logic lab=vss}
C {lab_pin.sym} 230 2290 0 0 {name=l529a sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 610 2040 0 0 {name=x_e6_top_vcm}
C {lab_pin.sym} 510 2040 0 0 {name=l530 sig_type=std_logic lab=vcm}
C {lab_pin.sym} 595 1970 0 0 {name=l531 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 625 1970 0 0 {name=l532 sig_type=std_logic lab=n3}
C {lab_pin.sym} 580 2110 0 0 {name=l533 sig_type=std_logic lab=vss}
C {lab_pin.sym} 640 2110 0 0 {name=l534 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 610 2220 0 0 {name=x_e6_bot_vcm}
C {lab_pin.sym} 510 2220 0 0 {name=l535 sig_type=std_logic lab=vcm}
C {lab_pin.sym} 595 2150 0 0 {name=l536 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 625 2150 0 0 {name=l537 sig_type=std_logic lab=n3}
C {lab_pin.sym} 580 2290 0 0 {name=l538 sig_type=std_logic lab=vss}
C {lab_pin.sym} 640 2290 0 0 {name=l539 sig_type=std_logic lab=vdd}
C {sg13g2_pr/cap_cmim.sym} 340 2070 0 0 {name=XC6
model=cap_cmim w=7.0e-6 l=7.0e-6 m=1 spiceprefix=X}
C {lab_pin.sym} 300 2040 0 0 {name=l734a sig_type=std_logic lab=c6_t}
C {lab_pin.sym} 700 2040 0 0 {name=l734b sig_type=std_logic lab=c6_t}
C {lab_pin.sym} 300 2220 0 0 {name=l734c sig_type=std_logic lab=c6_b}
C {lab_pin.sym} 700 2220 0 0 {name=l734d sig_type=std_logic lab=c6_b}
C {cmos_tg.sym} 1140 2220 0 0 {name=x_hp_reset}
C {lab_pin.sym} 1040 2220 0 0 {name=l540 sig_type=std_logic lab=sum3}
C {lab_pin.sym} 1240 2220 0 0 {name=l541 sig_type=std_logic lab=hp}
C {lab_pin.sym} 1125 2150 0 0 {name=l542 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 1155 2150 0 0 {name=l543 sig_type=std_logic lab=n3}
C {lab_pin.sym} 1110 2290 0 0 {name=l544 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1170 2290 0 0 {name=l545 sig_type=std_logic lab=vdd}
C {sg13g2_pr/cap_cmim.sym} 1500 2310 0 0 {name=XC_hp
model=cap_cmim w=7.0e-6 l=7.0e-6 m=1 spiceprefix=X}
C {lab_pin.sym} 1500 2230 0 0 {name=l546 sig_type=std_logic lab=hp}
C {svf_ota5t.sym} 1750 2320 0 0 {name=x_ota3}
C {lab_pin.sym} 1620 2300 0 0 {name=l548 sig_type=std_logic lab=vcm}
C {lab_pin.sym} 1750 2170 0 0 {name=l551 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1750 2420 0 0 {name=l552 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1440 2340 0 0 {name=l553 sig_type=std_logic lab=sum3}
C {cmos_tg.sym} 1030 1590 0 0 {name=x_mix_lp}
C {lab_pin.sym} 930 1590 0 0 {name=l560 sig_type=std_logic lab=lp}
C {lab_pin.sym} 1015 1520 0 0 {name=l561 sig_type=std_logic lab=en_lp}
C {lab_pin.sym} 1045 1520 0 0 {name=l562 sig_type=std_logic lab=en_lp_b}
C {lab_pin.sym} 1000 1660 0 0 {name=l563 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1060 1660 0 0 {name=l564 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1030 1760 0 0 {name=x_mix_bp}
C {lab_pin.sym} 930 1760 0 0 {name=l565 sig_type=std_logic lab=bp}
C {lab_pin.sym} 1015 1690 0 0 {name=l566 sig_type=std_logic lab=en_bp}
C {lab_pin.sym} 1045 1690 0 0 {name=l567 sig_type=std_logic lab=en_bp_b}
C {lab_pin.sym} 1000 1830 0 0 {name=l568 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1060 1830 0 0 {name=l569 sig_type=std_logic lab=vdd}
C {cmos_tg.sym} 1030 1930 0 0 {name=x_mix_hp}
C {lab_pin.sym} 930 1930 0 0 {name=l570 sig_type=std_logic lab=hp}
C {lab_pin.sym} 1015 1860 0 0 {name=l571 sig_type=std_logic lab=en_hp}
C {lab_pin.sym} 1045 1860 0 0 {name=l572 sig_type=std_logic lab=en_hp_b}
C {lab_pin.sym} 1000 2000 0 0 {name=l573 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1060 2000 0 0 {name=l574 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1190 1590 0 0 {name=l575 sig_type=std_logic lab=vout}
C {sg13g2_pr/sg13_lv_pmos.sym} 510 160 0 0 {name=XXMP_inv_enlp
l=0.13e-6 w=2e-6 ng=1 m=1 model=sg13_lv_pmos spiceprefix=X}
C {lab_pin.sym} 560 130 0 0 {name=l581 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 510 300 0 0 {name=XXMN_inv_enlp
l=0.13e-6 w=1e-6 ng=1 m=1 model=sg13_lv_nmos spiceprefix=X}
C {lab_pin.sym} 460 230 0 0 {name=l583 sig_type=std_logic lab=en_lp}
C {lab_pin.sym} 560 330 0 0 {name=l585 sig_type=std_logic lab=vss}
C {lab_pin.sym} 560 230 0 0 {name=l586 sig_type=std_logic lab=en_lp_b}
C {sg13g2_pr/sg13_lv_pmos.sym} 710 160 0 0 {name=XXMP_inv_enbp
l=0.13e-6 w=2e-6 ng=1 m=1 model=sg13_lv_pmos spiceprefix=X}
C {lab_pin.sym} 760 130 0 0 {name=l588 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 710 300 0 0 {name=XXMN_inv_enbp
l=0.13e-6 w=1e-6 ng=1 m=1 model=sg13_lv_nmos spiceprefix=X}
C {lab_pin.sym} 660 230 0 0 {name=l590 sig_type=std_logic lab=en_bp}
C {lab_pin.sym} 760 330 0 0 {name=l592 sig_type=std_logic lab=vss}
C {lab_pin.sym} 760 230 0 0 {name=l593 sig_type=std_logic lab=en_bp_b}
C {sg13g2_pr/sg13_lv_pmos.sym} 910 160 0 0 {name=XXMP_inv_enhp
l=0.13e-6 w=2e-6 ng=1 m=1 model=sg13_lv_pmos spiceprefix=X}
C {lab_pin.sym} 960 130 0 0 {name=l595 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 910 300 0 0 {name=XXMN_inv_enhp
l=0.13e-6 w=1e-6 ng=1 m=1 model=sg13_lv_nmos spiceprefix=X}
C {lab_pin.sym} 860 230 0 0 {name=l597 sig_type=std_logic lab=en_hp}
C {lab_pin.sym} 960 330 0 0 {name=l599 sig_type=std_logic lab=vss}
C {lab_pin.sym} 960 230 0 0 {name=l600 sig_type=std_logic lab=en_hp_b}
C {lab_pin.sym} 100 190 0 0 {name=l4 sig_type=std_logic lab=vcm}
C {lab_pin.sym} 200 280 2 0 {name=l6 sig_type=std_logic lab=vss}
C {lab_pin.sym} 400 560 0 0 {name=l27 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 190 560 0 0 {name=l16 sig_type=std_logic lab=n1}
