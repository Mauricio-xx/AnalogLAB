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
N -140 -215 -120 -215 {
lab=Vin}
N -120 -220 -120 -215 {
lab=Vin}
N -160 -260 -140 -260 {
lab=Vdd}
N -140 -265 -140 -260 {
lab=Vdd}
N -150 -125 -120 -125 {
lab=Vss}
N -170 -170 -170 -160 {
lab=Y}
N -170 -160 -145 -160 {
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
C {devices/opin.sym} -145 -160 0 0 {name=p2 lab=Y}
C {devices/iopin.sym} -140 -265 3 0 {name=p1 lab=Vdd}
C {devices/ipin.sym} -140 -215 0 0 {name=p3 lab=Vin}
C {devices/iopin.sym} -150 -125 1 0 {name=p4 lab=Vss}
C {devices/lab_wire.sym} 110 -245 0 0 {name=p5 sig_type=std_logic lab=Vdd}
C {devices/lab_wire.sym} 30 -130 0 0 {name=p6 sig_type=std_logic lab=Vin
}
C {devices/lab_wire.sym} 110 -25 1 1 {name=p8 sig_type=std_logic lab=Vss}
C {devices/lab_wire.sym} -120 -220 0 0 {name=p9 sig_type=std_logic lab=Vin
}
C {devices/lab_wire.sym} -160 -260 0 0 {name=p10 sig_type=std_logic lab=Vdd}
C {devices/lab_wire.sym} -120 -125 1 1 {name=p12 sig_type=std_logic lab=Vss}
C {devices/lab_wire.sym} 135 -130 0 1 {name=p7 sig_type=std_logic lab=Y}
C {devices/lab_wire.sym} -170 -170 0 1 {name=p11 sig_type=std_logic lab=Y}
