	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song213_1
song213_1:	@ 0x087BEBF4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 50
	.byte	VOL	, v072
	.byte	PAN	, c_v
	.byte	BENDR	, 10
	.byte	LFOS	, 13
	.byte	MOD	, 0
	.byte	MODT	, 0
	.byte	BEND	, c_v-64
	.byte		N24	, An2, v127
	.byte	W01
	.byte	BEND	, c_v-60
	.byte	W02
	.byte		c_v-43
	.byte	W01
	.byte		c_v-25
	.byte	W02
	.byte		c_v-8
	.byte	W01
	.byte		c_v+10
	.byte	W02
	.byte		c_v+27
	.byte	W01
	.byte		c_v+45
	.byte	W02
	.byte		c_v+58
	.byte	W01
	.byte		c_v+45
	.byte	W02
	.byte		c_v+32
	.byte	W01
	.byte		c_v+19
	.byte	W02
	.byte		c_v+6
	.byte	W01
	.byte		c_v-7
	.byte	W02
	.byte		c_v-20
	.byte	W01
	.byte		c_v-33
	.byte	W02
	.byte		c_v-46
	.byte	FINE

	mAlignWord
	.global song213
song213:	@ 0x087BEC30
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song213_1		@ track
