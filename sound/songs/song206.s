	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song206_1
song206_1:	@ 0x087BE90C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 93
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte	LFOS	, 7
	.byte	MODT	, 0
	.byte	BENDR	, 10
	.byte		N03	, Cn4, v104
	.byte	W03
	.byte			En4, v096
	.byte	W03
	.byte			Gn4, v088
	.byte	W03
	.byte			Bn4, v092
	.byte	W03
	.byte			Cn5, v104
	.byte	W03
	.byte			En5, v088
	.byte	W03
	.byte			Gn5, v092
	.byte	W03
	.byte			Bn5, v088
	.byte	W03
	.byte			Cn6, v096
	.byte	W03
	.byte			Bn5, v080
	.byte	W03
	.byte			Gn5, v104
	.byte	W03
	.byte			En5, v088
	.byte	W03
	.byte			Cn5
	.byte	W03
	.byte			Dn4, v104
	.byte	W03
	.byte			Fs4, v096
	.byte	W03
	.byte			An4, v088
	.byte	W03
	.byte			Cs5, v092
	.byte	W03
	.byte			Dn5, v104
	.byte	W03
	.byte			Fs5, v088
	.byte	W03
	.byte			An5, v092
	.byte	W03
	.byte			Cs6, v088
	.byte	W03
	.byte			Dn6, v096
	.byte	W03
	.byte			Cs6, v080
	.byte	W03
	.byte			An5, v104
	.byte	W03
	.byte			Fs5, v088
	.byte	W03
	.byte			Dn5
	.byte	W03
	.byte	FINE

	mAlignWord
	.global song206
song206:	@ 0x087BE96C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song206_1		@ track
