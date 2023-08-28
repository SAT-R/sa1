	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song034_1
song034_1:	@ 0x087B3408
	.byte	KEYSH	, 0
	.byte	TEMPO	, 65
	.byte	VOICE	, 1
	.byte	MOD	, 2
	.byte	VOL	, v043
	.byte	PAN	, c_v
	.byte	BENDR	, 32
	.byte	W24
	.byte		N06	, En4, v076
	.byte	W06
	.byte			En4, v096
	.byte	W12
	.byte		N18	, En4, v120
	.byte	W18
	.byte		N06	, Dn4, v092
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N18	, Dn4, v100
	.byte	W18
	.byte		N06	, Gs3, v088
	.byte	W06
	.byte			As3, v108
	.byte	W06
	.byte			Cn4, v100
	.byte	W06
	.byte			Dn4, v092
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte		N54	, En4, v100
	.byte	W54
	.byte	FINE

	@********************** Track  2 **********************@

	.global song034_2
song034_2:	@ 0x087B3440
	.byte	KEYSH	, 0
	.byte	VOICE	, 76
	.byte	VOL	, v117
	.byte	PAN	, c_v
	.byte	BENDR	, 0
	.byte	W12
	.byte		N02	, Cn2, v112
	.byte	W03
	.byte		N01	, Ds2
	.byte	W02
	.byte			Fs2
	.byte	W02
	.byte			An2
	.byte	W02
	.byte		N02	, Cs3
	.byte	W03
	.byte		N06	, Gn3
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N18	
	.byte	W18
	.byte		N06	, Fn3
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N14	
	.byte	W14
	.byte		N02	, Ds3
	.byte	W01
	.byte			Dn3
	.byte	W01
	.byte			Cn3
	.byte	W02
	.byte			Gn2
	.byte	W01
	.byte			Fs2
	.byte	W02
	.byte			Fn2
	.byte	W03
	.byte		N06	, Cs3
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Fn3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N54	, Gn3
	.byte	W54
	.byte	FINE

	@********************** Track  3 **********************@

	.global song034_3
song034_3:	@ 0x087B3481
	.byte	KEYSH	, 0
	.byte	VOICE	, 46
	.byte	VOL	, v065
	.byte	PAN	, c_v
	.byte	BENDR	, 0
	.byte	W24
	.byte		N06	, Cn3, v112
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte		N18	, Cn4
	.byte	W18
	.byte		N06	, Cn3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte		N18	, Cn4
	.byte	W18
	.byte		N06	, Gs2
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Gs3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N54	, Cn3
	.byte	W54
	.byte	FINE

	@********************** Track  4 **********************@

	.global song034_4
song034_4:	@ 0x087B34B0
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v103
	.byte	PAN	, c_v
	.byte	BENDR	, 127
	.byte	W24
	.byte		N06	, Cn1, v127
	.byte		N78	, Cs2, v088
	.byte	W06
	.byte		N06	, Cn1, v127
	.byte	W12
	.byte		N18	, Cs1
	.byte	W18
	.byte		N06	, Cn1
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N18	, Cs1
	.byte	W18
	.byte		N06	, Gs1
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N05	, Cn1
	.byte	W06
	.byte			Cs1
	.byte		N11	, Cs2, v088
	.byte	W12
	.byte			Cs1, v127
	.byte		N54	, Cs2, v088
	.byte	W42
	.byte		N06	, Gn1, v127
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N23	, Fs1
	.byte		N84	, Cs2, v088
	.byte	W84
	.byte	FINE

	.align 2
	.global song034
song034:	@ 0x087B34F8
	.byte	4		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	song034_1		@ track
	.word	song034_2		@ track
	.word	song034_3		@ track
	.word	song034_4		@ track
