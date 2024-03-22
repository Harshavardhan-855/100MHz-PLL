v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 120 -1940 920 -1540 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="a
b
"
color="18 19"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 970 -1950 1770 -1550 {flags=graph
y1=-0.028
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=qb
color=12
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 970 -2350 1770 -1950 {flags=graph
y1=-0.056
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=qa1
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=op}
B 2 1860 -2360 2660 -1960 {flags=graph
y1=1.7
y2=2.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=qa}
B 2 2700 -2380 3500 -1980 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=a
color=18
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 120 -2370 920 -1970 {flags=graph
y1=1.7
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=12
node=vdd}
B 2 1850 -1950 2650 -1550 {flags=graph
y1=0.02
y2=0.91
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=CP_OUT
color=13
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 2720 -1950 3520 -1550 {flags=graph
y1=-0.00024
y2=0.00018
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(@c3[i])
color=13
dataset=-1
unitx=1
logx=0
logy=0
}
N 1220 -1440 1220 -1410 {
lab=vdd}
N 1010 -1160 1010 -1130 {
lab=B}
N 1010 -1290 1010 -1260 {
lab=A}
N 1480 -1320 1480 -1280 {
lab=vdd}
N 1300 -1220 1330 -1220 {
lab=A}
N 1300 -1180 1330 -1180 {
lab=B}
N 1630 -1240 1680 -1240 {
lab=qa1}
N 1630 -1160 1680 -1160 {
lab=qb}
N 1680 -1160 1710 -1160 {
lab=qb}
N 1710 -1160 1710 -1140 {
lab=qb}
N 1680 -1240 1780 -1240 {
lab=qa1}
N 1780 -1240 1780 -1140 {
lab=qa1}
N 1970 -1200 2000 -1200 {
lab=qa}
N 1970 -1180 2000 -1180 {
lab=qb}
N 2070 -1270 2070 -1240 {
lab=vdd}
N 2140 -1190 2170 -1190 {
lab=cp_out}
N 2040 -1270 2040 -1240 {
lab=cp_bias}
N 1920 -1420 1920 -1390 {
lab=cp_bias}
N 1310 -1440 1310 -1410 {
lab=vdd}
N 1780 -1240 1830 -1240 {
lab=qa1}
N 1830 -1240 1830 -1200 {
lab=qa1}
N 1910 -1200 1970 -1200 {
lab=qa}
C {pfd/pfd.sym} 1480 -1200 0 0 {name=x1}
C {devices/vsource.sym} 1220 -1380 0 0 {name=V1 value=vdd savecurrent=false
}
C {devices/gnd.sym} 1220 -1350 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 1220 -1430 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 1010 -1100 0 0 {name=V2 value="pulse(0 1.8 'td_b' 'tr' 'tf' 'tw' 'tp') " savecurrent=false}
C {devices/gnd.sym} 1010 -1070 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 1010 -1150 0 0 {name=p3 sig_type=std_logic lab=B}
C {devices/vsource.sym} 1010 -1230 0 0 {name=V3 value="pulse(0 1.8 'td_a' 'tr' 'tf' 'tw' 'tp') " savecurrent=false}
C {devices/gnd.sym} 1010 -1200 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 1010 -1280 0 0 {name=p6 sig_type=std_logic lab=A}
C {devices/code_shown.sym} 1400 -920 0 0 {name=STIMULI
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
step param R1 R1_start R1_stop R1_step
write pfd_tran.raw

.endc
"
spice_ignore=true}
C {devices/code.sym} 1180 -920 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/gnd.sym} 1480 -1120 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 1480 -1300 0 0 {name=p2 sig_type=std_logic lab=vdd
}
C {devices/lab_wire.sym} 1300 -1220 0 0 {name=p4 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 1300 -1180 0 0 {name=p5 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 1680 -1160 0 0 {name=p8 sig_type=std_logic lab=qb}
C {devices/capa-2.sym} 1710 -1110 0 0 {name=C1
m=1
value=cload
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {devices/capa-2.sym} 1780 -1110 0 0 {name=C2
m=1
value=cload
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {devices/gnd.sym} 1710 -1080 0 0 {name=l5 lab=GND
spice_ignore=true}
C {devices/gnd.sym} 1780 -1080 0 0 {name=l6 lab=GND
spice_ignore=true}
C {cp/cp.sym} 2070 -1190 0 0 {name=x2}
C {devices/gnd.sym} 2070 -1140 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 1980 -1200 0 0 {name=p13 sig_type=std_logic lab=qa}
C {devices/lab_wire.sym} 1980 -1180 0 0 {name=p14 sig_type=std_logic lab=qb}
C {devices/lab_wire.sym} 2070 -1260 1 0 {name=p15 sig_type=std_logic lab=vdd}
C {devices/capa-2.sym} 2170 -1160 0 0 {name=C3
m=1
value=cload
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} 2170 -1130 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 2150 -1190 1 0 {name=p16 sig_type=std_logic lab=cp_out}
C {devices/lab_wire.sym} 2040 -1260 0 0 {name=p18 sig_type=std_logic lab=cp_bias}
C {devices/code_shown.sym} 2270 -960 0 0 {name=STIMULI1
only_toplevel=true
value="
.options acct list savecurrents
.temp 25
.param cload=5p vdd=1.8
+ ibias=10u  low=0  high=1.8
+ tr=0.1n  tf=0.1n
+ td_a=200n 
+ td_b=220n
+ tw=40n  tp=80n
******charging
*+ tw_a=50n tp_a=80n
*+ tw_b=0n  tp_b=0n
******discharging
*+ tw_a=0n tp_a=0n
*+ tw_b=50n  tp_b=80n

.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.ic v(cp_out)=0.9  v(cp_out1)=1.8

*.meas tran TRAN_PERIOD TRIG V(QA) VAL=0.5 RISE=1 TARG V(QA) VAL=0.5 RISE=2
*.meas tran TRAN_FREQ param='1/TRAN_PERIOD'

.print TRAN_PERIOD  TRAN_FREQ
*print @m.x1.xm3.msky130_fd_pr__nfet_01v8[id]  @m.x1.xm4.msky130_fd_pr__pfet_01v8[id]


.control
save all
save @m.x2.xm3.msky130_fd_pr__nfet_01v8[vth]
save @m.x2.xm3.msky130_fd_pr__nfet_01v8[vgs]



op
write pfd_cp_tran.raw
set appendwrite

tran 0.1n 10u
write pfd_cp_tran.raw

print  @m.x1.xm3.msky130_fd_pr__nfet_01v8[vth]
print  @m.x1.xm3.msky130_fd_pr__nfet_01v8[gm]
print  @m.x1.xm3.msky130_fd_pr__nfet_01v8[vgs]

*print x1.bias  x1.n1   x1.cp_out

.endc
"
}
C {devices/vsource.sym} 1920 -1360 0 0 {name=V9 value=0.85 savecurrent=false
}
C {devices/gnd.sym} 1920 -1330 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 1920 -1410 0 0 {name=p17 sig_type=std_logic lab=cp_bias}
C {devices/launcher.sym} 170 -1490 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/pfd_cp_tran.raw tran"
}
C {devices/vsource.sym} 1310 -1380 0 0 {name=V4 value="PWL 0 0 100n 1.8" savecurrent=false
spice_ignore=true}
C {devices/gnd.sym} 1310 -1350 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 1310 -1430 0 0 {name=p9 sig_type=std_logic lab=vdd}
C {sky130_stdcells/inv_4.sym} 1870 -1200 0 0 {name=x4 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 1690 -1240 0 0 {name=p7 sig_type=std_logic lab=qa1}
