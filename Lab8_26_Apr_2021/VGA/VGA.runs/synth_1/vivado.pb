
~
Command: %s
53*	vivadotcl2M
9synth_design -top vga_initials_top -part xc7a100tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 862.961 ; gain = 234.270
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2$
vga_initials_top2default:default2?
~C:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/vga_initials_top.vhd2default:default2
662default:default8@Z8-638h px? 
d
%s
*synth2L
8	Parameter strip_hpixels bound to: 800 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter strip_vlines bound to: 512 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter strip_hbp bound to: 144 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter strip_hfp bound to: 784 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter strip_vbp bound to: 31 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter strip_vfp bound to: 511 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter top_width bound to: 8 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter top_depth bound to: 4 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter top_clk_bits bound to: 218 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	clk_wiz_02default:default2?
~c:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.v2default:default2
702default:default2
CLK_GEN_PLL2default:default2
	clk_wiz_02default:default2?
~C:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/vga_initials_top.vhd2default:default2
1592default:default8@Z8-3491h px? 
?
synthesizing module '%s'%s4497*oasys2
	clk_wiz_02default:default2
 2default:default2?
~c:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.v2default:default2
702default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2%
clk_wiz_0_clk_wiz2default:default2
 2default:default2?
?c:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_clk_wiz.v2default:default2
682default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
IBUF2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2019.2/scripts/rt/data/unisim_comp.v2default:default2
329372default:default8@Z8-6157h px? 
g
%s
*synth2O
;	Parameter CAPACITANCE bound to: DONT_CARE - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter IBUF_DELAY_VALUE bound to: 0 - type: string 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter IBUF_LOW_PWR bound to: TRUE - type: string 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter IFD_DELAY_VALUE bound to: AUTO - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter IOSTANDARD bound to: DEFAULT - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IBUF2default:default2
 2default:default2
12default:default2
12default:default2K
5C:/Xilinx/Vivado/2019.2/scripts/rt/data/unisim_comp.v2default:default2
329372default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	PLLE2_ADV2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2019.2/scripts/rt/data/unisim_comp.v2default:default2
614162default:default8@Z8-6157h px? 
e
%s
*synth2M
9	Parameter BANDWIDTH bound to: OPTIMIZED - type: string 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CLKFBOUT_MULT bound to: 64 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter CLKFBOUT_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter CLKIN1_PERIOD bound to: 10.000000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKIN2_PERIOD bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter CLKOUT0_DIVIDE bound to: 51 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT0_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT0_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CLKOUT1_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT1_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT1_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CLKOUT2_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT2_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT2_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CLKOUT3_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT3_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT3_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CLKOUT4_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT4_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT4_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CLKOUT5_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT5_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT5_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter COMPENSATION bound to: ZHOLD - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter DIVCLK_DIVIDE bound to: 5 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter IS_CLKINSEL_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter IS_PWRDWN_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter IS_RST_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter REF_JITTER1 bound to: 0.010000 - type: double 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter REF_JITTER2 bound to: 0.010000 - type: double 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter STARTUP_WAIT bound to: FALSE - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	PLLE2_ADV2default:default2
 2default:default2
22default:default2
12default:default2K
5C:/Xilinx/Vivado/2019.2/scripts/rt/data/unisim_comp.v2default:default2
614162default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
BUFG2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2019.2/scripts/rt/data/unisim_comp.v2default:default2
10752default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFG2default:default2
 2default:default2
32default:default2
12default:default2K
5C:/Xilinx/Vivado/2019.2/scripts/rt/data/unisim_comp.v2default:default2
10752default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
clk_wiz_0_clk_wiz2default:default2
 2default:default2
42default:default2
12default:default2?
?c:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_clk_wiz.v2default:default2
682default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	clk_wiz_02default:default2
 2default:default2
52default:default2
12default:default2?
~c:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.v2default:default2
702default:default8@Z8-6155h px? 
^
%s
*synth2F
2	Parameter hpixels bound to: 800 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter vlines bound to: 512 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter hbp bound to: 144 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter hfp bound to: 784 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter vbp bound to: 31 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter vfp bound to: 511 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
VGA_VHDL2default:default2?
vC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/VGA_VHDL.vhd2default:default2
382default:default2

