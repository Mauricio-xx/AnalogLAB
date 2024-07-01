v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 160 -430 190 -430 {
lab=OUT}
N 250 -430 250 -400 {
lab=GND}
N 90 -430 100 -430 {
lab=signal_in}
N 90 -430 90 -400 {
lab=signal_in}
N 160 -480 170 -480 {
lab=OUT}
N 170 -480 170 -430 {
lab=OUT}
N 60 -450 90 -450 {
lab=signal_in}
N 90 -450 90 -430 {
lab=signal_in}
C {devices/res.sym} 130 -430 1 0 {name=R1
value=100
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 220 -430 3 0 {name=C1
m=1
value=.01u
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 90 -370 0 0 {name=Vin value="pulse(0 1.8 0 1ns 1ns 5us 10us)"}
C {devices/gnd.sym} 250 -400 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 90 -340 0 0 {name=l2 lab=GND}
C {devices/netlist_not_shown.sym} 360 -585 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false
}
C {devices/code_shown.sym} -330 -640 0 0 {name=NGSPICE
only_toplevel=true
value="

.control

set hcopydevtype = svg
set nolegend
set color0=white
set color1=black
set color2=blue
set color3=red



save i(out)
save v(out)

save all

let start_c = .1u
let stop_c = .5u
let delta_c = .1u

let c_act = start_c

* loop start
while c_act le stop_c

  alter c1 $&c_act
  tran 0.01n 20u
  let c_act = c_act + delta_c
end


plot singal_in tran1.v(out) tran1.v(out) tran1.v(out) tran1.v(out) tran1.v(out)


.endc

"}
C {devices/lab_wire.sym} 160 -480 0 0 {name=p1 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 60 -450 0 0 {name=p2 sig_type=std_logic lab=signal_in}
