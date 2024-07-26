;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _ISR1
	.globl _ISR0
	.globl _initExtInterrupt
	.globl _hieu_ung_3
	.globl _hieu_ung_2
	.globl _hieu_ung_1
	.globl _send_led_state
	.globl _uart_send_string
	.globl _uart_send_char
	.globl _uart_init
	.globl _delay_ms
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _delayms
	.globl _hieu_ung_hien_tai
	.globl _k
	.globl _j
	.globl _i
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_i::
	.ds 2
_j::
	.ds 2
_k::
	.ds 2
_hieu_ung_hien_tai::
	.ds 2
_delayms::
	.ds 2
_delay_ms_ms_10000_14:
	.ds 4
_send_led_state_buffer_10000_25:
	.ds 20
_send_led_state_led_state_10000_25:
	.ds 1
_send_led_state_i_20000_26:
	.ds 2
_hieu_ung_2_countled_10001_36:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_ISR0
	.ds	5
	reti
	.ds	7
	ljmp	_ISR1
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	main.c:7: int hieu_ung_hien_tai = 1;  // 3 hiệu ứng tương ứng với 1, 2 và 3
	mov	_hieu_ung_hien_tai,#0x01
	mov	(_hieu_ung_hien_tai + 1),#0x00
;	main.c:8: int delayms = 100;          // Thời gian trễ giữa các lần sáng led
	mov	_delayms,#0x64
	mov	(_delayms + 1),#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;ms                        Allocated with name '_delay_ms_ms_10000_14'
