	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song121_1
song121_1:	@ 0x087BC844
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 34
	.byte	VOL	, v107
	.byte	LFOS	, 2
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte		N05	, Dn4, v092
	.byte	W06
	.byte		N04	, Fs3
	.byte	W04
	.byte	FINE

	mAlignWord
	.global song121
song121:	@ 0x087BC85C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb
    
mAlignWord
	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song121_1		@ track
