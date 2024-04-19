v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1500 -220 1520 -220 {
lab=bias}
N 1320 -190 1320 -160 {
lab=vss}
N 1320 -160 1560 -160 {
lab=vss}
N 1560 -190 1560 -160 {
lab=vss}
N 1320 -280 1400 -280 {
lab=bias}
N 1400 -280 1400 -220 {
lab=bias}
N 1620 -690 1800 -690 {
lab=n1}
N 1560 -760 1560 -720 {
lab=vdd}
N 1580 -760 1840 -760 {
lab=vdd}
N 1840 -760 1840 -720 {
lab=vdd}
N 1580 -160 1840 -160 {
lab=vss}
N 1840 -190 1840 -160 {
lab=vss}
N 1500 -270 1500 -220 {
lab=bias}
N 1500 -270 1800 -270 {
lab=bias}
N 1800 -270 1800 -220 {
lab=bias}
N 1560 -630 1560 -250 {
lab=n1}
N 1840 -300 1840 -250 {
lab=n3}
N 1560 -630 1620 -630 {
lab=n1}
N 1620 -690 1620 -630 {
lab=n1}
N 1840 -690 1860 -690 {
lab=vdd}
N 1860 -760 1860 -690 {
lab=vdd}
N 1840 -760 1860 -760 {
lab=vdd}
N 1840 -530 1860 -530 {
lab=vdd}
N 1840 -220 1860 -220 {
lab=vss}
N 1860 -220 1860 -160 {
lab=vss}
N 1840 -160 1860 -160 {
lab=vss}
N 1860 -330 1860 -220 {
lab=vss}
N 1840 -330 1860 -330 {
lab=vss}
N 1840 -450 1960 -450 {
lab=cp_out}
N 1770 -530 1800 -530 {
lab=qa}
N 1770 -330 1800 -330 {
lab=qb}
N 1540 -690 1560 -690 {
lab=vdd}
N 1540 -760 1540 -690 {
lab=vdd}
N 1540 -760 1560 -760 {
lab=vdd}
N 1560 -220 1580 -220 {
lab=vss}
N 1580 -220 1580 -160 {
lab=vss}
N 1300 -220 1320 -220 {
lab=vss}
N 1300 -220 1300 -160 {
lab=vss}
N 1300 -160 1320 -160 {
lab=vss}
N 1320 -760 1320 -710 {
lab=vdd}
N 1340 -760 1540 -760 {
lab=vdd}
N 1580 -790 1580 -760 {
lab=vdd}
N 1580 -160 1580 -130 {
lab=vss}
N 1320 -680 1340 -680 {
lab=vdd}
N 1340 -760 1340 -680 {
lab=vdd}
N 1250 -680 1280 -680 {
lab=cp_bias}
N 1840 -500 1840 -450 {
lab=cp_out}
N 1840 -450 1840 -360 {
lab=cp_out}
N 1320 -280 1320 -250 {
lab=bias}
N 1360 -220 1400 -220 {
lab=bias}
N 1400 -220 1500 -220 {
lab=bias}
N 1560 -660 1560 -630 {
lab=n1}
N 1600 -690 1620 -690 {
lab=n1}
N 1560 -160 1580 -160 {
lab=vss}
N 1560 -760 1580 -760 {
lab=vdd}
N 1320 -760 1340 -760 {
lab=vdd}
N 1860 -690 1860 -530 {
lab=vdd}
N 1840 -660 1840 -560 {
lab=n2}
N 1320 -650 1320 -280 {
lab=bias}
C {sky130_fd_pr/pfet_01v8.sym} 1580 -690 0 1 {name=M9
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
C {sky130_fd_pr/nfet_01v8.sym} 1540 -220 0 0 {name=M10
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
C {sky130_fd_pr/nfet_01v8.sym} 1340 -220 0 1 {name=M11
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
C {sky130_fd_pr/pfet_01v8.sym} 1820 -690 0 0 {name=M12
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
C {sky130_fd_pr/nfet_01v8.sym} 1820 -220 0 0 {name=M13
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
C {sky130_fd_pr/pfet_01v8.sym} 1820 -530 0 0 {name=M14
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
C {sky130_fd_pr/nfet_01v8.sym} 1820 -330 0 0 {name=M15
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
C {devices/ipin.sym} 1770 -530 0 0 {name=p7 lab=qa}
C {devices/ipin.sym} 1770 -330 0 0 {name=p8 lab=qb}
C {devices/opin.sym} 1960 -450 0 0 {name=p9 lab=cp_out}
C {devices/iopin.sym} 1580 -790 0 0 {name=p10 lab=vdd}
C {devices/iopin.sym} 1580 -130 0 0 {name=p11 lab=vss}
C {devices/lab_pin.sym} 1320 -310 0 0 {name=l4 sig_type=std_logic lab=bias}
C {devices/lab_pin.sym} 1560 -570 0 0 {name=l5 sig_type=std_logic lab=n1}
C {devices/lab_pin.sym} 1840 -640 0 0 {name=l6 sig_type=std_logic lab=n2}
C {devices/lab_pin.sym} 1840 -280 0 0 {name=l8 sig_type=std_logic lab=n3}
C {sky130_fd_pr/pfet_01v8.sym} 1300 -680 0 0 {name=M16
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
C {devices/ipin.sym} 1250 -680 0 0 {name=p12 lab=cp_bias}
