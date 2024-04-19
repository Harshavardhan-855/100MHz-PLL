v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1240 -570 1240 -440 {
lab=out_a}
N 1220 -440 1240 -440 {
lab=out_a}
N 1040 -420 1040 -380 {
lab=#net1}
N 1040 -380 1240 -380 {
lab=#net1}
N 1240 -420 1240 -380 {
lab=#net1}
N 1220 -420 1240 -420 {
lab=#net1}
N 1510 -570 1510 -440 {
lab=out_b}
N 1490 -440 1510 -440 {
lab=out_b}
N 1310 -420 1310 -380 {
lab=#net2}
N 1310 -380 1510 -380 {
lab=#net2}
N 1510 -420 1510 -380 {
lab=#net2}
N 1490 -420 1510 -420 {
lab=#net2}
N 1240 -420 1280 -420 {
lab=#net1}
N 1280 -440 1280 -420 {
lab=#net1}
N 1280 -440 1310 -440 {
lab=#net1}
N 1780 -570 1780 -440 {
lab=out_c}
N 1760 -440 1780 -440 {
lab=out_c}
N 1580 -420 1580 -380 {
lab=#net3}
N 1580 -380 1780 -380 {
lab=#net3}
N 1780 -420 1780 -380 {
lab=#net3}
N 1760 -420 1780 -420 {
lab=#net3}
N 1510 -420 1550 -420 {
lab=#net2}
N 1550 -440 1550 -420 {
lab=#net2}
N 1550 -440 1580 -440 {
lab=#net2}
N 930 -440 1040 -440 {
lab=clock}
C {sky130_stdcells/dfxbp_2.sym} 1130 -430 0 0 {name=x3 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxbp_2.sym} 1400 -430 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxbp_2.sym} 1670 -430 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} 930 -440 0 0 {name=p1 lab=clock}
C {devices/opin.sym} 1240 -570 0 0 {name=p2 lab=out_a}
C {devices/opin.sym} 1510 -570 0 0 {name=p3 lab=out_b}
C {devices/opin.sym} 1780 -570 0 0 {name=p4 lab=out_c}
C {devices/iopin.sym} 1390 -630 0 0 {name=p5 lab=vdd}
C {devices/iopin.sym} 1400 -310 0 0 {name=p6 lab=vss}
