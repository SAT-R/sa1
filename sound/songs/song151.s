	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song151_1
song151_1:	@ 0x087BD418
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 86
	.byte	VOL	, v120
	.byte	LFOS	, 16
	.byte	BENDR	, 4
	.byte	MODT	, 0
	.byte	MOD	, 0
	.byte	PAN	, c_v
	.byte		N02	, Bn5, v127
	.byte	W04
	.byte		N03	, Gn5
	.byte	W04
	.byte		N22	, Bn5
	.byte	W22
	.byte	FINE

	.align 2
	.global song151
song151:	@ 0x087BD438
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.int	voicegroup005		@ voicegroup/tone

	.int	song151_1		@ track
