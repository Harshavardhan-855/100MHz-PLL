v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 12010 -10770 12810 -10370 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-12
x2=6e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="A
B
QA
QB"
color="4 6 10 15"
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1
digital=1}
B 2 12010 -10340 12810 -9940 {flags=graph
y1=-0.00032
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-12
x2=6e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=cp_out
color=4
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1
digital=0}
B 2 12010 -9900 12810 -9500 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-12
x2=6e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=15
node=cp_out}
N 11400 -10620 11400 -10580 {
lab=VDD}
N 11400 -10620 11820 -10620 {
lab=VDD}
N 11820 -10620 11820 -10550 {
lab=VDD}
N 11400 -10420 11400 -10380 {
lab=GND}
N 11400 -10380 11820 -10380 {
lab=GND}
N 11820 -10450 11820 -10380 {
lab=GND}
N 11710 -10510 11750 -10510 {
lab=QA_B}
N 11710 -10530 11710 -10510 {
lab=QA_B}
N 11710 -10490 11750 -10490 {
lab=QB}
N 11550 -10470 11710 -10470 {
lab=QB}
N 11710 -10490 11710 -10470 {
lab=QB}
N 10930 -10530 10930 -10500 {
lab=B}
N 10690 -10530 10690 -10500 {
lab=A}
N 10920 -10770 10920 -10740 {
lab=VDD}
N 11070 -10770 11070 -10740 {
lab=cp_bias}
N 11890 -10500 11920 -10500 {
lab=cp_out}
N 11610 -10650 11610 -10620 {
lab=VDD}
N 11220 -10530 11250 -10530 {
lab=A}
N 11220 -10470 11250 -10470 {
lab=B}
N 11790 -10580 11790 -10550 {
lab=cp_bias}
N 10690 -10340 10690 -10320 {
lab=GND}
N 10690 -10440 10690 -10400 {
lab=#net1}
N 10930 -10440 10930 -10400 {
lab=#net2}
N 10930 -10340 10930 -10320 {
lab=GND}
N 11550 -10530 11610 -10530 {
lab=QA}
N 11690 -10530 11710 -10530 {
lab=QA_B}
C {pfd/pfd.sym} 11400 -10500 0 0 {name=x1}
C {cp/cp.sym} 11820 -10500 0 0 {name=x2}
C {devices/vsource.sym} 10930 -10470 0 0 {name=V2 value="pulse(0 1.8 2980n 1n 1n 'tw' 'tp') " savecurrent=false}
C {devices/gnd.sym} 10930 -10320 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 10930 -10520 0 0 {name=p3 sig_type=std_logic lab=B}
C {devices/vsource.sym} 10690 -10470 0 0 {name=V3 value="pulse(0 1.8 3000n 1n 1n 'tw' 'tp') " savecurrent=false}
C {devices/gnd.sym} 10690 -10320 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 10690 -10520 0 0 {name=p6 sig_type=std_logic lab=A}
C {devices/code.sym} 10780 -10170 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/vsource.sym} 10920 -10710 0 0 {name=V4 value=1.8 savecurrent=false
}
C {devices/gnd.sym} 10920 -10680 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 10920 -10760 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 10680 -9980 0 0 {name=STIMULI
only_toplevel=true
value="
.options acct list
.temp 25
.param cload=5pf  tw=40n tp=80n

.save all
.save @m.x2.xm1.msky130_fd_pr__nfet_01v8[gm]

.save @m.x2.xm2.msky130_fd_pr__pfet_01v8[vth]
.save @m.x2.xm1.msky130_fd_pr__nfet_01v8[vth]
.save @m.x2.xm3.msky130_fd_pr__nfet_01v8[vth]
.save @m.x2.xm8.msky130_fd_pr__pfet_01v8[vth]


.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

*.step cload 100f 500f 100f 

.meas tran TRAN_PERIOD TRIG V(QA) VAL=0.5 RISE=1 TARG V(QA) VAL=0.5 RISE=2
.meas tran TRAN_FREQ param='1/TRAN_PERIOD'

.print TRAN_PERIOD  TRAN_FREQ

.control
reset
op
write pfd_cp.raw
set appendwrite

tran 0.1n 6u uic
remzerovec
write pfd_cp.raw

.endc
"
}
C {devices/vsource.sym} 11070 -10710 0 0 {name=V9 value=1 savecurrent=false
}
C {devices/gnd.sym} 11070 -10680 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 11070 -10760 0 0 {name=p17 sig_type=std_logic lab=cp_bias}
C {devices/capa-2.sym} 11920 -10470 0 0 {name=C2
m=1
value=cload
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} 11920 -10440 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 11900 -10500 1 0 {name=p16 sig_type=std_logic lab=cp_out}
C {devices/gnd.sym} 11630 -10380 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 11610 -10640 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 11220 -10530 0 0 {name=p2 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 11220 -10470 0 0 {name=p4 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 11790 -10570 0 0 {name=p5 sig_type=std_logic lab=cp_bias}
C {devices/lab_wire.sym} 11580 -10530 0 0 {name=p7 sig_type=std_logic lab=QA}
C {devices/lab_wire.sym} 11580 -10470 0 0 {name=p8 sig_type=std_logic lab=QB}
C {devices/launcher.sym} 11820 -10290 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/pfd_cp.raw tran"
}
C {devices/vsource.sym} 10690 -10370 0 0 {name=V1 value="pulse(0 1.8 20n 1n 1n 'tw' 'tp' 37) " savecurrent=false}
C {devices/vsource.sym} 10930 -10370 0 0 {name=V5 value="pulse(0 1.8 40n 1n 1n 'tw' 'tp' 37) " savecurrent=false}
C {sky130_stdcells/inv_4.sym} 11650 -10530 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 11720 -10510 1 0 {name=p10 sig_type=std_logic lab=QA_B}
C {devices/launcher.sym} 11820 -10230 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
