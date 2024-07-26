;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _LED_Mask
	.globl _main
	.globl _uart_send_string
	.globl _uart_init
	.globl _Display
	.globl _delay
	.globl _sprintf
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
_main_buffer_10000_22:
	.ds 404
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated to registers 
;------------------------------------------------------------
;	main.c:13: void delay(u16 i)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6, dpl
	mov	r7, dph
;	main.c:15: while (i--);
00101$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00113$
	dec	r7
00113$:
	mov	a,r4
	orl	a,r5
	jnz	00101$
;	main.c:16: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Display'
;------------------------------------------------------------
;number                    Allocated to registers r7 
;digit1                    Allocated to registers r4 
;digit2                    Allocated to registers r3 
;digit3                    Allocated to registers r6 
;------------------------------------------------------------
;	main.c:18: void Display(u8 number)
;	-----------------------------------------
;	 function Display
;	-----------------------------------------
_Display:
	mov	r7, dpl
;	main.c:20: u8 digit1 = number / 100;     // Chữ số hàng trăm
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl, r7
	mov	dph, r6
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4, dpl
	pop	ar6
	pop	ar7
;	main.c:21: u8 digit2 = (number / 10) % 10; // Chữ số hàng chục
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl, r7
	mov	dph, r6
	push	ar7
	push	ar6
	push	ar4
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r3, dpl
	pop	ar4
	pop	ar6
	pop	ar7
;	main.c:22: u8 digit3 = number % 10;      // Chữ số hàng đơn vị
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl, r7
	mov	dph, r6
	push	ar4
	push	ar3
	lcall	__modsint
	mov	r6, dpl
	pop	ar3
	pop	ar4
;	main.c:25: Q4 = 1;
;	assignBit
	setb	_P2_0
;	main.c:26: Q3 = 0;
;	assignBit
	clr	_P2_1
;	main.c:27: Q2 = 1;
;	assignBit
	setb	_P2_2
;	main.c:28: Q1 = 1;
;	assignBit
	setb	_P2_3
;	main.c:29: P1 = LED_Mask[digit1];
	mov	a,r4
	mov	dptr,#_LED_Mask
	movc	a,@a+dptr
	mov	_P1,a
;	main.c:30: delay(100000);
	mov	dptr,#0x86a0
	push	ar6
	push	ar3
	lcall	_delay
	pop	ar3
;	main.c:31: P1 = 0xFF;
	mov	_P1,#0xff
;	main.c:34: Q4 = 1;
;	assignBit
	setb	_P2_0
;	main.c:35: Q3 = 1;
;	assignBit
	setb	_P2_1
;	main.c:36: Q2 = 0;
;	assignBit
	clr	_P2_2
;	main.c:37: Q1 = 1;
;	assignBit
	setb	_P2_3
;	main.c:38: P1 = LED_Mask[digit2];
	mov	a,r3
	mov	dptr,#_LED_Mask
	movc	a,@a+dptr
	mov	_P1,a
;	main.c:39: delay(100000);
	mov	dptr,#0x86a0
	lcall	_delay
	pop	ar6
;	main.c:40: P1 = 0xFF;
	mov	_P1,#0xff
;	main.c:43: Q4 = 1;
;	assignBit
	setb	_P2_0
;	main.c:44: Q3 = 1;
;	assignBit
	setb	_P2_1
;	main.c:45: Q2 = 1;
;	assignBit
	setb	_P2_2
;	main.c:46: Q1 = 0;
;	assignBit
	clr	_P2_3
;	main.c:47: P1 = LED_Mask[digit3];
	mov	a,r6
	mov	dptr,#_LED_Mask
	movc	a,@a+dptr
	mov	_P1,a
;	main.c:48: delay(100000);
	mov	dptr,#0x86a0
	lcall	_delay
;	main.c:49: P1 = 0xFF;
	mov	_P1,#0xff
