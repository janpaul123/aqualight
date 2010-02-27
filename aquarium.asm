;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.7 #5697 (Feb 20 2010) (UNIX)
; This file was generated Fri Feb 26 22:06:53 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
	.file	"aquarium.c"
	list	p=16f874a
	radix dec
	include "p16f874a.inc"
;--------------------------------------------------------
; config word 
;--------------------------------------------------------
	__config 0x3f7b
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_ADCON0_bits
	extern	_ADCON1_bits
	extern	_CCP1CON_bits
	extern	_CCP2CON_bits
	extern	_CMCON_bits
	extern	_CVRCON_bits
	extern	_EECON1_bits
	extern	_INTCON_bits
	extern	_OPTION_REG_bits
	extern	_PCON_bits
	extern	_PIE1_bits
	extern	_PIE2_bits
	extern	_PIR1_bits
	extern	_PIR2_bits
	extern	_PORTA_bits
	extern	_PORTB_bits
	extern	_PORTC_bits
	extern	_PORTD_bits
	extern	_PORTE_bits
	extern	_RCSTA_bits
	extern	_SSPCON_bits
	extern	_SSPCON2_bits
	extern	_SSPSTAT_bits
	extern	_STATUS_bits
	extern	_T1CON_bits
	extern	_T2CON_bits
	extern	_TRISA_bits
	extern	_TRISB_bits
	extern	_TRISC_bits
	extern	_TRISD_bits
	extern	_TRISE_bits
	extern	_TXSTA_bits
	extern	_INDF
	extern	_TMR0
	extern	_PCL
	extern	_STATUS
	extern	_FSR
	extern	_PORTA
	extern	_PORTB
	extern	_PORTC
	extern	_PORTD
	extern	_PORTE
	extern	_PCLATH
	extern	_INTCON
	extern	_PIR1
	extern	_PIR2
	extern	_TMR1L
	extern	_TMR1H
	extern	_T1CON
	extern	_TMR2
	extern	_T2CON
	extern	_SSPBUF
	extern	_SSPCON
	extern	_CCPR1L
	extern	_CCPR1H
	extern	_CCP1CON
	extern	_RCSTA
	extern	_TXREG
	extern	_RCREG
	extern	_CCPR2L
	extern	_CCPR2H
	extern	_CCP2CON
	extern	_ADRESH
	extern	_ADCON0
	extern	_OPTION_REG
	extern	_TRISA
	extern	_TRISB
	extern	_TRISC
	extern	_TRISD
	extern	_TRISE
	extern	_PIE1
	extern	_PIE2
	extern	_PCON
	extern	_SSPCON2
	extern	_PR2
	extern	_SSPADD
	extern	_SSPSTAT
	extern	_TXSTA
	extern	_SPBRG
	extern	_CMCON
	extern	_CVRCON
	extern	_ADRESL
	extern	_ADCON1
	extern	_EEDATA
	extern	_EEADR
	extern	_EEDATH
	extern	_EEADRH
	extern	_EECON1
	extern	_EECON2
	extern	___sdcc_saved_fsr
	extern	__sdcc_gsinit_startup
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_main
	global	_setLEDBothDiscrete
	global	_setLEDDiscrete
	global	_on_init
	global	_delayS
	global	_delayMs
	global	_timer1_init
	global	_isr
	global	_tick
	global	_lasttick

	global PSAVE
	global SSAVE
	global WSAVE
	global STK12
	global STK11
	global STK10
	global STK09
	global STK08
	global STK07
	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0020
PSAVE	res 1
SSAVE	res 1
WSAVE	res 1
STK12	res 1
STK11	res 1
STK10	res 1
STK09	res 1
STK08	res 1
STK07	res 1
STK06	res 1
STK05	res 1
STK04	res 1
STK03	res 1
STK02	res 1
STK01	res 1
STK00	res 1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_aquarium_0	udata
r0x102D	res	1
r0x102C	res	1
r0x102B	res	1
r0x102A	res	1
r0x102E	res	1
r0x102F	res	1
r0x1030	res	1
r0x1031	res	1
r0x1035	res	1
r0x1034	res	1
r0x1033	res	1
r0x1032	res	1
r0x1036	res	1
r0x1037	res	1
r0x1020	res	1
r0x1021	res	1
r0x1027	res	1
r0x1028	res	1
r0x1029	res	1
r0x1022	res	1
r0x1023	res	1
r0x1024	res	1
r0x1025	res	1
_main_PWM_1_1	res	23
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_aquarium_0	idata
_tick
	db	0x00, 0x00, 0x00, 0x00


ID_aquarium_1	idata
_lasttick
	db	0x00, 0x00, 0x00, 0x00

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
	nop
	pagesel __sdcc_gsinit_startup
	goto	__sdcc_gsinit_startup
