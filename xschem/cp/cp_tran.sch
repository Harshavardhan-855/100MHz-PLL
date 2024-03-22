v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 4000 -2990 4800 -2590 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=1.8
divy=5
subdivy=1
unity=1
x1=0
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="qa
qb"
color="8 4"
dataset=-1
unitx=1
logx=0
logy=0
digital=0}
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
node="qa1
qb1"
color="7 4"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
B 2 5790 -2510 6590 -2110 {flags=graph
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
y1=0.0058
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
node="cp_out
cp_out1"
color="8 4"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 4870 -2520 5670 -2120 {flags=graph
y1=0.69
y2=1.1
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
node=cp_out1
color=8
dataset=-1
unitx=1
logx=0
logy=0
}
N 2970 -2480 2970 -2450 {
lab=vdd}
N 2680 -1880 2680 -1850 {
lab=qb1}
N 2680 -2010 2680 -1980 {
lab=qa1}
N 3120 -1980 3150 -1980 {
lab=#net1}
N 3120 -1960 3150 -1960 {
lab=#net2}
N 3220 -2050 3220 -2020 {
lab=#net3}
N 3290 -1970 3320 -1970 {
lab=#net4}
N 2810 -2480 2810 -2450 {
lab=vdd}
N 2680 -2190 2680 -2160 {
lab=qb}
N 2680 -2320 2680 -2290 {
lab=qa}
N 3120 -2200 3150 -2200 {
lab=qa}
N 3120 -2180 3150 -2180 {
lab=qb}
N 3220 -2270 3220 -2240 {
lab=vdd}
N 3290 -2190 3320 -2190 {
lab=cp_out}
N 3180 -2480 3180 -2450 {
lab=cp_bias}
N 3190 -2270 3190 -2240 {
lab=cp_bias}
N 3190 -2050 3190 -2020 {
lab=#net5}
C {cp/cp.sym} 3220 -1970 0 0 {name=x1
}
C {devices/vsource.sym} 2970 -2420 0 0 {name=V1 value="PWL 0 0 100n 1.8" savecurrent=false
spice_ignore=true}
C {devices/gnd.sym} 2970 -2390 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 2970 -2470 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 2680 -1820 0 0 {name=V2 value="pulse('low' 'high' 100n 1n 1n 'tw' 'tp') " savecurrent=false
}
C {devices/gnd.sym} 2680 -1790 0 0 {name=l3 lab=GND
}
C {devices/lab_wire.sym} 2680 -1870 0 0 {name=p3 sig_type=std_logic lab=qb1
}
C {devices/vsource.sym} 2680 -1950 0 0 {name=V3 value="pulse('high' 'high' 100n 1n 1n 'tw' 'tp') " savecurrent=false
}
C {devices/gnd.sym} 2680 -1920 0 0 {name=l4 lab=GND
}
C {devices/lab_wire.sym} 2680 -2000 0 0 {name=p6 sig_type=std_logic lab=qa1
}
C {devices/code_shown.sym} 3510 -2030 0 0 {name=STIMULI
only_toplevel=true
value="
.options acct list savecurrents
.temp 25
.param cload=5p
+ ibias=10u  low=0  high=1.8
+ tw=40n  tp=80n
******charging
*+ tw_a=50n tp_a=80n
*+ tw_b=0n  tp_b=0n
******discharging
*+ tw_a=0n tp_a=0n
*+ tw_b=50n  tp_b=80n

.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.ic v(cp_out)=0.9  v(cp_out1)=0.9

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
C {devices/code.sym} 3490 -2230 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/gnd.sym} 3220 -1920 0 0 {name=l2 lab=GND
}
C {devices/lab_wire.sym} 3130 -1980 0 0 {name=p2 sig_type=std_logic lab=qa1
}
C {devices/lab_wire.sym} 3130 -1960 0 0 {name=p4 sig_type=std_logic lab=qb1
}
C {devices/lab_wire.sym} 3220 -2040 1 0 {name=p5 sig_type=std_logic lab=vdd
}
C {devices/capa-2.sym} 3320 -1940 0 0 {name=C1
m=1
value=cload
footprint=1206
device=polarized_capacitor
}
C {devices/gnd.sym} 3320 -1910 0 0 {name=l5 lab=GND
}
C {devices/lab_wire.sym} 3300 -1970 1 0 {name=p7 sig_type=std_logic lab=cp_out1
}
C {devices/launcher.sym} 4070 -2560 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/cp_tran.raw tran"
}
C {devices/vsource.sym} 2810 -2420 0 0 {name=V4 value=1.8 savecurrent=false
}
C {devices/gnd.sym} 2810 -2390 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 2810 -2470 0 0 {name=p8 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 2680 -2130 0 0 {name=V7 value="pulse('low' 'low' 100n 1n 1n 'tw' 'tp') " savecurrent=false
}
C {devices/gnd.sym} 2680 -2100 0 0 {name=l9 lab=GND
}
C {devices/lab_wire.sym} 2680 -2180 0 0 {name=p11 sig_type=std_logic lab=qb
}
C {devices/vsource.sym} 2680 -2260 0 0 {name=V8 value="pulse('low' 'high' 100n 1n 1n 'tw' 'tp') " savecurrent=false
}
C {devices/gnd.sym} 2680 -2230 0 0 {name=l10 lab=GND
}
C {devices/lab_wire.sym} 2680 -2310 0 0 {name=p12 sig_type=std_logic lab=qa
}
C {cp/cp.sym} 3220 -2190 0 0 {name=x2}
C {devices/gnd.sym} 3220 -2140 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 3130 -2200 0 0 {name=p13 sig_type=std_logic lab=qa}
C {devices/lab_wire.sym} 3130 -2180 0 0 {name=p14 sig_type=std_logic lab=qb}
C {devices/lab_wire.sym} 3220 -2260 1 0 {name=p15 sig_type=std_logic lab=vdd}
C {devices/capa-2.sym} 3320 -2160 0 0 {name=C2
m=1
value=cload
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} 3320 -2130 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 3300 -2190 1 0 {name=p16 sig_type=std_logic lab=cp_out}
C {devices/vsource.sym} 3180 -2420 0 0 {name=V9 value=0.85 savecurrent=false
}
C {devices/gnd.sym} 3180 -2390 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 3180 -2470 0 0 {name=p17 sig_type=std_logic lab=cp_bias}
C {devices/lab_wire.sym} 3190 -2260 0 0 {name=p18 sig_type=std_logic lab=cp_bias}
C {devices/lab_wire.sym} 3190 -2040 0 0 {name=p19 sig_type=std_logic lab=cp_bias
}
