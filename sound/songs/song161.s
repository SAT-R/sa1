	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song161_1
song161_1:	@ 0x087BD70C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 37
	.byte	VOL	, v120
	.byte	BENDR	, 13
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	LFOS	, 74
	.byte	BEND	, c_v-4
	.byte		N03	, En3, v127
	.byte	W01
	.byte	BEND	, c_v-16
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-48
	.byte	W01
	.byte		c_v-64
	.byte	W01
	.byte		c_v-33
	.byte	W01
	.byte		c_v-1
	.byte	W01
	.byte		c_v+31
	.byte	FINE

	mAlignWord
	.global song161
song161:	@ 0x087BD734
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song161_1		@ track
