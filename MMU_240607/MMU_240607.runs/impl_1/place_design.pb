
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xcvu13p2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xcvu13p2default:defaultZ17-349h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px� 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px� 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
2175.5822default:default2
0.0002default:defaultZ17-268h px� 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 3dd33a46
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.017 . Memory (MB): peak = 2175.582 ; gain = 0.0002default:defaulth px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2175.5822default:default2
0.0002default:defaultZ17-268h px� 
�

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2/
thirdFifo/relay0/and2_clock2default:default2
32default:default2h
T	thirdFifo/relay0/ff_state {FDPE}
	r_data2_2_reg[0] {FDCE}
	r_data2_2_reg[1] {FDCE}
2default:defaultZ30-568h px� 
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2*
delay1/delay1/outR_i_22default:default2
12default:default23
	delay1/delay1/outR_reg {FDCE}
2default:defaultZ30-568h px� 
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2-
thirdFifo/receiver_i_1__12default:default2
12default:default28
$	thirdFifo/receiver/ff_state {FDPE}
2default:defaultZ30-568h px� 
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2*
thirdFifo/thirdTap_i_12default:default2
12default:default2.
	thirdTap/ff_state {FDPE}
2default:defaultZ30-568h px� 
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2*
delay0/delay0/outR_i_22default:default2
12default:default23
	delay0/delay0/outR_reg {FDCE}
2default:defaultZ30-568h px� 
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2*
delay0/delay1/outR_i_22default:default2
12default:default23
	delay0/delay1/outR_reg {FDCE}
2default:defaultZ30-568h px� 
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2*
delay1/delay0/outR_i_22default:default2
12default:default23
	delay1/delay0/outR_reg {FDCE}
2default:defaultZ30-568h px� 
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2/
firstFifo/relay0/and2_clock2default:default2
32default:default2h
T	r_data0_2_reg[1] {FDCE}
	r_data0_2_reg[0] {FDCE}
	firstFifo/relay0/ff_state {FDPE}
2default:defaultZ30-568h px� 
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place20
firstFifo/outdelay0/outR_i_22default:default2
12default:default29
%	firstFifo/outdelay0/outR_reg {FDCE}
2default:defaultZ30-568h px� 
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2*
firstFifo/firstTap_i_12default:default2
12default:default2.
	firstTap/ff_state {FDPE}
2default:defaultZ30-568h px� 
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place21
secondFifo/outdelay0/outR_i_22default:default2
12default:default2:
&	secondFifo/outdelay0/outR_reg {FDCE}
2default:defaultZ30-568h px� 
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2*
firstFifo/receiver_i_12default:default2
12default:default28
$	firstFifo/receiver/ff_state {FDPE}
2default:defaultZ30-568h px� 
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2.
secondFifo/receiver_i_1__02default:default2
12default:default29
%	secondFifo/receiver/ff_state {FDPE}
2default:defaultZ30-568h px� 
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place20
secondFifo/relay0/and2_clock2default:default2
32default:default2i
U	r_data1_2_reg[1] {FDCE}
	r_data1_2_reg[0] {FDCE}
	secondFifo/relay0/ff_state {FDPE}
2default:defaultZ30-568h px� 
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
secondFifo/secondTap_i_12default:default2
12default:default2/
	secondTap/ff_state {FDPE}
2default:defaultZ30-568h px� 
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place20
thirdFifo/outdelay0/outR_i_22default:default2
12default:default29
%	thirdFifo/outdelay0/outR_reg {FDCE}
2default:defaultZ30-568h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: ac33b98f
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:07 ; elapsed = 00:00:05 . Memory (MB): peak = 2225.461 ; gain = 49.8792default:defaulth px� 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px� 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 19e1837f2
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:19 ; elapsed = 00:00:18 . Memory (MB): peak = 2554.809 ; gain = 379.2272default:defaulth px� 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px� 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 19e1837f2
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:19 ; elapsed = 00:00:18 . Memory (MB): peak = 2554.809 ; gain = 379.2272default:defaulth px� 
I
4Phase 1 Placer Initialization | Checksum: 19e1837f2
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:19 ; elapsed = 00:00:18 . Memory (MB): peak = 2554.809 ; gain = 379.2272default:defaulth px� 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px� 
C
.Phase 2.1 Floorplanning | Checksum: 1eea57acb
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:21 ; elapsed = 00:00:19 . Memory (MB): peak = 2684.961 ; gain = 509.3792default:defaulth px� 
x

Phase %s%s
101*constraints2
2.2 2default:default2)
Global Placement Core2default:defaultZ18-101h px� 
h
Eplace_design is not in timing mode. Skip physical synthesis in placer29*	placeflowZ46-29h px� 
K
6Phase 2.2 Global Placement Core | Checksum: 1519b6201
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:55 ; elapsed = 00:00:47 . Memory (MB): peak = 3675.809 ; gain = 1500.2272default:defaulth px� 
D
/Phase 2 Global Placement | Checksum: 1519b6201
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:55 ; elapsed = 00:00:47 . Memory (MB): peak = 3675.809 ; gain = 1500.2272default:defaulth px� 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px� 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px� 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 1519b6201
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:55 ; elapsed = 00:00:47 . Memory (MB): peak = 3675.809 ; gain = 1500.2272default:defaulth px� 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px� 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1519b6201
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:55 ; elapsed = 00:00:47 . Memory (MB): peak = 3675.809 ; gain = 1500.2272default:defaulth px� 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px� 
L
7Phase 3.3 Area Swap Optimization | Checksum: 15e9cede0
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:55 ; elapsed = 00:00:47 . Memory (MB): peak = 3675.809 ; gain = 1500.2272default:defaulth px� 
y

