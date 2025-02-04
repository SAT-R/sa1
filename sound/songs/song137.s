	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song137_1
song137_1:	@ 0x087BCF50
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 124
	.byte	VOL	, v107
	.byte	LFOS	, 84
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 77
	.byte		N12	, Fn3, v127
	.byte	W12
	.byte	FINE

	mAlignWord
	.global song137
song137:	@ 0x087BCF68
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb
    
mAlignWord
	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song137_1		@ track
