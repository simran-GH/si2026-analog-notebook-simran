v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -1820 -780 -1820 -770 {lab=vref}
N -1760 -780 -1760 -770 {lab=vref}
N -1820 -790 -1820 -780 {lab=vref}
N -1820 -780 -1760 -780 {lab=vref}
N -1820 -900 -1820 -850 {lab=vbat}
N -1940 -900 -1820 -900 {lab=vbat}
N -1940 -900 -1940 -810 {lab=vbat}
N -1940 -750 -1940 -690 {lab=GND}
N -1940 -690 -1820 -690 {lab=GND}
N -1820 -710 -1820 -690 {lab=GND}
N -1820 -690 -1760 -690 {lab=GND}
N -1760 -710 -1760 -690 {lab=GND}
N -1820 -690 -1820 -680 {lab=GND}
N -1370 -670 -1370 -640 {lab=vout}
N -1300 -670 -1140 -670 {lab=vout}
N -1140 -670 -1140 -640 {lab=vout}
N -1370 -580 -1370 -510 {lab=GND}
N -1140 -580 -1140 -530 {lab=GND}
N -1450 -830 -1420 -830 {lab=viom}
N -1450 -830 -1450 -740 {lab=viom}
N -1450 -740 -1410 -740 {lab=viom}
N -1360 -830 -1300 -830 {lab=vout}
N -1300 -830 -1300 -740 {lab=vout}
N -1350 -740 -1300 -740 {lab=vout}
N -1300 -740 -1300 -670 {lab=vout}
N -1370 -670 -1300 -670 {lab=vout}
N -1760 -780 -1600 -780 {lab=vref}
N -1600 -780 -1600 -630 {lab=vref}
N -1600 -630 -1410 -630 {lab=vref}
N -1730 -590 -1570 -590 {lab=vin2}
N -1450 -590 -1410 -590 {lab=viom}
N -1930 -590 -1790 -590 {lab=vin1}
N -2080 -590 -2080 -470 {lab=vin}
N -2080 -590 -1990 -590 {lab=vin}
N -2080 -410 -2080 -370 {lab=GND}
N -1450 -740 -1450 -590 {lab=viom}
N -1510 -590 -1450 -590 {lab=viom}
N -1510 -590 -1510 -510 {lab=viom}
N -1570 -590 -1570 -510 {lab=vin2}
C {res.sym} -1820 -740 2 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} -1820 -820 2 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {capa.sym} -1760 -740 0 0 {name=C1
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -1940 -780 0 0 {name=V1 value=2.5 savecurrent=false}
C {gnd.sym} -1820 -680 0 0 {name=l1 lab=GND}
C {res.sym} -1380 -740 1 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {res.sym} -1540 -590 1 0 {name=R4
value=4.7k
footprint=1206
device=resistor
m=1}
C {res.sym} -1960 -590 1 0 {name=R5
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} -1390 -830 1 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vcvs.sym} -1370 -610 0 0 {name=E1 value=10e5}
C {capa.sym} -1140 -610 2 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -1140 -530 0 0 {name=l2 lab=GND}
C {gnd.sym} -1370 -520 0 0 {name=l3 lab=GND}
C {capa.sym} -1760 -590 1 0 {name=C4
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -2080 -440 0 0 {name=Vmic value="0 AC=1" savecurrent=false}
C {gnd.sym} -2080 -370 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -2040 -590 0 0 {name=p1 sig_type=std_logic lab=vin
}
C {lab_wire.sym} -1840 -590 0 0 {name=p2 sig_type=std_logic lab=vin1}
C {lab_wire.sym} -1910 -900 0 0 {name=p3 sig_type=std_logic lab=vbat}
C {lab_wire.sym} -1460 -590 0 0 {name=p4 sig_type=std_logic lab=viom}
C {lab_wire.sym} -1200 -670 0 0 {name=p7 sig_type=std_logic lab=vout}
C {lab_wire.sym} -1620 -590 0 0 {name=p11 sig_type=std_logic lab=vin2}
C {lab_wire.sym} -1460 -630 0 0 {name=p12 sig_type=std_logic lab=vref}
C {simulator_commands_shown.sym} -770 -800 0 0 {name=COMMANDS
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
plot phase(vout)

write
.endc

"}
C {capa.sym} -1540 -510 1 0 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
