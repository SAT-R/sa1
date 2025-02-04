	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song107_1
song107_1:	@ 0x087BC43C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 3
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	BENDR	, 15
	.byte		N04	, En4, v096
	.byte	W04
	.byte			Bn3
	.byte	W04
	.byte			Fs3, v100
	.byte	W04
	.byte	FINE

	mAlignWord
	.global song107
song107:	@ 0x087BC454
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup000		@ voicegroup/tone

	mPtr	song107_1		@ track
