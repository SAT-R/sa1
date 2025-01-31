	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song208_1
song208_1:	@ 0x087BE9E4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 93
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte	LFOS	, 7
	.byte	MODT	, 0
	.byte	BENDR	, 10
	.byte		N03	, Fs4, v104
	.byte	W03
	.byte			As4, v096
	.byte	W03
	.byte			Cs5, v088
	.byte	W03
	.byte			Fn5, v092
	.byte	W03
	.byte			Fs5, v104
	.byte	W03
	.byte			As5, v088
	.byte	W03
	.byte			Cs6, v092
	.byte	W03
	.byte			Fn6, v088
	.byte	W03
	.byte			Fs6, v096
	.byte	W03
	.byte			Fn6, v080
	.byte	W03
	.byte			Cs6, v104
	.byte	W03
	.byte			As5, v088
	.byte	W03
	.byte			Fs5
	.byte	W03
	.byte			Gs4, v104
	.byte	W03
	.byte			Cn5, v096
	.byte	W03
	.byte			Ds5, v088
	.byte	W03
	.byte			Gn5, v092
	.byte	W03
	.byte			Gs5, v104
	.byte	W03
	.byte			Cn6, v088
	.byte	W03
	.byte			Ds6, v092
	.byte	W03
	.byte			Gn6, v088
	.byte	W03
	.byte			Gs6, v096
	.byte	W03
	.byte			Gn6, v080
	.byte	W03
	.byte			Ds6, v104
	.byte	W03
	.byte			Cn6, v088
	.byte	W03
	.byte			Gs5
	.byte	W03
	.byte	FINE

	.align 2
	.global song208
song208:	@ 0x087BEA44
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	song208_1		@ track
