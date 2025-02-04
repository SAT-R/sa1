	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song114_1
song114_1:	@ 0x087BC69C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 68
	.byte	VOL	, v100
	.byte	LFOS	, 15
	.byte	BENDR	, 15
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 46
	.byte		N04	, Cs4, v127
	.byte	W05
	.byte		N02	, Gn3
	.byte	W03
	.byte		N01	, Fn5
	.byte	W02
	.byte		N03	, Ds5
	.byte	W10
	.byte		TIE	, Bn3, v072
	.byte	W76
song114_1_1:
	.byte	W96
	.byte	GOTO	
		mPtr	song114_1_1
	.byte	W12
	.byte		EOT	, Bn3
	.byte	FINE

	mAlignWord
	.global song114
song114:	@ 0x087BC6CC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

mAlignWord
	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song114_1		@ track
