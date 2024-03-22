v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 300 -530 440 -530 {
lab=#net1}
N 260 -500 260 -200 {
lab=#net1}
N 260 -600 260 -560 {
lab=vdd}
N 260 -600 480 -600 {
lab=vdd}
N 480 -600 480 -560 {
lab=vdd}
N 260 -140 260 -100 {
lab=vss}
N 260 -100 480 -100 {
lab=vss}
N 480 -140 480 -100 {
lab=vss}
N 480 -260 480 -200 {
lab=#net2}
N 480 -380 480 -320 {
lab=#net3}
N 480 -500 480 -440 {
lab=#net4}
N 690 -140 690 -100 {
lab=vss}
N 690 -260 690 -200 {
lab=#net5}
N 690 -380 690 -320 {
lab=#net6}
N 690 -500 690 -440 {
lab=#net7}
N 880 -140 880 -100 {
lab=vss}
N 880 -260 880 -200 {
lab=#net8}
N 880 -380 880 -320 {
lab=out}
N 880 -500 880 -440 {
lab=#net9}
N 480 -100 880 -100 {
lab=vss}
N 480 -600 880 -600 {
lab=vdd}
N 880 -600 880 -560 {
lab=vdd}
N 690 -600 690 -560 {
lab=vdd}
N 100 -170 220 -170 {
lab=vctrl}
N 260 -170 280 -170 {
lab=vss}
N 280 -170 280 -100 {
lab=vss}
N 480 -170 500 -170 {
lab=vss}
N 500 -170 500 -100 {
lab=vss}
N 690 -170 710 -170 {
lab=vss}
N 710 -170 710 -100 {
lab=vss}
N 880 -170 900 -170 {
lab=vss}
N 900 -170 900 -100 {
lab=vss}
N 880 -100 900 -100 {
lab=vss}
N 480 -530 500 -530 {
lab=vdd}
N 500 -600 500 -530 {
lab=vdd}
N 690 -530 710 -530 {
lab=vdd}
N 710 -600 710 -530 {
lab=vdd}
N 880 -530 900 -530 {
lab=vdd}
N 900 -600 900 -530 {
lab=vdd}
N 880 -600 900 -600 {
lab=vdd}
N 410 -410 440 -410 {
lab=out}
N 410 -410 410 -290 {
lab=out}
N 410 -290 440 -290 {
lab=out}
N 620 -290 650 -290 {
lab=#net3}
N 620 -410 620 -290 {
lab=#net3}
N 620 -410 650 -410 {
lab=#net3}
N 810 -290 840 -290 {
lab=#net6}
N 810 -410 810 -290 {
lab=#net6}
N 810 -410 840 -410 {
lab=#net6}
N 480 -350 620 -350 {
lab=#net3}
N 690 -350 810 -350 {
lab=#net6}
N 880 -350 1020 -350 {
lab=out}
N 370 -350 410 -350 {
lab=out}
N 480 -410 500 -410 {
lab=#net4}
N 500 -460 500 -410 {
lab=#net4}
N 480 -460 500 -460 {
lab=#net4}
N 690 -410 710 -410 {
lab=#net7}
N 710 -460 710 -410 {
lab=#net7}
N 690 -460 710 -460 {
lab=#net7}
N 880 -410 900 -410 {
lab=#net9}
N 900 -460 900 -410 {
lab=#net9}
N 880 -460 890 -460 {
lab=#net9}
N 890 -460 900 -460 {
lab=#net9}
N 480 -290 500 -290 {
lab=vss}
N 500 -290 500 -170 {
lab=vss}
N 710 -290 710 -170 {
lab=vss}
N 690 -290 710 -290 {
lab=vss}
N 880 -290 900 -290 {
lab=vss}
N 900 -290 900 -170 {
lab=vss}
N 240 -530 260 -530 {
lab=vdd}
N 240 -600 240 -530 {
lab=vdd}
N 310 -530 310 -490 {
lab=#net1}
N 260 -490 310 -490 {
lab=#net1}
N 310 -490 840 -490 {
lab=#net1}
N 650 -530 650 -490 {
lab=#net1}
N 840 -530 840 -490 {
lab=#net1}
N 200 -170 200 -120 {
lab=vctrl}
N 200 -120 840 -120 {
lab=vctrl}
N 440 -170 440 -120 {
lab=vctrl}
N 650 -170 650 -120 {
lab=vctrl}
N 840 -170 840 -120 {
lab=vctrl}
N 580 -100 580 -60 {
lab=vss}
N 980 -620 980 -350 {
lab=out}
N 370 -620 980 -620 {
lab=out}
N 370 -620 370 -350 {
lab=out}
N 590 -650 590 -600 {
lab=vdd}
N 240 -600 260 -600 {
lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 240 -170 0 0 {name=M1
L=0.15
W=30
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
C {sky130_fd_pr/pfet_01v8.sym} 280 -530 0 1 {name=M2
L=0.15
W=90
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
C {sky130_fd_pr/pfet_01v8.sym} 460 -530 0 0 {name=M3
L=0.15
W=80
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
C {sky130_fd_pr/pfet_01v8.sym} 460 -410 0 0 {name=M4
L=0.15
W=80
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
C {sky130_fd_pr/nfet_01v8.sym} 460 -170 0 0 {name=M5
L=0.15
W=30
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
C {sky130_fd_pr/nfet_01v8.sym} 460 -290 0 0 {name=M6
L=0.15
W=30
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
C {sky130_fd_pr/pfet_01v8.sym} 670 -530 0 0 {name=M7
L=0.15
W=80
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
C {sky130_fd_pr/pfet_01v8.sym} 670 -410 0 0 {name=M8
L=0.15
W=80
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
C {sky130_fd_pr/nfet_01v8.sym} 670 -170 0 0 {name=M9
L=0.15
W=60
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
C {sky130_fd_pr/nfet_01v8.sym} 670 -290 0 0 {name=M10
L=0.15
W=60
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
C {sky130_fd_pr/pfet_01v8.sym} 860 -530 0 0 {name=M11
L=0.15
W=80
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
C {sky130_fd_pr/pfet_01v8.sym} 860 -410 0 0 {name=M12
L=0.15
W=80
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
C {sky130_fd_pr/nfet_01v8.sym} 860 -170 0 0 {name=M13
L=0.15
W=90
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
C {sky130_fd_pr/nfet_01v8.sym} 860 -290 0 0 {name=M14
L=0.15
W=90
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
C {devices/iopin.sym} 590 -650 0 0 {name=p1 lab=vdd}
C {devices/iopin.sym} 580 -60 0 0 {name=p2 lab=vss}
C {devices/iopin.sym} 1010 -350 0 0 {name=p3 lab=out}
C {devices/iopin.sym} 100 -170 2 0 {name=p4 lab=vctrl}
