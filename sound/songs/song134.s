	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song134_1
song134_1:	@ 0x087BCE60
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 68
	.byte	VOL	, v110
	.byte	LFOS	, 15
	.byte	BENDR	, 15
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 46
	.byte		N04	, Cs4, v127
	.byte	W05
	.byte		N02	, An3
	.byte	W03
	.byte		N01	, Fn5
	.byte	W02
	.byte		N03	, Ds5
	.byte	W10
	.byte		TIE	, Ds4, v072
	.byte	W76
song134_1_1:
	.byte	W96
	.byte	GOTO	
		mPtr	song134_1_1
	.byte	W12
	.byte		EOT	, Ds4
	.byte	FINE

	mAlignWord
	.global song134
song134:	@ 0x087BCE90
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb
    
mAlignWord
	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song134_1		@ track
