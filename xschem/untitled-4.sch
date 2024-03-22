v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 210 -930 1010 -530 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="inp
"
color=8
dataset=-1
unitx=1
logx=0
logy=0
}
N 360 -410 360 -380 {
lab=vdd}
N 470 -410 470 -380 {
lab=inp}
N 470 -420 470 -410 {
lab=inp}
N 700 -500 700 -480 {
lab=vdd}
N 850 -420 930 -420 {
lab=out}
N 470 -420 550 -420 {
lab=inp}
C {cs/cs.sym} 700 -420 0 0 {name=x1}
C {sky130_fd_pr/corner.sym} 1040 -350 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/vsource.sym} 360 -350 0 0 {name=V2 value=1.8  savecurrent=false}
C {devices/gnd.sym} 360 -320 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 360 -400 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 470 -350 0 0 {name=V3 value="sin(1 10m 1e6 0 0) " savecurrent=false}
C {devices/gnd.sym} 470 -320 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 470 -400 0 0 {name=p6 sig_type=std_logic lab=inp}
C {devices/gnd.sym} 700 -360 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 700 -490 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 910 -420 0 0 {name=p2 sig_type=std_logic lab=out}
C {devices/code_shown.sym} 420 -170 0 0 {name=STIMULI
only_toplevel=true
value="
.options acct list
.temp 25
*.param cload=500f  tw=40n tp=80n

.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

*.step cload 100f 500f 100f 

*.meas tran TRAN_PERIOD TRIG V(QA) VAL=0.5 RISE=1 TARG V(QA) VAL=0.5 RISE=2
*.meas tran TRAN_FREQ param='1/TRAN_PERIOD'

*.print TRAN_PERIOD  TRAN_FREQ

.control
save all
tran 1n 5u
*step param R1 R1_start R1_stop R1_step
write cs_tran.raw

.endc
"
}
C {devices/launcher.sym} 270 -490 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/untitled-4.raw tran"
}
