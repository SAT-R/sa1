	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song102_1
song102_1:	@ 0x087BC354
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 2
	.byte	VOL	, v100
	.byte		N48	, Cn3, v127
	.byte	W48
	.byte	FINE

	.align 2
	.global song102
song102:	@ 0x087BC364
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.int	voicegroup004		@ voicegroup/tone

	.int	song102_1		@ track
