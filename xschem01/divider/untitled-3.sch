v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -640 -370 -640 -240 {
lab=a}
N -660 -240 -640 -240 {
lab=a}
N -840 -220 -840 -180 {
lab=#net1}
N -840 -180 -640 -180 {
lab=#net1}
N -640 -220 -640 -180 {
lab=#net1}
N -660 -220 -640 -220 {
lab=#net1}
N -370 -370 -370 -240 {
lab=b}
N -390 -240 -370 -240 {
lab=b}
N -570 -220 -570 -180 {
lab=#net2}
N -570 -180 -370 -180 {
lab=#net2}
N -370 -220 -370 -180 {
lab=#net2}
N -390 -220 -370 -220 {
lab=#net2}
N -640 -220 -600 -220 {
lab=#net1}
N -600 -240 -600 -220 {
lab=#net1}
N -600 -240 -570 -240 {
lab=#net1}
N -100 -370 -100 -240 {
lab=vdd}
N -120 -240 -100 -240 {
lab=vdd}
N -300 -220 -300 -180 {
lab=#net3}
N -300 -180 -100 -180 {
lab=#net3}
N -100 -220 -100 -180 {
lab=#net3}
N -120 -220 -100 -220 {
lab=#net3}
N -370 -220 -330 -220 {
lab=#net2}
N -330 -240 -330 -220 {
lab=#net2}
N -330 -240 -300 -240 {
lab=#net2}
N -930 -240 -840 -240 {
lab=clk}
C {sky130_stdcells/dfxbp_2.sym} -750 -230 0 0 {name=x3 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxbp_2.sym} -480 -230 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxbp_2.sym} -210 -230 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/iopin.sym} -930 -240 2 0 {name=p3 lab=clk}
C {devices/iopin.sym} -800 -350 2 0 {name=p1 lab=vdd}
C {devices/iopin.sym} -800 -310 2 0 {name=p2 lab=vss}
C {devices/iopin.sym} -640 -370 2 0 {name=p4 lab=a}
C {devices/iopin.sym} -370 -370 2 0 {name=p5 lab=b}
C {devices/iopin.sym} -100 -370 2 0 {name=p6 lab=c}
