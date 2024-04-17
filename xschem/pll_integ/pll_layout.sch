v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 410 -830 410 -790 {
lab=VDD}
N 620 -830 830 -830 {
lab=VDD}
N 830 -830 830 -760 {
lab=VDD}
N 410 -630 410 -530 {
lab=GND}
N 830 -660 830 -530 {
lab=GND}
N 720 -720 760 -720 {
lab=QA_B}
N 720 -740 720 -720 {
lab=QA_B}
N 720 -700 760 -700 {
lab=QB}
N 560 -680 720 -680 {
lab=QB}
N 720 -700 720 -680 {
lab=QB}
N 900 -710 1090 -710 {
lab=cp_out}
N 620 -860 620 -830 {
lab=VDD}
N 230 -740 260 -740 {
lab=A}
N 230 -680 260 -680 {
lab=B}
N 800 -790 800 -760 {
lab=cp_bias}
N 560 -740 620 -740 {
lab=QA}
N 700 -740 720 -740 {
lab=QA_B}
N 830 -830 1180 -830 {
lab=VDD}
N 1180 -830 1180 -770 {
lab=VDD}
N 830 -530 1180 -530 {
lab=GND}
N 1180 -650 1180 -530 {
lab=GND}
N 1320 -710 1320 -330 {
lab=vco_out}
N 1270 -710 1320 -710 {
lab=vco_out}
N 810 -440 810 -410 {
lab=VDD}
N 960 -330 1320 -330 {
lab=vco_out}
N 230 -680 230 -300 {
lab=B}
N 230 -300 660 -300 {
lab=B}
N 410 -830 620 -830 {
lab=VDD}
N 410 -530 830 -530 {
lab=GND}
N 930 -640 930 -630 {
lab=#net1}
N 930 -710 930 -700 {
lab=cp_out}
N 1020 -710 1020 -660 {
lab=cp_out}
C {pfd/pfd.sym} 410 -710 0 0 {name=x1}
C {cp/cp.sym} 830 -710 0 0 {name=x2}
C {devices/capa-2.sym} 930 -600 0 0 {name=C2
m=1
value=15p
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} 930 -570 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 910 -710 1 0 {name=p16 sig_type=std_logic lab=cp_out}
C {devices/gnd.sym} 640 -530 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 620 -850 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 230 -740 0 0 {name=p2 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 230 -680 0 0 {name=p4 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 800 -780 0 0 {name=p5 sig_type=std_logic lab=cp_bias}
C {devices/lab_wire.sym} 590 -740 0 0 {name=p7 sig_type=std_logic lab=QA}
C {devices/lab_wire.sym} 590 -680 0 0 {name=p8 sig_type=std_logic lab=QB}
C {sky130_stdcells/inv_4.sym} 660 -740 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 730 -720 1 0 {name=p10 sig_type=std_logic lab=QA_B}
C {vco/vco.sym} 1190 -710 0 0 {name=x4}
C {devices/lab_wire.sym} 1290 -710 1 0 {name=p11 sig_type=std_logic lab=vco_out}
C {divider/divider.sym} 810 -330 0 1 {name=x5}
C {devices/gnd.sym} 810 -250 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 810 -430 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/res.sym} 930 -670 0 0 {name=R1
value=30K
footprint=1206
device=resistor
m=1}
C {devices/capa-2.sym} 1020 -630 0 0 {name=C3
m=1
value=3p
footprint=1206
device=polarized_capacitor
}
C {devices/gnd.sym} 1020 -600 0 0 {name=l3 lab=GND
}
C {devices/spice_probe.sym} 1320 -710 0 0 {name=p3 attrs=""}
C {devices/spice_probe.sym} 970 -710 0 0 {name=p13 attrs=""}
C {devices/spice_probe.sym} 600 -740 0 0 {name=p14 attrs=""}
C {devices/spice_probe.sym} 600 -680 0 0 {name=p15 attrs=""}
C {devices/spice_probe.sym} 750 -720 0 0 {name=p18 attrs=""}
C {devices/spice_probe.sym} 240 -740 0 0 {name=p19 attrs=""}
C {devices/spice_probe.sym} 240 -680 0 0 {name=p20 attrs=""}
