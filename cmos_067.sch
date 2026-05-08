v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -490 -500 -470 -500 {lab=in}
N -490 -500 -490 -410 {lab=in}
N -490 -410 -470 -410 {lab=in}
N -470 -410 -460 -410 {lab=in}
N -430 -470 -430 -440 {lab=out}
N -550 -460 -550 -420 {lab=in}
N -550 -460 -490 -460 {lab=in}
N -430 -500 -350 -500 {lab=#net1}
N -430 -570 -430 -530 {lab=#net1}
N -610 -570 -430 -570 {lab=#net1}
N -430 -380 -430 -330 {lab=0}
N -610 -330 -430 -330 {lab=0}
N -550 -360 -550 -330 {lab=0}
N -430 -410 -350 -410 {lab=0}
N -350 -410 -350 -340 {lab=0}
N -350 -340 -350 -330 {lab=0}
N -430 -330 -350 -330 {lab=0}
N -430 -450 -320 -450 {lab=out}
N -580 -330 -580 -270 {lab=0}
N -350 -570 -350 -500 {lab=#net1}
N -430 -570 -350 -570 {lab=#net1}
N -610 -440 -610 -430 {lab=#net1}
N -610 -570 -610 -440 {lab=#net1}
N -610 -370 -610 -330 {lab=0}
N -640 -430 -610 -430 {lab=#net1}
N -640 -370 -610 -370 {lab=0}
C {sky130_fd_pr/nfet_01v8.sym} -450 -410 0 0 {name=M3
W=7
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -450 -500 0 0 {name=M1
W=21
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {vsource.sym} -640 -400 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -550 -390 0 0 {name=V2 value="pulse(0 1.8 0 100p 100p 5n 10n)" savecurrent=false}
C {lab_pin.sym} -550 -460 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_pin.sym} -320 -450 2 0 {name=p2 sig_type=std_logic lab=out}
C {gnd.sym} -580 -270 0 0 {name=l1 lab=0}
C {code.sym} -460 -260 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {code_shown.sym} -260 -390 0 0 {name=DSRT
only_toplevel=false
value="
.tran 10p 40n
.save all
"}
