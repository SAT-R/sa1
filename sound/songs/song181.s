	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song181_1
song181_1:	@ 0x087BDEAC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 1
	.byte	BENDR	, 11
	.byte	LFOS	, 73
	.byte	MODT	, 0
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	MOD	, 15
	.byte	BEND	, c_v-56
	.byte		TIE	, Fn2, v127
	.byte	W01
	.byte	BEND	, c_v-51
	.byte	W01
	.byte		c_v-47
	.byte	W01
	.byte		c_v-43
	.byte	W01
	.byte		c_v-38
	.byte	W01
	.byte		c_v-34
	.byte	W01
	.byte		c_v-29
	.byte	W01
	.byte		c_v-25
	.byte	W01
	.byte		c_v-21
	.byte	W01
	.byte		c_v-16
	.byte	W01
	.byte		c_v-12
	.byte	W01
	.byte		c_v-8
	.byte	W01
	.byte		c_v-3
	.byte	W01
	.byte		c_v+1
	.byte	W01
	.byte		c_v+6
	.byte	W01
	.byte		c_v+10
	.byte	W01
	.byte		c_v+14
	.byte	W01
	.byte		c_v+19
	.byte	W01
	.byte		c_v+23
	.byte	W01
	.byte		c_v+27
	.byte	W01
	.byte		c_v+32
	.byte	W01
	.byte		c_v+36
	.byte	W01
	.byte		c_v+41
	.byte	W01
	.byte		c_v+45
	.byte	W01
	.byte		c_v+49
	.byte	W24
song181_1_1:
	.byte	W48
	.byte	W96
	.byte	GOTO	
		mPtr	song181_1_1
	.byte	W22
	.byte		EOT	, Fn2
	.byte	FINE

	mAlignWord
	.global song181
song181:	@ 0x087BDF00
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup000		@ voicegroup/tone

	mPtr	song181_1		@ track
