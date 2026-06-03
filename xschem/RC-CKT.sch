v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -60 40 -60 {lab=vout}
N 40 -60 40 -20 {lab=vout}
N 40 -60 80 -60 {lab=vout}
N -130 -60 -60 -60 {lab=in}
N -130 -60 -130 -30 {lab=in}
C {res.sym} -30 -60 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 40 10 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {ipin.sym} -130 -30 3 0 {name=p1 lab=in
}
C {iopin.sym} 40 40 1 0 {name=p3 lab=ref}
C {opin.sym} 80 -60 0 0 {name=p4 lab=out}