VGA_DRIVER2default:default2
VGA_VHDL2default:default2?
~C:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/vga_initials_top.vhd2default:default2
1692default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
VGA_VHDL2default:default2?
vC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/VGA_VHDL.vhd2default:default2
752default:default8@Z8-638h px? 
[
%s
*synth2C
/	Parameter H_SP bound to: 128 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter H_BP bound to: 16 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter H_FP bound to: 16 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter H_Video bound to: 640 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter hpixels bound to: 800 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter hbp bound to: 144 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter hfp bound to: 784 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter V_SP bound to: 2 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter V_BP bound to: 29 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter V_FP bound to: 10 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter V_Video bound to: 480 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter vlines bound to: 512 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter vbp bound to: 31 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter vfp bound to: 511 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
VGA_VHDL2default:default2
62default:default2
12default:default2?
vC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/VGA_VHDL.vhd2default:default2
752default:default8@Z8-256h px? 
Z
%s
*synth2B
.	Parameter hbp bound to: 144 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter vbp bound to: 31 - type: integer 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter W bound to: 32 - type: integer 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter H bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
vga_initials2default:default2?
zC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/VGA_INITIALS.vhd2default:default2
362default:default2
INIT2default:default2 
vga_initials2default:default2?
~C:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/vga_initials_top.vhd2default:default2
1912default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2 
vga_initials2default:default2?
zC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/VGA_INITIALS.vhd2default:default2
562default:default8@Z8-638h px? 
Z
%s
*synth2B
.	Parameter hbp bound to: 144 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter vbp bound to: 31 - type: integer 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter W bound to: 32 - type: integer 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter H bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
default block is never used226*oasys2?
zC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/VGA_INITIALS.vhd2default:default2
1162default:default8@Z8-226h px? 
?
default block is never used226*oasys2?
zC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/VGA_INITIALS.vhd2default:default2
1242default:default8@Z8-226h px? 
?
default block is never used226*oasys2?
zC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/VGA_INITIALS.vhd2default:default2
1322default:default8@Z8-226h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
vga_initials2default:default2
72default:default2
12default:default2?
zC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/VGA_INITIALS.vhd2default:default2
562default:default8@Z8-256h px? 
e
%s
*synth2M
9	Parameter g_CLKS_PER_BIT bound to: 218 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter width bound to: 8 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter depth bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
UART_RX2default:default2?
uC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/UART_RX.vhd2default:default2
332default:default2
GEN_UART2default:default2
UART_RX2default:default2?
~C:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/vga_initials_top.vhd2default:default2
2142default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
UART_RX2default:default2?
uC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/UART_RX.vhd2default:default2
552default:default8@Z8-638h px? 
e
%s
*synth2M
9	Parameter g_CLKS_PER_BIT bound to: 218 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter width bound to: 8 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter depth bound to: 4 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter g_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter g_DEPTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2-
module_fifo_regs_no_flags2default:default2?
rC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/FIFO.vhd2default:default2
262default:default2

GEN_FIFO_A2default:default2-
module_fifo_regs_no_flags2default:default2?
uC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/UART_RX.vhd2default:default2
1272default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2-
module_fifo_regs_no_flags2default:default2?
rC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/FIFO.vhd2default:default2
472default:default8@Z8-638h px? 
\
%s
*synth2D
0	Parameter g_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter g_DEPTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2-
module_fifo_regs_no_flags2default:default2
82default:default2
12default:default2?
rC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/FIFO.vhd2default:default2
472default:default8@Z8-256h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
o_RX_DV2default:default2?
uC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/UART_RX.vhd2default:default2
1412default:default8@Z8-614h px? 
\
%s
*synth2D
0	Parameter g_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter g_DEPTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2-
module_fifo_regs_no_flags2default:default2?
rC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/FIFO.vhd2default:default2
262default:default2

GEN_FIFO_B2default:default2-
module_fifo_regs_no_flags2default:default2?
uC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/UART_RX.vhd2default:default2
1512default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
UART_RX2default:default2
92default:default2
12default:default2?
uC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/UART_RX.vhd2default:default2
552default:default8@Z8-256h px? 
[
%s
*synth2C
/	Parameter DEPTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter DATA_SIZE bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
PROM_IMG2default:default2?
vC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/PROM_IMG.vhd2default:default2
392default:default2
PROM2default:default2
PROM_IMG2default:default2?
~C:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/vga_initials_top.vhd2default:default2
1222default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
PROM_IMG2default:default2?
vC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/PROM_IMG.vhd2default:default2
482default:default8@Z8-638h px? 
[
%s
*synth2C
/	Parameter DEPTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter DATA_SIZE bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
PROM_IMG2default:default2
102default:default2
12default:default2?
vC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/PROM_IMG.vhd2default:default2
482default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2$
vga_initials_top2default:default2
112default:default2
12default:default2?
~C:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/vga_initials_top.vhd2default:default2
662default:default8@Z8-256h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 937.184 ; gain = 308.492
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 937.184 ; gain = 308.492
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
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 937.184 ; gain = 308.492
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
00:00:00.0072default:default2
937.1842default:default2
0.0002default:defaultZ17-268h px? 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
12default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc2default:default2&
CLK_GEN_PLL/inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc2default:default2&
CLK_GEN_PLL/inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2default:default2&
CLK_GEN_PLL/inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2default:default2&
CLK_GEN_PLL/inst	2default:default8Z20-847h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
?c:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2default:default26
".Xil/vga_initials_top_propImpl.xdc2default:defaultZ1-236h px? 
8
Deriving generated clocks
2*timingZ38-2h px? 
?
Parsing XDC File [%s]
179*designutils2e
OC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Nexys A7-100T.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2e
OC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Nexys A7-100T.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2c
OC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Nexys A7-100T.xdc2default:default26
".Xil/vga_initials_top_propImpl.xdc2default:defaultZ1-236h px? 
?
Parsing XDC File [%s]
179*designutils2?
rC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2?
rC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
rC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.runs/synth_1/dont_touch.xdc2default:default26
".Xil/vga_initials_top_propImpl.xdc2default:defaultZ1-236h px? 
8
Deriving generated clocks
2*timingZ38-2h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1039.6482default:default2
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
00:00:00.0052default:default2
1039.6482default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1039.648 ; gain = 410.957
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
K
%s
*synth23
Loading part: xc7a100tcsg324-1
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
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1039.648 ; gain = 410.957
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
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1039.648 ; gain = 410.957
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2?
rC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/FIFO.vhd2default:default2
732default:default8@Z8-5818h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
mem2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
!inferring latch for variable '%s'327*oasys2 
o_RX_DVA_reg2default:default2?
uC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/UART_RX.vhd2default:default2
1322default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
o_RX_DVB_reg2default:default2?
uC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/new/UART_RX.vhd2default:default2
1442default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1039.648 ; gain = 410.957
2default:defaulth px? 
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

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
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
Z
%s
*synth2B
.	   3 Input     12 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     11 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 4     
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
.	               10 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 12    
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit         RAMs := 2     
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
Z
%s
*synth2B
.	  17 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 2     
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
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
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
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
=
%s
*synth2%
Module VGA_VHDL 
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
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 2     
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
.	               10 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
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
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 2     
2default:defaulth p
x
? 
A
%s
*synth2)
Module vga_initials 
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
Z
%s
*synth2B
.	   3 Input     12 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     11 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 5     
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
.	                4 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
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
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 3     
2default:defaulth p
x
? 
N
%s
*synth26
"Module module_fifo_regs_no_flags 
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
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 2     
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
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit         RAMs := 1     
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
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
<
%s
*synth2$
Module UART_RX 
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
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
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
.	                8 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 7     
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
Z
%s
*synth2B
.	   6 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
Module PROM_IMG 
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
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  17 Input     32 Bit        Muxes := 1     
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
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
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
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
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
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
? 
?
+Unused sequential element %s was removed. 
4326*oasys27
#GEN_UART/GEN_FIFO_B/r_FIFO_DATA_reg2default:defaultZ8-6014h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2$
INIT/blue_reg[3]2default:default2
FDCE2default:default2%
INIT/green_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2%
INIT/green_reg[3]2default:default2
FDCE2default:default2#
INIT/red_reg[3]2default:defaultZ8-3886h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
GEN_UART/o_RX_DVB_reg2default:default2$
vga_initials_top2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1039.648 ; gain = 410.957
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
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping	Report (see note below)
2default:defaulth px? 
?
%s*synth2
k+-----------------+-------------------------------------+-----------+----------------------+-------------+
2default:defaulth px? 
?
%s*synth2?
l|Module Name      | RTL Object                          | Inference | Size (Depth x Width) | Primitives  | 
2default:defaulth px? 
?
%s*synth2
k+-----------------+-------------------------------------+-----------+----------------------+-------------+
2default:defaulth px? 
?
%s*synth2?
l|vga_initials_top | GEN_UART/GEN_FIFO_A/r_FIFO_DATA_reg | Implied   | 4 x 8                | RAM32M x 2	 | 
2default:defaulth px? 
?
%s*synth2?
l+-----------------+-------------------------------------+-----------+----------------------+-------------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
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
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1039.648 ; gain = 410.957
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
}Finished Timing Optimization : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 1039.648 ; gain = 410.957
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
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
S
%s
*synth2;
'
Distributed RAM: Final Mapping	Report
2default:defaulth p
x
? 
?
%s
*synth2
k+-----------------+-------------------------------------+-----------+----------------------+-------------+
2default:defaulth p
x
? 
?
%s
*synth2?
l|Module Name      | RTL Object                          | Inference | Size (Depth x Width) | Primitives  | 
2default:defaulth p
x
? 
?
%s
*synth2
k+-----------------+-------------------------------------+-----------+----------------------+-------------+
2default:defaulth p
x
? 
?
%s
*synth2?
l|vga_initials_top | GEN_UART/GEN_FIFO_A/r_FIFO_DATA_reg | Implied   | 4 x 8                | RAM32M x 2	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
l+-----------------+-------------------------------------+-----------+----------------------+-------------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
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

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
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
|Finished Technology Mapping : Time (s): cpu = 00:00:23 ; elapsed = 00:00:24 . Memory (MB): peak = 1039.648 ; gain = 410.957
2default:defaulth px? 
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

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
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
vFinished IO Insertion : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1041.508 ; gain = 412.816
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1041.508 ; gain = 412.816
2default:defaulth px? 
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

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1041.508 ; gain = 412.816
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1041.508 ; gain = 412.816
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1041.508 ; gain = 412.816
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
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1041.508 ; gain = 412.816
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
G
%s*synth2/
+------+----------+------+
2default:defaulth px? 
G
%s*synth2/
|      |Cell      |Count |
2default:defaulth px? 
G
%s*synth2/
+------+----------+------+
2default:defaulth px? 
G
%s*synth2/
|1     |BUFG      |     3|
2default:defaulth px? 
G
%s*synth2/
|2     |CARRY4    |    18|
2default:defaulth px? 
G
%s*synth2/
|3     |LUT1      |     8|
2default:defaulth px? 
G
%s*synth2/
|4     |LUT2      |    23|
2default:defaulth px? 
G
%s*synth2/
|5     |LUT3      |    21|
2default:defaulth px? 
G
%s*synth2/
|6     |LUT4      |    33|
2default:defaulth px? 
G
%s*synth2/
|7     |LUT5      |    69|
2default:defaulth px? 
G
%s*synth2/
|8     |LUT6      |    41|
2default:defaulth px? 
G
%s*synth2/
|9     |MUXF7     |     4|
2default:defaulth px? 
G
%s*synth2/
|10    |MUXF8     |     2|
2default:defaulth px? 
G
%s*synth2/
|11    |PLLE2_ADV |     1|
2default:defaulth px? 
G
%s*synth2/
|12    |RAM32M    |     2|
2default:defaulth px? 
G
%s*synth2/
|13    |FDCE      |    70|
2default:defaulth px? 
G
%s*synth2/
|14    |FDPE      |     1|
2default:defaulth px? 
G
%s*synth2/
|15    |FDRE      |    33|
2default:defaulth px? 
G
%s*synth2/
|16    |LD        |     1|
2default:defaulth px? 
G
%s*synth2/
|17    |IBUF      |    11|
2default:defaulth px? 
G
%s*synth2/
|18    |OBUF      |    16|
2default:defaulth px? 
G
%s*synth2/
+------+----------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
g
%s
*synth2O
;+------+---------------+--------------------------+------+
2default:defaulth p
x
? 
g
%s
*synth2O
;|      |Instance       |Module                    |Cells |
2default:defaulth p
x
? 
g
%s
*synth2O
;+------+---------------+--------------------------+------+
2default:defaulth p
x
? 
g
%s
*synth2O
;|1     |top            |                          |   357|
2default:defaulth p
x
? 
g
%s
*synth2O
;|2     |  CLK_GEN_PLL  |clk_wiz_0                 |     4|
2default:defaulth p
x
? 
g
%s
*synth2O
;|3     |    inst       |clk_wiz_0_clk_wiz         |     4|
2default:defaulth p
x
? 
g
%s
*synth2O
;|4     |  GEN_UART     |UART_RX                   |   184|
2default:defaulth p
x
? 
g
%s
*synth2O
;|5     |    GEN_FIFO_A |module_fifo_regs_no_flags |    36|
2default:defaulth p
x
? 
g
%s
*synth2O
;|6     |  INIT         |vga_initials              |    22|
2default:defaulth p
x
? 
g
%s
*synth2O
;|7     |  VGA_DRIVER   |VGA_VHDL                  |   119|
2default:defaulth p
x
? 
g
%s
*synth2O
;+------+---------------+--------------------------+------+
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1041.508 ; gain = 412.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 4 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:19 ; elapsed = 00:00:26 . Memory (MB): peak = 1041.508 ; gain = 310.352
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1041.508 ; gain = 412.816
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
00:00:002default:default2 
00:00:00.0062default:default2
1050.5702default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
282default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
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
00:00:002default:default2
1062.1842default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
~  A total of 3 instances were transformed.
  LD => LDCE: 1 instance 
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 2 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
542default:default2
52default:default2
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
00:00:322default:default2
00:00:342default:default2
1062.1842default:default2
723.4142default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1062.1842default:default2
0.0002default:defaultZ17-268h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
xC:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.runs/synth_1/vga_initials_top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
vExecuting : report_utilization -file vga_initials_top_utilization_synth.rpt -pb vga_initials_top_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Apr 25 23:51:03 20212default:defaultZ17-206h px? 


End Record