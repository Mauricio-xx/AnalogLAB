v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 -70 10 -10 {
lab=#net1}
N 10 -75 70 -75 {
lab=#net1}
N 10 -75 10 -70 {
lab=#net1}
N -40 -130 105 -130 {
lab=#net2}
N 105 -130 110 -130 {
lab=#net2}
N 110 -130 110 -95 {
lab=#net2}
N 185 -75 185 -65 {
lab=#net3}
N 145 -75 185 -75 {
lab=#net3}
C {devices/simulator_commands_shown.sym} 300 -85 0 0 {name=SPICE only_toplevel=false value=".tran 0.01n 1u
.save all"}
C {devices/netlist_not_shown.sym} 290 -275 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false
}
C {devices/vsource.sym} -40 -100 0 0 {name=Vdd value=1.8}
C {devices/vsource.sym} 10 20 0 0 {name=Vin value="pulse(0 1.8 1ns 1ns 1ns 4ns 10ns)"}
C {devices/gnd.sym} -40 -70 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 10 50 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 110 -55 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 185 -35 0 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {devices/gnd.sym} 185 -5 0 0 {name=l1 lab=GND}
C {inverter.sym} 70 20 0 0 {name=x1}
