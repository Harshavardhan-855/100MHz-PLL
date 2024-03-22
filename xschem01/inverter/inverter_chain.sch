v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 260 -290 260 -250 {
lab=vdd}
N 260 -290 1080 -290 {
lab=vdd}
N 1080 -290 1080 -250 {
lab=vdd}
N 680 -290 680 -250 {
lab=vdd}
N 260 -150 260 -100 {
lab=vss}
N 260 -100 1080 -100 {
lab=vss}
N 1080 -150 1080 -100 {
lab=vss}
N 680 -150 680 -100 {
lab=vss}
N 410 -200 530 -200 {
lab=#net1}
N 830 -200 930 -200 {
lab=#net2}
N 680 -320 680 -290 {
lab=vdd}
N 680 -100 680 -60 {
lab=vss}
C {/home/vks/pll/xschem01/inverter/inverter.sym} 260 -200 0 0 {name=x1}
C {/home/vks/pll/xschem01/inverter/inverter.sym} 680 -200 0 0 {name=x2}
C {/home/vks/pll/xschem01/inverter/inverter.sym} 1080 -200 0 0 {name=x3}
C {devices/iopin.sym} 680 -320 2 0 {name=p3 lab=vdd}
C {devices/iopin.sym} 680 -60 2 0 {name=p1 lab=vss}
C {devices/iopin.sym} 110 -200 2 0 {name=p2 lab=inp}
C {devices/iopin.sym} 1230 -200 0 0 {name=p4 lab=out}
