v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -1840 -820 -1840 -810 {lab=vref}
N -1780 -820 -1780 -810 {lab=vref}
N -1840 -830 -1840 -820 {lab=vref}
N -1840 -820 -1780 -820 {lab=vref}
N -1840 -940 -1840 -890 {lab=vbat}
N -1960 -940 -1840 -940 {lab=vbat}
N -1960 -940 -1960 -850 {lab=vbat}
N -1960 -790 -1960 -730 {lab=GND}
N -1960 -730 -1840 -730 {lab=GND}
N -1840 -750 -1840 -730 {lab=GND}
N -1840 -730 -1780 -730 {lab=GND}
N -1780 -750 -1780 -730 {lab=GND}
N -1840 -730 -1840 -720 {lab=GND}
N -1390 -710 -1390 -680 {lab=vx}
N -1160 -710 -1160 -680 {lab=#net1}
N -1390 -620 -1390 -550 {lab=GND}
N -1160 -620 -1160 -570 {lab=GND}
N -1470 -870 -1440 -870 {lab=viom}
N -1470 -870 -1470 -780 {lab=viom}
N -1470 -780 -1430 -780 {lab=viom}
N -1780 -820 -1620 -820 {lab=vref}
N -1620 -820 -1620 -670 {lab=vref}
N -1620 -670 -1430 -670 {lab=vref}
N -1750 -630 -1590 -630 {lab=vin2}
N -1470 -630 -1430 -630 {lab=viom}
N -1950 -630 -1810 -630 {lab=vin1}
N -2100 -630 -2100 -510 {lab=vin}
N -2100 -630 -2010 -630 {lab=vin}
N -2100 -450 -2100 -410 {lab=GND}
N -1470 -780 -1470 -630 {lab=viom}
N -1530 -630 -1470 -630 {lab=viom}
N -1390 -710 -1300 -710 {lab=vx}
N -1240 -710 -1160 -710 {lab=#net1}
N -1160 -710 -1090 -710 {lab=#net1}
N -1090 -670 -1090 -540 {lab=GND}
N -1050 -660 -1050 -530 {lab=GND}
N -940 -720 -800 -720 {lab=vout}
N -1380 -870 -940 -870 {lab=vout}
N -940 -780 -940 -720 {lab=vout}
N -1050 -720 -940 -720 {lab=vout}
N -1370 -780 -940 -780 {lab=vout}
N -940 -870 -940 -780 {lab=vout}
N -800 -720 -800 -670 {lab=vout}
N -800 -610 -800 -570 {lab=GND}
C {res.sym} -1840 -780 2 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} -1840 -860 2 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {capa.sym} -1780 -780 0 0 {name=C1
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -1960 -820 0 0 {name=V1 value=2.5 savecurrent=false}
C {gnd.sym} -1840 -720 0 0 {name=l1 lab=GND}
C {res.sym} -1400 -780 1 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {res.sym} -1560 -630 1 0 {name=R4
value=4.7k
footprint=1206
device=resistor
m=1}
C {res.sym} -1980 -630 1 0 {name=R5
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} -1410 -870 1 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vcvs.sym} -1390 -650 0 0 {name=E1 value=10e5}
C {capa.sym} -1160 -650 2 0 {name=C3
m=1
value=159u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -1160 -570 0 0 {name=l2 lab=GND}
C {gnd.sym} -1390 -560 0 0 {name=l3 lab=GND}
C {capa.sym} -1780 -630 1 0 {name=C4
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -2100 -480 0 0 {name=Vmic value="SIN(0 126u 1k)" savecurrent=false}
C {gnd.sym} -2100 -410 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -2060 -630 0 0 {name=p1 sig_type=std_logic lab=vin
}
C {lab_wire.sym} -1860 -630 0 0 {name=p2 sig_type=std_logic lab=vin1}
C {lab_wire.sym} -1930 -940 0 0 {name=p3 sig_type=std_logic lab=vbat}
C {lab_wire.sym} -1480 -630 0 0 {name=p4 sig_type=std_logic lab=viom}
C {lab_wire.sym} -800 -720 0 0 {name=p7 sig_type=std_logic lab=vout}
C {lab_wire.sym} -1640 -630 0 0 {name=p11 sig_type=std_logic lab=vin2}
C {lab_wire.sym} -1480 -670 0 0 {name=p12 sig_type=std_logic lab=vref}
C {simulator_commands_shown.sym} -590 -970 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="

.control
save all
tran 1u 100m
plot v(vin)
plot v(vout)
plot voutabs


meas tran vmax_out MAX v(vout)
meas tran vmin_out min v(vout)

meas tran vmax_in MAX v(vin)
meas tran vmin_in min v(vin)


let vinpk = (vmax_in-vmin_in)/2
let voutpk = (vmax_out-vmin_out)/2

let gain = voutpk/vinpk

print vinpk
print voutpk
print gain

.endc

"}
C {vcvs.sym} -1050 -690 0 0 {name=E2 value=1}
C {capa.sym} -800 -640 2 1 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {res.sym} -1270 -710 1 0 {name=R6
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} -1050 -530 0 0 {name=l5 lab=GND}
C {gnd.sym} -1090 -540 0 0 {name=l6 lab=GND}
C {gnd.sym} -800 -570 0 0 {name=l7 lab=GND}
C {lab_wire.sym} -1350 -710 0 0 {name=p5 sig_type=std_logic lab=vx}
