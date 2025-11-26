; Bellekteki bir dizi verinin
; başka bir yere kopyalanması

.data $20
.byte 05,10,15,20,25

.data $40
.byte 0,0,0,0,0


.code $0200

start	ldx #00
alat	lda $20,x
	sta $40,x
	inx
	cpx #05
	bne alat
	brk
	end
