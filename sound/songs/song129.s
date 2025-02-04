	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song129_1
song129_1:	@ 0x087BCC9C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 117
	.byte	VOL	, v120
	.byte		N84	, Cn3, v127
	.byte	W84
	.byte	FINE

	mAlignWord
	.global song129
song129:	@ 0x087BCCAC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song129_1		@ track
