	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song160_1
song160_1:	@ 0x087BD6F0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 104
	.byte	VOL	, v120
	.byte		N84	, Cn3, v127
	.byte	W84
	.byte	FINE

	.align 2
	.global song160
song160:	@ 0x087BD700
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	song160_1		@ track
