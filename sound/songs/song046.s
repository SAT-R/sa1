	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song046_1
song046_1:	@ 0x087B9264
	.byte	KEYSH	, 0
	.byte	TEMPO	, 37
	.byte	VOICE	, 74
	.byte	MOD	, 1
	.byte	BENDR	, 0
	.byte	VOL	, v079
	.byte	PAN	, c_v
	.byte	W96
song046_1_1:
	.byte	W06
	.byte		N06	, En2, v116
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			En3
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Ds3
	.byte	W48
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			En3
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Ds3
	.byte	W24
	.byte			Dn3
	.byte	W24
	.byte	GOTO	
		.int	song046_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song046_2
song046_2:	@ 0x087B9297
	.byte	KEYSH	, 0
	.byte	VOICE	, 75
	.byte	MOD	, 0
	.byte	BENDR	, 0
	.byte	VOL	, v074
	.byte	PAN	, c_v
	.byte	W96
song046_2_1:
	.byte	W06
	.byte		N06	, Cn2, v100
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Cn3
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gs2
	.byte	W48
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Cn3
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gs2
	.byte	W24
	.byte			Gn2
	.byte	W24
	.byte	GOTO	
		.int	song046_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song046_3
song046_3:	@ 0x087B92C8
	.byte	KEYSH	, 0
	.byte	VOICE	, 102
	.byte	MOD	, 1
	.byte	BENDR	, 0
	.byte	VOL	, v088
	.byte	PAN	, c_v
	.byte	W06
	.byte		N06	, Cn2, v116
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte			Gn2
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte			Ds2
	.byte	W30
song046_3_1:
	.byte	W06
	.byte		N06	, Cn2, v116
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte			Gn2
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte			Ds2
	.byte	W30
	.byte	W06
	.byte			Cn2
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte			Gn2
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Gs2
	.byte	W24
	.byte			Gn2
	.byte	W24
	.byte	GOTO	
		.int	song046_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song046_4
song046_4:	@ 0x087B9309
	.byte	KEYSH	, 0
	.byte	VOICE	, 80
	.byte	BENDR	, 0
	.byte	VOL	, v081
	.byte	PAN	, c_v
	.byte	W12
	.byte		N07	, Gn2, v116
	.byte	W24
	.byte		N07	
	.byte	W24
	.byte			Ds2, v127
	.byte	W24
	.byte			Ds2, v120
	.byte	W12
song046_4_1:
	.byte	W12
	.byte		N07	, Gn2, v116
	.byte	W24
	.byte		N07	
	.byte	W24
	.byte			Ds2, v127
	.byte	W24
	.byte			Ds2, v120
	.byte	W12
	.byte	W12
	.byte		N06	, Gn2
	.byte	W24
	.byte			Gn2, v108
	.byte	W12
	.byte		N23	, Ds3
	.byte	W24
	.byte		N06	, Dn3
	.byte	W24
	.byte	GOTO	
		.int	song046_4_1
	.byte	FINE

	@********************** Track  5 **********************@

	.global song046_5
song046_5:	@ 0x087B9340
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	BENDR	, 0
	.byte	VOL	, v092
	.byte	PAN	, c_v
	.byte		N05	, Cn1, v116
	.byte	W12
	.byte		N05	
	.byte		N03	, Dn1, v048
	.byte	W06
	.byte		N05	, Cn3, v116
	.byte	W06
	.byte		N28	, Gs2
	.byte	W06
	.byte		N05	, Cn3
	.byte	W06
	.byte		N03	, Dn1, v048
	.byte	W12
	.byte		N05	, Cn1, v116
	.byte	W12
	.byte		N03	, Dn1, v048
	.byte	W12
	.byte		N05	, Cs1, v116
	.byte	W12
	.byte		N03	, Dn1, v048
	.byte	W12
song046_5_1:
	.byte		N05	, Cn1, v116
	.byte	W12
	.byte		N05	
	.byte		N03	, Dn1, v048
	.byte	W06
	.byte		N05	, Cn3, v116
	.byte	W06
	.byte		N28	, Gs2
	.byte	W06
	.byte		N05	, Cn3
	.byte	W06
	.byte		N03	, Dn1, v048
	.byte	W12
	.byte		N05	, Cn1, v116
	.byte	W12
	.byte		N03	, Dn1, v048
	.byte	W12
	.byte		N05	, Cs1, v116
	.byte	W12
	.byte		N03	, Dn1, v048
	.byte	W12
	.byte		N05	, Cn1, v116
	.byte	W12
	.byte		N05	
	.byte		N03	, Dn1, v048
	.byte	W06
	.byte		N05	, Cn3, v116
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N03	, Dn1, v048
	.byte		N28	, Gs2, v116
	.byte	W12
	.byte		N05	, Cn1
	.byte		N03	, Dn1, v048
	.byte	W24
	.byte		N05	, Cs1, v116
	.byte		N03	, Dn1, v048
	.byte	W24
	.byte	GOTO	
		.int	song046_5_1
	.byte	FINE

	.align 2
	.global song046
song046:	@ 0x087B93C4
	.byte	5		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.int	voicegroup007		@ voicegroup/tone

	.int	song046_1		@ track
	.int	song046_2		@ track
	.int	song046_3		@ track
	.int	song046_4		@ track
	.int	song046_5		@ track
