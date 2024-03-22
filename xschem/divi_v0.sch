v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1000 -340 1030 -340 {
lab=#net1}
N 1030 -340 1030 -250 {
lab=#net1}
N 800 -250 1030 -250 {
lab=#net1}
N 800 -340 800 -250 {
lab=#net1}
N 800 -340 820 -340 {
lab=#net1}
N 1030 -340 1070 -360 {
lab=#net1}
N 1050 -330 1070 -340 {
lab=#net2}
N 1045 -330 1045 -250 {
lab=#net2}
N 1050 -250 1250 -250 {
lab=#net2}
N 1250 -340 1250 -250 {
lab=#net2}
N 1250 -340 1300 -360 {
lab=#net2}
N 1275 -325 1300 -340 {
lab=#net3}
N 1275 -325 1275 -250 {
lab=#net3}
N 1275 -250 1485 -250 {
lab=#net3}
N 1485 -340 1485 -250 {
lab=#net3}
N 1480 -340 1485 -340 {
lab=#net3}
N 1480 -360 1510 -390 {
lab=out/8}
N 1250 -360 1300 -400 {
lab=#net4}
N 1000 -360 1055 -415 {
lab=out/2}
N 750 -360 820 -360 {
lab=inp_clk}
N 1045 -250 1050 -250 {
lab=#net2}
N 1045 -330 1050 -330 {
lab=#net2}
N 1195 -625 1195 -590 {
lab=VDD}
N 1195 -530 1195 -515 {
lab=GND}
N 1320 -535 1320 -505 {
lab=GND}
N 1320 -640 1320 -595 {
lab=inp_clk}
N 1320 -510 1320 -495 {
lab=GND}
N 1270 -130 1305 -130 {
lab=GND}
N 1305 -130 1305 -65 {
lab=GND}
N 1160 -130 1210 -130 {
lab=out/2}
N 1270 5 1305 5 {
lab=GND}
N 1305 5 1305 70 {
lab=GND}
N 1160 5 1210 5 {
lab=out/4}
N 1565 -95 1600 -95 {
lab=GND}
N 1600 -95 1600 -30 {
lab=GND}
N 1455 -95 1505 -95 {
lab=out/8}
C {devices/code.sym} 875 -630 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {devices/code.sym} 1015 -635 0 0 {name=s1 only_toplevel=false value=

"
.control
save all
tran 0.1n 100n
write divi_v0.raw
*quit
plot v(inp_clk) v(out/2)  v(out/8) v(out/4)
.endc
"}
C {devices/lab_wire.sym} 770 -360 0 0 {name=p7 sig_type=std_logic lab=inp_clk}
C {devices/lab_wire.sym} 1040 -400 0 0 {name=p9 sig_type=std_logic lab=out/2}
C {devices/lab_wire.sym} 1285 -390 0 0 {name=p10 sig_type=std_logic lab=out/4}
C {devices/lab_wire.sym} 1505 -385 0 0 {name=p11 sig_type=std_logic lab=out/8}
C {sky130_stdcells/dfxbp_2.sym} 910 -350 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 1195 -615 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 1195 -560 0 0 {name=V2 value="1.8"}
C {devices/gnd.sym} 1195 -515 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 1320 -495 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 1320 -620 0 0 {name=p5 sig_type=std_logic lab=inp_clk}
C {devices/gnd.sym} 1305 -65 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 1180 -130 0 0 {name=p1 sig_type=std_logic lab=out/2}
C {devices/gnd.sym} 1305 70 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 1180 5 0 0 {name=p2 sig_type=std_logic lab=out/4}
C {devices/gnd.sym} 1600 -30 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 1475 -95 0 0 {name=p3 sig_type=std_logic lab=out/8}
C {devices/vsource.sym} 1320 -565 0 0 {name=V1 value="pulse (0 1.8 0 1n 1n 10n 20n)" }
C {devices/capa-2.sym} 1535 -95 1 0 {name=C4
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {devices/capa-2.sym} 1240 -130 1 0 {name=C1
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {devices/capa-2.sym} 1240 5 1 0 {name=C2
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {sky130_stdcells/dfxbp_2.sym} 1160 -350 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxbp_2.sym} 1390 -350 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
