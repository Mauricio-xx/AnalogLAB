v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 200 -100 200 -70 {
lab=GND}
N 100 -130 160 -130 {
lab=#net1}
N 330 -200 330 -180 {
lab=#net2}
N 200 -200 330 -200 {
lab=#net2}
N 200 -200 200 -160 {
lab=#net2}
N 200 -130 290 -130 {
lab=#net3}
N 290 -130 290 -90 {
lab=#net3}
N 200 -70 200 -50 {
lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 180 -130 0 0 {name=M1
L=0.45u
W=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {vsource.sym} 100 -100 0 0 {name=VGATE value=3 savecurrent=false
}
C {vsource.sym} 330 -150 0 0 {name=VD value=1.2V savecurrent=false}
C {vsource.sym} 290 -60 0 0 {name=VBULK value=0 savecurrent=false}
C {gnd.sym} 100 -70 0 0 {name=l1 lab=GND}
C {gnd.sym} 200 -50 0 0 {name=l2 lab=GND}
C {gnd.sym} 290 -30 0 0 {name=l3 lab=GND}
C {gnd.sym} 330 -120 0 0 {name=l4 lab=GND}
C {code_shown.sym} 450 -190 0 0 {name=NGSPICE only_toplevel=true 
format="tcleval( @value )"
value="
.param temp=27
.control
pre_osdi $::PRE_OSDI_PATH/psp103_nqs.osdi
save all 
op
print I(VD)
*reset 
dc VGATE 0 1.2 50m
print I(VD)
write $::SPICE_RESULTS/dummy_nmos_pmos_IV/IS_VG_nmos.raw
wrdata $::SPICE_RESULTS/is_vg_pmos.csv I(VD) I(VD)
*plot all
.endc
"}
C {code_shown.sym} 130 120 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
"}
