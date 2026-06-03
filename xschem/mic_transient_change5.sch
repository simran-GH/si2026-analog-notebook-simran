v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -1780 -800 -1780 -790 {lab=vref}
N -1720 -800 -1720 -790 {lab=vref}
N -1780 -810 -1780 -800 {lab=vref}
N -1780 -800 -1720 -800 {lab=vref}
N -1780 -920 -1780 -870 {lab=vbat}
N -1900 -920 -1780 -920 {lab=vbat}
N -1900 -920 -1900 -830 {lab=vbat}
N -1900 -770 -1900 -710 {lab=GND}
N -1900 -710 -1780 -710 {lab=GND}
N -1780 -730 -1780 -710 {lab=GND}
N -1780 -710 -1720 -710 {lab=GND}
N -1720 -730 -1720 -710 {lab=GND}
N -1780 -710 -1780 -700 {lab=GND}
N -1330 -690 -1330 -660 {lab=vout}
N -1260 -690 -1100 -690 {lab=vout}
N -1100 -690 -1100 -660 {lab=vout}
N -1330 -600 -1330 -530 {lab=GND}
N -1100 -600 -1100 -550 {lab=GND}
N -1410 -850 -1380 -850 {lab=viom}
N -1410 -850 -1410 -760 {lab=viom}
N -1410 -760 -1370 -760 {lab=viom}
N -1320 -850 -1260 -850 {lab=vout}
N -1260 -850 -1260 -760 {lab=vout}
N -1310 -760 -1260 -760 {lab=vout}
N -1260 -760 -1260 -690 {lab=vout}
N -1330 -690 -1260 -690 {lab=vout}
N -1720 -800 -1560 -800 {lab=vref}
N -1560 -800 -1560 -650 {lab=vref}
N -1560 -650 -1370 -650 {lab=vref}
N -1690 -610 -1530 -610 {lab=vin2}
N -1410 -610 -1370 -610 {lab=viom}
N -1890 -610 -1750 -610 {lab=vin1}
N -2040 -610 -2040 -490 {lab=vin}
N -2040 -610 -1950 -610 {lab=vin}
N -2040 -430 -2040 -390 {lab=GND}
N -1410 -760 -1410 -610 {lab=viom}
N -1470 -610 -1410 -610 {lab=viom}
N -1470 -610 -1470 -530 {lab=viom}
N -1530 -610 -1530 -530 {lab=vin2}
C {res.sym} -1780 -760 2 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} -1780 -840 2 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {capa.sym} -1720 -760 0 0 {name=C1
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -1900 -800 0 0 {name=V1 value=2.5 savecurrent=false}
C {gnd.sym} -1780 -700 0 0 {name=l1 lab=GND}
C {res.sym} -1340 -760 1 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {res.sym} -1500 -610 1 0 {name=R4
value=4.7k
footprint=1206
device=resistor
m=1}
C {res.sym} -1920 -610 1 0 {name=R5
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} -1350 -850 1 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vcvs.sym} -1330 -630 0 0 {name=E1 value=10e5}
C {capa.sym} -1100 -630 2 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -1100 -550 0 0 {name=l2 lab=GND}
C {gnd.sym} -1330 -540 0 0 {name=l3 lab=GND}
C {capa.sym} -1720 -610 1 0 {name=C4
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -2040 -460 0 0 {name=Vmic value="0 PULSE(0 2.5 0 1n 1n 10n 20n)" savecurrent=false}
C {gnd.sym} -2040 -390 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -2000 -610 0 0 {name=p1 sig_type=std_logic lab=vin
}
C {lab_wire.sym} -1800 -610 0 0 {name=p2 sig_type=std_logic lab=vin1}
C {lab_wire.sym} -1870 -920 0 0 {name=p3 sig_type=std_logic lab=vbat}
C {lab_wire.sym} -1420 -610 0 0 {name=p4 sig_type=std_logic lab=viom}
C {lab_wire.sym} -1160 -690 0 0 {name=p7 sig_type=std_logic lab=vout}
C {lab_wire.sym} -1580 -610 0 0 {name=p11 sig_type=std_logic lab=vin2}
C {lab_wire.sym} -1420 -650 0 0 {name=p12 sig_type=std_logic lab=vref}
C {simulator_commands_shown.sym} -730 -820 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.param temp=27
.control
save all
op

tran 0.1n 400n
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
C {capa.sym} -1500 -530 1 0 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
