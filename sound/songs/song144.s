	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song144_1
song144_1:	@ 0x087BD138
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 27
	.byte	VOL	, v120
	.byte	LFOS	, 84
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 77
	.byte		N18	, Gn2, v127
	.byte	W18
	.byte	FINE

	mAlignWord
	.global song144
song144:	@ 0x087BD150
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb
    
mAlignWord
	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song144_1		@ track
