	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song139_1
song139_1:	@ 0x087BCFD4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 64
	.byte	VOL	, v070
	.byte	LFOS	, 15
	.byte	BENDR	, 15
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte		N03	, As4, v127
	.byte	W04
	.byte		N32	
	.byte	W32
	.byte	W03
	.byte	FINE

	mAlignWord
	.global song139
song139:	@ 0x087BCFF0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup000		@ voicegroup/tone

	mPtr	song139_1		@ track
