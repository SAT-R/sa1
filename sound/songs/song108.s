	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song108_1
song108_1:	@ 0x087BC460
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 1
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	BENDR	, 15
	.byte		N04	, An6, v112
	.byte	W04
	.byte	FINE

	mAlignWord
	.global song108
song108:	@ 0x087BC474
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup000		@ voicegroup/tone

	mPtr	song108_1		@ track
