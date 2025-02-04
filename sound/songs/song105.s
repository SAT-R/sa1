	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song105_1
song105_1:	@ 0x087BC3EC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 17
	.byte	VOL	, v120
	.byte	LFOS	, 15
	.byte	BENDR	, 15
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte		N02	, Cn1, v127
	.byte	W05
	.byte		N17	
	.byte	W17
	.byte	FINE

	mAlignWord
	.global song105
song105:	@ 0x087BC408
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb
    
mAlignWord
	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song105_1		@ track
