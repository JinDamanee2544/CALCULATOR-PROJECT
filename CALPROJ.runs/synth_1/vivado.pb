
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental C:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/utils_1/imports/synth_1/main.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2f
RC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/utils_1/imports/synth_1/main.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
q
Command: %s
53*	vivadotcl2@
,synth_design -top main -part xc7a35tcpg236-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
198442default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1294.012 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
main2default:default2
 2default:default2\
FC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/new/main.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2 
clockDivComp2default:default2
 2default:default2d
NC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/new/clockDivComp.v2default:default2
232default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter TIMES bound to: 19 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
clockDiv2default:default2
 2default:default2n
XC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/imports/reuseComp/clockDiv.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clockDiv2default:default2
 2default:default2
02default:default2
12default:default2n
XC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/imports/reuseComp/clockDiv.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
clockDivComp2default:default2
 2default:default2
02default:default2
12default:default2d
NC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/new/clockDivComp.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

calculator2default:default2
 2default:default2b
LC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/new/calculator.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

calculator2default:default2
 2default:default2
02default:default2
12default:default2b
LC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/new/calculator.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
vga2default:default2
 2default:default2[
EC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/new/vga.v2default:default2
22default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
vga_sync2default:default2
 2default:default2`
JC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/new/vga_sync.v2default:default2
22default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vga_sync2default:default2
 2default:default2
02default:default2
12default:default2`
JC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/new/vga_sync.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
binaryToBCD2default:default2
 2default:default2c
MC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/new/binaryToBCD.v2default:default2
232default:default8@Z8-6157h px? 
?
,$readmem data file '%s' is read successfully3426*oasys2
BCD.mem2default:default2c
MC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/new/binaryToBCD.v2default:default2
352default:default8@Z8-3876h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
binaryToBCD2default:default2
 2default:default2
02default:default2
12default:default2c
MC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/new/binaryToBCD.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
UI2default:default2
 2default:default2Z
DC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/new/UI.v2default:default2
232default:default8@Z8-6157h px? 
?
,$readmem data file '%s' is read successfully3426*oasys2
font.mem2default:default2Z
DC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/new/UI.v2default:default2
462default:default8@Z8-3876h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
UI2default:default2
 2default:default2
02default:default2
12default:default2Z
DC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/new/UI.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vga2default:default2
 2default:default2
02default:default2
12default:default2[
EC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/new/vga.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

sevenSegUI2default:default2
 2default:default2b
LC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/new/sevenSegUI.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2 
quadSevenSeg2default:default2
 2default:default2r
\C:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/imports/reuseComp/quadSevenSeg.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2!
hexTo7segment2default:default2
 2default:default2s
]C:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/imports/reuseComp/hexTo7Segment.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
hexTo7segment2default:default2
 2default:default2
02default:default2
12default:default2s
]C:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/imports/reuseComp/hexTo7Segment.v2default:default2
232default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
72default:default2
seg2default:default2
82default:default2!
hexTo7segment2default:default2r
\C:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/imports/reuseComp/quadSevenSeg.v2default:default2
452default:default8@Z8-689h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
num02default:default2r
\C:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/imports/reuseComp/quadSevenSeg.v2default:default2
652default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
num12default:default2r
\C:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/imports/reuseComp/quadSevenSeg.v2default:default2
652default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
num22default:default2r
\C:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/imports/reuseComp/quadSevenSeg.v2default:default2
652default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
num32default:default2r
\C:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/imports/reuseComp/quadSevenSeg.v2default:default2
652default:default8@Z8-567h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
quadSevenSeg2default:default2
 2default:default2
02default:default2
12default:default2r
\C:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/imports/reuseComp/quadSevenSeg.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

sevenSegUI2default:default2
 2default:default2
02default:default2
12default:default2b
LC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/new/sevenSegUI.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
main2default:default2
 2default:default2
