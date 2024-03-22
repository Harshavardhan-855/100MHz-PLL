v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 30 -1370 830 -970 {flags=graph
y1=-0.57
y2=2.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.02343e-07
x2=4.04955e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out
"
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
N 400 -680 470 -680 {
lab=#net1}
N 550 -680 600 -680 {
lab=#net2}
N 680 -680 740 -680 {
lab=out}
N 270 -680 320 -680 {
lab=out}
N 270 -740 270 -680 {
lab=out}
N 270 -740 740 -740 {
lab=out}
N 740 -740 740 -680 {
lab=out}
N 360 -600 360 -570 {
lab=vdd}
N 480 -600 480 -570 {
lab=vss}
C {sky130_stdcells/inv_2.sym} 360 -680 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_2.sym} 510 -680 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_2.sym} 640 -680 0 0 {name=x3 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/vsource.sym} 360 -540 0 0 {name=V1 value=vdd savecurrent=false
}
C {devices/gnd.sym} 360 -510 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 360 -590 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 480 -540 0 0 {name=V2 value=vss savecurrent=false
}
C {devices/gnd.sym} 480 -510 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 480 -590 0 0 {name=p2 sig_type=std_logic lab=vss}
C {devices/code.sym} 570 -590 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 860 -980 0 0 {name=STIMULI1
only_toplevel=true
value="
.options acct list savecurrents
.temp 25
.param vdd=1.8  vss=0 

.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.control
save all
tran 0.01n 0.6u
remzerovec
write inv.raw
.endc
"
}
C {devices/lab_wire.sym} 740 -700 0 0 {name=p3 sig_type=std_logic lab=out}
C {devices/launcher.sym} 100 -940 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/inv.raw tran"
}
