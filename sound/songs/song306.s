	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song306_1
song306_1:	@ 0x087BF2DC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 63
	.byte	VOICE	, 127
	.byte	VOL	, v102
	.byte	PAN	, c_v
	.byte	W24
	.byte		N04	, Cs1, v127
	.byte	W06
	.byte		N04	
	.byte	W12
	.byte		N17	
	.byte		N52	, Cs2
	.byte	W30
	.byte		N04	, Cn1
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N14	, Cs1
	.byte	W06
	.byte	W24
	.byte		N04	, Gs1
	.byte	W04
	.byte			Gn1
	.byte	W04
	.byte			Gn1, v088
	.byte	W04
	.byte			Gn1, v092
	.byte	W04
	.byte			Fs1, v112
	.byte	W04
	.byte			Fn1, v092
	.byte	W04
	.byte		N64	, Cn1, v127
	.byte		N64	, Cs2
	.byte	W48
	.byte	W24
	.byte			Cn1
	.byte		N64	, Cs2
	.byte	W64
	.byte	W01
	.byte	FINE

	@********************** Track  2 **********************@

	.global song306_2
song306_2:	@ 0x087BF318
	.byte	KEYSH	, 0
	.byte	VOICE	, 74
	.byte	VOL	, v096
	.byte	PAN	, c_v
	.byte	W24
	.byte		N06	, Gs2, v127
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N24	, Cn3
	.byte	W30
	.byte		N06	, As2
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N24	, Cs3
	.byte	W06
	.byte	W48
	.byte		N72	, Gs3, v120
	.byte	W48
	.byte	W24
	.byte	FINE

	@********************** Track  3 **********************@

	.global song306_3
song306_3:	@ 0x087BF339
	.byte	KEYSH	, 0
	.byte	VOICE	, 74
	.byte	VOL	, v096
	.byte	PAN	, c_v
	.byte	W24
	.byte		N06	, Ds2, v127
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N24	, Gs2
	.byte	W30
	.byte		N06	, Fs2
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N24	, As2
	.byte	W06
	.byte	W48
	.byte		N72	, Ds3
	.byte	W48
	.byte	W24
	.byte	FINE

	@********************** Track  4 **********************@

	.global song306_4
song306_4:	@ 0x087BF359
	.byte	KEYSH	, 0
	.byte	VOICE	, 106
	.byte	VOL	, v052
	.byte	PAN	, c_v
	.byte	W24
	.byte		N06	, Ds4, v092
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N24	, Cn4
	.byte	W30
	.byte		N06	, As3
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N24	, Fs3
	.byte	W06
	.byte	W48
	.byte		N72	, Ds3
	.byte	W48
	.byte	W24
	.byte	FINE

	@********************** Track  5 **********************@

	.global song306_5
song306_5:	@ 0x087BF379
	.byte	KEYSH	, 0
	.byte	VOICE	, 80
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte		N03	, Fn1, v072
	.byte	W01
	.byte		N04	, Gn1, v096
	.byte	W02
	.byte		N03	, An1, v104
	.byte	W02
	.byte			Bn1, v108
	.byte	W01
	.byte			Cn2
	.byte	W02
	.byte			Dn2
	.byte	W02
	.byte			En2
	.byte	W02
	.byte			Fn2, v116
	.byte	W01
	.byte			Gn2, v108
	.byte	W02
	.byte			An2, v116
	.byte	W02
	.byte			Bn2
	.byte	W02
	.byte			Cn3, v120
	.byte	W02
	.byte			Dn3, v116
	.byte	W03
	.byte		N44	, Ds3, v127
	.byte	W48
	.byte		N40	, Cs3
	.byte	W24
	.byte	W15
	.byte		N06	, Bn2
	.byte	W01
	.byte		N04	, An2
	.byte	W03
	.byte		N03	, Gn2
	.byte	W02
	.byte			Fs2
	.byte	W02
	.byte			En2
	.byte	W02
	.byte			Dn2
	.byte	W01
	.byte			Cs2
	.byte	W02
	.byte			Bn1
	.byte	W02
	.byte		N04	, An1
	.byte	W04
	.byte		N03	, Gn1
	.byte	W14
	.byte		N60	, Ds3
	.byte	W48
	.byte	W15
	.byte	FINE

	@********************** Track  6 **********************@

	.global song306_6
song306_6:	@ 0x087BF3CD
	.byte	KEYSH	, 0
	.byte	VOICE	, 105
	.byte	VOL	, v067
	.byte	PAN	, c_v
	.byte	W24
	.byte		N06	, Cn3, v092
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N24	, Gs2
	.byte	W30
	.byte		N06	, Cs3
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N24	, As2
	.byte	W06
	.byte	W48
	.byte		N72	, Cn3
	.byte	W48
	.byte	W24
	.byte	FINE

	@********************** Track  7 **********************@

	.global song306_7
song306_7:	@ 0x087BF3ED
	.byte	KEYSH	, 0
	.byte	VOICE	, 107
	.byte	VOL	, v096
	.byte	PAN	, c_v
	.byte	W24
	.byte		N06	, Cn2, v127
	.byte	W06
	.byte			Ds2
	.byte	W12
	.byte		N24	, Gs2
	.byte	W30
	.byte		N06	, Cs2
	.byte	W06
	.byte			Fs2
	.byte	W12
	.byte		N24	, As2
	.byte	W06
	.byte	W48
	.byte		N72	, Gs2
	.byte	W48
	.byte	W24
	.byte	FINE

	mAlignWord
	.global song306
song306:	@ 0x087BF410
	.byte	7		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup007		@ voicegroup/tone

	mPtr	song306_1		@ track
	mPtr	song306_2		@ track
	mPtr	song306_3		@ track
	mPtr	song306_4		@ track
	mPtr	song306_5		@ track
	mPtr	song306_6		@ track
	mPtr	song306_7		@ track
