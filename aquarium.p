pcode dump


	New pBlock

internal pblock, dbName =M
;; Starting pCode block
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2372:genFunction *{*
;; ***	genFunction  2374 curr label offset=100previous max_key=5 
_main	;Function start
; 2 exit points
;; gen.c:2327:resultRemat *{*
;; gen.c:2096:genCall *{*
;; ***	genCall  2098
;; gen.c:1781:saveRegisters *{*
;; ***	saveRegisters  1783
; >>> gen.c:2184:genCall
	.line	207; "aquarium.c"	on_init();
	CALL	_on_init
;; gen.c:1825:unsaveRegisters *{*
;; ***	unsaveRegisters  1827
;; gen.c:2327:resultRemat *{*
;; gen.c:2096:genCall *{*
;; ***	genCall  2098
;; gen.c:1781:saveRegisters *{*
;; ***	saveRegisters  1783
; >>> gen.c:2184:genCall
	.line	208; "aquarium.c"	timer1_init();
	CALL	_timer1_init
;; gen.c:1825:unsaveRegisters *{*
;; ***	unsaveRegisters  1827
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTE_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTE_bits
;; 	line = 7743 result AOP_PCODE=_PORTE_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTE_bits
; >>> gen.c:7498:genPackBits
_00211_DS_
	.line	212; "aquarium.c"	LED0 = 0;
	BCF	_PORTE_bits,0
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 7743 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
; >>> gen.c:7498:genPackBits
	.line	213; "aquarium.c"	LED1 = 0;
	BCF	_PORTC_bits,0
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 7743 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
; >>> gen.c:7498:genPackBits
	.line	214; "aquarium.c"	LED2 = 0;
	BCF	_PORTC_bits,1
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 7743 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
; >>> gen.c:7498:genPackBits
	.line	215; "aquarium.c"	LED3 = 0;
	BCF	_PORTC_bits,2
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 7743 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
; >>> gen.c:7498:genPackBits
	.line	216; "aquarium.c"	LED4 = 0;
	BCF	_PORTC_bits,3
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 7743 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
; >>> gen.c:7498:genPackBits
	.line	217; "aquarium.c"	LED5 = 0;
	BCF	_PORTC_bits,4
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 7743 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
; >>> gen.c:7498:genPackBits
	.line	218; "aquarium.c"	LED6 = 0;
	BCF	_PORTC_bits,5
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 7743 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
; >>> gen.c:7498:genPackBits
	.line	219; "aquarium.c"	LED7 = 0;
	BCF	_PORTC_bits,6
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 7743 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
; >>> gen.c:7498:genPackBits
	.line	221; "aquarium.c"	LED8 = 0;
	BCF	_PORTC_bits,7
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 7743 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
; >>> gen.c:7498:genPackBits
	.line	222; "aquarium.c"	LED9 = 0;
	BCF	_PORTD_bits,0
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 7743 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
; >>> gen.c:7498:genPackBits
	.line	223; "aquarium.c"	LED10 = 0;
	BCF	_PORTD_bits,1
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 7743 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
; >>> gen.c:7498:genPackBits
	.line	224; "aquarium.c"	LED11 = 0;
	BCF	_PORTD_bits,2
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 7743 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
; >>> gen.c:7498:genPackBits
	.line	225; "aquarium.c"	LED12 = 0;
	BCF	_PORTD_bits,3
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 7743 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
; >>> gen.c:7498:genPackBits
	.line	226; "aquarium.c"	LED13 = 0;
	BCF	_PORTD_bits,4
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 7743 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
; >>> gen.c:7498:genPackBits
	.line	227; "aquarium.c"	LED14 = 0;
	BCF	_PORTD_bits,5
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 7743 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
; >>> gen.c:7498:genPackBits
	.line	228; "aquarium.c"	LED15 = 0;
	BCF	_PORTD_bits,6
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 7743 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
; >>> gen.c:7498:genPackBits
	.line	230; "aquarium.c"	LED16 = 0;
	BCF	_PORTD_bits,7
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 7743 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:7498:genPackBits
	.line	231; "aquarium.c"	LED17 = 0;
	BCF	_PORTB_bits,0
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 7743 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:7498:genPackBits
	.line	232; "aquarium.c"	LED18 = 0;
	BCF	_PORTB_bits,1
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 7743 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:7498:genPackBits
	.line	233; "aquarium.c"	LED19 = 0;
	BCF	_PORTB_bits,2
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 7743 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:7498:genPackBits
	.line	234; "aquarium.c"	LED20 = 0;
	BCF	_PORTB_bits,3
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 7743 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:7498:genPackBits
	.line	235; "aquarium.c"	LED21 = 0;
	BCF	_PORTB_bits,4
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 7743 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:7498:genPackBits
	.line	236; "aquarium.c"	LED22 = 0;	
	BCF	_PORTB_bits,5
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=2, label offset 109
	GOTO	_00211_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2524:genEndFunction *{*
;; ***	genEndFunction  2526
	RETURN	
; exit point of _main

	New pBlock

code, dbName =C
;; Starting pCode block
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2372:genFunction *{*
;; ***	genFunction  2374 curr label offset=96previous max_key=0 
_setLEDBothPWM	;Function start
; 2 exit points
;; gen.c:2327:resultRemat *{*
;; gen.c:8685:genReceive *{*
;; ***	genReceive  8686
;;	769 register type nRegs=1
;; gen.c:1882:assignResultValue *{*
;; ***	assignResultValue  1884
;; 	line = 1886 result -=-, size=0, left AOP_REG=r0x1068, size=1, right -=-, size=0
; >>> gen.c:1433:movwf
;;	1150 rIdx = r0x1068 
	.line	189; "aquarium.c"	void setLEDBothPWM(char number, char value, char mirror)
	MOVWF	r0x1021
;; gen.c:2327:resultRemat *{*
;; gen.c:8685:genReceive *{*
;; ***	genReceive  8686
;;	769 register type nRegs=1
;; gen.c:1882:assignResultValue *{*
;; ***	assignResultValue  1884
;; 	line = 1886 result -=-, size=0, left AOP_REG=r0x1069, size=1, right -=-, size=0
; >>> gen.c:1459:get_returnvalue
;; ***	popRegFromIdx,1066  , rIdx=0x2f
	MOVF	STK00,W
; >>> gen.c:1433:movwf
;;	1150 rIdx = r0x1069 
	MOVWF	r0x1022
;; gen.c:2327:resultRemat *{*
;; gen.c:8685:genReceive *{*
;; ***	genReceive  8686
;;	769 register type nRegs=1
;; gen.c:1882:assignResultValue *{*
;; ***	assignResultValue  1884
;; 	line = 1886 result -=-, size=0, left AOP_REG=r0x106A, size=1, right -=-, size=0
; >>> gen.c:1459:get_returnvalue
;; ***	popRegFromIdx,1066  , rIdx=0x2e
	MOVF	STK01,W
; >>> gen.c:1433:movwf
;;	1150 rIdx = r0x106A 
	MOVWF	r0x1023
;; gen.c:2327:resultRemat *{*
;; gen.c:4410:ifxForOp *{*
;; ***	ifxForOp  4412
;; gen.c:4263:genCmpLt *{*
;; ***	genCmpLt  4264
;;	769 register type nRegs=1
;; gen.c:3365:genCmp *{*
;signed compare: left < lit(0xB=11), size=1, mask=ff
;; ***	mov2w  1422  offset=0
; >>> gen.c:1427:mov2w
;;	1150 rIdx = r0x1068 
	.line	191; "aquarium.c"	if (number < 11)
	MOVF	r0x1021,W
; >>> gen.c:3489:genCmp
	ADDLW	0x80
; >>> gen.c:3490:genCmp
	ADDLW	0x75
;; gen.c:3215:genSkipc *{*
; >>> gen.c:3220:genSkipc
	BTFSC	STATUS,0
; >>> gen.c:3224:genSkipc
;; ***	popGetLabel  key=2, label offset 100
	GOTO	_00202_DS_
;genSkipc:3225: created from rifx:0xbfff5a80
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:2096:genCall *{*
;; ***	genCall  2098
;; gen.c:1781:saveRegisters *{*
;; ***	saveRegisters  1783
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	2145 left AOP_REG
;; gen.c:1390:mov2w_op *{*
;; ***	mov2w  1422  offset=0
; >>> gen.c:1427:mov2w
;;	1150 rIdx = r0x1069 
	.line	192; "aquarium.c"	setLEDPWM(number, value);
	MOVF	r0x1022,W
;;	769 register type nRegs=1
;; 	2145 left AOP_REG
; >>> gen.c:2153:genCall
;; ***	popRegFromIdx,1066  , rIdx=0x2f
	MOVWF	STK00
;; gen.c:1390:mov2w_op *{*
;; ***	mov2w  1422  offset=0
; >>> gen.c:1427:mov2w
;;	1150 rIdx = r0x1068 
	MOVF	r0x1021,W
; >>> gen.c:2184:genCall
	CALL	_setLEDPWM
;; gen.c:1825:unsaveRegisters *{*
;; ***	unsaveRegisters  1827
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:7965:genIfx *{*
;; ***	genIfx  7966
;;	769 register type nRegs=1
;; ***	pic14_toBoolean  1566
; >>> gen.c:1572:pic14_toBoolean
_00202_DS_
	.line	194; "aquarium.c"	if (mirror)
	MOVLW	0x00
; >>> gen.c:1580:pic14_toBoolean
;;	1150 rIdx = r0x106A 
	IORWF	r0x1023,W
; >>> gen.c:8014:genIfx
	BTFSC	STATUS,2
; >>> gen.c:8015:genIfx
;; ***	popGetLabel  key=4, label offset 100
	GOTO	_00204_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:4410:ifxForOp *{*
;; ***	ifxForOp  4412
;; NULL :(	4432
;; gen.c:8641:genDjnz *{*
;; ***	genDjnz  8642
;; genarith.c:1008:genMinus *{*
;; ***	genMinus  1009
;;	769 register type nRegs=1
;;	654
;; 	result AOP_REG, left AOP_LIT, right AOP_REG
;; ***	pic14_getDataSize  1492
;; ***	pic14_getDataSize  1492
;; left is lit	line 1126 result AOP_REG, left AOP_LIT, right AOP_REG
;; ***	mov2w  1422  offset=0
; >>> gen.c:1427:mov2w
;;	1150 rIdx = r0x1068 
	.line	195; "aquarium.c"	number = 22-number;
	MOVF	r0x1021,W
; >>> genarith.c:1165:genMinus
	SUBLW	0x16
; >>> genarith.c:1166:genMinus
;;	1150 rIdx = r0x1068 
	MOVWF	r0x1021
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=5, label offset 100
	GOTO	_00205_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; ***	genPlus  718
;; genarith.c:719:genPlus *{*
;;	769 register type nRegs=1
;;	654
;; 	line = 725 result AOP_REG=r0x1068, size=1, left AOP_REG=r0x1068, size=1, right AOP_LIT=0x0b, size=1
;; ***	pic14_getDataSize  1492
;; genarith.c:181:genPlusIncr *{*
;; ***	genPlusIncr  183
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  195
;; ***	pic14_getDataSize  1492
;;	adding lit to something. size 1
;; genarith.c:399:genAddLit *{*
;; ***	genAddLit  400
;; ***	pic14_getDataSize  1492
;; ***	pic14_getDataSize  1492
;; genarith.c:362:genAddLit2byte *{*
; >>> genarith.c:374:genAddLit2byte
_00204_DS_
	.line	197; "aquarium.c"	number += 11;
	MOVLW	0x0b
; >>> genarith.c:375:genAddLit2byte
;;	1150 rIdx = r0x1068 
	ADDWF	r0x1021,F
;; ***	pic14_getDataSize  1492
;; ***	pic14_getDataSize  1492
;; ***	pic14_getDataSize  1492
;; ***	addSign  973
;; genarith.c:974:addSign *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:2096:genCall *{*
;; ***	genCall  2098
;; gen.c:1781:saveRegisters *{*
;; ***	saveRegisters  1783
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	2145 left AOP_REG
;; gen.c:1390:mov2w_op *{*
;; ***	mov2w  1422  offset=0
; >>> gen.c:1427:mov2w
;;	1150 rIdx = r0x1069 
_00205_DS_
	.line	198; "aquarium.c"	setLEDPWM(number, value);
	MOVF	r0x1022,W
;;	769 register type nRegs=1
;; 	2145 left AOP_REG
; >>> gen.c:2153:genCall
;; ***	popRegFromIdx,1066  , rIdx=0x2f
	MOVWF	STK00
;; gen.c:1390:mov2w_op *{*
;; ***	mov2w  1422  offset=0
; >>> gen.c:1427:mov2w
;;	1150 rIdx = r0x1068 
	MOVF	r0x1021,W
; >>> gen.c:2184:genCall
	CALL	_setLEDPWM
;; gen.c:1825:unsaveRegisters *{*
;; ***	unsaveRegisters  1827
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2524:genEndFunction *{*
;; ***	genEndFunction  2526
	RETURN	
; exit point of _setLEDBothPWM
;; gen.c:8749:genpic14Code *{*

	New pBlock

code, dbName =C
;; Starting pCode block
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2372:genFunction *{*
;; ***	genFunction  2374 curr label offset=87previous max_key=5 
_setLEDPWM	;Function start
; 2 exit points
;; gen.c:2327:resultRemat *{*
;; gen.c:8685:genReceive *{*
;; ***	genReceive  8686
;;	769 register type nRegs=1
;; gen.c:1882:assignResultValue *{*
;; ***	assignResultValue  1884
;; 	line = 1886 result -=-, size=0, left AOP_REG=r0x1065, size=1, right -=-, size=0
; >>> gen.c:1433:movwf
;;	1150 rIdx = r0x1065 
	.line	184; "aquarium.c"	void setLEDPWM(char number, char value)
	MOVWF	r0x1024
;; gen.c:2327:resultRemat *{*
;; gen.c:8685:genReceive *{*
;; ***	genReceive  8686
;;	769 register type nRegs=1
;; gen.c:1882:assignResultValue *{*
;; ***	assignResultValue  1884
;; 	line = 1886 result -=-, size=0, left AOP_REG=r0x1066, size=1, right -=-, size=0
; >>> gen.c:1459:get_returnvalue
;; ***	popRegFromIdx,1066  , rIdx=0x2f
	MOVF	STK00,W
; >>> gen.c:1433:movwf
;;	1150 rIdx = r0x1066 
	MOVWF	r0x1025
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; ***	genPlus  718
;; genarith.c:719:genPlus *{*
;;	689
;;	aopForRemat 474
;;	495: rname _PWM, val 0, const = 0
;;	769 register type nRegs=1
;;	769 register type nRegs=2
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PWM
;; 	line = 725 result AOP_REG=r0x1065, size=2, left AOP_PCODE=_PWM, size=2, right AOP_REG=r0x1065, size=1
;; ***	pic14_getDataSize  1492
;; genarith.c:181:genPlusIncr *{*
;; ***	genPlusIncr  183
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	pic14_getDataSize  1492
;; ***	genPlus  829
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PWM
; >>> genarith.c:838:genPlus
;;	1150 rIdx = r0x1065 
	.line	186; "aquarium.c"	PWM[number] = value;
	MOVF	r0x1024,W
; >>> genarith.c:847:genPlus
	ADDLW	(_PWM + 0)
; >>> genarith.c:848:genPlus
;;	1150 rIdx = r0x1065 
	MOVWF	r0x1024
; >>> genarith.c:911:genPlus
	MOVLW	high (_PWM + 0)
; >>> genarith.c:912:genPlus
	BTFSC	STATUS,0
; >>> genarith.c:913:genPlus
	ADDLW	0x01
; >>> genarith.c:914:genPlus
;;	1150 rIdx = r0x1067 
	MOVWF	r0x1026
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	769 register type nRegs=2
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;; 	line = 7743 result AOP_REG=r0x1065, size=2, left -=-, size=0, right AOP_REG=r0x1066, size=1
;; gen.c:1390:mov2w_op *{*
;; ***	mov2w  1422  offset=0
; >>> gen.c:1427:mov2w
;;	1150 rIdx = r0x1065 
	MOVF	r0x1024,W
; >>> gen.c:6924:setup_fsr
	MOVWF	FSR
;; gen.c:6894:SetIrp *{*
; >>> gen.c:6911:SetIrp
	BCF	STATUS,7
; >>> gen.c:6913:SetIrp
	BTFSC	r0x1026,0
; >>> gen.c:6914:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  7770
; >>> gen.c:7779:genNearPointerSet
;;	1150 rIdx = r0x1066 
	MOVF	r0x1025,W
; >>> gen.c:7784:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  7792
;; ***	genNearPointerSet  7803
;; ***	genNearPointerSet  7814
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2524:genEndFunction *{*
;; ***	genEndFunction  2526
	RETURN	
; exit point of _setLEDPWM
;; gen.c:8749:genpic14Code *{*

	New pBlock

code, dbName =C
;; Starting pCode block
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2372:genFunction *{*
;; ***	genFunction  2374 curr label offset=52previous max_key=31 
_setLEDBothDiscrete	;Function start
; 2 exit points
;; gen.c:2327:resultRemat *{*
;; gen.c:8685:genReceive *{*
;; ***	genReceive  8686
;;	769 register type nRegs=1
;; gen.c:1882:assignResultValue *{*
;; ***	assignResultValue  1884
;; 	line = 1886 result -=-, size=0, left AOP_REG=r0x1062, size=1, right -=-, size=0
; >>> gen.c:1433:movwf
;;	1150 rIdx = r0x1062 
	.line	172; "aquarium.c"	void setLEDBothDiscrete(char number, char value, char mirror)
	MOVWF	r0x1027
;; gen.c:2327:resultRemat *{*
;; gen.c:8685:genReceive *{*
;; ***	genReceive  8686
;;	769 register type nRegs=1
;; gen.c:1882:assignResultValue *{*
;; ***	assignResultValue  1884
;; 	line = 1886 result -=-, size=0, left AOP_REG=r0x1063, size=1, right -=-, size=0
; >>> gen.c:1459:get_returnvalue
;; ***	popRegFromIdx,1066  , rIdx=0x2f
	MOVF	STK00,W
; >>> gen.c:1433:movwf
;;	1150 rIdx = r0x1063 
	MOVWF	r0x1028
;; gen.c:2327:resultRemat *{*
;; gen.c:8685:genReceive *{*
;; ***	genReceive  8686
;;	769 register type nRegs=1
;; gen.c:1882:assignResultValue *{*
;; ***	assignResultValue  1884
;; 	line = 1886 result -=-, size=0, left AOP_REG=r0x1064, size=1, right -=-, size=0
; >>> gen.c:1459:get_returnvalue
;; ***	popRegFromIdx,1066  , rIdx=0x2e
	MOVF	STK01,W
; >>> gen.c:1433:movwf
;;	1150 rIdx = r0x1064 
	MOVWF	r0x1029
;; gen.c:2327:resultRemat *{*
;; gen.c:4410:ifxForOp *{*
;; ***	ifxForOp  4412
;; gen.c:4263:genCmpLt *{*
;; ***	genCmpLt  4264
;;	769 register type nRegs=1
;; gen.c:3365:genCmp *{*
;signed compare: left < lit(0xB=11), size=1, mask=ff
;; ***	mov2w  1422  offset=0
; >>> gen.c:1427:mov2w
;;	1150 rIdx = r0x1062 
	.line	174; "aquarium.c"	if (number < 11)
	MOVF	r0x1027,W
; >>> gen.c:3489:genCmp
	ADDLW	0x80
; >>> gen.c:3490:genCmp
	ADDLW	0x75
;; gen.c:3215:genSkipc *{*
; >>> gen.c:3220:genSkipc
	BTFSC	STATUS,0
; >>> gen.c:3224:genSkipc
;; ***	popGetLabel  key=2, label offset 87
	GOTO	_00189_DS_
;genSkipc:3225: created from rifx:0xbfff5a80
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:2096:genCall *{*
;; ***	genCall  2098
;; gen.c:1781:saveRegisters *{*
;; ***	saveRegisters  1783
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	2145 left AOP_REG
;; gen.c:1390:mov2w_op *{*
;; ***	mov2w  1422  offset=0
; >>> gen.c:1427:mov2w
;;	1150 rIdx = r0x1063 
	.line	175; "aquarium.c"	setLEDDiscrete(number, value);
	MOVF	r0x1028,W
;;	769 register type nRegs=1
;; 	2145 left AOP_REG
; >>> gen.c:2153:genCall
;; ***	popRegFromIdx,1066  , rIdx=0x2f
	MOVWF	STK00
;; gen.c:1390:mov2w_op *{*
;; ***	mov2w  1422  offset=0
; >>> gen.c:1427:mov2w
;;	1150 rIdx = r0x1062 
	MOVF	r0x1027,W
; >>> gen.c:2184:genCall
	CALL	_setLEDDiscrete
;; gen.c:1825:unsaveRegisters *{*
;; ***	unsaveRegisters  1827
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:7965:genIfx *{*
;; ***	genIfx  7966
;;	769 register type nRegs=1
;; ***	pic14_toBoolean  1566
; >>> gen.c:1572:pic14_toBoolean
_00189_DS_
	.line	177; "aquarium.c"	if (mirror)
	MOVLW	0x00
; >>> gen.c:1580:pic14_toBoolean
;;	1150 rIdx = r0x1064 
	IORWF	r0x1029,W
; >>> gen.c:8014:genIfx
	BTFSC	STATUS,2
; >>> gen.c:8015:genIfx
;; ***	popGetLabel  key=4, label offset 87
	GOTO	_00191_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:4410:ifxForOp *{*
;; ***	ifxForOp  4412
;; NULL :(	4432
;; gen.c:8641:genDjnz *{*
;; ***	genDjnz  8642
;; genarith.c:1008:genMinus *{*
;; ***	genMinus  1009
;;	769 register type nRegs=1
;;	654
;; 	result AOP_REG, left AOP_LIT, right AOP_REG
;; ***	pic14_getDataSize  1492
;; ***	pic14_getDataSize  1492
;; left is lit	line 1126 result AOP_REG, left AOP_LIT, right AOP_REG
;; ***	mov2w  1422  offset=0
; >>> gen.c:1427:mov2w
;;	1150 rIdx = r0x1062 
	.line	178; "aquarium.c"	number = 22-number;
	MOVF	r0x1027,W
; >>> genarith.c:1165:genMinus
	SUBLW	0x16
; >>> genarith.c:1166:genMinus
;;	1150 rIdx = r0x1062 
	MOVWF	r0x1027
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=5, label offset 87
	GOTO	_00192_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; ***	genPlus  718
;; genarith.c:719:genPlus *{*
;;	769 register type nRegs=1
;;	654
;; 	line = 725 result AOP_REG=r0x1062, size=1, left AOP_REG=r0x1062, size=1, right AOP_LIT=0x0b, size=1
;; ***	pic14_getDataSize  1492
;; genarith.c:181:genPlusIncr *{*
;; ***	genPlusIncr  183
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  195
;; ***	pic14_getDataSize  1492
;;	adding lit to something. size 1
;; genarith.c:399:genAddLit *{*
;; ***	genAddLit  400
;; ***	pic14_getDataSize  1492
;; ***	pic14_getDataSize  1492
;; genarith.c:362:genAddLit2byte *{*
; >>> genarith.c:374:genAddLit2byte
_00191_DS_
	.line	180; "aquarium.c"	number += 11;
	MOVLW	0x0b
; >>> genarith.c:375:genAddLit2byte
;;	1150 rIdx = r0x1062 
	ADDWF	r0x1027,F
;; ***	pic14_getDataSize  1492
;; ***	pic14_getDataSize  1492
;; ***	pic14_getDataSize  1492
;; ***	addSign  973
;; genarith.c:974:addSign *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:2096:genCall *{*
;; ***	genCall  2098
;; gen.c:1781:saveRegisters *{*
;; ***	saveRegisters  1783
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	2145 left AOP_REG
;; gen.c:1390:mov2w_op *{*
;; ***	mov2w  1422  offset=0
; >>> gen.c:1427:mov2w
;;	1150 rIdx = r0x1063 
_00192_DS_
	.line	181; "aquarium.c"	setLEDDiscrete(number, value);
	MOVF	r0x1028,W
;;	769 register type nRegs=1
;; 	2145 left AOP_REG
; >>> gen.c:2153:genCall
;; ***	popRegFromIdx,1066  , rIdx=0x2f
	MOVWF	STK00
;; gen.c:1390:mov2w_op *{*
;; ***	mov2w  1422  offset=0
; >>> gen.c:1427:mov2w
;;	1150 rIdx = r0x1062 
	MOVF	r0x1027,W
; >>> gen.c:2184:genCall
	CALL	_setLEDDiscrete
;; gen.c:1825:unsaveRegisters *{*
;; ***	unsaveRegisters  1827
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2524:genEndFunction *{*
;; ***	genEndFunction  2526
	RETURN	
; exit point of _setLEDBothDiscrete
;; gen.c:8749:genpic14Code *{*

	New pBlock

code, dbName =C
;; Starting pCode block
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2372:genFunction *{*
;; ***	genFunction  2374 curr label offset=48previous max_key=0 
_setLEDDiscrete	;Function start
; 2 exit points
;; gen.c:2327:resultRemat *{*
;; gen.c:8685:genReceive *{*
;; ***	genReceive  8686
;;	769 register type nRegs=1
;; gen.c:1882:assignResultValue *{*
;; ***	assignResultValue  1884
;; 	line = 1886 result -=-, size=0, left AOP_REG=r0x1060, size=1, right -=-, size=0
; >>> gen.c:1433:movwf
;;	1150 rIdx = r0x1060 
	.line	95; "aquarium.c"	void setLEDDiscrete(char number, char value)
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:8685:genReceive *{*
;; ***	genReceive  8686
;;	769 register type nRegs=1
;; gen.c:1882:assignResultValue *{*
;; ***	assignResultValue  1884
;; 	line = 1886 result -=-, size=0, left AOP_REG=r0x1061, size=1, right -=-, size=0
; >>> gen.c:1459:get_returnvalue
;; ***	popRegFromIdx,1066  , rIdx=0x2f
	MOVF	STK00,W
; >>> gen.c:1433:movwf
;;	1150 rIdx = r0x1061 
	MOVWF	r0x102B
;; gen.c:2327:resultRemat *{*
;; gen.c:4410:ifxForOp *{*
;; ***	ifxForOp  4412
;; gen.c:4263:genCmpLt *{*
;; ***	genCmpLt  4264
;;	769 register type nRegs=1
;; gen.c:3365:genCmp *{*
;signed compare: left < lit(0x0=0), size=1, mask=ff
; >>> gen.c:3456:genCmp
	.line	97; "aquarium.c"	switch(number)
	BSF	STATUS,0
; >>> gen.c:3457:genCmp
	BTFSS	r0x102A,7
; >>> gen.c:3458:genCmp
	BCF	STATUS,0
;; gen.c:3215:genSkipc *{*
; >>> gen.c:3220:genSkipc
	BTFSC	STATUS,0
; >>> gen.c:3224:genSkipc
;; ***	popGetLabel  key=26, label offset 52
	GOTO	_00178_DS_
;genSkipc:3225: created from rifx:0xbfff5a80
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:4410:ifxForOp *{*
;; ***	ifxForOp  4412
;; gen.c:4233:genCmpGt *{*
;; ***	genCmpGt  4234
;;	769 register type nRegs=1
;; gen.c:3365:genCmp *{*
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0x17=23), size=1, mask=ff
;; ***	mov2w  1422  offset=0
; >>> gen.c:1427:mov2w
;;	1150 rIdx = r0x1060 
	MOVF	r0x102A,W
; >>> gen.c:3489:genCmp
	ADDLW	0x80
; >>> gen.c:3490:genCmp
	ADDLW	0x69
;; gen.c:3215:genSkipc *{*
; >>> gen.c:3220:genSkipc
	BTFSC	STATUS,0
; >>> gen.c:3224:genSkipc
;; ***	popGetLabel  key=26, label offset 52
	GOTO	_00178_DS_
;genSkipc:3225: created from rifx:0xbfff5a80
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8280:genJumpTab *{*
;; ***	genJumpTab  8281
;;	769 register type nRegs=1
; >>> gen.c:8296:genJumpTab
;; ***	popGetLabel  key=31, label offset 52
	MOVLW	HIGH(_00183_DS_)
; >>> gen.c:8297:genJumpTab
	MOVWF	PCLATH
; >>> gen.c:8298:genJumpTab
;; ***	popGetLabel  key=31, label offset 52
	MOVLW	_00183_DS_
; >>> gen.c:8299:genJumpTab
;;	1150 rIdx = r0x1060 
	ADDWF	r0x102A,W
; >>> gen.c:8300:genJumpTab
	BTFSC	STATUS,0
; >>> gen.c:8301:genJumpTab
	INCF	PCLATH,F
; >>> gen.c:8302:genJumpTab
	MOVWF	PCL
; >>> gen.c:8311:genJumpTab
;; ***	popGetLabel  key=1, label offset 52
_00183_DS_
	GOTO	_00153_DS_
; >>> gen.c:8311:genJumpTab
;; ***	popGetLabel  key=2, label offset 52
	GOTO	_00154_DS_
; >>> gen.c:8311:genJumpTab
;; ***	popGetLabel  key=3, label offset 52
	GOTO	_00155_DS_
; >>> gen.c:8311:genJumpTab
;; ***	popGetLabel  key=4, label offset 52
	GOTO	_00156_DS_
; >>> gen.c:8311:genJumpTab
;; ***	popGetLabel  key=5, label offset 52
	GOTO	_00157_DS_
; >>> gen.c:8311:genJumpTab
;; ***	popGetLabel  key=6, label offset 52
	GOTO	_00158_DS_
; >>> gen.c:8311:genJumpTab
;; ***	popGetLabel  key=7, label offset 52
	GOTO	_00159_DS_
; >>> gen.c:8311:genJumpTab
;; ***	popGetLabel  key=8, label offset 52
	GOTO	_00160_DS_
; >>> gen.c:8311:genJumpTab
;; ***	popGetLabel  key=9, label offset 52
	GOTO	_00161_DS_
; >>> gen.c:8311:genJumpTab
;; ***	popGetLabel  key=10, label offset 52
	GOTO	_00162_DS_
; >>> gen.c:8311:genJumpTab
;; ***	popGetLabel  key=11, label offset 52
	GOTO	_00163_DS_
; >>> gen.c:8311:genJumpTab
;; ***	popGetLabel  key=12, label offset 52
	GOTO	_00164_DS_
; >>> gen.c:8311:genJumpTab
;; ***	popGetLabel  key=13, label offset 52
	GOTO	_00165_DS_
; >>> gen.c:8311:genJumpTab
;; ***	popGetLabel  key=14, label offset 52
	GOTO	_00166_DS_
; >>> gen.c:8311:genJumpTab
;; ***	popGetLabel  key=15, label offset 52
	GOTO	_00167_DS_
; >>> gen.c:8311:genJumpTab
;; ***	popGetLabel  key=16, label offset 52
	GOTO	_00168_DS_
; >>> gen.c:8311:genJumpTab
;; ***	popGetLabel  key=17, label offset 52
	GOTO	_00169_DS_
; >>> gen.c:8311:genJumpTab
;; ***	popGetLabel  key=18, label offset 52
	GOTO	_00170_DS_
; >>> gen.c:8311:genJumpTab
;; ***	popGetLabel  key=19, label offset 52
	GOTO	_00171_DS_
; >>> gen.c:8311:genJumpTab
;; ***	popGetLabel  key=20, label offset 52
	GOTO	_00172_DS_
; >>> gen.c:8311:genJumpTab
;; ***	popGetLabel  key=21, label offset 52
	GOTO	_00173_DS_
; >>> gen.c:8311:genJumpTab
;; ***	popGetLabel  key=22, label offset 52
	GOTO	_00174_DS_
; >>> gen.c:8311:genJumpTab
;; ***	popGetLabel  key=23, label offset 52
	GOTO	_00175_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8460:genCast *{*
;; ***	genCast  8461
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	line = 8469 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; ***	genCast  8575
; >>> gen.c:8595:genCast
;;	1150 rIdx = r0x1061 
_00153_DS_
	.line	100; "aquarium.c"	LED0 = value;
	MOVF	r0x102B,W
; >>> gen.c:8596:genCast
;;	1150 rIdx = r0x1060 
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTE_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTE_bits
;; 	line = 7743 result AOP_PCODE=_PORTE_bits, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
; >>> gen.c:7571:genPackBits
;;	1150 rIdx = r0x1060 
	RRF	r0x102A,W
; >>> gen.c:7572:genPackBits
	BTFSS	STATUS,0
; >>> gen.c:7573:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTE_bits
	BCF	_PORTE_bits,0
; >>> gen.c:7574:genPackBits
	BTFSC	STATUS,0
; >>> gen.c:7575:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTE_bits
	BSF	_PORTE_bits,0
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=26, label offset 52
	.line	101; "aquarium.c"	break;
	GOTO	_00178_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8460:genCast *{*
;; ***	genCast  8461
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	line = 8469 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; ***	genCast  8575
; >>> gen.c:8595:genCast
;;	1150 rIdx = r0x1061 
_00154_DS_
	.line	103; "aquarium.c"	LED1 = value;
	MOVF	r0x102B,W
; >>> gen.c:8596:genCast
;;	1150 rIdx = r0x1060 
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 7743 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
; >>> gen.c:7571:genPackBits
;;	1150 rIdx = r0x1060 
	RRF	r0x102A,W
; >>> gen.c:7572:genPackBits
	BTFSS	STATUS,0
; >>> gen.c:7573:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BCF	_PORTC_bits,0
; >>> gen.c:7574:genPackBits
	BTFSC	STATUS,0
; >>> gen.c:7575:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BSF	_PORTC_bits,0
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=26, label offset 52
	.line	104; "aquarium.c"	break;
	GOTO	_00178_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8460:genCast *{*
;; ***	genCast  8461
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	line = 8469 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; ***	genCast  8575
; >>> gen.c:8595:genCast
;;	1150 rIdx = r0x1061 
_00155_DS_
	.line	106; "aquarium.c"	LED2 = value;
	MOVF	r0x102B,W
; >>> gen.c:8596:genCast
;;	1150 rIdx = r0x1060 
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 7743 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
; >>> gen.c:7571:genPackBits
;;	1150 rIdx = r0x1060 
	RRF	r0x102A,W
; >>> gen.c:7572:genPackBits
	BTFSS	STATUS,0
; >>> gen.c:7573:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BCF	_PORTC_bits,1
; >>> gen.c:7574:genPackBits
	BTFSC	STATUS,0
; >>> gen.c:7575:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BSF	_PORTC_bits,1
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=26, label offset 52
	.line	107; "aquarium.c"	break;
	GOTO	_00178_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8460:genCast *{*
;; ***	genCast  8461
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	line = 8469 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; ***	genCast  8575
; >>> gen.c:8595:genCast
;;	1150 rIdx = r0x1061 
_00156_DS_
	.line	109; "aquarium.c"	LED3 = value;
	MOVF	r0x102B,W
; >>> gen.c:8596:genCast
;;	1150 rIdx = r0x1060 
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 7743 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
; >>> gen.c:7571:genPackBits
;;	1150 rIdx = r0x1060 
	RRF	r0x102A,W
; >>> gen.c:7572:genPackBits
	BTFSS	STATUS,0
; >>> gen.c:7573:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BCF	_PORTC_bits,2
; >>> gen.c:7574:genPackBits
	BTFSC	STATUS,0
; >>> gen.c:7575:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BSF	_PORTC_bits,2
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=26, label offset 52
	.line	110; "aquarium.c"	break;
	GOTO	_00178_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8460:genCast *{*
;; ***	genCast  8461
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	line = 8469 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; ***	genCast  8575
; >>> gen.c:8595:genCast
;;	1150 rIdx = r0x1061 
_00157_DS_
	.line	112; "aquarium.c"	LED4 = value;
	MOVF	r0x102B,W
; >>> gen.c:8596:genCast
;;	1150 rIdx = r0x1060 
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 7743 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
; >>> gen.c:7571:genPackBits
;;	1150 rIdx = r0x1060 
	RRF	r0x102A,W
; >>> gen.c:7572:genPackBits
	BTFSS	STATUS,0
; >>> gen.c:7573:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BCF	_PORTC_bits,3
; >>> gen.c:7574:genPackBits
	BTFSC	STATUS,0
; >>> gen.c:7575:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BSF	_PORTC_bits,3
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=26, label offset 52
	.line	113; "aquarium.c"	break;
	GOTO	_00178_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8460:genCast *{*
;; ***	genCast  8461
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	line = 8469 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; ***	genCast  8575
; >>> gen.c:8595:genCast
;;	1150 rIdx = r0x1061 
_00158_DS_
	.line	115; "aquarium.c"	LED5 = value;
	MOVF	r0x102B,W
; >>> gen.c:8596:genCast
;;	1150 rIdx = r0x1060 
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 7743 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
; >>> gen.c:7571:genPackBits
;;	1150 rIdx = r0x1060 
	RRF	r0x102A,W
; >>> gen.c:7572:genPackBits
	BTFSS	STATUS,0
; >>> gen.c:7573:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BCF	_PORTC_bits,4
; >>> gen.c:7574:genPackBits
	BTFSC	STATUS,0
; >>> gen.c:7575:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BSF	_PORTC_bits,4
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=26, label offset 52
	.line	116; "aquarium.c"	break;
	GOTO	_00178_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8460:genCast *{*
;; ***	genCast  8461
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	line = 8469 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; ***	genCast  8575
; >>> gen.c:8595:genCast
;;	1150 rIdx = r0x1061 
_00159_DS_
	.line	118; "aquarium.c"	LED6 = value;
	MOVF	r0x102B,W
; >>> gen.c:8596:genCast
;;	1150 rIdx = r0x1060 
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 7743 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
; >>> gen.c:7571:genPackBits
;;	1150 rIdx = r0x1060 
	RRF	r0x102A,W
; >>> gen.c:7572:genPackBits
	BTFSS	STATUS,0
; >>> gen.c:7573:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BCF	_PORTC_bits,5
; >>> gen.c:7574:genPackBits
	BTFSC	STATUS,0
; >>> gen.c:7575:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BSF	_PORTC_bits,5
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=26, label offset 52
	.line	119; "aquarium.c"	break;
	GOTO	_00178_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8460:genCast *{*
;; ***	genCast  8461
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	line = 8469 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; ***	genCast  8575
; >>> gen.c:8595:genCast
;;	1150 rIdx = r0x1061 
_00160_DS_
	.line	121; "aquarium.c"	LED7 = value;
	MOVF	r0x102B,W
; >>> gen.c:8596:genCast
;;	1150 rIdx = r0x1060 
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 7743 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
; >>> gen.c:7571:genPackBits
;;	1150 rIdx = r0x1060 
	RRF	r0x102A,W
; >>> gen.c:7572:genPackBits
	BTFSS	STATUS,0
; >>> gen.c:7573:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BCF	_PORTC_bits,6
; >>> gen.c:7574:genPackBits
	BTFSC	STATUS,0
; >>> gen.c:7575:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BSF	_PORTC_bits,6
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=26, label offset 52
	.line	122; "aquarium.c"	break;
	GOTO	_00178_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8460:genCast *{*
;; ***	genCast  8461
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	line = 8469 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; ***	genCast  8575
; >>> gen.c:8595:genCast
;;	1150 rIdx = r0x1061 
_00161_DS_
	.line	124; "aquarium.c"	LED8 = value;
	MOVF	r0x102B,W
; >>> gen.c:8596:genCast
;;	1150 rIdx = r0x1060 
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
;; 	line = 7743 result AOP_PCODE=_PORTC_bits, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
; >>> gen.c:7571:genPackBits
;;	1150 rIdx = r0x1060 
	RRF	r0x102A,W
; >>> gen.c:7572:genPackBits
	BTFSS	STATUS,0
; >>> gen.c:7573:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BCF	_PORTC_bits,7
; >>> gen.c:7574:genPackBits
	BTFSC	STATUS,0
; >>> gen.c:7575:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTC_bits
	BSF	_PORTC_bits,7
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=26, label offset 52
	.line	125; "aquarium.c"	break;
	GOTO	_00178_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8460:genCast *{*
;; ***	genCast  8461
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	line = 8469 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; ***	genCast  8575
; >>> gen.c:8595:genCast
;;	1150 rIdx = r0x1061 
_00162_DS_
	.line	127; "aquarium.c"	LED9 = value;
	MOVF	r0x102B,W
; >>> gen.c:8596:genCast
;;	1150 rIdx = r0x1060 
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 7743 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
; >>> gen.c:7571:genPackBits
;;	1150 rIdx = r0x1060 
	RRF	r0x102A,W
; >>> gen.c:7572:genPackBits
	BTFSS	STATUS,0
; >>> gen.c:7573:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BCF	_PORTD_bits,0
; >>> gen.c:7574:genPackBits
	BTFSC	STATUS,0
; >>> gen.c:7575:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BSF	_PORTD_bits,0
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=26, label offset 52
	.line	128; "aquarium.c"	break;
	GOTO	_00178_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8460:genCast *{*
;; ***	genCast  8461
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	line = 8469 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; ***	genCast  8575
; >>> gen.c:8595:genCast
;;	1150 rIdx = r0x1061 
_00163_DS_
	.line	130; "aquarium.c"	LED10 = value;
	MOVF	r0x102B,W
; >>> gen.c:8596:genCast
;;	1150 rIdx = r0x1060 
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 7743 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
; >>> gen.c:7571:genPackBits
;;	1150 rIdx = r0x1060 
	RRF	r0x102A,W
; >>> gen.c:7572:genPackBits
	BTFSS	STATUS,0
; >>> gen.c:7573:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BCF	_PORTD_bits,1
; >>> gen.c:7574:genPackBits
	BTFSC	STATUS,0
; >>> gen.c:7575:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BSF	_PORTD_bits,1
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=26, label offset 52
	.line	131; "aquarium.c"	break;
	GOTO	_00178_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8460:genCast *{*
;; ***	genCast  8461
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	line = 8469 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; ***	genCast  8575
; >>> gen.c:8595:genCast
;;	1150 rIdx = r0x1061 
_00164_DS_
	.line	133; "aquarium.c"	LED11 = value;
	MOVF	r0x102B,W
; >>> gen.c:8596:genCast
;;	1150 rIdx = r0x1060 
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 7743 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
; >>> gen.c:7571:genPackBits
;;	1150 rIdx = r0x1060 
	RRF	r0x102A,W
; >>> gen.c:7572:genPackBits
	BTFSS	STATUS,0
; >>> gen.c:7573:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BCF	_PORTD_bits,2
; >>> gen.c:7574:genPackBits
	BTFSC	STATUS,0
; >>> gen.c:7575:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BSF	_PORTD_bits,2
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=26, label offset 52
	.line	134; "aquarium.c"	break;
	GOTO	_00178_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8460:genCast *{*
;; ***	genCast  8461
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	line = 8469 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; ***	genCast  8575
; >>> gen.c:8595:genCast
;;	1150 rIdx = r0x1061 
_00165_DS_
	.line	136; "aquarium.c"	LED12 = value;
	MOVF	r0x102B,W
; >>> gen.c:8596:genCast
;;	1150 rIdx = r0x1060 
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 7743 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
; >>> gen.c:7571:genPackBits
;;	1150 rIdx = r0x1060 
	RRF	r0x102A,W
; >>> gen.c:7572:genPackBits
	BTFSS	STATUS,0
; >>> gen.c:7573:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BCF	_PORTD_bits,3
; >>> gen.c:7574:genPackBits
	BTFSC	STATUS,0
; >>> gen.c:7575:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BSF	_PORTD_bits,3
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=26, label offset 52
	.line	137; "aquarium.c"	break;
	GOTO	_00178_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8460:genCast *{*
;; ***	genCast  8461
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	line = 8469 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; ***	genCast  8575
; >>> gen.c:8595:genCast
;;	1150 rIdx = r0x1061 
_00166_DS_
	.line	139; "aquarium.c"	LED13 = value;
	MOVF	r0x102B,W
; >>> gen.c:8596:genCast
;;	1150 rIdx = r0x1060 
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 7743 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
; >>> gen.c:7571:genPackBits
;;	1150 rIdx = r0x1060 
	RRF	r0x102A,W
; >>> gen.c:7572:genPackBits
	BTFSS	STATUS,0
; >>> gen.c:7573:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BCF	_PORTD_bits,4
; >>> gen.c:7574:genPackBits
	BTFSC	STATUS,0
; >>> gen.c:7575:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BSF	_PORTD_bits,4
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=26, label offset 52
	.line	140; "aquarium.c"	break;
	GOTO	_00178_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8460:genCast *{*
;; ***	genCast  8461
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	line = 8469 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; ***	genCast  8575
; >>> gen.c:8595:genCast
;;	1150 rIdx = r0x1061 
_00167_DS_
	.line	142; "aquarium.c"	LED14 = value;
	MOVF	r0x102B,W
; >>> gen.c:8596:genCast
;;	1150 rIdx = r0x1060 
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 7743 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
; >>> gen.c:7571:genPackBits
;;	1150 rIdx = r0x1060 
	RRF	r0x102A,W
; >>> gen.c:7572:genPackBits
	BTFSS	STATUS,0
; >>> gen.c:7573:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BCF	_PORTD_bits,5
; >>> gen.c:7574:genPackBits
	BTFSC	STATUS,0
; >>> gen.c:7575:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BSF	_PORTD_bits,5
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=26, label offset 52
	.line	143; "aquarium.c"	break;
	GOTO	_00178_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8460:genCast *{*
;; ***	genCast  8461
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	line = 8469 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; ***	genCast  8575
; >>> gen.c:8595:genCast
;;	1150 rIdx = r0x1061 
_00168_DS_
	.line	145; "aquarium.c"	LED15 = value;
	MOVF	r0x102B,W
; >>> gen.c:8596:genCast
;;	1150 rIdx = r0x1060 
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 7743 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
; >>> gen.c:7571:genPackBits
;;	1150 rIdx = r0x1060 
	RRF	r0x102A,W
; >>> gen.c:7572:genPackBits
	BTFSS	STATUS,0
; >>> gen.c:7573:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BCF	_PORTD_bits,6
; >>> gen.c:7574:genPackBits
	BTFSC	STATUS,0
; >>> gen.c:7575:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BSF	_PORTD_bits,6
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=26, label offset 52
	.line	146; "aquarium.c"	break;
	GOTO	_00178_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8460:genCast *{*
;; ***	genCast  8461
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	line = 8469 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; ***	genCast  8575
; >>> gen.c:8595:genCast
;;	1150 rIdx = r0x1061 
_00169_DS_
	.line	148; "aquarium.c"	LED16 = value;
	MOVF	r0x102B,W
; >>> gen.c:8596:genCast
;;	1150 rIdx = r0x1060 
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
;; 	line = 7743 result AOP_PCODE=_PORTD_bits, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
; >>> gen.c:7571:genPackBits
;;	1150 rIdx = r0x1060 
	RRF	r0x102A,W
; >>> gen.c:7572:genPackBits
	BTFSS	STATUS,0
; >>> gen.c:7573:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BCF	_PORTD_bits,7
; >>> gen.c:7574:genPackBits
	BTFSC	STATUS,0
; >>> gen.c:7575:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTD_bits
	BSF	_PORTD_bits,7
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=26, label offset 52
	.line	149; "aquarium.c"	break;
	GOTO	_00178_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8460:genCast *{*
;; ***	genCast  8461
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	line = 8469 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; ***	genCast  8575
; >>> gen.c:8595:genCast
;;	1150 rIdx = r0x1061 
_00170_DS_
	.line	151; "aquarium.c"	LED17 = value;
	MOVF	r0x102B,W
; >>> gen.c:8596:genCast
;;	1150 rIdx = r0x1060 
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 7743 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
; >>> gen.c:7571:genPackBits
;;	1150 rIdx = r0x1060 
	RRF	r0x102A,W
; >>> gen.c:7572:genPackBits
	BTFSS	STATUS,0
; >>> gen.c:7573:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BCF	_PORTB_bits,0
; >>> gen.c:7574:genPackBits
	BTFSC	STATUS,0
; >>> gen.c:7575:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BSF	_PORTB_bits,0
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=26, label offset 52
	.line	152; "aquarium.c"	break;
	GOTO	_00178_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8460:genCast *{*
;; ***	genCast  8461
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	line = 8469 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; ***	genCast  8575
; >>> gen.c:8595:genCast
;;	1150 rIdx = r0x1061 
_00171_DS_
	.line	154; "aquarium.c"	LED18 = value;
	MOVF	r0x102B,W
; >>> gen.c:8596:genCast
;;	1150 rIdx = r0x1060 
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 7743 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
; >>> gen.c:7571:genPackBits
;;	1150 rIdx = r0x1060 
	RRF	r0x102A,W
; >>> gen.c:7572:genPackBits
	BTFSS	STATUS,0
; >>> gen.c:7573:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BCF	_PORTB_bits,1
; >>> gen.c:7574:genPackBits
	BTFSC	STATUS,0
; >>> gen.c:7575:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BSF	_PORTB_bits,1
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=26, label offset 52
	.line	155; "aquarium.c"	break;
	GOTO	_00178_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8460:genCast *{*
;; ***	genCast  8461
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	line = 8469 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; ***	genCast  8575
; >>> gen.c:8595:genCast
;;	1150 rIdx = r0x1061 
_00172_DS_
	.line	157; "aquarium.c"	LED19 = value;
	MOVF	r0x102B,W
; >>> gen.c:8596:genCast
;;	1150 rIdx = r0x1060 
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 7743 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
; >>> gen.c:7571:genPackBits
;;	1150 rIdx = r0x1060 
	RRF	r0x102A,W
; >>> gen.c:7572:genPackBits
	BTFSS	STATUS,0
; >>> gen.c:7573:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BCF	_PORTB_bits,2
; >>> gen.c:7574:genPackBits
	BTFSC	STATUS,0
; >>> gen.c:7575:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BSF	_PORTB_bits,2
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=26, label offset 52
	.line	158; "aquarium.c"	break;
	GOTO	_00178_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8460:genCast *{*
;; ***	genCast  8461
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	line = 8469 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; ***	genCast  8575
; >>> gen.c:8595:genCast
;;	1150 rIdx = r0x1061 
_00173_DS_
	.line	160; "aquarium.c"	LED20 = value;
	MOVF	r0x102B,W
; >>> gen.c:8596:genCast
;;	1150 rIdx = r0x1060 
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 7743 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
; >>> gen.c:7571:genPackBits
;;	1150 rIdx = r0x1060 
	RRF	r0x102A,W
; >>> gen.c:7572:genPackBits
	BTFSS	STATUS,0
; >>> gen.c:7573:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BCF	_PORTB_bits,3
; >>> gen.c:7574:genPackBits
	BTFSC	STATUS,0
; >>> gen.c:7575:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BSF	_PORTB_bits,3
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=26, label offset 52
	.line	161; "aquarium.c"	break;
	GOTO	_00178_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8460:genCast *{*
;; ***	genCast  8461
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	line = 8469 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; ***	genCast  8575
; >>> gen.c:8595:genCast
;;	1150 rIdx = r0x1061 
_00174_DS_
	.line	163; "aquarium.c"	LED21 = value;
	MOVF	r0x102B,W
; >>> gen.c:8596:genCast
;;	1150 rIdx = r0x1060 
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 7743 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
; >>> gen.c:7571:genPackBits
;;	1150 rIdx = r0x1060 
	RRF	r0x102A,W
; >>> gen.c:7572:genPackBits
	BTFSS	STATUS,0
; >>> gen.c:7573:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BCF	_PORTB_bits,4
; >>> gen.c:7574:genPackBits
	BTFSC	STATUS,0
; >>> gen.c:7575:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BSF	_PORTB_bits,4
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=26, label offset 52
	.line	164; "aquarium.c"	break;
	GOTO	_00178_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:8460:genCast *{*
;; ***	genCast  8461
;;	769 register type nRegs=1
;;	769 register type nRegs=1
;; 	line = 8469 result AOP_REG=r0x1060, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=1
;; ***	genCast  8575
; >>> gen.c:8595:genCast
;;	1150 rIdx = r0x1061 
_00175_DS_
	.line	166; "aquarium.c"	LED22 = value;
	MOVF	r0x102B,W
; >>> gen.c:8596:genCast
;;	1150 rIdx = r0x1060 
	MOVWF	r0x102A
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	769 register type nRegs=1
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 7743 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_REG=r0x1060, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
; >>> gen.c:7571:genPackBits
;;	1150 rIdx = r0x1060 
	RRF	r0x102A,W
; >>> gen.c:7572:genPackBits
	BTFSS	STATUS,0
; >>> gen.c:7573:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BCF	_PORTB_bits,5
; >>> gen.c:7574:genPackBits
	BTFSC	STATUS,0
; >>> gen.c:7575:genPackBits
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
	BSF	_PORTB_bits,5
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2524:genEndFunction *{*
;; ***	genEndFunction  2526
_00178_DS_
	.line	169; "aquarium.c"	}
	RETURN	
; exit point of _setLEDDiscrete
;; gen.c:8749:genpic14Code *{*

	New pBlock

code, dbName =C
;; Starting pCode block
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2372:genFunction *{*
;; ***	genFunction  2374 curr label offset=41previous max_key=3 
_on_init	;Function start
; 2 exit points
;; gen.c:2327:resultRemat *{*
;; gen.c:8139:genAssign *{*
;; ***	genAssign  8140
;; ***	aopForSym 393
;;	404 sym->rname = _ADCON1, size = 1
;; 	line = 8149 result AOP_DIR=_ADCON1, size=1, left -=-, size=0, right AOP_LIT=0x06, size=1
;; ***	genAssign  8241
; >>> gen.c:8246:genAssign
	.line	64; "aquarium.c"	ADCON1=6;		//AD converter uit
	MOVLW	0x06
; >>> gen.c:8248:genAssign
;;	1036
;;	1052  _ADCON1   offset=0
	MOVWF	_ADCON1
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISA_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISA_bits
;; 	line = 7743 result AOP_PCODE=_TRISA_bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISA_bits
; >>> gen.c:7498:genPackBits
	.line	65; "aquarium.c"	TRIS_SW1 = 1;	//Knop1 input
	BSF	_TRISA_bits,0
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISA_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISA_bits
;; 	line = 7743 result AOP_PCODE=_TRISA_bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISA_bits
; >>> gen.c:7498:genPackBits
	.line	66; "aquarium.c"	TRIS_SW2 = 1;	//Knop2 input
	BSF	_TRISA_bits,1
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISA_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISA_bits
;; 	line = 7743 result AOP_PCODE=_TRISA_bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISA_bits
; >>> gen.c:7498:genPackBits
	.line	67; "aquarium.c"	TRIS_SW3 = 1;	//Knop3 input
	BSF	_TRISA_bits,2
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISA_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISA_bits
;; 	line = 7743 result AOP_PCODE=_TRISA_bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISA_bits
; >>> gen.c:7498:genPackBits
	.line	68; "aquarium.c"	TRIS_SW4 = 1;	//Knop4 input
	BSF	_TRISA_bits,3
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISE_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISE_bits
;; 	line = 7743 result AOP_PCODE=_TRISE_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISE_bits
; >>> gen.c:7498:genPackBits
	.line	70; "aquarium.c"	TRIS_LED0 = 0; //Led0 output
	BCF	_TRISE_bits,0
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
;; 	line = 7743 result AOP_PCODE=_TRISC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
; >>> gen.c:7498:genPackBits
	.line	71; "aquarium.c"	TRIS_LED1 = 0; //Led1 output
	BCF	_TRISC_bits,0
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
;; 	line = 7743 result AOP_PCODE=_TRISC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
; >>> gen.c:7498:genPackBits
	.line	72; "aquarium.c"	TRIS_LED2 = 0; //Led2 output
	BCF	_TRISC_bits,1
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
;; 	line = 7743 result AOP_PCODE=_TRISC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
; >>> gen.c:7498:genPackBits
	.line	73; "aquarium.c"	TRIS_LED3 = 0; //Led3 output
	BCF	_TRISC_bits,2
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
;; 	line = 7743 result AOP_PCODE=_TRISC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
; >>> gen.c:7498:genPackBits
	.line	74; "aquarium.c"	TRIS_LED4 = 0; //Led4 output
	BCF	_TRISC_bits,3
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
;; 	line = 7743 result AOP_PCODE=_TRISC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
; >>> gen.c:7498:genPackBits
	.line	75; "aquarium.c"	TRIS_LED5 = 0; //Led5 output
	BCF	_TRISC_bits,4
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
;; 	line = 7743 result AOP_PCODE=_TRISC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
; >>> gen.c:7498:genPackBits
	.line	76; "aquarium.c"	TRIS_LED6 = 0; //Led6 output
	BCF	_TRISC_bits,5
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
;; 	line = 7743 result AOP_PCODE=_TRISC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
; >>> gen.c:7498:genPackBits
	.line	77; "aquarium.c"	TRIS_LED7 = 0; //Led7 output
	BCF	_TRISC_bits,6
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISC_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
;; 	line = 7743 result AOP_PCODE=_TRISC_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISC_bits
; >>> gen.c:7498:genPackBits
	.line	78; "aquarium.c"	TRIS_LED8 = 0; //Led8 output
	BCF	_TRISC_bits,7
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
;; 	line = 7743 result AOP_PCODE=_TRISD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
; >>> gen.c:7498:genPackBits
	.line	79; "aquarium.c"	TRIS_LED9 = 0; //Led9 output
	BCF	_TRISD_bits,0
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
;; 	line = 7743 result AOP_PCODE=_TRISD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
; >>> gen.c:7498:genPackBits
	.line	80; "aquarium.c"	TRIS_LED10 = 0; //Led10 output
	BCF	_TRISD_bits,1
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
;; 	line = 7743 result AOP_PCODE=_TRISD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
; >>> gen.c:7498:genPackBits
	.line	81; "aquarium.c"	TRIS_LED11 = 0; //Led11 output
	BCF	_TRISD_bits,2
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
;; 	line = 7743 result AOP_PCODE=_TRISD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
; >>> gen.c:7498:genPackBits
	.line	82; "aquarium.c"	TRIS_LED12 = 0; //Led12 output
	BCF	_TRISD_bits,3
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
;; 	line = 7743 result AOP_PCODE=_TRISD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
; >>> gen.c:7498:genPackBits
	.line	83; "aquarium.c"	TRIS_LED13 = 0; //Led13 output
	BCF	_TRISD_bits,4
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
;; 	line = 7743 result AOP_PCODE=_TRISD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
; >>> gen.c:7498:genPackBits
	.line	84; "aquarium.c"	TRIS_LED14 = 0; //Led14 output
	BCF	_TRISD_bits,5
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
;; 	line = 7743 result AOP_PCODE=_TRISD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
; >>> gen.c:7498:genPackBits
	.line	85; "aquarium.c"	TRIS_LED15 = 0; //Led15 output
	BCF	_TRISD_bits,6
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISD_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
;; 	line = 7743 result AOP_PCODE=_TRISD_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISD_bits
; >>> gen.c:7498:genPackBits
	.line	86; "aquarium.c"	TRIS_LED16 = 0; //Led16 output
	BCF	_TRISD_bits,7
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISB_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
;; 	line = 7743 result AOP_PCODE=_TRISB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
; >>> gen.c:7498:genPackBits
	.line	87; "aquarium.c"	TRIS_LED17 = 0; //Led17 output
	BCF	_TRISB_bits,0
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISB_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
;; 	line = 7743 result AOP_PCODE=_TRISB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
; >>> gen.c:7498:genPackBits
	.line	88; "aquarium.c"	TRIS_LED18 = 0; //Led18 output
	BCF	_TRISB_bits,1
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISB_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
;; 	line = 7743 result AOP_PCODE=_TRISB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
; >>> gen.c:7498:genPackBits
	.line	89; "aquarium.c"	TRIS_LED19 = 0; //Led19 output
	BCF	_TRISB_bits,2
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISB_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
;; 	line = 7743 result AOP_PCODE=_TRISB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
; >>> gen.c:7498:genPackBits
	.line	90; "aquarium.c"	TRIS_LED20 = 0; //Led20 output
	BCF	_TRISB_bits,3
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISB_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
;; 	line = 7743 result AOP_PCODE=_TRISB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
; >>> gen.c:7498:genPackBits
	.line	91; "aquarium.c"	TRIS_LED21 = 0; //Led21 output
	BCF	_TRISB_bits,4
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7895:genPointerSet *{*
;; ***	genPointerSet  7896
;; gen.c:7723:genNearPointerSet *{*
;; ***	genNearPointerSet  7724
;;	689
;;	aopForRemat 474
;;	495: rname _TRISB_bits, val 0, const = 0
;; ***	genNearPointerSet  7741
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
;; 	line = 7743 result AOP_PCODE=_TRISB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:7472:genPackBits *{*
;; ***	genPackBits  7473
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISB_bits
; >>> gen.c:7498:genPackBits
	.line	92; "aquarium.c"	TRIS_LED22 = 0; //Led22 output
	BCF	_TRISB_bits,5
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2524:genEndFunction *{*
;; ***	genEndFunction  2526
	RETURN	
; exit point of _on_init
;; gen.c:8749:genpic14Code *{*

	New pBlock

code, dbName =C
;; Starting pCode block
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2372:genFunction *{*
;; ***	genFunction  2374 curr label offset=30previous max_key=7 
_delayS	;Function start
; 2 exit points
;; gen.c:2327:resultRemat *{*
;; gen.c:8685:genReceive *{*
;; ***	genReceive  8686
;;	769 register type nRegs=4
;; gen.c:1882:assignResultValue *{*
;; ***	assignResultValue  1884
;; 	line = 1886 result -=-, size=0, left AOP_REG=r0x105A, size=4, right -=-, size=0
; >>> gen.c:1433:movwf
;;	1150 rIdx = r0x105D 
	.line	52; "aquarium.c"	void delayS(unsigned long time)
	MOVWF	r0x102C
; >>> gen.c:1459:get_returnvalue
;; ***	popRegFromIdx,1066  , rIdx=0x2f
	MOVF	STK00,W
; >>> gen.c:1433:movwf
;;	1150 rIdx = r0x105C 
	MOVWF	r0x102D
; >>> gen.c:1459:get_returnvalue
;; ***	popRegFromIdx,1066  , rIdx=0x2e
	MOVF	STK01,W
; >>> gen.c:1433:movwf
;;	1150 rIdx = r0x105B 
	MOVWF	r0x102E
; >>> gen.c:1459:get_returnvalue
;; ***	popRegFromIdx,1066  , rIdx=0x2d
	MOVF	STK02,W
; >>> gen.c:1433:movwf
;;	1150 rIdx = r0x105A 
	MOVWF	r0x102F
;; gen.c:2327:resultRemat *{*
;; gen.c:8139:genAssign *{*
;; ***	genAssign  8140
;;	769 register type nRegs=2
;; 	line = 8149 result AOP_REG=r0x105E, size=2, left -=-, size=0, right AOP_LIT=0xe8, size=2
;; ***	genAssign  8241
; >>> gen.c:8246:genAssign
	.line	55; "aquarium.c"	for(i=0; i<1000; i++)
	MOVLW	0xe8
; >>> gen.c:8248:genAssign
;;	1150 rIdx = r0x105E 
	MOVWF	r0x1030
;; ***	genAssign  8241
; >>> gen.c:8246:genAssign
	MOVLW	0x03
; >>> gen.c:8248:genAssign
;;	1150 rIdx = r0x105F 
	MOVWF	r0x1031
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:2096:genCall *{*
;; ***	genCall  2098
;; gen.c:1781:saveRegisters *{*
;; ***	saveRegisters  1783
;;	769 register type nRegs=4
;;	769 register type nRegs=4
;; 	2145 left AOP_REG
;; gen.c:1390:mov2w_op *{*
;; ***	mov2w  1422  offset=0
; >>> gen.c:1427:mov2w
;;	1150 rIdx = r0x105A 
_00144_DS_
	.line	56; "aquarium.c"	delayMs(time);
	MOVF	r0x102F,W
;; 	2145 left AOP_REG
; >>> gen.c:2153:genCall
;; ***	popRegFromIdx,1066  , rIdx=0x2d
	MOVWF	STK02
;; gen.c:1390:mov2w_op *{*
;; ***	mov2w  1422  offset=1
; >>> gen.c:1427:mov2w
;;	1150 rIdx = r0x105B 
	MOVF	r0x102E,W
;; 	2145 left AOP_REG
; >>> gen.c:2153:genCall
;; ***	popRegFromIdx,1066  , rIdx=0x2e
	MOVWF	STK01
;; gen.c:1390:mov2w_op *{*
;; ***	mov2w  1422  offset=2
; >>> gen.c:1427:mov2w
;;	1150 rIdx = r0x105C 
	MOVF	r0x102D,W
;; 	2145 left AOP_REG
; >>> gen.c:2153:genCall
;; ***	popRegFromIdx,1066  , rIdx=0x2f
	MOVWF	STK00
;; gen.c:1390:mov2w_op *{*
;; ***	mov2w  1422  offset=3
; >>> gen.c:1427:mov2w
;;	1150 rIdx = r0x105D 
	MOVF	r0x102C,W
; >>> gen.c:2184:genCall
	CALL	_delayMs
;; gen.c:1825:unsaveRegisters *{*
;; ***	unsaveRegisters  1827
;; gen.c:2327:resultRemat *{*
;; gen.c:4410:ifxForOp *{*
;; ***	ifxForOp  4412
;; gen.c:8641:genDjnz *{*
;; ***	genDjnz  8642
;; genarith.c:1008:genMinus *{*
;; ***	genMinus  1009
;;	769 register type nRegs=2
;;	654
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; ***	pic14_getDataSize  1492
;; ***	pic14_getDataSize  1492
;; genarith.c:399:genAddLit *{*
;; ***	genAddLit  400
;; ***	pic14_getDataSize  1492
;; ***	pic14_getDataSize  1492
;; hi = ff	genAddLit  471
; >>> genarith.c:488:genAddLit
	MOVLW	0xff
; >>> genarith.c:489:genAddLit
;;	1150 rIdx = r0x105E 
	ADDWF	r0x1030,F
; >>> genarith.c:490:genAddLit
	BTFSS	STATUS,0
; >>> genarith.c:491:genAddLit
;;	1150 rIdx = r0x105F 
	DECF	r0x1031,F
;; ***	pic14_getDataSize  1492
;; ***	pic14_getDataSize  1492
;; ***	pic14_getDataSize  1492
;; ***	addSign  973
;; genarith.c:974:addSign *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:7965:genIfx *{*
;; ***	genIfx  7966
;;	769 register type nRegs=2
;; ***	pic14_toBoolean  1566
; >>> gen.c:1575:pic14_toBoolean
;;	1150 rIdx = r0x105E 
	.line	55; "aquarium.c"	for(i=0; i<1000; i++)
	MOVF	r0x1030,W
; >>> gen.c:1580:pic14_toBoolean
;;	1150 rIdx = r0x105F 
	IORWF	r0x1031,W
; >>> gen.c:8011:genIfx
	BTFSS	STATUS,2
; >>> gen.c:8012:genIfx
;; ***	popGetLabel  key=3, label offset 41
	GOTO	_00144_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2524:genEndFunction *{*
;; ***	genEndFunction  2526
	RETURN	
; exit point of _delayS
;; gen.c:8749:genpic14Code *{*

	New pBlock

code, dbName =C
;; Starting pCode block
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2372:genFunction *{*
;; ***	genFunction  2374 curr label offset=26previous max_key=0 
_delayMs	;Function start
; 2 exit points
;; gen.c:2327:resultRemat *{*
;; gen.c:8685:genReceive *{*
;; ***	genReceive  8686
;;	769 register type nRegs=4
;; gen.c:1882:assignResultValue *{*
;; ***	assignResultValue  1884
;; 	line = 1886 result -=-, size=0, left AOP_REG=r0x1050, size=4, right -=-, size=0
; >>> gen.c:1433:movwf
;;	1150 rIdx = r0x1055 
	.line	46; "aquarium.c"	void delayMs(unsigned long time)
	MOVWF	r0x1032
; >>> gen.c:1459:get_returnvalue
;; ***	popRegFromIdx,1066  , rIdx=0x2f
	MOVF	STK00,W
; >>> gen.c:1433:movwf
;;	1150 rIdx = r0x1054 
	MOVWF	r0x1033
; >>> gen.c:1459:get_returnvalue
;; ***	popRegFromIdx,1066  , rIdx=0x2e
	MOVF	STK01,W
; >>> gen.c:1433:movwf
;;	1150 rIdx = r0x1053 
	MOVWF	r0x1034
; >>> gen.c:1459:get_returnvalue
;; ***	popRegFromIdx,1066  , rIdx=0x2d
	MOVF	STK02,W
; >>> gen.c:1433:movwf
;;	1150 rIdx = r0x1050 
	MOVWF	r0x103E
;; gen.c:2327:resultRemat *{*
;; gen.c:8139:genAssign *{*
;; ***	genAssign  8140
;; ***	aopForSym 393
;;	404 sym->rname = _tick, size = 4
;; ***	aopForSym 393
;;	404 sym->rname = _lasttick, size = 4
;; 	line = 8149 result AOP_DIR=_lasttick, size=4, left -=-, size=0, right AOP_DIR=_tick, size=4
;; ***	genAssign  8241
;; gen.c:1390:mov2w_op *{*
;; ***	mov2w  1422  offset=0
; >>> gen.c:1427:mov2w
;;	1036
;;	1052  _tick   offset=0
	.line	48; "aquarium.c"	lasttick=tick;
	MOVF	_tick,W
; >>> gen.c:8260:genAssign
;;	1036
;;	1052  _lasttick   offset=0
	MOVWF	_lasttick
;; ***	genAssign  8241
;; gen.c:1390:mov2w_op *{*
;; ***	mov2w  1422  offset=1
; >>> gen.c:1427:mov2w
;;	1036
;;	1052  _tick   offset=1
	MOVF	(_tick + 1),W
; >>> gen.c:8260:genAssign
;;	1036
;;	1052  _lasttick   offset=1
	MOVWF	(_lasttick + 1)
;; ***	genAssign  8241
;; gen.c:1390:mov2w_op *{*
;; ***	mov2w  1422  offset=2
; >>> gen.c:1427:mov2w
;;	1036
;;	1052  _tick   offset=2
	MOVF	(_tick + 2),W
; >>> gen.c:8260:genAssign
;;	1036
;;	1052  _lasttick   offset=2
	MOVWF	(_lasttick + 2)
;; ***	genAssign  8241
;; gen.c:1390:mov2w_op *{*
;; ***	mov2w  1422  offset=3
; >>> gen.c:1427:mov2w
;;	1036
;;	1052  _tick   offset=3
	MOVF	(_tick + 3),W
; >>> gen.c:8260:genAssign
;;	1036
;;	1052  _lasttick   offset=3
	MOVWF	(_lasttick + 3)
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:4410:ifxForOp *{*
;; ***	ifxForOp  4412
;; NULL :(	4432
;; gen.c:8641:genDjnz *{*
;; ***	genDjnz  8642
;; genarith.c:1008:genMinus *{*
;; ***	genMinus  1009
;; ***	aopForSym 393
;;	404 sym->rname = _tick, size = 4
;; ***	aopForSym 393
;;	404 sym->rname = _lasttick, size = 4
;;	769 register type nRegs=4
;; 	result AOP_REG, left AOP_DIR, right AOP_DIR
;; ***	pic14_getDataSize  1492
;; ***	pic14_getDataSize  1492
;; ***	pic14_getDataSize  1492
;; ***	mov2w  1422  offset=0
; >>> gen.c:1427:mov2w
;;	1036
;;	1052  _lasttick   offset=0
_00131_DS_
	.line	49; "aquarium.c"	while((tick-lasttick)<time)continue;
	MOVF	_lasttick,W
; >>> genarith.c:1165:genMinus
;;	1036
;;	1052  _tick   offset=0
	SUBWF	_tick,W
; >>> genarith.c:1166:genMinus
;;	1150 rIdx = r0x1056 
	MOVWF	r0x1036
;; ***	mov2w  1422  offset=1
; >>> gen.c:1427:mov2w
;;	1036
;;	1052  _tick   offset=1
	MOVF	(_tick + 1),W
; >>> genarith.c:1289:genMinus
;;	1150 rIdx = r0x1057 
	MOVWF	r0x1037
;; ***	mov2w  1422  offset=1
; >>> gen.c:1427:mov2w
;;	1036
;;	1052  _lasttick   offset=1
	MOVF	(_lasttick + 1),W
; >>> genarith.c:1291:genMinus
	BTFSS	STATUS,0
; >>> genarith.c:1292:genMinus
;;	1036
;;	1052  _lasttick   offset=1
	INCFSZ	(_lasttick + 1),W
; >>> genarith.c:1293:genMinus
;;	1150 rIdx = r0x1057 
	SUBWF	r0x1037,F
;; ***	mov2w  1422  offset=2
; >>> gen.c:1427:mov2w
;;	1036
;;	1052  _tick   offset=2
	MOVF	(_tick + 2),W
; >>> genarith.c:1289:genMinus
;;	1150 rIdx = r0x1058 
	MOVWF	r0x1038
;; ***	mov2w  1422  offset=2
; >>> gen.c:1427:mov2w
;;	1036
;;	1052  _lasttick   offset=2
	MOVF	(_lasttick + 2),W
; >>> genarith.c:1291:genMinus
	BTFSS	STATUS,0
; >>> genarith.c:1292:genMinus
;;	1036
;;	1052  _lasttick   offset=2
	INCFSZ	(_lasttick + 2),W
; >>> genarith.c:1293:genMinus
;;	1150 rIdx = r0x1058 
	SUBWF	r0x1038,F
;; ***	mov2w  1422  offset=3
; >>> gen.c:1427:mov2w
;;	1036
;;	1052  _lasttick   offset=3
	MOVF	(_lasttick + 3),W
; >>> genarith.c:1261:genMinus
	BTFSS	STATUS,0
; >>> genarith.c:1262:genMinus
;;	1036
;;	1052  _lasttick   offset=3
	INCF	(_lasttick + 3),W
; >>> genarith.c:1265:genMinus
;;	1036
;;	1052  _tick   offset=3
	SUBWF	(_tick + 3),W
; >>> genarith.c:1266:genMinus
;;	1150 rIdx = r0x1059 
	MOVWF	r0x1039
;; gen.c:2327:resultRemat *{*
;; gen.c:4410:ifxForOp *{*
;; ***	ifxForOp  4412
;; gen.c:4263:genCmpLt *{*
;; ***	genCmpLt  4264
;;	769 register type nRegs=4
;;	769 register type nRegs=4
;; gen.c:3365:genCmp *{*
; >>> gen.c:3340:pic14_mov2w_regOrLit
;;	1150 rIdx = r0x1055 
	MOVF	r0x1032,W
; >>> gen.c:3473:genCmp
;;	1150 rIdx = r0x1059 
	SUBWF	r0x1039,W
; >>> gen.c:3509:genCmp
	BTFSS	STATUS,2
; >>> gen.c:3510:genCmp
;; ***	popGetLabel  key=7, label offset 30
	GOTO	_00137_DS_
; >>> gen.c:3340:pic14_mov2w_regOrLit
;;	1150 rIdx = r0x1054 
	MOVF	r0x1033,W
; >>> gen.c:3512:genCmp
;;	1150 rIdx = r0x1058 
	SUBWF	r0x1038,W
; >>> gen.c:3509:genCmp
	BTFSS	STATUS,2
; >>> gen.c:3510:genCmp
;; ***	popGetLabel  key=7, label offset 30
	GOTO	_00137_DS_
; >>> gen.c:3340:pic14_mov2w_regOrLit
;;	1150 rIdx = r0x1053 
	MOVF	r0x1034,W
; >>> gen.c:3512:genCmp
;;	1150 rIdx = r0x1057 
	SUBWF	r0x1037,W
; >>> gen.c:3509:genCmp
	BTFSS	STATUS,2
; >>> gen.c:3510:genCmp
;; ***	popGetLabel  key=7, label offset 30
	GOTO	_00137_DS_
; >>> gen.c:3340:pic14_mov2w_regOrLit
;;	1150 rIdx = r0x1050 
	MOVF	r0x103E,W
; >>> gen.c:3512:genCmp
;;	1150 rIdx = r0x1056 
	SUBWF	r0x1036,W
;; gen.c:3215:genSkipc *{*
; >>> gen.c:3222:genSkipc
_00137_DS_
	BTFSS	STATUS,0
; >>> gen.c:3224:genSkipc
;; ***	popGetLabel  key=1, label offset 30
	GOTO	_00131_DS_
;genSkipc:3225: created from rifx:0xbfff5a80
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2524:genEndFunction *{*
;; ***	genEndFunction  2526
	RETURN	
; exit point of _delayMs
;; gen.c:8749:genpic14Code *{*

	New pBlock

code, dbName =C
;; Starting pCode block
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2372:genFunction *{*
;; ***	genFunction  2374 curr label offset=4previous max_key=18 
_timer1_init	;Function start
; 2 exit points
;; gen.c:2327:resultRemat *{*
;; gen.c:8139:genAssign *{*
;; ***	genAssign  8140
;; ***	aopForSym 393
;;	404 sym->rname = _T1CON, size = 1
;; 	line = 8149 result AOP_DIR=_T1CON, size=1, left -=-, size=0, right AOP_LIT=0x01, size=1
;; ***	genAssign  8241
; >>> gen.c:8246:genAssign
	.line	40; "aquarium.c"	T1CON=0x01;
	MOVLW	0x01
; >>> gen.c:8248:genAssign
;;	1036
;;	1052  _T1CON   offset=0
	MOVWF	_T1CON
;; gen.c:2327:resultRemat *{*
;; gen.c:4410:ifxForOp *{*
;; ***	ifxForOp  4412
;; gen.c:4887:genOr *{*
;; ***	genOr  4888
;; ***	aopForSym 393
;;	404 sym->rname = _INTCON, size = 1
;;	654
;; 	line = 4894 result AOP_DIR=_INTCON, size=1, left AOP_DIR=_INTCON, size=1, right AOP_LIT=0xc0, size=1
;; 	line = 4919 result AOP_DIR=_INTCON, size=1, left AOP_DIR=_INTCON, size=1, right AOP_LIT=0xc0, size=1
; >>> gen.c:5054:genOr
	.line	41; "aquarium.c"	INTCON|=0xC0; //enable global interrupts
	MOVLW	0xc0
; >>> gen.c:5056:genOr
;;	1036
;;	1050  _INTCON   offset=0 - had to alloc by reg name
	IORWF	_INTCON,F
;; gen.c:2327:resultRemat *{*
;; gen.c:4410:ifxForOp *{*
;; ***	ifxForOp  4412
;; gen.c:4887:genOr *{*
;; ***	genOr  4888
;; ***	aopForSym 393
;;	404 sym->rname = _PIE1, size = 1
;;	654
;; 	line = 4894 result AOP_DIR=_PIE1, size=1, left AOP_DIR=_PIE1, size=1, right AOP_LIT=0x01, size=1
;; 	line = 4919 result AOP_DIR=_PIE1, size=1, left AOP_DIR=_PIE1, size=1, right AOP_LIT=0x01, size=1
; >>> gen.c:5051:genOr
	.line	42; "aquarium.c"	PIE1|=0x01;  //enable timer1 interrupt
	BSF	_PIE1,0
;; gen.c:2327:resultRemat *{*
;; gen.c:4410:ifxForOp *{*
;; ***	ifxForOp  4412
;; gen.c:4625:genAnd *{*
;; ***	genAnd  4626
;; ***	aopForSym 393
;;	404 sym->rname = _PIR1, size = 1
;;	654
;; 	line = 4660 result AOP_DIR=_PIR1, size=1, left AOP_DIR=_PIR1, size=1, right AOP_LIT=0xfe, size=1
; >>> gen.c:4804:genAnd
	.line	43; "aquarium.c"	PIR1&=0xFE;  //clear timer1 interrupt flag
	BCF	_PIR1,0
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2524:genEndFunction *{*
;; ***	genEndFunction  2526
	RETURN	
; exit point of _timer1_init
;; gen.c:8749:genpic14Code *{*

	New pBlock

internal pblock, dbName =I
;; Starting pCode block
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2372:genFunction *{*
;; ***	genFunction  2374 curr label offset=0previous max_key=0 
_isr	;Function start
; 0 exit points
; >>> gen.c:2429:genFunction
	.line	14; "aquarium.c"	void isr() interrupt 0 
	MOVWF	WSAVE
; >>> gen.c:2430:genFunction
	SWAPF	STATUS,W
; >>> gen.c:2435:genFunction
	CLRF	STATUS
; >>> gen.c:2436:genFunction
	MOVWF	SSAVE
; >>> gen.c:2438:genFunction
	MOVF	PCLATH,W
; >>> gen.c:2440:genFunction
	CLRF	PCLATH
; >>> gen.c:2441:genFunction
	MOVWF	PSAVE
; >>> gen.c:2443:genFunction
	MOVF	FSR,W
; >>> gen.c:2444:genFunction
	MOVWF	___sdcc_saved_fsr
;; gen.c:2327:resultRemat *{*
;; gen.c:4410:ifxForOp *{*
;; ***	ifxForOp  4412
;; gen.c:4625:genAnd *{*
;; ***	genAnd  4626
;; ***	aopForSym 393
;;	404 sym->rname = _PIR1, size = 1
;; 	line = 4660 result AOP_CRY=0x00, size=0, left AOP_DIR=_PIR1, size=1, right AOP_LIT=0x01, size=1
;; gen.c:4552:isLiteralBit *{*
;; ***	isLiteralBit  4553
; >>> gen.c:4729:genAnd
	.line	17; "aquarium.c"	if(PIR1&0x01)
	BTFSS	_PIR1,0
; >>> gen.c:4730:genAnd
;; ***	popGetLabel  key=12, label offset 4
	GOTO	_00116_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; ***	genPlus  718
;; genarith.c:719:genPlus *{*
;; ***	aopForSym 393
;;	404 sym->rname = _tick, size = 4
;; 	line = 725 result AOP_DIR=_tick, size=4, left AOP_DIR=_tick, size=4, right AOP_LIT=0x01, size=1
;; ***	pic14_getDataSize  1492
;; genarith.c:181:genPlusIncr *{*
;; ***	genPlusIncr  183
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  195
; >>> genarith.c:207:genPlusIncr
;;	1036
;;	1052  _tick   offset=0
	.line	19; "aquarium.c"	tick++;
	INCF	_tick,F
; >>> genarith.c:211:genPlusIncr
	BTFSC	STATUS,2
; >>> genarith.c:212:genPlusIncr
;;	1036
;;	1052  _tick   offset=1
	INCF	(_tick + 1),F
; >>> genarith.c:211:genPlusIncr
	BTFSC	STATUS,2
; >>> genarith.c:212:genPlusIncr
;;	1036
;;	1052  _tick   offset=2
	INCF	(_tick + 2),F
; >>> genarith.c:211:genPlusIncr
	BTFSC	STATUS,2
; >>> genarith.c:212:genPlusIncr
;;	1036
;;	1052  _tick   offset=3
	INCF	(_tick + 3),F
;; gen.c:2327:resultRemat *{*
;; gen.c:8139:genAssign *{*
;; ***	genAssign  8140
;; ***	aopForSym 393
;;	404 sym->rname = _TMR1H, size = 1
;; 	line = 8149 result AOP_DIR=_TMR1H, size=1, left -=-, size=0, right AOP_LIT=0xfc, size=1
;; ***	genAssign  8241
; >>> gen.c:8246:genAssign
	.line	20; "aquarium.c"	TMR1H=TMR1H_PRESET;
	MOVLW	0xfc
; >>> gen.c:8248:genAssign
;;	1036
;;	1052  _TMR1H   offset=0
	MOVWF	_TMR1H
;; gen.c:2327:resultRemat *{*
;; gen.c:8139:genAssign *{*
;; ***	genAssign  8140
;; ***	aopForSym 393
;;	404 sym->rname = _TMR1L, size = 1
;; 	line = 8149 result AOP_DIR=_TMR1L, size=1, left -=-, size=0, right AOP_LIT=0x17, size=1
;; ***	genAssign  8241
; >>> gen.c:8246:genAssign
	.line	21; "aquarium.c"	TMR1L=TMR1L_PRESET;
	MOVLW	0x17
; >>> gen.c:8248:genAssign
;;	1036
;;	1052  _TMR1L   offset=0
	MOVWF	_TMR1L
;; gen.c:2327:resultRemat *{*
;; gen.c:4410:ifxForOp *{*
;; ***	ifxForOp  4412
;; gen.c:4625:genAnd *{*
;; ***	genAnd  4626
;; ***	aopForSym 393
;;	404 sym->rname = _PIR1, size = 1
;;	654
;; 	line = 4660 result AOP_DIR=_PIR1, size=1, left AOP_DIR=_PIR1, size=1, right AOP_LIT=0xfe, size=1
; >>> gen.c:4804:genAnd
	.line	22; "aquarium.c"	PIR1&=0xFE;  //clear timer1 interrupt flag
	BCF	_PIR1,0
;; gen.c:2327:resultRemat *{*
;; ***	genPlus  718
;; genarith.c:719:genPlus *{*
;; ***	aopForSym 393
;;	404 sym->rname = _PWMCycle, size = 1
;; 	line = 725 result AOP_DIR=_PWMCycle, size=1, left AOP_DIR=_PWMCycle, size=1, right AOP_LIT=0x01, size=1
;; ***	pic14_getDataSize  1492
;; genarith.c:181:genPlusIncr *{*
;; ***	genPlusIncr  183
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  195
; >>> genarith.c:207:genPlusIncr
;;	1036
;;	1052  _PWMCycle   offset=0
	.line	24; "aquarium.c"	PWMCycle++;
	INCF	_PWMCycle,F
;; gen.c:2327:resultRemat *{*
;; gen.c:4410:ifxForOp *{*
;; ***	ifxForOp  4412
;; gen.c:4263:genCmpLt *{*
;; ***	genCmpLt  4264
;; ***	aopForSym 393
;;	404 sym->rname = _PWMCycle, size = 1
;; gen.c:3365:genCmp *{*
;signed compare: left < lit(0x20=32), size=1, mask=ff
;; ***	mov2w  1422  offset=0
; >>> gen.c:1427:mov2w
;;	1036
;;	1052  _PWMCycle   offset=0
	.line	25; "aquarium.c"	if (PWMCycle >= PWM_LENGTH) 
	MOVF	_PWMCycle,W
; >>> gen.c:3489:genCmp
	ADDLW	0x80
; >>> gen.c:3490:genCmp
	.line	26; "aquarium.c"	PWMCycle = 0;
	ADDLW	0x60
	.line	28; "aquarium.c"	for(i=0;i<=22;i++)
	BTFSC	STATUS,0
	CLRF	_PWMCycle
	CLRF	r0x103A
_00112_DS_
	MOVLW	0x17
; >>> gen.c:3473:genCmp
;;	1150 rIdx = r0x104A 
	SUBWF	r0x103A,W
;; gen.c:3215:genSkipc *{*
; >>> gen.c:3220:genSkipc
	BTFSC	STATUS,0
; >>> gen.c:3224:genSkipc
;; ***	popGetLabel  key=12, label offset 4
	GOTO	_00116_DS_
;genSkipc:3225: created from rifx:0xbfff5a80
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; ***	genPlus  718
;; genarith.c:719:genPlus *{*
;;	689
;;	aopForRemat 474
;;	495: rname _PWM, val 0, const = 0
;;	769 register type nRegs=1
;;	769 register type nRegs=2
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PWM
;; 	line = 725 result AOP_REG=r0x104B, size=2, left AOP_PCODE=_PWM, size=2, right AOP_REG=r0x104A, size=1
;; ***	pic14_getDataSize  1492
;; genarith.c:181:genPlusIncr *{*
;; ***	genPlusIncr  183
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	pic14_getDataSize  1492
;; ***	genPlus  829
;;	879: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PWM
; >>> genarith.c:838:genPlus
;;	1150 rIdx = r0x104A 
	.line	30; "aquarium.c"	if(PWMCycle > PWM[i])
	MOVF	r0x103A,W
; >>> genarith.c:847:genPlus
	ADDLW	(_PWM + 0)
; >>> genarith.c:848:genPlus
;;	1150 rIdx = r0x104B 
	MOVWF	r0x103B
; >>> genarith.c:911:genPlus
	MOVLW	high (_PWM + 0)
; >>> genarith.c:912:genPlus
	BTFSC	STATUS,0
; >>> genarith.c:913:genPlus
	ADDLW	0x01
; >>> genarith.c:914:genPlus
;;	1150 rIdx = r0x104C 
	MOVWF	r0x103C
;; gen.c:2327:resultRemat *{*
;; gen.c:7386:genPointerGet *{*
;; ***	genPointerGet  7387
;; gen.c:7175:genNearPointerGet *{*
;; ***	genNearPointerGet  7176
;;	769 register type nRegs=2
;; ***	genNearPointerGet  7192
;;	769 register type nRegs=1
;; gen.c:1390:mov2w_op *{*
;; ***	mov2w  1422  offset=0
; >>> gen.c:1427:mov2w
;;	1150 rIdx = r0x104B 
	MOVF	r0x103B,W
; >>> gen.c:6924:setup_fsr
	MOVWF	FSR
;; gen.c:6894:SetIrp *{*
; >>> gen.c:6911:SetIrp
	BCF	STATUS,7
; >>> gen.c:6913:SetIrp
	BTFSC	r0x103C,0
; >>> gen.c:6914:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  7221
; >>> gen.c:7227:genNearPointerGet
	MOVF	INDF,W
; >>> gen.c:7231:genNearPointerGet
;;	1150 rIdx = r0x104D 
	MOVWF	r0x103D
	ADDLW	0x80
; >>> gen.c:3496:genCmp
	MOVWF	r0x103E
;; ***	mov2w  1422  offset=0
; >>> gen.c:1427:mov2w
;;	1036
;;	1052  _PWMCycle   offset=0
	MOVF	_PWMCycle,W
; >>> gen.c:3498:genCmp
	ADDLW	0x80
; >>> gen.c:3499:genCmp
	SUBWF	r0x103E,W
;; gen.c:3215:genSkipc *{*
; >>> gen.c:3220:genSkipc
	BTFSC	STATUS,0
; >>> gen.c:3224:genSkipc
;; ***	popGetLabel  key=4, label offset 4
	GOTO	_00108_DS_
;genSkipc:3225: created from rifx:0xbfff5a80
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:2096:genCall *{*
;; ***	genCall  2098
;; gen.c:1781:saveRegisters *{*
;; ***	saveRegisters  1783
;;	769 register type nRegs=1
;; 	2145 left AOP_LIT
;; gen.c:1390:mov2w_op *{*
; >>> gen.c:1405:mov2w_op
	.line	31; "aquarium.c"	setLEDDiscrete(i, 0);
	MOVLW	0x00
;;	769 register type nRegs=1
;; 	2145 left AOP_REG
; >>> gen.c:2153:genCall
;; ***	popRegFromIdx,1066  , rIdx=0x2f
	MOVWF	STK00
;; gen.c:1390:mov2w_op *{*
;; ***	mov2w  1422  offset=0
; >>> gen.c:1427:mov2w
;;	1150 rIdx = r0x104A 
	MOVF	r0x103A,W
; >>> gen.c:2182:genCall
	PAGESEL	_setLEDDiscrete
; >>> gen.c:2184:genCall
	CALL	_setLEDDiscrete
; >>> gen.c:2189:genCall
	PAGESEL	$
;; gen.c:1825:unsaveRegisters *{*
;; ***	unsaveRegisters  1827
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=10, label offset 4
	GOTO	_00114_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:2327:resultRemat *{*
;; gen.c:2096:genCall *{*
;; ***	genCall  2098
;; gen.c:1781:saveRegisters *{*
;; ***	saveRegisters  1783
;;	769 register type nRegs=1
;; 	2145 left AOP_LIT
;; gen.c:1390:mov2w_op *{*
; >>> gen.c:1405:mov2w_op
_00108_DS_
	.line	33; "aquarium.c"	setLEDDiscrete(i, 1);
	MOVLW	0x01
;;	769 register type nRegs=1
;; 	2145 left AOP_REG
; >>> gen.c:2153:genCall
;; ***	popRegFromIdx,1066  , rIdx=0x2f
	MOVWF	STK00
;; gen.c:1390:mov2w_op *{*
;; ***	mov2w  1422  offset=0
; >>> gen.c:1427:mov2w
;;	1150 rIdx = r0x104A 
	MOVF	r0x103A,W
; >>> gen.c:2182:genCall
	PAGESEL	_setLEDDiscrete
; >>> gen.c:2184:genCall
	CALL	_setLEDDiscrete
; >>> gen.c:2189:genCall
	PAGESEL	$
;; gen.c:1825:unsaveRegisters *{*
;; ***	unsaveRegisters  1827
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; ***	genPlus  718
;; genarith.c:719:genPlus *{*
;;	769 register type nRegs=1
;;	654
;; 	line = 725 result AOP_REG=r0x104A, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0x01, size=1
;; ***	pic14_getDataSize  1492
;; genarith.c:181:genPlusIncr *{*
;; ***	genPlusIncr  183
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  195
; >>> genarith.c:207:genPlusIncr
;;	1150 rIdx = r0x104A 
_00114_DS_
	.line	28; "aquarium.c"	for(i=0;i<=22;i++)
	INCF	r0x103A,F
;; gen.c:2327:resultRemat *{*
;; gen.c:2703:genGoto *{*
; >>> gen.c:2705:genGoto
;; ***	popGetLabel  key=8, label offset 4
	GOTO	_00112_DS_
;; gen.c:2327:resultRemat *{*
;; gen.c:2686:genLabel *{*
;; ***	genLabel  2689
;; gen.c:2327:resultRemat *{*
;; gen.c:2524:genEndFunction *{*
;; ***	genEndFunction  2526
;; gen.c:1991:unsaverbank *{*
;; ***	unsaverbank  1993 - WARNING no code generated
; >>> gen.c:2597:genEndFunction
_00116_DS_
	MOVF	___sdcc_saved_fsr,W
; >>> gen.c:2598:genEndFunction
	MOVWF	FSR
; >>> gen.c:2600:genEndFunction
	MOVF	PSAVE,W
; >>> gen.c:2601:genEndFunction
	MOVWF	PCLATH
; >>> gen.c:2602:genEndFunction
	CLRF	STATUS
; >>> gen.c:2604:genEndFunction
	SWAPF	SSAVE,W
; >>> gen.c:2605:genEndFunction
	MOVWF	STATUS
; >>> gen.c:2606:genEndFunction
	SWAPF	WSAVE,F
; >>> gen.c:2607:genEndFunction
	SWAPF	WSAVE,W
END_OF_INTERRUPT
	RETFIE	
;; gen.c:8749:genpic14Code *{*
