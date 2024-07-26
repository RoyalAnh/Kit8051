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
                                     18 	.globl _send_led_state
                                     19 	.globl _uart_send_string
                                     20 	.globl _uart_send_char
                                     21 	.globl _uart_init
                                     22 	.globl _delay_ms
                                     23 	.globl _TF2
                                     24 	.globl _EXF2
                                     25 	.globl _RCLK
                                     26 	.globl _TCLK
                                     27 	.globl _EXEN2
                                     28 	.globl _TR2
                                     29 	.globl _C_T2
                                     30 	.globl _CP_RL2
                                     31 	.globl _T2CON_7
                                     32 	.globl _T2CON_6
                                     33 	.globl _T2CON_5
                                     34 	.globl _T2CON_4
                                     35 	.globl _T2CON_3
                                     36 	.globl _T2CON_2
                                     37 	.globl _T2CON_1
                                     38 	.globl _T2CON_0
                                     39 	.globl _PT2
                                     40 	.globl _ET2
                                     41 	.globl _CY
                                     42 	.globl _AC
                                     43 	.globl _F0
                                     44 	.globl _RS1
                                     45 	.globl _RS0
                                     46 	.globl _OV
                                     47 	.globl _F1
                                     48 	.globl _P
                                     49 	.globl _PS
                                     50 	.globl _PT1
                                     51 	.globl _PX1
                                     52 	.globl _PT0
                                     53 	.globl _PX0
                                     54 	.globl _RD
                                     55 	.globl _WR
                                     56 	.globl _T1
                                     57 	.globl _T0
                                     58 	.globl _INT1
                                     59 	.globl _INT0
                                     60 	.globl _TXD
                                     61 	.globl _RXD
                                     62 	.globl _P3_7
                                     63 	.globl _P3_6
                                     64 	.globl _P3_5
                                     65 	.globl _P3_4
                                     66 	.globl _P3_3
                                     67 	.globl _P3_2
                                     68 	.globl _P3_1
                                     69 	.globl _P3_0
                                     70 	.globl _EA
                                     71 	.globl _ES
                                     72 	.globl _ET1
                                     73 	.globl _EX1
                                     74 	.globl _ET0
                                     75 	.globl _EX0
                                     76 	.globl _P2_7
                                     77 	.globl _P2_6
                                     78 	.globl _P2_5
                                     79 	.globl _P2_4
                                     80 	.globl _P2_3
                                     81 	.globl _P2_2
                                     82 	.globl _P2_1
                                     83 	.globl _P2_0
                                     84 	.globl _SM0
                                     85 	.globl _SM1
                                     86 	.globl _SM2
                                     87 	.globl _REN
                                     88 	.globl _TB8
                                     89 	.globl _RB8
                                     90 	.globl _TI
                                     91 	.globl _RI
                                     92 	.globl _P1_7
                                     93 	.globl _P1_6
                                     94 	.globl _P1_5
                                     95 	.globl _P1_4
                                     96 	.globl _P1_3
                                     97 	.globl _P1_2
                                     98 	.globl _P1_1
                                     99 	.globl _P1_0
                                    100 	.globl _TF1
                                    101 	.globl _TR1
                                    102 	.globl _TF0
                                    103 	.globl _TR0
                                    104 	.globl _IE1
                                    105 	.globl _IT1
                                    106 	.globl _IE0
                                    107 	.globl _IT0
                                    108 	.globl _P0_7
                                    109 	.globl _P0_6
                                    110 	.globl _P0_5
                                    111 	.globl _P0_4
                                    112 	.globl _P0_3
                                    113 	.globl _P0_2
                                    114 	.globl _P0_1
                                    115 	.globl _P0_0
                                    116 	.globl _TH2
                                    117 	.globl _TL2
                                    118 	.globl _RCAP2H
                                    119 	.globl _RCAP2L
                                    120 	.globl _T2CON
                                    121 	.globl _B
                                    122 	.globl _ACC
                                    123 	.globl _PSW
                                    124 	.globl _IP
                                    125 	.globl _P3
                                    126 	.globl _IE
                                    127 	.globl _P2
                                    128 	.globl _SBUF
                                    129 	.globl _SCON
                                    130 	.globl _P1
                                    131 	.globl _TH1
                                    132 	.globl _TH0
                                    133 	.globl _TL1
                                    134 	.globl _TL0
                                    135 	.globl _TMOD
                                    136 	.globl _TCON
                                    137 	.globl _PCON
                                    138 	.globl _DPH
                                    139 	.globl _DPL
                                    140 	.globl _SP
                                    141 	.globl _P0
                                    142 	.globl _delayms
                                    143 	.globl _hieu_ung_hien_tai
                                    144 	.globl _k
                                    145 	.globl _j
                                    146 	.globl _i
                                    147 ;--------------------------------------------------------
                                    148 ; special function registers
                                    149 ;--------------------------------------------------------
                                    150 	.area RSEG    (ABS,DATA)
      000000                        151 	.org 0x0000
                           000080   152 _P0	=	0x0080
                           000081   153 _SP	=	0x0081
                           000082   154 _DPL	=	0x0082
                           000083   155 _DPH	=	0x0083
                           000087   156 _PCON	=	0x0087
                           000088   157 _TCON	=	0x0088
                           000089   158 _TMOD	=	0x0089
                           00008A   159 _TL0	=	0x008a
                           00008B   160 _TL1	=	0x008b
                           00008C   161 _TH0	=	0x008c
                           00008D   162 _TH1	=	0x008d
                           000090   163 _P1	=	0x0090
                           000098   164 _SCON	=	0x0098
                           000099   165 _SBUF	=	0x0099
                           0000A0   166 _P2	=	0x00a0
                           0000A8   167 _IE	=	0x00a8
                           0000B0   168 _P3	=	0x00b0
                           0000B8   169 _IP	=	0x00b8
                           0000D0   170 _PSW	=	0x00d0
                           0000E0   171 _ACC	=	0x00e0
                           0000F0   172 _B	=	0x00f0
                           0000C8   173 _T2CON	=	0x00c8
                           0000CA   174 _RCAP2L	=	0x00ca
                           0000CB   175 _RCAP2H	=	0x00cb
                           0000CC   176 _TL2	=	0x00cc
                           0000CD   177 _TH2	=	0x00cd
                                    178 ;--------------------------------------------------------
                                    179 ; special function bits
                                    180 ;--------------------------------------------------------
                                    181 	.area RSEG    (ABS,DATA)
      000000                        182 	.org 0x0000
                           000080   183 _P0_0	=	0x0080
                           000081   184 _P0_1	=	0x0081
                           000082   185 _P0_2	=	0x0082
                           000083   186 _P0_3	=	0x0083
                           000084   187 _P0_4	=	0x0084
                           000085   188 _P0_5	=	0x0085
                           000086   189 _P0_6	=	0x0086
                           000087   190 _P0_7	=	0x0087
                           000088   191 _IT0	=	0x0088
                           000089   192 _IE0	=	0x0089
                           00008A   193 _IT1	=	0x008a
                           00008B   194 _IE1	=	0x008b
                           00008C   195 _TR0	=	0x008c
                           00008D   196 _TF0	=	0x008d
                           00008E   197 _TR1	=	0x008e
                           00008F   198 _TF1	=	0x008f
                           000090   199 _P1_0	=	0x0090
                           000091   200 _P1_1	=	0x0091
                           000092   201 _P1_2	=	0x0092
                           000093   202 _P1_3	=	0x0093
                           000094   203 _P1_4	=	0x0094
                           000095   204 _P1_5	=	0x0095
                           000096   205 _P1_6	=	0x0096
                           000097   206 _P1_7	=	0x0097
                           000098   207 _RI	=	0x0098
                           000099   208 _TI	=	0x0099
                           00009A   209 _RB8	=	0x009a
                           00009B   210 _TB8	=	0x009b
                           00009C   211 _REN	=	0x009c
                           00009D   212 _SM2	=	0x009d
                           00009E   213 _SM1	=	0x009e
                           00009F   214 _SM0	=	0x009f
                           0000A0   215 _P2_0	=	0x00a0
                           0000A1   216 _P2_1	=	0x00a1
                           0000A2   217 _P2_2	=	0x00a2
                           0000A3   218 _P2_3	=	0x00a3
                           0000A4   219 _P2_4	=	0x00a4
                           0000A5   220 _P2_5	=	0x00a5
                           0000A6   221 _P2_6	=	0x00a6
                           0000A7   222 _P2_7	=	0x00a7
                           0000A8   223 _EX0	=	0x00a8
                           0000A9   224 _ET0	=	0x00a9
                           0000AA   225 _EX1	=	0x00aa
                           0000AB   226 _ET1	=	0x00ab
                           0000AC   227 _ES	=	0x00ac
                           0000AF   228 _EA	=	0x00af
                           0000B0   229 _P3_0	=	0x00b0
                           0000B1   230 _P3_1	=	0x00b1
                           0000B2   231 _P3_2	=	0x00b2
                           0000B3   232 _P3_3	=	0x00b3
                           0000B4   233 _P3_4	=	0x00b4
                           0000B5   234 _P3_5	=	0x00b5
                           0000B6   235 _P3_6	=	0x00b6
                           0000B7   236 _P3_7	=	0x00b7
                           0000B0   237 _RXD	=	0x00b0
                           0000B1   238 _TXD	=	0x00b1
                           0000B2   239 _INT0	=	0x00b2
                           0000B3   240 _INT1	=	0x00b3
                           0000B4   241 _T0	=	0x00b4
                           0000B5   242 _T1	=	0x00b5
                           0000B6   243 _WR	=	0x00b6
                           0000B7   244 _RD	=	0x00b7
                           0000B8   245 _PX0	=	0x00b8
                           0000B9   246 _PT0	=	0x00b9
                           0000BA   247 _PX1	=	0x00ba
                           0000BB   248 _PT1	=	0x00bb
                           0000BC   249 _PS	=	0x00bc
                           0000D0   250 _P	=	0x00d0
                           0000D1   251 _F1	=	0x00d1
                           0000D2   252 _OV	=	0x00d2
                           0000D3   253 _RS0	=	0x00d3
                           0000D4   254 _RS1	=	0x00d4
                           0000D5   255 _F0	=	0x00d5
                           0000D6   256 _AC	=	0x00d6
                           0000D7   257 _CY	=	0x00d7
                           0000AD   258 _ET2	=	0x00ad
                           0000BD   259 _PT2	=	0x00bd
                           0000C8   260 _T2CON_0	=	0x00c8
                           0000C9   261 _T2CON_1	=	0x00c9
                           0000CA   262 _T2CON_2	=	0x00ca
                           0000CB   263 _T2CON_3	=	0x00cb
                           0000CC   264 _T2CON_4	=	0x00cc
                           0000CD   265 _T2CON_5	=	0x00cd
                           0000CE   266 _T2CON_6	=	0x00ce
                           0000CF   267 _T2CON_7	=	0x00cf
                           0000C8   268 _CP_RL2	=	0x00c8
                           0000C9   269 _C_T2	=	0x00c9
                           0000CA   270 _TR2	=	0x00ca
                           0000CB   271 _EXEN2	=	0x00cb
                           0000CC   272 _TCLK	=	0x00cc
                           0000CD   273 _RCLK	=	0x00cd
                           0000CE   274 _EXF2	=	0x00ce
                           0000CF   275 _TF2	=	0x00cf
                                    276 ;--------------------------------------------------------
                                    277 ; overlayable register banks
                                    278 ;--------------------------------------------------------
                                    279 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        280 	.ds 8
                                    281 ;--------------------------------------------------------
                                    282 ; internal ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area DSEG    (DATA)
      000008                        285 _i::
      000008                        286 	.ds 2
      00000A                        287 _j::
      00000A                        288 	.ds 2
      00000C                        289 _k::
      00000C                        290 	.ds 2
      00000E                        291 _hieu_ung_hien_tai::
      00000E                        292 	.ds 2
      000010                        293 _delayms::
      000010                        294 	.ds 2
      000012                        295 _delay_ms_ms_10000_14:
      000012                        296 	.ds 4
      000016                        297 _send_led_state_buffer_10000_25:
      000016                        298 	.ds 20
      00002A                        299 _send_led_state_led_state_10000_25:
      00002A                        300 	.ds 1
      00002B                        301 _send_led_state_i_20000_26:
      00002B                        302 	.ds 2
      00002D                        303 _hieu_ung_2_countled_10001_36:
      00002D                        304 	.ds 2
                                    305 ;--------------------------------------------------------
                                    306 ; overlayable items in internal ram
                                    307 ;--------------------------------------------------------
                                    308 	.area	OSEG    (OVR,DATA)
                                    309 ;--------------------------------------------------------
                                    310 ; Stack segment in internal ram
                                    311 ;--------------------------------------------------------
                                    312 	.area SSEG
      000033                        313 __start__stack:
      000033                        314 	.ds	1
                                    315 
                                    316 ;--------------------------------------------------------
                                    317 ; indirectly addressable internal ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area ISEG    (DATA)
                                    320 ;--------------------------------------------------------
                                    321 ; absolute internal ram data
                                    322 ;--------------------------------------------------------
                                    323 	.area IABS    (ABS,DATA)
                                    324 	.area IABS    (ABS,DATA)
                                    325 ;--------------------------------------------------------
                                    326 ; bit data
                                    327 ;--------------------------------------------------------
                                    328 	.area BSEG    (BIT)
                                    329 ;--------------------------------------------------------
                                    330 ; paged external ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area PSEG    (PAG,XDATA)
                                    333 ;--------------------------------------------------------
                                    334 ; uninitialized external ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area XSEG    (XDATA)
                                    337 ;--------------------------------------------------------
                                    338 ; absolute external ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area XABS    (ABS,XDATA)
                                    341 ;--------------------------------------------------------
                                    342 ; initialized external ram data
                                    343 ;--------------------------------------------------------
                                    344 	.area XISEG   (XDATA)
                                    345 	.area HOME    (CODE)
                                    346 	.area GSINIT0 (CODE)
                                    347 	.area GSINIT1 (CODE)
                                    348 	.area GSINIT2 (CODE)
                                    349 	.area GSINIT3 (CODE)
                                    350 	.area GSINIT4 (CODE)
                                    351 	.area GSINIT5 (CODE)
                                    352 	.area GSINIT  (CODE)
                                    353 	.area GSFINAL (CODE)
                                    354 	.area CSEG    (CODE)
                                    355 ;--------------------------------------------------------
                                    356 ; interrupt vector
                                    357 ;--------------------------------------------------------
                                    358 	.area HOME    (CODE)
      000000                        359 __interrupt_vect:
      000000 02 00 19         [24]  360 	ljmp	__sdcc_gsinit_startup
      000003 02 04 17         [24]  361 	ljmp	_ISR0
      000006                        362 	.ds	5
      00000B 32               [24]  363 	reti
      00000C                        364 	.ds	7
      000013 02 04 42         [24]  365 	ljmp	_ISR1
                                    366 ;--------------------------------------------------------
                                    367 ; global & static initialisations
                                    368 ;--------------------------------------------------------
                                    369 	.area HOME    (CODE)
                                    370 	.area GSINIT  (CODE)
                                    371 	.area GSFINAL (CODE)
                                    372 	.area GSINIT  (CODE)
                                    373 	.globl __sdcc_gsinit_startup
                                    374 	.globl __sdcc_program_startup
                                    375 	.globl __start__stack
                                    376 	.globl __mcs51_genXINIT
                                    377 	.globl __mcs51_genXRAMCLEAR
                                    378 	.globl __mcs51_genRAMCLEAR
                                    379 ;	main.c:7: int hieu_ung_hien_tai = 1;  // 3 hiệu ứng tương ứng với 1, 2 và 3
      000072 75 0E 01         [24]  380 	mov	_hieu_ung_hien_tai,#0x01
      000075 75 0F 00         [24]  381 	mov	(_hieu_ung_hien_tai + 1),#0x00
                                    382 ;	main.c:8: int delayms = 100;          // Thời gian trễ giữa các lần sáng led
      000078 75 10 64         [24]  383 	mov	_delayms,#0x64
      00007B 75 11 00         [24]  384 	mov	(_delayms + 1),#0x00
                                    385 	.area GSFINAL (CODE)
      00007E 02 00 16         [24]  386 	ljmp	__sdcc_program_startup
                                    387 ;--------------------------------------------------------
                                    388 ; Home
                                    389 ;--------------------------------------------------------
                                    390 	.area HOME    (CODE)
                                    391 	.area HOME    (CODE)
      000016                        392 __sdcc_program_startup:
      000016 02 04 6C         [24]  393 	ljmp	_main
                                    394 ;	return from main will return to caller
                                    395 ;--------------------------------------------------------
                                    396 ; code
                                    397 ;--------------------------------------------------------
                                    398 	.area CSEG    (CODE)
                                    399 ;------------------------------------------------------------
                                    400 ;Allocation info for local variables in function 'delay_ms'
                                    401 ;------------------------------------------------------------
                                    402 ;ms                        Allocated with name '_delay_ms_ms_10000_14'
                                    403 ;------------------------------------------------------------
                                    404 ;	main.c:10: void delay_ms(long ms) {
                                    405 ;	-----------------------------------------
                                    406 ;	 function delay_ms
                                    407 ;	-----------------------------------------
      000081                        408 _delay_ms:
                           000007   409 	ar7 = 0x07
                           000006   410 	ar6 = 0x06
                           000005   411 	ar5 = 0x05
                           000004   412 	ar4 = 0x04
                           000003   413 	ar3 = 0x03
                           000002   414 	ar2 = 0x02
                           000001   415 	ar1 = 0x01
                           000000   416 	ar0 = 0x00
      000081 85 82 2F         [24]  417 	mov	__mullong_PARM_2,dpl
      000084 85 83 30         [24]  418 	mov	(__mullong_PARM_2 + 1),dph
      000087 85 F0 31         [24]  419 	mov	(__mullong_PARM_2 + 2),b
      00008A F5 32            [12]  420 	mov	(__mullong_PARM_2 + 3),a
                                    421 ;	main.c:11: ms *= 1000;
      00008C 90 03 E8         [24]  422 	mov	dptr,#0x03e8
      00008F E4               [12]  423 	clr	a
      000090 F5 F0            [12]  424 	mov	b,a
      000092 12 05 90         [24]  425 	lcall	__mullong
      000095 AC 82            [24]  426 	mov	r4, dpl
      000097 AD 83            [24]  427 	mov	r5, dph
      000099 AE F0            [24]  428 	mov	r6, b
      00009B FF               [12]  429 	mov	r7, a
                                    430 ;	main.c:12: while (ms > 0) {
      00009C                        431 00107$:
      00009C C3               [12]  432 	clr	c
      00009D E4               [12]  433 	clr	a
      00009E 9C               [12]  434 	subb	a,r4
      00009F E4               [12]  435 	clr	a
      0000A0 9D               [12]  436 	subb	a,r5
      0000A1 E4               [12]  437 	clr	a
      0000A2 9E               [12]  438 	subb	a,r6
      0000A3 74 80            [12]  439 	mov	a,#(0x00 ^ 0x80)
      0000A5 8F F0            [24]  440 	mov	b,r7
      0000A7 63 F0 80         [24]  441 	xrl	b,#0x80
      0000AA 95 F0            [12]  442 	subb	a,b
      0000AC 40 01            [24]  443 	jc	00147$
      0000AE 22               [24]  444 	ret
      0000AF                        445 00147$:
                                    446 ;	main.c:13: TMOD = TMOD & 0xF0; // xóa các bit cấu hình cho TImer 0 ko ảnh hưởng đến Timer 1
      0000AF 53 89 F0         [24]  447 	anl	_TMOD,#0xf0
                                    448 ;	main.c:14: TMOD = TMOD | 0x01; // thiết lập bit thấp nhât, cấu hình TImer 0 chế độ 1
      0000B2 43 89 01         [24]  449 	orl	_TMOD,#0x01
                                    450 ;	main.c:15: ET0 = 0;
                                    451 ;	assignBit
      0000B5 C2 A9            [12]  452 	clr	_ET0
                                    453 ;	main.c:16: if (ms >= 65536) {
      0000B7 C3               [12]  454 	clr	c
      0000B8 EE               [12]  455 	mov	a,r6
      0000B9 94 01            [12]  456 	subb	a,#0x01
      0000BB EF               [12]  457 	mov	a,r7
      0000BC 64 80            [12]  458 	xrl	a,#0x80
      0000BE 94 80            [12]  459 	subb	a,#0x80
      0000C0 40 0F            [24]  460 	jc	00102$
                                    461 ;	main.c:17: TH0 = 0;
                                    462 ;	main.c:18: TL0 = 0;
                                    463 ;	main.c:19: ms -= 65536;
      0000C2 E4               [12]  464 	clr	a
      0000C3 F5 8C            [12]  465 	mov	_TH0,a
      0000C5 F5 8A            [12]  466 	mov	_TL0,a
      0000C7 EE               [12]  467 	mov	a,r6
      0000C8 24 FF            [12]  468 	add	a,#0xff
      0000CA FE               [12]  469 	mov	r6,a
      0000CB EF               [12]  470 	mov	a,r7
      0000CC 34 FF            [12]  471 	addc	a,#0xff
      0000CE FF               [12]  472 	mov	r7,a
      0000CF 80 4E            [24]  473 	sjmp	00103$
      0000D1                        474 00102$:
                                    475 ;	main.c:21: ms = 65536 - ms;
      0000D1 E4               [12]  476 	clr	a
      0000D2 C3               [12]  477 	clr	c
      0000D3 9C               [12]  478 	subb	a,r4
      0000D4 F5 12            [12]  479 	mov	_delay_ms_ms_10000_14,a
      0000D6 E4               [12]  480 	clr	a
      0000D7 9D               [12]  481 	subb	a,r5
      0000D8 F5 13            [12]  482 	mov	(_delay_ms_ms_10000_14 + 1),a
      0000DA 74 01            [12]  483 	mov	a,#0x01
      0000DC 9E               [12]  484 	subb	a,r6
      0000DD F5 14            [12]  485 	mov	(_delay_ms_ms_10000_14 + 2),a
      0000DF E4               [12]  486 	clr	a
      0000E0 9F               [12]  487 	subb	a,r7
      0000E1 F5 15            [12]  488 	mov	(_delay_ms_ms_10000_14 + 3),a
                                    489 ;	main.c:22: TH0 = ms / 256;
      0000E3 E4               [12]  490 	clr	a
      0000E4 F5 2F            [12]  491 	mov	__divslong_PARM_2,a
      0000E6 75 30 01         [24]  492 	mov	(__divslong_PARM_2 + 1),#0x01
      0000E9 F5 31            [12]  493 	mov	(__divslong_PARM_2 + 2),a
      0000EB F5 32            [12]  494 	mov	(__divslong_PARM_2 + 3),a
      0000ED 85 12 82         [24]  495 	mov	dpl, _delay_ms_ms_10000_14
      0000F0 85 13 83         [24]  496 	mov	dph, (_delay_ms_ms_10000_14 + 1)
      0000F3 85 14 F0         [24]  497 	mov	b, (_delay_ms_ms_10000_14 + 2)
      0000F6 12 06 4D         [24]  498 	lcall	__divslong
      0000F9 A8 82            [24]  499 	mov	r0, dpl
      0000FB 88 8C            [24]  500 	mov	_TH0,r0
                                    501 ;	main.c:23: TL0 = ms % 256;
      0000FD E4               [12]  502 	clr	a
      0000FE F5 2F            [12]  503 	mov	__modslong_PARM_2,a
      000100 75 30 01         [24]  504 	mov	(__modslong_PARM_2 + 1),#0x01
      000103 F5 31            [12]  505 	mov	(__modslong_PARM_2 + 2),a
      000105 F5 32            [12]  506 	mov	(__modslong_PARM_2 + 3),a
      000107 85 12 82         [24]  507 	mov	dpl, _delay_ms_ms_10000_14
      00010A 85 13 83         [24]  508 	mov	dph, (_delay_ms_ms_10000_14 + 1)
      00010D 85 14 F0         [24]  509 	mov	b, (_delay_ms_ms_10000_14 + 2)
      000110 12 05 FE         [24]  510 	lcall	__modslong
      000113 A8 82            [24]  511 	mov	r0, dpl
      000115 88 8A            [24]  512 	mov	_TL0,r0
                                    513 ;	main.c:24: ms = 0;
      000117 7C 00            [12]  514 	mov	r4,#0x00
      000119 7D 00            [12]  515 	mov	r5,#0x00
      00011B 7E 00            [12]  516 	mov	r6,#0x00
      00011D 7F 00            [12]  517 	mov	r7,#0x00
      00011F                        518 00103$:
                                    519 ;	main.c:26: TF0 = 0;
                                    520 ;	assignBit
      00011F C2 8D            [12]  521 	clr	_TF0
                                    522 ;	main.c:27: TR0 = 1;
                                    523 ;	assignBit
      000121 D2 8C            [12]  524 	setb	_TR0
                                    525 ;	main.c:28: while (TF0 == 0);
      000123                        526 00104$:
      000123 30 8D FD         [24]  527 	jnb	_TF0,00104$
                                    528 ;	main.c:29: TR0 = 0;
                                    529 ;	assignBit
      000126 C2 8C            [12]  530 	clr	_TR0
                                    531 ;	main.c:31: }
      000128 02 00 9C         [24]  532 	ljmp	00107$
                                    533 ;------------------------------------------------------------
                                    534 ;Allocation info for local variables in function 'uart_init'
                                    535 ;------------------------------------------------------------
                                    536 ;	main.c:33: void uart_init() {
                                    537 ;	-----------------------------------------
                                    538 ;	 function uart_init
                                    539 ;	-----------------------------------------
      00012B                        540 _uart_init:
                                    541 ;	main.c:34: TMOD |= 0x20;  // Timer 1 ở chế độ 2
      00012B 43 89 20         [24]  542 	orl	_TMOD,#0x20
                                    543 ;	main.c:35: TH1 = 0xFD;    // Baud rate 9600 cho 11.0592 MHz
      00012E 75 8D FD         [24]  544 	mov	_TH1,#0xfd
                                    545 ;	main.c:36: SCON = 0x50;   // Chế độ UART 8-bit, cho phép nhận dữ liệu (thanh ghi đk nt)
      000131 75 98 50         [24]  546 	mov	_SCON,#0x50
                                    547 ;	main.c:37: TR1 = 1;
                                    548 ;	assignBit
      000134 D2 8E            [12]  549 	setb	_TR1
                                    550 ;	main.c:38: }
      000136 22               [24]  551 	ret
                                    552 ;------------------------------------------------------------
                                    553 ;Allocation info for local variables in function 'uart_send_char'
                                    554 ;------------------------------------------------------------
                                    555 ;c                         Allocated to registers 
                                    556 ;------------------------------------------------------------
                                    557 ;	main.c:40: void uart_send_char(char c) {
                                    558 ;	-----------------------------------------
                                    559 ;	 function uart_send_char
                                    560 ;	-----------------------------------------
      000137                        561 _uart_send_char:
      000137 85 82 99         [24]  562 	mov	_SBUF,dpl
                                    563 ;	main.c:42: while (TI == 0);
      00013A                        564 00101$:
                                    565 ;	main.c:43: TI = 0;
                                    566 ;	assignBit
      00013A 10 99 02         [24]  567 	jbc	_TI,00118$
      00013D 80 FB            [24]  568 	sjmp	00101$
      00013F                        569 00118$:
                                    570 ;	main.c:44: }
      00013F 22               [24]  571 	ret
                                    572 ;------------------------------------------------------------
                                    573 ;Allocation info for local variables in function 'uart_send_string'
                                    574 ;------------------------------------------------------------
                                    575 ;str                       Allocated to registers 
                                    576 ;------------------------------------------------------------
                                    577 ;	main.c:46: void uart_send_string(char* str) {
                                    578 ;	-----------------------------------------
                                    579 ;	 function uart_send_string
                                    580 ;	-----------------------------------------
      000140                        581 _uart_send_string:
      000140 AD 82            [24]  582 	mov	r5, dpl
      000142 AE 83            [24]  583 	mov	r6, dph
      000144 AF F0            [24]  584 	mov	r7, b
                                    585 ;	main.c:47: while (*str) {
      000146                        586 00101$:
      000146 8D 82            [24]  587 	mov	dpl,r5
      000148 8E 83            [24]  588 	mov	dph,r6
      00014A 8F F0            [24]  589 	mov	b,r7
      00014C 12 06 9F         [24]  590 	lcall	__gptrget
      00014F FC               [12]  591 	mov	r4,a
      000150 60 18            [24]  592 	jz	00104$
                                    593 ;	main.c:48: uart_send_char(*str++);
      000152 8C 82            [24]  594 	mov	dpl,r4
      000154 0D               [12]  595 	inc	r5
      000155 BD 00 01         [24]  596 	cjne	r5,#0x00,00120$
      000158 0E               [12]  597 	inc	r6
      000159                        598 00120$:
      000159 C0 07            [24]  599 	push	ar7
      00015B C0 06            [24]  600 	push	ar6
      00015D C0 05            [24]  601 	push	ar5
      00015F 12 01 37         [24]  602 	lcall	_uart_send_char
      000162 D0 05            [24]  603 	pop	ar5
      000164 D0 06            [24]  604 	pop	ar6
      000166 D0 07            [24]  605 	pop	ar7
      000168 80 DC            [24]  606 	sjmp	00101$
      00016A                        607 00104$:
                                    608 ;	main.c:50: }
      00016A 22               [24]  609 	ret
                                    610 ;------------------------------------------------------------
                                    611 ;Allocation info for local variables in function 'send_led_state'
                                    612 ;------------------------------------------------------------
                                    613 ;buffer                    Allocated with name '_send_led_state_buffer_10000_25'
                                    614 ;led_state                 Allocated with name '_send_led_state_led_state_10000_25'
                                    615 ;index                     Allocated to registers r4 r7 
                                    616 ;i                         Allocated with name '_send_led_state_i_20000_26'
                                    617 ;------------------------------------------------------------
                                    618 ;	main.c:52: void send_led_state() {
                                    619 ;	-----------------------------------------
                                    620 ;	 function send_led_state
                                    621 ;	-----------------------------------------
      00016B                        622 _send_led_state:
                                    623 ;	main.c:54: unsigned char led_state = ~led;
      00016B E5 90            [12]  624 	mov	a,_P1
      00016D F4               [12]  625 	cpl	a
      00016E F5 2A            [12]  626 	mov	_send_led_state_led_state_10000_25,a
                                    627 ;	main.c:55: int index = 0;
      000170 7D 00            [12]  628 	mov	r5,#0x00
      000172 7E 00            [12]  629 	mov	r6,#0x00
                                    630 ;	main.c:57: for (int i = 0; i < 8; i++) {
      000174 8E 2B            [24]  631 	mov	_send_led_state_i_20000_26,r6
      000176                        632 00105$:
      000176 74 F8            [12]  633 	mov	a,#0x100 - 0x08
      000178 25 2B            [12]  634 	add	a,_send_led_state_i_20000_26
      00017A 40 47            [24]  635 	jc	00103$
                                    636 ;	main.c:58: if (led_state & (1 << i)) {
      00017C 85 2B F0         [24]  637 	mov	b,_send_led_state_i_20000_26
      00017F 05 F0            [12]  638 	inc	b
      000181 7A 01            [12]  639 	mov	r2,#0x01
      000183 7B 00            [12]  640 	mov	r3,#0x00
      000185 80 06            [24]  641 	sjmp	00133$
      000187                        642 00132$:
      000187 EA               [12]  643 	mov	a,r2
      000188 2A               [12]  644 	add	a,r2
      000189 FA               [12]  645 	mov	r2,a
      00018A EB               [12]  646 	mov	a,r3
      00018B 33               [12]  647 	rlc	a
      00018C FB               [12]  648 	mov	r3,a
      00018D                        649 00133$:
      00018D D5 F0 F7         [24]  650 	djnz	b,00132$
      000190 AC 2A            [24]  651 	mov	r4,_send_led_state_led_state_10000_25
      000192 7F 00            [12]  652 	mov	r7,#0x00
      000194 EC               [12]  653 	mov	a,r4
      000195 52 02            [12]  654 	anl	ar2,a
      000197 EF               [12]  655 	mov	a,r7
      000198 52 03            [12]  656 	anl	ar3,a
      00019A EA               [12]  657 	mov	a,r2
      00019B 4B               [12]  658 	orl	a,r3
      00019C 60 1E            [24]  659 	jz	00106$
                                    660 ;	main.c:59: buffer[index++] = 'L';
      00019E 74 01            [12]  661 	mov	a,#0x01
      0001A0 2D               [12]  662 	add	a, r5
      0001A1 FC               [12]  663 	mov	r4,a
      0001A2 E4               [12]  664 	clr	a
      0001A3 3E               [12]  665 	addc	a, r6
      0001A4 FF               [12]  666 	mov	r7,a
      0001A5 ED               [12]  667 	mov	a,r5
      0001A6 24 16            [12]  668 	add	a, #_send_led_state_buffer_10000_25
      0001A8 F8               [12]  669 	mov	r0,a
      0001A9 76 4C            [12]  670 	mov	@r0,#0x4c
                                    671 ;	main.c:60: buffer[index++] = '1' + i;
      0001AB 74 01            [12]  672 	mov	a,#0x01
      0001AD 2C               [12]  673 	add	a, r4
      0001AE FD               [12]  674 	mov	r5,a
      0001AF E4               [12]  675 	clr	a
      0001B0 3F               [12]  676 	addc	a, r7
      0001B1 FE               [12]  677 	mov	r6,a
      0001B2 EC               [12]  678 	mov	a,r4
      0001B3 24 16            [12]  679 	add	a, #_send_led_state_buffer_10000_25
      0001B5 F9               [12]  680 	mov	r1,a
      0001B6 AC 2B            [24]  681 	mov	r4,_send_led_state_i_20000_26
      0001B8 74 31            [12]  682 	mov	a,#0x31
      0001BA 2C               [12]  683 	add	a, r4
      0001BB F7               [12]  684 	mov	@r1,a
      0001BC                        685 00106$:
                                    686 ;	main.c:57: for (int i = 0; i < 8; i++) {
      0001BC E5 2B            [12]  687 	mov	a,_send_led_state_i_20000_26
      0001BE 04               [12]  688 	inc	a
      0001BF F5 2B            [12]  689 	mov	_send_led_state_i_20000_26,a
      0001C1 80 B3            [24]  690 	sjmp	00105$
      0001C3                        691 00103$:
                                    692 ;	main.c:63: buffer[index++] = '\r';
      0001C3 74 01            [12]  693 	mov	a,#0x01
      0001C5 2D               [12]  694 	add	a, r5
      0001C6 FC               [12]  695 	mov	r4,a
      0001C7 E4               [12]  696 	clr	a
      0001C8 3E               [12]  697 	addc	a, r6
      0001C9 FF               [12]  698 	mov	r7,a
      0001CA ED               [12]  699 	mov	a,r5
      0001CB 24 16            [12]  700 	add	a, #_send_led_state_buffer_10000_25
      0001CD F8               [12]  701 	mov	r0,a
      0001CE 76 0D            [12]  702 	mov	@r0,#0x0d
                                    703 ;	main.c:64: buffer[index++] = '\n';
      0001D0 74 01            [12]  704 	mov	a,#0x01
      0001D2 2C               [12]  705 	add	a, r4
      0001D3 FD               [12]  706 	mov	r5,a
      0001D4 E4               [12]  707 	clr	a
      0001D5 3F               [12]  708 	addc	a, r7
      0001D6 EC               [12]  709 	mov	a,r4
      0001D7 24 16            [12]  710 	add	a, #_send_led_state_buffer_10000_25
      0001D9 F8               [12]  711 	mov	r0,a
      0001DA 76 0A            [12]  712 	mov	@r0,#0x0a
                                    713 ;	main.c:65: buffer[index] = '\0';
      0001DC ED               [12]  714 	mov	a,r5
      0001DD 24 16            [12]  715 	add	a, #_send_led_state_buffer_10000_25
      0001DF F8               [12]  716 	mov	r0,a
      0001E0 76 00            [12]  717 	mov	@r0,#0x00
                                    718 ;	main.c:67: uart_send_string(buffer);
      0001E2 90 00 16         [24]  719 	mov	dptr,#_send_led_state_buffer_10000_25
      0001E5 75 F0 40         [24]  720 	mov	b, #0x40
                                    721 ;	main.c:68: }
      0001E8 02 01 40         [24]  722 	ljmp	_uart_send_string
                                    723 ;------------------------------------------------------------
                                    724 ;Allocation info for local variables in function 'hieu_ung_1'
                                    725 ;------------------------------------------------------------
                                    726 ;hieu_ung_1                Allocated to registers r7 
                                    727 ;------------------------------------------------------------
                                    728 ;	main.c:71: void hieu_ung_1() {
                                    729 ;	-----------------------------------------
                                    730 ;	 function hieu_ung_1
                                    731 ;	-----------------------------------------
      0001EB                        732 _hieu_ung_1:
                                    733 ;	main.c:72: led = 0xFF;  // Tắt tất cả led
      0001EB 75 90 FF         [24]  734 	mov	_P1,#0xff
                                    735 ;	main.c:73: delay_ms(delayms);
      0001EE AC 10            [24]  736 	mov	r4,_delayms
      0001F0 E5 11            [12]  737 	mov	a,(_delayms + 1)
      0001F2 FD               [12]  738 	mov	r5,a
      0001F3 33               [12]  739 	rlc	a
      0001F4 95 E0            [12]  740 	subb	a,acc
      0001F6 FE               [12]  741 	mov	r6,a
      0001F7 8C 82            [24]  742 	mov	dpl,r4
      0001F9 8D 83            [24]  743 	mov	dph,r5
      0001FB 8E F0            [24]  744 	mov	b,r6
      0001FD 12 00 81         [24]  745 	lcall	_delay_ms
                                    746 ;	main.c:75: unsigned char hieu_ung_1 = 0x03;
      000200 7F 03            [12]  747 	mov	r7,#0x03
                                    748 ;	main.c:76: for (j = 0; j < 7; j++) {
      000202 E4               [12]  749 	clr	a
      000203 F5 0A            [12]  750 	mov	_j,a
      000205 F5 0B            [12]  751 	mov	(_j + 1),a
      000207                        752 00107$:
                                    753 ;	main.c:77: if (hieu_ung_hien_tai != 1) return;
      000207 74 01            [12]  754 	mov	a,#0x01
      000209 B5 0E 06         [24]  755 	cjne	a,_hieu_ung_hien_tai,00143$
      00020C 14               [12]  756 	dec	a
      00020D B5 0F 02         [24]  757 	cjne	a,(_hieu_ung_hien_tai + 1),00143$
      000210 80 01            [24]  758 	sjmp	00102$
      000212                        759 00143$:
      000212 22               [24]  760 	ret
      000213                        761 00102$:
                                    762 ;	main.c:78: led = ~hieu_ung_1;
      000213 EF               [12]  763 	mov	a,r7
      000214 F4               [12]  764 	cpl	a
      000215 F5 90            [12]  765 	mov	_P1,a
                                    766 ;	main.c:79: send_led_state();
      000217 C0 07            [24]  767 	push	ar7
      000219 12 01 6B         [24]  768 	lcall	_send_led_state
                                    769 ;	main.c:80: delay_ms(delayms);
      00021C AB 10            [24]  770 	mov	r3,_delayms
      00021E E5 11            [12]  771 	mov	a,(_delayms + 1)
      000220 FC               [12]  772 	mov	r4,a
      000221 33               [12]  773 	rlc	a
      000222 95 E0            [12]  774 	subb	a,acc
      000224 FD               [12]  775 	mov	r5,a
      000225 8B 82            [24]  776 	mov	dpl,r3
      000227 8C 83            [24]  777 	mov	dph,r4
      000229 8D F0            [24]  778 	mov	b,r5
      00022B 12 00 81         [24]  779 	lcall	_delay_ms
      00022E D0 07            [24]  780 	pop	ar7
                                    781 ;	main.c:81: hieu_ung_1 = hieu_ung_1 << 1;
      000230 8F 06            [24]  782 	mov	ar6,r7
      000232 EE               [12]  783 	mov	a,r6
      000233 2E               [12]  784 	add	a,r6
      000234 FF               [12]  785 	mov	r7,a
                                    786 ;	main.c:76: for (j = 0; j < 7; j++) {
      000235 05 0A            [12]  787 	inc	_j
      000237 E4               [12]  788 	clr	a
      000238 B5 0A 02         [24]  789 	cjne	a,_j,00144$
      00023B 05 0B            [12]  790 	inc	(_j + 1)
      00023D                        791 00144$:
      00023D C3               [12]  792 	clr	c
      00023E E5 0A            [12]  793 	mov	a,_j
      000240 94 07            [12]  794 	subb	a,#0x07
      000242 E5 0B            [12]  795 	mov	a,(_j + 1)
      000244 64 80            [12]  796 	xrl	a,#0x80
      000246 94 80            [12]  797 	subb	a,#0x80
      000248 40 BD            [24]  798 	jc	00107$
                                    799 ;	main.c:84: hieu_ung_1 = 0xC0;
      00024A 7F C0            [12]  800 	mov	r7,#0xc0
                                    801 ;	main.c:85: for (j = 0; j < 7; j++) {
      00024C E4               [12]  802 	clr	a
      00024D F5 0A            [12]  803 	mov	_j,a
      00024F F5 0B            [12]  804 	mov	(_j + 1),a
      000251                        805 00109$:
                                    806 ;	main.c:86: if (hieu_ung_hien_tai != 1) return;
      000251 74 01            [12]  807 	mov	a,#0x01
      000253 B5 0E 06         [24]  808 	cjne	a,_hieu_ung_hien_tai,00146$
      000256 14               [12]  809 	dec	a
      000257 B5 0F 02         [24]  810 	cjne	a,(_hieu_ung_hien_tai + 1),00146$
      00025A 80 01            [24]  811 	sjmp	00105$
      00025C                        812 00146$:
      00025C 22               [24]  813 	ret
      00025D                        814 00105$:
                                    815 ;	main.c:87: led = ~hieu_ung_1;
      00025D EF               [12]  816 	mov	a,r7
      00025E F4               [12]  817 	cpl	a
      00025F F5 90            [12]  818 	mov	_P1,a
                                    819 ;	main.c:88: send_led_state();
      000261 C0 07            [24]  820 	push	ar7
      000263 12 01 6B         [24]  821 	lcall	_send_led_state
                                    822 ;	main.c:89: delay_ms(delayms);
      000266 AB 10            [24]  823 	mov	r3,_delayms
      000268 E5 11            [12]  824 	mov	a,(_delayms + 1)
      00026A FC               [12]  825 	mov	r4,a
      00026B 33               [12]  826 	rlc	a
      00026C 95 E0            [12]  827 	subb	a,acc
      00026E FD               [12]  828 	mov	r5,a
      00026F 8B 82            [24]  829 	mov	dpl,r3
      000271 8C 83            [24]  830 	mov	dph,r4
      000273 8D F0            [24]  831 	mov	b,r5
      000275 12 00 81         [24]  832 	lcall	_delay_ms
      000278 D0 07            [24]  833 	pop	ar7
                                    834 ;	main.c:90: hieu_ung_1 = hieu_ung_1 >> 1;
      00027A EF               [12]  835 	mov	a,r7
      00027B C3               [12]  836 	clr	c
      00027C 13               [12]  837 	rrc	a
      00027D FF               [12]  838 	mov	r7,a
                                    839 ;	main.c:85: for (j = 0; j < 7; j++) {
      00027E 05 0A            [12]  840 	inc	_j
      000280 E4               [12]  841 	clr	a
      000281 B5 0A 02         [24]  842 	cjne	a,_j,00147$
      000284 05 0B            [12]  843 	inc	(_j + 1)
      000286                        844 00147$:
      000286 C3               [12]  845 	clr	c
      000287 E5 0A            [12]  846 	mov	a,_j
      000289 94 07            [12]  847 	subb	a,#0x07
      00028B E5 0B            [12]  848 	mov	a,(_j + 1)
      00028D 64 80            [12]  849 	xrl	a,#0x80
      00028F 94 80            [12]  850 	subb	a,#0x80
      000291 40 BE            [24]  851 	jc	00109$
                                    852 ;	main.c:92: }
      000293 22               [24]  853 	ret
                                    854 ;------------------------------------------------------------
                                    855 ;Allocation info for local variables in function 'hieu_ung_2'
                                    856 ;------------------------------------------------------------
                                    857 ;giu_hieu_ung              Allocated to registers r7 
                                    858 ;countled                  Allocated with name '_hieu_ung_2_countled_10001_36'
                                    859 ;hieu_ung_2                Allocated to registers r4 
                                    860 ;------------------------------------------------------------
                                    861 ;	main.c:95: void hieu_ung_2() {
                                    862 ;	-----------------------------------------
                                    863 ;	 function hieu_ung_2
                                    864 ;	-----------------------------------------
      000294                        865 _hieu_ung_2:
                                    866 ;	main.c:96: led = 0xFF;  // Tắt tất cả led
      000294 75 90 FF         [24]  867 	mov	_P1,#0xff
                                    868 ;	main.c:97: delay_ms(delayms);
      000297 AC 10            [24]  869 	mov	r4,_delayms
      000299 E5 11            [12]  870 	mov	a,(_delayms + 1)
      00029B FD               [12]  871 	mov	r5,a
      00029C 33               [12]  872 	rlc	a
      00029D 95 E0            [12]  873 	subb	a,acc
      00029F FE               [12]  874 	mov	r6,a
      0002A0 8C 82            [24]  875 	mov	dpl,r4
      0002A2 8D 83            [24]  876 	mov	dph,r5
      0002A4 8E F0            [24]  877 	mov	b,r6
      0002A6 12 00 81         [24]  878 	lcall	_delay_ms
                                    879 ;	main.c:99: unsigned char giu_hieu_ung = 0x00;
                                    880 ;	main.c:102: for (j = 0; j < 8; j++) {
      0002A9 E4               [12]  881 	clr	a
      0002AA FF               [12]  882 	mov	r7,a
      0002AB F5 0A            [12]  883 	mov	_j,a
      0002AD F5 0B            [12]  884 	mov	(_j + 1),a
      0002AF 75 2D 08         [24]  885 	mov	_hieu_ung_2_countled_10001_36,#0x08
      0002B2 F5 2E            [12]  886 	mov	(_hieu_ung_2_countled_10001_36 + 1),a
      0002B4                        887 00113$:
                                    888 ;	main.c:103: unsigned char hieu_ung_2 = 0x01;
      0002B4 7C 01            [12]  889 	mov	r4,#0x01
                                    890 ;	main.c:104: for (k = 0; k < countled; k++) {
      0002B6 E4               [12]  891 	clr	a
      0002B7 F5 0C            [12]  892 	mov	_k,a
      0002B9 F5 0D            [12]  893 	mov	(_k + 1),a
      0002BB E5 2D            [12]  894 	mov	a,_hieu_ung_2_countled_10001_36
      0002BD 24 FF            [12]  895 	add	a,#0xff
      0002BF FA               [12]  896 	mov	r2,a
      0002C0 E5 2E            [12]  897 	mov	a,(_hieu_ung_2_countled_10001_36 + 1)
      0002C2 34 FF            [12]  898 	addc	a,#0xff
      0002C4 FB               [12]  899 	mov	r3,a
      0002C5                        900 00111$:
      0002C5 C3               [12]  901 	clr	c
      0002C6 E5 0C            [12]  902 	mov	a,_k
      0002C8 95 2D            [12]  903 	subb	a,_hieu_ung_2_countled_10001_36
      0002CA E5 0D            [12]  904 	mov	a,(_k + 1)
      0002CC 64 80            [12]  905 	xrl	a,#0x80
      0002CE 85 2E F0         [24]  906 	mov	b,(_hieu_ung_2_countled_10001_36 + 1)
      0002D1 63 F0 80         [24]  907 	xrl	b,#0x80
      0002D4 95 F0            [12]  908 	subb	a,b
      0002D6 50 4F            [24]  909 	jnc	00105$
                                    910 ;	main.c:105: if (hieu_ung_hien_tai != 2) return;
      0002D8 74 02            [12]  911 	mov	a,#0x02
      0002DA B5 0E 06         [24]  912 	cjne	a,_hieu_ung_hien_tai,00168$
      0002DD E4               [12]  913 	clr	a
      0002DE B5 0F 02         [24]  914 	cjne	a,(_hieu_ung_hien_tai + 1),00168$
      0002E1 80 01            [24]  915 	sjmp	00102$
      0002E3                        916 00168$:
      0002E3 22               [24]  917 	ret
      0002E4                        918 00102$:
                                    919 ;	main.c:106: led = ~(hieu_ung_2 | giu_hieu_ung);
      0002E4 EF               [12]  920 	mov	a,r7
      0002E5 4C               [12]  921 	orl	a,r4
      0002E6 F4               [12]  922 	cpl	a
      0002E7 F5 90            [12]  923 	mov	_P1,a
                                    924 ;	main.c:107: send_led_state();
      0002E9 C0 07            [24]  925 	push	ar7
      0002EB C0 04            [24]  926 	push	ar4
      0002ED C0 03            [24]  927 	push	ar3
      0002EF C0 02            [24]  928 	push	ar2
      0002F1 12 01 6B         [24]  929 	lcall	_send_led_state
                                    930 ;	main.c:108: delay_ms(delayms);
      0002F4 A8 10            [24]  931 	mov	r0,_delayms
      0002F6 E5 11            [12]  932 	mov	a,(_delayms + 1)
      0002F8 F9               [12]  933 	mov	r1,a
      0002F9 33               [12]  934 	rlc	a
      0002FA 95 E0            [12]  935 	subb	a,acc
      0002FC FD               [12]  936 	mov	r5,a
      0002FD 88 82            [24]  937 	mov	dpl,r0
      0002FF 89 83            [24]  938 	mov	dph,r1
      000301 8D F0            [24]  939 	mov	b,r5
      000303 12 00 81         [24]  940 	lcall	_delay_ms
      000306 D0 02            [24]  941 	pop	ar2
      000308 D0 03            [24]  942 	pop	ar3
      00030A D0 04            [24]  943 	pop	ar4
      00030C D0 07            [24]  944 	pop	ar7
                                    945 ;	main.c:109: if (k != countled - 1) hieu_ung_2 = hieu_ung_2 << 1;
      00030E EA               [12]  946 	mov	a,r2
      00030F B5 0C 06         [24]  947 	cjne	a,_k,00169$
      000312 EB               [12]  948 	mov	a,r3
      000313 B5 0D 02         [24]  949 	cjne	a,(_k + 1),00169$
      000316 80 05            [24]  950 	sjmp	00112$
      000318                        951 00169$:
      000318 8C 06            [24]  952 	mov	ar6,r4
      00031A EE               [12]  953 	mov	a,r6
      00031B 2E               [12]  954 	add	a,r6
      00031C FC               [12]  955 	mov	r4,a
      00031D                        956 00112$:
                                    957 ;	main.c:104: for (k = 0; k < countled; k++) {
      00031D 05 0C            [12]  958 	inc	_k
      00031F E4               [12]  959 	clr	a
      000320 B5 0C A2         [24]  960 	cjne	a,_k,00111$
      000323 05 0D            [12]  961 	inc	(_k + 1)
      000325 80 9E            [24]  962 	sjmp	00111$
      000327                        963 00105$:
                                    964 ;	main.c:111: giu_hieu_ung = hieu_ung_2 | giu_hieu_ung;
      000327 EC               [12]  965 	mov	a,r4
      000328 42 07            [12]  966 	orl	ar7,a
                                    967 ;	main.c:112: countled--;
      00032A 15 2D            [12]  968 	dec	_hieu_ung_2_countled_10001_36
      00032C 74 FF            [12]  969 	mov	a,#0xff
      00032E B5 2D 02         [24]  970 	cjne	a,_hieu_ung_2_countled_10001_36,00171$
      000331 15 2E            [12]  971 	dec	(_hieu_ung_2_countled_10001_36 + 1)
      000333                        972 00171$:
                                    973 ;	main.c:102: for (j = 0; j < 8; j++) {
      000333 05 0A            [12]  974 	inc	_j
      000335 E4               [12]  975 	clr	a
      000336 B5 0A 02         [24]  976 	cjne	a,_j,00172$
      000339 05 0B            [12]  977 	inc	(_j + 1)
      00033B                        978 00172$:
      00033B C3               [12]  979 	clr	c
      00033C E5 0A            [12]  980 	mov	a,_j
      00033E 94 08            [12]  981 	subb	a,#0x08
      000340 E5 0B            [12]  982 	mov	a,(_j + 1)
      000342 64 80            [12]  983 	xrl	a,#0x80
      000344 94 80            [12]  984 	subb	a,#0x80
      000346 50 03            [24]  985 	jnc	00173$
      000348 02 02 B4         [24]  986 	ljmp	00113$
      00034B                        987 00173$:
                                    988 ;	main.c:115: for (j = 0; j < 8; j++) {
      00034B E4               [12]  989 	clr	a
      00034C F5 0A            [12]  990 	mov	_j,a
      00034E F5 0B            [12]  991 	mov	(_j + 1),a
      000350                        992 00115$:
                                    993 ;	main.c:116: if (hieu_ung_hien_tai != 2) return;
      000350 74 02            [12]  994 	mov	a,#0x02
      000352 B5 0E 06         [24]  995 	cjne	a,_hieu_ung_hien_tai,00174$
      000355 E4               [12]  996 	clr	a
      000356 B5 0F 02         [24]  997 	cjne	a,(_hieu_ung_hien_tai + 1),00174$
      000359 80 01            [24]  998 	sjmp	00108$
      00035B                        999 00174$:
      00035B 22               [24] 1000 	ret
      00035C                       1001 00108$:
                                   1002 ;	main.c:117: led = ~giu_hieu_ung;
      00035C EF               [12] 1003 	mov	a,r7
      00035D F4               [12] 1004 	cpl	a
      00035E F5 90            [12] 1005 	mov	_P1,a
                                   1006 ;	main.c:118: send_led_state();
      000360 C0 07            [24] 1007 	push	ar7
      000362 12 01 6B         [24] 1008 	lcall	_send_led_state
                                   1009 ;	main.c:119: delay_ms(delayms);
      000365 AB 10            [24] 1010 	mov	r3,_delayms
      000367 E5 11            [12] 1011 	mov	a,(_delayms + 1)
      000369 FC               [12] 1012 	mov	r4,a
      00036A 33               [12] 1013 	rlc	a
      00036B 95 E0            [12] 1014 	subb	a,acc
      00036D FD               [12] 1015 	mov	r5,a
      00036E 8B 82            [24] 1016 	mov	dpl,r3
      000370 8C 83            [24] 1017 	mov	dph,r4
      000372 8D F0            [24] 1018 	mov	b,r5
      000374 12 00 81         [24] 1019 	lcall	_delay_ms
      000377 D0 07            [24] 1020 	pop	ar7
                                   1021 ;	main.c:120: giu_hieu_ung = giu_hieu_ung >> 1;
      000379 EF               [12] 1022 	mov	a,r7
      00037A C3               [12] 1023 	clr	c
      00037B 13               [12] 1024 	rrc	a
      00037C FF               [12] 1025 	mov	r7,a
                                   1026 ;	main.c:115: for (j = 0; j < 8; j++) {
      00037D 05 0A            [12] 1027 	inc	_j
      00037F E4               [12] 1028 	clr	a
      000380 B5 0A 02         [24] 1029 	cjne	a,_j,00175$
      000383 05 0B            [12] 1030 	inc	(_j + 1)
      000385                       1031 00175$:
      000385 C3               [12] 1032 	clr	c
      000386 E5 0A            [12] 1033 	mov	a,_j
      000388 94 08            [12] 1034 	subb	a,#0x08
      00038A E5 0B            [12] 1035 	mov	a,(_j + 1)
      00038C 64 80            [12] 1036 	xrl	a,#0x80
      00038E 94 80            [12] 1037 	subb	a,#0x80
      000390 40 BE            [24] 1038 	jc	00115$
                                   1039 ;	main.c:122: }
      000392 22               [24] 1040 	ret
                                   1041 ;------------------------------------------------------------
                                   1042 ;Allocation info for local variables in function 'hieu_ung_3'
                                   1043 ;------------------------------------------------------------
                                   1044 ;hieu_ung_3_1              Allocated to registers r7 
                                   1045 ;hieu_ung_3_2              Allocated to registers r6 
                                   1046 ;------------------------------------------------------------
                                   1047 ;	main.c:125: void hieu_ung_3() {
                                   1048 ;	-----------------------------------------
                                   1049 ;	 function hieu_ung_3
                                   1050 ;	-----------------------------------------
      000393                       1051 _hieu_ung_3:
                                   1052 ;	main.c:126: led = 0xFF;  // Tắt tất cả các led
      000393 75 90 FF         [24] 1053 	mov	_P1,#0xff
                                   1054 ;	main.c:127: delay_ms(delayms);
      000396 AC 10            [24] 1055 	mov	r4,_delayms
      000398 E5 11            [12] 1056 	mov	a,(_delayms + 1)
      00039A FD               [12] 1057 	mov	r5,a
      00039B 33               [12] 1058 	rlc	a
      00039C 95 E0            [12] 1059 	subb	a,acc
      00039E FE               [12] 1060 	mov	r6,a
      00039F 8C 82            [24] 1061 	mov	dpl,r4
      0003A1 8D 83            [24] 1062 	mov	dph,r5
      0003A3 8E F0            [24] 1063 	mov	b,r6
      0003A5 12 00 81         [24] 1064 	lcall	_delay_ms
                                   1065 ;	main.c:129: unsigned char hieu_ung_3_1 = 0x01;
      0003A8 7F 01            [12] 1066 	mov	r7,#0x01
                                   1067 ;	main.c:130: unsigned char hieu_ung_3_2 = 0x80;
      0003AA 7E 80            [12] 1068 	mov	r6,#0x80
                                   1069 ;	main.c:131: for (j = 0; j < 8; j++) {
      0003AC E4               [12] 1070 	clr	a
      0003AD F5 0A            [12] 1071 	mov	_j,a
      0003AF F5 0B            [12] 1072 	mov	(_j + 1),a
      0003B1                       1073 00106$:
                                   1074 ;	main.c:132: if (hieu_ung_hien_tai != 3) return;
      0003B1 74 03            [12] 1075 	mov	a,#0x03
      0003B3 B5 0E 06         [24] 1076 	cjne	a,_hieu_ung_hien_tai,00128$
      0003B6 E4               [12] 1077 	clr	a
      0003B7 B5 0F 02         [24] 1078 	cjne	a,(_hieu_ung_hien_tai + 1),00128$
      0003BA 80 01            [24] 1079 	sjmp	00102$
      0003BC                       1080 00128$:
      0003BC 22               [24] 1081 	ret
      0003BD                       1082 00102$:
                                   1083 ;	main.c:133: led = ~(hieu_ung_3_1 | hieu_ung_3_2);
      0003BD EE               [12] 1084 	mov	a,r6
      0003BE 4F               [12] 1085 	orl	a,r7
      0003BF F4               [12] 1086 	cpl	a
      0003C0 F5 90            [12] 1087 	mov	_P1,a
                                   1088 ;	main.c:134: send_led_state();
      0003C2 C0 07            [24] 1089 	push	ar7
      0003C4 C0 06            [24] 1090 	push	ar6
      0003C6 12 01 6B         [24] 1091 	lcall	_send_led_state
      0003C9 D0 06            [24] 1092 	pop	ar6
      0003CB D0 07            [24] 1093 	pop	ar7
                                   1094 ;	main.c:135: if (hieu_ung_3_1 != 0x08) delay_ms(delayms);
      0003CD BF 08 02         [24] 1095 	cjne	r7,#0x08,00129$
      0003D0 80 1A            [24] 1096 	sjmp	00104$
      0003D2                       1097 00129$:
      0003D2 AA 10            [24] 1098 	mov	r2,_delayms
      0003D4 E5 11            [12] 1099 	mov	a,(_delayms + 1)
      0003D6 FB               [12] 1100 	mov	r3,a
      0003D7 33               [12] 1101 	rlc	a
      0003D8 95 E0            [12] 1102 	subb	a,acc
      0003DA FC               [12] 1103 	mov	r4,a
      0003DB 8A 82            [24] 1104 	mov	dpl,r2
      0003DD 8B 83            [24] 1105 	mov	dph,r3
      0003DF 8C F0            [24] 1106 	mov	b,r4
      0003E1 C0 07            [24] 1107 	push	ar7
      0003E3 C0 06            [24] 1108 	push	ar6
      0003E5 12 00 81         [24] 1109 	lcall	_delay_ms
      0003E8 D0 06            [24] 1110 	pop	ar6
      0003EA D0 07            [24] 1111 	pop	ar7
      0003EC                       1112 00104$:
                                   1113 ;	main.c:136: hieu_ung_3_1 = hieu_ung_3_1 << 1;
      0003EC 8F 05            [24] 1114 	mov	ar5,r7
      0003EE ED               [12] 1115 	mov	a,r5
      0003EF 2D               [12] 1116 	add	a,r5
      0003F0 FF               [12] 1117 	mov	r7,a
                                   1118 ;	main.c:137: hieu_ung_3_2 = hieu_ung_3_2 >> 1;
      0003F1 EE               [12] 1119 	mov	a,r6
      0003F2 C3               [12] 1120 	clr	c
      0003F3 13               [12] 1121 	rrc	a
      0003F4 FE               [12] 1122 	mov	r6,a
                                   1123 ;	main.c:131: for (j = 0; j < 8; j++) {
      0003F5 05 0A            [12] 1124 	inc	_j
      0003F7 E4               [12] 1125 	clr	a
      0003F8 B5 0A 02         [24] 1126 	cjne	a,_j,00130$
      0003FB 05 0B            [12] 1127 	inc	(_j + 1)
      0003FD                       1128 00130$:
      0003FD C3               [12] 1129 	clr	c
      0003FE E5 0A            [12] 1130 	mov	a,_j
      000400 94 08            [12] 1131 	subb	a,#0x08
      000402 E5 0B            [12] 1132 	mov	a,(_j + 1)
      000404 64 80            [12] 1133 	xrl	a,#0x80
      000406 94 80            [12] 1134 	subb	a,#0x80
      000408 40 A7            [24] 1135 	jc	00106$
                                   1136 ;	main.c:139: }
      00040A 22               [24] 1137 	ret
                                   1138 ;------------------------------------------------------------
                                   1139 ;Allocation info for local variables in function 'initExtInterrupt'
                                   1140 ;------------------------------------------------------------
                                   1141 ;	main.c:141: void initExtInterrupt() {
                                   1142 ;	-----------------------------------------
                                   1143 ;	 function initExtInterrupt
                                   1144 ;	-----------------------------------------
      00040B                       1145 _initExtInterrupt:
                                   1146 ;	main.c:142: P3_2 = 1;//INT0
                                   1147 ;	assignBit
      00040B D2 B2            [12] 1148 	setb	_P3_2
                                   1149 ;	main.c:143: P3_3 = 1;//INT1
                                   1150 ;	assignBit
      00040D D2 B3            [12] 1151 	setb	_P3_3
                                   1152 ;	main.c:144: IT0 = 1; // cấu hình ngắt ngoài INT0
                                   1153 ;	assignBit
      00040F D2 88            [12] 1154 	setb	_IT0
                                   1155 ;	main.c:145: IT1 = 1;
                                   1156 ;	assignBit
      000411 D2 8A            [12] 1157 	setb	_IT1
                                   1158 ;	main.c:146: IE = 0x85;
      000413 75 A8 85         [24] 1159 	mov	_IE,#0x85
                                   1160 ;	main.c:147: }
      000416 22               [24] 1161 	ret
                                   1162 ;------------------------------------------------------------
                                   1163 ;Allocation info for local variables in function 'ISR0'
                                   1164 ;------------------------------------------------------------
                                   1165 ;	main.c:150: void ISR0() __interrupt(0) {// chuyẻn hiệu ứng về trước
                                   1166 ;	-----------------------------------------
                                   1167 ;	 function ISR0
                                   1168 ;	-----------------------------------------
      000417                       1169 _ISR0:
      000417 C0 E0            [24] 1170 	push	acc
      000419 C0 D0            [24] 1171 	push	psw
                                   1172 ;	main.c:151: EA = 0; // tắt ngắt toàn cục
                                   1173 ;	assignBit
      00041B C2 AF            [12] 1174 	clr	_EA
                                   1175 ;	main.c:152: if (hieu_ung_hien_tai == 1)
      00041D 74 01            [12] 1176 	mov	a,#0x01
      00041F B5 0E 06         [24] 1177 	cjne	a,_hieu_ung_hien_tai,00112$
      000422 14               [12] 1178 	dec	a
      000423 B5 0F 02         [24] 1179 	cjne	a,(_hieu_ung_hien_tai + 1),00112$
      000426 80 02            [24] 1180 	sjmp	00113$
      000428                       1181 00112$:
      000428 80 08            [24] 1182 	sjmp	00102$
      00042A                       1183 00113$:
                                   1184 ;	main.c:153: hieu_ung_hien_tai = 3;
      00042A 75 0E 03         [24] 1185 	mov	_hieu_ung_hien_tai,#0x03
      00042D 75 0F 00         [24] 1186 	mov	(_hieu_ung_hien_tai + 1),#0x00
      000430 80 09            [24] 1187 	sjmp	00103$
      000432                       1188 00102$:
                                   1189 ;	main.c:155: hieu_ung_hien_tai--;
      000432 15 0E            [12] 1190 	dec	_hieu_ung_hien_tai
      000434 74 FF            [12] 1191 	mov	a,#0xff
      000436 B5 0E 02         [24] 1192 	cjne	a,_hieu_ung_hien_tai,00114$
      000439 15 0F            [12] 1193 	dec	(_hieu_ung_hien_tai + 1)
      00043B                       1194 00114$:
      00043B                       1195 00103$:
                                   1196 ;	main.c:156: EA = 1;
                                   1197 ;	assignBit
      00043B D2 AF            [12] 1198 	setb	_EA
                                   1199 ;	main.c:157: }
      00043D D0 D0            [24] 1200 	pop	psw
      00043F D0 E0            [24] 1201 	pop	acc
      000441 32               [24] 1202 	reti
                                   1203 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1204 ;	eliminated unneeded push/pop dpl
                                   1205 ;	eliminated unneeded push/pop dph
                                   1206 ;	eliminated unneeded push/pop b
                                   1207 ;------------------------------------------------------------
                                   1208 ;Allocation info for local variables in function 'ISR1'
                                   1209 ;------------------------------------------------------------
                                   1210 ;	main.c:159: void ISR1() __interrupt(2) {// chuyển hiệu ứng về sau
                                   1211 ;	-----------------------------------------
                                   1212 ;	 function ISR1
                                   1213 ;	-----------------------------------------
      000442                       1214 _ISR1:
      000442 C0 E0            [24] 1215 	push	acc
      000444 C0 D0            [24] 1216 	push	psw
                                   1217 ;	main.c:160: EA = 0;
                                   1218 ;	assignBit
      000446 C2 AF            [12] 1219 	clr	_EA
                                   1220 ;	main.c:161: if (hieu_ung_hien_tai == 3)
      000448 74 03            [12] 1221 	mov	a,#0x03
      00044A B5 0E 06         [24] 1222 	cjne	a,_hieu_ung_hien_tai,00112$
      00044D E4               [12] 1223 	clr	a
      00044E B5 0F 02         [24] 1224 	cjne	a,(_hieu_ung_hien_tai + 1),00112$
      000451 80 02            [24] 1225 	sjmp	00113$
      000453                       1226 00112$:
      000453 80 08            [24] 1227 	sjmp	00102$
      000455                       1228 00113$:
                                   1229 ;	main.c:162: hieu_ung_hien_tai = 1;
      000455 75 0E 01         [24] 1230 	mov	_hieu_ung_hien_tai,#0x01
      000458 75 0F 00         [24] 1231 	mov	(_hieu_ung_hien_tai + 1),#0x00
      00045B 80 08            [24] 1232 	sjmp	00103$
      00045D                       1233 00102$:
                                   1234 ;	main.c:164: hieu_ung_hien_tai++;
      00045D 05 0E            [12] 1235 	inc	_hieu_ung_hien_tai
      00045F E4               [12] 1236 	clr	a
      000460 B5 0E 02         [24] 1237 	cjne	a,_hieu_ung_hien_tai,00114$
      000463 05 0F            [12] 1238 	inc	(_hieu_ung_hien_tai + 1)
      000465                       1239 00114$:
      000465                       1240 00103$:
                                   1241 ;	main.c:165: EA = 1;
                                   1242 ;	assignBit
      000465 D2 AF            [12] 1243 	setb	_EA
                                   1244 ;	main.c:166: }
      000467 D0 D0            [24] 1245 	pop	psw
      000469 D0 E0            [24] 1246 	pop	acc
      00046B 32               [24] 1247 	reti
                                   1248 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1249 ;	eliminated unneeded push/pop dpl
                                   1250 ;	eliminated unneeded push/pop dph
                                   1251 ;	eliminated unneeded push/pop b
                                   1252 ;------------------------------------------------------------
                                   1253 ;Allocation info for local variables in function 'main'
                                   1254 ;------------------------------------------------------------
                                   1255 ;	main.c:168: void main() {
                                   1256 ;	-----------------------------------------
                                   1257 ;	 function main
                                   1258 ;	-----------------------------------------
      00046C                       1259 _main:
                                   1260 ;	main.c:169: uart_init();  // Khởi tạo UART
      00046C 12 01 2B         [24] 1261 	lcall	_uart_init
                                   1262 ;	main.c:170: initExtInterrupt();  // Khởi tạo ngắt ngoài 0 và 1
      00046F 12 04 0B         [24] 1263 	lcall	_initExtInterrupt
                                   1264 ;	main.c:171: while (1) {
      000472                       1265 00110$:
                                   1266 ;	main.c:172: if (hieu_ung_hien_tai == 1) {
      000472 74 01            [12] 1267 	mov	a,#0x01
      000474 B5 0E 06         [24] 1268 	cjne	a,_hieu_ung_hien_tai,00138$
      000477 14               [12] 1269 	dec	a
      000478 B5 0F 02         [24] 1270 	cjne	a,(_hieu_ung_hien_tai + 1),00138$
      00047B 80 02            [24] 1271 	sjmp	00139$
      00047D                       1272 00138$:
      00047D 80 05            [24] 1273 	sjmp	00107$
      00047F                       1274 00139$:
                                   1275 ;	main.c:173: hieu_ung_1();
      00047F 12 01 EB         [24] 1276 	lcall	_hieu_ung_1
      000482 80 EE            [24] 1277 	sjmp	00110$
      000484                       1278 00107$:
                                   1279 ;	main.c:174: } else if (hieu_ung_hien_tai == 2) {
      000484 74 02            [12] 1280 	mov	a,#0x02
      000486 B5 0E 06         [24] 1281 	cjne	a,_hieu_ung_hien_tai,00140$
      000489 E4               [12] 1282 	clr	a
      00048A B5 0F 02         [24] 1283 	cjne	a,(_hieu_ung_hien_tai + 1),00140$
      00048D 80 02            [24] 1284 	sjmp	00141$
      00048F                       1285 00140$:
      00048F 80 05            [24] 1286 	sjmp	00104$
      000491                       1287 00141$:
                                   1288 ;	main.c:175: hieu_ung_2();
      000491 12 02 94         [24] 1289 	lcall	_hieu_ung_2
      000494 80 DC            [24] 1290 	sjmp	00110$
      000496                       1291 00104$:
                                   1292 ;	main.c:176: } else if (hieu_ung_hien_tai == 3) {
      000496 74 03            [12] 1293 	mov	a,#0x03
      000498 B5 0E 06         [24] 1294 	cjne	a,_hieu_ung_hien_tai,00142$
      00049B E4               [12] 1295 	clr	a
      00049C B5 0F 02         [24] 1296 	cjne	a,(_hieu_ung_hien_tai + 1),00142$
      00049F 80 02            [24] 1297 	sjmp	00143$
      0004A1                       1298 00142$:
      0004A1 80 CF            [24] 1299 	sjmp	00110$
      0004A3                       1300 00143$:
                                   1301 ;	main.c:177: hieu_ung_3();
      0004A3 12 03 93         [24] 1302 	lcall	_hieu_ung_3
                                   1303 ;	main.c:180: }
      0004A6 80 CA            [24] 1304 	sjmp	00110$
                                   1305 	.area CSEG    (CODE)
                                   1306 	.area CONST   (CODE)
                                   1307 	.area XINIT   (CODE)
                                   1308 	.area CABS    (ABS,CODE)
