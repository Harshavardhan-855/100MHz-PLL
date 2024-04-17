v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1310 -970 2110 -570 {flags=graph
y1=0.00032
y2=1.3
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
B 2 1310 -550 2110 -150 {flags=graph
y1=-0.061
y2=2
ypos1=-0.061
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
color="13 7"
node="QA
QB"
digital=1}
N 680 -260 700 -260 {
lab=bias}
N 500 -230 500 -200 {
lab=vss}
N 500 -200 740 -200 {
lab=vss}
N 740 -230 740 -200 {
lab=vss}
N 500 -320 580 -320 {
lab=bias}
N 580 -320 580 -260 {
lab=bias}
N 800 -730 980 -730 {
lab=n1}
N 740 -800 740 -760 {
lab=vdd}
N 760 -800 1020 -800 {
lab=vdd}
N 1020 -800 1020 -760 {
lab=vdd}
N 760 -200 1020 -200 {
lab=vss}
N 1020 -230 1020 -200 {
lab=vss}
N 680 -310 680 -260 {
lab=bias}
N 680 -310 980 -310 {
lab=bias}
N 980 -310 980 -260 {
lab=bias}
N 740 -670 740 -520 {
lab=n1}
N 1020 -700 1020 -660 {
lab=n2}
N 1020 -340 1020 -290 {
lab=n3}
N 740 -670 800 -670 {
lab=n1}
N 800 -730 800 -670 {
lab=n1}
N 1020 -730 1040 -730 {
lab=vdd}
N 1040 -800 1040 -730 {
lab=vdd}
N 1020 -800 1040 -800 {
lab=vdd}
N 1020 -570 1040 -570 {
lab=vdd}
N 1020 -260 1040 -260 {
lab=vss}
N 1040 -260 1040 -200 {
lab=vss}
N 1020 -200 1040 -200 {
lab=vss}
N 1040 -370 1040 -260 {
lab=vss}
N 1020 -370 1040 -370 {
lab=vss}
N 1020 -490 1140 -490 {
lab=cp_out}
N 950 -570 980 -570 {
lab=qa}
N 950 -370 980 -370 {
lab=qb}
N 720 -730 740 -730 {
lab=vdd}
N 720 -800 720 -730 {
lab=vdd}
N 720 -800 740 -800 {
lab=vdd}
N 740 -260 760 -260 {
lab=vss}
N 760 -260 760 -200 {
lab=vss}
N 480 -260 500 -260 {
lab=vss}
N 480 -260 480 -200 {
lab=vss}
N 480 -200 500 -200 {
lab=vss}
N 500 -800 500 -750 {
lab=vdd}
N 520 -800 720 -800 {
lab=vdd}
N 500 -690 500 -530 {
lab=#net1}
N 760 -830 760 -800 {
lab=vdd}
N 760 -200 760 -170 {
lab=vss}
N 500 -720 520 -720 {
lab=vdd}
N 520 -800 520 -720 {
lab=vdd}
N 430 -720 460 -720 {
lab=cp_bias}
N 1020 -540 1020 -490 {
lab=cp_out}
N 1020 -490 1020 -480 {
lab=cp_out}
N 1020 -420 1020 -400 {
lab=#net2}
N 740 -460 740 -290 {
lab=#net3}
N 500 -320 500 -290 {
lab=bias}
N 500 -470 500 -320 {
lab=bias}
N 540 -260 580 -260 {
lab=bias}
N 580 -260 680 -260 {
lab=bias}
N 740 -700 740 -670 {
lab=n1}
N 780 -730 800 -730 {
lab=n1}
N 740 -200 760 -200 {
lab=vss}
N 740 -800 760 -800 {
lab=vdd}
N 500 -800 520 -800 {
lab=vdd}
N 1040 -730 1040 -570 {
lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 760 -730 0 1 {name=M1
L=0.15
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 720 -260 0 0 {name=M2
L=0.3
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 520 -260 0 1 {name=M3
L=0.30
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 1000 -730 0 0 {name=M4
L=0.15
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1000 -260 0 0 {name=M5
L=0.3
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 1000 -570 0 0 {name=M6
L=0.15
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1000 -370 0 0 {name=M7
L=0.3
W=1
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
C {devices/isource.sym} 220 -590 0 0 {name=I0 value=ibias
spice_ignore=true}
C {devices/ipin.sym} 950 -570 0 0 {name=p1 lab=qa}
C {devices/ipin.sym} 950 -370 0 0 {name=p2 lab=qb}
C {devices/opin.sym} 1140 -490 0 0 {name=p3 lab=cp_out}
C {devices/iopin.sym} 760 -830 0 0 {name=p4 lab=vdd}
C {devices/iopin.sym} 760 -170 0 0 {name=p5 lab=vss}
C {devices/lab_pin.sym} 500 -350 0 0 {name=l7 sig_type=std_logic lab=bias}
C {devices/lab_pin.sym} 740 -610 0 0 {name=l1 sig_type=std_logic lab=n1}
C {devices/lab_pin.sym} 1020 -680 0 0 {name=l2 sig_type=std_logic lab=n2}
C {devices/lab_pin.sym} 1020 -320 0 0 {name=l3 sig_type=std_logic lab=n3}
C {sky130_fd_pr/pfet_01v8.sym} 480 -720 0 0 {name=M8
L=0.15
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 430 -720 0 0 {name=p6 lab=cp_bias}
C {devices/ngspice_get_value.sym} 390 -290 0 0 {name=r1 node=V(@m.x2.xm3.msky130_fd_pr__nfet_01v8[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 370 -240 0 0 {name=r2 node=v(@m.x2.xm3.msky130_fd_pr__nfet_01v8[vgs])
descr="VGS="}
C {devices/ammeter.sym} 1020 -630 0 0 {name=Vmeas savecurrent=true}
C {devices/ammeter.sym} 1020 -450 0 0 {name=Vmeas2 savecurrent=true}
C {devices/ammeter.sym} 740 -490 0 0 {name=Vmeas3 savecurrent=true}
C {devices/ammeter.sym} 500 -500 0 0 {name=Vmeas4 savecurrent=true}
C {devices/ngspice_get_value.sym} 440 -760 0 0 {name=r3 node=V(@m.x2.xm8.msky130_fd_pr__pfet_01v8[vth])
descr="vth="}
