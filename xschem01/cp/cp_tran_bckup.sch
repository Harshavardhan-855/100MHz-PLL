v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 4000 -2990 4800 -2590 {flags=graph
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
node=qa
color=8
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 4000 -2520 4800 -2120 {flags=graph
y1=0.9
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
node="cp_out
"
color=8
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 4880 -2990 5680 -2590 {flags=graph
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
node=qb
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 4890 -2520 5690 -2120 {flags=graph
y1=7.6e-06
y2=0.76
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
node="i(@m.x1.xm3.msky130_fd_pr__nfet_01v8[id])
@m.x1.xm3.msky130_fd_pr__nfet_01v8[vth]
@m.x1.xm3.msky130_fd_pr__nfet_01v8[vgs]"
color="7 8 11"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 4420 -1980 5220 -1580 {flags=graph
y1=0
y2=0.01
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
node="@m.x1.xm6.msky130_fd_pr__pfet_01v8[vsg]
@m.x1.xm4.msky130_fd_pr__pfet_01v8[vsg]"
color="8 4"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 5260 -1980 6060 -1580 {flags=graph
y1=-0.13
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
node="x1.n2
x1.n1
cp_out
vdd
x1.n3"
color="8 4 17 18 19"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 5260 -1550 6060 -1150 {flags=graph
y1=0.9
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
node=cp_out
color=8
dataset=-1
unitx=1
logx=0
logy=0
}
N 2970 -2480 2970 -2450 {
lab=vdd}
N 2970 -2190 2970 -2160 {
lab=qb}
N 2970 -2320 2970 -2290 {
lab=qa}
N 3260 -2250 3290 -2250 {
lab=qa}
N 3260 -2230 3290 -2230 {
lab=qb}
N 3360 -2320 3360 -2290 {
lab=vdd}
N 3430 -2240 3460 -2240 {
lab=cp_out}
N 2810 -2480 2810 -2450 {
lab=vdd}
N 2480 -2200 2480 -2170 {
lab=#net1}
N 2480 -2330 2480 -2300 {
lab=#net2}
N 2680 -2190 2680 -2160 {
lab=qb}
N 2680 -2320 2680 -2290 {
lab=qa}
C {cp/cp.sym} 3360 -2240 0 0 {name=x1}
C {devices/vsource.sym} 2970 -2420 0 0 {name=V1 value="PWL 0 0 100n 1.8" savecurrent=false
}
C {devices/gnd.sym} 2970 -2390 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 2970 -2470 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 2970 -2130 0 0 {name=V2 value="pulse('low' 'high' 100n 1n 1n 'tw_b' 'tp_b') " savecurrent=false
spice_ignore=true}
C {devices/gnd.sym} 2970 -2100 0 0 {name=l3 lab=GND
}
C {devices/lab_wire.sym} 2970 -2180 0 0 {name=p3 sig_type=std_logic lab=qb
}
C {devices/vsource.sym} 2970 -2260 0 0 {name=V3 value="pulse('high' 'high' 100n 1n 1n 'tw_a' 'tp_a') " savecurrent=false
spice_ignore=true}
C {devices/gnd.sym} 2970 -2230 0 0 {name=l4 lab=GND
}
C {devices/lab_wire.sym} 2970 -2310 0 0 {name=p6 sig_type=std_logic lab=qa
}
C {devices/code_shown.sym} 3510 -2030 0 0 {name=STIMULI
only_toplevel=true
value="
.options acct list savecurrents
.temp 25
.param cload=5p
+ ibias=10u  low=0  high=1.8
******charging
+ tw_a=50n tp_a=80n
+ tw_b=0n  tp_b=0n
******discharging
*+ tw_a=0n tp_a=0n
*+ tw_b=50n  tp_b=80n

.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.ic v(cp_out)=1.8

*.meas tran TRAN_PERIOD TRIG V(QA) VAL=0.5 RISE=1 TARG V(QA) VAL=0.5 RISE=2
*.meas tran TRAN_FREQ param='1/TRAN_PERIOD'

.print TRAN_PERIOD  TRAN_FREQ
*print @m.x1.xm3.msky130_fd_pr__nfet_01v8[id]  @m.x1.xm4.msky130_fd_pr__pfet_01v8[id]


.control
save all
save @m.x1.xm3.msky130_fd_pr__nfet_01v8[vth]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8[vgs]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8[gm]

save @m.x1.xm6.msky130_fd_pr__pfet_01v8[vth]

save @m.x1.xm4.msky130_fd_pr__pfet_01v8[vsg]
save @m.x1.xm6.msky130_fd_pr__pfet_01v8[vsg]


op
write cp_tran.raw
set appendwrite

tran 1n 10u
write cp_tran.raw

print  @m.x1.xm3.msky130_fd_pr__nfet_01v8[vth]
print  @m.x1.xm3.msky130_fd_pr__nfet_01v8[gm]
print  @m.x1.xm3.msky130_fd_pr__nfet_01v8[vgs]

*print x1.bias  x1.n1   x1.cp_out

.endc
"
}
C {devices/code.sym} 3290 -2030 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/gnd.sym} 3360 -2190 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 3270 -2250 0 0 {name=p2 sig_type=std_logic lab=qa}
C {devices/lab_wire.sym} 3270 -2230 0 0 {name=p4 sig_type=std_logic lab=qb}
C {devices/lab_wire.sym} 3360 -2310 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {devices/capa-2.sym} 3460 -2210 0 0 {name=C1
m=1
value=cload
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} 3460 -2180 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 3440 -2240 1 0 {name=p7 sig_type=std_logic lab=cp_out}
C {devices/launcher.sym} 4070 -2560 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/cp_tran.raw tran"
}
C {devices/vsource.sym} 2810 -2420 0 0 {name=V4 value=1.8 savecurrent=false
spice_ignore=true}
C {devices/gnd.sym} 2810 -2390 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 2810 -2470 0 0 {name=p8 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 2480 -2140 0 0 {name=V5 value=low  savecurrent=false
spice_ignore=true}
C {devices/gnd.sym} 2480 -2110 0 0 {name=l7 lab=GND
spice_ignore=true}
C {devices/lab_wire.sym} 2480 -2190 0 0 {name=p9 sig_type=std_logic lab=qb
spice_ignore=true}
C {devices/vsource.sym} 2480 -2270 0 0 {name=V6 value=low savecurrent=false
spice_ignore=true}
C {devices/gnd.sym} 2480 -2240 0 0 {name=l8 lab=GND
spice_ignore=true}
C {devices/lab_wire.sym} 2480 -2320 0 0 {name=p10 sig_type=std_logic lab=qa
spice_ignore=true}
C {devices/vsource.sym} 2680 -2130 0 0 {name=V7 value="pulse('low' 'low' 100n 1n 1n 'tw_b' 'tp_b') " savecurrent=false
}
C {devices/gnd.sym} 2680 -2100 0 0 {name=l9 lab=GND
}
C {devices/lab_wire.sym} 2680 -2180 0 0 {name=p11 sig_type=std_logic lab=qb
}
C {devices/vsource.sym} 2680 -2260 0 0 {name=V8 value="pulse('low' 'high' 100n 1n 1n 'tw_a' 'tp_a') " savecurrent=false
}
C {devices/gnd.sym} 2680 -2230 0 0 {name=l10 lab=GND
}
C {devices/lab_wire.sym} 2680 -2310 0 0 {name=p12 sig_type=std_logic lab=qa
}
