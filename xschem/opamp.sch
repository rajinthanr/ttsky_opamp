v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 320 -640 660 -640 {}
L 4 660 -640 660 -110 {}
L 4 320 -110 660 -110 {}
L 4 320 -640 320 -110 {}
L 4 690 -850 690 -110 {}
L 4 690 -850 1320 -850 {}
L 4 1320 -850 1320 -110 {}
L 4 690 -110 1320 -110 {}
L 4 1390 -850 1390 -110 {}
L 4 1390 -850 1810 -850 {}
L 4 1810 -850 1810 -110 {}
L 4 1390 -110 1810 -110 {}
N 480 -220 480 -190 {lab=VSS}
N 400 -250 480 -250 {lab=VSS}
N 480 -310 480 -280 {lab=VGref}
N 480 -310 540 -310 {lab=VGref}
N 540 -310 540 -250 {lab=VGref}
N 520 -250 540 -250 {lab=VGref}
N 480 -380 480 -310 {lab=VGref}
N 1010 -220 1010 -190 {lab=VSS}
N 1010 -250 1080 -250 {lab=VSS}
N 1010 -380 1010 -280 {lab=Vx}
N 870 -440 870 -380 {lab=Vx}
N 1010 -380 1150 -380 {lab=Vx}
N 1150 -440 1150 -380 {lab=Vx}
N 930 -610 1110 -610 {lab=Vg2}
N 1150 -540 1150 -500 {lab=Vouti}
N 870 -560 870 -500 {lab=Vg2}
N 930 -610 930 -560 {lab=Vg2}
N 870 -560 930 -560 {lab=Vg2}
N 780 -610 870 -610 {lab=VDD}
N 1150 -610 1240 -610 {lab=VDD}
N 1070 -470 1150 -470 {lab=VSS}
N 870 -470 950 -470 {lab=VSS}
N 1610 -220 1610 -190 {lab=VSS}
N 1610 -250 1680 -250 {lab=VSS}
N 1610 -600 1700 -600 {lab=VDD}
N 1610 -740 1610 -630 {lab=VDD}
N 1610 -460 1610 -280 {lab=Vout}
N 1490 -600 1570 -600 {lab=Vouti}
N 1490 -600 1490 -540 {lab=Vouti}
N 400 -410 480 -410 {lab=VSS}
N 480 -530 480 -440 {lab=Iref}
N 540 -250 580 -250 {lab=VGref}
N 1610 -540 1980 -540 {lab=Vout}
N 870 -380 1010 -380 {lab=Vx}
N 910 -610 930 -610 {lab=Vg2}
N 870 -580 870 -560 {lab=Vg2}
N 1150 -580 1150 -540 {lab=Vouti}
N 1610 -570 1610 -540 {lab=Vout}
N 1610 -540 1610 -460 {lab=Vout}
N 1490 -540 1490 -530 {lab=Vouti}
N 520 -410 580 -410 {lab=EN}
N 870 -700 870 -640 {lab=VDD}
N 870 -700 1150 -700 {lab=VDD}
N 1150 -700 1150 -640 {lab=VDD}
N 1150 -540 1490 -540 {lab=Vouti}
N 1580 -460 1610 -460 {lab=Vout}
N 1490 -470 1490 -460 {lab=#net1}
N 1490 -460 1520 -460 {lab=#net1}
C {sky130_fd_pr/nfet_01v8.sym} 500 -250 0 1 {name=M1
W=4
L=0.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {title.sym} 160 -30 0 0 {name=l1 author="Rajinthan"}
C {lab_pin.sym} 480 -190 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {ipin.sym} 90 -160 0 0 {name=p7 lab=VSS}
C {lab_pin.sym} 400 -250 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 480 -530 3 1 {name=p2 sig_type=std_logic lab=Iref}
C {ipin.sym} 90 -260 0 0 {name=p27 lab=Vp}
C {opin.sym} 200 -270 0 0 {name=p29 lab=Vout}
C {ipin.sym} 90 -280 0 0 {name=p31 lab=Vn}
C {ipin.sym} 90 -180 0 0 {name=p1 lab=VDD}
C {ipin.sym} 90 -340 0 0 {name=p4 lab=Iref}
C {sky130_fd_pr/nfet_01v8.sym} 990 -250 0 0 {name=M2
W=4
L=0.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 1010 -190 1 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1080 -250 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 1170 -470 0 1 {name=M3
W=10
L=4
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 850 -470 0 0 {name=M4
W=10
L=4
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1130 -610 0 0 {name=M5
W=10.5
L=4.0
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 890 -610 0 1 {name=M6
W=10.5
L=4.0
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 1190 -470 2 0 {name=p10 sig_type=std_logic lab=Vp
W=6}
C {lab_pin.sym} 830 -470 2 1 {name=p11 sig_type=std_logic lab=Vn}
C {lab_pin.sym} 1980 -540 2 0 {name=p12 sig_type=std_logic lab=Vout}
C {lab_pin.sym} 950 -470 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1070 -470 2 1 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1240 -610 2 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 780 -610 2 1 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1150 -380 0 1 {name=p17 sig_type=std_logic lab=Vx}
C {sky130_fd_pr/annotate_fet_params.sym} 1210 -760 0 0 {name=annot1 ref=M5}
C {sky130_fd_pr/annotate_fet_params.sym} 1210 -430 0 0 {name=annot2 ref=M3}
C {lab_pin.sym} 930 -580 0 1 {name=p18 sig_type=std_logic lab=Vg2}
C {vdd.sym} 1010 -700 0 0 {name=l2 lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 1590 -250 0 0 {name=M7
W=48
L=0.5
nf=8
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 1610 -190 1 1 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1680 -250 0 1 {name=p19 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 1590 -600 0 0 {name=M8
W=20
L=0.5
nf=2
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 1700 -600 2 0 {name=p21 sig_type=std_logic lab=VDD}
C {vdd.sym} 1610 -740 0 0 {name=l3 lab=VDD}
C {sky130_fd_pr/annotate_fet_params.sym} 840 -240 0 0 {name=annot3 ref=M2}
C {sky130_fd_pr/annotate_fet_params.sym} 1660 -770 0 0 {name=annot4 ref=M8}
C {sky130_fd_pr/annotate_fet_params.sym} 1650 -410 0 0 {name=annot5 ref=M7}
C {opin.sym} 200 -240 0 0 {name=p22 lab=Vouti}
C {lab_pin.sym} 1490 -560 2 0 {name=p23 sig_type=std_logic lab=Vouti}
C {sky130_fd_pr/nfet_01v8.sym} 500 -410 0 1 {name=M9
W=2
L=2
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 400 -410 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {ipin.sym} 90 -360 0 0 {name=p25 lab=EN}
C {lab_pin.sym} 580 -410 2 0 {name=p26 sig_type=std_logic lab=EN}
C {lab_pin.sym} 580 -250 2 0 {name=p20 sig_type=std_logic lab=VGref}
C {lab_pin.sym} 970 -250 2 1 {name=p28 sig_type=std_logic lab=VGref}
C {lab_pin.sym} 1570 -250 2 1 {name=p30 sig_type=std_logic lab=VGref}
C {devices/ngspice_get_value.sym} 1280 -480 0 1 {name=r11 node=v(@m.x1.xm3.msky130_fd_pr__nfet_01v8[W])
descr="W="}
C {devices/ngspice_get_value.sym} 1280 -450 0 1 {name=r2 node=v(@m.x1.xm3.msky130_fd_pr__nfet_01v8[L])
descr="L="}
C {res.sym} 1550 -460 1 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1490 -500 0 0 {name=C1 model=cap_mim_m3_1 W=40 L=40 MF=1 spiceprefix=X}
