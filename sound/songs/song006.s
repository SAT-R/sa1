	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song006_1
song006_1:	@ 0x0879E4B0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 50
	.byte	VOICE	, 74
	.byte	VOL	, v092
	.byte	PAN	, c_v
	.byte	W60
	.byte		N04	, Gn2, v127
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			An2
	.byte	W06
song006_1_1:
	.byte		N09	, En3, v127
	.byte	W12
	.byte		N04	, Cn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W72
	.byte	PEND
	.byte			Fn3
	.byte	W06
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte		N07	, Fs3
	.byte	W12
	.byte		N10	, Gn3
	.byte	W24
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte		N08	, En3
	.byte	W12
	.byte		N04	, Cn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W72
	.byte			An2
	.byte	W06
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte		N10	, As2
	.byte	W12
	.byte		N08	, Bn2
	.byte	W12
	.byte		N12	, Gn2
	.byte	W12
	.byte		N04	, An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			An2
	.byte	W06
	.byte	PATT	
		.word	song006_1_1
	.byte		N04	, Fn3, v127
	.byte	W06
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte		N08	, Fs3
	.byte	W12
	.byte		N09	, Gn3
	.byte	W24
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte		N11	, En3
	.byte	W12
	.byte		N04	, Cn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W72
	.byte			An2
	.byte	W06
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte		N08	, As2
	.byte	W12
	.byte		N05	, Bn2
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N23	, Dn2
	.byte	W24
	.byte			En2
	.byte	W24
	.byte			Fn2
	.byte	W24
	.byte			Fs2
	.byte	W24
	.byte		N44	, Gn2
	.byte	W60
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			An2
	.byte	W06
	.byte	GOTO	
		.word	song006_1_1
	.byte		N09	, En3, v127
	.byte	W12
	.byte		N04	, Cn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W04
	.byte	FINE

	@********************** Track  2 **********************@

	.global song006_2
song006_2:	@ 0x0879E573
	.byte	KEYSH	, 0
	.byte	VOICE	, 67
	.byte	VOL	, v086
	.byte	PAN	, c_v
	.byte	W96
song006_2_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W12
	.byte		N04	, An3, v127
	.byte	W12
	.byte			Fn3
	.byte	W06
	.byte			Cn3
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			Fn3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			As3
	.byte	W06
	.byte		N17	, An3
	.byte	W18
	.byte	W96
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte			Fn3
	.byte	W06
	.byte			Cn3
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			Fn3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			As3
	.byte	W06
	.byte		N14	, An3
	.byte	W18
	.byte	W96
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte			Fn3
	.byte	W06
	.byte			Cn3
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			Fn3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			As3
	.byte	W06
	.byte		N10	, An3
	.byte	W18
	.byte	W96
	.byte		N23	, Dn4
	.byte	W24
	.byte			En4
	.byte	W24
	.byte			Fn4
	.byte	W24
	.byte			Fs4
	.byte	W24
	.byte		N42	, Gn4
	.byte	W96
	.byte	GOTO	
		.word	song006_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song006_3
song006_3:	@ 0x0879E5D1
	.byte	KEYSH	, 0
	.byte	VOICE	, 64
	.byte	VOL	, v062
	.byte	PAN	, c_v
	.byte		N12	, Gn4, v127
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			An3
	.byte	W06
song006_3_2:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song006_3_1:
	.byte		N44	, Cn3, v127
	.byte	W48
	.byte		N23	, An2
	.byte	W24
	.byte			Cn3
	.byte	W24
	.byte	PEND
	.byte			As2
	.byte	W24
	.byte		N11	, Cn3
	.byte	W12
	.byte		N23	, Dn3
	.byte	W24
	.byte		N11	, Cn3
	.byte	W12
	.byte		N23	, As2
	.byte	W24
	.byte	PATT	
		.word	song006_3_1
	.byte	W96
	.byte	PATT	
		.word	song006_3_1
	.byte		N23	, As2, v127
	.byte	W24
	.byte		N11	, Cn3
	.byte	W12
	.byte		N23	, Dn3
	.byte	W24
	.byte		N11	, Cn3
	.byte	W12
	.byte		N21	, As2
	.byte	W24
	.byte		N44	, An2
	.byte	W48
	.byte		N23	, Fn2
	.byte	W24
	.byte			An2
	.byte	W24
	.byte		N48	, Bn2
	.byte	W96
	.byte	GOTO	
		.word	song006_3_2
	.byte	FINE

	@********************** Track  4 **********************@

	.global song006_4
