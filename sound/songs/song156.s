	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song156_1
song156_1:	@ 0x087BD680
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 100
	.byte	VOL	, v120
	.byte		N84	, Cn3, v127
	.byte	W84
	.byte	FINE

	.align 2
	.global song156
song156:	@ 0x087BD690
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	song156_1		@ track
