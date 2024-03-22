v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 210 -300 240 -300 {
lab=inp}
N 320 -300 340 -300 {
lab=out}
C {sky130_stdcells/inv_4.sym} 280 -300 0 0 {name=x4 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} 210 -300 0 0 {name=p1 lab=inp
}
C {devices/opin.sym} 340 -300 0 0 {name=p2 lab=out
}
C {devices/iopin.sym} 270 -370 0 0 {name=p3 lab=VDD
}
C {devices/iopin.sym} 280 -250 0 0 {name=p4 lab=VSS
}
