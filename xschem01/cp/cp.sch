v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 540 -260 700 -260 {
lab=bias}
N 500 -230 500 -200 {
lab=vss}
N 500 -200 740 -200 {
lab=vss}
N 740 -230 740 -200 {
lab=vss}
N 500 -460 500 -290 {
lab=bias}
N 500 -320 580 -320 {
lab=bias}
N 580 -320 580 -260 {
lab=bias}
N 780 -600 980 -600 {
lab=n1}
N 740 -670 740 -630 {
lab=vdd}
N 740 -670 1020 -670 {
lab=vdd}
N 1020 -670 1020 -630 {
lab=vdd}
N 740 -200 1020 -200 {
lab=vss}
N 1020 -230 1020 -200 {
lab=vss}
N 680 -310 680 -260 {
lab=bias}
N 680 -310 980 -310 {
lab=bias}
N 980 -310 980 -260 {
lab=bias}
N 740 -570 740 -490 {
lab=n1}
N 1020 -570 1020 -530 {
lab=n2}
N 1020 -470 1020 -400 {
lab=cp_out}
N 1020 -340 1020 -290 {
lab=n3}
N 740 -490 740 -290 {
lab=n1}
N 740 -540 800 -540 {
lab=n1}
N 800 -600 800 -540 {
lab=n1}
N 1020 -600 1040 -600 {
lab=vdd}
N 1040 -670 1040 -600 {
lab=vdd}
N 1020 -670 1040 -670 {
lab=vdd}
N 1020 -500 1040 -500 {
lab=vdd}
N 1040 -600 1040 -500 {
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
N 1020 -440 1140 -440 {
lab=cp_out}
N 950 -500 980 -500 {
lab=qa}
N 950 -370 980 -370 {
lab=qb}
N 720 -600 740 -600 {
lab=vdd}
N 720 -670 720 -600 {
lab=vdd}
N 720 -670 740 -670 {
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
N 500 -670 500 -620 {
lab=vdd}
N 500 -670 720 -670 {
lab=vdd}
N 500 -560 500 -460 {
lab=bias}
N 760 -700 760 -670 {
lab=vdd}
N 760 -200 760 -170 {
lab=vss}
N 500 -590 520 -590 {
lab=vdd}
N 520 -670 520 -590 {
lab=vdd}
N 430 -590 460 -590 {
lab=cp_bias}
C {sky130_fd_pr/pfet_01v8.sym} 760 -600 0 1 {name=M1
L=0.3
W=6
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
W=2
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
W=2
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
C {sky130_fd_pr/pfet_01v8.sym} 1000 -600 0 0 {name=M4
L=0.3
W=7
nf=1
mult=2
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
W=0.7
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
C {sky130_fd_pr/pfet_01v8.sym} 1000 -500 0 0 {name=M6
L=2
W=1
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
L=5
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
C {devices/ipin.sym} 950 -500 0 0 {name=p1 lab=qa}
C {devices/ipin.sym} 950 -370 0 0 {name=p2 lab=qb}
C {devices/opin.sym} 1140 -440 0 0 {name=p3 lab=cp_out}
C {devices/iopin.sym} 760 -700 0 0 {name=p4 lab=vdd}
C {devices/iopin.sym} 760 -170 0 0 {name=p5 lab=vss}
C {devices/lab_pin.sym} 500 -350 0 0 {name=l7 sig_type=std_logic lab=bias}
C {devices/lab_pin.sym} 740 -480 0 0 {name=l1 sig_type=std_logic lab=n1}
C {devices/lab_pin.sym} 1020 -550 0 0 {name=l2 sig_type=std_logic lab=n2}
C {devices/lab_pin.sym} 1020 -320 0 0 {name=l3 sig_type=std_logic lab=n3}
C {sky130_fd_pr/pfet_01v8.sym} 480 -590 0 0 {name=M8
L=0.3
W=6
nf=1
mult=3
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 430 -590 0 0 {name=p6 lab=cp_bias}
C {devices/ngspice_get_value.sym} 390 -290 0 0 {name=r1 node=v(@m.x2.xm3.msky130_fd_pr__nfet_01v8[vth])
descr="VTH="}
C {devices/ngspice_get_value.sym} 370 -240 0 0 {name=r2 node=v(@m.x2.xm3.msky130_fd_pr__nfet_01v8[vgs])
descr="VGS="}
