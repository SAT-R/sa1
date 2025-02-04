	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song211_1
song211_1:	@ 0x087BEB38
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 94
	.byte	VOL	, v090
	.byte	BENDR	, 10
	.byte	LFOS	, 17
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 95
	.byte	BEND	, c_v-51
	.byte		N06	, Fn3, v127
	.byte	W01
	.byte	BEND	, c_v-47
	.byte	W01
	.byte		c_v-42
	.byte	W01
	.byte		c_v-37
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-28
	.byte	W01
	.byte		c_v-23
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		c_v-13
	.byte	W01
	.byte		c_v-8
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v+1
	.byte	W01
	.byte		c_v+6
	.byte	W01
	.byte		c_v+11
	.byte	W01
	.byte		c_v+15
	.byte	W01
	.byte		c_v+20
	.byte	W01
	.byte		c_v+25
	.byte	W01
	.byte		c_v+30
	.byte	W01
	.byte		c_v+35
	.byte	W01
	.byte		c_v+32
	.byte	W01
	.byte		c_v+29
	.byte	W01
	.byte		c_v+26
	.byte	W01
	.byte		c_v+23
	.byte	W01
	.byte		c_v+19
	.byte	W01
	.byte		c_v+16
	.byte	W01
	.byte		c_v+13
	.byte	W01
	.byte		c_v+10
	.byte	W01
	.byte		c_v+7
	.byte	W01
	.byte		c_v+3
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte		c_v-3
	.byte	W01
	.byte		c_v-6
	.byte	W01
	.byte		c_v-9
	.byte	W01
	.byte		c_v-13
	.byte	W01
	.byte		c_v-16
	.byte	W01
	.byte		c_v-19
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-25
	.byte	W01
	.byte		c_v-29
	.byte	W01
	.byte		c_v-32
	.byte	FINE

	mAlignWord
	.global song211
song211:	@ 0x087BEBA0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song211_1		@ track