song006_4:	@ 0x0879E647
	.byte	KEYSH	, 0
	.byte	VOICE	, 93
	.byte	VOL	, v074
	.byte	PAN	, c_v
	.byte	W96
song006_4_1:
	.byte	W12
	.byte		N04	, Cn3, v127
	.byte	W12
	.byte			An2
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N06	, Gn2
	.byte	W24
	.byte		N04	, Bn2
	.byte	W12
	.byte		N06	, An2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte	PEND
song006_4_2:
	.byte	W12
	.byte		N06	, An2, v127
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Fn2
	.byte	W24
	.byte			Gn2
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song006_4_1
	.byte	PATT	
		.word	song006_4_2
	.byte	PATT	
		.word	song006_4_1
	.byte	PATT	
		.word	song006_4_2
	.byte	PATT	
		.word	song006_4_1
	.byte	PATT	
		.word	song006_4_2
song006_4_3:
	.byte	W12
	.byte		N04	, Cn3, v127
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte		N04	
	.byte	W18
	.byte			Cn3
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	PEND
song006_4_4:
	.byte	W12
	.byte		N04	, As2, v127
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N04	
	.byte	W18
	.byte			As2
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song006_4_3
	.byte	PATT	
		.word	song006_4_4
	.byte	PATT	
		.word	song006_4_3
	.byte	PATT	
		.word	song006_4_4
	.byte	W12
	.byte		N02	, An2, v127
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N02	, Fn2
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N02	, Dn2
	.byte	W06
	.byte		N03	
	.byte	W18
	.byte			An2
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N02	, Fn2
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Gn2
	.byte	W12
	.byte		N02	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N04	, Gn2
	.byte	W06
	.byte		N11	, An2
	.byte	W12
	.byte		N03	, Gn2
	.byte	W48
	.byte	GOTO	
		.word	song006_4_1
	.byte	FINE

	@********************** Track  5 **********************@

	.global song006_5
song006_5:	@ 0x0879E718
	.byte	KEYSH	, 0
	.byte	VOICE	, 80
	.byte	VOL	, v079
	.byte	PAN	, c_v
	.byte	W96
song006_5_1:
	.byte	W12
	.byte		N04	, Gn2, v127
	.byte	W06
	.byte		N04	
	.byte	W18
	.byte		N04	
	.byte	W24
	.byte		N04	
	.byte	W24
	.byte		N04	
	.byte	W12
	.byte	PEND
song006_5_2:
	.byte	W12
	.byte		N04	, Cn3, v127
	.byte	W06
	.byte		N04	
	.byte	W18
	.byte		N04	
	.byte	W24
	.byte			Dn3
	.byte	W06
	.byte		N04	
	.byte	W18
	.byte		N04	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song006_5_1
	.byte	PATT	
		.word	song006_5_2
	.byte	PATT	
		.word	song006_5_1
	.byte	PATT	
		.word	song006_5_2
	.byte	PATT	
		.word	song006_5_1
	.byte	PATT	
		.word	song006_5_2
song006_5_3:
	.byte	W12
	.byte		N04	, Cn3, v127
	.byte	W06
	.byte		N04	
	.byte	W18
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W18
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W18
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	PEND
song006_5_4:
	.byte	W12
	.byte		N04	, As2, v127
	.byte	W06
	.byte		N04	
	.byte	W18
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W18
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W18
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song006_5_3
	.byte	PATT	
		.word	song006_5_4
	.byte	PATT	
		.word	song006_5_3
	.byte	PATT	
		.word	song006_5_4
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song006_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song006_6
song006_6:	@ 0x0879E7A1
	.byte	KEYSH	, 0
	.byte	VOICE	, 94
	.byte	VOL	, v074
	.byte	PAN	, c_v
	.byte	W60
	.byte		N04	, Gn2, v127
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			An2
	.byte	W06
