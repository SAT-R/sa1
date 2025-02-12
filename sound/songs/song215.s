	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song215_1
song215_1:	@ 0x087BEC74
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 38
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	BENDR	, 15
	.byte		N12	, Gn4, v100
	.byte	W12
	.byte			Dn4, v092
	.byte	W12
	.byte	FINE

	mAlignWord
	.global song215
song215:	@ 0x087BEC88
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

mAlignWord
	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song215_1		@ track