;	main.c:50: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_init'
;------------------------------------------------------------
;	main.c:52: void uart_init() {
;	-----------------------------------------
;	 function uart_init
;	-----------------------------------------
_uart_init:
;	main.c:53: TMOD |= 0x20;  // Timer 1 chế độ 2
	orl	_TMOD,#0x20
;	main.c:54: TH1 = 0xFD;    // Baud rate 9600 cho 11.0592 MHz
	mov	_TH1,#0xfd
;	main.c:55: SCON = 0x50;   // Chế độ UART 8-bit, cho phép nhận dữ liệu
	mov	_SCON,#0x50
;	main.c:56: TR1 = 1;       // Khởi động Timer 1
;	assignBit
	setb	_TR1
;	main.c:57: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_send_string'
;------------------------------------------------------------
;str                       Allocated to registers 
;------------------------------------------------------------
;	main.c:59: void uart_send_string(char* str) {
;	-----------------------------------------
;	 function uart_send_string
;	-----------------------------------------
_uart_send_string:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	main.c:60: while (*str) {
00104$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00106$
;	main.c:61: SBUF = *str++;
	mov	_SBUF,r4
	inc	r5
	cjne	r5,#0x00,00165$
	inc	r6
00165$:
;	main.c:62: while (TI == 0);  // Chờ hoàn thành gửi TX
00101$:
;	main.c:63: TI = 0;           // Xóa cờ TI cho byte tiếp theo
;	assignBit
	jbc	_TI,00104$
	sjmp	00101$
00106$:
;	main.c:65: SBUF = '\r';
	mov	_SBUF,#0x0d
;	main.c:66: while (TI == 0);
00107$:
;	main.c:67: TI = 0;
;	assignBit
	jbc	_TI,00167$
	sjmp	00107$
00167$:
;	main.c:68: SBUF = '\n';
	mov	_SBUF,#0x0a
;	main.c:69: while (TI == 0);
00110$:
;	main.c:70: TI = 0;
;	assignBit
	jbc	_TI,00168$
	sjmp	00110$
00168$:
;	main.c:71: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r4 
;buffer                    Allocated with name '_main_buffer_10000_22'
;ptr                       Allocated to registers 
;------------------------------------------------------------
;	main.c:73: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:76: char *ptr = buffer;  // Con trỏ đến vị trí hiện tại trong bộ đệm
;	main.c:77: uart_init();    // Khởi tạo UART
	lcall	_uart_init
;	main.c:80: for (i = 0; i <= 100; i++) {
	mov	r5,#_main_buffer_10000_22
	mov	r6,#(_main_buffer_10000_22 >> 8)
	mov	r7,#0x40
	mov	r4,#0x00
00106$:
;	main.c:81: sprintf(ptr, "%03d\r\n", i);
	mov	ar2,r4
	mov	r3,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	push	ar3
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	push	ar5
	push	ar6
	push	ar7
	lcall	_sprintf
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:82: ptr += 6;  // Di chuyển con trỏ đến vị trí tiếp theo trong bộ đệm
	mov	a,#0x06
	add	a, r5
	mov	r5,a
	clr	a
	addc	a, r6
	mov	r6,a
;	main.c:80: for (i = 0; i <= 100; i++) {
	inc	r4
	mov	a,r4
	add	a,#0xff - 0x64
	jnc	00106$
;	main.c:86: uart_send_string(buffer);
	mov	dptr,#_main_buffer_10000_22
	mov	b, #0x40
	lcall	_uart_send_string
;	main.c:89: for (i = 0; i <= 100; i++) {
00114$:
	mov	r7,#0x00
00108$:
;	main.c:90: Display(i);
	mov	dpl, r7
	push	ar7
	lcall	_Display
;	main.c:91: delay(5000);
	mov	dptr,#0x1388
	lcall	_delay
	pop	ar7
;	main.c:89: for (i = 0; i <= 100; i++) {
	inc	r7
	mov	a,r7
	add	a,#0xff - 0x64
	jnc	00108$
;	main.c:94: }
	sjmp	00114$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_LED_Mask:
	.db #0xc0	; 192
	.db #0xf9	; 249
	.db #0xa4	; 164
	.db #0xb0	; 176
	.db #0x99	; 153
	.db #0x92	; 146
	.db #0x82	; 130
	.db #0xf8	; 248
	.db #0x80	; 128
	.db #0x90	; 144
	.area CONST   (CODE)
___str_0:
	.ascii "%03d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