;--------------------------------------------------------
; interrupt and initialization code
;--------------------------------------------------------
c_interrupt	code	0x4
__sdcc_interrupt
;***
;  pBlock Stats: dbName = I
;***
;entry:  _isr	;Function start
; 0 exit points
;; Starting pCode block
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2257:genFunction *{*
;; ***	genFunction  2259 curr label offset=0previous max_key=0 
_isr	;Function start
; 0 exit points
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2314:genFunction
	.line	21; "aquarium.c"	void isr() interrupt 0 
	MOVWF	WSAVE
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2315:genFunction
	SWAPF	STATUS,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2320:genFunction
	CLRF	STATUS
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2321:genFunction
	BANKSEL	SSAVE
	MOVWF	SSAVE
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2323:genFunction
	MOVF	PCLATH,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2325:genFunction
	CLRF	PCLATH
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2326:genFunction
	MOVWF	PSAVE
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2328:genFunction
	MOVF	FSR,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2329:genFunction
	BANKSEL	___sdcc_saved_fsr
	MOVWF	___sdcc_saved_fsr
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3528:ifxForOp *{*
;; ***	ifxForOp  3530
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3743:genAnd *{*
;; ***	genAnd  3744
;; ***	aopForSym 350
;;	361 sym->rname = _PIR1, size = 1
;; 	line = 3778 result AOP_CRY=0x00, size=0, left AOP_DIR=_PIR1, size=1, right AOP_LIT=0x01, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3670:isLiteralBit *{*
;; ***	isLiteralBit  3671
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3847:genAnd
	.line	24; "aquarium.c"	if(PIR1&0x01)
	BANKSEL	_PIR1
	BTFSS	_PIR1,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3848:genAnd
;; ***	popGetLabel  key=3, label offset 4
	GOTO	_00107_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; ***	genPlus  547
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:548:genPlus *{*
;; ***	aopForSym 350
;;	361 sym->rname = _tick, size = 4
;; 	line = 554 result AOP_DIR=_tick, size=4, left AOP_DIR=_tick, size=4, right AOP_LIT=0x01, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  156
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:168:genPlusIncr
;;	1013
;;	1029  _tick   offset=0
	.line	26; "aquarium.c"	tick++;
	BANKSEL	_tick
	INCF	_tick,F
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:172:genPlusIncr
	BTFSC	STATUS,2
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:173:genPlusIncr
;;	1013
;;	1029  _tick   offset=1
	INCF	(_tick + 1),F
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:172:genPlusIncr
	BTFSC	STATUS,2
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:173:genPlusIncr
;;	1013
;;	1029  _tick   offset=2
	INCF	(_tick + 2),F
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:172:genPlusIncr
	BTFSC	STATUS,2
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:173:genPlusIncr
;;	1013
;;	1029  _tick   offset=3
	INCF	(_tick + 3),F
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6366:genAssign *{*
;; ***	genAssign  6367
;; ***	aopForSym 350
;;	361 sym->rname = _TMR1H, size = 1
;; 	line = 6376 result AOP_DIR=_TMR1H, size=1, left -=-, size=0, right AOP_LIT=0xfc, size=1
;; ***	genAssign  6468
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6473:genAssign
	.line	27; "aquarium.c"	TMR1H=TMR1H_PRESET;
	MOVLW	0xfc
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6475:genAssign
;;	1013
;;	1029  _TMR1H   offset=0
	BANKSEL	_TMR1H
	MOVWF	_TMR1H
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6366:genAssign *{*
;; ***	genAssign  6367
;; ***	aopForSym 350
;;	361 sym->rname = _TMR1L, size = 1
;; 	line = 6376 result AOP_DIR=_TMR1L, size=1, left -=-, size=0, right AOP_LIT=0x17, size=1
;; ***	genAssign  6468
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6473:genAssign
	.line	28; "aquarium.c"	TMR1L=TMR1L_PRESET;
	MOVLW	0x17
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6475:genAssign
;;	1013
;;	1029  _TMR1L   offset=0
	MOVWF	_TMR1L
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3528:ifxForOp *{*
;; ***	ifxForOp  3530
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3743:genAnd *{*
;; ***	genAnd  3744
;; ***	aopForSym 350
;;	361 sym->rname = _PIR1, size = 1
;;	606
;; 	line = 3778 result AOP_DIR=_PIR1, size=1, left AOP_DIR=_PIR1, size=1, right AOP_LIT=0xfe, size=1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3922:genAnd
	.line	30; "aquarium.c"	PIR1&=0xFE;  //clear timer1 interrupt flag
	BCF	_PIR1,0
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2409:genEndFunction *{*
;; ***	genEndFunction  2411
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2482:genEndFunction
_00107_DS_
	BANKSEL	___sdcc_saved_fsr
	MOVF	___sdcc_saved_fsr,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2483:genEndFunction
	MOVWF	FSR
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2485:genEndFunction
	BANKSEL	PSAVE
	MOVF	PSAVE,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2486:genEndFunction
	MOVWF	PCLATH
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2487:genEndFunction
	CLRF	STATUS
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2489:genEndFunction
	SWAPF	SSAVE,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2490:genEndFunction
	MOVWF	STATUS
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2491:genEndFunction
	SWAPF	WSAVE,F
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2492:genEndFunction
	SWAPF	WSAVE,W
END_OF_INTERRUPT
	RETFIE	
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6837:genpic14Code *{*

;--------------------------------------------------------
; code
;--------------------------------------------------------
code_aquarium	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   _on_init
;   _timer1_init
;   _setLEDDiscrete
;   _setLEDDiscrete
;   _on_init
;   _timer1_init
;   _setLEDDiscrete
;   _setLEDDiscrete
;6 compiler assigned registers:
;   r0x1022
;   r0x1023
;   r0x1024
;   r0x1025
;   r0x1026
;   STK00
;; Starting pCode block
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2257:genFunction *{*
;; ***	genFunction  2259 curr label offset=72previous max_key=5 
_main	;Function start
; 2 exit points
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6366:genAssign *{*
;; ***	genAssign  6367
;;	721 register type nRegs=1
;; 	line = 6376 result AOP_REG=r0x105F, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  6468
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6477:genAssign
;;	1109 rIdx = r0x105F 
	.line	206; "aquarium.c"	unsigned char PWMCycle=0;
	BANKSEL	r0x1022
	CLRF	r0x1022
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2004:genCall *{*
;; ***	genCall  2006
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1739:saveRegisters *{*
;; ***	saveRegisters  1741
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2092:genCall
	.line	209; "aquarium.c"	on_init();
	CALL	_on_init
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1783:unsaveRegisters *{*
;; ***	unsaveRegisters  1785
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2004:genCall *{*
;; ***	genCall  2006
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1739:saveRegisters *{*
;; ***	saveRegisters  1741
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2092:genCall
	.line	210; "aquarium.c"	timer1_init();
	CALL	_timer1_init
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1783:unsaveRegisters *{*
;; ***	unsaveRegisters  1785
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6366:genAssign *{*
;; ***	genAssign  6367
;;	721 register type nRegs=1
;; 	line = 6376 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  6468
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6477:genAssign
;;	1109 rIdx = r0x1060 
	.line	211; "aquarium.c"	for(i=0;i<23;i++)
	BANKSEL	r0x1023
	CLRF	r0x1023
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3528:ifxForOp *{*
;; ***	ifxForOp  3530
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3381:genCmpLt *{*
;; ***	genCmpLt  3382
;;	721 register type nRegs=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3100:genCmp *{*
;signed compare: left < lit(0x17=23), size=1, mask=ff
;; ***	mov2w  1356  offset=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1109 rIdx = r0x1060 
_00191_DS_
	BANKSEL	r0x1023
	MOVF	r0x1023,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3259:genCmp
	ADDLW	0x80
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3260:genCmp
	ADDLW	0x69
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3047:genSkipc *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3052:genSkipc
	BTFSC	STATUS,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3056:genSkipc
;; ***	popGetLabel  key=8, label offset 81
	GOTO	_00189_DS_
;genSkipc:3057: created from rifx:0xbf873f2c
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; ***	genPlus  547
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:548:genPlus *{*
;;	641
;;	aopForRemat 425
;;	446: rname _main_PWM_1_1, val 0, const = 0
;;	721 register type nRegs=1
;;	721 register type nRegs=2
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_main_PWM_1_1
;; 	line = 554 result AOP_REG=r0x1061, size=2, left AOP_PCODE=_main_PWM_1_1, size=2, right AOP_REG=r0x1060, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  653
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_main_PWM_1_1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:662:genPlus
;;	1109 rIdx = r0x1060 
	.line	212; "aquarium.c"	PWM[i] = i;//setLEDPWM(i,i);
	MOVF	r0x1023,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:671:genPlus
	ADDLW	(_main_PWM_1_1 + 0)
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:672:genPlus
;;	1109 rIdx = r0x1061 
	MOVWF	r0x1024
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:735:genPlus
	MOVLW	high (_main_PWM_1_1 + 0)
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:736:genPlus
	BTFSC	STATUS,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:737:genPlus
	ADDLW	0x01
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:738:genPlus
;;	1109 rIdx = r0x1062 
	MOVWF	r0x1025
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	721 register type nRegs=2
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;; 	line = 5999 result AOP_REG=r0x1061, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1109 rIdx = r0x1061 
	MOVF	r0x1024,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5170:setup_fsr
	MOVWF	FSR
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5140:SetIrp *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5157:SetIrp
	BCF	STATUS,7
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5159:SetIrp
	BTFSC	r0x1025,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5160:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6026
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6035:genNearPointerSet
;;	1109 rIdx = r0x1060 
	MOVF	r0x1023,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6040:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6048
;; ***	genNearPointerSet  6059
;; ***	genNearPointerSet  6070
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; ***	genPlus  547
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:548:genPlus *{*
;;	721 register type nRegs=1
;;	606
;; 	line = 554 result AOP_REG=r0x1060, size=1, left AOP_REG=r0x1060, size=1, right AOP_LIT=0x01, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:168:genPlusIncr
;;	1109 rIdx = r0x1060 
	.line	211; "aquarium.c"	for(i=0;i<23;i++)
	INCF	r0x1023,F
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=10, label offset 81
	GOTO	_00191_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; ***	genPlus  547
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:548:genPlus *{*
;;	721 register type nRegs=1
;;	606
;; 	line = 554 result AOP_REG=r0x105F, size=1, left AOP_REG=r0x105F, size=1, right AOP_LIT=0x01, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:168:genPlusIncr
;;	1109 rIdx = r0x105F 
_00189_DS_
	.line	217; "aquarium.c"	PWMCycle++;
	BANKSEL	r0x1022
	INCF	r0x1022,F
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3528:ifxForOp *{*
;; ***	ifxForOp  3530
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3381:genCmpLt *{*
;; ***	genCmpLt  3382
;;	721 register type nRegs=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3100:genCmp *{*
;unsigned compare: left < lit(0x16=22), size=1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3073:pic14_mov2w_regOrLit
	.line	218; "aquarium.c"	if (PWMCycle >= PWM_LENGTH) 
	MOVLW	0x16
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3237:genCmp
;;	1109 rIdx = r0x105F 
	.line	219; "aquarium.c"	PWMCycle = 0;
	SUBWF	r0x1022,W
	.line	221; "aquarium.c"	for(i=0;i<=22;i++)
	BTFSC	STATUS,0
	CLRF	r0x1022
	CLRF	r0x1023
_00195_DS_
	BANKSEL	r0x1023
	MOVF	r0x1023,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3259:genCmp
	ADDLW	0x80
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3260:genCmp
	ADDLW	0x69
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3047:genSkipc *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3052:genSkipc
	BTFSC	STATUS,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3056:genSkipc
;; ***	popGetLabel  key=8, label offset 81
	GOTO	_00189_DS_
;genSkipc:3057: created from rifx:0xbf873f2c
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; ***	genPlus  547
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:548:genPlus *{*
;;	641
;;	aopForRemat 425
;;	446: rname _main_PWM_1_1, val 0, const = 0
;;	721 register type nRegs=1
;;	721 register type nRegs=2
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_main_PWM_1_1
;; 	line = 554 result AOP_REG=r0x1061, size=2, left AOP_PCODE=_main_PWM_1_1, size=2, right AOP_REG=r0x1060, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  653
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_main_PWM_1_1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:662:genPlus
;;	1109 rIdx = r0x1060 
	.line	223; "aquarium.c"	if(PWMCycle == PWM[i])
	MOVF	r0x1023,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:671:genPlus
	ADDLW	(_main_PWM_1_1 + 0)
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:672:genPlus
;;	1109 rIdx = r0x1061 
	MOVWF	r0x1024
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:735:genPlus
	MOVLW	high (_main_PWM_1_1 + 0)
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:736:genPlus
	BTFSC	STATUS,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:737:genPlus
	ADDLW	0x01
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:738:genPlus
;;	1109 rIdx = r0x1062 
	MOVWF	r0x1025
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5642:genPointerGet *{*
;; ***	genPointerGet  5643
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5431:genNearPointerGet *{*
;; ***	genNearPointerGet  5432
;;	721 register type nRegs=2
;; ***	genNearPointerGet  5448
;;	721 register type nRegs=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1109 rIdx = r0x1061 
	MOVF	r0x1024,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5170:setup_fsr
	MOVWF	FSR
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5140:SetIrp *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5157:SetIrp
	BCF	STATUS,7
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5159:SetIrp
	BTFSC	r0x1025,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5160:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5477
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5483:genNearPointerGet
	MOVF	INDF,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5487:genNearPointerGet
;;	1109 rIdx = r0x1063 
;;1	MOVWF	r0x1026
	XORWF	r0x1022,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3495:genCmpEq
	BTFSS	STATUS,2
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3497:genCmpEq
;; ***	popGetLabel  key=4, label offset 81
	GOTO	_00185_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2004:genCall *{*
;; ***	genCall  2006
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1739:saveRegisters *{*
;; ***	saveRegisters  1741
;;	721 register type nRegs=1
;; 	2053 left AOP_LIT
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1324:mov2w_op *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1339:mov2w_op
	.line	224; "aquarium.c"	setLEDDiscrete(i, 0);
	MOVLW	0x00
;;	721 register type nRegs=1
;; 	2053 left AOP_REG
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2061:genCall
;; ***	popRegFromIdx,1043  , rIdx=0x2f
	BANKSEL	STK00
	MOVWF	STK00
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1109 rIdx = r0x1060 
	BANKSEL	r0x1023
	MOVF	r0x1023,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2092:genCall
	CALL	_setLEDDiscrete
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1783:unsaveRegisters *{*
;; ***	unsaveRegisters  1785
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6221:genIfx *{*
;; ***	genIfx  6222
;;	721 register type nRegs=1
;; ***	pic14_toBoolean  1477
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1483:pic14_toBoolean
_00185_DS_
	.line	225; "aquarium.c"	if(PWMCycle == 0)
	MOVLW	0x00
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1491:pic14_toBoolean
;;	1109 rIdx = r0x105F 
	BANKSEL	r0x1022
	IORWF	r0x1022,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6267:genIfx
	BTFSS	STATUS,2
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6268:genIfx
;; ***	popGetLabel  key=16, label offset 81
	GOTO	_00197_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2004:genCall *{*
;; ***	genCall  2006
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1739:saveRegisters *{*
;; ***	saveRegisters  1741
;;	721 register type nRegs=1
;; 	2053 left AOP_LIT
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1324:mov2w_op *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1339:mov2w_op
	.line	226; "aquarium.c"	setLEDDiscrete(i, 1);
	MOVLW	0x01
;;	721 register type nRegs=1
;; 	2053 left AOP_REG
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2061:genCall
;; ***	popRegFromIdx,1043  , rIdx=0x2f
	BANKSEL	STK00
	MOVWF	STK00
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1109 rIdx = r0x1060 
	BANKSEL	r0x1023
	MOVF	r0x1023,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2092:genCall
	CALL	_setLEDDiscrete
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1783:unsaveRegisters *{*
;; ***	unsaveRegisters  1785
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; ***	genPlus  547
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:548:genPlus *{*
;;	721 register type nRegs=1
;;	606
;; 	line = 554 result AOP_REG=r0x1060, size=1, left AOP_REG=r0x1060, size=1, right AOP_LIT=0x01, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:168:genPlusIncr
;;	1109 rIdx = r0x1060 
_00197_DS_
	.line	221; "aquarium.c"	for(i=0;i<=22;i++)
	BANKSEL	r0x1023
	INCF	r0x1023,F
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=14, label offset 81
	GOTO	_00195_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2409:genEndFunction *{*
;; ***	genEndFunction  2411
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;entry:  _setLEDBothDiscrete	;Function start
; 2 exit points
;has an exit
;functions called:
;   _setLEDDiscrete
;   _setLEDDiscrete
;   _setLEDDiscrete
;   _setLEDDiscrete
;5 compiler assigned registers:
;   r0x1027
;   STK00
;   r0x1028
;   STK01
;   r0x1029
;; Starting pCode block
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2257:genFunction *{*
;; ***	genFunction  2259 curr label offset=37previous max_key=31 
_setLEDBothDiscrete	;Function start
; 2 exit points
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6773:genReceive *{*
;; ***	genReceive  6774
;;	721 register type nRegs=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1840:assignResultValue *{*
;; ***	assignResultValue  1842
;; 	line = 1844 result -=-, size=0, left AOP_REG=r0x105C, size=1, right -=-, size=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1367:movwf
;;	1109 rIdx = r0x105C 
	.line	169; "aquarium.c"	void setLEDBothDiscrete(char number, char value, char mirror)
	BANKSEL	r0x1027
	MOVWF	r0x1027
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6773:genReceive *{*
;; ***	genReceive  6774
;;	721 register type nRegs=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1840:assignResultValue *{*
;; ***	assignResultValue  1842
;; 	line = 1844 result -=-, size=0, left AOP_REG=r0x105D, size=1, right -=-, size=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1393:get_returnvalue
;; ***	popRegFromIdx,1043  , rIdx=0x2f
	BANKSEL	STK00
	MOVF	STK00,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1367:movwf
;;	1109 rIdx = r0x105D 
	BANKSEL	r0x1028
	MOVWF	r0x1028
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6773:genReceive *{*
;; ***	genReceive  6774
;;	721 register type nRegs=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1840:assignResultValue *{*
;; ***	assignResultValue  1842
;; 	line = 1844 result -=-, size=0, left AOP_REG=r0x105E, size=1, right -=-, size=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1393:get_returnvalue
;; ***	popRegFromIdx,1043  , rIdx=0x2e
	BANKSEL	STK01
	MOVF	STK01,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1367:movwf
;;	1109 rIdx = r0x105E 
	BANKSEL	r0x1029
	MOVWF	r0x1029
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3528:ifxForOp *{*
;; ***	ifxForOp  3530
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3381:genCmpLt *{*
;; ***	genCmpLt  3382
;;	721 register type nRegs=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3100:genCmp *{*
;signed compare: left < lit(0xB=11), size=1, mask=ff
;; ***	mov2w  1356  offset=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1109 rIdx = r0x105C 
	.line	171; "aquarium.c"	if (number < 11)
	MOVF	r0x1027,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3259:genCmp
	ADDLW	0x80
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3260:genCmp
	ADDLW	0x75
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3047:genSkipc *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3052:genSkipc
	BTFSC	STATUS,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3056:genSkipc
;; ***	popGetLabel  key=2, label offset 72
	GOTO	_00174_DS_
;genSkipc:3057: created from rifx:0xbf873f2c
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2004:genCall *{*
;; ***	genCall  2006
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1739:saveRegisters *{*
;; ***	saveRegisters  1741
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	2053 left AOP_REG
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1109 rIdx = r0x105D 
	.line	172; "aquarium.c"	setLEDDiscrete(number, value);
	MOVF	r0x1028,W
;;	721 register type nRegs=1
;; 	2053 left AOP_REG
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2061:genCall
;; ***	popRegFromIdx,1043  , rIdx=0x2f
	BANKSEL	STK00
	MOVWF	STK00
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1109 rIdx = r0x105C 
	BANKSEL	r0x1027
	MOVF	r0x1027,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2092:genCall
	CALL	_setLEDDiscrete
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1783:unsaveRegisters *{*
;; ***	unsaveRegisters  1785
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6221:genIfx *{*
;; ***	genIfx  6222
;;	721 register type nRegs=1
;; ***	pic14_toBoolean  1477
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1483:pic14_toBoolean
_00174_DS_
	.line	174; "aquarium.c"	if (mirror)
	MOVLW	0x00
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1491:pic14_toBoolean
;;	1109 rIdx = r0x105E 
	BANKSEL	r0x1029
	IORWF	r0x1029,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6270:genIfx
	BTFSC	STATUS,2
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6271:genIfx
;; ***	popGetLabel  key=4, label offset 72
	GOTO	_00176_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3528:ifxForOp *{*
;; ***	ifxForOp  3530
;; NULL :(	3550
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6729:genDjnz *{*
;; ***	genDjnz  6730
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:832:genMinus *{*
;; ***	genMinus  833
;;	721 register type nRegs=1
;;	606
;; 	result AOP_REG, left AOP_LIT, right AOP_REG
;; left is lit	line 950 result AOP_REG, left AOP_LIT, right AOP_REG
;; ***	mov2w  1356  offset=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1109 rIdx = r0x105C 
	.line	175; "aquarium.c"	number = 22-number;
	MOVF	r0x1027,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:989:genMinus
	SUBLW	0x16
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:990:genMinus
;;	1109 rIdx = r0x105C 
	MOVWF	r0x1027
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=5, label offset 72
	GOTO	_00177_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; ***	genPlus  547
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:548:genPlus *{*
;;	721 register type nRegs=1
;;	606
;; 	line = 554 result AOP_REG=r0x105C, size=1, left AOP_REG=r0x105C, size=1, right AOP_LIT=0x0b, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;;	adding lit to something. size 1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:270:genAddLit *{*
;; ***	genAddLit  271
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:233:genAddLit2byte *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:245:genAddLit2byte
_00176_DS_
	.line	177; "aquarium.c"	number += 11;
	MOVLW	0x0b
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:246:genAddLit2byte
;;	1109 rIdx = r0x105C 
	BANKSEL	r0x1027
	ADDWF	r0x1027,F
;; ***	addSign  797
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:798:addSign *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2004:genCall *{*
;; ***	genCall  2006
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1739:saveRegisters *{*
;; ***	saveRegisters  1741
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	2053 left AOP_REG
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1109 rIdx = r0x105D 
_00177_DS_
	.line	178; "aquarium.c"	setLEDDiscrete(number, value);
	BANKSEL	r0x1028
	MOVF	r0x1028,W
;;	721 register type nRegs=1
;; 	2053 left AOP_REG
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2061:genCall
;; ***	popRegFromIdx,1043  , rIdx=0x2f
	BANKSEL	STK00
	MOVWF	STK00
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1109 rIdx = r0x105C 
	BANKSEL	r0x1027
	MOVF	r0x1027,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2092:genCall
	CALL	_setLEDDiscrete
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1783:unsaveRegisters *{*
;; ***	unsaveRegisters  1785
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2409:genEndFunction *{*
;; ***	genEndFunction  2411
	RETURN	
; exit point of _setLEDBothDiscrete
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6837:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;entry:  _setLEDDiscrete	;Function start
; 2 exit points
;has an exit
;3 compiler assigned registers:
;   r0x1020
;   STK00
;   r0x1021
;; Starting pCode block
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2257:genFunction *{*
;; ***	genFunction  2259 curr label offset=33previous max_key=0 
_setLEDDiscrete	;Function start
; 2 exit points
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6773:genReceive *{*
;; ***	genReceive  6774
;;	721 register type nRegs=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1840:assignResultValue *{*
;; ***	assignResultValue  1842
;; 	line = 1844 result -=-, size=0, left AOP_REG=r0x105A, size=1, right -=-, size=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1367:movwf
;;	1109 rIdx = r0x105A 
	.line	91; "aquarium.c"	void setLEDDiscrete(char number, char value)
	BANKSEL	r0x1020
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6773:genReceive *{*
;; ***	genReceive  6774
;;	721 register type nRegs=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1840:assignResultValue *{*
;; ***	assignResultValue  1842
;; 	line = 1844 result -=-, size=0, left AOP_REG=r0x105B, size=1, right -=-, size=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1393:get_returnvalue
;; ***	popRegFromIdx,1043  , rIdx=0x2f
	BANKSEL	STK00
	MOVF	STK00,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1367:movwf
;;	1109 rIdx = r0x105B 
	BANKSEL	r0x1021
	MOVWF	r0x1021
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3528:ifxForOp *{*
;; ***	ifxForOp  3530
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3381:genCmpLt *{*
;; ***	genCmpLt  3382
;;	721 register type nRegs=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3100:genCmp *{*
;signed compare: left < lit(0x0=0), size=1, mask=ff
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3214:genCmp
	.line	93; "aquarium.c"	switch(number)
	BSF	STATUS,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3217:genCmp
	BTFSS	r0x1020,7
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3219:genCmp
	BCF	STATUS,0
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3047:genSkipc *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3052:genSkipc
	BTFSC	STATUS,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3056:genSkipc
;; ***	popGetLabel  key=26, label offset 37
	GOTO	_00046_DS_
;genSkipc:3057: created from rifx:0xbf873f2c
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3528:ifxForOp *{*
;; ***	ifxForOp  3530
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3351:genCmpGt *{*
;; ***	genCmpGt  3352
;;	721 register type nRegs=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3100:genCmp *{*
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0x17=23), size=1, mask=ff
;; ***	mov2w  1356  offset=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1109 rIdx = r0x105A 
	MOVF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3259:genCmp
	ADDLW	0x80
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3260:genCmp
	ADDLW	0x69
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3047:genSkipc *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3052:genSkipc
	BTFSC	STATUS,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3056:genSkipc
;; ***	popGetLabel  key=26, label offset 37
	GOTO	_00046_DS_
;genSkipc:3057: created from rifx:0xbf873f2c
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6507:genJumpTab *{*
;; ***	genJumpTab  6508
;;	721 register type nRegs=1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6523:genJumpTab
;; ***	popGetLabel  key=31, label offset 37
	MOVLW	HIGH(_00168_DS_)
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6524:genJumpTab
	MOVWF	PCLATH
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6525:genJumpTab
;; ***	popGetLabel  key=31, label offset 37
	MOVLW	_00168_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6526:genJumpTab
;;	1109 rIdx = r0x105A 
	ADDWF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6527:genJumpTab
	BTFSC	STATUS,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6528:genJumpTab
	INCF	PCLATH,F
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6529:genJumpTab
	BANKSEL	PCL
	MOVWF	PCL
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6538:genJumpTab
;; ***	popGetLabel  key=1, label offset 37
_00168_DS_
	GOTO	_00138_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6538:genJumpTab
;; ***	popGetLabel  key=2, label offset 37
	GOTO	_00139_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6538:genJumpTab
;; ***	popGetLabel  key=3, label offset 37
	GOTO	_00140_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6538:genJumpTab
;; ***	popGetLabel  key=4, label offset 37
	GOTO	_00141_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6538:genJumpTab
;; ***	popGetLabel  key=5, label offset 37
	GOTO	_00142_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6538:genJumpTab
;; ***	popGetLabel  key=6, label offset 37
	GOTO	_00143_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6538:genJumpTab
;; ***	popGetLabel  key=7, label offset 37
	GOTO	_00144_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6538:genJumpTab
;; ***	popGetLabel  key=8, label offset 37
	GOTO	_00145_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6538:genJumpTab
;; ***	popGetLabel  key=9, label offset 37
	GOTO	_00146_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6538:genJumpTab
;; ***	popGetLabel  key=10, label offset 37
	GOTO	_00147_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6538:genJumpTab
;; ***	popGetLabel  key=11, label offset 37
	GOTO	_00148_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6538:genJumpTab
;; ***	popGetLabel  key=12, label offset 37
	GOTO	_00149_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6538:genJumpTab
;; ***	popGetLabel  key=13, label offset 37
	GOTO	_00150_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6538:genJumpTab
;; ***	popGetLabel  key=14, label offset 37
	GOTO	_00151_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6538:genJumpTab
;; ***	popGetLabel  key=15, label offset 37
	GOTO	_00152_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6538:genJumpTab
;; ***	popGetLabel  key=16, label offset 37
	GOTO	_00153_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6538:genJumpTab
;; ***	popGetLabel  key=17, label offset 37
	GOTO	_00154_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6538:genJumpTab
;; ***	popGetLabel  key=18, label offset 37
	GOTO	_00155_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6538:genJumpTab
;; ***	popGetLabel  key=19, label offset 37
	GOTO	_00156_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6538:genJumpTab
;; ***	popGetLabel  key=20, label offset 37
	GOTO	_00157_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6538:genJumpTab
;; ***	popGetLabel  key=21, label offset 37
	GOTO	_00158_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6538:genJumpTab
;; ***	popGetLabel  key=22, label offset 37
	GOTO	_00159_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6538:genJumpTab
;; ***	popGetLabel  key=23, label offset 37
	GOTO	_00160_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6555:genCast *{*
;; ***	genCast  6556
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6564 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genCast  6670
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6690:genCast
;;	1109 rIdx = r0x105B 
_00138_DS_
	.line	96; "aquarium.c"	LED0 = (value?1:0);
	BANKSEL	r0x1021
	MOVF	r0x1021,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6691:genCast
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 5999 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5827:genPackBits
;;	1109 rIdx = r0x105A 
	RRF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5828:genPackBits
	BTFSC	STATUS,0
	GOTO	_00001_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5829:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BANKSEL	_PORTC_bits
	BCF	_PORTC_bits,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5830:genPackBits
_00001_DS_
	BTFSS	STATUS,0
	GOTO	_00002_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5831:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BANKSEL	_PORTC_bits
	BSF	_PORTC_bits,0
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=26, label offset 37
_00002_DS_
	.line	97; "aquarium.c"	break;
	GOTO	_00046_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6555:genCast *{*
;; ***	genCast  6556
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6564 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genCast  6670
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6690:genCast
;;	1109 rIdx = r0x105B 
_00139_DS_
	.line	99; "aquarium.c"	LED1 = (value?1:0);
	BANKSEL	r0x1021
	MOVF	r0x1021,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6691:genCast
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 5999 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5827:genPackBits
;;	1109 rIdx = r0x105A 
	RRF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5828:genPackBits
	BTFSC	STATUS,0
	GOTO	_00003_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5829:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BANKSEL	_PORTC_bits
	BCF	_PORTC_bits,1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5830:genPackBits
_00003_DS_
	BTFSS	STATUS,0
	GOTO	_00004_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5831:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BANKSEL	_PORTC_bits
	BSF	_PORTC_bits,1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=26, label offset 37
_00004_DS_
	.line	100; "aquarium.c"	break;
	GOTO	_00046_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6555:genCast *{*
;; ***	genCast  6556
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6564 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genCast  6670
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6690:genCast
;;	1109 rIdx = r0x105B 
_00140_DS_
	.line	102; "aquarium.c"	LED2 = (value?1:0);
	BANKSEL	r0x1021
	MOVF	r0x1021,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6691:genCast
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 5999 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5827:genPackBits
;;	1109 rIdx = r0x105A 
	RRF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5828:genPackBits
	BTFSC	STATUS,0
	GOTO	_00005_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5829:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BANKSEL	_PORTC_bits
	BCF	_PORTC_bits,2
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5830:genPackBits
_00005_DS_
	BTFSS	STATUS,0
	GOTO	_00006_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5831:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BANKSEL	_PORTC_bits
	BSF	_PORTC_bits,2
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=26, label offset 37
_00006_DS_
	.line	103; "aquarium.c"	break;
	GOTO	_00046_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6555:genCast *{*
;; ***	genCast  6556
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6564 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genCast  6670
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6690:genCast
;;	1109 rIdx = r0x105B 
_00141_DS_
	.line	105; "aquarium.c"	LED3 = (value?1:0);
	BANKSEL	r0x1021
	MOVF	r0x1021,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6691:genCast
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 5999 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5827:genPackBits
;;	1109 rIdx = r0x105A 
	RRF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5828:genPackBits
	BTFSC	STATUS,0
	GOTO	_00007_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5829:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BANKSEL	_PORTC_bits
	BCF	_PORTC_bits,3
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5830:genPackBits
_00007_DS_
	BTFSS	STATUS,0
	GOTO	_00008_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5831:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BANKSEL	_PORTC_bits
	BSF	_PORTC_bits,3
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=26, label offset 37
_00008_DS_
	.line	106; "aquarium.c"	break;
	GOTO	_00046_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6555:genCast *{*
;; ***	genCast  6556
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6564 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genCast  6670
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6690:genCast
;;	1109 rIdx = r0x105B 
_00142_DS_
	.line	108; "aquarium.c"	LED4 = (value?1:0);
	BANKSEL	r0x1021
	MOVF	r0x1021,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6691:genCast
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 5999 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5827:genPackBits
;;	1109 rIdx = r0x105A 
	RRF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5828:genPackBits
	BTFSC	STATUS,0
	GOTO	_00009_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5829:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BANKSEL	_PORTC_bits
	BCF	_PORTC_bits,4
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5830:genPackBits
_00009_DS_
	BTFSS	STATUS,0
	GOTO	_00010_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5831:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BANKSEL	_PORTC_bits
	BSF	_PORTC_bits,4
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=26, label offset 37
_00010_DS_
	.line	109; "aquarium.c"	break;
	GOTO	_00046_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6555:genCast *{*
;; ***	genCast  6556
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6564 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genCast  6670
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6690:genCast
;;	1109 rIdx = r0x105B 
_00143_DS_
	.line	111; "aquarium.c"	LED5 = (value?1:0);
	BANKSEL	r0x1021
	MOVF	r0x1021,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6691:genCast
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 5999 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5827:genPackBits
;;	1109 rIdx = r0x105A 
	RRF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5828:genPackBits
	BTFSC	STATUS,0
	GOTO	_00011_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5829:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BANKSEL	_PORTC_bits
	BCF	_PORTC_bits,5
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5830:genPackBits
_00011_DS_
	BTFSS	STATUS,0
	GOTO	_00012_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5831:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BANKSEL	_PORTC_bits
	BSF	_PORTC_bits,5
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=26, label offset 37
_00012_DS_
	.line	112; "aquarium.c"	break;
	GOTO	_00046_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6555:genCast *{*
;; ***	genCast  6556
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6564 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genCast  6670
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6690:genCast
;;	1109 rIdx = r0x105B 
_00144_DS_
	.line	114; "aquarium.c"	LED6 = (value?1:0);
	BANKSEL	r0x1021
	MOVF	r0x1021,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6691:genCast
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 5999 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5827:genPackBits
;;	1109 rIdx = r0x105A 
	RRF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5828:genPackBits
	BTFSC	STATUS,0
	GOTO	_00013_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5829:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BANKSEL	_PORTC_bits
	BCF	_PORTC_bits,6
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5830:genPackBits
_00013_DS_
	BTFSS	STATUS,0
	GOTO	_00014_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5831:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BANKSEL	_PORTC_bits
	BSF	_PORTC_bits,6
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=26, label offset 37
_00014_DS_
	.line	115; "aquarium.c"	break;
	GOTO	_00046_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6555:genCast *{*
;; ***	genCast  6556
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6564 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genCast  6670
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6690:genCast
;;	1109 rIdx = r0x105B 
_00145_DS_
	.line	117; "aquarium.c"	LED7 = (value?1:0);
	BANKSEL	r0x1021
	MOVF	r0x1021,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6691:genCast
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 5999 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5827:genPackBits
;;	1109 rIdx = r0x105A 
	RRF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5828:genPackBits
	BTFSC	STATUS,0
	GOTO	_00015_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5829:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BANKSEL	_PORTD_bits
	BCF	_PORTD_bits,7
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5830:genPackBits
_00015_DS_
	BTFSS	STATUS,0
	GOTO	_00016_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5831:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BANKSEL	_PORTD_bits
	BSF	_PORTD_bits,7
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=26, label offset 37
_00016_DS_
	.line	118; "aquarium.c"	break;
	GOTO	_00046_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6555:genCast *{*
;; ***	genCast  6556
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6564 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genCast  6670
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6690:genCast
;;	1109 rIdx = r0x105B 
_00146_DS_
	.line	120; "aquarium.c"	LED8 = (value?1:0);
	BANKSEL	r0x1021
	MOVF	r0x1021,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6691:genCast
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5999 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5827:genPackBits
;;	1109 rIdx = r0x105A 
	RRF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5828:genPackBits
	BTFSC	STATUS,0
	GOTO	_00017_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5829:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BANKSEL	_PORTB_bits
	BCF	_PORTB_bits,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5830:genPackBits
_00017_DS_
	BTFSS	STATUS,0
	GOTO	_00018_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5831:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BANKSEL	_PORTB_bits
	BSF	_PORTB_bits,0
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=26, label offset 37
_00018_DS_
	.line	121; "aquarium.c"	break;
	GOTO	_00046_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6555:genCast *{*
;; ***	genCast  6556
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6564 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genCast  6670
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6690:genCast
;;	1109 rIdx = r0x105B 
_00147_DS_
	.line	123; "aquarium.c"	LED9 = (value?1:0);
	BANKSEL	r0x1021
	MOVF	r0x1021,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6691:genCast
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5999 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5827:genPackBits
;;	1109 rIdx = r0x105A 
	RRF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5828:genPackBits
	BTFSC	STATUS,0
	GOTO	_00019_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5829:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BANKSEL	_PORTB_bits
	BCF	_PORTB_bits,2
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5830:genPackBits
_00019_DS_
	BTFSS	STATUS,0
	GOTO	_00020_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5831:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BANKSEL	_PORTB_bits
	BSF	_PORTB_bits,2
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=26, label offset 37
_00020_DS_
	.line	124; "aquarium.c"	break;
	GOTO	_00046_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6555:genCast *{*
;; ***	genCast  6556
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6564 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genCast  6670
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6690:genCast
;;	1109 rIdx = r0x105B 
_00148_DS_
	.line	126; "aquarium.c"	LED10 = (value?1:0);
	BANKSEL	r0x1021
	MOVF	r0x1021,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6691:genCast
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5999 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5827:genPackBits
;;	1109 rIdx = r0x105A 
	RRF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5828:genPackBits
	BTFSC	STATUS,0
	GOTO	_00021_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5829:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BANKSEL	_PORTB_bits
	BCF	_PORTB_bits,1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5830:genPackBits
_00021_DS_
	BTFSS	STATUS,0
	GOTO	_00022_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5831:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BANKSEL	_PORTB_bits
	BSF	_PORTB_bits,1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=26, label offset 37
_00022_DS_
	.line	127; "aquarium.c"	break;
	GOTO	_00046_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6555:genCast *{*
;; ***	genCast  6556
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6564 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genCast  6670
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6690:genCast
;;	1109 rIdx = r0x105B 
_00149_DS_
	.line	129; "aquarium.c"	LED11 = (value?1:0);
	BANKSEL	r0x1021
	MOVF	r0x1021,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6691:genCast
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 5999 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5827:genPackBits
;;	1109 rIdx = r0x105A 
	RRF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5828:genPackBits
	BTFSC	STATUS,0
	GOTO	_00023_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5829:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BANKSEL	_PORTD_bits
	BCF	_PORTD_bits,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5830:genPackBits
_00023_DS_
	BTFSS	STATUS,0
	GOTO	_00024_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5831:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BANKSEL	_PORTD_bits
	BSF	_PORTD_bits,0
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=26, label offset 37
_00024_DS_
	.line	130; "aquarium.c"	break;
	GOTO	_00046_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6555:genCast *{*
;; ***	genCast  6556
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6564 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genCast  6670
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6690:genCast
;;	1109 rIdx = r0x105B 
_00150_DS_
	.line	132; "aquarium.c"	LED12 = (value?1:0);
	BANKSEL	r0x1021
	MOVF	r0x1021,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6691:genCast
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 5999 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5827:genPackBits
;;	1109 rIdx = r0x105A 
	RRF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5828:genPackBits
	BTFSC	STATUS,0
	GOTO	_00025_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5829:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BANKSEL	_PORTC_bits
	BCF	_PORTC_bits,7
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5830:genPackBits
_00025_DS_
	BTFSS	STATUS,0
	GOTO	_00026_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5831:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BANKSEL	_PORTC_bits
	BSF	_PORTC_bits,7
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=26, label offset 37
_00026_DS_
	.line	133; "aquarium.c"	break;
	GOTO	_00046_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6555:genCast *{*
;; ***	genCast  6556
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6564 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genCast  6670
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6690:genCast
;;	1109 rIdx = r0x105B 
_00151_DS_
	.line	135; "aquarium.c"	LED13 = (value?1:0);
	BANKSEL	r0x1021
	MOVF	r0x1021,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6691:genCast
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 5999 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5827:genPackBits
;;	1109 rIdx = r0x105A 
	RRF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5828:genPackBits
	BTFSC	STATUS,0
	GOTO	_00027_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5829:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BANKSEL	_PORTD_bits
	BCF	_PORTD_bits,1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5830:genPackBits
_00027_DS_
	BTFSS	STATUS,0
	GOTO	_00028_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5831:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BANKSEL	_PORTD_bits
	BSF	_PORTD_bits,1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=26, label offset 37
_00028_DS_
	.line	136; "aquarium.c"	break;
	GOTO	_00046_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6555:genCast *{*
;; ***	genCast  6556
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6564 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genCast  6670
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6690:genCast
;;	1109 rIdx = r0x105B 
_00152_DS_
	.line	138; "aquarium.c"	LED14 = (value?1:0);
	BANKSEL	r0x1021
	MOVF	r0x1021,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6691:genCast
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 5999 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5827:genPackBits
;;	1109 rIdx = r0x105A 
	RRF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5828:genPackBits
	BTFSC	STATUS,0
	GOTO	_00029_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5829:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BANKSEL	_PORTD_bits
	BCF	_PORTD_bits,2
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5830:genPackBits
_00029_DS_
	BTFSS	STATUS,0
	GOTO	_00030_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5831:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BANKSEL	_PORTD_bits
	BSF	_PORTD_bits,2
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=26, label offset 37
_00030_DS_
	.line	139; "aquarium.c"	break;
	GOTO	_00046_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6555:genCast *{*
;; ***	genCast  6556
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6564 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genCast  6670
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6690:genCast
;;	1109 rIdx = r0x105B 
_00153_DS_
	.line	141; "aquarium.c"	LED15 = (value?1:0);
	BANKSEL	r0x1021
	MOVF	r0x1021,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6691:genCast
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 5999 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5827:genPackBits
;;	1109 rIdx = r0x105A 
	RRF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5828:genPackBits
	BTFSC	STATUS,0
	GOTO	_00031_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5829:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BANKSEL	_PORTD_bits
	BCF	_PORTD_bits,4
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5830:genPackBits
_00031_DS_
	BTFSS	STATUS,0
	GOTO	_00032_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5831:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BANKSEL	_PORTD_bits
	BSF	_PORTD_bits,4
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=26, label offset 37
_00032_DS_
	.line	142; "aquarium.c"	break;
	GOTO	_00046_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6555:genCast *{*
;; ***	genCast  6556
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6564 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genCast  6670
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6690:genCast
;;	1109 rIdx = r0x105B 
_00154_DS_
	.line	144; "aquarium.c"	LED16 = (value?1:0);
	BANKSEL	r0x1021
	MOVF	r0x1021,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6691:genCast
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 5999 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5827:genPackBits
;;	1109 rIdx = r0x105A 
	RRF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5828:genPackBits
	BTFSC	STATUS,0
	GOTO	_00033_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5829:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BANKSEL	_PORTD_bits
	BCF	_PORTD_bits,3
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5830:genPackBits
_00033_DS_
	BTFSS	STATUS,0
	GOTO	_00034_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5831:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BANKSEL	_PORTD_bits
	BSF	_PORTD_bits,3
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=26, label offset 37
_00034_DS_
	.line	145; "aquarium.c"	break;
	GOTO	_00046_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6555:genCast *{*
;; ***	genCast  6556
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6564 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genCast  6670
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6690:genCast
;;	1109 rIdx = r0x105B 
_00155_DS_
	.line	147; "aquarium.c"	LED17 = (value?1:0);
	BANKSEL	r0x1021
	MOVF	r0x1021,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6691:genCast
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 5999 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5827:genPackBits
;;	1109 rIdx = r0x105A 
	RRF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5828:genPackBits
	BTFSC	STATUS,0
	GOTO	_00035_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5829:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BANKSEL	_PORTD_bits
	BCF	_PORTD_bits,5
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5830:genPackBits
_00035_DS_
	BTFSS	STATUS,0
	GOTO	_00036_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5831:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BANKSEL	_PORTD_bits
	BSF	_PORTD_bits,5
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=26, label offset 37
_00036_DS_
	.line	148; "aquarium.c"	break;
	GOTO	_00046_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6555:genCast *{*
;; ***	genCast  6556
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6564 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genCast  6670
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6690:genCast
;;	1109 rIdx = r0x105B 
_00156_DS_
	.line	150; "aquarium.c"	LED18 = (value?1:0);
	BANKSEL	r0x1021
	MOVF	r0x1021,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6691:genCast
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 5999 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5827:genPackBits
;;	1109 rIdx = r0x105A 
	RRF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5828:genPackBits
	BTFSC	STATUS,0
	GOTO	_00037_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5829:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BANKSEL	_PORTD_bits
	BCF	_PORTD_bits,6
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5830:genPackBits
_00037_DS_
	BTFSS	STATUS,0
	GOTO	_00038_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5831:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BANKSEL	_PORTD_bits
	BSF	_PORTD_bits,6
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=26, label offset 37
_00038_DS_
	.line	151; "aquarium.c"	break;
	GOTO	_00046_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6555:genCast *{*
;; ***	genCast  6556
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6564 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genCast  6670
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6690:genCast
;;	1109 rIdx = r0x105B 
_00157_DS_
	.line	153; "aquarium.c"	LED19 = (value?1:0);
	BANKSEL	r0x1021
	MOVF	r0x1021,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6691:genCast
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _PORTE_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTE_bits
;; 	line = 5999 result AOP_PCODE=_PORTE_bits, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5827:genPackBits
;;	1109 rIdx = r0x105A 
	RRF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5828:genPackBits
	BTFSC	STATUS,0
	GOTO	_00039_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5829:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTE_bits
	BANKSEL	_PORTE_bits
	BCF	_PORTE_bits,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5830:genPackBits
_00039_DS_
	BTFSS	STATUS,0
	GOTO	_00040_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5831:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTE_bits
	BANKSEL	_PORTE_bits
	BSF	_PORTE_bits,0
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=26, label offset 37
_00040_DS_
	.line	154; "aquarium.c"	break;
	GOTO	_00046_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6555:genCast *{*
;; ***	genCast  6556
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6564 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genCast  6670
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6690:genCast
;;	1109 rIdx = r0x105B 
_00158_DS_
	.line	156; "aquarium.c"	LED20 = (value?1:0);
	BANKSEL	r0x1021
	MOVF	r0x1021,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6691:genCast
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5999 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5827:genPackBits
;;	1109 rIdx = r0x105A 
	RRF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5828:genPackBits
	BTFSC	STATUS,0
	GOTO	_00041_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5829:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BANKSEL	_PORTB_bits
	BCF	_PORTB_bits,5
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5830:genPackBits
_00041_DS_
	BTFSS	STATUS,0
	GOTO	_00042_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5831:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BANKSEL	_PORTB_bits
	BSF	_PORTB_bits,5
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=26, label offset 37
_00042_DS_
	.line	157; "aquarium.c"	break;
	GOTO	_00046_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6555:genCast *{*
;; ***	genCast  6556
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6564 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genCast  6670
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6690:genCast
;;	1109 rIdx = r0x105B 
_00159_DS_
	.line	159; "aquarium.c"	LED21 = (value?1:0);
	BANKSEL	r0x1021
	MOVF	r0x1021,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6691:genCast
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5999 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5827:genPackBits
;;	1109 rIdx = r0x105A 
	RRF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5828:genPackBits
	BTFSC	STATUS,0
	GOTO	_00043_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5829:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BANKSEL	_PORTB_bits
	BCF	_PORTB_bits,4
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5830:genPackBits
_00043_DS_
	BTFSS	STATUS,0
	GOTO	_00044_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5831:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BANKSEL	_PORTB_bits
	BSF	_PORTB_bits,4
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2588:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2590:genGoto
;; ***	popGetLabel  key=26, label offset 37
_00044_DS_
	.line	160; "aquarium.c"	break;
	GOTO	_00046_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6555:genCast *{*
;; ***	genCast  6556
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6564 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_REG=r0x105B, size=1
;; ***	genCast  6670
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6690:genCast
;;	1109 rIdx = r0x105B 
_00160_DS_
	.line	162; "aquarium.c"	LED22 = (value?1:0);
	BANKSEL	r0x1021
	MOVF	r0x1021,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6691:genCast
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1020
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	721 register type nRegs=1
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5999 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5827:genPackBits
;;	1109 rIdx = r0x105A 
	RRF	r0x1020,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5828:genPackBits
	BTFSC	STATUS,0
	GOTO	_00045_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5829:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BANKSEL	_PORTB_bits
	BCF	_PORTB_bits,3
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5830:genPackBits
_00045_DS_
	BTFSS	STATUS,0
	GOTO	_00046_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5831:genPackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BANKSEL	_PORTB_bits
	BSF	_PORTB_bits,3
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2409:genEndFunction *{*
;; ***	genEndFunction  2411
_00046_DS_
	.line	166; "aquarium.c"	}
	RETURN	
; exit point of _setLEDDiscrete
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6837:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;entry:  _on_init	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2257:genFunction *{*
;; ***	genFunction  2259 curr label offset=26previous max_key=3 
_on_init	;Function start
; 2 exit points
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6366:genAssign *{*
;; ***	genAssign  6367
;; ***	aopForSym 350
;;	361 sym->rname = _ADCON1, size = 1
;; 	line = 6376 result AOP_DIR=_ADCON1, size=1, left -=-, size=0, right AOP_LIT=0x06, size=1
;; ***	genAssign  6468
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6473:genAssign
	.line	60; "aquarium.c"	ADCON1=6;		//AD converter uit
	MOVLW	0x06
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6475:genAssign
;;	1013
;;	1029  _ADCON1   offset=0
	BANKSEL	_ADCON1
	MOVWF	_ADCON1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISA_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISA_bits
;; 	line = 5999 result AOP_PCODE=_TRISA_bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISA_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	61; "aquarium.c"	TRIS_SW1 = 1;	//Knop1 input
	BSF	_TRISA_bits,0
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISA_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISA_bits
;; 	line = 5999 result AOP_PCODE=_TRISA_bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISA_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	62; "aquarium.c"	TRIS_SW2 = 1;	//Knop2 input
	BSF	_TRISA_bits,1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISA_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISA_bits
;; 	line = 5999 result AOP_PCODE=_TRISA_bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISA_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	63; "aquarium.c"	TRIS_SW3 = 1;	//Knop3 input
	BSF	_TRISA_bits,2
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISA_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISA_bits
;; 	line = 5999 result AOP_PCODE=_TRISA_bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISA_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	64; "aquarium.c"	TRIS_SW4 = 1;	//Knop4 input
	BSF	_TRISA_bits,3
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISC_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
;; 	line = 5999 result AOP_PCODE=_TRISC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	66; "aquarium.c"	TRIS_LED0 = 0; //Led0 output
	BCF	_TRISC_bits,0
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISC_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
;; 	line = 5999 result AOP_PCODE=_TRISC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	67; "aquarium.c"	TRIS_LED1 = 0; //Led1 output
	BCF	_TRISC_bits,1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISC_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
;; 	line = 5999 result AOP_PCODE=_TRISC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	68; "aquarium.c"	TRIS_LED2 = 0; //Led2 output
	BCF	_TRISC_bits,2
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISC_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
;; 	line = 5999 result AOP_PCODE=_TRISC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	69; "aquarium.c"	TRIS_LED3 = 0; //Led3 output
	BCF	_TRISC_bits,3
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISC_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
;; 	line = 5999 result AOP_PCODE=_TRISC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	70; "aquarium.c"	TRIS_LED4 = 0; //Led4 output
	BCF	_TRISC_bits,4
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISC_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
;; 	line = 5999 result AOP_PCODE=_TRISC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	71; "aquarium.c"	TRIS_LED5 = 0; //Led5 output
	BCF	_TRISC_bits,5
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISC_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
;; 	line = 5999 result AOP_PCODE=_TRISC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	72; "aquarium.c"	TRIS_LED6 = 0; //Led6 output
	BCF	_TRISC_bits,6
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISD_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
;; 	line = 5999 result AOP_PCODE=_TRISD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	73; "aquarium.c"	TRIS_LED7 = 0; //Led7 output
	BCF	_TRISD_bits,7
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISB_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
;; 	line = 5999 result AOP_PCODE=_TRISB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	74; "aquarium.c"	TRIS_LED8 = 0; //Led8 output
	BCF	_TRISB_bits,0
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISB_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
;; 	line = 5999 result AOP_PCODE=_TRISB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	75; "aquarium.c"	TRIS_LED9 = 0; //Led9 output
	BCF	_TRISB_bits,2
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISB_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
;; 	line = 5999 result AOP_PCODE=_TRISB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	76; "aquarium.c"	TRIS_LED10 = 0; //Led10 output
	BCF	_TRISB_bits,1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISD_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
;; 	line = 5999 result AOP_PCODE=_TRISD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	77; "aquarium.c"	TRIS_LED11 = 0; //Led11 output
	BCF	_TRISD_bits,0
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISC_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
;; 	line = 5999 result AOP_PCODE=_TRISC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	78; "aquarium.c"	TRIS_LED12 = 0; //Led12 output
	BCF	_TRISC_bits,7
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISD_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
;; 	line = 5999 result AOP_PCODE=_TRISD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	79; "aquarium.c"	TRIS_LED13 = 0; //Led13 output
	BCF	_TRISD_bits,1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISD_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
;; 	line = 5999 result AOP_PCODE=_TRISD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	80; "aquarium.c"	TRIS_LED14 = 0; //Led14 output
	BCF	_TRISD_bits,2
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISD_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
;; 	line = 5999 result AOP_PCODE=_TRISD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	81; "aquarium.c"	TRIS_LED15 = 0; //Led15 output
	BCF	_TRISD_bits,4
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISD_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
;; 	line = 5999 result AOP_PCODE=_TRISD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	82; "aquarium.c"	TRIS_LED16 = 0; //Led16 output
	BCF	_TRISD_bits,3
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISD_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
;; 	line = 5999 result AOP_PCODE=_TRISD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	83; "aquarium.c"	TRIS_LED17 = 0; //Led17 output
	BCF	_TRISD_bits,5
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISD_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
;; 	line = 5999 result AOP_PCODE=_TRISD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	84; "aquarium.c"	TRIS_LED18 = 0; //Led18 output
	BCF	_TRISD_bits,6
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISE_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISE_bits
;; 	line = 5999 result AOP_PCODE=_TRISE_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISE_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	85; "aquarium.c"	TRIS_LED19 = 0; //Led19 output
	BCF	_TRISE_bits,0
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISB_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
;; 	line = 5999 result AOP_PCODE=_TRISB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	86; "aquarium.c"	TRIS_LED20 = 0; //Led20 output
	BCF	_TRISB_bits,5
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISB_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
;; 	line = 5999 result AOP_PCODE=_TRISB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	87; "aquarium.c"	TRIS_LED21 = 0; //Led21 output
	BCF	_TRISB_bits,4
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6151:genPointerSet *{*
;; ***	genPointerSet  6152
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5979:genNearPointerSet *{*
;; ***	genNearPointerSet  5980
;;	641
;;	aopForRemat 425
;;	446: rname _TRISB_bits, val 0, const = 0
;; ***	genNearPointerSet  5997
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
;; 	line = 5999 result AOP_PCODE=_TRISB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5728:genPackBits *{*
;; ***	genPackBits  5729
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:5754:genPackBits
	.line	88; "aquarium.c"	TRIS_LED22 = 0; //Led22 output
	BCF	_TRISB_bits,3
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2409:genEndFunction *{*
;; ***	genEndFunction  2411
	RETURN	
; exit point of _on_init
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6837:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;entry:  _delayS	;Function start
; 2 exit points
;has an exit
;functions called:
;   _delayMs
;   _delayMs
;9 compiler assigned registers:
;   r0x1032
;   STK00
;   r0x1033
;   STK01
;   r0x1034
;   STK02
;   r0x1035
;   r0x1036
;   r0x1037
;; Starting pCode block
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2257:genFunction *{*
;; ***	genFunction  2259 curr label offset=15previous max_key=7 
_delayS	;Function start
; 2 exit points
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6773:genReceive *{*
;; ***	genReceive  6774
;;	721 register type nRegs=4
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1840:assignResultValue *{*
;; ***	assignResultValue  1842
;; 	line = 1844 result -=-, size=0, left AOP_REG=r0x1054, size=4, right -=-, size=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1367:movwf
;;	1109 rIdx = r0x1057 
	.line	48; "aquarium.c"	void delayS(unsigned long time)
	BANKSEL	r0x1032
	MOVWF	r0x1032
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1393:get_returnvalue
;; ***	popRegFromIdx,1043  , rIdx=0x2f
	BANKSEL	STK00
	MOVF	STK00,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1367:movwf
;;	1109 rIdx = r0x1056 
	BANKSEL	r0x1033
	MOVWF	r0x1033
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1393:get_returnvalue
;; ***	popRegFromIdx,1043  , rIdx=0x2e
	BANKSEL	STK01
	MOVF	STK01,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1367:movwf
;;	1109 rIdx = r0x1055 
	BANKSEL	r0x1034
	MOVWF	r0x1034
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1393:get_returnvalue
;; ***	popRegFromIdx,1043  , rIdx=0x2d
	BANKSEL	STK02
	MOVF	STK02,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1367:movwf
;;	1109 rIdx = r0x1054 
	BANKSEL	r0x1035
	MOVWF	r0x1035
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6366:genAssign *{*
;; ***	genAssign  6367
;;	721 register type nRegs=2
;; 	line = 6376 result AOP_REG=r0x1058, size=2, left -=-, size=0, right AOP_LIT=0xe8, size=2
;; ***	genAssign  6468
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6473:genAssign
	.line	51; "aquarium.c"	for(i=0; i<1000; i++)
	MOVLW	0xe8
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6475:genAssign
;;	1109 rIdx = r0x1058 
	MOVWF	r0x1036
;; ***	genAssign  6468
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6473:genAssign
	MOVLW	0x03
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6475:genAssign
;;	1109 rIdx = r0x1059 
	MOVWF	r0x1037
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2004:genCall *{*
;; ***	genCall  2006
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1739:saveRegisters *{*
;; ***	saveRegisters  1741
;;	721 register type nRegs=4
;;	721 register type nRegs=4
;; 	2053 left AOP_REG
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1109 rIdx = r0x1054 
_00129_DS_
	.line	52; "aquarium.c"	delayMs(time);
	BANKSEL	r0x1035
	MOVF	r0x1035,W
;; 	2053 left AOP_REG
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2061:genCall
;; ***	popRegFromIdx,1043  , rIdx=0x2d
	BANKSEL	STK02
	MOVWF	STK02
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1109 rIdx = r0x1055 
	BANKSEL	r0x1034
	MOVF	r0x1034,W
;; 	2053 left AOP_REG
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2061:genCall
;; ***	popRegFromIdx,1043  , rIdx=0x2e
	BANKSEL	STK01
	MOVWF	STK01
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=2
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1109 rIdx = r0x1056 
	BANKSEL	r0x1033
	MOVF	r0x1033,W
;; 	2053 left AOP_REG
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2061:genCall
;; ***	popRegFromIdx,1043  , rIdx=0x2f
	BANKSEL	STK00
	MOVWF	STK00
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=3
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1109 rIdx = r0x1057 
	BANKSEL	r0x1032
	MOVF	r0x1032,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2092:genCall
	CALL	_delayMs
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1783:unsaveRegisters *{*
;; ***	unsaveRegisters  1785
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3528:ifxForOp *{*
;; ***	ifxForOp  3530
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6729:genDjnz *{*
;; ***	genDjnz  6730
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:832:genMinus *{*
;; ***	genMinus  833
;;	721 register type nRegs=2
;;	606
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:270:genAddLit *{*
;; ***	genAddLit  271
;; hi = ff	genAddLit  342
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:353:genAddLit
	MOVLW	0xff
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:354:genAddLit
;;	1109 rIdx = r0x1058 
	BANKSEL	r0x1036
	ADDWF	r0x1036,F
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:355:genAddLit
	BTFSS	STATUS,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:356:genAddLit
;;	1109 rIdx = r0x1059 
	DECF	r0x1037,F
;; ***	addSign  797
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:798:addSign *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6221:genIfx *{*
;; ***	genIfx  6222
;;	721 register type nRegs=2
;; ***	pic14_toBoolean  1477
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1486:pic14_toBoolean
;;	1109 rIdx = r0x1058 
	.line	51; "aquarium.c"	for(i=0; i<1000; i++)
	MOVF	r0x1036,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1491:pic14_toBoolean
;;	1109 rIdx = r0x1059 
	IORWF	r0x1037,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6267:genIfx
	BTFSS	STATUS,2
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6268:genIfx
;; ***	popGetLabel  key=3, label offset 26
	GOTO	_00129_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2409:genEndFunction *{*
;; ***	genEndFunction  2411
	RETURN	
; exit point of _delayS
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6837:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;entry:  _delayMs	;Function start
; 2 exit points
;has an exit
;11 compiler assigned registers:
;   r0x102A
;   STK00
;   r0x102B
;   STK01
;   r0x102C
;   STK02
;   r0x102D
;   r0x102E
;   r0x102F
;   r0x1030
;   r0x1031
;; Starting pCode block
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2257:genFunction *{*
;; ***	genFunction  2259 curr label offset=11previous max_key=0 
_delayMs	;Function start
; 2 exit points
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6773:genReceive *{*
;; ***	genReceive  6774
;;	721 register type nRegs=4
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1840:assignResultValue *{*
;; ***	assignResultValue  1842
;; 	line = 1844 result -=-, size=0, left AOP_REG=r0x104C, size=4, right -=-, size=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1367:movwf
;;	1109 rIdx = r0x104F 
	.line	42; "aquarium.c"	void delayMs(unsigned long time)
	BANKSEL	r0x102A
	MOVWF	r0x102A
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1393:get_returnvalue
;; ***	popRegFromIdx,1043  , rIdx=0x2f
	BANKSEL	STK00
	MOVF	STK00,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1367:movwf
;;	1109 rIdx = r0x104E 
	BANKSEL	r0x102B
	MOVWF	r0x102B
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1393:get_returnvalue
;; ***	popRegFromIdx,1043  , rIdx=0x2e
	BANKSEL	STK01
	MOVF	STK01,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1367:movwf
;;	1109 rIdx = r0x104D 
	BANKSEL	r0x102C
	MOVWF	r0x102C
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1393:get_returnvalue
;; ***	popRegFromIdx,1043  , rIdx=0x2d
	BANKSEL	STK02
	MOVF	STK02,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1367:movwf
;;	1109 rIdx = r0x104C 
	BANKSEL	r0x102D
	MOVWF	r0x102D
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6366:genAssign *{*
;; ***	genAssign  6367
;; ***	aopForSym 350
;;	361 sym->rname = _tick, size = 4
;; ***	aopForSym 350
;;	361 sym->rname = _lasttick, size = 4
;; 	line = 6376 result AOP_DIR=_lasttick, size=4, left -=-, size=0, right AOP_DIR=_tick, size=4
;; ***	genAssign  6468
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1013
;;	1029  _tick   offset=0
	.line	44; "aquarium.c"	lasttick=tick;
	BANKSEL	_tick
	MOVF	_tick,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6487:genAssign
;;	1013
;;	1029  _lasttick   offset=0
	BANKSEL	_lasttick
	MOVWF	_lasttick
;; ***	genAssign  6468
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1013
;;	1029  _tick   offset=1
	BANKSEL	_tick
	MOVF	(_tick + 1),W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6487:genAssign
;;	1013
;;	1029  _lasttick   offset=1
	BANKSEL	_lasttick
	MOVWF	(_lasttick + 1)
;; ***	genAssign  6468
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=2
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1013
;;	1029  _tick   offset=2
	BANKSEL	_tick
	MOVF	(_tick + 2),W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6487:genAssign
;;	1013
;;	1029  _lasttick   offset=2
	BANKSEL	_lasttick
	MOVWF	(_lasttick + 2)
;; ***	genAssign  6468
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=3
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1013
;;	1029  _tick   offset=3
	BANKSEL	_tick
	MOVF	(_tick + 3),W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6487:genAssign
;;	1013
;;	1029  _lasttick   offset=3
	BANKSEL	_lasttick
	MOVWF	(_lasttick + 3)
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3528:ifxForOp *{*
;; ***	ifxForOp  3530
;; NULL :(	3550
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6729:genDjnz *{*
;; ***	genDjnz  6730
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:832:genMinus *{*
;; ***	genMinus  833
;; ***	aopForSym 350
;;	361 sym->rname = _tick, size = 4
;; ***	aopForSym 350
;;	361 sym->rname = _lasttick, size = 4
;;	721 register type nRegs=4
;; 	result AOP_REG, left AOP_DIR, right AOP_DIR
;; ***	mov2w  1356  offset=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1013
;;	1029  _lasttick   offset=0
_00116_DS_
	.line	45; "aquarium.c"	while((tick-lasttick)<time)continue;
	BANKSEL	_lasttick
	MOVF	_lasttick,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:989:genMinus
;;	1013
;;	1029  _tick   offset=0
	BANKSEL	_tick
	SUBWF	_tick,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:990:genMinus
;;	1109 rIdx = r0x1050 
	BANKSEL	r0x102E
	MOVWF	r0x102E
;; ***	mov2w  1356  offset=1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1013
;;	1029  _tick   offset=1
	BANKSEL	_tick
	MOVF	(_tick + 1),W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:1113:genMinus
;;	1109 rIdx = r0x1051 
	BANKSEL	r0x102F
	MOVWF	r0x102F
;; ***	mov2w  1356  offset=1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1013
;;	1029  _lasttick   offset=1
	BANKSEL	_lasttick
	MOVF	(_lasttick + 1),W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:1115:genMinus
	BTFSS	STATUS,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:1116:genMinus
;;	1013
;;	1029  _lasttick   offset=1
	INCF	(_lasttick + 1),W
	BTFSC	STATUS,2
	GOTO	_00047_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:1117:genMinus
;;	1109 rIdx = r0x1051 
	BANKSEL	r0x102F
	SUBWF	r0x102F,F
;; ***	mov2w  1356  offset=2
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1013
;;	1029  _tick   offset=2
_00047_DS_
	BANKSEL	_tick
	MOVF	(_tick + 2),W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:1113:genMinus
;;	1109 rIdx = r0x1052 
	BANKSEL	r0x1030
	MOVWF	r0x1030
;; ***	mov2w  1356  offset=2
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1013
;;	1029  _lasttick   offset=2
	BANKSEL	_lasttick
	MOVF	(_lasttick + 2),W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:1115:genMinus
	BTFSS	STATUS,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:1116:genMinus
;;	1013
;;	1029  _lasttick   offset=2
	INCF	(_lasttick + 2),W
	BTFSC	STATUS,2
	GOTO	_00048_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:1117:genMinus
;;	1109 rIdx = r0x1052 
	BANKSEL	r0x1030
	SUBWF	r0x1030,F
;; ***	mov2w  1356  offset=3
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1013
;;	1029  _lasttick   offset=3
_00048_DS_
	BANKSEL	_lasttick
	MOVF	(_lasttick + 3),W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:1085:genMinus
	BTFSS	STATUS,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:1086:genMinus
;;	1013
;;	1029  _lasttick   offset=3
	INCF	(_lasttick + 3),W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:1089:genMinus
;;	1013
;;	1029  _tick   offset=3
	BANKSEL	_tick
	SUBWF	(_tick + 3),W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:1090:genMinus
;;	1109 rIdx = r0x1053 
	BANKSEL	r0x1031
	MOVWF	r0x1031
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3528:ifxForOp *{*
;; ***	ifxForOp  3530
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3381:genCmpLt *{*
;; ***	genCmpLt  3382
;;	721 register type nRegs=4
;;	721 register type nRegs=4
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3100:genCmp *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3075:pic14_mov2w_regOrLit
;;	1109 rIdx = r0x104F 
	MOVF	r0x102A,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3237:genCmp
;;	1109 rIdx = r0x1053 
	SUBWF	r0x1031,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3282:genCmp
	BTFSS	STATUS,2
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3283:genCmp
;; ***	popGetLabel  key=7, label offset 15
	GOTO	_00122_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3075:pic14_mov2w_regOrLit
;;	1109 rIdx = r0x104E 
	MOVF	r0x102B,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3285:genCmp
;;	1109 rIdx = r0x1052 
	SUBWF	r0x1030,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3282:genCmp
	BTFSS	STATUS,2
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3283:genCmp
;; ***	popGetLabel  key=7, label offset 15
	GOTO	_00122_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3075:pic14_mov2w_regOrLit
;;	1109 rIdx = r0x104D 
	MOVF	r0x102C,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3285:genCmp
;;	1109 rIdx = r0x1051 
	SUBWF	r0x102F,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3282:genCmp
	BTFSS	STATUS,2
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3283:genCmp
;; ***	popGetLabel  key=7, label offset 15
	GOTO	_00122_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3075:pic14_mov2w_regOrLit
;;	1109 rIdx = r0x104C 
	MOVF	r0x102D,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3285:genCmp
;;	1109 rIdx = r0x1050 
	SUBWF	r0x102E,W
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3047:genSkipc *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3054:genSkipc
_00122_DS_
	BTFSS	STATUS,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3056:genSkipc
;; ***	popGetLabel  key=1, label offset 15
	GOTO	_00116_DS_
;genSkipc:3057: created from rifx:0xbf873f2c
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2409:genEndFunction *{*
;; ***	genEndFunction  2411
	RETURN	
; exit point of _delayMs
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6837:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;entry:  _timer1_init	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2257:genFunction *{*
;; ***	genFunction  2259 curr label offset=4previous max_key=3 
_timer1_init	;Function start
; 2 exit points
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6366:genAssign *{*
;; ***	genAssign  6367
;; ***	aopForSym 350
;;	361 sym->rname = _T1CON, size = 1
;; 	line = 6376 result AOP_DIR=_T1CON, size=1, left -=-, size=0, right AOP_LIT=0x01, size=1
;; ***	genAssign  6468
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6473:genAssign
	.line	36; "aquarium.c"	T1CON=0x01;
	MOVLW	0x01
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6475:genAssign
;;	1013
;;	1029  _T1CON   offset=0
	BANKSEL	_T1CON
	MOVWF	_T1CON
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3528:ifxForOp *{*
;; ***	ifxForOp  3530
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:4005:genOr *{*
;; ***	genOr  4006
;; ***	aopForSym 350
;;	361 sym->rname = _INTCON, size = 1
;;	606
;; 	line = 4012 result AOP_DIR=_INTCON, size=1, left AOP_DIR=_INTCON, size=1, right AOP_LIT=0xc0, size=1
;; 	line = 4037 result AOP_DIR=_INTCON, size=1, left AOP_DIR=_INTCON, size=1, right AOP_LIT=0xc0, size=1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:4172:genOr
	.line	37; "aquarium.c"	INTCON|=0xC0; //enable global interrupts
	MOVLW	0xc0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:4174:genOr
;;	1013
;;	1027  _INTCON   offset=0 - had to alloc by reg name
	IORWF	_INTCON,F
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3528:ifxForOp *{*
;; ***	ifxForOp  3530
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:4005:genOr *{*
;; ***	genOr  4006
;; ***	aopForSym 350
;;	361 sym->rname = _PIE1, size = 1
;;	606
;; 	line = 4012 result AOP_DIR=_PIE1, size=1, left AOP_DIR=_PIE1, size=1, right AOP_LIT=0x01, size=1
;; 	line = 4037 result AOP_DIR=_PIE1, size=1, left AOP_DIR=_PIE1, size=1, right AOP_LIT=0x01, size=1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:4169:genOr
	.line	38; "aquarium.c"	PIE1|=0x01;  //enable timer1 interrupt
	BANKSEL	_PIE1
	BSF	_PIE1,0
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3528:ifxForOp *{*
;; ***	ifxForOp  3530
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3743:genAnd *{*
;; ***	genAnd  3744
;; ***	aopForSym 350
;;	361 sym->rname = _PIR1, size = 1
;;	606
;; 	line = 3778 result AOP_DIR=_PIR1, size=1, left AOP_DIR=_PIR1, size=1, right AOP_LIT=0xfe, size=1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3922:genAnd
	.line	39; "aquarium.c"	PIR1&=0xFE;  //clear timer1 interrupt flag
	BANKSEL	_PIR1
	BCF	_PIR1,0
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2571:genLabel *{*
;; ***	genLabel  2574
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2235:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2409:genEndFunction *{*
;; ***	genEndFunction  2411
	RETURN	
; exit point of _timer1_init
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6837:genpic14Code *{*


;	code size estimation:
;	  523+  151 =   674 instructions ( 1650 byte)

	end