song006_6_1:
	.byte		N09	, En3, v127
	.byte	W12
	.byte		N04	, Cn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W72
	.byte	PEND
	.byte			Fn3
	.byte	W06
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte		N07	, Fs3
	.byte	W12
	.byte		N10	, Gn3
	.byte	W24
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte		N08	, En3
	.byte	W12
	.byte		N04	, Cn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W72
	.byte			An2
	.byte	W06
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte		N10	, As2
	.byte	W12
	.byte		N08	, Bn2
	.byte	W12
	.byte		N12	, Gn2
	.byte	W12
	.byte		N04	, An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			An2
	.byte	W06
	.byte	PATT	
		.word	song006_6_1
	.byte		N04	, Fn3, v127
	.byte	W06
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte		N08	, Fs3
	.byte	W12
	.byte		N09	, Gn3
	.byte	W24
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte		N10	, En3
	.byte	W12
	.byte		N04	, Cn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W72
	.byte			An2
	.byte	W06
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte		N08	, As2
	.byte	W12
	.byte		N05	, Bn2
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W12
	.byte		N10	, Gn3
	.byte	W12
	.byte		N11	, An3
	.byte	W12
	.byte		N06	, Gn3
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte		N11	, An3
	.byte	W12
	.byte		N09	, Gn3
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N03	, Bn3
	.byte	W12
	.byte		N02	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte		N12	, Cn4
	.byte	W12
	.byte		N03	, Bn3
	.byte	W12
	.byte		N04	, Gn2
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			An2
	.byte	W06
	.byte	GOTO	
		.word	song006_6_1
	.byte		N09	, En3, v127
	.byte	W12
	.byte		N04	, Cn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W04
	.byte	FINE

	@********************** Track  7 **********************@

	.global song006_7
song006_7:	@ 0x0879E87A
	.byte	KEYSH	, 0
	.byte	VOICE	, 95
	.byte	VOL	, v053
	.byte	PAN	, c_v
	.byte		N12	, Gn4, v120
	.byte	W06
	.byte			Fn4, v112
	.byte	W06
	.byte			En4, v108
	.byte	W06
	.byte			Dn4, v100
	.byte	W06
	.byte			Fn4, v092
	.byte	W06
	.byte			En4, v088
	.byte	W06
	.byte			Dn4, v080
	.byte	W06
	.byte			Cn4, v072
	.byte	W06
	.byte			En4, v068
	.byte	W06
	.byte			Dn4, v060
	.byte	W06
	.byte			Cn4, v056
	.byte	W06
	.byte			Bn3, v048
	.byte	W06
	.byte			Dn4, v040
	.byte	W06
	.byte			Cn4, v036
	.byte	W06
	.byte			Bn3, v028
	.byte	W06
	.byte			An3, v024
	.byte	W06
song006_7_2:
	.byte		N12	, Gn3, v016
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song006_7_1:
	.byte		N44	, Cn5, v127
	.byte	W48
	.byte		N23	, An4
	.byte	W24
	.byte			Cn5
	.byte	W24
	.byte	PEND
	.byte			As4
	.byte	W24
	.byte		N11	, Cn5
	.byte	W12
	.byte		N23	, Dn5
	.byte	W24
	.byte		N11	, Cn5
	.byte	W12
	.byte		N23	, As4
	.byte	W24
	.byte	PATT	
		.word	song006_7_1
	.byte	W12
	.byte		N10	, Ds3, v127
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte		N06	, Ds3
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte		N10	, Fn3
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte	PATT	
		.word	song006_7_1
	.byte		N23	, As4, v127
	.byte	W24
	.byte		N11	, Cn5
	.byte	W12
	.byte		N23	, Dn5
	.byte	W24
	.byte		N11	, Cn5
	.byte	W12
	.byte		N21	, As4
	.byte	W24
	.byte		N44	, An4
	.byte	W48
	.byte		N23	, Fn4
	.byte	W24
	.byte			An4
	.byte	W24
	.byte		N04	, Gn3
	.byte		N48	, Bn4
	.byte	W12
	.byte		N03	, Gn3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte		N10	, An3
	.byte	W12
	.byte		N04	, Gn3
	.byte	W48
	.byte	GOTO	
		.word	song006_7_2
	.byte	FINE

	@********************** Track  8 **********************@

	.global song006_8
song006_8:	@ 0x0879E923
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v105
	.byte	PAN	, c_v
	.byte		N05	, An1, v120
	.byte	W06
	.byte			An1, v108
	.byte	W06
	.byte		N11	
	.byte	W12
	.byte		N05	, Gs1, v127
	.byte	W06
	.byte			Gs1, v120
	.byte	W06
	.byte		N11	, Gs1, v127
	.byte	W12
	.byte		N05	, Gn1
	.byte	W06
	.byte			Gn1, v104
	.byte	W06
	.byte		N11	, Gn1, v116
	.byte	W12
	.byte			Fs1, v127
	.byte	W12
	.byte		N10	, Fs1, v120
	.byte	W12
