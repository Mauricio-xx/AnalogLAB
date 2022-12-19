v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -200 110 -140 {
lab=#net1}
N 110 -205 170 -205 {
lab=#net1}
N 110 -205 110 -200 {
lab=#net1}
N 60 -260 205 -260 {
lab=#net2}
N 205 -260 210 -260 {
lab=#net2}
N 210 -260 210 -225 {
lab=#net2}
N 285 -205 285 -195 {
lab=xxx}
N 245 -205 285 -205 {
lab=xxx}
N 230 -205 245 -205 {
lab=xxx}
N 280 -225 285 -225 {
lab=xxx}
N 285 -225 285 -205 {
lab=xxx}
C {devices/simulator_commands_shown.sym} 400 -215 0 0 {name=SPICE only_toplevel=false value=".tran 0.01n 1u
.save all"}
C {devices/netlist_not_shown.sym} 390 -405 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false
}
C {devices/vsource.sym} 60 -230 0 0 {name=Vdd value=1.8}
C {devices/vsource.sym} 110 -110 0 0 {name=Vin value="pulse(0 1.8 1ns 1ns 1ns 4ns 10ns)"}
C {devices/gnd.sym} 60 -200 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 110 -80 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 210 -185 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 285 -165 0 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {devices/gnd.sym} 285 -135 0 0 {name=l1 lab=GND}
C {buffer.sym} 155 -160 0 0 {name=x1}
C {devices/lab_wire.sym} 280 -225 0 0 {name=p1 sig_type=std_logic lab=OUT}
