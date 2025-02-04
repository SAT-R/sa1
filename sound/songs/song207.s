	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song207_1
song207_1:	@ 0x087BE978
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 93
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte	LFOS	, 7
	.byte	MODT	, 0
	.byte	BENDR	, 10
	.byte		N03	, Ds4, v104
	.byte	W03
	.byte			Gn4, v096
	.byte	W03
	.byte			As4, v088
	.byte	W03
	.byte			Dn5, v092
	.byte	W03
	.byte			Ds5, v104
	.byte	W03
	.byte			Gn5, v088
	.byte	W03
	.byte			As5, v092
	.byte	W03
	.byte			Dn6, v088
	.byte	W03
	.byte			Ds6, v096
	.byte	W03
	.byte			Dn6, v080
	.byte	W03
	.byte			As5, v104
	.byte	W03
	.byte			Gn5, v088
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			Fn4, v104
	.byte	W03
	.byte			An4, v096
	.byte	W03
	.byte			Cn5, v088
	.byte	W03
	.byte			En5, v092
	.byte	W03
	.byte			Fn5, v104
	.byte	W03
	.byte			An5, v088
	.byte	W03
	.byte			Cn6, v092
	.byte	W03
	.byte			En6, v088
	.byte	W03
	.byte			Fn6, v096
	.byte	W03
	.byte			En6, v080
	.byte	W03
	.byte			Cn6, v104
	.byte	W03
	.byte			An5, v088
	.byte	W03
	.byte			Fn5
	.byte	W03
	.byte	FINE

	mAlignWord
	.global song207
song207:	@ 0x087BE9D8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song207_1		@ track
