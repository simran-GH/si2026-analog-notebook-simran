v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -1670 -590 -1670 -580 {lab=vref}
N -1610 -590 -1610 -580 {lab=vref}
N -1670 -600 -1670 -590 {lab=vref}
N -1670 -590 -1610 -590 {lab=vref}
N -1670 -710 -1670 -660 {lab=vbat}
N -1790 -710 -1670 -710 {lab=vbat}
N -1790 -710 -1790 -620 {lab=vbat}
N -1790 -560 -1790 -500 {lab=GND}
N -1790 -500 -1670 -500 {lab=GND}
N -1670 -520 -1670 -500 {lab=GND}
N -1670 -500 -1610 -500 {lab=GND}
N -1610 -520 -1610 -500 {lab=GND}
N -1670 -500 -1670 -490 {lab=GND}
N -1220 -480 -1220 -450 {lab=vout}
N -1150 -480 -990 -480 {lab=vout}
N -990 -480 -990 -450 {lab=vout}
N -1220 -390 -1220 -320 {lab=GND}
N -990 -390 -990 -340 {lab=GND}
N -1300 -640 -1270 -640 {lab=viom}
N -1300 -640 -1300 -550 {lab=viom}
N -1300 -550 -1260 -550 {lab=viom}
N -1210 -640 -1150 -640 {lab=vout}
N -1150 -640 -1150 -550 {lab=vout}
N -1200 -550 -1150 -550 {lab=vout}
N -1150 -550 -1150 -480 {lab=vout}
N -1220 -480 -1150 -480 {lab=vout}
N -1610 -590 -1450 -590 {lab=vref}
N -1450 -590 -1450 -440 {lab=vref}
N -1450 -440 -1260 -440 {lab=vref}
N -1580 -400 -1420 -400 {lab=vin2}
N -1300 -400 -1260 -400 {lab=viom}
N -1780 -400 -1640 -400 {lab=vin1}
N -1930 -400 -1930 -280 {lab=vin}
N -1930 -400 -1840 -400 {lab=vin}
N -1930 -220 -1930 -180 {lab=GND}
N -1300 -550 -1300 -400 {lab=viom}
N -1360 -400 -1300 -400 {lab=viom}
C {res.sym} -1670 -550 2 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} -1670 -630 2 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {capa.sym} -1610 -550 0 0 {name=C1
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -1790 -590 0 0 {name=V1 value=2.5 savecurrent=false}
C {gnd.sym} -1670 -490 0 0 {name=l1 lab=GND}
C {res.sym} -1230 -550 1 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {res.sym} -1390 -400 1 0 {name=R4
value=4.7k
footprint=1206
device=resistor
m=1}
C {res.sym} -1810 -400 1 0 {name=R5
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} -1240 -640 1 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vcvs.sym} -1220 -420 0 0 {name=E1 value=10e5}
C {capa.sym} -990 -420 2 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -990 -340 0 0 {name=l2 lab=GND}
C {gnd.sym} -1220 -330 0 0 {name=l3 lab=GND}
C {capa.sym} -1610 -400 1 0 {name=C4
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -1930 -250 0 0 {name=Vmic value="0.6 AC=1" savecurrent=false}
C {gnd.sym} -1930 -180 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -1890 -400 0 0 {name=p1 sig_type=std_logic lab=vin
}
C {lab_wire.sym} -1690 -400 0 0 {name=p2 sig_type=std_logic lab=vin1}
C {lab_wire.sym} -1760 -710 0 0 {name=p3 sig_type=std_logic lab=vbat}
C {lab_wire.sym} -1310 -400 0 0 {name=p4 sig_type=std_logic lab=viom}
C {lab_wire.sym} -1050 -480 0 0 {name=p7 sig_type=std_logic lab=vout}
C {lab_wire.sym} -1470 -400 0 0 {name=p11 sig_type=std_logic lab=vin2}
C {lab_wire.sym} -1310 -440 0 0 {name=p12 sig_type=std_logic lab=vref}
C {simulator_commands_shown.sym} -620 -610 0 0 {name=COMMANDS
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
