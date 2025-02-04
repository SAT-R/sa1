	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song158_1
song158_1:	@ 0x087BD6B8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 102
	.byte	VOL	, v120
	.byte		N84	, Cn3, v127
	.byte	W84
	.byte	FINE

	mAlignWord
	.global song158
song158:	@ 0x087BD6C8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song158_1		@ track