Phase %s%s
101*constraints2
3.4 2default:default2*
Small Shape Clustering2default:defaultZ18-101h px� 
L
7Phase 3.4 Small Shape Clustering | Checksum: 15ff69834
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:56 ; elapsed = 00:00:48 . Memory (MB): peak = 3675.809 ; gain = 1500.2272default:defaulth px� 


Phase %s%s
101*constraints2
3.5 2default:default20
Flow Legalize Slice Clusters2default:defaultZ18-101h px� 
R
=Phase 3.5 Flow Legalize Slice Clusters | Checksum: 10a9d7dd5
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:57 ; elapsed = 00:00:48 . Memory (MB): peak = 3675.809 ; gain = 1500.2272default:defaulth px� 
r

Phase %s%s
101*constraints2
3.6 2default:default2#
Slice Area Swap2default:defaultZ18-101h px� 
E
0Phase 3.6 Slice Area Swap | Checksum: 1031e7cfc
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:58 ; elapsed = 00:00:49 . Memory (MB): peak = 3675.809 ; gain = 1500.2272default:defaulth px� 
x

Phase %s%s
101*constraints2
3.7 2default:default2)
Commit Slice Clusters2default:defaultZ18-101h px� 
K
6Phase 3.7 Commit Slice Clusters | Checksum: 1f3c515a1
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:58 ; elapsed = 00:00:49 . Memory (MB): peak = 3675.809 ; gain = 1500.2272default:defaulth px� 
u

Phase %s%s
101*constraints2
3.8 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px� 
H
3Phase 3.8 Re-assign LUT pins | Checksum: 1f3c515a1
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:58 ; elapsed = 00:00:49 . Memory (MB): peak = 3675.809 ; gain = 1500.2272default:defaulth px� 
�

Phase %s%s
101*constraints2
3.9 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.9 Pipeline Register Optimization | Checksum: 1f3c515a1
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:58 ; elapsed = 00:00:49 . Memory (MB): peak = 3675.809 ; gain = 1500.2272default:defaulth px� 
D
/Phase 3 Detail Placement | Checksum: 1f3c515a1
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:58 ; elapsed = 00:00:49 . Memory (MB): peak = 3675.809 ; gain = 1500.2272default:defaulth px� 
�

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px� 
N
9Phase 4.1 Post Commit Optimization | Checksum: 1f3c515a1
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:58 ; elapsed = 00:00:49 . Memory (MB): peak = 3675.809 ; gain = 1500.2272default:defaulth px� 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px� 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 1f3c515a1
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:58 ; elapsed = 00:00:49 . Memory (MB): peak = 3675.809 ; gain = 1500.2272default:defaulth px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3675.8092default:default2
0.0002default:defaultZ17-268h px� 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px� 
F
1Phase 4.3 Placer Reporting | Checksum: 2ddfd68aa
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:01:40 ; elapsed = 00:01:31 . Memory (MB): peak = 3675.809 ; gain = 1500.2272default:defaulth px� 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3675.8092default:default2
0.0002default:defaultZ17-268h px� 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 2fd1d917b
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:01:40 ; elapsed = 00:01:31 . Memory (MB): peak = 3675.809 ; gain = 1500.2272default:defaulth px� 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 2fd1d917b
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:01:40 ; elapsed = 00:01:31 . Memory (MB): peak = 3675.809 ; gain = 1500.2272default:defaulth px� 
>
)Ending Placer Task | Checksum: 21d7e4d12
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:01:40 ; elapsed = 00:01:31 . Memory (MB): peak = 3675.809 ; gain = 1500.2272default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
422default:default2
182default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
place_design: 2default:default2
00:01:432default:default2
00:01:332default:default2
3675.8092default:default2
1500.2272default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3675.8092default:default2
0.0002default:defaultZ17-268h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:002default:default2 
00:00:00.1192default:default2
3675.8092default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2b
ND:/Xilinx/Verilog/MMU_240607/MMU_240607.runs/impl_1/cMutexMerge3_2b_placed.dcp2default:defaultZ17-1381h px� 
j
%s4*runtcl2N
:Executing : report_io -file cMutexMerge3_2b_io_placed.rpt
2default:defaulth px� 
�
kreport_io: Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.268 . Memory (MB): peak = 3675.809 ; gain = 0.000
*commonh px� 
�
%s4*runtcl2�
vExecuting : report_utilization -file cMutexMerge3_2b_utilization_placed.rpt -pb cMutexMerge3_2b_utilization_placed.pb
2default:defaulth px� 
�
%s4*runtcl2k
WExecuting : report_control_sets -verbose -file cMutexMerge3_2b_control_sets_placed.rpt
2default:defaulth px� 
�
ureport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.003 . Memory (MB): peak = 3675.809 ; gain = 0.000
*commonh px� 


End Record