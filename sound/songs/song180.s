	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song180_1
song180_1:	@ 0x087BDE7C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 51
	.byte	MOD	, 30
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	MOD	, 21
	.byte	BENDR	, 19
	.byte	LFOS	, 60
	.byte	MODT	, 0
	.byte		TIE	, Gs2, v080
	.byte	W24
song180_1_1:
	.byte	W72
	.byte	W96
	.byte	GOTO	
		mPtr	song180_1_1
	.byte	W13
	.byte		EOT	, Gs2
	.byte	FINE

	mAlignWord
	.global song180
song180:	@ 0x087BDEA0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song180_1		@ track
