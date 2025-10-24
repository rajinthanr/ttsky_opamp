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
B 2 840 -1520 1640 -1120 {flags=graph,unlocked
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
legend=1
autoload=0
mode=HistoV
color="4 10"
node="vout
vin"
sweep=idx
sim_type=dc}
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
C {code_shown.sym} 20 -1245 0 0 {name=SPICE only_toplevel=false value=
"
.options temp=27
*.options savecurrents

.control
   save all
 let run=0
  dowhile run < 2
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

         let vsupply = vsupply + 0.1
      end
      
      let t = t+15
   end
let run = run+1
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
C {vsource.sym} 580 -270 0 0 {name=Vin value="DC=0.9 AC=0.4 SIN(0 0.2 5k 0 0)" savecurrent=false
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
C {/foss/designs/ttsky_opamp/xschem/opamp.sym} 590 -580 0 0 {name=x1}
C {devices/launcher.sym} 1230 -960 0 0 {name=h2 
descr="Load Waveforms" 
tclcommand="
xschem raw_read $netlist_dir/tb_opamp.raw op
# Helper procedure to round a value 'a' to the nearest 'size'
proc xround \{a size\} \{
    return [expr \{round($a/$size) * $size\}]
\}

# Main procedure to generate the histogram
proc get_histo \{\} \{
    # Define the bin size for the histogram
    set size [expr \{1.0 / 256.0\}]
    
    # Clear temporary arrays, ignoring errors if they don't exist
    catch \{unset f1 f2\}
    
    # Read all values from 'f1' and 'f2' from the last simulation (-1)
    # and build the histogram counts in the 'f1' and 'f2' arrays.
    foreach v1 [xschem raw values vin -1] v2 [xschem raw values vout -1] \{
        set v1 [xround $v1 $size]
        set v2 [xround $v2 $size]
        
        # Increment the count for the corresponding bin
        if \{![info exists f1($v1)]\} \{ set f1($v1) 1\} else \{incr f1($v1)\}
        if \{![info exists f2($v2)]\} \{ set f2($v2) 1\} else \{incr f2($v2)\}
    \}
    
    # Create a new in-memory raw file to store the histogram data
    # Plot name: "distrib", Sweep vector: "freq", Range: 0.0 to 1.0, Step: $size
    xschem raw new distrib distrib freq 0.0 1.0 $size
    
    # Add two new vectors (traces) to this new raw file
    xschem raw add f1
    xschem raw add f2
    
    # Iterate through all possible bins from 0.0 to 1.0
    set j 0
    for \{set i 0.0\} \{$i <= 1.0\} \{set i [expr \{$i + $size\}] \} \{
        # Get the count for the bin, or 0 if no values fell in it
        set v1 0
        set v2 0
        if \{[info exists f1($i)]\} \{ set v1 $f1($i) \}
        if \{[info exists f2($i)]\} \{ set v2 $f2($i) \}
        
        # Set the j-th data point in the new raw file vectors
        xschem raw set f1 $j $v1
        xschem raw set f2 $j $v2
        
        # Increment the data point index
        incr j
    \}
\}

# --- Script Execution ---

# Run the histogram procedure
get_histo

# Redraw xschem to show the new "distrib" plot
xschem redraw
"
}
C {devices/launcher.sym} 1230 -1010 0 0 {name=h3 
descr="Annotate" 
tclcommand="
set show_hidden_texts 1;
xschem annotate_op
"
}
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
C {devices/code.sym} 20 -220 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.param MT_SWITCH = 1.0
.lib $::SKYWATER_MODELS/sky130.lib.spice tt_mm
"
spice_ignore=false}
C {vsource.sym} 580 -150 0 0 {name=Vcm value=0.9 savecurrent=false}
C {lab_pin.sym} 580 -180 0 1 {name=Vcm1 sig_type=std_logic lab=VCM value=\{VCM\}}
C {gnd.sym} 580 -120 0 0 {name=Vcm2 lab=GND
value=\{VCM\}}
C {lab_pin.sym} 580 -240 0 1 {name=Vcm3 sig_type=std_logic lab=VCM value=\{VCM\}}
