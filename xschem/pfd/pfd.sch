v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 160 -440 230 -440 {
lab=VDD}
N 160 -540 160 -440 {
lab=VDD}
N 200 -460 230 -460 {
lab=A}
N 230 -420 230 -360 {
lab=reset}
N 410 -460 470 -460 {
lab=QA}
N 470 -460 470 -320 {
lab=QA}
N 230 -360 230 -300 {
lab=reset}
N 160 -160 230 -160 {
lab=VDD}
N 200 -140 230 -140 {
lab=B}
N 230 -240 230 -180 {
lab=reset}
N 410 -140 470 -140 {
lab=QB}
N 230 -300 230 -240 {
lab=reset}
N 470 -280 470 -140 {
lab=QB}
N 470 -460 530 -460 {
lab=QA}
N 470 -140 530 -140 {
lab=QB}
N 160 -440 160 -160 {
lab=VDD}
N 450 -320 470 -320 {
lab=QA}
N 450 -280 470 -280 {
lab=QB}
N 320 -300 330 -300 {
lab=#net1}
N 230 -300 240 -300 {
lab=reset}
C {sky130_stdcells/dfrbp_2.sym} 320 -440 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_2.sym} 390 -300 0 1 {name=x2 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrbp_2.sym} 320 -160 2 1 {name=x3 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/iopin.sym} 160 -540 3 0 {name=p7 lab=VDD}
C {devices/iopin.sym} 200 -460 2 0 {name=p2 lab=A}
C {devices/iopin.sym} 200 -140 2 0 {name=p3 lab=B
}
C {devices/iopin.sym} 530 -460 0 0 {name=p4 lab=QA}
C {devices/iopin.sym} 530 -140 0 0 {name=p5 lab=QB}
C {devices/iopin.sym} 310 -540 3 0 {name=p1 lab=VSS}
C {devices/lab_wire.sym} 230 -320 0 0 {name=p6 sig_type=std_logic lab=reset}
C {sky130_stdcells/inv_4.sym} 280 -300 0 1 {name=x4 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
