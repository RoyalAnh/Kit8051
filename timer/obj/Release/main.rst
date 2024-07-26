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
                                     11 	.globl _main
                                     12 	.globl _ISR1
                                     13 	.globl _ISR0
                                     14 	.globl _initExtInterrupt
                                     15 	.globl _hieu_ung_3
                                     16 	.globl _hieu_ung_2
                                     17 	.globl _hieu_ung_1
                                     18 	.globl _delay_ms
                                     19 	.globl _TF2
                                     20 	.globl _EXF2
                                     21 	.globl _RCLK
                                     22 	.globl _TCLK
                                     23 	.globl _EXEN2
                                     24 	.globl _TR2
                                     25 	.globl _C_T2
                                     26 	.globl _CP_RL2
                                     27 	.globl _T2CON_7
                                     28 	.globl _T2CON_6
                                     29 	.globl _T2CON_5
                                     30 	.globl _T2CON_4
                                     31 	.globl _T2CON_3
                                     32 	.globl _T2CON_2
                                     33 	.globl _T2CON_1
                                     34 	.globl _T2CON_0
                                     35 	.globl _PT2
                                     36 	.globl _ET2
                                     37 	.globl _CY
                                     38 	.globl _AC
                                     39 	.globl _F0
                                     40 	.globl _RS1
                                     41 	.globl _RS0
                                     42 	.globl _OV
                                     43 	.globl _F1
                                     44 	.globl _P
                                     45 	.globl _PS
                                     46 	.globl _PT1
                                     47 	.globl _PX1
                                     48 	.globl _PT0
                                     49 	.globl _PX0
                                     50 	.globl _RD
                                     51 	.globl _WR
                                     52 	.globl _T1
                                     53 	.globl _T0
                                     54 	.globl _INT1
                                     55 	.globl _INT0
                                     56 	.globl _TXD
                                     57 	.globl _RXD
                                     58 	.globl _P3_7
                                     59 	.globl _P3_6
                                     60 	.globl _P3_5
                                     61 	.globl _P3_4
                                     62 	.globl _P3_3
                                     63 	.globl _P3_2
                                     64 	.globl _P3_1
                                     65 	.globl _P3_0
                                     66 	.globl _EA
                                     67 	.globl _ES
                                     68 	.globl _ET1
                                     69 	.globl _EX1
                                     70 	.globl _ET0
                                     71 	.globl _EX0
                                     72 	.globl _P2_7
                                     73 	.globl _P2_6
                                     74 	.globl _P2_5
                                     75 	.globl _P2_4
                                     76 	.globl _P2_3
                                     77 	.globl _P2_2
                                     78 	.globl _P2_1
                                     79 	.globl _P2_0
                                     80 	.globl _SM0
                                     81 	.globl _SM1
                                     82 	.globl _SM2
                                     83 	.globl _REN
                                     84 	.globl _TB8
                                     85 	.globl _RB8
                                     86 	.globl _TI
                                     87 	.globl _RI
                                     88 	.globl _P1_7
                                     89 	.globl _P1_6
                                     90 	.globl _P1_5
                                     91 	.globl _P1_4
                                     92 	.globl _P1_3
                                     93 	.globl _P1_2
                                     94 	.globl _P1_1
                                     95 	.globl _P1_0
                                     96 	.globl _TF1
                                     97 	.globl _TR1
                                     98 	.globl _TF0
                                     99 	.globl _TR0
                                    100 	.globl _IE1
                                    101 	.globl _IT1
                                    102 	.globl _IE0
                                    103 	.globl _IT0
                                    104 	.globl _P0_7
                                    105 	.globl _P0_6
                                    106 	.globl _P0_5
                                    107 	.globl _P0_4
                                    108 	.globl _P0_3
                                    109 	.globl _P0_2
                                    110 	.globl _P0_1
                                    111 	.globl _P0_0
                                    112 	.globl _TH2
                                    113 	.globl _TL2
                                    114 	.globl _RCAP2H
                                    115 	.globl _RCAP2L
                                    116 	.globl _T2CON
                                    117 	.globl _B
                                    118 	.globl _ACC
                                    119 	.globl _PSW
                                    120 	.globl _IP
                                    121 	.globl _P3
                                    122 	.globl _IE
                                    123 	.globl _P2
                                    124 	.globl _SBUF
                                    125 	.globl _SCON
                                    126 	.globl _P1
                                    127 	.globl _TH1
                                    128 	.globl _TH0
                                    129 	.globl _TL1
                                    130 	.globl _TL0
                                    131 	.globl _TMOD
                                    132 	.globl _TCON
                                    133 	.globl _PCON
                                    134 	.globl _DPH
                                    135 	.globl _DPL
                                    136 	.globl _SP
                                    137 	.globl _P0
                                    138 	.globl _delayms
                                    139 	.globl _hieu_ung_hien_tai
                                    140 	.globl _k
                                    141 	.globl _j
                                    142 	.globl _i
                                    143 ;--------------------------------------------------------
                                    144 ; special function registers
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           000080   148 _P0	=	0x0080
                           000081   149 _SP	=	0x0081
                           000082   150 _DPL	=	0x0082
                           000083   151 _DPH	=	0x0083
                           000087   152 _PCON	=	0x0087
                           000088   153 _TCON	=	0x0088
                           000089   154 _TMOD	=	0x0089
                           00008A   155 _TL0	=	0x008a
                           00008B   156 _TL1	=	0x008b
                           00008C   157 _TH0	=	0x008c
                           00008D   158 _TH1	=	0x008d
                           000090   159 _P1	=	0x0090
                           000098   160 _SCON	=	0x0098
                           000099   161 _SBUF	=	0x0099
                           0000A0   162 _P2	=	0x00a0
                           0000A8   163 _IE	=	0x00a8
                           0000B0   164 _P3	=	0x00b0
                           0000B8   165 _IP	=	0x00b8
                           0000D0   166 _PSW	=	0x00d0
                           0000E0   167 _ACC	=	0x00e0
                           0000F0   168 _B	=	0x00f0
                           0000C8   169 _T2CON	=	0x00c8
                           0000CA   170 _RCAP2L	=	0x00ca
                           0000CB   171 _RCAP2H	=	0x00cb
                           0000CC   172 _TL2	=	0x00cc
                           0000CD   173 _TH2	=	0x00cd
                                    174 ;--------------------------------------------------------
                                    175 ; special function bits
                                    176 ;--------------------------------------------------------
                                    177 	.area RSEG    (ABS,DATA)
      000000                        178 	.org 0x0000
                           000080   179 _P0_0	=	0x0080
                           000081   180 _P0_1	=	0x0081
                           000082   181 _P0_2	=	0x0082
                           000083   182 _P0_3	=	0x0083
                           000084   183 _P0_4	=	0x0084
                           000085   184 _P0_5	=	0x0085
                           000086   185 _P0_6	=	0x0086
                           000087   186 _P0_7	=	0x0087
                           000088   187 _IT0	=	0x0088
                           000089   188 _IE0	=	0x0089
                           00008A   189 _IT1	=	0x008a
                           00008B   190 _IE1	=	0x008b
                           00008C   191 _TR0	=	0x008c
                           00008D   192 _TF0	=	0x008d
                           00008E   193 _TR1	=	0x008e
                           00008F   194 _TF1	=	0x008f
                           000090   195 _P1_0	=	0x0090
                           000091   196 _P1_1	=	0x0091
                           000092   197 _P1_2	=	0x0092
                           000093   198 _P1_3	=	0x0093
                           000094   199 _P1_4	=	0x0094
                           000095   200 _P1_5	=	0x0095
                           000096   201 _P1_6	=	0x0096
                           000097   202 _P1_7	=	0x0097
                           000098   203 _RI	=	0x0098
                           000099   204 _TI	=	0x0099
                           00009A   205 _RB8	=	0x009a
                           00009B   206 _TB8	=	0x009b
                           00009C   207 _REN	=	0x009c
                           00009D   208 _SM2	=	0x009d
                           00009E   209 _SM1	=	0x009e
                           00009F   210 _SM0	=	0x009f
                           0000A0   211 _P2_0	=	0x00a0
                           0000A1   212 _P2_1	=	0x00a1
                           0000A2   213 _P2_2	=	0x00a2
                           0000A3   214 _P2_3	=	0x00a3
                           0000A4   215 _P2_4	=	0x00a4
                           0000A5   216 _P2_5	=	0x00a5
                           0000A6   217 _P2_6	=	0x00a6
                           0000A7   218 _P2_7	=	0x00a7
                           0000A8   219 _EX0	=	0x00a8
                           0000A9   220 _ET0	=	0x00a9
                           0000AA   221 _EX1	=	0x00aa
                           0000AB   222 _ET1	=	0x00ab
                           0000AC   223 _ES	=	0x00ac
                           0000AF   224 _EA	=	0x00af
                           0000B0   225 _P3_0	=	0x00b0
                           0000B1   226 _P3_1	=	0x00b1
                           0000B2   227 _P3_2	=	0x00b2
                           0000B3   228 _P3_3	=	0x00b3
                           0000B4   229 _P3_4	=	0x00b4
                           0000B5   230 _P3_5	=	0x00b5
                           0000B6   231 _P3_6	=	0x00b6
                           0000B7   232 _P3_7	=	0x00b7
                           0000B0   233 _RXD	=	0x00b0
                           0000B1   234 _TXD	=	0x00b1
                           0000B2   235 _INT0	=	0x00b2
                           0000B3   236 _INT1	=	0x00b3
                           0000B4   237 _T0	=	0x00b4
                           0000B5   238 _T1	=	0x00b5
                           0000B6   239 _WR	=	0x00b6
                           0000B7   240 _RD	=	0x00b7
                           0000B8   241 _PX0	=	0x00b8
                           0000B9   242 _PT0	=	0x00b9
                           0000BA   243 _PX1	=	0x00ba
                           0000BB   244 _PT1	=	0x00bb
                           0000BC   245 _PS	=	0x00bc
                           0000D0   246 _P	=	0x00d0
                           0000D1   247 _F1	=	0x00d1
                           0000D2   248 _OV	=	0x00d2
                           0000D3   249 _RS0	=	0x00d3
                           0000D4   250 _RS1	=	0x00d4
                           0000D5   251 _F0	=	0x00d5
                           0000D6   252 _AC	=	0x00d6
                           0000D7   253 _CY	=	0x00d7
                           0000AD   254 _ET2	=	0x00ad
                           0000BD   255 _PT2	=	0x00bd
                           0000C8   256 _T2CON_0	=	0x00c8
                           0000C9   257 _T2CON_1	=	0x00c9
                           0000CA   258 _T2CON_2	=	0x00ca
                           0000CB   259 _T2CON_3	=	0x00cb
                           0000CC   260 _T2CON_4	=	0x00cc
                           0000CD   261 _T2CON_5	=	0x00cd
                           0000CE   262 _T2CON_6	=	0x00ce
                           0000CF   263 _T2CON_7	=	0x00cf
                           0000C8   264 _CP_RL2	=	0x00c8
                           0000C9   265 _C_T2	=	0x00c9
                           0000CA   266 _TR2	=	0x00ca
                           0000CB   267 _EXEN2	=	0x00cb
                           0000CC   268 _TCLK	=	0x00cc
                           0000CD   269 _RCLK	=	0x00cd
                           0000CE   270 _EXF2	=	0x00ce
                           0000CF   271 _TF2	=	0x00cf
                                    272 ;--------------------------------------------------------
                                    273 ; overlayable register banks
                                    274 ;--------------------------------------------------------
                                    275 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        276 	.ds 8
                                    277 ;--------------------------------------------------------
                                    278 ; internal ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area DSEG    (DATA)
      000008                        281 _i::
      000008                        282 	.ds 2
      00000A                        283 _j::
      00000A                        284 	.ds 2
      00000C                        285 _k::
      00000C                        286 	.ds 2
      00000E                        287 _hieu_ung_hien_tai::
      00000E                        288 	.ds 2
      000010                        289 _delayms::
      000010                        290 	.ds 2
      000012                        291 _delay_ms_ms_10000_1:
      000012                        292 	.ds 4
      000016                        293 _hieu_ung_2_countled_10001_13:
      000016                        294 	.ds 2
                                    295 ;--------------------------------------------------------
                                    296 ; overlayable items in internal ram
                                    297 ;--------------------------------------------------------
                                    298 ;--------------------------------------------------------
                                    299 ; Stack segment in internal ram
                                    300 ;--------------------------------------------------------
                                    301 	.area SSEG
      00001C                        302 __start__stack:
      00001C                        303 	.ds	1
                                    304 
                                    305 ;--------------------------------------------------------
                                    306 ; indirectly addressable internal ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area ISEG    (DATA)
                                    309 ;--------------------------------------------------------
                                    310 ; absolute internal ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area IABS    (ABS,DATA)
                                    313 	.area IABS    (ABS,DATA)
                                    314 ;--------------------------------------------------------
                                    315 ; bit data
                                    316 ;--------------------------------------------------------
                                    317 	.area BSEG    (BIT)
                                    318 ;--------------------------------------------------------
                                    319 ; paged external ram data
                                    320 ;--------------------------------------------------------
                                    321 	.area PSEG    (PAG,XDATA)
                                    322 ;--------------------------------------------------------
                                    323 ; uninitialized external ram data
                                    324 ;--------------------------------------------------------
                                    325 	.area XSEG    (XDATA)
                                    326 ;--------------------------------------------------------
                                    327 ; absolute external ram data
                                    328 ;--------------------------------------------------------
                                    329 	.area XABS    (ABS,XDATA)
                                    330 ;--------------------------------------------------------
                                    331 ; initialized external ram data
                                    332 ;--------------------------------------------------------
                                    333 	.area XISEG   (XDATA)
                                    334 	.area HOME    (CODE)
                                    335 	.area GSINIT0 (CODE)
                                    336 	.area GSINIT1 (CODE)
                                    337 	.area GSINIT2 (CODE)
                                    338 	.area GSINIT3 (CODE)
                                    339 	.area GSINIT4 (CODE)
                                    340 	.area GSINIT5 (CODE)
                                    341 	.area GSINIT  (CODE)
                                    342 	.area GSFINAL (CODE)
                                    343 	.area CSEG    (CODE)
                                    344 ;--------------------------------------------------------
                                    345 ; interrupt vector
                                    346 ;--------------------------------------------------------
                                    347 	.area HOME    (CODE)
      000000                        348 __interrupt_vect:
      000000 02 00 19         [24]  349 	ljmp	__sdcc_gsinit_startup
      000003 02 03 40         [24]  350 	ljmp	_ISR0
      000006                        351 	.ds	5
      00000B 32               [24]  352 	reti
      00000C                        353 	.ds	7
      000013 02 03 6B         [24]  354 	ljmp	_ISR1
                                    355 ;--------------------------------------------------------
                                    356 ; global & static initialisations
                                    357 ;--------------------------------------------------------
                                    358 	.area HOME    (CODE)
                                    359 	.area GSINIT  (CODE)
                                    360 	.area GSFINAL (CODE)
                                    361 	.area GSINIT  (CODE)
                                    362 	.globl __sdcc_gsinit_startup
                                    363 	.globl __sdcc_program_startup
                                    364 	.globl __start__stack
                                    365 	.globl __mcs51_genXINIT
                                    366 	.globl __mcs51_genXRAMCLEAR
                                    367 	.globl __mcs51_genRAMCLEAR
                                    368 ;	main.c:5: int hieu_ung_hien_tai = 1;  // 3 hiệu ứng tương ứng với 1, 2 và 3
      000072 75 0E 01         [24]  369 	mov	_hieu_ung_hien_tai,#0x01
      000075 75 0F 00         [24]  370 	mov	(_hieu_ung_hien_tai + 1),#0x00
                                    371 ;	main.c:6: int delayms = 100;          // Thời gian trễ giữa các lần sáng led
      000078 75 10 64         [24]  372 	mov	_delayms,#0x64
      00007B 75 11 00         [24]  373 	mov	(_delayms + 1),#0x00
                                    374 	.area GSFINAL (CODE)
      00007E 02 00 16         [24]  375 	ljmp	__sdcc_program_startup
                                    376 ;--------------------------------------------------------
                                    377 ; Home
                                    378 ;--------------------------------------------------------
                                    379 	.area HOME    (CODE)
                                    380 	.area HOME    (CODE)
      000016                        381 __sdcc_program_startup:
      000016 02 03 95         [24]  382 	ljmp	_main
                                    383 ;	return from main will return to caller
                                    384 ;--------------------------------------------------------
                                    385 ; code
                                    386 ;--------------------------------------------------------
                                    387 	.area CSEG    (CODE)
                                    388 ;------------------------------------------------------------
                                    389 ;Allocation info for local variables in function 'delay_ms'
                                    390 ;------------------------------------------------------------
                                    391 ;ms                        Allocated with name '_delay_ms_ms_10000_1'
                                    392 ;------------------------------------------------------------
                                    393 ;	main.c:9: void delay_ms(long ms) {
                                    394 ;	-----------------------------------------
                                    395 ;	 function delay_ms
                                    396 ;	-----------------------------------------
      000081                        397 _delay_ms:
                           000007   398 	ar7 = 0x07
                           000006   399 	ar6 = 0x06
                           000005   400 	ar5 = 0x05
                           000004   401 	ar4 = 0x04
                           000003   402 	ar3 = 0x03
                           000002   403 	ar2 = 0x02
                           000001   404 	ar1 = 0x01
                           000000   405 	ar0 = 0x00
      000081 85 82 18         [24]  406 	mov	__mullong_PARM_2,dpl
      000084 85 83 19         [24]  407 	mov	(__mullong_PARM_2 + 1),dph
      000087 85 F0 1A         [24]  408 	mov	(__mullong_PARM_2 + 2),b
      00008A F5 1B            [12]  409 	mov	(__mullong_PARM_2 + 3),a
                                    410 ;	main.c:10: ms *= 1000;  // Tính số chu kì máy (1000ckm = 1ms)
      00008C 90 03 E8         [24]  411 	mov	dptr,#0x03e8
      00008F E4               [12]  412 	clr	a
      000090 F5 F0            [12]  413 	mov	b,a
      000092 12 04 B6         [24]  414 	lcall	__mullong
      000095 AC 82            [24]  415 	mov	r4, dpl
      000097 AD 83            [24]  416 	mov	r5, dph
      000099 AE F0            [24]  417 	mov	r6, b
      00009B FF               [12]  418 	mov	r7, a
                                    419 ;	main.c:11: while (ms > 0) {
      00009C                        420 00107$:
      00009C C3               [12]  421 	clr	c
      00009D E4               [12]  422 	clr	a
      00009E 9C               [12]  423 	subb	a,r4
      00009F E4               [12]  424 	clr	a
      0000A0 9D               [12]  425 	subb	a,r5
      0000A1 E4               [12]  426 	clr	a
      0000A2 9E               [12]  427 	subb	a,r6
      0000A3 74 80            [12]  428 	mov	a,#(0x00 ^ 0x80)
      0000A5 8F F0            [24]  429 	mov	b,r7
      0000A7 63 F0 80         [24]  430 	xrl	b,#0x80
      0000AA 95 F0            [12]  431 	subb	a,b
      0000AC 40 01            [24]  432 	jc	00147$
      0000AE 22               [24]  433 	ret
      0000AF                        434 00147$:
                                    435 ;	main.c:13: TMOD = TMOD & 0xF0;
      0000AF 53 89 F0         [24]  436 	anl	_TMOD,#0xf0
                                    437 ;	main.c:15: TMOD = TMOD | 0x01;
      0000B2 43 89 01         [24]  438 	orl	_TMOD,#0x01
                                    439 ;	main.c:16: ET0 = 0;  // Che ngắt Timer 0
                                    440 ;	assignBit
      0000B5 C2 A9            [12]  441 	clr	_ET0
                                    442 ;	main.c:18: if (ms >= 65536) {
      0000B7 C3               [12]  443 	clr	c
      0000B8 EE               [12]  444 	mov	a,r6
      0000B9 94 01            [12]  445 	subb	a,#0x01
      0000BB EF               [12]  446 	mov	a,r7
      0000BC 64 80            [12]  447 	xrl	a,#0x80
      0000BE 94 80            [12]  448 	subb	a,#0x80
      0000C0 40 0F            [24]  449 	jc	00102$
                                    450 ;	main.c:20: TH0 = 0;
                                    451 ;	main.c:21: TL0 = 0;
                                    452 ;	main.c:22: ms -= 65536;
      0000C2 E4               [12]  453 	clr	a
      0000C3 F5 8C            [12]  454 	mov	_TH0,a
      0000C5 F5 8A            [12]  455 	mov	_TL0,a
      0000C7 EE               [12]  456 	mov	a,r6
      0000C8 24 FF            [12]  457 	add	a,#0xff
      0000CA FE               [12]  458 	mov	r6,a
      0000CB EF               [12]  459 	mov	a,r7
      0000CC 34 FF            [12]  460 	addc	a,#0xff
      0000CE FF               [12]  461 	mov	r7,a
      0000CF 80 4E            [24]  462 	sjmp	00103$
      0000D1                        463 00102$:
                                    464 ;	main.c:25: ms = 65536 - ms;
      0000D1 E4               [12]  465 	clr	a
      0000D2 C3               [12]  466 	clr	c
      0000D3 9C               [12]  467 	subb	a,r4
      0000D4 F5 12            [12]  468 	mov	_delay_ms_ms_10000_1,a
      0000D6 E4               [12]  469 	clr	a
      0000D7 9D               [12]  470 	subb	a,r5
      0000D8 F5 13            [12]  471 	mov	(_delay_ms_ms_10000_1 + 1),a
      0000DA 74 01            [12]  472 	mov	a,#0x01
      0000DC 9E               [12]  473 	subb	a,r6
      0000DD F5 14            [12]  474 	mov	(_delay_ms_ms_10000_1 + 2),a
      0000DF E4               [12]  475 	clr	a
      0000E0 9F               [12]  476 	subb	a,r7
      0000E1 F5 15            [12]  477 	mov	(_delay_ms_ms_10000_1 + 3),a
                                    478 ;	main.c:26: TH0 = ms / 256;
      0000E3 E4               [12]  479 	clr	a
      0000E4 F5 18            [12]  480 	mov	__divslong_PARM_2,a
      0000E6 75 19 01         [24]  481 	mov	(__divslong_PARM_2 + 1),#0x01
      0000E9 F5 1A            [12]  482 	mov	(__divslong_PARM_2 + 2),a
      0000EB F5 1B            [12]  483 	mov	(__divslong_PARM_2 + 3),a
      0000ED 85 12 82         [24]  484 	mov	dpl, _delay_ms_ms_10000_1
      0000F0 85 13 83         [24]  485 	mov	dph, (_delay_ms_ms_10000_1 + 1)
      0000F3 85 14 F0         [24]  486 	mov	b, (_delay_ms_ms_10000_1 + 2)
      0000F6 12 05 73         [24]  487 	lcall	__divslong
      0000F9 A8 82            [24]  488 	mov	r0, dpl
      0000FB 88 8C            [24]  489 	mov	_TH0,r0
                                    490 ;	main.c:27: TL0 = ms % 256;
      0000FD E4               [12]  491 	clr	a
      0000FE F5 18            [12]  492 	mov	__modslong_PARM_2,a
      000100 75 19 01         [24]  493 	mov	(__modslong_PARM_2 + 1),#0x01
      000103 F5 1A            [12]  494 	mov	(__modslong_PARM_2 + 2),a
      000105 F5 1B            [12]  495 	mov	(__modslong_PARM_2 + 3),a
      000107 85 12 82         [24]  496 	mov	dpl, _delay_ms_ms_10000_1
      00010A 85 13 83         [24]  497 	mov	dph, (_delay_ms_ms_10000_1 + 1)
      00010D 85 14 F0         [24]  498 	mov	b, (_delay_ms_ms_10000_1 + 2)
      000110 12 05 24         [24]  499 	lcall	__modslong
      000113 A8 82            [24]  500 	mov	r0, dpl
      000115 88 8A            [24]  501 	mov	_TL0,r0
                                    502 ;	main.c:28: ms = 0;
      000117 7C 00            [12]  503 	mov	r4,#0x00
      000119 7D 00            [12]  504 	mov	r5,#0x00
      00011B 7E 00            [12]  505 	mov	r6,#0x00
      00011D 7F 00            [12]  506 	mov	r7,#0x00
      00011F                        507 00103$:
                                    508 ;	main.c:30: TF0 = 0;  // Xóa cờ tràn Timer 0 Chuẩn bị cho lần đếm tiếp theo và Ngăn ngắt không mong muốn
                                    509 ;	assignBit
      00011F C2 8D            [12]  510 	clr	_TF0
                                    511 ;	main.c:31: TR0 = 1;  // Khởi động Timer 0
                                    512 ;	assignBit
      000121 D2 8C            [12]  513 	setb	_TR0
                                    514 ;	main.c:32: while (TF0 == 0)
      000123                        515 00104$:
      000123 30 8D FD         [24]  516 	jnb	_TF0,00104$
                                    517 ;	main.c:34: TR0 = 0;  // Dừng Timer 0
                                    518 ;	assignBit
      000126 C2 8C            [12]  519 	clr	_TR0
                                    520 ;	main.c:36: }
      000128 02 00 9C         [24]  521 	ljmp	00107$
                                    522 ;------------------------------------------------------------
                                    523 ;Allocation info for local variables in function 'hieu_ung_1'
                                    524 ;------------------------------------------------------------
                                    525 ;hieu_ung_1                Allocated to registers r7 
                                    526 ;------------------------------------------------------------
                                    527 ;	main.c:39: void hieu_ung_1() {
                                    528 ;	-----------------------------------------
                                    529 ;	 function hieu_ung_1
                                    530 ;	-----------------------------------------
      00012B                        531 _hieu_ung_1:
                                    532 ;	main.c:40: led = 0xFF;  // Tắt tất cả led
      00012B 75 90 FF         [24]  533 	mov	_P1,#0xff
                                    534 ;	main.c:41: delay_ms(delayms);
      00012E AC 10            [24]  535 	mov	r4,_delayms
      000130 E5 11            [12]  536 	mov	a,(_delayms + 1)
      000132 FD               [12]  537 	mov	r5,a
      000133 33               [12]  538 	rlc	a
      000134 95 E0            [12]  539 	subb	a,acc
      000136 FE               [12]  540 	mov	r6,a
      000137 8C 82            [24]  541 	mov	dpl,r4
      000139 8D 83            [24]  542 	mov	dph,r5
      00013B 8E F0            [24]  543 	mov	b,r6
      00013D 12 00 81         [24]  544 	lcall	_delay_ms
                                    545 ;	main.c:43: unsigned char hieu_ung_1 = 0x03;  // Cho 2 led đầu sáng
      000140 7F 03            [12]  546 	mov	r7,#0x03
                                    547 ;	main.c:45: for (j = 0; j < 7; j++) {
      000142 E4               [12]  548 	clr	a
      000143 F5 0A            [12]  549 	mov	_j,a
      000145 F5 0B            [12]  550 	mov	(_j + 1),a
      000147                        551 00107$:
                                    552 ;	main.c:47: if (hieu_ung_hien_tai != 1) return;
      000147 74 01            [12]  553 	mov	a,#0x01
      000149 B5 0E 06         [24]  554 	cjne	a,_hieu_ung_hien_tai,00143$
      00014C 14               [12]  555 	dec	a
      00014D B5 0F 02         [24]  556 	cjne	a,(_hieu_ung_hien_tai + 1),00143$
      000150 80 01            [24]  557 	sjmp	00102$
      000152                        558 00143$:
      000152 22               [24]  559 	ret
      000153                        560 00102$:
                                    561 ;	main.c:49: led = ~hieu_ung_1;
      000153 EF               [12]  562 	mov	a,r7
      000154 F4               [12]  563 	cpl	a
      000155 F5 90            [12]  564 	mov	_P1,a
                                    565 ;	main.c:50: delay_ms(delayms);
      000157 AB 10            [24]  566 	mov	r3,_delayms
      000159 E5 11            [12]  567 	mov	a,(_delayms + 1)
      00015B FC               [12]  568 	mov	r4,a
      00015C 33               [12]  569 	rlc	a
      00015D 95 E0            [12]  570 	subb	a,acc
      00015F FD               [12]  571 	mov	r5,a
      000160 8B 82            [24]  572 	mov	dpl,r3
      000162 8C 83            [24]  573 	mov	dph,r4
      000164 8D F0            [24]  574 	mov	b,r5
      000166 C0 07            [24]  575 	push	ar7
      000168 12 00 81         [24]  576 	lcall	_delay_ms
      00016B D0 07            [24]  577 	pop	ar7
                                    578 ;	main.c:51: hieu_ung_1 = hieu_ung_1 << 1;
      00016D 8F 06            [24]  579 	mov	ar6,r7
      00016F EE               [12]  580 	mov	a,r6
      000170 2E               [12]  581 	add	a,r6
      000171 FF               [12]  582 	mov	r7,a
                                    583 ;	main.c:45: for (j = 0; j < 7; j++) {
      000172 05 0A            [12]  584 	inc	_j
      000174 E4               [12]  585 	clr	a
      000175 B5 0A 02         [24]  586 	cjne	a,_j,00144$
      000178 05 0B            [12]  587 	inc	(_j + 1)
      00017A                        588 00144$:
      00017A C3               [12]  589 	clr	c
      00017B E5 0A            [12]  590 	mov	a,_j
      00017D 94 07            [12]  591 	subb	a,#0x07
      00017F E5 0B            [12]  592 	mov	a,(_j + 1)
      000181 64 80            [12]  593 	xrl	a,#0x80
      000183 94 80            [12]  594 	subb	a,#0x80
      000185 40 C0            [24]  595 	jc	00107$
                                    596 ;	main.c:55: hieu_ung_1 = 0xC0;  // Cho 2 led cuối sáng
      000187 7F C0            [12]  597 	mov	r7,#0xc0
                                    598 ;	main.c:56: for (j = 0; j < 7; j++) {
      000189 E4               [12]  599 	clr	a
      00018A F5 0A            [12]  600 	mov	_j,a
      00018C F5 0B            [12]  601 	mov	(_j + 1),a
      00018E                        602 00109$:
                                    603 ;	main.c:58: if (hieu_ung_hien_tai != 1) return;
      00018E 74 01            [12]  604 	mov	a,#0x01
      000190 B5 0E 06         [24]  605 	cjne	a,_hieu_ung_hien_tai,00146$
      000193 14               [12]  606 	dec	a
      000194 B5 0F 02         [24]  607 	cjne	a,(_hieu_ung_hien_tai + 1),00146$
      000197 80 01            [24]  608 	sjmp	00105$
      000199                        609 00146$:
      000199 22               [24]  610 	ret
      00019A                        611 00105$:
                                    612 ;	main.c:60: led = ~hieu_ung_1;
      00019A EF               [12]  613 	mov	a,r7
      00019B F4               [12]  614 	cpl	a
      00019C F5 90            [12]  615 	mov	_P1,a
                                    616 ;	main.c:61: delay_ms(delayms);
      00019E AB 10            [24]  617 	mov	r3,_delayms
      0001A0 E5 11            [12]  618 	mov	a,(_delayms + 1)
      0001A2 FC               [12]  619 	mov	r4,a
      0001A3 33               [12]  620 	rlc	a
      0001A4 95 E0            [12]  621 	subb	a,acc
      0001A6 FD               [12]  622 	mov	r5,a
      0001A7 8B 82            [24]  623 	mov	dpl,r3
      0001A9 8C 83            [24]  624 	mov	dph,r4
      0001AB 8D F0            [24]  625 	mov	b,r5
      0001AD C0 07            [24]  626 	push	ar7
      0001AF 12 00 81         [24]  627 	lcall	_delay_ms
      0001B2 D0 07            [24]  628 	pop	ar7
                                    629 ;	main.c:62: hieu_ung_1 = hieu_ung_1 >> 1;
      0001B4 EF               [12]  630 	mov	a,r7
      0001B5 C3               [12]  631 	clr	c
      0001B6 13               [12]  632 	rrc	a
      0001B7 FF               [12]  633 	mov	r7,a
                                    634 ;	main.c:56: for (j = 0; j < 7; j++) {
      0001B8 05 0A            [12]  635 	inc	_j
      0001BA E4               [12]  636 	clr	a
      0001BB B5 0A 02         [24]  637 	cjne	a,_j,00147$
      0001BE 05 0B            [12]  638 	inc	(_j + 1)
      0001C0                        639 00147$:
      0001C0 C3               [12]  640 	clr	c
      0001C1 E5 0A            [12]  641 	mov	a,_j
      0001C3 94 07            [12]  642 	subb	a,#0x07
      0001C5 E5 0B            [12]  643 	mov	a,(_j + 1)
      0001C7 64 80            [12]  644 	xrl	a,#0x80
      0001C9 94 80            [12]  645 	subb	a,#0x80
      0001CB 40 C1            [24]  646 	jc	00109$
                                    647 ;	main.c:64: }
      0001CD 22               [24]  648 	ret
                                    649 ;------------------------------------------------------------
                                    650 ;Allocation info for local variables in function 'hieu_ung_2'
                                    651 ;------------------------------------------------------------
                                    652 ;giu_hieu_ung              Allocated to registers r7 
                                    653 ;countled                  Allocated with name '_hieu_ung_2_countled_10001_13'
                                    654 ;hieu_ung_2                Allocated to registers r4 
                                    655 ;------------------------------------------------------------
                                    656 ;	main.c:67: void hieu_ung_2() {
                                    657 ;	-----------------------------------------
                                    658 ;	 function hieu_ung_2
                                    659 ;	-----------------------------------------
      0001CE                        660 _hieu_ung_2:
                                    661 ;	main.c:68: led = 0xFF;  // Tắt tất cả led
      0001CE 75 90 FF         [24]  662 	mov	_P1,#0xff
                                    663 ;	main.c:69: delay_ms(delayms);
      0001D1 AC 10            [24]  664 	mov	r4,_delayms
      0001D3 E5 11            [12]  665 	mov	a,(_delayms + 1)
      0001D5 FD               [12]  666 	mov	r5,a
      0001D6 33               [12]  667 	rlc	a
      0001D7 95 E0            [12]  668 	subb	a,acc
      0001D9 FE               [12]  669 	mov	r6,a
      0001DA 8C 82            [24]  670 	mov	dpl,r4
      0001DC 8D 83            [24]  671 	mov	dph,r5
      0001DE 8E F0            [24]  672 	mov	b,r6
      0001E0 12 00 81         [24]  673 	lcall	_delay_ms
                                    674 ;	main.c:72: unsigned char giu_hieu_ung = 0x00;
                                    675 ;	main.c:77: for (j = 0; j < 8; j++) {
      0001E3 E4               [12]  676 	clr	a
      0001E4 FF               [12]  677 	mov	r7,a
      0001E5 F5 0A            [12]  678 	mov	_j,a
      0001E7 F5 0B            [12]  679 	mov	(_j + 1),a
      0001E9 75 16 08         [24]  680 	mov	_hieu_ung_2_countled_10001_13,#0x08
      0001EC F5 17            [12]  681 	mov	(_hieu_ung_2_countled_10001_13 + 1),a
      0001EE                        682 00113$:
                                    683 ;	main.c:78: unsigned char hieu_ung_2 = 0x01;  // bật sáng led đầu tiên
      0001EE 7C 01            [12]  684 	mov	r4,#0x01
                                    685 ;	main.c:80: for (k = 0; k < countled; k++) {
      0001F0 E4               [12]  686 	clr	a
      0001F1 F5 0C            [12]  687 	mov	_k,a
      0001F3 F5 0D            [12]  688 	mov	(_k + 1),a
      0001F5 E5 16            [12]  689 	mov	a,_hieu_ung_2_countled_10001_13
      0001F7 24 FF            [12]  690 	add	a,#0xff
      0001F9 FA               [12]  691 	mov	r2,a
      0001FA E5 17            [12]  692 	mov	a,(_hieu_ung_2_countled_10001_13 + 1)
      0001FC 34 FF            [12]  693 	addc	a,#0xff
      0001FE FB               [12]  694 	mov	r3,a
      0001FF                        695 00111$:
      0001FF C3               [12]  696 	clr	c
      000200 E5 0C            [12]  697 	mov	a,_k
      000202 95 16            [12]  698 	subb	a,_hieu_ung_2_countled_10001_13
      000204 E5 0D            [12]  699 	mov	a,(_k + 1)
      000206 64 80            [12]  700 	xrl	a,#0x80
      000208 85 17 F0         [24]  701 	mov	b,(_hieu_ung_2_countled_10001_13 + 1)
      00020B 63 F0 80         [24]  702 	xrl	b,#0x80
      00020E 95 F0            [12]  703 	subb	a,b
      000210 50 4C            [24]  704 	jnc	00105$
                                    705 ;	main.c:82: if (hieu_ung_hien_tai != 2) return;
      000212 74 02            [12]  706 	mov	a,#0x02
      000214 B5 0E 06         [24]  707 	cjne	a,_hieu_ung_hien_tai,00168$
      000217 E4               [12]  708 	clr	a
      000218 B5 0F 02         [24]  709 	cjne	a,(_hieu_ung_hien_tai + 1),00168$
      00021B 80 01            [24]  710 	sjmp	00102$
      00021D                        711 00168$:
      00021D 22               [24]  712 	ret
      00021E                        713 00102$:
                                    714 ;	main.c:85: led = ~(hieu_ung_2 | giu_hieu_ung);
      00021E EF               [12]  715 	mov	a,r7
      00021F 4C               [12]  716 	orl	a,r4
      000220 F4               [12]  717 	cpl	a
      000221 F5 90            [12]  718 	mov	_P1,a
                                    719 ;	main.c:86: delay_ms(delayms);
      000223 A8 10            [24]  720 	mov	r0,_delayms
      000225 E5 11            [12]  721 	mov	a,(_delayms + 1)
      000227 F9               [12]  722 	mov	r1,a
      000228 33               [12]  723 	rlc	a
      000229 95 E0            [12]  724 	subb	a,acc
      00022B FD               [12]  725 	mov	r5,a
      00022C 88 82            [24]  726 	mov	dpl,r0
      00022E 89 83            [24]  727 	mov	dph,r1
      000230 8D F0            [24]  728 	mov	b,r5
      000232 C0 07            [24]  729 	push	ar7
      000234 C0 04            [24]  730 	push	ar4
      000236 C0 03            [24]  731 	push	ar3
      000238 C0 02            [24]  732 	push	ar2
      00023A 12 00 81         [24]  733 	lcall	_delay_ms
      00023D D0 02            [24]  734 	pop	ar2
      00023F D0 03            [24]  735 	pop	ar3
      000241 D0 04            [24]  736 	pop	ar4
      000243 D0 07            [24]  737 	pop	ar7
                                    738 ;	main.c:89: if (k != countled - 1) hieu_ung_2 = hieu_ung_2 << 1;
      000245 EA               [12]  739 	mov	a,r2
      000246 B5 0C 06         [24]  740 	cjne	a,_k,00169$
      000249 EB               [12]  741 	mov	a,r3
      00024A B5 0D 02         [24]  742 	cjne	a,(_k + 1),00169$
      00024D 80 05            [24]  743 	sjmp	00112$
      00024F                        744 00169$:
      00024F 8C 06            [24]  745 	mov	ar6,r4
      000251 EE               [12]  746 	mov	a,r6
      000252 2E               [12]  747 	add	a,r6
      000253 FC               [12]  748 	mov	r4,a
      000254                        749 00112$:
                                    750 ;	main.c:80: for (k = 0; k < countled; k++) {
      000254 05 0C            [12]  751 	inc	_k
      000256 E4               [12]  752 	clr	a
      000257 B5 0C A5         [24]  753 	cjne	a,_k,00111$
      00025A 05 0D            [12]  754 	inc	(_k + 1)
      00025C 80 A1            [24]  755 	sjmp	00111$
      00025E                        756 00105$:
                                    757 ;	main.c:92: giu_hieu_ung = hieu_ung_2 | giu_hieu_ung;
      00025E EC               [12]  758 	mov	a,r4
      00025F 42 07            [12]  759 	orl	ar7,a
                                    760 ;	main.c:93: countled--;  // Giảm vòng lặp dịch led
      000261 15 16            [12]  761 	dec	_hieu_ung_2_countled_10001_13
      000263 74 FF            [12]  762 	mov	a,#0xff
      000265 B5 16 02         [24]  763 	cjne	a,_hieu_ung_2_countled_10001_13,00171$
      000268 15 17            [12]  764 	dec	(_hieu_ung_2_countled_10001_13 + 1)
      00026A                        765 00171$:
                                    766 ;	main.c:77: for (j = 0; j < 8; j++) {
      00026A 05 0A            [12]  767 	inc	_j
      00026C E4               [12]  768 	clr	a
      00026D B5 0A 02         [24]  769 	cjne	a,_j,00172$
      000270 05 0B            [12]  770 	inc	(_j + 1)
      000272                        771 00172$:
      000272 C3               [12]  772 	clr	c
      000273 E5 0A            [12]  773 	mov	a,_j
      000275 94 08            [12]  774 	subb	a,#0x08
      000277 E5 0B            [12]  775 	mov	a,(_j + 1)
      000279 64 80            [12]  776 	xrl	a,#0x80
      00027B 94 80            [12]  777 	subb	a,#0x80
      00027D 50 03            [24]  778 	jnc	00173$
      00027F 02 01 EE         [24]  779 	ljmp	00113$
      000282                        780 00173$:
                                    781 ;	main.c:97: for (j = 0; j < 8; j++) {
      000282 E4               [12]  782 	clr	a
      000283 F5 0A            [12]  783 	mov	_j,a
      000285 F5 0B            [12]  784 	mov	(_j + 1),a
      000287                        785 00115$:
                                    786 ;	main.c:99: if (hieu_ung_hien_tai != 2) return;
      000287 74 02            [12]  787 	mov	a,#0x02
      000289 B5 0E 06         [24]  788 	cjne	a,_hieu_ung_hien_tai,00174$
      00028C E4               [12]  789 	clr	a
      00028D B5 0F 02         [24]  790 	cjne	a,(_hieu_ung_hien_tai + 1),00174$
      000290 80 01            [24]  791 	sjmp	00108$
      000292                        792 00174$:
      000292 22               [24]  793 	ret
      000293                        794 00108$:
                                    795 ;	main.c:101: led = ~giu_hieu_ung;
      000293 EF               [12]  796 	mov	a,r7
      000294 F4               [12]  797 	cpl	a
      000295 F5 90            [12]  798 	mov	_P1,a
                                    799 ;	main.c:102: delay_ms(delayms);
      000297 AB 10            [24]  800 	mov	r3,_delayms
      000299 E5 11            [12]  801 	mov	a,(_delayms + 1)
      00029B FC               [12]  802 	mov	r4,a
      00029C 33               [12]  803 	rlc	a
      00029D 95 E0            [12]  804 	subb	a,acc
      00029F FD               [12]  805 	mov	r5,a
      0002A0 8B 82            [24]  806 	mov	dpl,r3
      0002A2 8C 83            [24]  807 	mov	dph,r4
      0002A4 8D F0            [24]  808 	mov	b,r5
      0002A6 C0 07            [24]  809 	push	ar7
      0002A8 12 00 81         [24]  810 	lcall	_delay_ms
      0002AB D0 07            [24]  811 	pop	ar7
                                    812 ;	main.c:104: giu_hieu_ung = giu_hieu_ung >> 1;
      0002AD EF               [12]  813 	mov	a,r7
      0002AE C3               [12]  814 	clr	c
      0002AF 13               [12]  815 	rrc	a
      0002B0 FF               [12]  816 	mov	r7,a
                                    817 ;	main.c:97: for (j = 0; j < 8; j++) {
      0002B1 05 0A            [12]  818 	inc	_j
      0002B3 E4               [12]  819 	clr	a
      0002B4 B5 0A 02         [24]  820 	cjne	a,_j,00175$
      0002B7 05 0B            [12]  821 	inc	(_j + 1)
      0002B9                        822 00175$:
      0002B9 C3               [12]  823 	clr	c
      0002BA E5 0A            [12]  824 	mov	a,_j
      0002BC 94 08            [12]  825 	subb	a,#0x08
      0002BE E5 0B            [12]  826 	mov	a,(_j + 1)
      0002C0 64 80            [12]  827 	xrl	a,#0x80
      0002C2 94 80            [12]  828 	subb	a,#0x80
      0002C4 40 C1            [24]  829 	jc	00115$
                                    830 ;	main.c:106: }
      0002C6 22               [24]  831 	ret
                                    832 ;------------------------------------------------------------
                                    833 ;Allocation info for local variables in function 'hieu_ung_3'
                                    834 ;------------------------------------------------------------
                                    835 ;hieu_ung_3_1              Allocated to registers r7 
                                    836 ;hieu_ung_3_2              Allocated to registers r6 
                                    837 ;------------------------------------------------------------
                                    838 ;	main.c:109: void hieu_ung_3() {
                                    839 ;	-----------------------------------------
                                    840 ;	 function hieu_ung_3
                                    841 ;	-----------------------------------------
      0002C7                        842 _hieu_ung_3:
                                    843 ;	main.c:110: led = 0xFF;  // Tắt tất cả các led
      0002C7 75 90 FF         [24]  844 	mov	_P1,#0xff
                                    845 ;	main.c:111: delay_ms(delayms);
      0002CA AC 10            [24]  846 	mov	r4,_delayms
      0002CC E5 11            [12]  847 	mov	a,(_delayms + 1)
      0002CE FD               [12]  848 	mov	r5,a
      0002CF 33               [12]  849 	rlc	a
      0002D0 95 E0            [12]  850 	subb	a,acc
      0002D2 FE               [12]  851 	mov	r6,a
      0002D3 8C 82            [24]  852 	mov	dpl,r4
      0002D5 8D 83            [24]  853 	mov	dph,r5
      0002D7 8E F0            [24]  854 	mov	b,r6
      0002D9 12 00 81         [24]  855 	lcall	_delay_ms
                                    856 ;	main.c:113: unsigned char hieu_ung_3_1 = 0x01;  // Bật led đầu tiên
      0002DC 7F 01            [12]  857 	mov	r7,#0x01
                                    858 ;	main.c:114: unsigned char hieu_ung_3_2 = 0x80;  // Bật led cuối cùng
      0002DE 7E 80            [12]  859 	mov	r6,#0x80
                                    860 ;	main.c:115: for (j = 0; j < 8; j++) {
      0002E0 E4               [12]  861 	clr	a
      0002E1 F5 0A            [12]  862 	mov	_j,a
      0002E3 F5 0B            [12]  863 	mov	(_j + 1),a
      0002E5                        864 00106$:
                                    865 ;	main.c:117: if (hieu_ung_hien_tai != 3) return;
      0002E5 74 03            [12]  866 	mov	a,#0x03
      0002E7 B5 0E 06         [24]  867 	cjne	a,_hieu_ung_hien_tai,00128$
      0002EA E4               [12]  868 	clr	a
      0002EB B5 0F 02         [24]  869 	cjne	a,(_hieu_ung_hien_tai + 1),00128$
      0002EE 80 01            [24]  870 	sjmp	00102$
      0002F0                        871 00128$:
      0002F0 22               [24]  872 	ret
      0002F1                        873 00102$:
                                    874 ;	main.c:118: led = ~(hieu_ung_3_1 | hieu_ung_3_2);
      0002F1 EE               [12]  875 	mov	a,r6
      0002F2 4F               [12]  876 	orl	a,r7
      0002F3 F4               [12]  877 	cpl	a
      0002F4 F5 90            [12]  878 	mov	_P1,a
                                    879 ;	main.c:121: if (hieu_ung_3_1 != 0x08) delay_ms(delayms);
      0002F6 BF 08 02         [24]  880 	cjne	r7,#0x08,00129$
      0002F9 80 1A            [24]  881 	sjmp	00104$
      0002FB                        882 00129$:
      0002FB AA 10            [24]  883 	mov	r2,_delayms
      0002FD E5 11            [12]  884 	mov	a,(_delayms + 1)
      0002FF FB               [12]  885 	mov	r3,a
      000300 33               [12]  886 	rlc	a
      000301 95 E0            [12]  887 	subb	a,acc
      000303 FC               [12]  888 	mov	r4,a
      000304 8A 82            [24]  889 	mov	dpl,r2
      000306 8B 83            [24]  890 	mov	dph,r3
      000308 8C F0            [24]  891 	mov	b,r4
      00030A C0 07            [24]  892 	push	ar7
      00030C C0 06            [24]  893 	push	ar6
      00030E 12 00 81         [24]  894 	lcall	_delay_ms
      000311 D0 06            [24]  895 	pop	ar6
      000313 D0 07            [24]  896 	pop	ar7
      000315                        897 00104$:
                                    898 ;	main.c:123: hieu_ung_3_1 = hieu_ung_3_1 << 1;
      000315 8F 05            [24]  899 	mov	ar5,r7
      000317 ED               [12]  900 	mov	a,r5
      000318 2D               [12]  901 	add	a,r5
      000319 FF               [12]  902 	mov	r7,a
                                    903 ;	main.c:124: hieu_ung_3_2 = hieu_ung_3_2 >> 1;
      00031A EE               [12]  904 	mov	a,r6
      00031B C3               [12]  905 	clr	c
      00031C 13               [12]  906 	rrc	a
      00031D FE               [12]  907 	mov	r6,a
                                    908 ;	main.c:115: for (j = 0; j < 8; j++) {
      00031E 05 0A            [12]  909 	inc	_j
      000320 E4               [12]  910 	clr	a
      000321 B5 0A 02         [24]  911 	cjne	a,_j,00130$
      000324 05 0B            [12]  912 	inc	(_j + 1)
      000326                        913 00130$:
      000326 C3               [12]  914 	clr	c
      000327 E5 0A            [12]  915 	mov	a,_j
      000329 94 08            [12]  916 	subb	a,#0x08
      00032B E5 0B            [12]  917 	mov	a,(_j + 1)
      00032D 64 80            [12]  918 	xrl	a,#0x80
      00032F 94 80            [12]  919 	subb	a,#0x80
      000331 40 B2            [24]  920 	jc	00106$
                                    921 ;	main.c:126: }
      000333 22               [24]  922 	ret
                                    923 ;------------------------------------------------------------
                                    924 ;Allocation info for local variables in function 'initExtInterrupt'
                                    925 ;------------------------------------------------------------
                                    926 ;	main.c:129: void initExtInterrupt() {
                                    927 ;	-----------------------------------------
                                    928 ;	 function initExtInterrupt
                                    929 ;	-----------------------------------------
      000334                        930 _initExtInterrupt:
                                    931 ;	main.c:130: P3_2 = 1;
                                    932 ;	assignBit
      000334 D2 B2            [12]  933 	setb	_P3_2
                                    934 ;	main.c:131: P3_3 = 1;
                                    935 ;	assignBit
      000336 D2 B3            [12]  936 	setb	_P3_3
                                    937 ;	main.c:132: IT0 = 1;
                                    938 ;	assignBit
      000338 D2 88            [12]  939 	setb	_IT0
                                    940 ;	main.c:133: IT1 = 1;
                                    941 ;	assignBit
      00033A D2 8A            [12]  942 	setb	_IT1
                                    943 ;	main.c:134: IE = 0x85;
      00033C 75 A8 85         [24]  944 	mov	_IE,#0x85
                                    945 ;	main.c:135: }
      00033F 22               [24]  946 	ret
                                    947 ;------------------------------------------------------------
                                    948 ;Allocation info for local variables in function 'ISR0'
                                    949 ;------------------------------------------------------------
                                    950 ;	main.c:138: void ISR0() __interrupt(0) {
                                    951 ;	-----------------------------------------
                                    952 ;	 function ISR0
                                    953 ;	-----------------------------------------
      000340                        954 _ISR0:
      000340 C0 E0            [24]  955 	push	acc
      000342 C0 D0            [24]  956 	push	psw
                                    957 ;	main.c:139: EA = 0;  // Che toàn bộ các ngắt
                                    958 ;	assignBit
      000344 C2 AF            [12]  959 	clr	_EA
                                    960 ;	main.c:141: if (hieu_ung_hien_tai == 1)
      000346 74 01            [12]  961 	mov	a,#0x01
      000348 B5 0E 06         [24]  962 	cjne	a,_hieu_ung_hien_tai,00112$
      00034B 14               [12]  963 	dec	a
      00034C B5 0F 02         [24]  964 	cjne	a,(_hieu_ung_hien_tai + 1),00112$
      00034F 80 02            [24]  965 	sjmp	00113$
      000351                        966 00112$:
      000351 80 08            [24]  967 	sjmp	00102$
      000353                        968 00113$:
                                    969 ;	main.c:142: hieu_ung_hien_tai = 3;
      000353 75 0E 03         [24]  970 	mov	_hieu_ung_hien_tai,#0x03
      000356 75 0F 00         [24]  971 	mov	(_hieu_ung_hien_tai + 1),#0x00
      000359 80 09            [24]  972 	sjmp	00103$
      00035B                        973 00102$:
                                    974 ;	main.c:144: hieu_ung_hien_tai--;
      00035B 15 0E            [12]  975 	dec	_hieu_ung_hien_tai
      00035D 74 FF            [12]  976 	mov	a,#0xff
      00035F B5 0E 02         [24]  977 	cjne	a,_hieu_ung_hien_tai,00114$
      000362 15 0F            [12]  978 	dec	(_hieu_ung_hien_tai + 1)
      000364                        979 00114$:
      000364                        980 00103$:
                                    981 ;	main.c:145: EA = 1;  // Cho phép ngắt toàn cục
                                    982 ;	assignBit
      000364 D2 AF            [12]  983 	setb	_EA
                                    984 ;	main.c:146: }
      000366 D0 D0            [24]  985 	pop	psw
      000368 D0 E0            [24]  986 	pop	acc
      00036A 32               [24]  987 	reti
                                    988 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    989 ;	eliminated unneeded push/pop dpl
                                    990 ;	eliminated unneeded push/pop dph
                                    991 ;	eliminated unneeded push/pop b
                                    992 ;------------------------------------------------------------
                                    993 ;Allocation info for local variables in function 'ISR1'
                                    994 ;------------------------------------------------------------
                                    995 ;	main.c:149: void ISR1() __interrupt(2) {
                                    996 ;	-----------------------------------------
                                    997 ;	 function ISR1
                                    998 ;	-----------------------------------------
      00036B                        999 _ISR1:
      00036B C0 E0            [24] 1000 	push	acc
      00036D C0 D0            [24] 1001 	push	psw
                                   1002 ;	main.c:150: EA = 0;  // Che toàn bộ các ngắt
                                   1003 ;	assignBit
      00036F C2 AF            [12] 1004 	clr	_EA
                                   1005 ;	main.c:152: if (hieu_ung_hien_tai == 3)
      000371 74 03            [12] 1006 	mov	a,#0x03
      000373 B5 0E 06         [24] 1007 	cjne	a,_hieu_ung_hien_tai,00112$
      000376 E4               [12] 1008 	clr	a
      000377 B5 0F 02         [24] 1009 	cjne	a,(_hieu_ung_hien_tai + 1),00112$
      00037A 80 02            [24] 1010 	sjmp	00113$
      00037C                       1011 00112$:
      00037C 80 08            [24] 1012 	sjmp	00102$
      00037E                       1013 00113$:
                                   1014 ;	main.c:153: hieu_ung_hien_tai = 1;
      00037E 75 0E 01         [24] 1015 	mov	_hieu_ung_hien_tai,#0x01
      000381 75 0F 00         [24] 1016 	mov	(_hieu_ung_hien_tai + 1),#0x00
      000384 80 08            [24] 1017 	sjmp	00103$
      000386                       1018 00102$:
                                   1019 ;	main.c:155: hieu_ung_hien_tai++;
      000386 05 0E            [12] 1020 	inc	_hieu_ung_hien_tai
      000388 E4               [12] 1021 	clr	a
      000389 B5 0E 02         [24] 1022 	cjne	a,_hieu_ung_hien_tai,00114$
      00038C 05 0F            [12] 1023 	inc	(_hieu_ung_hien_tai + 1)
      00038E                       1024 00114$:
      00038E                       1025 00103$:
                                   1026 ;	main.c:156: EA = 1;  // Cho phép ngắt toàn cục
                                   1027 ;	assignBit
      00038E D2 AF            [12] 1028 	setb	_EA
                                   1029 ;	main.c:157: }
      000390 D0 D0            [24] 1030 	pop	psw
      000392 D0 E0            [24] 1031 	pop	acc
      000394 32               [24] 1032 	reti
                                   1033 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1034 ;	eliminated unneeded push/pop dpl
                                   1035 ;	eliminated unneeded push/pop dph
                                   1036 ;	eliminated unneeded push/pop b
                                   1037 ;------------------------------------------------------------
                                   1038 ;Allocation info for local variables in function 'main'
                                   1039 ;------------------------------------------------------------
                                   1040 ;	main.c:159: int main() {
                                   1041 ;	-----------------------------------------
                                   1042 ;	 function main
                                   1043 ;	-----------------------------------------
      000395                       1044 _main:
                                   1045 ;	main.c:161: initExtInterrupt();
      000395 12 03 34         [24] 1046 	lcall	_initExtInterrupt
                                   1047 ;	main.c:162: while (1) {
      000398                       1048 00110$:
                                   1049 ;	main.c:164: if (hieu_ung_hien_tai == 1) {
      000398 74 01            [12] 1050 	mov	a,#0x01
      00039A B5 0E 06         [24] 1051 	cjne	a,_hieu_ung_hien_tai,00138$
      00039D 14               [12] 1052 	dec	a
      00039E B5 0F 02         [24] 1053 	cjne	a,(_hieu_ung_hien_tai + 1),00138$
      0003A1 80 02            [24] 1054 	sjmp	00139$
      0003A3                       1055 00138$:
      0003A3 80 05            [24] 1056 	sjmp	00107$
      0003A5                       1057 00139$:
                                   1058 ;	main.c:165: hieu_ung_1();
      0003A5 12 01 2B         [24] 1059 	lcall	_hieu_ung_1
      0003A8 80 EE            [24] 1060 	sjmp	00110$
      0003AA                       1061 00107$:
                                   1062 ;	main.c:166: } else if (hieu_ung_hien_tai == 2) {
      0003AA 74 02            [12] 1063 	mov	a,#0x02
      0003AC B5 0E 06         [24] 1064 	cjne	a,_hieu_ung_hien_tai,00140$
      0003AF E4               [12] 1065 	clr	a
      0003B0 B5 0F 02         [24] 1066 	cjne	a,(_hieu_ung_hien_tai + 1),00140$
      0003B3 80 02            [24] 1067 	sjmp	00141$
      0003B5                       1068 00140$:
      0003B5 80 05            [24] 1069 	sjmp	00104$
      0003B7                       1070 00141$:
                                   1071 ;	main.c:167: hieu_ung_2();
      0003B7 12 01 CE         [24] 1072 	lcall	_hieu_ung_2
      0003BA 80 DC            [24] 1073 	sjmp	00110$
      0003BC                       1074 00104$:
                                   1075 ;	main.c:168: } else if (hieu_ung_hien_tai == 3) {
      0003BC 74 03            [12] 1076 	mov	a,#0x03
      0003BE B5 0E 06         [24] 1077 	cjne	a,_hieu_ung_hien_tai,00142$
      0003C1 E4               [12] 1078 	clr	a
      0003C2 B5 0F 02         [24] 1079 	cjne	a,(_hieu_ung_hien_tai + 1),00142$
      0003C5 80 02            [24] 1080 	sjmp	00143$
      0003C7                       1081 00142$:
      0003C7 80 CF            [24] 1082 	sjmp	00110$
      0003C9                       1083 00143$:
                                   1084 ;	main.c:169: hieu_ung_3();
      0003C9 12 02 C7         [24] 1085 	lcall	_hieu_ung_3
                                   1086 ;	main.c:172: }
      0003CC 80 CA            [24] 1087 	sjmp	00110$
                                   1088 	.area CSEG    (CODE)
                                   1089 	.area CONST   (CODE)
                                   1090 	.area XINIT   (CODE)
                                   1091 	.area CABS    (ABS,CODE)
