v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 410 -830 410 -790 {
lab=vdd}
N 620 -830 880 -830 {
lab=vdd}
N 880 -830 880 -760 {
lab=vdd}
N 410 -630 410 -530 {
lab=vss}
N 560 -680 720 -680 {
lab=QB}
N 720 -700 720 -680 {
lab=QB}
N 620 -860 620 -830 {
lab=vdd}
N 230 -680 260 -680 {
lab=B}
N 840 -800 840 -770 {
lab=cp_bias}
N 560 -740 620 -740 {
lab=QA}
N 700 -740 720 -740 {
lab=QA_B}
N 880 -830 1370 -830 {
lab=vdd}
N 1370 -830 1370 -770 {
lab=vdd}
N 1190 -530 1370 -530 {
lab=vss}
N 1370 -650 1370 -530 {
lab=vss}
N 1510 -710 1510 -330 {
lab=out}
N 1460 -710 1510 -710 {
lab=out}
N 810 -440 810 -410 {
lab=vdd}
N 960 -330 1510 -330 {
lab=out}
N 230 -680 230 -300 {
lab=B}
N 230 -300 660 -300 {
lab=B}
N 410 -830 620 -830 {
lab=vdd}
N 410 -530 830 -530 {
lab=vss}
N 1020 -640 1020 -630 {
lab=#net1}
N 1020 -710 1020 -700 {
lab=cp_out}
N 1190 -710 1190 -660 {
lab=cp_out}
N 190 -740 260 -740 {
lab=ref}
N 1510 -710 1550 -710 {
lab=out}
N 810 -250 810 -220 {
lab=vss}
N 830 -530 830 -510 {
lab=vss}
N 990 -670 990 -650 {
lab=vss}
N 990 -670 1000 -670 {
lab=vss}
N 1190 -610 1190 -530 {
lab=vss}
N 1020 -570 1020 -530 {
lab=vss}
N 880 -640 880 -530 {
lab=vss}
N 720 -730 780 -730 {
lab=QA_B}
N 880 -530 1020 -530 {
lab=vss}
N 1020 -530 1190 -530 {
lab=vss}
N 830 -530 880 -530 {
lab=vss}
N 720 -700 780 -700 {
lab=QB}
N 720 -740 720 -730 {
lab=QA_B}
N 970 -710 1280 -710 {
lab=cp_out}
C {pfd/pfd.sym} 410 -710 0 0 {name=x1}
C {cp/cp_layout.sym} 880 -740 0 0 {name=x2}
C {devices/lab_wire.sym} 1000 -710 1 0 {name=p16 sig_type=std_logic lab=cp_out}
C {devices/lab_wire.sym} 230 -680 0 0 {name=p4 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 590 -740 0 0 {name=p7 sig_type=std_logic lab=QA}
C {devices/lab_wire.sym} 590 -680 0 0 {name=p8 sig_type=std_logic lab=QB}
C {sky130_stdcells/inv_4.sym} 660 -740 0 0 {name=x3 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 730 -730 1 0 {name=p10 sig_type=std_logic lab=QA_B}
C {vco/VCO_Final.sym} 1370 -710 0 0 {name=x4}
C {divider/divider.sym} 810 -330 0 1 {name=x5}
C {devices/lab_wire.sym} 810 -430 0 0 {name=p12 sig_type=std_logic lab=vdd}
C {devices/iopin.sym} 190 -740 2 0 {name=p3 lab=ref}
C {devices/iopin.sym} 620 -860 0 0 {name=p2 lab=vdd}
C {devices/iopin.sym} 1550 -710 0 0 {name=p1 lab=out}
C {devices/iopin.sym} 810 -220 0 0 {name=p6 lab=vss}
C {devices/lab_wire.sym} 830 -510 0 0 {name=p9 sig_type=std_logic lab=vss}
C {devices/iopin.sym} 840 -800 2 0 {name=p5 lab=cp_bias}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} 1020 -670 0 0 {name=R3
L=21.42
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1020 -600 0 0 {name=C1 model=cap_mim_m3_1 W=28.6 L=28.8 MF=9 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1190 -640 0 0 {name=C4 model=cap_mim_m3_1 W=22 L=30 MF=2 spiceprefix=X}
C {devices/lab_wire.sym} 990 -650 0 0 {name=p11 sig_type=std_logic lab=vss}
