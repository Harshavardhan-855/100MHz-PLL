v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -8510 -3235 -7710 -2835 {flags=graph
y1=0
y2=2
ypos1=-0.4
ypos2=1.6
divy=5
subdivy=1
unity=1
x1=1e-13
x2=8e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out%0
out%1
out%2
out%3
out%4"
color="4 7 8 7 12"
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1
sim_type=tran
rawfile=$netlist_dir/vco_tran.raw
digital=1}
B 2 -8480 -3820 -7680 -3420 {flags=graph
y1=0.011
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-13
x2=8e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="x2.out3%0
x2.out2%0
x2.out1%0"
color="4 10 8"
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1}
T {tcleval(fosc1=[xschem raw value fosc1 0 0])} -8980 -2955 0 0 0.4 0.4 {floater=1}
T {tcleval(fosc1=[xschem raw value fosc1 0 1])} -8980 -2905 0 0 0.4 0.4 {floater=1}
T {tcleval(fosc1=[xschem raw value fosc1 0 2])} -8990 -2855 0 0 0.4 0.4 {floater=1}
T {tcleval(fosc1=[xschem raw value fosc1 0 3])} -8990 -2795 0 0 0.4 0.4 {floater=1}
T {tcleval(fosc1=[xschem raw value fosc1 0 4])} -8990 -2735 0 0 0.4 0.4 {floater=1}
T {tcleval(vctrl=[xschem raw value vctrl 0 0])} -8770 -2955 0 0 0.4 0.4 {floater=1}
T {tcleval(vctrl=[xschem raw value vctrl 0 1])} -8765 -2905 0 0 0.4 0.4 {floater=1}
T {tcleval(vctrl=[xschem raw value vctrl 0 2])} -8765 -2855 0 0 0.4 0.4 {floater=1}
T {tcleval(vctrl=[xschem raw value vctrl 0 3])} -8765 -2800 0 0 0.4 0.4 {floater=1}
T {tcleval(vctrl=[xschem raw value vctrl 0 4])} -8765 -2735 0 0 0.4 0.4 {floater=1}
N -8810 -3935 -8810 -3905 { lab=vctrl}
N -8910 -3935 -8910 -3905 { lab=#net1}
N -8720 -3935 -8720 -3905 { lab=inp}
N -8910 -4025 -8910 -3995 {
lab=vdd}
N -8825 -3630 -8825 -3580 {
lab=vdd}
N -8965 -3520 -8915 -3520 {
lab=vctrl}
N -8735 -3520 -8655 -3520 {
lab=out}
C {devices/vsource.sym} -8810 -3875 0 0 {name=V1 value=vctrl net_name=true}
C {devices/gnd.sym} -8810 -3845 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} -8910 -3875 0 0 {name=V2 value=vdd net_name=true}
C {devices/gnd.sym} -8910 -3845 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -8910 -4025 1 0 {name=p6 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} -8810 -3935 1 0 {name=p7 sig_type=std_logic lab=vctrl}
C {devices/vsource.sym} -8720 -3875 0 0 {name=V4 value="pulse(0 "vdd" "td" "tr" "tr" "tw" "tp")" net_name=true}
C {devices/gnd.sym} -8720 -3845 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -8720 -3935 1 0 {name=p10 sig_type=std_logic lab=inp}
C {devices/code.sym} -9035 -3325 0 0 {name=TT_MODELS1
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice

"
spice_ignore=false}
C {devices/ammeter.sym} -8910 -3965 2 1 {name=v12
current=2.9544e-06}
C {vco/vco.sym} -8815 -3520 0 0 {name=x2}
C {devices/lab_wire.sym} -8825 -3630 1 0 {name=p12 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} -8825 -3460 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -8955 -3520 2 0 {name=p16 sig_type=std_logic lab=vctrl}
C {devices/lab_wire.sym} -8655 -3520 3 1 {name=p17 sig_type=std_logic lab=out}
C {devices/launcher.sym} -8940 -3040 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} -8940 -3100 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/vco_tran.raw tran"
}
C {devices/code_shown.sym} -9820 -4040 0 0 {name=STIMULI4
only_toplevel=true
value="
.options acct list
.temp 25
.save all
.save @m.x2.xm1.msky130_fd_pr__nfet_01v8[cgd]
.save @m.x2.xm4.msky130_fd_pr__pfet_01v8[cgd]
.save @m.x2.xm4.msky130_fd_pr__pfet_01v8[cgg]

.save @m.x2.xm6.msky130_fd_pr__nfet_01v8[cgd]
.save @m.x2.xm6.msky130_fd_pr__nfet_01v8[cgg]

.save @m.x2.xm1.msky130_fd_pr__nfet_01v8[gm]

.save @m.x2.xm2.msky130_fd_pr__pfet_01v8[vth]
.save @m.x2.xm1.msky130_fd_pr__nfet_01v8[vth]
.save @m.x2.xm5.msky130_fd_pr__nfet_01v8[vth]


.param vctrl=0.75 vdd=1.7 cload=250f
+ td=20n tr=0.1n tw=10n  tp=20n

.control
op
write vco_tran.raw
set appendwrite

tran 0.01n 800n uic
meas tran tdelay01 TRIG v(out) VAL=0.9 RISE=6 TARG v(out) VAL=0.9 RISE=7
let fosc1= 1/tdelay01
print fosc1
save fosc1
remzerovec
write vco_tran.raw
set appendwrite 


alterparam vctrl=0.85
reset
tran 0.01n 800n uic
meas tran tdelay01 TRIG v(out) VAL=0.9 RISE=6 TARG v(out) VAL=0.9 RISE=7
let fosc1= 1/tdelay01
print fosc1
save fosc1
remzerovec
write vco_tran.raw
set appendwrite


alterparam vctrl=0.95
reset
tran 0.01n 800n uic
meas tran tdelay01 TRIG v(out) VAL=0.9 RISE=6 TARG v(out) VAL=0.9 RISE=7
let fosc1= 1/tdelay01
print fosc1
save fosc1
remzerovec
write vco_tran.raw
set appendwrite

alterparam vctrl=1.05
reset
tran 0.01n 800n uic
meas tran tdelay01 TRIG v(out) VAL=0.9 RISE=6 TARG v(out) VAL=0.9 RISE=7
let fosc1= 1/tdelay01
print fosc1
save fosc1
remzerovec
write vco_tran.raw
set appendwrite

alterparam vctrl=1.15
reset
tran 0.01n 800n uic
meas tran tdelay01 TRIG v(out) VAL=0.9 RISE=6 TARG v(out) VAL=0.9 RISE=7
let fosc1= 1/tdelay01
print fosc1
save fosc1
remzerovec
write vco_tran.raw
set appendwrite

alterparam vctrl=1.25
reset
tran 0.01n 800n uic
meas tran tdelay01 TRIG v(out) VAL=0.9 RISE=6 TARG v(out) VAL=0.9 RISE=7
let fosc1= 1/tdelay01
print fosc1
save fosc1
remzerovec
write vco_tran.raw
set appendwrite

.endc
"
}
