	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song150_1
song150_1:	@ 0x087BD3EC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 33
	.byte	VOL	, v120
	.byte	LFOS	, 15
	.byte	BENDR	, 15
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte		N01	, An3, v127
	.byte	W02
	.byte			Cs4
	.byte	W02
	.byte			En4
	.byte	W02
	.byte		N32	, An4
	.byte	W32
	.byte	FINE

	.align 2
	.global song150
song150:	@ 0x087BD40C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.int	voicegroup005		@ voicegroup/tone

	.int	song150_1		@ track
