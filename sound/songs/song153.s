	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song153_1
song153_1:	@ 0x087BD470
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 17
	.byte	VOL	, v120
	.byte	LFOS	, 15
	.byte	BENDR	, 15
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte		N02	, Gn1, v127
	.byte	W05
	.byte		N17	
	.byte	W17
	.byte	FINE

	mAlignWord
	.global song153
song153:	@ 0x087BD48C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song153_1		@ track
