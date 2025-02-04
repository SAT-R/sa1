	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song106_1
song106_1:	@ 0x087BC414
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 3
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	BENDR	, 15
	.byte		N04	, Fs4, v127
	.byte	W04
	.byte			Bn4, v120
	.byte	W04
	.byte			En5, v112
	.byte	W04
	.byte			An5, v104
	.byte	W04
	.byte	FINE

	mAlignWord
	.global song106
song106:	@ 0x087BC430
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup000		@ voicegroup/tone

	mPtr	song106_1		@ track