;------------------------------------------------------------
;	main.c:10: void delay_ms(long ms) {
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	__mullong_PARM_2,dpl
	mov	(__mullong_PARM_2 + 1),dph
	mov	(__mullong_PARM_2 + 2),b
	mov	(__mullong_PARM_2 + 3),a
;	main.c:11: ms *= 1000;
	mov	dptr,#0x03e8
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
;	main.c:12: while (ms > 0) {
00107$:
	clr	c
	clr	a
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00147$
	ret
00147$:
;	main.c:13: TMOD = TMOD & 0xF0; // xóa các bit cấu hình cho TImer 0 ko ảnh hưởng đến Timer 1
	anl	_TMOD,#0xf0
;	main.c:14: TMOD = TMOD | 0x01; // thiết lập bit thấp nhât, cấu hình TImer 0 chế độ 1
	orl	_TMOD,#0x01
;	main.c:15: ET0 = 0;
;	assignBit
	clr	_ET0
;	main.c:16: if (ms >= 65536) {
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00102$
;	main.c:17: TH0 = 0;
;	main.c:18: TL0 = 0;
;	main.c:19: ms -= 65536;
	clr	a
	mov	_TH0,a
	mov	_TL0,a
	mov	a,r6
	add	a,#0xff
	mov	r6,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
	sjmp	00103$
00102$:
;	main.c:21: ms = 65536 - ms;
	clr	a
	clr	c
	subb	a,r4
	mov	_delay_ms_ms_10000_14,a
	clr	a
	subb	a,r5
	mov	(_delay_ms_ms_10000_14 + 1),a
	mov	a,#0x01
	subb	a,r6
	mov	(_delay_ms_ms_10000_14 + 2),a
	clr	a
	subb	a,r7
	mov	(_delay_ms_ms_10000_14 + 3),a
;	main.c:22: TH0 = ms / 256;
	clr	a
	mov	__divslong_PARM_2,a
	mov	(__divslong_PARM_2 + 1),#0x01
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
	mov	dpl, _delay_ms_ms_10000_14
	mov	dph, (_delay_ms_ms_10000_14 + 1)
	mov	b, (_delay_ms_ms_10000_14 + 2)
	lcall	__divslong
	mov	r0, dpl
	mov	_TH0,r0
;	main.c:23: TL0 = ms % 256;
	clr	a
	mov	__modslong_PARM_2,a
	mov	(__modslong_PARM_2 + 1),#0x01
	mov	(__modslong_PARM_2 + 2),a
	mov	(__modslong_PARM_2 + 3),a
	mov	dpl, _delay_ms_ms_10000_14
	mov	dph, (_delay_ms_ms_10000_14 + 1)
	mov	b, (_delay_ms_ms_10000_14 + 2)
	lcall	__modslong
	mov	r0, dpl
	mov	_TL0,r0
;	main.c:24: ms = 0;
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
;	main.c:26: TF0 = 0;
;	assignBit
	clr	_TF0
;	main.c:27: TR0 = 1;
;	assignBit
	setb	_TR0
;	main.c:28: while (TF0 == 0);
00104$:
	jnb	_TF0,00104$
;	main.c:29: TR0 = 0;
;	assignBit
	clr	_TR0
;	main.c:31: }
	ljmp	00107$
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_init'
;------------------------------------------------------------
;	main.c:33: void uart_init() {
;	-----------------------------------------
;	 function uart_init
;	-----------------------------------------
_uart_init:
;	main.c:34: TMOD |= 0x20;  // Timer 1 ở chế độ 2
	orl	_TMOD,#0x20
;	main.c:35: TH1 = 0xFD;    // Baud rate 9600 cho 11.0592 MHz
	mov	_TH1,#0xfd
;	main.c:36: SCON = 0x50;   // Chế độ UART 8-bit, cho phép nhận dữ liệu (thanh ghi đk nt)
	mov	_SCON,#0x50
;	main.c:37: TR1 = 1;
;	assignBit
	setb	_TR1
;	main.c:38: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_send_char'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	main.c:40: void uart_send_char(char c) {
;	-----------------------------------------
;	 function uart_send_char
;	-----------------------------------------
_uart_send_char:
	mov	_SBUF,dpl
;	main.c:42: while (TI == 0);
00101$:
;	main.c:43: TI = 0;
;	assignBit
	jbc	_TI,00118$
	sjmp	00101$
00118$:
;	main.c:44: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_send_string'
;------------------------------------------------------------
;str                       Allocated to registers 
;------------------------------------------------------------
;	main.c:46: void uart_send_string(char* str) {
;	-----------------------------------------
;	 function uart_send_string
;	-----------------------------------------
_uart_send_string:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	main.c:47: while (*str) {
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	main.c:48: uart_send_char(*str++);
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00120$
	inc	r6
00120$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_uart_send_char
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	main.c:50: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_led_state'
;------------------------------------------------------------
;buffer                    Allocated with name '_send_led_state_buffer_10000_25'
;led_state                 Allocated with name '_send_led_state_led_state_10000_25'
;index                     Allocated to registers r4 r7 
;i                         Allocated with name '_send_led_state_i_20000_26'
;------------------------------------------------------------
;	main.c:52: void send_led_state() {
;	-----------------------------------------
;	 function send_led_state
;	-----------------------------------------
_send_led_state:
;	main.c:54: unsigned char led_state = ~led;
	mov	a,_P1
	cpl	a
	mov	_send_led_state_led_state_10000_25,a
;	main.c:55: int index = 0;
	mov	r5,#0x00
	mov	r6,#0x00
;	main.c:57: for (int i = 0; i < 8; i++) {
	mov	_send_led_state_i_20000_26,r6
00105$:
	mov	a,#0x100 - 0x08
	add	a,_send_led_state_i_20000_26
	jc	00103$
;	main.c:58: if (led_state & (1 << i)) {
	mov	b,_send_led_state_i_20000_26
	inc	b
	mov	r2,#0x01
	mov	r3,#0x00
	sjmp	00133$
00132$:
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
00133$:
	djnz	b,00132$
	mov	r4,_send_led_state_led_state_10000_25
	mov	r7,#0x00
	mov	a,r4
	anl	ar2,a
	mov	a,r7
	anl	ar3,a
	mov	a,r2
	orl	a,r3
	jz	00106$
;	main.c:59: buffer[index++] = 'L';
	mov	a,#0x01
	add	a, r5
	mov	r4,a
	clr	a
	addc	a, r6
	mov	r7,a
	mov	a,r5
	add	a, #_send_led_state_buffer_10000_25
	mov	r0,a
	mov	@r0,#0x4c
;	main.c:60: buffer[index++] = '1' + i;
	mov	a,#0x01
	add	a, r4
	mov	r5,a
	clr	a
	addc	a, r7
	mov	r6,a
	mov	a,r4
	add	a, #_send_led_state_buffer_10000_25
	mov	r1,a
	mov	r4,_send_led_state_i_20000_26
	mov	a,#0x31
	add	a, r4
	mov	@r1,a
00106$:
;	main.c:57: for (int i = 0; i < 8; i++) {
	mov	a,_send_led_state_i_20000_26
	inc	a
	mov	_send_led_state_i_20000_26,a
	sjmp	00105$
00103$:
;	main.c:63: buffer[index++] = '\r';
	mov	a,#0x01
	add	a, r5
	mov	r4,a
	clr	a
	addc	a, r6
	mov	r7,a
	mov	a,r5
	add	a, #_send_led_state_buffer_10000_25
	mov	r0,a
	mov	@r0,#0x0d
;	main.c:64: buffer[index++] = '\n';
	mov	a,#0x01
	add	a, r4
	mov	r5,a
	clr	a
	addc	a, r7
	mov	a,r4
	add	a, #_send_led_state_buffer_10000_25
	mov	r0,a
	mov	@r0,#0x0a
;	main.c:65: buffer[index] = '\0';
	mov	a,r5
	add	a, #_send_led_state_buffer_10000_25
	mov	r0,a
	mov	@r0,#0x00
;	main.c:67: uart_send_string(buffer);
	mov	dptr,#_send_led_state_buffer_10000_25
	mov	b, #0x40
;	main.c:68: }
	ljmp	_uart_send_string
;------------------------------------------------------------
;Allocation info for local variables in function 'hieu_ung_1'
;------------------------------------------------------------
;hieu_ung_1                Allocated to registers r7 
;------------------------------------------------------------
;	main.c:71: void hieu_ung_1() {
;	-----------------------------------------
;	 function hieu_ung_1
;	-----------------------------------------
_hieu_ung_1:
;	main.c:72: led = 0xFF;  // Tắt tất cả led
	mov	_P1,#0xff
;	main.c:73: delay_ms(delayms);
	mov	r4,_delayms
	mov	a,(_delayms + 1)
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_delay_ms
;	main.c:75: unsigned char hieu_ung_1 = 0x03;
	mov	r7,#0x03
;	main.c:76: for (j = 0; j < 7; j++) {
	clr	a
	mov	_j,a
	mov	(_j + 1),a
00107$:
;	main.c:77: if (hieu_ung_hien_tai != 1) return;
	mov	a,#0x01
	cjne	a,_hieu_ung_hien_tai,00143$
	dec	a
	cjne	a,(_hieu_ung_hien_tai + 1),00143$
	sjmp	00102$
00143$:
	ret
00102$:
;	main.c:78: led = ~hieu_ung_1;
	mov	a,r7
	cpl	a
	mov	_P1,a
;	main.c:79: send_led_state();
	push	ar7
	lcall	_send_led_state
;	main.c:80: delay_ms(delayms);
	mov	r3,_delayms
	mov	a,(_delayms + 1)
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_delay_ms
	pop	ar7
;	main.c:81: hieu_ung_1 = hieu_ung_1 << 1;
	mov	ar6,r7
	mov	a,r6
	add	a,r6
	mov	r7,a
;	main.c:76: for (j = 0; j < 7; j++) {
	inc	_j
	clr	a
	cjne	a,_j,00144$
	inc	(_j + 1)
00144$:
	clr	c
	mov	a,_j
	subb	a,#0x07
	mov	a,(_j + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00107$
;	main.c:84: hieu_ung_1 = 0xC0;
	mov	r7,#0xc0
;	main.c:85: for (j = 0; j < 7; j++) {
	clr	a
	mov	_j,a
	mov	(_j + 1),a
00109$:
;	main.c:86: if (hieu_ung_hien_tai != 1) return;
	mov	a,#0x01
	cjne	a,_hieu_ung_hien_tai,00146$
	dec	a
	cjne	a,(_hieu_ung_hien_tai + 1),00146$
	sjmp	00105$
00146$:
	ret
00105$:
;	main.c:87: led = ~hieu_ung_1;
	mov	a,r7
	cpl	a
	mov	_P1,a
;	main.c:88: send_led_state();
	push	ar7
	lcall	_send_led_state
;	main.c:89: delay_ms(delayms);
	mov	r3,_delayms
	mov	a,(_delayms + 1)
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_delay_ms
	pop	ar7
;	main.c:90: hieu_ung_1 = hieu_ung_1 >> 1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	main.c:85: for (j = 0; j < 7; j++) {
	inc	_j
	clr	a
	cjne	a,_j,00147$
	inc	(_j + 1)
00147$:
	clr	c
	mov	a,_j
	subb	a,#0x07
	mov	a,(_j + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00109$
;	main.c:92: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hieu_ung_2'
;------------------------------------------------------------
;giu_hieu_ung              Allocated to registers r7 
;countled                  Allocated with name '_hieu_ung_2_countled_10001_36'
;hieu_ung_2                Allocated to registers r4 
;------------------------------------------------------------
;	main.c:95: void hieu_ung_2() {
;	-----------------------------------------
;	 function hieu_ung_2
;	-----------------------------------------
_hieu_ung_2:
;	main.c:96: led = 0xFF;  // Tắt tất cả led
	mov	_P1,#0xff
;	main.c:97: delay_ms(delayms);
	mov	r4,_delayms
	mov	a,(_delayms + 1)
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_delay_ms
;	main.c:99: unsigned char giu_hieu_ung = 0x00;
;	main.c:102: for (j = 0; j < 8; j++) {
	clr	a
	mov	r7,a
	mov	_j,a
	mov	(_j + 1),a
	mov	_hieu_ung_2_countled_10001_36,#0x08
	mov	(_hieu_ung_2_countled_10001_36 + 1),a
00113$:
;	main.c:103: unsigned char hieu_ung_2 = 0x01;
	mov	r4,#0x01
;	main.c:104: for (k = 0; k < countled; k++) {
	clr	a
	mov	_k,a
	mov	(_k + 1),a
	mov	a,_hieu_ung_2_countled_10001_36
	add	a,#0xff
	mov	r2,a
	mov	a,(_hieu_ung_2_countled_10001_36 + 1)
	addc	a,#0xff
	mov	r3,a
00111$:
	clr	c
	mov	a,_k
	subb	a,_hieu_ung_2_countled_10001_36
	mov	a,(_k + 1)
	xrl	a,#0x80
	mov	b,(_hieu_ung_2_countled_10001_36 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	main.c:105: if (hieu_ung_hien_tai != 2) return;
	mov	a,#0x02
	cjne	a,_hieu_ung_hien_tai,00168$
	clr	a
	cjne	a,(_hieu_ung_hien_tai + 1),00168$
	sjmp	00102$
00168$:
	ret
00102$:
;	main.c:106: led = ~(hieu_ung_2 | giu_hieu_ung);
	mov	a,r7
	orl	a,r4
	cpl	a
	mov	_P1,a
;	main.c:107: send_led_state();
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	lcall	_send_led_state
;	main.c:108: delay_ms(delayms);
	mov	r0,_delayms
	mov	a,(_delayms + 1)
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	lcall	_delay_ms
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
;	main.c:109: if (k != countled - 1) hieu_ung_2 = hieu_ung_2 << 1;
	mov	a,r2
	cjne	a,_k,00169$
	mov	a,r3
	cjne	a,(_k + 1),00169$
	sjmp	00112$
00169$:
	mov	ar6,r4
	mov	a,r6
	add	a,r6
	mov	r4,a
00112$:
;	main.c:104: for (k = 0; k < countled; k++) {
	inc	_k
	clr	a
	cjne	a,_k,00111$
	inc	(_k + 1)
	sjmp	00111$
00105$:
;	main.c:111: giu_hieu_ung = hieu_ung_2 | giu_hieu_ung;
	mov	a,r4
	orl	ar7,a
;	main.c:112: countled--;
	dec	_hieu_ung_2_countled_10001_36
	mov	a,#0xff
	cjne	a,_hieu_ung_2_countled_10001_36,00171$
	dec	(_hieu_ung_2_countled_10001_36 + 1)
00171$:
;	main.c:102: for (j = 0; j < 8; j++) {
	inc	_j
	clr	a
	cjne	a,_j,00172$
	inc	(_j + 1)
00172$:
	clr	c
	mov	a,_j
	subb	a,#0x08
	mov	a,(_j + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00173$
	ljmp	00113$
00173$:
;	main.c:115: for (j = 0; j < 8; j++) {
	clr	a
	mov	_j,a
	mov	(_j + 1),a
00115$:
;	main.c:116: if (hieu_ung_hien_tai != 2) return;
	mov	a,#0x02
	cjne	a,_hieu_ung_hien_tai,00174$
	clr	a
	cjne	a,(_hieu_ung_hien_tai + 1),00174$
	sjmp	00108$
00174$:
	ret
00108$:
;	main.c:117: led = ~giu_hieu_ung;
	mov	a,r7
	cpl	a
	mov	_P1,a
;	main.c:118: send_led_state();
	push	ar7
	lcall	_send_led_state
;	main.c:119: delay_ms(delayms);
	mov	r3,_delayms
	mov	a,(_delayms + 1)
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_delay_ms
	pop	ar7
;	main.c:120: giu_hieu_ung = giu_hieu_ung >> 1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	main.c:115: for (j = 0; j < 8; j++) {
	inc	_j
	clr	a
	cjne	a,_j,00175$
	inc	(_j + 1)
00175$:
	clr	c
	mov	a,_j
	subb	a,#0x08
	mov	a,(_j + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00115$
;	main.c:122: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hieu_ung_3'
;------------------------------------------------------------
;hieu_ung_3_1              Allocated to registers r7 
;hieu_ung_3_2              Allocated to registers r6 
;------------------------------------------------------------
;	main.c:125: void hieu_ung_3() {
;	-----------------------------------------
;	 function hieu_ung_3
;	-----------------------------------------
_hieu_ung_3:
;	main.c:126: led = 0xFF;  // Tắt tất cả các led
	mov	_P1,#0xff
;	main.c:127: delay_ms(delayms);
	mov	r4,_delayms
	mov	a,(_delayms + 1)
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_delay_ms
;	main.c:129: unsigned char hieu_ung_3_1 = 0x01;
	mov	r7,#0x01
;	main.c:130: unsigned char hieu_ung_3_2 = 0x80;
	mov	r6,#0x80
;	main.c:131: for (j = 0; j < 8; j++) {
	clr	a
	mov	_j,a
	mov	(_j + 1),a
00106$:
;	main.c:132: if (hieu_ung_hien_tai != 3) return;
	mov	a,#0x03
	cjne	a,_hieu_ung_hien_tai,00128$
	clr	a
	cjne	a,(_hieu_ung_hien_tai + 1),00128$
	sjmp	00102$
00128$:
	ret
00102$:
;	main.c:133: led = ~(hieu_ung_3_1 | hieu_ung_3_2);
	mov	a,r6
	orl	a,r7
	cpl	a
	mov	_P1,a
;	main.c:134: send_led_state();
	push	ar7
	push	ar6
	lcall	_send_led_state
	pop	ar6
	pop	ar7
;	main.c:135: if (hieu_ung_3_1 != 0x08) delay_ms(delayms);
	cjne	r7,#0x08,00129$
	sjmp	00104$
00129$:
	mov	r2,_delayms
	mov	a,(_delayms + 1)
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
00104$:
;	main.c:136: hieu_ung_3_1 = hieu_ung_3_1 << 1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
;	main.c:137: hieu_ung_3_2 = hieu_ung_3_2 >> 1;
	mov	a,r6
	clr	c
	rrc	a
	mov	r6,a
;	main.c:131: for (j = 0; j < 8; j++) {
	inc	_j
	clr	a
	cjne	a,_j,00130$
	inc	(_j + 1)
00130$:
	clr	c
	mov	a,_j
	subb	a,#0x08
	mov	a,(_j + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00106$
;	main.c:139: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initExtInterrupt'
;------------------------------------------------------------
;	main.c:141: void initExtInterrupt() {
;	-----------------------------------------
;	 function initExtInterrupt
;	-----------------------------------------
_initExtInterrupt:
;	main.c:142: P3_2 = 1;//INT0
;	assignBit
	setb	_P3_2
;	main.c:143: P3_3 = 1;//INT1
;	assignBit
	setb	_P3_3
;	main.c:144: IT0 = 1; // cấu hình ngắt ngoài INT0
;	assignBit
	setb	_IT0
;	main.c:145: IT1 = 1;
;	assignBit
	setb	_IT1
;	main.c:146: IE = 0x85;
	mov	_IE,#0x85
;	main.c:147: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR0'
;------------------------------------------------------------
;	main.c:150: void ISR0() __interrupt(0) {// chuyẻn hiệu ứng về trước
;	-----------------------------------------
;	 function ISR0
;	-----------------------------------------
_ISR0:
	push	acc
	push	psw
;	main.c:151: EA = 0; // tắt ngắt toàn cục
;	assignBit
	clr	_EA
;	main.c:152: if (hieu_ung_hien_tai == 1)
	mov	a,#0x01
	cjne	a,_hieu_ung_hien_tai,00112$
	dec	a
	cjne	a,(_hieu_ung_hien_tai + 1),00112$
	sjmp	00113$
00112$:
	sjmp	00102$
00113$:
;	main.c:153: hieu_ung_hien_tai = 3;
	mov	_hieu_ung_hien_tai,#0x03
	mov	(_hieu_ung_hien_tai + 1),#0x00
	sjmp	00103$
00102$:
;	main.c:155: hieu_ung_hien_tai--;
	dec	_hieu_ung_hien_tai
	mov	a,#0xff
	cjne	a,_hieu_ung_hien_tai,00114$
	dec	(_hieu_ung_hien_tai + 1)
00114$:
00103$:
;	main.c:156: EA = 1;
;	assignBit
	setb	_EA
;	main.c:157: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR1'
;------------------------------------------------------------
;	main.c:159: void ISR1() __interrupt(2) {// chuyển hiệu ứng về sau
;	-----------------------------------------
;	 function ISR1
;	-----------------------------------------
_ISR1:
	push	acc
	push	psw
;	main.c:160: EA = 0;
;	assignBit
	clr	_EA
;	main.c:161: if (hieu_ung_hien_tai == 3)
	mov	a,#0x03
	cjne	a,_hieu_ung_hien_tai,00112$
	clr	a
	cjne	a,(_hieu_ung_hien_tai + 1),00112$
	sjmp	00113$
00112$:
	sjmp	00102$
00113$:
;	main.c:162: hieu_ung_hien_tai = 1;
	mov	_hieu_ung_hien_tai,#0x01
	mov	(_hieu_ung_hien_tai + 1),#0x00
	sjmp	00103$
00102$:
;	main.c:164: hieu_ung_hien_tai++;
	inc	_hieu_ung_hien_tai
	clr	a
	cjne	a,_hieu_ung_hien_tai,00114$
	inc	(_hieu_ung_hien_tai + 1)
00114$:
00103$:
;	main.c:165: EA = 1;
;	assignBit
	setb	_EA
;	main.c:166: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:168: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:169: uart_init();  // Khởi tạo UART
	lcall	_uart_init
;	main.c:170: initExtInterrupt();  // Khởi tạo ngắt ngoài 0 và 1
	lcall	_initExtInterrupt
;	main.c:171: while (1) {
00110$:
;	main.c:172: if (hieu_ung_hien_tai == 1) {
	mov	a,#0x01
	cjne	a,_hieu_ung_hien_tai,00138$
	dec	a
	cjne	a,(_hieu_ung_hien_tai + 1),00138$
	sjmp	00139$
00138$:
	sjmp	00107$
00139$:
;	main.c:173: hieu_ung_1();
	lcall	_hieu_ung_1
	sjmp	00110$
00107$:
;	main.c:174: } else if (hieu_ung_hien_tai == 2) {
	mov	a,#0x02
	cjne	a,_hieu_ung_hien_tai,00140$
	clr	a
	cjne	a,(_hieu_ung_hien_tai + 1),00140$
	sjmp	00141$
00140$:
	sjmp	00104$
00141$:
;	main.c:175: hieu_ung_2();
	lcall	_hieu_ung_2
	sjmp	00110$
00104$:
;	main.c:176: } else if (hieu_ung_hien_tai == 3) {
	mov	a,#0x03
	cjne	a,_hieu_ung_hien_tai,00142$
	clr	a
	cjne	a,(_hieu_ung_hien_tai + 1),00142$
	sjmp	00143$
00142$:
	sjmp	00110$
00143$:
;	main.c:177: hieu_ung_3();
	lcall	_hieu_ung_3
;	main.c:180: }
	sjmp	00110$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