song006_8_2:
	.byte		N11	, Cn1, v127
	.byte		N02	, Dn1, v056
	.byte		N88	, Cs2, v127
	.byte	W12
	.byte		N11	, Cn1
	.byte		N07	, Ds1, v044
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N02	, Dn1, v056
	.byte	W12
	.byte		N07	, Ds1, v044
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N02	, Dn1, v056
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N07	, Ds1, v044
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N02	, Dn1, v056
	.byte	W12
	.byte		N07	, Ds1, v044
	.byte	W12
	.byte	PEND
song006_8_1:
	.byte		N11	, Cn1, v127
	.byte		N02	, Dn1, v056
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N07	, Ds1, v044
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N02	, Dn1, v056
	.byte	W12
	.byte		N07	, Ds1, v044
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N02	, Dn1, v056
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N07	, Ds1, v044
	.byte	W12
	.byte		N24	, Cs1, v127
	.byte		N02	, Dn1, v056
	.byte	W12
	.byte		N07	, Ds1, v044
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_2
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte	PATT	
		.word	song006_8_1
	.byte		N05	, Cn1, v127
	.byte		N02	, Dn1, v056
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte		N11	
	.byte		N07	, Ds1, v044
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N02	, Dn1, v056
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N07	, Ds1, v044
	.byte	W12
	.byte		N02	, Dn1, v056
	.byte	W06
	.byte		N05	, An1, v127
	.byte	W06
	.byte		N07	, Ds1, v044
	.byte		N11	, An1, v127
	.byte	W12
	.byte		N02	, Dn1, v056
	.byte		N11	, Gs1, v127
	.byte	W12
	.byte		N07	, Ds1, v044
	.byte		N15	, Gn1, v127
	.byte	W12
	.byte	GOTO	
		.word	song006_8_2
	.byte	W03
	.byte	FINE

	@********************** Track  9 **********************@

	.global song006_9
song006_9:	@ 0x0879EA3B
	.byte	KEYSH	, 0
	.byte	VOICE	, 68
	.byte	VOL	, v092
	.byte	PAN	, c_v
	.byte	W96
song006_9_1:
	.byte	W96
	.byte		N04	, Fn4, v056
	.byte	W06
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte		N07	, Fs4
	.byte	W12
	.byte		N10	, Gn4
	.byte	W48
	.byte	W96
	.byte		N04	, An3
	.byte	W06
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte		N10	, As3
	.byte	W12
	.byte			Bn3
	.byte	W48
	.byte	W96
	.byte		N04	, Fn4
	.byte	W06
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte		N08	, Fs4
	.byte	W12
	.byte		N09	, Gn4
	.byte	W48
	.byte	W96
	.byte		N04	, An3
	.byte	W06
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte		N08	, As3
	.byte	W12
	.byte		N05	, Bn3
	.byte	W48
	.byte	W12
	.byte		N04	, An2, v127
	.byte	W12
	.byte			Fn2
	.byte	W06
	.byte			Cn2
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			Fn2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			As2
	.byte	W06
	.byte		N17	, An2
	.byte	W18
	.byte	W96
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte			Fn2
	.byte	W06
	.byte			Cn2
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			Fn2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			As2
	.byte	W06
	.byte		N14	, An2
	.byte	W18
	.byte	W96
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte			Fn2
	.byte	W06
	.byte			Cn2
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			Fn2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			As2
	.byte	W06
	.byte		N10	, An2
	.byte	W18
	.byte	W96
	.byte		N23	, Dn3
	.byte	W24
	.byte			En3
	.byte	W24
	.byte			Fn3
	.byte	W24
	.byte			Fs3
	.byte	W24
	.byte		N42	, Gn3
	.byte	W96
	.byte	GOTO	
		.word	song006_9_1
	.byte	FINE

	.align 2
	.global song006
song006:	@ 0x0879EAD4
	.byte	9		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup007		@ voicegroup/tone

	.word	song006_1		@ track
	.word	song006_2		@ track
	.word	song006_3		@ track
	.word	song006_4		@ track
	.word	song006_5		@ track
	.word	song006_6		@ track
	.word	song006_7		@ track
	.word	song006_8		@ track
	.word	song006_9		@ track
