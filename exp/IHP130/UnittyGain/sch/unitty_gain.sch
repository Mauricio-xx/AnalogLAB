v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 320 -470 320 -422.5 {
lab=GND}
N 130 -470 130 -422.5 {
lab=GND}
N 630 -660 630 -620 {
lab=#net1}
N 820 -660 820 -620 {
lab=#net1}
N 630 -660 820 -660 {
lab=#net1}
N 630 -560 630 -545 {
lab=#net2}
N 630 -545 630 -530 {
lab=#net2}
N 630 -470 630 -420 {
lab=#net3}
N 630 -360 630 -330 {
lab=#net4}
N 820 -270 820 -235 {
lab=#net5}
N 630 -235 820 -235 {
lab=#net5}
N 630 -270 630 -235 {
lab=#net5}
N 670 -590 780 -590 {
lab=#net3}
N 630 -450 720 -450 {
lab=#net3}
N 670 -500 780 -500 {
lab=#net6}
N 720 -590 720 -450 {
lab=#net3}
N 130 -570 130 -530 {
lab=#net7}
N 130 -570 320 -570 {
lab=#net7}
N 320 -570 320 -530 {
lab=#net7}
N 820 -360 820 -330 {
lab=#net8}
N 820 -470 820 -420 {
lab=#net9}
N 820 -470 820 -420 {
lab=#net9}
N 820 -560 820 -530 {
lab=#net10}
N 320 -422.5 320 -340 {
lab=GND}
N 130 -422.5 130 -330 {
lab=GND}
N 30 -500 90 -500 {
lab=#net11}
N 30 -500 30 -490 {
lab=#net11}
N 360 -500 380 -500 {
lab=#net12}
N 320 -340 320 -330 {
lab=GND}
N 220 -600 220 -570 {
lab=#net7}
C {sg13g2_pr/sg13_lv_nmos.sym} 110 -500 0 0 {name=M1
L=0.45u
W=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 340 -500 0 1 {name=M2
L=0.45u
W=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 800 -500 0 0 {name=M3
L=0.45u
W=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 650 -500 0 1 {name=M4
L=0.45u
W=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 800 -590 0 0 {name=M5
L=0.45u
W=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 650 -590 0 1 {name=M6
L=0.45u
W=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 650 -390 2 0 {name=M7
L=0.45u
W=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 800 -390 2 1 {name=M8
L=0.45u
W=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 650 -300 2 0 {name=M9
L=0.45u
W=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 800 -300 2 1 {name=M10
L=0.45u
W=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {vsource.sym} 30 -460 0 0 {name=V1 value=3 savecurrent=false}
C {vsource.sym} 380 -470 0 0 {name=V2 value=3 savecurrent=false}
C {gnd.sym} 130 -330 0 0 {name=l1 lab=GND}
C {gnd.sym} 320 -330 0 0 {name=l2 lab=GND}
C {isource.sym} 220 -630 0 0 {name=I0 value=1m}
