;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.4 #5253 (Oct 31 2008) (UNIX)
; This file was generated Sat Nov 28 12:19:54 2009
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
	.file	"bla.c"
	list	p=16f874a
	radix dec
	include "p16f874a.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	__print_format
	extern	_printf_small
	extern	_printf
	extern	_vprintf
	extern	_sprintf
	extern	_vsprintf
	extern	_puts
	extern	_gets
	extern	_getchar
	extern	_putchar
	extern	__sdcc_gsinit_startup
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_main

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
UDL_bla_0	udata
r0x1000	res	1
r0x1001	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_bla_0	code
__str_0
	retlw 0x09 ; '.'
	retlw 0x09 ; '.'
	retlw 0x63 ; 'c'
	retlw 0x61 ; 'a'
	retlw 0x73 ; 's'
	retlw 0x65 ; 'e'
	retlw 0x20 ; ' '
	retlw 0x25 ; '%'
	retlw 0x69 ; 'i'
	retlw 0x3a ; ':'
	retlw 0x0a ; '.'
	retlw 0x09 ; '.'
	retlw 0x09 ; '.'
	retlw 0x09 ; '.'
	retlw 0x4c ; 'L'
	retlw 0x45 ; 'E'
	retlw 0x44 ; 'D'
	retlw 0x25 ; '%'
	retlw 0x69 ; 'i'
	retlw 0x20 ; ' '
	retlw 0x3d ; '='
	retlw 0x20 ; ' '
	retlw 0x76 ; 'v'
	retlw 0x61 ; 'a'
	retlw 0x6c ; 'l'
	retlw 0x75 ; 'u'
	retlw 0x65 ; 'e'
	retlw 0x3b ; ';'
	retlw 0x0a ; '.'
	retlw 0x09 ; '.'
	retlw 0x09 ; '.'
	retlw 0x09 ; '.'
	retlw 0x62 ; 'b'
	retlw 0x72 ; 'r'
	retlw 0x65 ; 'e'
	retlw 0x61 ; 'a'
	retlw 0x6b ; 'k'
	retlw 0x3b ; ';'
	retlw 0x0a ; '.'
	retlw 0x00 ; '.'
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code
	nop
	pagesel __sdcc_gsinit_startup
	goto	__sdcc_gsinit_startup
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_bla	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   _printf
;   _printf
;5 compiler assigned registers:
;   r0x1000
;   r0x1001
;   r0x1002
;   r0x1003
;   r0x1004
;; Starting pCode block
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2261:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2597:genLabel *{*
;; ***	genLabel  2600
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2261:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2283:genFunction *{*
;; ***	genFunction  2285 curr label offset=0previous max_key=0 
_main	;Function start
; 2 exit points
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2261:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6332:genAssign *{*
;; ***	genAssign  6333
;;	721 register type nRegs=2
;; 	line = 6342 result AOP_REG=r0x1048, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  6434
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6443:genAssign
;;	1109 rIdx = r0x1048 
	.line	6; "bla.c"	for (i=0; i<23; i++)
	BANKSEL	r0x1000
	CLRF	r0x1000
;; ***	genAssign  6434
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6443:genAssign
;;	1109 rIdx = r0x1049 
	CLRF	r0x1001
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2261:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2597:genLabel *{*
;; ***	genLabel  2600
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2261:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3504:ifxForOp *{*
;; ***	ifxForOp  3506
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3357:genCmpLt *{*
;; ***	genCmpLt  3358
;;	721 register type nRegs=2
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3126:genCmp *{*
;signed compare: left < lit(0x17=23), size=2, mask=ffff
;; ***	mov2w  1356  offset=1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1361:mov2w
;;	1109 rIdx = r0x1049 
_00105_DS_
	BANKSEL	r0x1001
	MOVF	r0x1001,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3250:genCmp
	ADDLW	0x80
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3251:genCmp
	ADDLW	0x80
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3270:genCmp
	BTFSS	STATUS,2
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3271:genCmp
;; ***	popGetLabel  key=10, label offset 4
	GOTO	_00114_DS_
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3099:pic14_mov2w_regOrLit
	MOVLW	0x17
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3273:genCmp
;;	1109 rIdx = r0x1048 
	SUBWF	r0x1000,W
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3073:genSkipc *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3078:genSkipc
_00114_DS_
	BTFSC	STATUS,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:3082:genSkipc
;; ***	popGetLabel  key=5, label offset 4
	GOTO	_00109_DS_
;genSkipc:3083: created from rifx:0xbff9ef34
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2261:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2261:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2261:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6521:genCast *{*
;; ***	genCast  6522
;;	641
;;	aopForRemat 425
;;	446: rname __str_0, val 0, const = 0
;;	721 register type nRegs=3
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	__str_0
;; 	line = 6530 result AOP_REG=r0x104A, size=3, left -=-, size=0, right AOP_PCODE=__str_0, size=2
;; ***	genCast  6563
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1324:mov2w_op *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1339:mov2w_op
	.line	8; "bla.c"	printf("\t\tcase %i:\n\t\t\tLED%i = value;\n\t\t\tbreak;\n", i, i);
	MOVLW	high (__str_0 + 0)
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1367:movwf
;;	1109 rIdx = r0x104B 
;;1	MOVWF	r0x1002
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1324:mov2w_op *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1339:mov2w_op
	MOVLW	(__str_0 + 0)
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1367:movwf
;;	1109 rIdx = r0x104A 
;;1	MOVWF	r0x1003
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6620:genCast
	MOVLW	0x80
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1367:movwf
;;	1109 rIdx = r0x104C 
;;1	MOVWF	r0x1004
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2261:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1885:genIpush *{*
;; ***	genIpush  1887 - WARNING no code generated
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2261:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1885:genIpush *{*
;; ***	genIpush  1887 - WARNING no code generated
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2261:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1885:genIpush *{*
;; ***	genIpush  1887 - WARNING no code generated
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2261:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2030:genCall *{*
;; ***	genCall  2032
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1765:saveRegisters *{*
;; ***	saveRegisters  1767
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2116:genCall
	PAGESEL	_printf
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2118:genCall
	CALL	_printf
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2123:genCall
	PAGESEL	$
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1809:unsaveRegisters *{*
;; ***	unsaveRegisters  1811
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2261:resultRemat *{*
;; ***	genPlus  547
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:548:genPlus *{*
;;	721 register type nRegs=2
;;	606
;; 	line = 554 result AOP_REG=r0x1048, size=2, left AOP_REG=r0x1048, size=2, right AOP_LIT=0x01, size=1
;; ***	pic14_getDataSize  1426
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:168:genPlusIncr
;;	1109 rIdx = r0x1048 
	.line	6; "bla.c"	for (i=0; i<23; i++)
	BANKSEL	r0x1000
	INCF	r0x1000,F
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:172:genPlusIncr
	BTFSC	STATUS,2
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/genarith.c:173:genPlusIncr
;;	1109 rIdx = r0x1049 
	INCF	r0x1001,F
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2261:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2614:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2616:genGoto
;; ***	popGetLabel  key=1, label offset 4
	GOTO	_00105_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2261:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2597:genLabel *{*
;; ***	genLabel  2600
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2261:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:2435:genEndFunction *{*
;; ***	genEndFunction  2437
_00109_DS_
	RETURN	
; exit point of _main


;	code size estimation:
;	   20+    5 =    25 instructions (   60 byte)

	end
