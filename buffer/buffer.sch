v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 285 -1535 320 -1535 {
lab=#net1}
N 250 -1580 250 -1555 {
lab=Vdd}
N 250 -1580 360 -1580 {
lab=Vdd}
N 360 -1580 360 -1555 {
lab=Vdd}
N 250 -1515 250 -1495 {
lab=Vss}
N 250 -1495 360 -1495 {
lab=Vss}
N 360 -1515 360 -1495 {
lab=Vss}
C {inverter.sym} 210 -1440 0 0 {name=x1}
C {inverter.sym} 320 -1440 0 0 {name=x2}
C {devices/iopin.sym} 300 -1580 1 1 {name=p1 lab=Vdd}
C {devices/iopin.sym} 300 -1495 1 0 {name=p2 lab=Vss}
C {devices/ipin.sym} 210 -1535 0 0 {name=p3 lab=Vin}
C {devices/opin.sym} 395 -1535 0 0 {name=p4 lab=Y}
