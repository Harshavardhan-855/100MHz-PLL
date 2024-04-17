v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 990 -2810 2190 -2050 {flags=graph
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
B 2 2270 -1200 4520 60 {flags=graph
y1=-0.0027
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
B 2 2250 -2790 4530 -1250 {flags=graph
y1=1.2e-05
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
node="cp_out
cp_out%1"
color="4 4"
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1
digital=0}
B 2 -640 -2780 560 -2020 {flags=graph
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
B"
color="4 6"
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1
digital=1}
N 1190 -1940 1190 -1900 {
lab=VDD}
N 1400 -1940 1610 -1940 {
lab=VDD}
N 1610 -1940 1610 -1870 {
lab=VDD}
N 1190 -1740 1190 -1640 {
lab=GND}
N 1610 -1770 1610 -1640 {
lab=GND}
N 1500 -1830 1540 -1830 {
lab=QA_B}
N 1500 -1850 1500 -1830 {
lab=QA_B}
N 1500 -1810 1540 -1810 {
lab=QB}
N 1340 -1790 1500 -1790 {
lab=QB}
N 1500 -1810 1500 -1790 {
lab=QB}
N 480 -1850 480 -1820 {
lab=A}
N 710 -2090 710 -2060 {
lab=VDD}
N 860 -2090 860 -2060 {
lab=cp_bias}
N 1680 -1820 1870 -1820 {
lab=cp_out}
N 1400 -1970 1400 -1940 {
lab=VDD}
N 1010 -1850 1040 -1850 {
lab=A}
N 1010 -1790 1040 -1790 {
lab=B}
N 1580 -1900 1580 -1870 {
lab=cp_bias}
N 480 -1660 480 -1610 {
lab=#net1}
N 480 -1760 480 -1720 {
lab=#net2}
N 1340 -1850 1400 -1850 {
lab=QA}
N 1480 -1850 1500 -1850 {
lab=QA_B}
N 1610 -1940 1960 -1940 {
lab=VDD}
N 1960 -1940 1960 -1880 {
lab=VDD}
N 1610 -1640 1960 -1640 {
lab=GND}
N 1960 -1760 1960 -1640 {
lab=GND}
N 2100 -1820 2100 -1440 {
lab=vco_out}
N 2050 -1820 2100 -1820 {
lab=vco_out}
N 1590 -1550 1590 -1520 {
lab=VDD}
N 1740 -1440 2100 -1440 {
lab=vco_out}
N 1010 -1790 1010 -1410 {
lab=B}
N 1010 -1410 1440 -1410 {
lab=B}
N 480 -1550 480 -1520 {
lab=GND}
N 1190 -1940 1400 -1940 {
lab=VDD}
N 1190 -1640 1610 -1640 {
lab=GND}
N 1710 -1750 1710 -1740 {
lab=#net3}
N 1710 -1820 1710 -1810 {
lab=cp_out}
N 1800 -1820 1800 -1770 {
lab=cp_out}
C {pfd/pfd.sym} 1190 -1820 0 0 {name=x1}
C {cp/cp.sym} 1610 -1820 0 0 {name=x2}
C {devices/vsource.sym} 480 -1580 0 0 {name=V3 value="pulse(0 1.8 1u 1n 1n 125n 250n 22) " savecurrent=false}
C {devices/gnd.sym} 480 -1520 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 480 -1840 0 0 {name=p6 sig_type=std_logic lab=A}
C {devices/code.sym} 570 -1490 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/vsource.sym} 710 -2030 0 0 {name=V4 value=1.8 savecurrent=false
}
C {devices/gnd.sym} 710 -2000 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 710 -2080 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 1260 -950 0 0 {name=STIMULI
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
C {devices/vsource.sym} 860 -2030 0 0 {name=V9 value=1 savecurrent=false
}
C {devices/gnd.sym} 860 -2000 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 860 -2080 0 0 {name=p17 sig_type=std_logic lab=cp_bias}
C {devices/capa-2.sym} 1710 -1710 0 0 {name=C2
m=1
value=C1
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} 1710 -1680 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 1690 -1820 1 0 {name=p16 sig_type=std_logic lab=cp_out}
C {devices/gnd.sym} 1420 -1640 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 1400 -1960 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1010 -1850 0 0 {name=p2 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 1010 -1790 0 0 {name=p4 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 1580 -1890 0 0 {name=p5 sig_type=std_logic lab=cp_bias}
C {devices/lab_wire.sym} 1370 -1850 0 0 {name=p7 sig_type=std_logic lab=QA}
C {devices/lab_wire.sym} 1370 -1790 0 0 {name=p8 sig_type=std_logic lab=QB}
C {devices/launcher.sym} 1620 -1110 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/pll_complete.raw tran"
}
C {devices/vsource.sym} 480 -1790 0 0 {name=V1 value="pulse(0 1.8 11u 1n 1n 42n  84n) " savecurrent=false}
C {sky130_stdcells/inv_4.sym} 1440 -1850 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 1510 -1830 1 0 {name=p10 sig_type=std_logic lab=QA_B}
C {devices/launcher.sym} 1610 -1050 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {vco/vco.sym} 1970 -1820 0 0 {name=x4}
C {devices/capa-2.sym} 2210 -1770 0 0 {name=C1
m=1
value=cload
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {devices/gnd.sym} 2210 -1740 0 0 {name=l2 lab=GND
spice_ignore=true}
C {devices/lab_wire.sym} 2070 -1820 1 0 {name=p11 sig_type=std_logic lab=vco_out}
C {divider/divider.sym} 1590 -1440 0 1 {name=x5}
C {devices/gnd.sym} 1590 -1360 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 1590 -1540 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 480 -1690 0 0 {name=V2 value="pulse(0 1.8 6.5u 1n 1n 62n 124n 36) " savecurrent=false}
C {devices/res.sym} 1710 -1780 0 0 {name=R1
value=R1
footprint=1206
device=resistor
m=1}
C {devices/capa-2.sym} 1800 -1740 0 0 {name=C3
m=1
value=C2
footprint=1206
device=polarized_capacitor
}
C {devices/gnd.sym} 1800 -1710 0 0 {name=l3 lab=GND
}
C {devices/code_shown.sym} 360 -970 0 0 {name=STIMULI1
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
C {devices/spice_probe.sym} 2100 -1820 0 0 {name=p3 attrs=""}
C {devices/spice_probe.sym} 1750 -1820 0 0 {name=p13 attrs=""}
C {devices/spice_probe.sym} 1380 -1850 0 0 {name=p14 attrs=""}
C {devices/spice_probe.sym} 1380 -1790 0 0 {name=p15 attrs=""}
C {devices/spice_probe.sym} 1530 -1830 0 0 {name=p18 attrs=""}
C {devices/spice_probe.sym} 1020 -1850 0 0 {name=p19 attrs=""}
C {devices/spice_probe.sym} 1020 -1790 0 0 {name=p20 attrs=""}
