v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -1160 -980 -1160 -970 {lab=vref}
N -1100 -980 -1100 -970 {lab=vref}
N -1160 -990 -1160 -980 {lab=vref}
N -1160 -980 -1100 -980 {lab=vref}
N -1160 -1100 -1160 -1050 {lab=vbat}
N -1280 -1100 -1160 -1100 {lab=vbat}
N -1280 -1100 -1280 -1010 {lab=vbat}
N -1280 -950 -1280 -890 {lab=GND}
N -1280 -890 -1160 -890 {lab=GND}
N -1160 -910 -1160 -890 {lab=GND}
N -1160 -890 -1100 -890 {lab=GND}
N -1100 -910 -1100 -890 {lab=GND}
N -1160 -890 -1160 -880 {lab=GND}
N -710 -870 -710 -840 {lab=vout}
N -640 -870 -480 -870 {lab=vout}
N -480 -870 -480 -840 {lab=vout}
N -710 -780 -710 -710 {lab=GND}
N -480 -780 -480 -730 {lab=GND}
N -790 -1030 -760 -1030 {lab=viom}
N -790 -1030 -790 -940 {lab=viom}
N -790 -940 -750 -940 {lab=viom}
N -700 -1030 -640 -1030 {lab=vout}
N -640 -1030 -640 -940 {lab=vout}
N -690 -940 -640 -940 {lab=vout}
N -640 -940 -640 -870 {lab=vout}
N -710 -870 -640 -870 {lab=vout}
N -1100 -980 -940 -980 {lab=vref}
N -940 -980 -940 -830 {lab=vref}
N -940 -830 -750 -830 {lab=vref}
N -1070 -790 -910 -790 {lab=vin2}
N -790 -790 -750 -790 {lab=viom}
N -1270 -790 -1130 -790 {lab=vin1}
N -1420 -790 -1420 -670 {lab=vin}
N -1420 -790 -1330 -790 {lab=vin}
N -1420 -610 -1420 -570 {lab=GND}
N -790 -940 -790 -790 {lab=viom}
N -850 -790 -790 -790 {lab=viom}
C {res.sym} -1160 -940 2 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} -1160 -1020 2 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {capa.sym} -1100 -940 0 0 {name=C1
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -1280 -980 0 0 {name=V1 value="2.5 AC=1" savecurrent=false}
C {gnd.sym} -1160 -880 0 0 {name=l1 lab=GND}
C {res.sym} -720 -940 1 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {res.sym} -880 -790 1 0 {name=R4
value=4.7k
footprint=1206
device=resistor
m=1}
C {res.sym} -1300 -790 1 0 {name=R5
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} -730 -1030 1 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vcvs.sym} -710 -810 0 0 {name=E1 value=10e5}
C {capa.sym} -480 -810 2 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -480 -730 0 0 {name=l2 lab=GND}
C {gnd.sym} -710 -720 0 0 {name=l3 lab=GND}
C {capa.sym} -1100 -790 1 0 {name=C4
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -1420 -640 0 0 {name=Vmic value="SIN(0 126u 1k)" savecurrent=false}
C {gnd.sym} -1420 -570 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -1380 -790 0 0 {name=p1 sig_type=std_logic lab=vin
}
C {lab_wire.sym} -1180 -790 0 0 {name=p2 sig_type=std_logic lab=vin1}
C {lab_wire.sym} -1250 -1100 0 0 {name=p3 sig_type=std_logic lab=vbat}
C {lab_wire.sym} -800 -790 0 0 {name=p4 sig_type=std_logic lab=viom}
C {lab_wire.sym} -540 -870 0 0 {name=p7 sig_type=std_logic lab=vout}
C {lab_wire.sym} -960 -790 0 0 {name=p11 sig_type=std_logic lab=vin2}
C {lab_wire.sym} -800 -830 0 0 {name=p12 sig_type=std_logic lab=vref}
C {simulator_commands_shown.sym} -110 -1000 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="

.control

save all

tran 1u 10m

plot v(vin)
plot v(vout)

meas tran vmax_out MAX v(vout)
meas tran vmin_out MIN v(vout)

meas tran vmax_in MAX v(vin)
meas tran vmin_in MIN v(vin)

let vinpk = (vmax_in - vmin_in)/2
let voutpk =(vmax_out-vmin_out)/2

let gain=voutpk/vinpk

print vinpk
print voutpk
print gain

.endc

"}
