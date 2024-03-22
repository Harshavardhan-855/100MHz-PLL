v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1730 -1590 2530 -1190 {flags=graph
y1=-8.8e-06
y2=3.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=qa
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1730 -1110 2530 -710 {flags=graph
y1=-0.0025
y2=3.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=qb
color=8
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 530 -1580 1330 -1180 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="a
b
"
color="9 10"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -330 -1580 470 -1180 {flags=graph
y1=-0.0013
y2=6.3e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(v1)
color=8
dataset=-1
unitx=1
logx=0
logy=0
}
N 1110 -1040 1110 -1010 {
lab=VDD}
N 1370 -920 1370 -880 {
lab=VDD}
N 900 -760 900 -730 {
lab=B}
N 1190 -820 1220 -820 {
lab=A}
N 1190 -780 1220 -780 {
lab=B}
N 900 -890 900 -860 {
lab=A}
N 1520 -840 1570 -840 {
lab=QA}
N 1520 -760 1570 -760 {
lab=QB}
N 1570 -760 1600 -760 {
lab=QB}
N 1600 -760 1600 -740 {
lab=QB}
N 1570 -840 1670 -840 {
lab=QA}
N 1670 -840 1670 -740 {
lab=QA}
C {pfd/pfd.sym} 1370 -800 0 0 {name=x1}
C {devices/vsource.sym} 1110 -980 0 0 {name=V1 value=3 savecurrent=false}
C {devices/gnd.sym} 1110 -950 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1370 -720 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 1110 -1030 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1370 -900 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 900 -700 0 0 {name=V2 value="pulse(0 1.8 40n 1n 1n 'tw' 'tp') " savecurrent=false}
C {devices/gnd.sym} 900 -670 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 900 -750 0 0 {name=p3 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 1190 -820 0 0 {name=p4 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 1190 -780 0 0 {name=p5 sig_type=std_logic lab=B}
C {devices/vsource.sym} 900 -830 0 0 {name=V3 value="pulse(0 1.8 20n 1n 1n 'tw' 'tp') " savecurrent=false}
C {devices/gnd.sym} 900 -800 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 900 -880 0 0 {name=p6 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 1570 -840 0 0 {name=p7 sig_type=std_logic lab=QA}
C {devices/lab_wire.sym} 1570 -760 0 0 {name=p8 sig_type=std_logic lab=QB}
C {devices/code_shown.sym} 1290 -520 0 0 {name=STIMULI
only_toplevel=true
value="
.options acct list
.temp 25
.param cload=500f  tw=40n tp=80n

.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

*.step cload 100f 500f 100f 

.meas tran TRAN_PERIOD TRIG V(QA) VAL=0.5 RISE=1 TARG V(QA) VAL=0.5 RISE=2
.meas tran TRAN_FREQ param='1/TRAN_PERIOD'

.print TRAN_PERIOD  TRAN_FREQ

.control
save all
tran 1n 500n
write pfd_tran1.raw

alterparam cload=10pf
reset
set appendwrite
tran 1n 500n
write pfd_tran1.raw


alterparam cload=20pf
reset
set appendwrite
tran 1n 500n
write pfd_tran1.raw
.endc
"
}
C {devices/launcher.sym} 1810 -650 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/pfd_tran1.raw tran"
}
C {devices/code.sym} 1070 -520 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/capa-2.sym} 1600 -710 0 0 {name=C1
m=1
value=cload
footprint=1206
device=polarized_capacitor}
C {devices/capa-2.sym} 1670 -710 0 0 {name=C2
m=1
value=cload
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} 1600 -680 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 1670 -680 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 120 -550 0 0 {name=STIMULI1
only_toplevel=true
value="
.options acct list
.temp 25
.param cload=5000f

.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

* Define parameters for .step command
.param R1_start = 100f
.param R1_stop = 1000f
.param R1_step = 200f

*.step param cload 100f 500f 100f

.control
step param cload 100f 500f 100f
save all
tran 1n 500n
write pfd_tran.raw
.endc

* Perform parameter sweep
*.step param R1 R1_start R1_stop R1_step

* Write simulation results to a file

"
spice_ignore=true}
