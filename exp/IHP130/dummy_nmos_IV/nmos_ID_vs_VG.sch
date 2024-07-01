v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 160 -400 160 -330 {
lab=#net1}
N 160 -300 290 -300 {
lab=#net2}
N 50 -300 120 -300 {
lab=#net3}
N 160 -400 240 -400 {
lab=#net1}
N 160 -270 160 -240 {
lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 140 -300 0 0 {name=M1
L=0.45u
W=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {vsource.sym} 240 -370 0 0 {name=VD value=1.2V savecurrent=false}
C {vsource.sym} 50 -270 0 0 {name=VGATE value=3 savecurrent=false
}
C {vsource.sym} 290 -270 0 0 {name=VBULK value=0 savecurrent=false}
C {gnd.sym} 160 -240 0 0 {name=l3 lab=GND}
C {gnd.sym} 50 -240 0 0 {name=l1 lab=GND}
C {gnd.sym} 290 -240 0 0 {name=l2 lab=GND}
C {gnd.sym} 240 -340 0 0 {name=l4 lab=GND}
C {code_shown.sym} 370 -380 0 0 {name=NGSPICE only_toplevel=true 
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
write $::SPICE_RESULTS/dummy_nmos_IV/ID_VG_nmos.raw
wrdata $::SPICE_RESULTS/id_vg_nmos.csv I(VD) I(VD)
*plot all
.endc
"}
C {code_shown.sym} 50 -70 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
"}
