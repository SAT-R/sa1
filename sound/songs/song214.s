	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song214_1
song214_1:	@ 0x087BEC3C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 50
	.byte	VOL	, v072
	.byte	PAN	, c_v
	.byte	BENDR	, 10
	.byte	LFOS	, 13
	.byte	MOD	, 0
	.byte	MODT	, 0
	.byte	BEND	, c_v+35
	.byte		N18	, Cn3, v127
	.byte	W01
	.byte	BEND	, c_v+49
	.byte	W02
	.byte		c_v+58
	.byte	W01
	.byte		c_v+58
	.byte	W02
	.byte		c_v+49
	.byte	W01
	.byte		c_v+13
	.byte	W02
	.byte		c_v-15
	.byte	W01
	.byte		c_v-51
	.byte	W02
	.byte		c_v-64
	.byte	W01
	.byte		c_v-64
	.byte	W05
	.byte	FINE

	mAlignWord
	.global song214
song214:	@ 0x087BEC68
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb
    
mAlignWord
	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song214_1		@ track
