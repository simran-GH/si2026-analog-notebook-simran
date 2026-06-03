v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -220 -50 -220 -40 {lab=vref}
N -160 -50 -160 -40 {lab=vref}
N -220 -60 -220 -50 {lab=vref}
N -220 -50 -160 -50 {lab=vref}
N -220 -170 -220 -120 {lab=vbat}
N -340 -170 -220 -170 {lab=vbat}
N -340 -170 -340 -80 {lab=vbat}
N -340 -20 -340 40 {lab=GND}
N -340 40 -220 40 {lab=GND}
N -220 20 -220 40 {lab=GND}
N -220 40 -160 40 {lab=GND}
N -160 20 -160 40 {lab=GND}
N -220 40 -220 50 {lab=GND}
N 230 60 230 90 {lab=vout}
N 300 60 460 60 {lab=vout}
N 460 60 460 90 {lab=vout}
N 230 150 230 220 {lab=GND}
N 460 150 460 200 {lab=GND}
N 150 -100 180 -100 {lab=viom}
N 150 -100 150 -10 {lab=viom}
N 150 -10 190 -10 {lab=viom}
N 240 -100 300 -100 {lab=vout}
N 300 -100 300 -10 {lab=vout}
N 250 -10 300 -10 {lab=vout}
N 300 -10 300 60 {lab=vout}
N 230 60 300 60 {lab=vout}
N -160 -50 -0 -50 {lab=vref}
N 0 -50 0 100 {lab=vref}
N 0 100 190 100 {lab=vref}
N -130 140 30 140 {lab=vin2}
N 150 140 190 140 {lab=viom}
N -330 140 -190 140 {lab=vin1}
N -480 140 -480 260 {lab=vin}
N -480 140 -390 140 {lab=vin}
N -480 320 -480 360 {lab=GND}
N 150 -10 150 140 {lab=viom}
N 90 140 150 140 {lab=viom}
N 90 140 90 220 {lab=viom}
N 30 140 30 220 {lab=vin2}
C {res.sym} -220 -10 2 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} -220 -90 2 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {capa.sym} -160 -10 0 0 {name=C1
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -340 -50 0 0 {name=V1 value=2.5 savecurrent=false}
C {gnd.sym} -220 50 0 0 {name=l1 lab=GND}
C {res.sym} 220 -10 1 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {res.sym} 60 140 1 0 {name=R4
value=4.7k
footprint=1206
device=resistor
m=1}
C {res.sym} -360 140 1 0 {name=R5
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} 210 -100 1 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vcvs.sym} 230 120 0 0 {name=E1 value=10e5}
C {capa.sym} 460 120 2 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 460 200 0 0 {name=l2 lab=GND}
C {gnd.sym} 230 210 0 0 {name=l3 lab=GND}
C {capa.sym} -160 140 1 0 {name=C4
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -480 290 0 0 {name=Vmic value="0.6 AC=1" savecurrent=false}
C {gnd.sym} -480 360 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -440 140 0 0 {name=p1 sig_type=std_logic lab=vin
}
C {lab_wire.sym} -240 140 0 0 {name=p2 sig_type=std_logic lab=vin1}
C {lab_wire.sym} -310 -170 0 0 {name=p3 sig_type=std_logic lab=vbat}
C {lab_wire.sym} 140 140 0 0 {name=p4 sig_type=std_logic lab=viom}
C {lab_wire.sym} 400 60 0 0 {name=p7 sig_type=std_logic lab=vout}
C {lab_wire.sym} -20 140 0 0 {name=p11 sig_type=std_logic lab=vin2}
C {lab_wire.sym} 140 100 0 0 {name=p12 sig_type=std_logic lab=vref}
C {simulator_commands_shown.sym} 830 -70 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.param temp=27
.control
save all
op

ac dec 100 1 100meg
let voutdb=vdb(vout)
let voutabs=abs(vout)

meas ac vout_1k find voutabs at=1k
meas ac voutdb_1k find voutdb at=1k

let voutm3db=voutdb_1k - 3.0
meas ac fp3db WHEN voutdb=voutm3db fall=last
meas ac fz3db WHEN voutdb=voutm3db rise=1

write
plot vdb(vout)
plot abs(vout)

.endc

"}
C {capa.sym} 60 220 1 0 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
