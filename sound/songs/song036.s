	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song036_1
song036_1:	@ 0x087B37A4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 54
	.byte	VOICE	, 74
	.byte	VOL	, v088
	.byte	PAN	, c_v
	.byte		N05	, En3, v112
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte		N04	, Cn4
	.byte	W06
	.byte		N06	, En4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Gn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte		N03	, Cn4, v080
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte		N13	, Dn4
	.byte	W18
	.byte		N04	
	.byte	W06
	.byte		N07	, Cn4, v072
	.byte	W06
	.byte		N04	, As3, v080
	.byte	W06
	.byte		N10	, Ds4
	.byte	W18
	.byte		N12	, Fn4, v112
	.byte	W18
	.byte		N09	, Gn4
	.byte	W06
	.byte	W12
	.byte		N60	, Gs4
	.byte	W60
	.byte	FINE

	@********************** Track  2 **********************@

	.global song036_2
song036_2:	@ 0x087B37EC
	.byte	KEYSH	, 0
	.byte	VOICE	, 75
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte		N03	, Cn2, v112
	.byte	W12
	.byte		N06	, Gn2
	.byte	W06
	.byte			Bn2
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			En2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte		N03	, Gs2, v080
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte		N07	, As2
	.byte	W18
	.byte		N04	
	.byte	W06
	.byte		N07	, Gs2, v072
	.byte	W06
	.byte		N04	, Gn2, v080
	.byte	W06
	.byte		N10	, Cn3
	.byte	W18
	.byte		N16	, Cs2, v112
	.byte	W18
	.byte		N09	, Ds2
	.byte	W06
	.byte	W12
	.byte		N60	, Gs2
	.byte	W60
	.byte	FINE

	@********************** Track  3 **********************@

	.global song036_3
song036_3:	@ 0x087B382F
	.byte	KEYSH	, 0
	.byte	VOICE	, 74
	.byte	VOL	, v092
	.byte	PAN	, c_v
	.byte		N11	, Gn2, v127
	.byte	W12
	.byte		N06	, En3
	.byte	W06
	.byte			Gn3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Bn2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte		N17	, Ds3
	.byte	W18
	.byte		N11	, Fn3
	.byte	W18
	.byte		N11	
	.byte	W18
	.byte		N12	, Gn3
	.byte	W18
	.byte			Gs3
	.byte	W18
	.byte			As3
	.byte	W06
	.byte	W12
	.byte		N60	, Cs4
	.byte	W60
	.byte	FINE

	@********************** Track  4 **********************@

	.global song036_4
song036_4:	@ 0x087B3862
	.byte	KEYSH	, 0
	.byte	VOICE	, 12
	.byte	VOL	, v084
	.byte	PAN	, c_v
	.byte		N13	, Cn2, v127
	.byte	W18
	.byte		N23	, Bn1
	.byte	W30
	.byte		N15	, An1
	.byte	W24
	.byte		N18	, Gn1
	.byte	W24
	.byte		N14	, Gs1
	.byte	W18
	.byte		N15	, As1
	.byte	W18
	.byte		N12	
	.byte	W18
	.byte			Cn1
	.byte	W18
	.byte			Cs1
	.byte	W18
	.byte		N10	, Ds1
	.byte	W06
	.byte	W12
	.byte		N60	, Cs1
	.byte	W60
	.byte	FINE

	@********************** Track  5 **********************@

	.global song036_5
song036_5:	@ 0x087B388B
	.byte	KEYSH	, 0
	.byte	VOICE	, 13
	.byte	VOL	, v040
	.byte	PAN	, c_v
	.byte		N11	, En4, v127
	.byte	W12
	.byte		N06	, Cn5
	.byte	W06
	.byte			En5
	.byte	W12
	.byte			Dn5
	.byte	W12
	.byte			Cn5
	.byte	W12
	.byte			Bn4
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			Gn4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte		N03	, Cn5
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte		N07	, Dn5
	.byte	W18
	.byte		N04	
	.byte	W06
	.byte		N07	, Cn5, v120
	.byte	W06
	.byte		N04	, As4, v127
	.byte	W06
	.byte		N10	, Ds5
	.byte	W18
	.byte		N12	, Fn4
	.byte	W18
	.byte		N09	, Gn4
	.byte	W06
	.byte	W12
	.byte		N60	, Gs4
	.byte	W60
	.byte	FINE

	@********************** Track  6 **********************@

	.global song036_6
song036_6:	@ 0x087B38CC
	.byte	KEYSH	, 0
	.byte	VOICE	, 11
	.byte	VOL	, v048
	.byte	PAN	, c_v
	.byte		N10	, Gn2, v127
	.byte	W12
	.byte		N05	, En3
	.byte	W06
	.byte		N11	, Gn3
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte		N05	, Bn2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte		N17	, Ds3
	.byte	W18
	.byte			Fn3
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte			Gn3
	.byte	W18
	.byte			Gs3
	.byte	W18
	.byte			As3
	.byte	W06
	.byte	W12
	.byte		N60	, Cs4
	.byte	W60
	.byte	FINE

	@********************** Track  7 **********************@

	.global song036_7
song036_7:	@ 0x087B38FF
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v100
	.byte	PAN	, c_v
	.byte		N05	, Cs1, v127
	.byte		N05	, Ds1, v048
	.byte	W06
	.byte			Cn1, v127
	.byte	W06
	.byte		N05	
	.byte		N03	, Dn1, v056
	.byte	W06
	.byte		N11	, Cs1, v127
	.byte		N05	, Ds1, v048
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N03	, Dn1, v056
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N05	, Ds1, v056
	.byte	W12
	.byte		N02	, An1, v127
	.byte	W03
	.byte		N02	
	.byte	W03
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte		N11	, Cs1
	.byte		N05	, Ds1, v056
	.byte	W12
	.byte			Cn1, v127
	.byte		N03	, Dn1, v056
	.byte	W06
	.byte		N17	, Cs1, v127
	.byte		N32	, Cs2
	.byte	W18
	.byte		N11	, Cs1
	.byte		N05	, Ds1, v056
	.byte	W12
	.byte			Cn1, v127
	.byte		N03	, Dn1, v056
	.byte	W06
	.byte		N17	, Cs1, v127
	.byte		N32	, Cs2
	.byte	W18
	.byte		N11	, Cs1
	.byte		N05	, Ds1, v056
	.byte	W12
	.byte			Cn1, v127
	.byte		N03	, Dn1, v056
	.byte	W06
	.byte		N11	, Cs1, v127
	.byte		N05	, Ds1, v056
	.byte	W06
	.byte	W06
	.byte			Cn1, v127
	.byte		N03	, Dn1, v056
	.byte	W06
	.byte		N54	, Cn1, v127
	.byte		N54	, Cs2
	.byte	W54
	.byte		N02	, Cs1, v092
	.byte	W03
	.byte		N03	, Cs1, v127
	.byte	W03
	.byte		N54	, Cn1
	.byte		N54	, Cs2
	.byte	W24
	.byte	W30
	.byte	FINE

	mAlignWord
	.global song036
song036:	@ 0x087B3990
	.byte	7		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup007		@ voicegroup/tone

	mPtr	song036_1		@ track
	mPtr	song036_2		@ track
	mPtr	song036_3		@ track
	mPtr	song036_4		@ track
	mPtr	song036_5		@ track
	mPtr	song036_6		@ track
	mPtr	song036_7		@ track
