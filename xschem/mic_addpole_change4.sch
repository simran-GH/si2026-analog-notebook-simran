v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -1880 -850 -1880 -840 {lab=vref}
N -1820 -850 -1820 -840 {lab=vref}
N -1880 -860 -1880 -850 {lab=vref}
N -1880 -850 -1820 -850 {lab=vref}
N -1880 -970 -1880 -920 {lab=vbat}
N -2000 -970 -1880 -970 {lab=vbat}
N -2000 -970 -2000 -880 {lab=vbat}
N -2000 -820 -2000 -760 {lab=GND}
N -2000 -760 -1880 -760 {lab=GND}
N -1880 -780 -1880 -760 {lab=GND}
N -1880 -760 -1820 -760 {lab=GND}
N -1820 -780 -1820 -760 {lab=GND}
N -1880 -760 -1880 -750 {lab=GND}
N -1430 -740 -1430 -710 {lab=vout}
N -1360 -740 -1200 -740 {lab=vout}
N -1200 -740 -1200 -710 {lab=vout}
N -1430 -650 -1430 -580 {lab=GND}
N -1200 -650 -1200 -600 {lab=GND}
N -1510 -900 -1480 -900 {lab=viom}
N -1510 -900 -1510 -810 {lab=viom}
N -1510 -810 -1470 -810 {lab=viom}
N -1420 -900 -1360 -900 {lab=vout}
N -1360 -900 -1360 -810 {lab=vout}
N -1410 -810 -1360 -810 {lab=vout}
N -1360 -810 -1360 -740 {lab=vout}
N -1430 -740 -1360 -740 {lab=vout}
N -1820 -850 -1660 -850 {lab=vref}
N -1660 -850 -1660 -700 {lab=vref}
N -1660 -700 -1470 -700 {lab=vref}
N -1790 -660 -1630 -660 {lab=vin2}
N -1510 -660 -1470 -660 {lab=viom}
N -1990 -660 -1850 -660 {lab=vin1}
N -2140 -660 -2140 -540 {lab=vin}
N -2140 -660 -2050 -660 {lab=vin}
N -2140 -480 -2140 -440 {lab=GND}
N -1510 -810 -1510 -660 {lab=viom}
N -1570 -660 -1510 -660 {lab=viom}
N -1570 -660 -1570 -580 {lab=viom}
N -1630 -660 -1630 -580 {lab=vin2}
C {res.sym} -1880 -810 2 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} -1880 -890 2 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {capa.sym} -1820 -810 0 0 {name=C1
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -2000 -850 0 0 {name=V1 value=2.5 savecurrent=false}
C {gnd.sym} -1880 -750 0 0 {name=l1 lab=GND}
C {res.sym} -1440 -810 1 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {res.sym} -1600 -660 1 0 {name=R4
value=4.7k
footprint=1206
device=resistor
m=1}
C {res.sym} -2020 -660 1 0 {name=R5
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} -1450 -900 1 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vcvs.sym} -1430 -680 0 0 {name=E1 value=10e5}
C {capa.sym} -1200 -680 2 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -1200 -600 0 0 {name=l2 lab=GND}
C {gnd.sym} -1430 -590 0 0 {name=l3 lab=GND}
C {capa.sym} -1820 -660 1 0 {name=C4
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -2140 -510 0 0 {name=Vmic value="0.6 AC=1" savecurrent=false}
C {gnd.sym} -2140 -440 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -2100 -660 0 0 {name=p1 sig_type=std_logic lab=vin
}
C {lab_wire.sym} -1900 -660 0 0 {name=p2 sig_type=std_logic lab=vin1}
C {lab_wire.sym} -1970 -970 0 0 {name=p3 sig_type=std_logic lab=vbat}
C {lab_wire.sym} -1520 -660 0 0 {name=p4 sig_type=std_logic lab=viom}
C {lab_wire.sym} -1260 -740 0 0 {name=p7 sig_type=std_logic lab=vout}
C {lab_wire.sym} -1680 -660 0 0 {name=p11 sig_type=std_logic lab=vin2}
C {lab_wire.sym} -1520 -700 0 0 {name=p12 sig_type=std_logic lab=vref}
C {capa.sym} -1600 -580 1 0 {name=C5
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {simulator_commands_shown.sym} -870 -900 0 0 {name=COMMANDS
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
plot v(vout)


.endc

"}
