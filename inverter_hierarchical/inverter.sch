v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -150 110 -110 {
lab=Y}
N 110 -180 130 -180 {
lab=Vdd}
N 130 -210 130 -180 {
lab=Vdd}
N 110 -210 130 -210 {
lab=Vdd}
N 110 -80 130 -80 {
lab=Vss}
N 130 -80 130 -50 {
lab=Vss}
N 110 -50 130 -50 {
lab=Vss}
N 30 -180 70 -180 {
lab=Vin}
N 30 -180 30 -80 {
lab=Vin}
N 30 -80 70 -80 {
lab=Vin}
N 110 -245 110 -210 {
lab=Vdd}
N 110 -50 110 -25 {
lab=Vss}
N 110 -130 135 -130 {
lab=Y}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 90 -80 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 90 -180 0 0 {name=M2
L=0.35
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/opin.sym} 135 -130 0 0 {name=p2 lab=Y}
C {devices/iopin.sym} 110 -245 3 0 {name=p1 lab=Vdd}
C {devices/ipin.sym} 30 -130 0 0 {name=p3 lab=Vin}
C {devices/iopin.sym} 110 -25 1 0 {name=p4 lab=Vss}
