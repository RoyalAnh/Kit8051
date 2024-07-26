                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _LED_Mask
                                     12 	.globl _main
                                     13 	.globl _uart_send_string
                                     14 	.globl _uart_init
                                     15 	.globl _Display
                                     16 	.globl _delay
                                     17 	.globl _sprintf
                                     18 	.globl _TF2
                                     19 	.globl _EXF2
                                     20 	.globl _RCLK
                                     21 	.globl _TCLK
                                     22 	.globl _EXEN2
                                     23 	.globl _TR2
                                     24 	.globl _C_T2
                                     25 	.globl _CP_RL2
                                     26 	.globl _T2CON_7
                                     27 	.globl _T2CON_6
                                     28 	.globl _T2CON_5
                                     29 	.globl _T2CON_4
                                     30 	.globl _T2CON_3
                                     31 	.globl _T2CON_2
                                     32 	.globl _T2CON_1
                                     33 	.globl _T2CON_0
                                     34 	.globl _PT2
                                     35 	.globl _ET2
                                     36 	.globl _CY
                                     37 	.globl _AC
                                     38 	.globl _F0
                                     39 	.globl _RS1
                                     40 	.globl _RS0
                                     41 	.globl _OV
                                     42 	.globl _F1
                                     43 	.globl _P
                                     44 	.globl _PS
                                     45 	.globl _PT1
                                     46 	.globl _PX1
                                     47 	.globl _PT0
                                     48 	.globl _PX0
                                     49 	.globl _RD
                                     50 	.globl _WR
                                     51 	.globl _T1
                                     52 	.globl _T0
                                     53 	.globl _INT1
                                     54 	.globl _INT0
                                     55 	.globl _TXD
                                     56 	.globl _RXD
                                     57 	.globl _P3_7
                                     58 	.globl _P3_6
                                     59 	.globl _P3_5
                                     60 	.globl _P3_4
                                     61 	.globl _P3_3
                                     62 	.globl _P3_2
                                     63 	.globl _P3_1
                                     64 	.globl _P3_0
                                     65 	.globl _EA
                                     66 	.globl _ES
                                     67 	.globl _ET1
                                     68 	.globl _EX1
                                     69 	.globl _ET0
                                     70 	.globl _EX0
                                     71 	.globl _P2_7
                                     72 	.globl _P2_6
                                     73 	.globl _P2_5
                                     74 	.globl _P2_4
                                     75 	.globl _P2_3
                                     76 	.globl _P2_2
                                     77 	.globl _P2_1
                                     78 	.globl _P2_0
                                     79 	.globl _SM0
                                     80 	.globl _SM1
                                     81 	.globl _SM2
                                     82 	.globl _REN
                                     83 	.globl _TB8
                                     84 	.globl _RB8
                                     85 	.globl _TI
                                     86 	.globl _RI
                                     87 	.globl _P1_7
                                     88 	.globl _P1_6
                                     89 	.globl _P1_5
                                     90 	.globl _P1_4
                                     91 	.globl _P1_3
                                     92 	.globl _P1_2
                                     93 	.globl _P1_1
                                     94 	.globl _P1_0
                                     95 	.globl _TF1
                                     96 	.globl _TR1
                                     97 	.globl _TF0
                                     98 	.globl _TR0
                                     99 	.globl _IE1
                                    100 	.globl _IT1
                                    101 	.globl _IE0
                                    102 	.globl _IT0
                                    103 	.globl _P0_7
                                    104 	.globl _P0_6
                                    105 	.globl _P0_5
                                    106 	.globl _P0_4
                                    107 	.globl _P0_3
                                    108 	.globl _P0_2
                                    109 	.globl _P0_1
                                    110 	.globl _P0_0
                                    111 	.globl _TH2
                                    112 	.globl _TL2
                                    113 	.globl _RCAP2H
                                    114 	.globl _RCAP2L
                                    115 	.globl _T2CON
                                    116 	.globl _B
                                    117 	.globl _ACC
                                    118 	.globl _PSW
                                    119 	.globl _IP
                                    120 	.globl _P3
                                    121 	.globl _IE
                                    122 	.globl _P2
                                    123 	.globl _SBUF
                                    124 	.globl _SCON
                                    125 	.globl _P1
                                    126 	.globl _TH1
                                    127 	.globl _TH0
                                    128 	.globl _TL1
                                    129 	.globl _TL0
                                    130 	.globl _TMOD
                                    131 	.globl _TCON
                                    132 	.globl _PCON
                                    133 	.globl _DPH
                                    134 	.globl _DPL
                                    135 	.globl _SP
                                    136 	.globl _P0
                                    137 ;--------------------------------------------------------
                                    138 ; special function registers
                                    139 ;--------------------------------------------------------
                                    140 	.area RSEG    (ABS,DATA)
      000000                        141 	.org 0x0000
                           000080   142 _P0	=	0x0080
                           000081   143 _SP	=	0x0081
                           000082   144 _DPL	=	0x0082
                           000083   145 _DPH	=	0x0083
                           000087   146 _PCON	=	0x0087
                           000088   147 _TCON	=	0x0088
                           000089   148 _TMOD	=	0x0089
                           00008A   149 _TL0	=	0x008a
                           00008B   150 _TL1	=	0x008b
                           00008C   151 _TH0	=	0x008c
                           00008D   152 _TH1	=	0x008d
                           000090   153 _P1	=	0x0090
                           000098   154 _SCON	=	0x0098
                           000099   155 _SBUF	=	0x0099
                           0000A0   156 _P2	=	0x00a0
                           0000A8   157 _IE	=	0x00a8
                           0000B0   158 _P3	=	0x00b0
                           0000B8   159 _IP	=	0x00b8
                           0000D0   160 _PSW	=	0x00d0
                           0000E0   161 _ACC	=	0x00e0
                           0000F0   162 _B	=	0x00f0
                           0000C8   163 _T2CON	=	0x00c8
                           0000CA   164 _RCAP2L	=	0x00ca
                           0000CB   165 _RCAP2H	=	0x00cb
                           0000CC   166 _TL2	=	0x00cc
                           0000CD   167 _TH2	=	0x00cd
                                    168 ;--------------------------------------------------------
                                    169 ; special function bits
                                    170 ;--------------------------------------------------------
                                    171 	.area RSEG    (ABS,DATA)
      000000                        172 	.org 0x0000
                           000080   173 _P0_0	=	0x0080
                           000081   174 _P0_1	=	0x0081
                           000082   175 _P0_2	=	0x0082
                           000083   176 _P0_3	=	0x0083
                           000084   177 _P0_4	=	0x0084
                           000085   178 _P0_5	=	0x0085
                           000086   179 _P0_6	=	0x0086
                           000087   180 _P0_7	=	0x0087
                           000088   181 _IT0	=	0x0088
                           000089   182 _IE0	=	0x0089
                           00008A   183 _IT1	=	0x008a
                           00008B   184 _IE1	=	0x008b
                           00008C   185 _TR0	=	0x008c
                           00008D   186 _TF0	=	0x008d
                           00008E   187 _TR1	=	0x008e
                           00008F   188 _TF1	=	0x008f
                           000090   189 _P1_0	=	0x0090
                           000091   190 _P1_1	=	0x0091
                           000092   191 _P1_2	=	0x0092
                           000093   192 _P1_3	=	0x0093
                           000094   193 _P1_4	=	0x0094
                           000095   194 _P1_5	=	0x0095
                           000096   195 _P1_6	=	0x0096
                           000097   196 _P1_7	=	0x0097
                           000098   197 _RI	=	0x0098
                           000099   198 _TI	=	0x0099
                           00009A   199 _RB8	=	0x009a
                           00009B   200 _TB8	=	0x009b
                           00009C   201 _REN	=	0x009c
                           00009D   202 _SM2	=	0x009d
                           00009E   203 _SM1	=	0x009e
                           00009F   204 _SM0	=	0x009f
                           0000A0   205 _P2_0	=	0x00a0
                           0000A1   206 _P2_1	=	0x00a1
                           0000A2   207 _P2_2	=	0x00a2
                           0000A3   208 _P2_3	=	0x00a3
                           0000A4   209 _P2_4	=	0x00a4
                           0000A5   210 _P2_5	=	0x00a5
                           0000A6   211 _P2_6	=	0x00a6
                           0000A7   212 _P2_7	=	0x00a7
                           0000A8   213 _EX0	=	0x00a8
                           0000A9   214 _ET0	=	0x00a9
                           0000AA   215 _EX1	=	0x00aa
                           0000AB   216 _ET1	=	0x00ab
                           0000AC   217 _ES	=	0x00ac
                           0000AF   218 _EA	=	0x00af
                           0000B0   219 _P3_0	=	0x00b0
                           0000B1   220 _P3_1	=	0x00b1
                           0000B2   221 _P3_2	=	0x00b2
                           0000B3   222 _P3_3	=	0x00b3
                           0000B4   223 _P3_4	=	0x00b4
                           0000B5   224 _P3_5	=	0x00b5
                           0000B6   225 _P3_6	=	0x00b6
                           0000B7   226 _P3_7	=	0x00b7
                           0000B0   227 _RXD	=	0x00b0
                           0000B1   228 _TXD	=	0x00b1
                           0000B2   229 _INT0	=	0x00b2
                           0000B3   230 _INT1	=	0x00b3
                           0000B4   231 _T0	=	0x00b4
                           0000B5   232 _T1	=	0x00b5
                           0000B6   233 _WR	=	0x00b6
                           0000B7   234 _RD	=	0x00b7
                           0000B8   235 _PX0	=	0x00b8
                           0000B9   236 _PT0	=	0x00b9
                           0000BA   237 _PX1	=	0x00ba
                           0000BB   238 _PT1	=	0x00bb
                           0000BC   239 _PS	=	0x00bc
                           0000D0   240 _P	=	0x00d0
                           0000D1   241 _F1	=	0x00d1
                           0000D2   242 _OV	=	0x00d2
                           0000D3   243 _RS0	=	0x00d3
                           0000D4   244 _RS1	=	0x00d4
                           0000D5   245 _F0	=	0x00d5
                           0000D6   246 _AC	=	0x00d6
                           0000D7   247 _CY	=	0x00d7
                           0000AD   248 _ET2	=	0x00ad
                           0000BD   249 _PT2	=	0x00bd
                           0000C8   250 _T2CON_0	=	0x00c8
                           0000C9   251 _T2CON_1	=	0x00c9
                           0000CA   252 _T2CON_2	=	0x00ca
                           0000CB   253 _T2CON_3	=	0x00cb
                           0000CC   254 _T2CON_4	=	0x00cc
                           0000CD   255 _T2CON_5	=	0x00cd
                           0000CE   256 _T2CON_6	=	0x00ce
                           0000CF   257 _T2CON_7	=	0x00cf
                           0000C8   258 _CP_RL2	=	0x00c8
                           0000C9   259 _C_T2	=	0x00c9
                           0000CA   260 _TR2	=	0x00ca
                           0000CB   261 _EXEN2	=	0x00cb
                           0000CC   262 _TCLK	=	0x00cc
                           0000CD   263 _RCLK	=	0x00cd
                           0000CE   264 _EXF2	=	0x00ce
                           0000CF   265 _TF2	=	0x00cf
                                    266 ;--------------------------------------------------------
                                    267 ; overlayable register banks
                                    268 ;--------------------------------------------------------
                                    269 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        270 	.ds 8
                                    271 ;--------------------------------------------------------
                                    272 ; internal ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area DSEG    (DATA)
      000008                        275 _main_buffer_10000_22:
      000008                        276 	.ds 4
                                    277 ;--------------------------------------------------------
                                    278 ; overlayable items in internal ram
                                    279 ;--------------------------------------------------------
                                    280 	.area	OSEG    (OVR,DATA)
                                    281 	.area	OSEG    (OVR,DATA)
                                    282 ;--------------------------------------------------------
                                    283 ; Stack segment in internal ram
                                    284 ;--------------------------------------------------------
                                    285 	.area SSEG
      000048                        286 __start__stack:
      000048                        287 	.ds	1
                                    288 
                                    289 ;--------------------------------------------------------
                                    290 ; indirectly addressable internal ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area ISEG    (DATA)
                                    293 ;--------------------------------------------------------
                                    294 ; absolute internal ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area IABS    (ABS,DATA)
                                    297 	.area IABS    (ABS,DATA)
                                    298 ;--------------------------------------------------------
                                    299 ; bit data
                                    300 ;--------------------------------------------------------
                                    301 	.area BSEG    (BIT)
                                    302 ;--------------------------------------------------------
                                    303 ; paged external ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area PSEG    (PAG,XDATA)
                                    306 ;--------------------------------------------------------
                                    307 ; uninitialized external ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area XSEG    (XDATA)
                                    310 ;--------------------------------------------------------
                                    311 ; absolute external ram data
                                    312 ;--------------------------------------------------------
                                    313 	.area XABS    (ABS,XDATA)
                                    314 ;--------------------------------------------------------
                                    315 ; initialized external ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area XISEG   (XDATA)
                                    318 	.area HOME    (CODE)
                                    319 	.area GSINIT0 (CODE)
                                    320 	.area GSINIT1 (CODE)
                                    321 	.area GSINIT2 (CODE)
                                    322 	.area GSINIT3 (CODE)
                                    323 	.area GSINIT4 (CODE)
                                    324 	.area GSINIT5 (CODE)
                                    325 	.area GSINIT  (CODE)
                                    326 	.area GSFINAL (CODE)
                                    327 	.area CSEG    (CODE)
                                    328 ;--------------------------------------------------------
                                    329 ; interrupt vector
                                    330 ;--------------------------------------------------------
                                    331 	.area HOME    (CODE)
      000000                        332 __interrupt_vect:
      000000 02 00 06         [24]  333 	ljmp	__sdcc_gsinit_startup
                                    334 ;--------------------------------------------------------
                                    335 ; global & static initialisations
                                    336 ;--------------------------------------------------------
                                    337 	.area HOME    (CODE)
                                    338 	.area GSINIT  (CODE)
                                    339 	.area GSFINAL (CODE)
                                    340 	.area GSINIT  (CODE)
                                    341 	.globl __sdcc_gsinit_startup
                                    342 	.globl __sdcc_program_startup
                                    343 	.globl __start__stack
                                    344 	.globl __mcs51_genXINIT
                                    345 	.globl __mcs51_genXRAMCLEAR
                                    346 	.globl __mcs51_genRAMCLEAR
                                    347 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  348 	ljmp	__sdcc_program_startup
                                    349 ;--------------------------------------------------------
                                    350 ; Home
                                    351 ;--------------------------------------------------------
                                    352 	.area HOME    (CODE)
                                    353 	.area HOME    (CODE)
      000003                        354 __sdcc_program_startup:
      000003 02 01 5A         [24]  355 	ljmp	_main
                                    356 ;	return from main will return to caller
                                    357 ;--------------------------------------------------------
                                    358 ; code
                                    359 ;--------------------------------------------------------
                                    360 	.area CSEG    (CODE)
                                    361 ;------------------------------------------------------------
                                    362 ;Allocation info for local variables in function 'delay'
                                    363 ;------------------------------------------------------------
                                    364 ;i                         Allocated to registers 
                                    365 ;------------------------------------------------------------
                                    366 ;	main.c:13: void delay(u16 i)
                                    367 ;	-----------------------------------------
                                    368 ;	 function delay
                                    369 ;	-----------------------------------------
      000062                        370 _delay:
                           000007   371 	ar7 = 0x07
                           000006   372 	ar6 = 0x06
                           000005   373 	ar5 = 0x05
                           000004   374 	ar4 = 0x04
                           000003   375 	ar3 = 0x03
                           000002   376 	ar2 = 0x02
                           000001   377 	ar1 = 0x01
                           000000   378 	ar0 = 0x00
      000062 AE 82            [24]  379 	mov	r6, dpl
      000064 AF 83            [24]  380 	mov	r7, dph
                                    381 ;	main.c:15: while (i--);
      000066                        382 00101$:
      000066 8E 04            [24]  383 	mov	ar4,r6
      000068 8F 05            [24]  384 	mov	ar5,r7
      00006A 1E               [12]  385 	dec	r6
      00006B BE FF 01         [24]  386 	cjne	r6,#0xff,00113$
      00006E 1F               [12]  387 	dec	r7
      00006F                        388 00113$:
      00006F EC               [12]  389 	mov	a,r4
      000070 4D               [12]  390 	orl	a,r5
      000071 70 F3            [24]  391 	jnz	00101$
                                    392 ;	main.c:16: }
      000073 22               [24]  393 	ret
                                    394 ;------------------------------------------------------------
                                    395 ;Allocation info for local variables in function 'Display'
                                    396 ;------------------------------------------------------------
                                    397 ;number                    Allocated to registers r7 
                                    398 ;digit1                    Allocated to registers r4 
                                    399 ;digit2                    Allocated to registers r3 
                                    400 ;digit3                    Allocated to registers r6 
                                    401 ;------------------------------------------------------------
                                    402 ;	main.c:18: void Display(u8 number)
                                    403 ;	-----------------------------------------
                                    404 ;	 function Display
                                    405 ;	-----------------------------------------
      000074                        406 _Display:
      000074 AF 82            [24]  407 	mov	r7, dpl
                                    408 ;	main.c:20: u8 digit1 = number / 100;     // Hundreds digit
      000076 7E 00            [12]  409 	mov	r6,#0x00
      000078 75 3F 64         [24]  410 	mov	__divsint_PARM_2,#0x64
      00007B 8E 40            [24]  411 	mov	(__divsint_PARM_2 + 1),r6
      00007D 8F 82            [24]  412 	mov	dpl, r7
      00007F 8E 83            [24]  413 	mov	dph, r6
      000081 C0 07            [24]  414 	push	ar7
      000083 C0 06            [24]  415 	push	ar6
      000085 12 0A AE         [24]  416 	lcall	__divsint
      000088 AC 82            [24]  417 	mov	r4, dpl
      00008A D0 06            [24]  418 	pop	ar6
      00008C D0 07            [24]  419 	pop	ar7
                                    420 ;	main.c:21: u8 digit2 = (number / 10) % 10; // Tens digit
      00008E 75 3F 0A         [24]  421 	mov	__divsint_PARM_2,#0x0a
      000091 75 40 00         [24]  422 	mov	(__divsint_PARM_2 + 1),#0x00
      000094 8F 82            [24]  423 	mov	dpl, r7
      000096 8E 83            [24]  424 	mov	dph, r6
      000098 C0 07            [24]  425 	push	ar7
      00009A C0 06            [24]  426 	push	ar6
      00009C C0 04            [24]  427 	push	ar4
      00009E 12 0A AE         [24]  428 	lcall	__divsint
      0000A1 75 3F 0A         [24]  429 	mov	__modsint_PARM_2,#0x0a
      0000A4 75 40 00         [24]  430 	mov	(__modsint_PARM_2 + 1),#0x00
      0000A7 12 0A 78         [24]  431 	lcall	__modsint
      0000AA AB 82            [24]  432 	mov	r3, dpl
      0000AC D0 04            [24]  433 	pop	ar4
      0000AE D0 06            [24]  434 	pop	ar6
      0000B0 D0 07            [24]  435 	pop	ar7
                                    436 ;	main.c:22: u8 digit3 = number % 10;      // Units digit
      0000B2 75 3F 0A         [24]  437 	mov	__modsint_PARM_2,#0x0a
      0000B5 75 40 00         [24]  438 	mov	(__modsint_PARM_2 + 1),#0x00
      0000B8 8F 82            [24]  439 	mov	dpl, r7
      0000BA 8E 83            [24]  440 	mov	dph, r6
      0000BC C0 04            [24]  441 	push	ar4
      0000BE C0 03            [24]  442 	push	ar3
      0000C0 12 0A 78         [24]  443 	lcall	__modsint
      0000C3 AE 82            [24]  444 	mov	r6, dpl
      0000C5 D0 03            [24]  445 	pop	ar3
      0000C7 D0 04            [24]  446 	pop	ar4
                                    447 ;	main.c:25: Q4 = 1;
                                    448 ;	assignBit
      0000C9 D2 A0            [12]  449 	setb	_P2_0
                                    450 ;	main.c:26: Q3 = 0;
                                    451 ;	assignBit
      0000CB C2 A1            [12]  452 	clr	_P2_1
                                    453 ;	main.c:27: Q2 = 1;
                                    454 ;	assignBit
      0000CD D2 A2            [12]  455 	setb	_P2_2
                                    456 ;	main.c:28: Q1 = 1;
                                    457 ;	assignBit
      0000CF D2 A3            [12]  458 	setb	_P2_3
                                    459 ;	main.c:29: P1 = LED_Mask[digit1];
      0000D1 EC               [12]  460 	mov	a,r4
      0000D2 90 0B 05         [24]  461 	mov	dptr,#_LED_Mask
      0000D5 93               [24]  462 	movc	a,@a+dptr
      0000D6 F5 90            [12]  463 	mov	_P1,a
                                    464 ;	main.c:30: delay(1000);
      0000D8 90 03 E8         [24]  465 	mov	dptr,#0x03e8
      0000DB C0 06            [24]  466 	push	ar6
      0000DD C0 03            [24]  467 	push	ar3
      0000DF 12 00 62         [24]  468 	lcall	_delay
      0000E2 D0 03            [24]  469 	pop	ar3
                                    470 ;	main.c:31: P1 = 0xFF;
      0000E4 75 90 FF         [24]  471 	mov	_P1,#0xff
                                    472 ;	main.c:34: Q4 = 1;
                                    473 ;	assignBit
      0000E7 D2 A0            [12]  474 	setb	_P2_0
                                    475 ;	main.c:35: Q3 = 1;
                                    476 ;	assignBit
      0000E9 D2 A1            [12]  477 	setb	_P2_1
                                    478 ;	main.c:36: Q2 = 0;
                                    479 ;	assignBit
      0000EB C2 A2            [12]  480 	clr	_P2_2
                                    481 ;	main.c:37: Q1 = 1;
                                    482 ;	assignBit
      0000ED D2 A3            [12]  483 	setb	_P2_3
                                    484 ;	main.c:38: P1 = LED_Mask[digit2];
      0000EF EB               [12]  485 	mov	a,r3
      0000F0 90 0B 05         [24]  486 	mov	dptr,#_LED_Mask
      0000F3 93               [24]  487 	movc	a,@a+dptr
      0000F4 F5 90            [12]  488 	mov	_P1,a
                                    489 ;	main.c:39: delay(1000);
      0000F6 90 03 E8         [24]  490 	mov	dptr,#0x03e8
      0000F9 12 00 62         [24]  491 	lcall	_delay
      0000FC D0 06            [24]  492 	pop	ar6
                                    493 ;	main.c:40: P1 = 0xFF;
      0000FE 75 90 FF         [24]  494 	mov	_P1,#0xff
                                    495 ;	main.c:43: Q4 = 1;
                                    496 ;	assignBit
      000101 D2 A0            [12]  497 	setb	_P2_0
                                    498 ;	main.c:44: Q3 = 1;
                                    499 ;	assignBit
      000103 D2 A1            [12]  500 	setb	_P2_1
                                    501 ;	main.c:45: Q2 = 1;
                                    502 ;	assignBit
      000105 D2 A2            [12]  503 	setb	_P2_2
                                    504 ;	main.c:46: Q1 = 0;
                                    505 ;	assignBit
      000107 C2 A3            [12]  506 	clr	_P2_3
                                    507 ;	main.c:47: P1 = LED_Mask[digit3];
      000109 EE               [12]  508 	mov	a,r6
      00010A 90 0B 05         [24]  509 	mov	dptr,#_LED_Mask
      00010D 93               [24]  510 	movc	a,@a+dptr
      00010E F5 90            [12]  511 	mov	_P1,a
                                    512 ;	main.c:48: delay(1000);
      000110 90 03 E8         [24]  513 	mov	dptr,#0x03e8
      000113 12 00 62         [24]  514 	lcall	_delay
                                    515 ;	main.c:49: P1 = 0xFF;
      000116 75 90 FF         [24]  516 	mov	_P1,#0xff
                                    517 ;	main.c:51: delay(100000);
      000119 90 86 A0         [24]  518 	mov	dptr,#0x86a0
                                    519 ;	main.c:52: }
      00011C 02 00 62         [24]  520 	ljmp	_delay
                                    521 ;------------------------------------------------------------
                                    522 ;Allocation info for local variables in function 'uart_init'
                                    523 ;------------------------------------------------------------
                                    524 ;	main.c:54: void uart_init() {
                                    525 ;	-----------------------------------------
                                    526 ;	 function uart_init
                                    527 ;	-----------------------------------------
      00011F                        528 _uart_init:
                                    529 ;	main.c:55: TMOD |= 0x20;  // Timer 1 mode 2
      00011F 43 89 20         [24]  530 	orl	_TMOD,#0x20
                                    531 ;	main.c:56: TH1 = 0xFD;    // Baud rate 9600 for 11.0592 MHz
      000122 75 8D FD         [24]  532 	mov	_TH1,#0xfd
                                    533 ;	main.c:57: SCON = 0x50;   // UART mode 1, enable receive
      000125 75 98 50         [24]  534 	mov	_SCON,#0x50
                                    535 ;	main.c:58: TR1 = 1;       // Start Timer 1
                                    536 ;	assignBit
      000128 D2 8E            [12]  537 	setb	_TR1
                                    538 ;	main.c:59: }
      00012A 22               [24]  539 	ret
                                    540 ;------------------------------------------------------------
                                    541 ;Allocation info for local variables in function 'uart_send_string'
                                    542 ;------------------------------------------------------------
                                    543 ;str                       Allocated to registers 
                                    544 ;------------------------------------------------------------
                                    545 ;	main.c:61: void uart_send_string(char* str) {
                                    546 ;	-----------------------------------------
                                    547 ;	 function uart_send_string
                                    548 ;	-----------------------------------------
      00012B                        549 _uart_send_string:
      00012B AD 82            [24]  550 	mov	r5, dpl
      00012D AE 83            [24]  551 	mov	r6, dph
      00012F AF F0            [24]  552 	mov	r7, b
                                    553 ;	main.c:62: while (*str) {
      000131                        554 00104$:
      000131 8D 82            [24]  555 	mov	dpl,r5
      000133 8E 83            [24]  556 	mov	dph,r6
      000135 8F F0            [24]  557 	mov	b,r7
      000137 12 0A 5C         [24]  558 	lcall	__gptrget
      00013A FC               [12]  559 	mov	r4,a
      00013B 60 0C            [24]  560 	jz	00106$
                                    561 ;	main.c:63: SBUF = *str++;
      00013D 8C 99            [24]  562 	mov	_SBUF,r4
      00013F 0D               [12]  563 	inc	r5
      000140 BD 00 01         [24]  564 	cjne	r5,#0x00,00165$
      000143 0E               [12]  565 	inc	r6
      000144                        566 00165$:
                                    567 ;	main.c:64: while (TI == 0);  // Wait for TX complete
      000144                        568 00101$:
                                    569 ;	main.c:65: TI = 0;           // Clear TI flag for next byte
                                    570 ;	assignBit
      000144 10 99 EA         [24]  571 	jbc	_TI,00104$
      000147 80 FB            [24]  572 	sjmp	00101$
      000149                        573 00106$:
                                    574 ;	main.c:67: SBUF = '\r';  // Send carriage return
      000149 75 99 0D         [24]  575 	mov	_SBUF,#0x0d
                                    576 ;	main.c:68: while (TI == 0);  // Wait for TX complete
      00014C                        577 00107$:
                                    578 ;	main.c:69: TI = 0;           // Clear TI flag for next byte
                                    579 ;	assignBit
      00014C 10 99 02         [24]  580 	jbc	_TI,00167$
      00014F 80 FB            [24]  581 	sjmp	00107$
      000151                        582 00167$:
                                    583 ;	main.c:70: SBUF = '\n';  // Send newline
      000151 75 99 0A         [24]  584 	mov	_SBUF,#0x0a
                                    585 ;	main.c:71: while (TI == 0);  // Wait for TX complete
      000154                        586 00110$:
                                    587 ;	main.c:72: TI = 0;           // Clear TI flag for next byte
                                    588 ;	assignBit
      000154 10 99 02         [24]  589 	jbc	_TI,00168$
      000157 80 FB            [24]  590 	sjmp	00110$
      000159                        591 00168$:
                                    592 ;	main.c:73: }
      000159 22               [24]  593 	ret
                                    594 ;------------------------------------------------------------
                                    595 ;Allocation info for local variables in function 'main'
                                    596 ;------------------------------------------------------------
                                    597 ;i                         Allocated to registers r7 
                                    598 ;buffer                    Allocated with name '_main_buffer_10000_22'
                                    599 ;------------------------------------------------------------
                                    600 ;	main.c:75: void main() {
                                    601 ;	-----------------------------------------
                                    602 ;	 function main
                                    603 ;	-----------------------------------------
      00015A                        604 _main:
                                    605 ;	main.c:78: uart_init();    // Initialize UART
      00015A 12 01 1F         [24]  606 	lcall	_uart_init
                                    607 ;	main.c:81: for (i = 0; i <= 100; i++) {
      00015D                        608 00109$:
      00015D 7F 00            [12]  609 	mov	r7,#0x00
      00015F                        610 00105$:
                                    611 ;	main.c:82: Display(i);
      00015F 8F 82            [24]  612 	mov	dpl, r7
      000161 C0 07            [24]  613 	push	ar7
      000163 12 00 74         [24]  614 	lcall	_Display
      000166 D0 07            [24]  615 	pop	ar7
                                    616 ;	main.c:85: sprintf(buffer, "%d", i);
      000168 8F 05            [24]  617 	mov	ar5,r7
      00016A 7E 00            [12]  618 	mov	r6,#0x00
      00016C C0 07            [24]  619 	push	ar7
      00016E C0 05            [24]  620 	push	ar5
      000170 C0 06            [24]  621 	push	ar6
      000172 74 0F            [12]  622 	mov	a,#___str_0
      000174 C0 E0            [24]  623 	push	acc
      000176 74 0B            [12]  624 	mov	a,#(___str_0 >> 8)
      000178 C0 E0            [24]  625 	push	acc
      00017A 74 80            [12]  626 	mov	a,#0x80
      00017C C0 E0            [24]  627 	push	acc
      00017E 74 08            [12]  628 	mov	a,#_main_buffer_10000_22
      000180 C0 E0            [24]  629 	push	acc
      000182 74 00            [12]  630 	mov	a,#(_main_buffer_10000_22 >> 8)
      000184 C0 E0            [24]  631 	push	acc
      000186 74 40            [12]  632 	mov	a,#0x40
      000188 C0 E0            [24]  633 	push	acc
      00018A 12 02 CF         [24]  634 	lcall	_sprintf
      00018D E5 81            [12]  635 	mov	a,sp
      00018F 24 F8            [12]  636 	add	a,#0xf8
      000191 F5 81            [12]  637 	mov	sp,a
                                    638 ;	main.c:86: uart_send_string(buffer);
      000193 90 00 08         [24]  639 	mov	dptr,#_main_buffer_10000_22
      000196 75 F0 40         [24]  640 	mov	b, #0x40
      000199 12 01 2B         [24]  641 	lcall	_uart_send_string
                                    642 ;	main.c:88: delay(10000);  // Delay between each number display
      00019C 90 27 10         [24]  643 	mov	dptr,#0x2710
      00019F 12 00 62         [24]  644 	lcall	_delay
      0001A2 D0 07            [24]  645 	pop	ar7
                                    646 ;	main.c:81: for (i = 0; i <= 100; i++) {
      0001A4 0F               [12]  647 	inc	r7
      0001A5 EF               [12]  648 	mov	a,r7
      0001A6 24 9B            [12]  649 	add	a,#0xff - 0x64
      0001A8 50 B5            [24]  650 	jnc	00105$
                                    651 ;	main.c:91: }
      0001AA 80 B1            [24]  652 	sjmp	00109$
                                    653 	.area CSEG    (CODE)
                                    654 	.area CONST   (CODE)
      000B05                        655 _LED_Mask:
      000B05 C0                     656 	.db #0xc0	; 192
      000B06 F9                     657 	.db #0xf9	; 249
      000B07 A4                     658 	.db #0xa4	; 164
      000B08 B0                     659 	.db #0xb0	; 176
      000B09 99                     660 	.db #0x99	; 153
      000B0A 92                     661 	.db #0x92	; 146
      000B0B 82                     662 	.db #0x82	; 130
      000B0C F8                     663 	.db #0xf8	; 248
      000B0D 80                     664 	.db #0x80	; 128
      000B0E 90                     665 	.db #0x90	; 144
                                    666 	.area CONST   (CODE)
      000B0F                        667 ___str_0:
      000B0F 25 64                  668 	.ascii "%d"
      000B11 00                     669 	.db 0x00
                                    670 	.area CSEG    (CODE)
                                    671 	.area XINIT   (CODE)
                                    672 	.area CABS    (ABS,CODE)
