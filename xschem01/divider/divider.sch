v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1450 -1500 2250 -1100 {flags=graph
y1=-0.039
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=clk
color=19
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1440 -1050 2240 -650 {flags=graph
y1=-0.071
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=A
color=5
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1440 -580 2240 -180 {flags=graph
y1=-0.039
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=B
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1440 -120 2240 280 {flags=graph
y1=-0.039
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=C
color=12
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 2240 -1050 3040 -650 {flags=graph
y1=-0.041
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=A1
color=5
dataset=-1
unitx=1
logx=0
logy=0
}
N 50 -780 200 -780 {
lab=clk}
N 40 -780 40 -740 {
lab=clk}
N 40 -780 50 -780 {
lab=clk}
N 400 -910 400 -780 {
lab=A}
N 380 -780 400 -780 {
lab=A}
N 200 -760 200 -720 {
lab=#net1}
N 200 -720 400 -720 {
lab=#net1}
N 400 -760 400 -720 {
lab=#net1}
N 380 -760 400 -760 {
lab=#net1}
N 670 -910 670 -780 {
lab=B}
N 650 -780 670 -780 {
lab=B}
N 470 -760 470 -720 {
lab=#net2}
N 470 -720 670 -720 {
lab=#net2}
N 670 -760 670 -720 {
lab=#net2}
N 650 -760 670 -760 {
lab=#net2}
N 400 -760 440 -760 {
lab=#net1}
N 440 -780 440 -760 {
lab=#net1}
N 440 -780 470 -780 {
lab=#net1}
N 940 -910 940 -780 {
lab=C}
N 920 -780 940 -780 {
lab=C}
N 740 -760 740 -720 {
lab=#net3}
N 740 -720 940 -720 {
lab=#net3}
N 940 -760 940 -720 {
lab=#net3}
N 920 -760 940 -760 {
lab=#net3}
N 670 -760 710 -760 {
lab=#net2}
N 710 -780 710 -760 {
lab=#net2}
N 710 -780 740 -780 {
lab=#net2}
N 590 -1100 590 -1070 {
lab=A}
N 710 -1100 710 -1070 {
lab=B}
N 860 -1100 860 -1070 {
lab=C}
C {devices/code.sym} 220 -130 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {devices/simulator_commands_shown.sym} -510 -410 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value=
"
.param VDD=1.8  VSS=0
+ tr=0.1n  tf=0.1n  tw=5n  tp=10n
+ cload=100f
vvss vss 0 VSS
vvcc VDD 0 VDD
*vclk clk 0 pulse(0 1.8 0 10n 10n 200n 400n)

.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

* .measure tran trise 
* + TRIG v(z[6]) TD=10.5n VAL=0.1 RISE=1
* + TARG v(z[6]) TD=10.5n VAL=1.7 RISE=1
**** interactive sim
.control
  save all
  tran 0.1n 100n
  let power= i(vvcc)*v(vdd,vss)
  meas tran power_avg  avg  power  from=1n  to=90n
  meas tran power_rms  rms  power  from=1n  to=90n  
  write divider.raw
  set appendwrite
*  alterparam VCC=1.6
*  reset
*  save all
*  tran 0.02n 30n
*  write test_inv.raw
*  quit 0
.endc
"}
C {sky130_stdcells/dfxbp_2.sym} 290 -770 0 0 {name=x3 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 50 -780 0 0 {name=p5 sig_type=std_logic lab=clk}
C {devices/vsource.sym} 40 -710 0 0 {name=V2 value="pulse(0 1.8 0 'tr' 'tf' 'tw' 'tp')" savecurrent=false}
C {devices/gnd.sym} 40 -680 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 400 -910 0 0 {name=p6 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 670 -910 0 0 {name=p7 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 940 -910 0 0 {name=p8 sig_type=std_logic lab=C}
C {devices/launcher.sym} 1230 -500 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/divider.raw tran"
}
C {sky130_stdcells/dfxbp_2.sym} 560 -770 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxbp_2.sym} 830 -770 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/capa-2.sym} 590 -1040 0 0 {name=C3
m=1
value=cload
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} 590 -1010 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 590 -1090 2 0 {name=p16 sig_type=std_logic lab=A}
C {devices/capa-2.sym} 710 -1040 0 0 {name=C1
m=1
value=cload
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} 710 -1010 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 710 -1090 2 0 {name=p3 sig_type=std_logic lab=B}
C {devices/capa-2.sym} 860 -1040 0 0 {name=C2
m=1
value=cload
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} 860 -1010 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 860 -1090 2 0 {name=p4 sig_type=std_logic lab=C}
C {devices/simulator_commands_shown.sym} -1000 -1240 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value=
"
.param VDD=1.8  VSS=0
+ tr=0.1n  tf=0.1n  tw=5n  tp=10n
+ cload=100f
vvss vss 0 VSS
vvcc VDD 0 VDD
*vclk clk 0 pulse(0 1.8 0 10n 10n 200n 400n)

.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

* .measure tran trise 
* + TRIG v(z[6]) TD=10.5n VAL=0.1 RISE=1
* + TARG v(z[6]) TD=10.5n VAL=1.7 RISE=1
**** interactive sim
.control
  save all
  tran 0.1n 100n
  write divider.raw
  set appendwrite
*  alterparam VCC=1.6
*  reset
*  save all
*  tran 0.02n 30n
*  write test_inv.raw
*  quit 0
.endc
"
spice_ignore=true}
