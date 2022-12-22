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
lab=VDD}
N 130 -210 130 -180 {
lab=VDD}
N 110 -210 130 -210 {
lab=VDD}
N 110 -80 130 -80 {
lab=GND}
N 130 -80 130 -50 {
lab=GND}
N 110 -50 130 -50 {
lab=GND}
N 30 -180 70 -180 {
lab=#net1}
N 30 -180 30 -80 {
lab=#net1}
N 30 -80 70 -80 {
lab=#net1}
N 110 -240 110 -210 {
lab=VDD}
N 110 -130 180 -130 {
lab=Y}
N -150 -230 -150 -190 {
lab=VDD}
N -60 -130 30 -130 {
lab=#net1}
N -100 -130 -60 -130 {
lab=#net1}
N -100 -130 -100 -70 {
lab=#net1}
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
C {devices/gnd.sym} 110 -50 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 110 -240 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -150 -160 0 0 {name=VDD value=1.8}
C {devices/vsource.sym} -100 -40 0 0 {name=Vin value="pulse(0 1.8 1ns 1ns 1ns 4ns 10ns)"}
C {devices/lab_wire.sym} -150 -230 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} -150 -130 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -100 -10 0 0 {name=l3 lab=GND}
C {devices/simulator_commands_shown.sym} 290 -100 0 0 {

name=SPICE only_toplevel=false value=".tran 0.01n 1u
.save all"}
C {devices/netlist_not_shown.sym} 280 -290 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=falsname=s1 only_toplevel=false value=blabla}
C {devices/opin.sym} 180 -130 0 0 {name=p2 lab=Y}
C {devices/simulator_commands_shown.sym} 290 0 0 0 {name=Xyce
simulator=xyce
only_toplevel=false 
value="

** Currently (Xyce 7.5) these diode models
** are not recognized
.tran 0.01n 1u
.print TRAN FORMAT=CSV FILE=/foss/designs/AnalogLAB/one_level_inverter/inverter.csv V(*)

"}
