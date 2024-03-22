v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 620 -380 620 -330 {
lab=out}
N 620 -460 620 -440 {
lab=vdd}
N 540 -300 580 -300 {
lab=inp}
N 620 -270 620 -240 {
lab=vss}
N 620 -300 670 -300 {
lab=vss}
N 670 -300 670 -240 {
lab=vss}
N 620 -240 670 -240 {
lab=vss}
N 620 -240 620 -230 {
lab=vss}
N 620 -350 710 -350 {
lab=out}
N 620 -480 620 -460 {
lab=vdd}
N 620 -230 620 -210 {
lab=vss}
N 570 -410 600 -410 {
lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 600 -300 0 0 {name=M1
L=0.15
W=50
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
C {sky130_fd_pr/res_high_po_1p41.sym} 620 -410 0 0 {name=R1
L=0.5
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {devices/iopin.sym} 540 -300 2 0 {name=p1 lab=inp}
C {devices/iopin.sym} 710 -350 0 0 {name=p2 lab=out}
C {devices/iopin.sym} 620 -480 0 0 {name=p3 lab=vdd}
C {devices/iopin.sym} 620 -210 0 0 {name=p4 lab=vss}
C {devices/lab_wire.sym} 570 -410 0 0 {name=p5 sig_type=std_logic lab=vss}
