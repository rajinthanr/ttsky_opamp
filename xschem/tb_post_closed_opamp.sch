v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 840 -480 1640 -80 {flags=graph
y1=0.69
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0003
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4 5 21"
node="vin
vout
vdd"
sim_type=tran
autoload=1
hilight_wave=-1
rawfile=$netlist_dir/tb_opamp.raw
}
B 2 1640 -1280 2440 -880 {flags=graph,unlocked
y1=-0.1
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1
x2=1
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
B 2 1640 -880 2440 -480 {flags=graph
y1=-2.2
y2=1.7
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
\\"Gain(1st); vouti vin /\\"
\\"Gain(2nd); vout vouti /\\""
color="4 5 18 6"
dataset=-1
unitx=1
logx=1
logy=1
sim_type=ac
hilight_wave=-1
autoload=1
rawfile=$netlist_dir/tb_opamp.raw
}
B 2 1640 -480 2440 -80 {flags=graph
y1=-170
y2=-2.9e-05
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
B 2 840 -880 1640 -480 {flags=graph
y1=-0.00058
y2=0.00054
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0003
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1
hilight_wave=-1
rawfile=$netlist_dir/tb_opamp.raw
color=9
node="\\"Offset; vout vin -\\""}
N 590 -670 590 -630 {lab=VDD}
N 590 -530 590 -500 {lab=VSS}
N 500 -600 520 -600 {lab=Vin}
N 660 -580 750 -580 {lab=Vout}
N 720 -580 720 -560 {lab=Vout}
N 720 -720 720 -580 {lab=Vout}
N 450 -720 720 -720 {lab=Vout}
N 450 -720 450 -560 {lab=Vout}
N 450 -560 520 -560 {lab=Vout}
C {title.sym} 160 -30 0 0 {name=l4 author="Rajinthan R"}
C {vsource.sym} 200 -150 0 0 {name=Vdd value=1.8 savecurrent=false}
C {lab_pin.sym} 200 -180 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {gnd.sym} 200 -120 0 0 {name=l3 lab=GND}
C {code_shown.sym} 10 -1235 0 0 {name=SPICE only_toplevel=false value=
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

   save @m.x1.xm3.msky130_fd_pr__nfet_01v8[W]
   save @m.x1.xm3.msky130_fd_pr__nfet_01v8[L]

   let t = 20
   while t < 60
      let vsupply = 1.7
      while vsupply < 2.0
         set temp = $&t
         alter @Vdd[dc] = $&vsupply
         echo Temperature is $t VDD is $vsupply

         op
         remzerovec 
         write tb_opamp.raw
         set appendwrite

         dc vin -1 1 0.1
         write tb_opamp.raw
         set appendwrite

         ac dec 10 1 100Meg
         write tb_opamp.raw
         set appendwrite

         tran 100n 300u
         write tb_opamp.raw
         set appendwrite

         let vsupply = vsupply + 0.1
      end
      
      let t = t+15
   end
quit 0
.endc
"}
C {lab_pin.sym} 750 -580 2 0 {name=p1 lab=Vout}
C {lab_pin.sym} 500 -600 0 0 {name=p4 lab=Vin}
C {lab_pin.sym} 590 -500 0 0 {name=p5 lab=VSS}
C {lab_pin.sym} 520 -540 0 0 {name=p6 lab=Iref}
C {lab_pin.sym} 590 -670 2 1 {name=p7 lab=VDD}
C {vsource.sym} 330 -150 0 0 {name=Vss value=0 savecurrent=false}
C {lab_pin.sym} 330 -180 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {gnd.sym} 330 -120 0 0 {name=l1 lab=GND}
C {vsource.sym} 580 -270 0 0 {name=Vin value="AC=0.4 SIN(0 0.2 5k 0 0)" savecurrent=false
*PULSE(-1.8 1.8 0 0.1p 0.1p 100u 200u)}
C {lab_pin.sym} 580 -300 0 1 {name=p9 sig_type=std_logic lab=Vin}
C {vsource.sym} 200 -270 0 0 {name=Iref value=-5u savecurrent=false}
C {lab_pin.sym} 200 -300 0 1 {name=p14 sig_type=std_logic lab=Iref}
C {gnd.sym} 200 -240 0 0 {name=l5 lab=GND}
C {devices/launcher.sym} 900 -920 0 0 {name=h4 
descr="Load Waveforms/
Annotate" 
tclcommand="
xschem raw_read $netlist_dir/tb_opamp.raw;
set show_hidden_texts 1;
xschem annotate_op
"
}
C {devices/launcher.sym} 900 -980 0 0 {name=h5
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {devices/launcher.sym} 900 -1030 0 0 {name=h1
descr="Generate .save lines" 
tclcommand="write_data [save_fet_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save
textwindow $netlist_dir/[file rootname [file tail [xschem get current_name]]].save
"
}
C {devices/launcher.sym} 1230 -960 0 0 {name=h2 
descr="Load Waveforms" 
tclcommand="
xschem raw_read $netlist_dir/tb_opamp.raw tran
"
}
C {devices/launcher.sym} 1230 -1010 0 0 {name=h3 
descr="Annotate" 
tclcommand="
set show_hidden_texts 1;
xschem annotate_op
"
}
C {lab_pin.sym} 640 -570 0 1 {name=p2 lab=Vouti}
C {lab_pin.sym} 520 -620 0 0 {name=p17 lab=EN}
C {vsource.sym} 450 -150 0 0 {name=Ven value=1.8 savecurrent=false}
C {lab_pin.sym} 450 -180 0 1 {name=p18 sig_type=std_logic lab=EN}
C {gnd.sym} 450 -120 0 0 {name=l6 lab=GND}
C {gnd.sym} 720 -500 0 0 {name=Vcm4 lab=GND
value=\{VCM\}}
C {capa.sym} 720 -530 0 0 {name=C1
m=1
value=25p
footprint=1206
device="ceramic capacitor"}
C {devices/code.sym} 530 -1170 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.param MT_SWITCH = 1.0
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {vsource.sym} 580 -150 0 0 {name=Vcm value=\{VCM\} savecurrent=false}
C {lab_pin.sym} 580 -180 0 1 {name=Vcm1 sig_type=std_logic lab=VCM value=\{VCM\}}
C {gnd.sym} 580 -120 0 0 {name=Vcm2 lab=GND
value=\{VCM\}}
C {lab_pin.sym} 580 -240 0 1 {name=Vcm3 sig_type=std_logic lab=VCM value=\{VCM\}}
C {/foss/designs/ttsky_opamp/xschem/post_opamp.sym} 590 -580 0 0 {name=x1}
