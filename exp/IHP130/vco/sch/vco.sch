v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 360 -520 360 -510 {
lab=GND}
N 360 -520 380 -520 {
lab=GND}
N 420 -620 420 -550 {
lab=#net1}
N 420 -590 520 -590 {
lab=#net1}
N 520 -530 520 -500 {
lab=#net2}
N 420 -440 520 -440 {
lab=GND}
N 420 -490 420 -440 {
lab=GND}
C {sg13g2_pr/npn13G2.sym} 400 -520 0 0 {name=Q1
model=npn13G2
spiceprefix=X
Nx=1}
C {sg13g2_pr/cap_cpara.sym} 520 -560 0 0 {name=C1 model=cparasitic C=10f  spiceprefix=X}
C {ind.sym} 420 -650 0 0 {name=L1
m=1
value=1n
footprint=1206
device=inductor}
C {sg13g2_pr/cap_cpara.sym} 520 -470 0 0 {name=C2 model=cparasitic C=10f  spiceprefix=X}
C {gnd.sym} 360 -510 0 0 {name=l2 lab=GND}
C {gnd.sym} 470 -440 0 0 {name=l3 lab=GND}
C {vdd.sym} 420 -680 0 0 {name=l4 lab=VDD}
