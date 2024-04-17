v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 6010 -3930 6810 -3530 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=8e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="fo_2 
fo_4 
fo_8"
color="4 5 10"
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1
digital=1}
N 5640 -3220 5810 -3220 {
lab=fo_8}
N 5240 -3250 5340 -3250 {
lab=clk}
N 5490 -3420 5490 -3330 {
lab=vdd}
N 5640 -3250 5810 -3250 {
lab=fo_4}
N 5640 -3280 5810 -3280 {
lab=fo_2}
N 5050 -3425 5050 -3395 { lab=#net1}
N 5050 -3515 5050 -3485 {
lab=vdd}
N 5680 -3110 5680 -3080 {
lab=fo_2}
N 5800 -3110 5800 -3080 {
lab=fo_4}
N 5950 -3110 5950 -3080 {
lab=fo_8}
N 5230 -3250 5230 -3210 {
lab=clk}
N 5230 -3250 5240 -3250 {
lab=clk}
C {devices/code.sym} 5280 -3030 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {devices/lab_wire.sym} 5800 -3220 0 0 {name=p3 sig_type=std_logic lab=fo_8}
C {devices/launcher.sym} 6090 -3490 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/divider_tran.raw tran"
}
C {divider/divider.sym} 5490 -3250 0 0 {name=x7}
C {devices/gnd.sym} 5490 -3170 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 5800 -3250 0 0 {name=p1 sig_type=std_logic lab=fo_4}
C {devices/lab_wire.sym} 5800 -3280 0 0 {name=p2 sig_type=std_logic lab=fo_2}
C {devices/lab_wire.sym} 5490 -3380 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 5050 -3365 0 0 {name=V3 value=vdd net_name=true}
C {devices/gnd.sym} 5050 -3335 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 5050 -3515 1 0 {name=p6 sig_type=std_logic lab=vdd}
C {devices/ammeter.sym} 5050 -3455 2 1 {name=v12
current=2.9544e-06}
C {devices/capa-2.sym} 5680 -3050 0 0 {name=C3
m=1
value=cload
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} 5680 -3020 0 0 {name=l12 lab=GND}
C {devices/capa-2.sym} 5800 -3050 0 0 {name=C1
m=1
value=cload
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} 5800 -3020 0 0 {name=l4 lab=GND}
C {devices/capa-2.sym} 5950 -3050 0 0 {name=C2
m=1
value=cload
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} 5950 -3020 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 5680 -3110 0 0 {name=p7 sig_type=std_logic lab=fo_2}
C {devices/lab_wire.sym} 5800 -3110 0 0 {name=p8 sig_type=std_logic lab=fo_4}
C {devices/lab_wire.sym} 5950 -3110 0 0 {name=p9 sig_type=std_logic lab=fo_8}
C {devices/simulator_commands_shown.sym} 3820 -3790 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value=
"
.param VDD=1.8  VSS=0
+ tr=0.1n  tf=0.1n  tw=5n  tp=10n
+ cload=100f


.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

* .measure tran trise 
* + TRIG v(z[6]) TD=10.5n VAL=0.1 RISE=1
* + TARG v(z[6]) TD=10.5n VAL=1.7 RISE=1
**** interactive sim
.control

  op
  write divider_tran.raw
  set appendwrite

  save all
  tran 0.1n 800n
  let power= i(v12)*v(vdd)
  meas tran power_avg  avg  power  from=1n  to=500n
  meas tran power_rms  rms  power  from=1n  to=500n  
  write divider_tran.raw
  set appendwrite

.endc
"
spice_ignore=true}
C {devices/lab_wire.sym} 5240 -3250 0 0 {name=p11 sig_type=std_logic lab=clk}
C {devices/vsource.sym} 5230 -3180 0 0 {name=V2 value="pulse(0 1.8 0 'tr' 'tr' 'tw' 'tp')" savecurrent=false}
C {devices/gnd.sym} 5230 -3150 0 0 {name=l7 lab=GND}
C {devices/launcher.sym} 6090 -3420 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/simulator_commands_shown.sym} 4080 -3080 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value=
"
.param VDD=1.8  VSS=0  
+ clk=100e6
+ tr=1n
+ tw=20n
+ tp=40n 
+ cload=100f


.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

* .measure tran trise 
* + TRIG v(z[6]) TD=10.5n VAL=0.1 RISE=1
* + TARG v(z[6]) TD=10.5n VAL=1.7 RISE=1
**** interactive sim
.control

  op
  write divider_tran.raw
  set appendwrite

  save all
  tran 0.1n 800n
  let power= i(v12)*v(vdd)
  meas tran power_avg  avg  power  from=1n  to=500n
  meas tran power_rms  rms  power  from=1n  to=500n  
  write divider_tran.raw
  set appendwrite

.endc
"}
