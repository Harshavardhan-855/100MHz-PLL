v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2000 -2530 2000 -2490 {
lab=vdd}
N 1820 -2430 1850 -2430 {
lab=a}
N 1820 -2390 1850 -2390 {
lab=b}
N 2150 -2450 2200 -2450 {
lab=qa1}
N 2200 -2450 2300 -2450 {
lab=qa1}
N 2490 -2410 2520 -2410 {
lab=qa}
N 2490 -2390 2520 -2390 {
lab=qb}
N 2590 -2480 2590 -2450 {
lab=vdd}
N 2660 -2400 2690 -2400 {
lab=cp_bias}
N 2560 -2480 2560 -2450 {
lab=cp_bias}
N 2300 -2450 2350 -2450 {
lab=qa1}
N 2350 -2450 2350 -2410 {
lab=qa1}
N 2430 -2410 2490 -2410 {
lab=qa}
N 2000 -2330 2000 -2300 {
lab=vss}
N 2000 -2300 2590 -2300 {
lab=vss}
N 2590 -2350 2590 -2300 {
lab=vss}
N 2290 -2300 2290 -2250 {
lab=vss}
N 2000 -2570 2000 -2530 {
lab=vdd}
N 2000 -2570 2590 -2570 {
lab=vdd}
N 2590 -2570 2590 -2480 {
lab=vdd}
N 2310 -2600 2310 -2570 {
lab=vdd}
N 2150 -2370 2490 -2370 {
lab=qb}
N 2490 -2390 2490 -2370 {
lab=qb}
C {pfd/pfd.sym} 2000 -2410 0 0 {name=x1}
C {cp/cp.sym} 2590 -2400 0 0 {name=x2}
C {devices/lab_wire.sym} 2500 -2410 0 0 {name=p13 sig_type=std_logic lab=qa}
C {devices/lab_wire.sym} 2500 -2390 0 0 {name=p14 sig_type=std_logic lab=qb}
C {sky130_stdcells/inv_4.sym} 2390 -2410 0 0 {name=x4 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 2210 -2450 0 0 {name=p7 sig_type=std_logic lab=qa1}
C {devices/iopin.sym} 2310 -2600 0 0 {name=p1 lab=vdd}
C {devices/iopin.sym} 2290 -2250 0 0 {name=p2 lab=vss}
C {devices/iopin.sym} 1820 -2430 2 0 {name=p3 lab=a}
C {devices/iopin.sym} 1820 -2390 2 0 {name=p4 lab=b}
C {devices/iopin.sym} 2560 -2480 2 0 {name=p5 lab=cp_bias}
C {devices/iopin.sym} 2690 -2400 0 0 {name=p6 lab=cp_out}
