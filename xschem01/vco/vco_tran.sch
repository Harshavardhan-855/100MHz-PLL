v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1940 -1900 2740 -1500 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.2824e-08
x2=1.28008e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=out
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
N 1350 -1560 1350 -1530 { lab=vctrl}
N 1600 -1730 1630 -1730 {
lab=vctrl}
N 1250 -1560 1250 -1530 { lab=vdd}
N 1720 -1810 1720 -1790 {
lab=vdd}
N 1810 -1730 1850 -1730 {
lab=out}
N 1600 -1950 1630 -1950 {
lab=#net1}
N 1720 -2030 1720 -2010 {
lab=#net2}
N 1810 -1950 1850 -1950 {
lab=#net3}
N 1360 -1920 1360 -1890 { lab=vctrl1}
C {vco/vco.sym} 1730 -1730 0 0 {name=x1}
C {devices/vsource.sym} 1350 -1500 0 0 {name=V1 value=vctrl net_name=true}
C {devices/gnd.sym} 1350 -1470 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 1250 -1500 0 0 {name=V2 value=1.8 net_name=true}
C {devices/gnd.sym} 1250 -1470 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1720 -1670 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 1250 -1560 1 0 {name=p1 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 1350 -1560 1 0 {name=p2 sig_type=std_logic lab=vctrl}
C {devices/lab_wire.sym} 1720 -1810 1 0 {name=p3 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 1600 -1730 0 0 {name=p4 sig_type=std_logic lab=vctrl}
C {devices/lab_wire.sym} 1850 -1730 0 0 {name=p5 sig_type=std_logic lab=out}
C {devices/code_shown.sym} 1630 -1570 0 0 {name=STIMULI
only_toplevel=true
value="
.op
.options acct list
.temp 25

.param vctrl=0.72

*.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice


.control
save all
tran 1n 1u
write vco_tran.raw
set appendwrite
setplot tran1
linearize v(out)
set specwindow = blackman
fft v(out)
plot mag (v(out))

alterparam vctrl=0.7
reset
tran 1n 1u
write vco_tran.raw
set appendwrite
setplot tran2
linearize v(out)
set specwindow = blackman
fft v(out)
plot mag (v(out))

alterparam vctrl=0.75
reset
tran 1n 1u
write vco_tran.raw
set appendwrite
setplot tran3
linearize v(out)
set specwindow = blackman
fft v(out)
plot mag (v(out))

alterparam vctrl=0.8
reset
tran 1n 1u
write vco_tran.raw
set appendwrite
setplot tran4
linearize v(out)
set specwindow = blackman
fft v(out)
plot mag (v(out))


.endc

*plot  @m.x1.xm1.msky130_fd_pr__nfet_01v8[gm]
"}
C {devices/launcher.sym} 1940 -1950 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/vco_tran.raw tran"
}
C {vco/vco.sym} 1730 -1950 0 0 {name=x2
spice_ignore=true}
C {devices/gnd.sym} 1720 -1890 0 0 {name=l3 lab=GND
spice_ignore=true}
C {devices/lab_wire.sym} 1720 -2030 1 0 {name=p6 sig_type=std_logic lab=vdd
spice_ignore=true}
C {devices/lab_wire.sym} 1600 -1950 0 0 {name=p7 sig_type=std_logic lab=vctrl1
spice_ignore=true}
C {devices/lab_wire.sym} 1850 -1950 0 0 {name=p8 sig_type=std_logic lab=out1
spice_ignore=true}
C {devices/vsource.sym} 1360 -1860 0 0 {name=V3 value=0.8  net_name=true}
C {devices/gnd.sym} 1360 -1830 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 1360 -1920 1 0 {name=p9 sig_type=std_logic lab=vctrl1}
C {devices/code.sym} 1470 -1400 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
