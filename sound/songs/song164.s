	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song164_1
song164_1:	@ 0x087BD79C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 106
	.byte	VOL	, v120
	.byte		N84	, Cn3, v127
	.byte	W84
	.byte	FINE

	.align 2
	.global song164
song164:	@ 0x087BD7AC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.int	voicegroup005		@ voicegroup/tone

	.int	song164_1		@ track
