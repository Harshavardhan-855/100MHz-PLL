v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 4310 -2550 5110 -2150 {flags=graph
y1=-0.57
y2=1.9
ypos1=-0.57
ypos2=1.9
divy=5
subdivy=1
unity=1
x1=1e-13
x2=1e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out%0
out%1
out%2
out%3
out%4"
color="7 4 8 21 13"
dataset=-1
unitx=1
logx=0
logy=0
digital=1
rainbow=1}
N 4680 -1860 4750 -1860 {
lab=#net1}
N 4830 -1860 4880 -1860 {
lab=#net2}
N 4960 -1860 5020 -1860 {
lab=out}
N 4550 -1860 4600 -1860 {
lab=out}
N 4550 -1920 4550 -1860 {
lab=out}
N 4550 -1920 5020 -1920 {
lab=out}
N 5020 -1920 5020 -1860 {
lab=out}
N 4640 -1780 4640 -1750 {
lab=vdd}
N 4760 -1780 4760 -1750 {
lab=vss}
C {sky130_stdcells/inv_2.sym} 4640 -1860 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_2.sym} 4790 -1860 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_2.sym} 4920 -1860 0 0 {name=x3 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/vsource.sym} 4640 -1720 0 0 {name=V1 value=vdd savecurrent=false
}
C {devices/gnd.sym} 4640 -1690 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 4640 -1770 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 4760 -1720 0 0 {name=V2 value=vss savecurrent=false
}
C {devices/gnd.sym} 4760 -1690 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 4760 -1770 0 0 {name=p2 sig_type=std_logic lab=vss}
C {devices/code.sym} 4850 -1770 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 5140 -2160 0 0 {name=STIMULI1
only_toplevel=true
value="
.options acct list savecurrents
.temp 25
.param vdd=1.8  vss=0 

.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.ic v(out)=1

.control
save all

let vccc = 1.2            
repeat 5                  
  alter v1 $&vccc        
  tran 0.01n 10n uic
  remzerovec    
  write inv_loop.raw
  set appendwrite
  let vccc = vccc + 0.2   
end 

.endc
"
}
C {devices/lab_wire.sym} 5020 -1880 0 0 {name=p3 sig_type=std_logic lab=out}
C {devices/launcher.sym} 4380 -2120 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/inv_loop.raw tran"
}
