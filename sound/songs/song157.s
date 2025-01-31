	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song157_1
song157_1:	@ 0x087BD69C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 101
	.byte	VOL	, v120
	.byte		N84	, Cn3, v127
	.byte	W84
	.byte	FINE

	.align 2
	.global song157
song157:	@ 0x087BD6AC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	song157_1		@ track
