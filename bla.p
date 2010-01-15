pcode dump


	New pBlock

internal pblock, dbName =M
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
	MOVWF	r0x1002
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1324:mov2w_op *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1339:mov2w_op
	MOVLW	(__str_0 + 0)
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1367:movwf
;;	1109 rIdx = r0x104A 
	MOVWF	r0x1003
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:6620:genCast
	MOVLW	0x80
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic/gen.c:1367:movwf
;;	1109 rIdx = r0x104C 
	MOVWF	r0x1004
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
