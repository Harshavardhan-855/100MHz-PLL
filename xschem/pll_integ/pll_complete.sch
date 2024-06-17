v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 830 -1220 3740 -20 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-12
x2=2e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="A
B
QA
QB"
color="4 6 10 15"
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1
digital=1}
B 2 3760 -1260 6010 0 {flags=graph
y1=-0.01
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-12
x2=2e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="15 6"
node="vco_out
cp_out"}
B 2 4190 -3120 6470 -1580 {flags=graph
y1=-3.2e-05
y2=1.3
ypos1=-8.5e-05
ypos2=1.3
divy=5
subdivy=1
unity=1
x1=1e-12
x2=2e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=cp_out
color=4
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1
digital=0}
N 2720 -2270 2720 -2230 {
lab=VDD}
N 2930 -2270 3140 -2270 {
lab=VDD}
N 3140 -2270 3140 -2200 {
lab=VDD}
N 2720 -2070 2720 -1970 {
lab=GND}
N 3140 -2100 3140 -1970 {
lab=GND}
N 3030 -2160 3070 -2160 {
lab=QA_B}
N 3030 -2180 3030 -2160 {
lab=QA_B}
N 3030 -2140 3070 -2140 {
lab=QB}
N 2870 -2120 3030 -2120 {
lab=QB}
N 3030 -2140 3030 -2120 {
lab=QB}
N 2010 -2180 2010 -2150 {
lab=A}
N 2240 -2420 2240 -2390 {
lab=VDD}
N 2390 -2420 2390 -2390 {
lab=cp_bias}
N 3460 -2150 3560 -2150 {
lab=cp_out}
N 2930 -2300 2930 -2270 {
lab=VDD}
N 2540 -2180 2570 -2180 {
lab=A}
N 2540 -2120 2570 -2120 {
lab=B}
N 3110 -2230 3110 -2200 {
lab=cp_bias}
N 2010 -1990 2010 -1940 {
lab=#net1}
N 2010 -2090 2010 -2050 {
lab=#net2}
N 2870 -2180 2930 -2180 {
lab=QA}
N 3010 -2180 3030 -2180 {
lab=QA_B}
N 3140 -2270 3650 -2270 {
lab=VDD}
N 3650 -2270 3650 -2210 {
lab=VDD}
N 3460 -1970 3650 -1970 {
lab=GND}
N 3650 -2090 3650 -1970 {
lab=GND}
N 3790 -2150 3790 -1770 {
lab=vco_out}
N 3740 -2150 3790 -2150 {
lab=vco_out}
N 3120 -1880 3120 -1850 {
lab=VDD}
N 3270 -1770 3790 -1770 {
lab=vco_out}
N 2540 -2120 2540 -1740 {
lab=B}
N 2540 -1740 2970 -1740 {
lab=B}
N 2010 -1880 2010 -1850 {
lab=GND}
N 2720 -2270 2930 -2270 {
lab=VDD}
N 2720 -1970 3140 -1970 {
lab=GND}
N 3290 -2080 3290 -2070 {
lab=#net3}
N 3290 -2150 3290 -2140 {
lab=cp_out}
N 3460 -2150 3460 -2100 {
lab=cp_out}
N 3260 -2110 3260 -2090 {
lab=GND}
N 3260 -2110 3270 -2110 {
lab=GND}
N 3460 -2050 3460 -1970 {
lab=GND}
N 3290 -2010 3290 -1970 {
lab=GND}
N 3210 -2150 3290 -2150 {
lab=cp_out}
N 3290 -2150 3460 -2150 {
lab=cp_out}
N 3140 -1970 3290 -1970 {
lab=GND}
N 3290 -1970 3460 -1970 {
lab=GND}
N 3245 -2090 3260 -2090 {
lab=GND}
C {pfd/pfd.sym} 2720 -2150 0 0 {name=x1}
C {cp/cp.sym} 3140 -2150 0 0 {name=x2}
C {devices/vsource.sym} 2010 -1910 0 0 {name=V3 value="pulse(0 1.8 1u 1n 1n 125n 250n 22) " savecurrent=false
}
C {devices/gnd.sym} 2010 -1850 0 0 {name=l4 lab=GND
}
C {devices/lab_wire.sym} 2010 -2170 0 0 {name=p6 sig_type=std_logic lab=A
}
C {devices/code.sym} 2100 -1820 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/vsource.sym} 2240 -2360 0 0 {name=V4 value=1.8 savecurrent=false
}
C {devices/gnd.sym} 2240 -2330 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 2240 -2410 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 990 -2320 0 0 {name=STIMULI
only_toplevel=true
value="
.options acct list
.temp 25
.param cload=5pf  tw=40n tp=80n R1=25K C1=15p C2=3p

*.save all
.save @m.x2.xm1.msky130_fd_pr__nfet_01v8[gm]

.save @m.x2.xm2.msky130_fd_pr__pfet_01v8[vth]
.save @m.x2.xm1.msky130_fd_pr__nfet_01v8[vth]
.save @m.x2.xm3.msky130_fd_pr__nfet_01v8[vth]
.save @m.x2.xm8.msky130_fd_pr__pfet_01v8[vth]


.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

*.step cload 100f 500f 100f 

.meas tran TRAN_PERIOD TRIG V(QA) VAL=0.5 RISE=1 TARG V(QA) VAL=0.5 RISE=2
.meas tran TRAN_FREQ param='1/TRAN_PERIOD'

.print TRAN_PERIOD  TRAN_FREQ

.control
reset
op
write pll_complete.raw
set appendwrite

tran 0.1n 20u uic
remzerovec
write pll_complete.raw
set appendwrite

alterparam R1=30K
reset
tran 0.1n 20u uic
remzerovec
write pll_complete.raw
set appendwrite

alterparam R1=35K
reset
tran 0.1n 20u uic
remzerovec
write pll_complete.raw

alterparam R1=40K
reset
tran 0.1n 20u uic
remzerovec
write pll_complete.raw

.endc
"
spice_ignore=true}
C {devices/vsource.sym} 2390 -2360 0 0 {name=V9 value=1 savecurrent=false
}
C {devices/gnd.sym} 2390 -2330 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 2390 -2410 0 0 {name=p17 sig_type=std_logic lab=cp_bias}
C {devices/lab_wire.sym} 3220 -2150 1 0 {name=p16 sig_type=std_logic lab=cp_out}
C {devices/gnd.sym} 2950 -1970 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 2930 -2290 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 2540 -2180 0 0 {name=p2 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 2540 -2120 0 0 {name=p4 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 3110 -2220 0 0 {name=p5 sig_type=std_logic lab=cp_bias}
C {devices/lab_wire.sym} 2900 -2180 0 0 {name=p7 sig_type=std_logic lab=QA}
C {devices/lab_wire.sym} 2900 -2120 0 0 {name=p8 sig_type=std_logic lab=QB}
C {devices/launcher.sym} 3150 -1440 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/pll_complete.raw tran"
}
C {devices/vsource.sym} 2010 -2120 0 0 {name=V1 value="pulse(0 1.8 11u 1n 1n 42n  84n) " savecurrent=false
}
C {sky130_stdcells/inv_4.sym} 2970 -2180 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 3040 -2160 1 0 {name=p10 sig_type=std_logic lab=QA_B}
C {devices/launcher.sym} 3140 -1380 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {vco/vco.sym} 3660 -2150 0 0 {name=x4}
C {devices/capa-2.sym} 3900 -2100 0 0 {name=C1
m=1
value=cload
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {devices/gnd.sym} 3900 -2070 0 0 {name=l2 lab=GND
spice_ignore=true}
C {devices/lab_wire.sym} 3760 -2150 1 0 {name=p11 sig_type=std_logic lab=vco_out}
C {divider/divider.sym} 3120 -1770 0 1 {name=x5}
C {devices/gnd.sym} 3120 -1690 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 3120 -1870 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 2010 -2020 0 0 {name=V2 value="pulse(0 1.8 6.5u 1n 1n 62n 124n 36) " savecurrent=false
}
C {devices/code_shown.sym} 1010 -3040 0 0 {name=STIMULI1
only_toplevel=true
value="
.options acct list
.temp 25
.param cload=5pf  tw=40n tp=80n R1=30K C1=15p C2=3p

*.save all
.save @m.x2.xm1.msky130_fd_pr__nfet_01v8[gm]

.save @m.x2.xm2.msky130_fd_pr__pfet_01v8[vth]
.save @m.x2.xm1.msky130_fd_pr__nfet_01v8[vth]
.save @m.x2.xm3.msky130_fd_pr__nfet_01v8[vth]
.save @m.x2.xm8.msky130_fd_pr__pfet_01v8[vth]


.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

*.step cload 100f 500f 100f 

.meas tran TRAN_PERIOD TRIG V(QA) VAL=0.5 RISE=1 TARG V(QA) VAL=0.5 RISE=2
.meas tran TRAN_FREQ param='1/TRAN_PERIOD'

.print TRAN_PERIOD  TRAN_FREQ

.control
reset
op
write pll_complete.raw


tran 0.1n 20u uic
remzerovec
write pll_complete.raw
set appendwrite

.endc
"
}
C {devices/spice_probe.sym} 3790 -2150 0 0 {name=p3 attrs=""}
C {devices/spice_probe.sym} 3280 -2150 0 0 {name=p13 attrs=""}
C {devices/spice_probe.sym} 2910 -2180 0 0 {name=p14 attrs=""}
C {devices/spice_probe.sym} 2910 -2120 0 0 {name=p15 attrs=""}
C {devices/spice_probe.sym} 3060 -2160 0 0 {name=p18 attrs=""}
C {devices/spice_probe.sym} 2550 -2180 0 0 {name=p19 attrs=""}
C {devices/spice_probe.sym} 2550 -2120 0 0 {name=p20 attrs=""}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} 3290 -2110 0 0 {name=R3
L=21.2
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 3290 -2040 0 0 {name=C4 model=cap_mim_m3_1 W=28.6 L=28.8 MF=9 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 3460 -2080 0 0 {name=C5 model=cap_mim_m3_1 W=27.6 L=40 MF=1	 spiceprefix=X}
C {devices/gnd.sym} 2950 -1970 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 3245 -2090 0 0 {name=l6 lab=GND}
