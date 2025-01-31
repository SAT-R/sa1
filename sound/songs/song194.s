	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song194_1
song194_1:	@ 0x087BE4C0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 51
	.byte	VOL	, v017
	.byte	LFOS	, 84
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 38
	.byte		N48	, An2, v127
	.byte	W01
	.byte	VOL	, v052
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v073
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v062
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v045
	.byte	W01
	.byte		v039
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v025
	.byte	W01
	.byte		v022
	.byte	W01
	.byte		v019
	.byte	W01
	.byte		v016
	.byte	W01
	.byte		v012
	.byte	W01
	.byte		v009
	.byte	W01
	.byte		v006
	.byte	W01
	.byte		v003
	.byte	W12
	.byte	FINE

	.align 2
	.global song194
song194:	@ 0x087BE520
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song194_1		@ track
