v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1100 -780 1900 -380 {flags=graph
y1=-1.3e-05
y2=8e-33
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.8
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(vd)
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1960 -780 2760 -380 {flags=graph
y1=0
y2=0.0027
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.8
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=@m.xm1.msky130_fd_pr__nfet_01v8[gm]
color=8
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1950 -340 2750 60 {flags=graph
y1=-3.6e-15
y2=2.8e-16
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.8
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=@m.xm1.msky130_fd_pr__nfet_01v8[cgs]
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
N 470 -520 570 -520 {
lab=#net1}
N 610 -490 610 -430 {
lab=GND}
N 610 -520 670 -520 {
lab=GND}
N 670 -520 670 -450 {
lab=GND}
N 610 -450 670 -450 {
lab=GND}
N 610 -610 610 -550 {
lab=#net2}
N 790 -620 790 -560 {
lab=#net2}
N 610 -620 790 -620 {
lab=#net2}
N 610 -620 610 -610 {
lab=#net2}
N 450 -520 450 -500 {
lab=#net1}
N 450 -520 470 -520 {
lab=#net1}
C {sky130_fd_pr/nfet_01v8.sym} 590 -520 0 0 {name=M1
L=0.15
W=width
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 610 -430 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 450 -470 0 0 {name=Vg value=0.6 savecurrent=false}
C {devices/vsource.sym} 790 -530 0 0 {name=Vd value=1.8 savecurrent=false}
C {devices/gnd.sym} 450 -440 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 790 -500 0 0 {name=l3 lab=GND}
C {devices/code.sym} 460 -200 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} -240 -390 0 0 {name=s1 only_toplevel=false value="
.options acct list
.temp 25
.param width=5

.control
save all
op
dc width 2 5 1
write nfet.raw
.endc


"
spice_ignore=true}
C {devices/launcher.sym} 1160 -330 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/nfet.raw dc"
}
C {devices/code_shown.sym} -280 50 0 0 {name=s2 only_toplevel=false value="
.options acct list
.temp 25

.control
save all
save @m.xm1.msky130_fd_pr__nfet_01v8[gm]
save @m.xm1.msky130_fd_pr__nfet_01v8[cgs]

op

print @m.xm1.msky130_fd_pr__nfet_01v8[gm]
print @m.xm1.msky130_fd_pr__nfet_01v8[cgs]

dc vd 0 1.8 0.05  vg 0 1.8 0.3
write nfet.raw
.endc


"
spice_ignore=true}
C {devices/code_shown.sym} 770 -380 0 0 {name=s3 only_toplevel=false value="
.options acct list
.temp 25
.param width=1

.control
save all
op
dc Vd  0  1.8  0.3
write nfet.raw

alterparam width=10
reset
set appendwrite
dc Vd  0  1.8  0.3
write nfet.raw

alterparam width=15
reset
set appendwrite
dc Vd  0  1.8  0.3
write nfet.raw

alterparam width=18
reset
set appendwrite
dc Vd  0  1.8  0.3
write nfet.raw


.endc
"
}
