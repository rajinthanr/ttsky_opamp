v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 770 -480 1570 -80 {flags=graph
y1=-0.9
y2=2.7
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3.1874228e-14
x2=0.0003
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4 5 18"
node="vp
vout
vouti"
sim_type=tran
autoload=1
hilight_wave=-1
rawfile=$netlist_dir/tb_opamp.raw
}
B 2 770 -880 1570 -480 {flags=graph,unlocked
y1=-0.05
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.050554871
x2=0.072749692
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=dc
color="4 5 18"
node="vin
vout
vouti"
legend=1
autoload=1
rawfile=$netlist_dir/tb_opamp.raw}
B 2 1570 -880 2370 -480 {flags=graph
y1=-1.12
y2=5.28
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=0
x2=8
divx=10
subdivx=10
xlabmag=1.0
ylabmag=1.0
node="\\"Unity; 1\\"
\\"Gain; vout vin /\\"
\\"Gain(i); vouti vin /\\"
\\"Gain(i); vout vouti /\\""
color="4 5 6 18"
dataset=-1
unitx=1
logx=1
logy=1
sim_type=ac
hilight_wave=0
autoload=1
rawfile=$netlist_dir/tb_opamp.raw
}
B 2 1570 -480 2370 -80 {flags=graph
y1=-180
y2=180
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=8
divx=10
subdivx=8
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=1
logy=0
sim_type=ac
hilight_wave=-1
color=7
node=ph(vout)
rawfile=$netlist_dir/tb_opamp.raw
autoload=1}
N 380 -620 380 -580 {lab=VDD}
N 380 -480 380 -450 {lab=VSS}
N 290 -510 310 -510 {lab=Vn}
N 290 -550 310 -550 {lab=Vp}
N 500 -220 500 -200 {lab=VCM}
N 500 -200 680 -200 {lab=VCM}
N 680 -220 680 -200 {lab=VCM}
N 590 -200 590 -180 {lab=VCM}
N 500 -300 500 -280 {lab=Vp}
N 680 -300 680 -280 {lab=Vn}
N 540 -230 640 -230 {lab=GND}
C {title.sym} 160 -30 0 0 {name=l4 author="Rajinthan R"}
C {vsource.sym} 200 -150 0 0 {name=Vdd value=1.8 savecurrent=false}
C {lab_pin.sym} 200 -180 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {gnd.sym} 200 -120 0 0 {name=l3 lab=GND}
C {code_shown.sym} 10 -1245 0 0 {name=SPICE only_toplevel=false value=
"
.include tb_opamp.save
.options temp=27
*.options savecurrents
.param VCM = 0.9

.control
save all
save @m.x1.xm1.msky130_fd_pr__nfet_01v8[id]
save @m.x1.xm2.msky130_fd_pr__nfet_01v8[id]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8[id]
save @m.x1.xm4.msky130_fd_pr__nfet_01v8[id]
save @m.x1.xm5.msky130_fd_pr__pfet_01v8[id]
save @m.x1.xm6.msky130_fd_pr__pfet_01v8[id]
save @m.x1.xm7.msky130_fd_pr__nfet_01v8[id]
save @m.x1.xm9.msky130_fd_pr__nfet_01v8[id]

op
remzerovec 
write tb_opamp.raw
set appendwrite

dc vin -1 1 0.01
write tb_opamp.raw
set appendwrite

ac dec 10 1 100Meg
write tb_opamp.raw
set appendwrite

tran 10n 300u
write tb_opamp.raw

quit 0
.endc
"}
C {lab_pin.sym} 450 -530 2 0 {name=p1 lab=Vout}
C {lab_pin.sym} 290 -550 0 0 {name=p4 lab=Vp}
C {lab_pin.sym} 380 -450 0 0 {name=p5 lab=VSS}
C {lab_pin.sym} 310 -490 0 0 {name=p6 lab=Iref}
C {lab_pin.sym} 380 -620 2 1 {name=p7 lab=VDD}
C {vsource.sym} 330 -150 0 0 {name=Vss value=0 savecurrent=false}
C {lab_pin.sym} 330 -180 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {gnd.sym} 330 -120 0 0 {name=l1 lab=GND}
C {vcvs.sym} 680 -250 0 0 {name=E1 value=-0.5}
C {vsource.sym} 590 -150 0 0 {name=Vcm value=\{VCM\} savecurrent=false}
C {lab_pin.sym} 590 -180 0 1 {name=Vcm1 sig_type=std_logic lab=VCM value=\{VCM\}}
C {gnd.sym} 590 -120 0 0 {name=Vcm2 lab=GND
value=\{VCM\}}
C {vcvs.sym} 500 -250 0 1 {name=E2 value=0.5}
C {lab_pin.sym} 680 -300 1 0 {name=p10 lab=Vn}
C {lab_pin.sym} 500 -300 1 0 {name=p11 lab=Vp}
C {vsource.sym} 330 -270 0 0 {name=Vin value="AC=0.0001 SIN(0 1.8 5k 0 0)" savecurrent=false
*PULSE(-1.8 1.8 0 0.1p 0.1p 100u 200u)}
C {lab_pin.sym} 330 -300 0 1 {name=p9 sig_type=std_logic lab=Vin}
C {gnd.sym} 330 -240 0 0 {name=l2 lab=GND}
C {gnd.sym} 590 -230 0 0 {name=Vcm3 lab=GND
value=\{VCM\}}
C {lab_pin.sym} 540 -270 0 1 {name=p12 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 640 -270 0 0 {name=p13 sig_type=std_logic lab=Vin}
C {vsource.sym} 200 -270 0 0 {name=Iref value=-5u savecurrent=false}
C {lab_pin.sym} 200 -300 0 1 {name=p14 sig_type=std_logic lab=Iref}
C {gnd.sym} 200 -240 0 0 {name=l5 lab=GND}
C {devices/launcher.sym} 540 -940 0 0 {name=h4 
descr="Load Waveforms/
Annotate" 
tclcommand="
xschem raw_read $netlist_dir/tb_opamp.raw;
set show_hidden_texts 1;
xschem annotate_op
"
}
C {devices/launcher.sym} 540 -990 0 0 {name=h5
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {sky130_fd_pr/corner.sym} 20 -200 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} 540 -1040 0 0 {name=h1
descr="Generate .save lines" 
tclcommand="write_data [save_fet_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save
textwindow $netlist_dir/[file rootname [file tail [xschem get current_name]]].save
"
}
C {/foss/designs/ttsky_opamp/xschem/opamp.sym} 380 -530 0 0 {name=x1}
C {devices/launcher.sym} 870 -970 0 0 {name=h2 
descr="Load Waveforms" 
tclcommand="
xschem raw_read $netlist_dir/tb_opamp.raw tran
"
}
C {devices/launcher.sym} 870 -1020 0 0 {name=h3 
descr="Annotate" 
tclcommand="
set show_hidden_texts 1;
xschem annotate_op
"
}
C {lab_pin.sym} 290 -510 0 0 {name=p16 lab=Vn}
C {lab_pin.sym} 430 -520 0 1 {name=p2 lab=Vouti}
C {lab_pin.sym} 310 -570 0 0 {name=p17 lab=EN}
C {vsource.sym} 450 -150 0 0 {name=Ven value=1.8 savecurrent=false}
C {lab_pin.sym} 450 -180 0 1 {name=p18 sig_type=std_logic lab=EN}
C {gnd.sym} 450 -120 0 0 {name=l6 lab=GND}
