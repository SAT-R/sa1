	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song198_1
song198_1:	@ 0x087BE608
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 83
	.byte	MOD	, 13
	.byte	VOL	, v090
	.byte	LFOS	, 84
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte		TIE	, An3, v127
	.byte	W96
song198_1_1:
	.byte	W96
	.byte	GOTO	
		mPtr	song198_1_1
	.byte	W06
	.byte		EOT	, An3
	.byte	FINE

	mAlignWord
	.global song198
song198:	@ 0x087BE628
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb
    
mAlignWord
	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song198_1		@ track
