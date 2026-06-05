v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 -40 100 10 {lab=vsb}
N -180 -40 -180 10 {lab=vgs}
N -180 70 -180 80 {lab=#net1}
N -80 -10 -80 10 {lab=#net1}
N -80 10 -40 10 {lab=#net1}
N -80 -90 -80 -70 {lab=vgs}
N -180 -90 -80 -90 {lab=vgs}
N -180 -90 -180 -40 {lab=vgs}
N -80 -40 100 -40 {lab=vsb}
N -140 -40 -120 -40 {lab=vgs}
N -140 -90 -140 -40 {lab=vgs}
N 100 70 100 80 {lab=#net1}
N -40 10 -40 80 {lab=#net1}
N -40 80 100 80 {lab=#net1}
N -180 80 -40 80 {lab=#net1}
C {gnd.sym} -40 80 0 0 {name=l1 lab=GND}
C {vsource.sym} -180 40 0 0 {name=Vgs value=5 savecurrent=false}
C {vsource.sym} 100 40 0 0 {name=Vsb value=0 savecurrent=false}
C {devices/code.sym} -470 -170 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} 220 -130 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
*ngspice commands
.dc vgs 0 5 0.1
.control
run
save all
plot v(vgs)
plot v(vsb)
plot i(vgs)
.endc
"}
C {sky130_fd_pr/nfet_01v8.sym} -100 -40 0 0 {name=M2
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {lab_wire.sym} -160 -90 0 0 {name=p1 sig_type=std_logic lab=vgs}
C {lab_wire.sym} 40 -40 0 0 {name=p2 sig_type=std_logic lab=vsb}
