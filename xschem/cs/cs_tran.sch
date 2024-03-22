v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1110 -930 1910 -530 {flags=graph
y1=0.081
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="inp
out
out_pex"
color="8 7 17"
dataset=-1
unitx=1
logx=0
logy=0
}
N 420 -410 420 -380 {
lab=vdd}
N 530 -410 530 -380 {
lab=inp}
N 530 -420 530 -410 {
lab=inp}
N 760 -500 760 -480 {
lab=vdd}
N 910 -420 990 -420 {
lab=out}
N 530 -420 610 -420 {
lab=inp}
N 720 -790 720 -770 {
lab=vdd}
N 870 -710 950 -710 {
lab=out_pex}
N 490 -710 570 -710 {
lab=inp}
C {cs/cs.sym} 760 -420 0 0 {name=x1
}
C {sky130_fd_pr/corner.sym} 990 -150 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/vsource.sym} 420 -350 0 0 {name=V2 value=1.8   savecurrent=false}
C {devices/gnd.sym} 420 -320 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 420 -400 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 530 -350 0 0 {name=V3 value="sin(1 10m 1e6 0 0) " savecurrent=false}
C {devices/gnd.sym} 530 -320 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 530 -400 0 0 {name=p6 sig_type=std_logic lab=inp}
C {devices/gnd.sym} 760 -360 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 760 -490 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 970 -420 0 0 {name=p2 sig_type=std_logic lab=out}
C {devices/code_shown.sym} 670 -240 0 0 {name=STIMULI
only_toplevel=true
value="
.options acct list
.temp 25

.op

.control
save all
tran 1n 5u
remzerovec
write cs_tran.raw
.endc
"
}
C {devices/launcher.sym} 1160 -490 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/cs_tran.raw tran"
}
C {cs/cs.sym} 720 -710 0 0 {name=x2
schematic=cs_pex
spice_sym_def=".include /home/vks/pll/magic/cs_pex.spice"}
C {devices/gnd.sym} 720 -650 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 720 -780 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 930 -710 0 0 {name=p5 sig_type=std_logic lab=out_pex}
C {devices/lab_wire.sym} 510 -710 0 0 {name=p7 sig_type=std_logic lab=inp}
