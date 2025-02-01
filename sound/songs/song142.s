	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song142_1
song142_1:	@ 0x087BD03C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 25
	.byte	MOD	, 3
	.byte	VOL	, v110
	.byte	PAN	, c_v-1
	.byte	BENDR	, 1
	.byte		N03	, Cs4, v127
	.byte	W03
	.byte			Fs4, v116
	.byte	W03
	.byte			Gs4, v120
	.byte	W03
	.byte		N44	, Cs5, v127
	.byte	W44
	.byte	W01
	.byte	FINE

	.align 2
	.global song142
song142:	@ 0x087BD05C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.int	voicegroup005		@ voicegroup/tone

	.int	song142_1		@ track
