	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song217_1
song217_1:	@ 0x087BECB4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 38
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	BENDR	, 15
	.byte		N12	, An4, v100
	.byte	W12
	.byte			En4, v092
	.byte	W12
	.byte	FINE

	mAlignWord
	.global song217
song217:	@ 0x087BECC8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song217_1		@ track
