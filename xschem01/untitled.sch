v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2020 -1230 2020 -1200 {
lab=VDD}
N 1810 -950 1810 -920 {
lab=B}
N 1810 -1080 1810 -1050 {
lab=A}
N 2280 -1110 2280 -1070 {
lab=VDD}
N 2100 -1010 2130 -1010 {
lab=A}
N 2100 -970 2130 -970 {
lab=B}
N 2430 -1030 2480 -1030 {
lab=QA}
N 2430 -950 2480 -950 {
lab=QB}
N 2480 -950 2510 -950 {
lab=QB}
N 2510 -950 2510 -930 {
lab=QB}
N 2480 -1030 2580 -1030 {
lab=QA}
N 2580 -1030 2580 -930 {
lab=QA}
N 2770 -990 2800 -990 {
lab=qa}
N 2770 -970 2800 -970 {
lab=qb}
N 2870 -1060 2870 -1030 {
lab=vdd}
N 2940 -980 2970 -980 {
lab=cp_out}
N 2840 -1060 2840 -1030 {
lab=cp_bias}
N 2720 -1210 2720 -1180 {
lab=cp_bias}
C {pfd/pfd.sym} 2280 -990 0 0 {name=x1}
C {devices/vsource.sym} 2020 -1170 0 0 {name=V1 value=3 savecurrent=false}
C {devices/gnd.sym} 2020 -1140 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 2020 -1220 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 1810 -890 0 0 {name=V2 value="pulse(0 1.8 40n 1n 1n 'tw' 'tp') " savecurrent=false}
C {devices/gnd.sym} 1810 -860 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 1810 -940 0 0 {name=p3 sig_type=std_logic lab=B}
C {devices/vsource.sym} 1810 -1020 0 0 {name=V3 value="pulse(0 1.8 20n 1n 1n 'tw' 'tp') " savecurrent=false}
C {devices/gnd.sym} 1810 -990 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 1810 -1070 0 0 {name=p6 sig_type=std_logic lab=A}
C {devices/code_shown.sym} 2200 -710 0 0 {name=STIMULI
only_toplevel=true
value="
.options acct list
.temp 25
.param cload=500f  tw=40n tp=80n

.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

*.step cload 100f 500f 100f 

.meas tran TRAN_PERIOD TRIG V(QA) VAL=0.5 RISE=1 TARG V(QA) VAL=0.5 RISE=2
.meas tran TRAN_FREQ param='1/TRAN_PERIOD'

.print TRAN_PERIOD  TRAN_FREQ

.control
save all
tran 1n 500n
step param R1 R1_start R1_stop R1_step
write pfd_tran.raw

.endc
"
}
C {devices/code.sym} 1980 -710 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/gnd.sym} 2280 -910 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 2280 -1090 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 2100 -1010 0 0 {name=p4 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 2100 -970 0 0 {name=p5 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 2480 -1030 0 0 {name=p7 sig_type=std_logic lab=QA}
C {devices/lab_wire.sym} 2480 -950 0 0 {name=p8 sig_type=std_logic lab=QB}
C {devices/capa-2.sym} 2510 -900 0 0 {name=C1
m=1
value=cload
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {devices/capa-2.sym} 2580 -900 0 0 {name=C2
m=1
value=cload
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {devices/gnd.sym} 2510 -870 0 0 {name=l5 lab=GND
spice_ignore=true}
C {devices/gnd.sym} 2580 -870 0 0 {name=l6 lab=GND
spice_ignore=true}
C {cp/cp.sym} 2870 -980 0 0 {name=x2}
C {devices/gnd.sym} 2870 -930 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 2780 -990 0 0 {name=p13 sig_type=std_logic lab=qa}
C {devices/lab_wire.sym} 2780 -970 0 0 {name=p14 sig_type=std_logic lab=qb}
C {devices/lab_wire.sym} 2870 -1050 1 0 {name=p15 sig_type=std_logic lab=vdd}
C {devices/capa-2.sym} 2970 -950 0 0 {name=C3
m=1
value=cload
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} 2970 -920 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 2950 -980 1 0 {name=p16 sig_type=std_logic lab=cp_out}
C {devices/lab_wire.sym} 2840 -1050 0 0 {name=p18 sig_type=std_logic lab=cp_bias}
C {devices/code_shown.sym} 3070 -750 0 0 {name=STIMULI1
only_toplevel=true
value="
.options acct list savecurrents
.temp 25
.param cload=5p
+ ibias=10u  low=0  high=1.8
+ tw=40n  tp=80n
******charging
*+ tw_a=50n tp_a=80n
*+ tw_b=0n  tp_b=0n
******discharging
*+ tw_a=0n tp_a=0n
*+ tw_b=50n  tp_b=80n

.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.ic v(cp_out)=1.8  v(cp_out1)=1.8

*.meas tran TRAN_PERIOD TRIG V(QA) VAL=0.5 RISE=1 TARG V(QA) VAL=0.5 RISE=2
*.meas tran TRAN_FREQ param='1/TRAN_PERIOD'

.print TRAN_PERIOD  TRAN_FREQ
*print @m.x1.xm3.msky130_fd_pr__nfet_01v8[id]  @m.x1.xm4.msky130_fd_pr__pfet_01v8[id]


.control
save all
save @m.x1.xm3.msky130_fd_pr__nfet_01v8[vth]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8[vgs]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8[gm]

save @m.x1.xm6.msky130_fd_pr__pfet_01v8[vth]

save @m.x1.xm4.msky130_fd_pr__pfet_01v8[vsg]
save @m.x1.xm6.msky130_fd_pr__pfet_01v8[vsg]


op
write cp_tran.raw
set appendwrite

tran 1n 10u
write cp_tran.raw

print  @m.x1.xm3.msky130_fd_pr__nfet_01v8[vth]
print  @m.x1.xm3.msky130_fd_pr__nfet_01v8[gm]
print  @m.x1.xm3.msky130_fd_pr__nfet_01v8[vgs]

*print x1.bias  x1.n1   x1.cp_out

.endc
"
}
C {devices/vsource.sym} 2720 -1150 0 0 {name=V9 value=0.85 savecurrent=false
}
C {devices/gnd.sym} 2720 -1120 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 2720 -1200 0 0 {name=p17 sig_type=std_logic lab=cp_bias}
