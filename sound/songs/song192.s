	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song192_1
song192_1:	@ 0x087BE3C8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 125
	.byte	VOL	, v090
	.byte	LFOS	, 51
	.byte	BENDR	, 15
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 60
	.byte		N05	, Fs2, v127
	.byte	W06
	.byte	VOL	, v083
	.byte		N90	, Gn3
	.byte	W06
	.byte	VOL	, v077
	.byte	W06
	.byte		v070
	.byte	W06
	.byte		v064
	.byte	W06
	.byte		v058
	.byte	W06
	.byte		v051
	.byte	W06
	.byte		v045
	.byte	W06
	.byte		v038
	.byte	W06
	.byte		v032
	.byte	W06
	.byte		v026
	.byte	W06
	.byte		v019
	.byte	W06
	.byte		v013
	.byte	W06
	.byte		v007
	.byte	W06
	.byte		v000
	.byte	W12
	.byte	FINE

	mAlignWord
	.global song192
song192:	@ 0x087BE400
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song192_1		@ track
