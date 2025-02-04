	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song205_1
song205_1:	@ 0x087BE8D4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 59
	.byte	VOL	, v090
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
	.byte	W01
	.byte		c_v+63
	.byte	FINE

	mAlignWord
	.global song205
song205:	@ 0x087BE900
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb
    
mAlignWord
	mPtr	voicegroup000		@ voicegroup/tone

	mPtr	song205_1		@ track
