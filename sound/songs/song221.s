	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song221_1
song221_1:	@ 0x087BED34
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 38
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	BENDR	, 15
	.byte		N12	, Cs5, v100
	.byte	W12
	.byte			Gs4, v092
	.byte	W12
	.byte	FINE

	mAlignWord
	.global song221
song221:	@ 0x087BED48
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

mAlignWord
	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song221_1		@ track
