v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1650 -980 2450 -580 {flags=graph
y1=-5.3
y2=6.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.600081e-12
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="18 4"
node="clk
VDD"}
N 1000 -340 1030 -340 {
lab=a}
N 1030 -340 1030 -250 {
lab=a}
N 800 -250 1030 -250 {
lab=a}
N 800 -340 800 -250 {
lab=a}
N 800 -340 820 -340 {
lab=a}
N 1050 -250 1250 -250 {
lab=b}
N 1250 -340 1250 -250 {
lab=b}
N 1485 -340 1485 -250 {
lab=c}
N 1480 -340 1485 -340 {
lab=c}
N 1270 -130 1305 -130 {
lab=VGND}
N 1305 -130 1305 -65 {
lab=VGND}
N 1160 -130 1210 -130 {
lab=out_2}
N 1270 5 1305 5 {
lab=VGND}
N 1305 5 1305 70 {
lab=VGND}
N 1160 5 1210 5 {
lab=out_4}
N 1565 -95 1600 -95 {
lab=VGND}
N 1600 -95 1600 -30 {
lab=VGND}
N 1465 -95 1515 -95 {
lab=out_8}
N 1175 -625 1175 -590 {
lab=VSS}
N 1175 -530 1175 -515 {
lab=VGND}
N 1030 -360 1070 -360 {
lab=a}
N 1030 -360 1030 -340 {
lab=a}
N 1050 -340 1070 -340 {
lab=b}
N 1050 -340 1050 -250 {
lab=b}
N 1000 -430 1000 -360 {
lab=out_2}
N 1250 -430 1250 -360 {
lab=out_4}
N 1480 -430 1480 -360 {
lab=out_8}
N 1250 -340 1265 -340 {
lab=b}
N 1265 -360 1265 -340 {
lab=b}
N 1265 -360 1300 -360 {
lab=b}
N 1300 -340 1300 -250 {
lab=c}
N 1300 -250 1485 -250 {
lab=c}
N 760 -360 820 -360 {
lab=clk}
N 590 -350 590 -305 {
lab=clk}
N 590 -220 590 -205 {
lab=VGND}
N 590 -240 590 -220 {
lab=VGND}
N 590 -250 590 -240 {
lab=VGND}
N 590 -360 590 -350 {
lab=clk}
N 590 -360 760 -360 {lab=clk}
N 1325 -625 1325 -590 {
lab=VDD}
N 1325 -530 1325 -515 {
lab=VGND}
C {devices/code.sym} 575 -610 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {devices/code_shown.sym} 745 -615 0 0 {name=s1 only_toplevel=false value=
"
.control
save all
tran 0.01n 100n
remzerovec
write divi.raw
***plot v(inp_clk)
.endc
"}
C {devices/lab_wire.sym} 770 -360 0 0 {name=p7 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 1000 -410 0 0 {name=p9 sig_type=std_logic lab=out_2}
C {devices/lab_wire.sym} 1250 -420 0 0 {name=p10 sig_type=std_logic lab=out_4}
C {devices/lab_wire.sym} 1480 -410 0 0 {name=p11 sig_type=std_logic lab=out_8}
C {sky130_stdcells/dfxbp_2.sym} 910 -350 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/gnd.sym} 1305 -65 0 0 {name=l1 lab=VGND
}
C {devices/lab_wire.sym} 1180 -130 0 0 {name=p1 sig_type=std_logic lab=out_2
}
C {devices/gnd.sym} 1305 70 0 0 {name=l6 lab=VGND
}
C {devices/lab_wire.sym} 1180 5 0 0 {name=p2 sig_type=std_logic lab=out_4
}
C {devices/gnd.sym} 1600 -30 0 0 {name=l7 lab=VGND
}
C {devices/lab_wire.sym} 1485 -95 0 0 {name=p3 sig_type=std_logic lab=out_8
}
C {devices/capa-2.sym} 1535 -95 3 1 {name=C4
m=1
value=1p
footprint=1206
device=polarized_capacitor
}
C {devices/capa-2.sym} 1240 -130 3 1 {name=C1
m=1
value=1p
footprint=1206
device=polarized_capacitor
}
C {devices/capa-2.sym} 1240 5 3 1 {name=C2
m=1
value=1p
footprint=1206
device=polarized_capacitor
}
C {devices/lab_wire.sym} 1175 -615 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1175 -560 0 0 {name=V3 value=0}
C {devices/gnd.sym} 1175 -515 0 0 {name=l4 lab=VGND}
C {sky130_stdcells/dfxbp_2.sym} 1160 -350 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxbp_2.sym} 1390 -350 0 0 {name=x3 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/launcher.sym} 1710 -530 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/divi.raw tran"
}
C {devices/gnd.sym} 590 -205 0 0 {name=l3 lab=VGND}
C {devices/vsource.sym} 590 -275 0 0 {name=V1 value="pulse(0 1.8 0 1n 1n 10n 20n)"  savecurrent=false}
C {devices/lab_wire.sym} 920 -250 0 0 {name=p5 sig_type=std_logic lab=a}
C {devices/lab_wire.sym} 1150 -250 0 0 {name=p8 sig_type=std_logic lab=b}
C {devices/lab_wire.sym} 1395 -250 0 0 {name=p12 sig_type=std_logic lab=c}
C {devices/lab_wire.sym} 1325 -615 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 1325 -560 0 0 {name=V4 value=1.8}
C {devices/gnd.sym} 1325 -515 0 0 {name=l5 lab=VGND}
