	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song128_1
song128_1:	@ 0x087BCC80
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 116
	.byte	VOL	, v120
	.byte		N84	, Cn3, v127
	.byte	W84
	.byte	FINE

	.align 2
	.global song128
song128:	@ 0x087BCC90
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	song128_1		@ track
