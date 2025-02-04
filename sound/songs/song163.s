	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song163_1
song163_1:	@ 0x087BD780
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 105
	.byte	VOL	, v120
	.byte		N84	, Cn3, v127
	.byte	W84
	.byte	FINE

	mAlignWord
	.global song163
song163:	@ 0x087BD790
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb
    
mAlignWord
	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song163_1		@ track
