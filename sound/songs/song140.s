	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song140_1
song140_1:	@ 0x087BCFFC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 90
	.byte	VOICE	, 1
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	BENDR	, 15
	.byte		N04	, Fs6, v112
	.byte	W04
	.byte	FINE

	.align 2
	.global song140
song140:	@ 0x087BD010
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song140_1		@ track
