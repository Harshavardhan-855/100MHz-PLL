v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1110 -1040 1110 -1010 {
lab=VDD}
N 1370 -920 1370 -880 {
lab=VDD}
N 900 -760 900 -730 {
lab=B}
N 1190 -820 1220 -820 {
lab=A}
N 1190 -780 1220 -780 {
lab=B}
N 760 -760 760 -730 {
lab=A}
N 1520 -840 1570 -840 {
lab=QA}
N 1520 -760 1570 -760 {
lab=QB}
C {pfd/pfd.sym} 1370 -800 0 0 {name=x1}
C {devices/vsource.sym} 1110 -980 0 0 {name=V1 value=3 savecurrent=false}
C {devices/gnd.sym} 1110 -950 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1370 -720 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 1110 -1030 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1370 -900 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 900 -700 0 0 {name=V2 value="pulse(0 1.8 10n 10n 10n 100n 200n) " savecurrent=false}
C {devices/gnd.sym} 900 -670 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 900 -750 0 0 {name=p3 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 1190 -820 0 0 {name=p4 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 1190 -780 0 0 {name=p5 sig_type=std_logic lab=B}
C {devices/vsource.sym} 760 -700 0 0 {name=V3 value="pulse(0 1.8 0 10n 10n 100n 200n) " savecurrent=false}
C {devices/gnd.sym} 760 -670 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 760 -750 0 0 {name=p6 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 1570 -840 0 0 {name=p7 sig_type=std_logic lab=QA}
C {devices/lab_wire.sym} 1570 -760 0 0 {name=p8 sig_type=std_logic lab=QB}
C {devices/code.sym} 1110 -520 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 1290 -520 0 0 {name=STIMULI
only_toplevel=true
value="
.options acct list
.temp 25

.control

tran 30p 80n
plot clk+18 a+16 b+14 reset_b+12 q+10 x+6 y+4 qlatch+2 xschem
write test_stdcells.raw

.endc
"}