02default:default2
12default:default2\
FC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/sources_1/new/main.v2default:default2
232default:default8@Z8-6155h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[13]2default:default2
main2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[12]2default:default2
main2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[11]2default:default2
main2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[10]2default:default2
main2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[9]2default:default2
main2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[8]2default:default2
main2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
BTNC2default:default2
main2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
BTNL2default:default2
main2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
BTNU2default:default2
main2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
BTNR2default:default2
main2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
BTND2default:default2
main2default:defaultZ8-7129h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 1294.012 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 1294.012 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 1294.012 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0212default:default2
1294.0122default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2_
IC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/constrs_1/new/const.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2_
IC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/constrs_1/new/const.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2]
IC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.srcs/constrs_1/new/const.xdc2default:default2*
.Xil/main_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1348.4692default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0312default:default2
1348.4692default:default2
0.0002default:defaultZ17-268h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 1348.469 ; gain = 54.457
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 1348.469 ; gain = 54.457
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 1348.469 ; gain = 54.457
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1348.469 ; gain = 54.457
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   16 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   11 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit       Adders := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 21    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   16 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   12 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 13    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[13]2default:default2
main2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[12]2default:default2
main2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[11]2default:default2
main2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[10]2default:default2
main2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[9]2default:default2
main2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[8]2default:default2
main2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
BTNC2default:default2
main2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
BTNL2default:default2
main2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
BTNU2default:default2
main2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
BTNR2default:default2
main2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
BTND2default:default2
main2default:defaultZ8-7129h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:03:44 ; elapsed = 00:03:50 . Memory (MB): peak = 1577.832 ; gain = 283.820
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
M
%s*synth25
!
ROM: Preliminary Mapping Report
2default:defaulth px? 
i
%s*synth2Q
=+------------+------------+---------------+----------------+
2default:defaulth px? 
j
%s*synth2R
>|Module Name | RTL Object | Depth x Width | Implemented As | 
2default:defaulth px? 
i
%s*synth2Q
=+------------+------------+---------------+----------------+
2default:defaulth px? 
j
%s*synth2R
>|binaryToBCD | bcdMEM     | 16384x16      | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|UI          | romFont    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|UI          | romFont    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|UI          | romFont    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|UI          | romFont    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|UI          | romFont    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|UI          | romFont    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|UI          | romFont    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|UI          | romFont    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|UI          | romFont    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|UI          | romFont    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|UI          | romFont    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|UI          | romFont    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|UI          | romFont    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|UI          | romFont    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|UI          | romFont    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|UI          | romFont    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|UI          | romFont    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|UI          | romFont    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|UI          | romFont    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|UI          | romFont    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|binaryToBCD | p_0_out    | 16384x16      | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|main        | p_0_out    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|main        | p_0_out    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|main        | p_0_out    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|main        | p_0_out    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|main        | p_0_out    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|main        | p_0_out    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|main        | p_0_out    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|main        | p_0_out    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|main        | p_0_out    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|main        | p_0_out    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|main        | p_0_out    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|main        | p_0_out    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|main        | p_0_out    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|main        | p_0_out    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|main        | p_0_out    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|main        | p_0_out    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|main        | p_0_out    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|main        | p_0_out    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|main        | p_0_out    | 2048x45       | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>+------------+------------+---------------+----------------+

2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:03:51 ; elapsed = 00:03:56 . Memory (MB): peak = 1577.832 ; gain = 283.820
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:03:53 ; elapsed = 00:03:58 . Memory (MB): peak = 1577.832 ; gain = 283.820
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:04:01 ; elapsed = 00:04:06 . Memory (MB): peak = 1577.832 ; gain = 283.820
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:04:07 ; elapsed = 00:04:13 . Memory (MB): peak = 1577.832 ; gain = 283.820
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:04:07 ; elapsed = 00:04:13 . Memory (MB): peak = 1577.832 ; gain = 283.820
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:04:09 ; elapsed = 00:04:14 . Memory (MB): peak = 1577.832 ; gain = 283.820
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:04:09 ; elapsed = 00:04:15 . Memory (MB): peak = 1577.832 ; gain = 283.820
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:04:13 ; elapsed = 00:04:19 . Memory (MB): peak = 1577.832 ; gain = 283.820
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:04:13 ; elapsed = 00:04:19 . Memory (MB): peak = 1577.832 ; gain = 283.820
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |    70|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |    78|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |   287|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |   554|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |   999|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |  3033|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   | 13487|
2default:defaulth px? 
D
%s*synth2,
|9     |MUXF7  |  1889|
2default:defaulth px? 
D
%s*synth2,
|10    |MUXF8  |   360|
2default:defaulth px? 
D
%s*synth2,
|11    |FDRE   |   115|
2default:defaulth px? 
D
%s*synth2,
|12    |IBUF   |    11|
2default:defaulth px? 
D
%s*synth2,
|13    |OBUF   |    26|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:04:13 ; elapsed = 00:04:19 . Memory (MB): peak = 1577.832 ; gain = 283.820
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 12 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:04:02 ; elapsed = 00:04:16 . Memory (MB): peak = 1577.832 ; gain = 229.363
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:04:13 ; elapsed = 00:04:19 . Memory (MB): peak = 1577.832 ; gain = 283.820
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.2832default:default2
1577.8322default:default2
0.0002default:defaultZ17-268h px? 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
23192default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
?
?Netlist '%s' is not ideal for floorplanning, since the cellview '%s' contains a large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
310*netlist2
main2default:default2
vga_sync2default:defaultZ29-101h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0072default:default2
1577.8322default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
f
$Synth Design complete, checksum: %s
562*	vivadotcl2
dc7c4c12default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
452default:default2
292default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:04:212default:default2
00:04:272default:default2
1577.8322default:default2
283.8202default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2V
BC:/Users/USER/Desktop/HWPROJ/CALPROJ/CALPROJ.runs/synth_1/main.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2r
^Executing : report_utilization -file main_utilization_synth.rpt -pb main_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Dec 11 01:34:57 20222default:defaultZ17-206h px? 


End Record