	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song204_1
song204_1:	@ 0x087BE888
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 2
	.byte	BENDR	, 10
	.byte	MOD	, 43
	.byte	LFOS	, 7
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v000
	.byte		TIE	, Fn1, v127
	.byte	W01
	.byte	VOL	, v011
	.byte	W01
	.byte		v017
	.byte	W01
	.byte		v023
	.byte	W01
	.byte		v029
	.byte	W01
	.byte		v035
	.byte	W01
	.byte		v041
	.byte	W01
	.byte		v047
	.byte	W01
	.byte		v053
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v090
	.byte	W10
song204_1_1:
	.byte	W72
	.byte	W72
	.byte	GOTO	
		mPtr	song204_1_1
	.byte	W24
	.byte		EOT	, Fn1
	.byte	FINE

	mAlignWord
	.global song204
song204:	@ 0x087BE8C8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup000		@ voicegroup/tone

	mPtr	song204_1		@ track
