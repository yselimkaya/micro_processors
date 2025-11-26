; Bu program bellekte yerleşik bir dizi
; verinin toplanmasını gerçekleştirir

	.data $0020
	.byte 05,10,15,20,$10,$0A
	
	.data $0040
	.byte 0
	
	.code $0200
	
start	lda #00
	ldx #$05
	clc
topla	adc $20,x
	dex
	bne topla
	sta $40
	brk
	
	end		
