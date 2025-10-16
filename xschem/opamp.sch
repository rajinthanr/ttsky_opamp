v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 470 -220 470 -190 {lab=VSS}
N 390 -250 470 -250 {lab=VSS}
N 470 -310 470 -280 {lab=Iref}
N 470 -310 530 -310 {lab=Iref}
N 530 -310 530 -250 {lab=Iref}
N 510 -250 530 -250 {lab=Iref}
N 470 -380 470 -310 {lab=Iref}
N 800 -220 800 -190 {lab=VSS}
N 800 -250 870 -250 {lab=VSS}
N 800 -380 800 -280 {lab=Vx}
N 530 -250 760 -250 {lab=Iref}
N 660 -440 660 -380 {lab=Vx}
N 660 -380 940 -380 {lab=Vx}
N 940 -440 940 -380 {lab=Vx}
N 700 -610 900 -610 {lab=Vg1}
N 940 -580 940 -500 {lab=Vout}
N 660 -580 660 -500 {lab=Vg1}
N 660 -690 660 -640 {lab=VDD}
N 660 -690 940 -690 {lab=VDD}
N 940 -690 940 -640 {lab=VDD}
N 720 -610 720 -560 {lab=Vg1}
N 660 -560 720 -560 {lab=Vg1}
N 940 -540 1130 -540 {lab=Vout}
N 570 -610 660 -610 {lab=VDD}
N 940 -610 1030 -610 {lab=VDD}
N 860 -470 940 -470 {lab=VSS}
N 660 -470 740 -470 {lab=VSS}
N 800 -740 800 -690 {lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 490 -250 0 1 {name=M1
W=10
L=1
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
C {title.sym} 160 -30 0 0 {name=l1 author="Rajinthan"}
C {lab_pin.sym} 470 -190 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {ipin.sym} 90 -160 0 0 {name=p7 lab=VSS}
C {lab_pin.sym} 390 -250 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 470 -380 3 1 {name=p2 sig_type=std_logic lab=Iref}
C {ipin.sym} 90 -260 0 0 {name=p27 lab=Vp}
C {opin.sym} 190 -270 0 0 {name=p29 lab=Vout}
C {ipin.sym} 90 -280 0 0 {name=p31 lab=Vn}
C {ipin.sym} 90 -180 0 0 {name=p1 lab=VDD}
C {ipin.sym} 90 -340 0 0 {name=p4 lab=Iref}
C {sky130_fd_pr/nfet_01v8.sym} 780 -250 0 0 {name=M2
W=10
L=1
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
C {lab_pin.sym} 800 -190 1 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 870 -250 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 960 -470 0 1 {name=M3
W=40
L=1
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
C {sky130_fd_pr/nfet_01v8.sym} 640 -470 0 0 {name=M4
W=40
L=1
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
C {sky130_fd_pr/pfet_01v8.sym} 920 -610 0 0 {name=M5
W=8
L=1
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
C {sky130_fd_pr/pfet_01v8.sym} 680 -610 0 1 {name=M6
W=8
L=1
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
C {lab_pin.sym} 620 -470 2 1 {name=p10 sig_type=std_logic lab=Vp}
C {lab_pin.sym} 980 -470 2 0 {name=p11 sig_type=std_logic lab=Vn}
C {lab_pin.sym} 1130 -540 2 0 {name=p12 sig_type=std_logic lab=Vout}
C {lab_pin.sym} 740 -470 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 860 -470 2 1 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1030 -610 2 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 570 -610 2 1 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 940 -380 0 1 {name=p17 sig_type=std_logic lab=Vx}
C {sky130_fd_pr/annotate_fet_params.sym} 990 -800 0 0 {name=annot1 ref=M5}
C {sky130_fd_pr/annotate_fet_params.sym} 990 -380 0 0 {name=annot2 ref=M3}
C {lab_pin.sym} 720 -580 0 1 {name=p18 sig_type=std_logic lab=Vg1}
C {vdd.sym} 800 -740 0 0 {name=l2 lab=VDD}
