	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song004_1
song004_1:	@ 0x0879DA54
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	W24
	.byte	VOICE	, 62
	.byte	VOL	, v081
	.byte	PAN	, c_v
	.byte	W24
	.byte		N04	, As2, v127
	.byte	W18
	.byte		N04	
	.byte	W18
	.byte		N56	, Gs2
	.byte	W12
song004_1_1:
	.byte	W48
	.byte		N05	, Gn2, v127
	.byte	W18
	.byte		N04	
	.byte	W18
	.byte		N48	, Gs2
	.byte	W12
	.byte	PEND
song004_1_2:
	.byte	W48
	.byte		N05	, As2, v127
	.byte	W18
	.byte		N04	
	.byte	W18
	.byte		N54	, Gs2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song004_1_1
	.byte	W48
song004_1_3:
	.byte	W48
	.byte	W60
	.byte		N08	, Ds3, v072
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte		N11	, Cn4, v080
	.byte	W06
	.byte		N10	, Ds4, v092
	.byte	W06
	.byte		N08	, Gs4, v100
	.byte	W06
	.byte		N09	, Cn5, v108
	.byte	W06
	.byte		N08	, Ds5, v116
	.byte	W06
	.byte		N07	, Gs5, v120
	.byte	W06
	.byte			Cn6, v127
	.byte	W06
	.byte			Gs5, v124
	.byte	W06
	.byte		N06	, Ds5, v116
	.byte	W06
	.byte		N05	, Cn5, v112
	.byte	W06
	.byte		N07	, Gs4, v104
	.byte	W06
	.byte		N08	, Ds4, v100
	.byte	W06
	.byte		N40	, Cs4, v092
	.byte	W48
	.byte	W66
	.byte		N08	, Gs3, v072
	.byte	W06
	.byte		N11	, Cn4, v080
	.byte	W06
	.byte		N10	, Ds4, v092
	.byte	W06
	.byte		N08	, Gs4, v100
	.byte	W06
	.byte		N09	, Cn5, v108
	.byte	W06
	.byte		N08	, Ds5, v116
	.byte	W06
	.byte		N07	, Gs5, v120
	.byte	W06
	.byte			Cn6, v127
	.byte	W06
	.byte			Gs5, v124
	.byte	W06
	.byte		N06	, Ds5, v116
	.byte	W06
	.byte		N05	, Cn5, v112
	.byte	W06
	.byte		N13	, Gs4, v104
	.byte	W12
	.byte		N04	, As2, v127
	.byte	W18
	.byte		N04	
	.byte	W18
	.byte		N56	, Gs2
	.byte	W12
	.byte	PATT	
		.word	song004_1_1
	.byte	PATT	
		.word	song004_1_2
	.byte	PATT	
		.word	song004_1_1
	.byte	W48
	.byte	GOTO	
		.word	song004_1_3
	.byte	FINE

	@********************** Track  2 **********************@

	.global song004_2
song004_2:	@ 0x0879DB0D
	.byte	KEYSH	, 0
	.byte	W20
	.byte	VOICE	, 80
	.byte	VOL	, v101
	.byte	PAN	, c_v
	.byte		N03	, Fn1, v072
	.byte	W01
	.byte		N04	, Gn1, v096
	.byte	W02
	.byte		N03	, An1, v104
	.byte	W02
	.byte			Bn1, v108
	.byte	W02
	.byte			Cn2
	.byte	W02
	.byte			Dn2
	.byte	W02
	.byte			En2
	.byte	W01
	.byte			Fn2, v116
	.byte	W02
	.byte			Gn2, v108
	.byte	W02
	.byte			An2, v116
	.byte	W01
	.byte			Bn2
	.byte	W02
	.byte			Cn3, v120
	.byte	W02
	.byte			Dn3, v116
	.byte	W02
	.byte		N04	, En3
	.byte	W03
	.byte		N36	, Fn3
	.byte	W36
	.byte	W02
	.byte		N56	, Ds3
	.byte	W12
song004_2_1:
	.byte	W48
	.byte		N36	, As2, v116
	.byte	W36
	.byte	W02
	.byte		N40	, Ds3
	.byte	W10
	.byte	PEND
song004_2_2:
	.byte	W30
	.byte		N03	, Gs1, v020
	.byte	W03
	.byte		N01	, An1, v056
	.byte	W01
	.byte		N02	, Bn1, v092
	.byte		N03	, Cn2, v116
	.byte	W01
	.byte			Dn2, v108
	.byte	W01
	.byte			En2, v116
	.byte	W02
	.byte			Fn2, v108
	.byte	W01
	.byte			Gn2, v116
	.byte	W01
	.byte			An2
	.byte	W01
	.byte		N02	, Bn2
	.byte	W01
	.byte			Cn3, v108
	.byte	W02
	.byte			Dn3, v116
	.byte	W01
	.byte		N03	, En3, v108
	.byte	W02
	.byte		N36	, Fn3, v116
	.byte	W36
	.byte	W02
	.byte		N56	, Ds3
	.byte	W11
	.byte	PEND
song004_2_3:
	.byte	W48
	.byte	W01
	.byte		N36	, As2, v116
	.byte	W36
	.byte	W02
	.byte		N32	, Ds3
	.byte	W09
	.byte	PEND
song004_2_4:
	.byte	W28
	.byte	W01
	.byte		N03	, Cs3, v052
	.byte		N03	, Dn3, v076
	.byte	W01
	.byte		N04	, Cn3, v096
	.byte	W02
	.byte			Bn2, v092
	.byte	W02
	.byte			An2
	.byte	W02
	.byte			Gn2, v088
	.byte	W02
	.byte			En2, v080
	.byte		N03	, Fs2, v092
	.byte	W02
	.byte			Dn2, v052
	.byte	W03
	.byte			Bn1, v060
	.byte	W01
	.byte		N01	, Cn2, v044
	.byte	W04
	.byte	PEND
song004_2_5:
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W20
	.byte		N03	, Fn1, v072
	.byte	W01
	.byte		N04	, Gn1, v096
	.byte	W02
	.byte		N03	, An1, v104
	.byte	W02
	.byte			Bn1, v108
	.byte	W02
	.byte			Cn2
	.byte	W02
	.byte			Dn2
	.byte	W02
	.byte			En2
	.byte	W01
	.byte			Fn2, v116
	.byte	W02
	.byte			Gn2, v108
	.byte	W02
	.byte			An2, v116
	.byte	W01
	.byte			Bn2
	.byte	W02
	.byte			Cn3, v120
	.byte	W02
	.byte			Dn3, v116
	.byte	W02
	.byte		N04	, En3
	.byte	W03
	.byte		N36	, Fn3
	.byte	W36
	.byte	W02
	.byte		N56	, Ds3
	.byte	W12
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_2
	.byte	PATT	
		.word	song004_2_3
	.byte	PATT	
		.word	song004_2_4
	.byte	GOTO	
		.word	song004_2_5
	.byte	FINE

	@********************** Track  3 **********************@

	.global song004_3
song004_3:	@ 0x0879DC04
	.byte	KEYSH	, 0
	.byte	W24
	.byte	VOICE	, 74
	.byte	VOL	, v061
	.byte	PAN	, c_v
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
song004_3_1:
	.byte	W24
	.byte		N12	, Cs3, v127
	.byte	W18
	.byte		N02	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N07	
	.byte	W24
	.byte		TIE	, Ds3
	.byte	W60
	.byte	W42
	.byte		EOT	
	.byte	W30
	.byte		N02	, Cs3
	.byte	W06
	.byte		N02	
	.byte	W06
	.byte		N02	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N04	
	.byte	W18
	.byte		N03	
	.byte	W18
	.byte		N84	, Ds3
	.byte	W60
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte	GOTO	
		.word	song004_3_1
	.byte	W24
	.byte		N12	, Cs3, v127
	.byte	W18
	.byte		N02	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N07	
	.byte	W24
	.byte		N12	, Ds3
	.byte	W12
	.byte	FINE

	@********************** Track  4 **********************@

	.global song004_4
song004_4:	@ 0x0879DC4C
	.byte	KEYSH	, 0
	.byte	W24
	.byte	VOICE	, 22
	.byte	VOL	, v053
	.byte	PAN	, c_v
	.byte	W24
	.byte		N03	, Dn3, v108
	.byte	W18
	.byte		N03	
	.byte	W18
	.byte		N54	, Cn3
	.byte	W12
song004_4_1:
	.byte	W48
	.byte		N04	, As2, v108
	.byte	W18
	.byte		N02	
	.byte	W18
	.byte		N48	, Cn3
	.byte	W12
	.byte	PEND
song004_4_2:
	.byte	W48
	.byte		N03	, Dn3, v108
	.byte	W18
	.byte		N04	
	.byte	W18
	.byte		N52	, Cn3
	.byte	W12
	.byte	PEND
song004_4_3:
	.byte	W48
	.byte		N05	, As2, v108
	.byte	W18
	.byte		N03	
	.byte	W18
	.byte		N44	, Cn3
	.byte	W12
	.byte	PEND
	.byte	W48
song004_4_4:
	.byte	W24
	.byte		N12	, Fs2, v108
	.byte	W18
	.byte		N02	, Fs2, v100
	.byte	W06
	.byte		N05	, Fs2, v108
	.byte	W12
	.byte		N05	
	.byte	W24
	.byte		TIE	, Gs2
	.byte	W60
	.byte	W40
	.byte	W01
	.byte		EOT	
	.byte	W30
	.byte	W01
	.byte		N02	, Fs2
	.byte	W06
	.byte			Fs2, v100
	.byte	W06
	.byte		N03	, Fs2, v104
	.byte	W06
	.byte		N02	, Fs2, v108
	.byte	W06
	.byte		N03	
	.byte	W18
	.byte		N03	
	.byte	W18
	.byte		N84	, Gs2
	.byte	W60
	.byte	W48
	.byte		N03	, Dn3
	.byte	W18
	.byte		N03	
	.byte	W18
	.byte		N54	, Cn3
	.byte	W12
	.byte	PATT	
		.word	song004_4_1
	.byte	PATT	
		.word	song004_4_2
	.byte	PATT	
		.word	song004_4_3
	.byte	W48
	.byte	GOTO	
		.word	song004_4_4
	.byte	W24
	.byte		N12	, Fs2, v108
	.byte	W18
	.byte		N02	, Fs2, v100
	.byte	W06
	.byte		N05	, Fs2, v108
	.byte	W12
	.byte		N05	
	.byte	W24
	.byte		N12	, Gs2
	.byte	W12
	.byte	FINE

	@********************** Track  5 **********************@

	.global song004_5
song004_5:	@ 0x0879DCDE
	.byte	KEYSH	, 0
	.byte	W24
	.byte	VOICE	, 74
	.byte	VOL	, v075
	.byte	PAN	, c_v
	.byte	W24
	.byte		N04	, Fn3, v127
	.byte	W18
	.byte		N04	
	.byte	W18
	.byte		N56	, Ds3
	.byte	W12
song004_5_2:
	.byte	W48
	.byte		N05	, Ds3, v127
	.byte	W18
	.byte		N05	
	.byte	W18
	.byte		N48	
	.byte	W12
	.byte	PEND
song004_5_1:
	.byte	W48
	.byte		N04	, Fn3, v127
	.byte	W18
	.byte		N04	
	.byte	W18
	.byte		N56	, Ds3
	.byte	W12
	.byte	PEND
song004_5_3:
	.byte	W48
	.byte		N06	, Ds3, v120
	.byte	W18
	.byte		N04	, Ds3, v124
	.byte	W18
	.byte		N48	, Ds3, v127
	.byte	W12
	.byte	PEND
	.byte	W48
song004_5_4:
	.byte	W24
	.byte		N12	, As2, v127
	.byte	W18
	.byte		N02	
	.byte	W06
	.byte		N04	
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte		TIE	, Cn3
	.byte	W60
	.byte	W40
	.byte		EOT	
	.byte	W32
	.byte		N01	, As2
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W18
	.byte		N03	
	.byte	W18
	.byte		N84	, Cn3
	.byte	W60
	.byte	PATT	
		.word	song004_5_1
	.byte	PATT	
		.word	song004_5_2
	.byte	PATT	
		.word	song004_5_1
	.byte	PATT	
		.word	song004_5_3
	.byte	W48
	.byte	GOTO	
		.word	song004_5_4
	.byte	W24
	.byte		N12	, As2, v127
	.byte	W18
	.byte		N02	
	.byte	W06
	.byte		N04	
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte		N12	, Cn3
	.byte	W12
	.byte	FINE

	@********************** Track  6 **********************@

	.global song004_6
song004_6:	@ 0x0879DD5F
	.byte	KEYSH	, 0
	.byte	W24
	.byte	VOICE	, 24
	.byte	VOL	, v101
	.byte	PAN	, c_v
	.byte	W24
	.byte		N13	, As1, v127
	.byte	W18
	.byte		N15	, Fn2
	.byte	W18
	.byte		N23	, As2
	.byte	W12
song004_6_1:
	.byte	W12
	.byte		N11	, Fn2, v127
	.byte	W12
	.byte			As2
	.byte	W12
	.byte		N05	, Fn2
	.byte	W06
	.byte		N06	, As2
	.byte	W06
	.byte		N17	, As1
	.byte	W18
	.byte		N16	, Fn2
	.byte	W18
	.byte		N24	, As2
	.byte	W12
	.byte	PEND
song004_6_2:
	.byte	W12
	.byte		N10	, Fn2, v127
	.byte	W12
	.byte		N12	, As2
	.byte	W12
	.byte		N10	, Fn2
	.byte	W12
	.byte		N18	, As1
	.byte	W18
	.byte			Fn2
	.byte	W18
	.byte		N23	, As2
	.byte	W12
	.byte	PEND
song004_6_3:
	.byte	W12
	.byte		N11	, Fn2, v127
	.byte	W12
	.byte		N10	, As2
	.byte	W12
	.byte		N04	, Fn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte		N19	, As1
	.byte	W18
	.byte		N14	, Fn2
	.byte	W18
	.byte		N23	, As2
	.byte	W12
	.byte	PEND
song004_6_4:
	.byte	W12
	.byte		N11	, Fn2, v127
	.byte	W12
	.byte		N14	, As2
	.byte	W12
	.byte		N10	, Fn2
	.byte	W12
	.byte	PEND
song004_6_5:
	.byte		N15	, Fs2, v127
	.byte	W18
	.byte		N04	
	.byte	W06
	.byte		N13	, Fn2
	.byte	W12
	.byte		N10	, Fs2
	.byte	W12
	.byte	W12
	.byte			Cs2
	.byte	W24
	.byte		N19	, Gs2
	.byte	W24
	.byte		N09	
	.byte	W12
	.byte		N17	, Cs3
	.byte	W18
	.byte		N06	, Cn3
	.byte	W06
	.byte		N07	, As2
	.byte	W12
	.byte		N12	, Gs2
	.byte	W12
	.byte		N11	, Gn2
	.byte	W12
	.byte		N04	, Gs2
	.byte	W12
	.byte		N15	, Fs2
	.byte	W18
	.byte		N04	
	.byte	W06
	.byte		N13	, Fn2
	.byte	W12
	.byte		N10	, Fs2
	.byte	W12
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte		N04	, Fs2
	.byte	W12
	.byte		N17	, Gs2
	.byte	W24
	.byte		N16	
	.byte	W24
	.byte		N15	, As2
	.byte	W12
	.byte	W12
	.byte		N11	, Cn3
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte		N13	, As1
	.byte	W18
	.byte		N15	, Fn2
	.byte	W18
	.byte		N23	, As2
	.byte	W12
	.byte	PATT	
		.word	song004_6_1
	.byte	PATT	
		.word	song004_6_2
	.byte	PATT	
		.word	song004_6_3
	.byte	PATT	
		.word	song004_6_4
	.byte	GOTO	
		.word	song004_6_5
	.byte		N15	, Fs2, v127
	.byte	W18
	.byte		N04	
	.byte	W06
	.byte		N13	, Fn2
	.byte	W12
	.byte		N10	, Fs2
	.byte	W12
	.byte	W12
	.byte			Cs2
	.byte	W24
	.byte		N12	, Gs2
	.byte	W12
	.byte	FINE

	@********************** Track  7 **********************@

	.global song004_7
song004_7:	@ 0x0879DE3D
	.byte	KEYSH	, 0
	.byte	W24
	.byte	VOICE	, 23
	.byte	VOL	, v043
	.byte	PAN	, c_v
	.byte	W24
	.byte		N04	, As3, v104
	.byte	W18
	.byte		N04	
	.byte	W18
	.byte		N56	, Gs3
	.byte	W12
song004_7_1:
	.byte	W48
	.byte		N05	, Gn3, v104
	.byte	W18
	.byte		N04	
	.byte	W18
	.byte		N54	, Gs3
	.byte	W12
	.byte	PEND
song004_7_2:
	.byte	W48
	.byte		N05	, As3, v104
	.byte	W18
	.byte		N04	
	.byte	W18
	.byte		N54	, Gs3
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song004_7_1
	.byte	W48
song004_7_3:
	.byte	W24
	.byte		N12	, Cs3, v127
	.byte	W18
	.byte		N02	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N07	
	.byte	W24
	.byte		N96	, Ds3
	.byte	W60
	.byte	W72
	.byte		N02	, Cs3
	.byte	W06
	.byte		N02	
	.byte	W06
	.byte		N02	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N04	
	.byte	W18
	.byte		N03	
	.byte	W18
	.byte		N96	, Ds3
	.byte	W60
	.byte	W48
	.byte		N04	, As3, v104
	.byte	W18
	.byte		N04	
	.byte	W18
	.byte		N56	, Gs3
	.byte	W12
	.byte	PATT	
		.word	song004_7_1
	.byte	PATT	
		.word	song004_7_2
	.byte	PATT	
		.word	song004_7_1
	.byte	W48
	.byte	GOTO	
		.word	song004_7_3
	.byte	W24
	.byte		N12	, Cs3, v127
	.byte	W18
	.byte		N02	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N07	
	.byte	W24
	.byte		N12	, Ds3
	.byte	W12
	.byte	FINE

	@********************** Track  8 **********************@

	.global song004_8
song004_8:	@ 0x0879DEB9
	.byte	KEYSH	, 0
	.byte	W24
	.byte	VOICE	, 127
	.byte	VOL	, v108
	.byte	PAN	, c_v
	.byte	W24
	.byte		N17	, Cn1, v127
	.byte		N92	, Gn2
	.byte	W01
	.byte		N05	, Dn1, v048
	.byte	W17
	.byte		N17	, Cs1, v127
	.byte	W01
	.byte		N03	, Dn1, v048
	.byte	W17
	.byte		N23	, Cn1, v127
	.byte		N56	, Ds1, v048
	.byte	W12
song004_8_1:
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte	W12
	.byte			Cs1
	.byte	W12
	.byte		N05	, Cn1
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte		N17	, Cn1
	.byte		TIE	, Gn2
	.byte	W01
	.byte		N05	, Dn1, v048
	.byte	W17
	.byte		N17	, Cs1, v127
	.byte	W02
	.byte		N03	, Dn1, v048
	.byte	W16
	.byte		N17	, Cn1, v127
	.byte		N44	, Ds1, v048
	.byte	W12
	.byte	PEND
song004_8_2:
	.byte	W06
	.byte		N40	, Cs1, v127
	.byte	W18
	.byte		N04	, An1
	.byte	W06
	.byte		N02	, Gs1
	.byte	W06
	.byte		N05	, Gn1
	.byte	W06
	.byte		N07	
	.byte	W06
	.byte		N17	, Cn1
	.byte	W01
	.byte		N04	, Dn1, v048
	.byte	W17
	.byte		N17	, Cs1, v127
	.byte	W01
	.byte		N04	, Dn1, v048
	.byte	W17
	.byte		N23	, Cn1, v127
	.byte	W01
	.byte		N56	, Ds1, v048
	.byte	W08
	.byte	PEND
	.byte		EOT	, Gn2
	.byte	W03
song004_8_3:
	.byte	W12
	.byte		N32	, Cs1, v127
	.byte	W12
	.byte		TIE	, Gn2
	.byte	W24
	.byte		N17	, Cn1
	.byte	W01
	.byte		N04	, Dn1, v048
	.byte	W17
	.byte		N17	, Cs1, v127
	.byte	W02
	.byte		N04	, Dn1, v048
	.byte	W15
	.byte		N42	, Ds1
	.byte	W01
	.byte		N23	, Cn1, v127
	.byte	W12
	.byte	PEND
song004_8_4:
	.byte	W12
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N23	
	.byte	W12
	.byte		N03	, Dn1, v048
	.byte	W07
	.byte		N04	
	.byte	W04
	.byte	PEND
	.byte		EOT	, Gn2
	.byte	W01
song004_8_5:
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v048
	.byte		TIE	, Gn2, v127
	.byte	W12
	.byte		N03	, Dn1, v048
	.byte	W12
	.byte		N17	, Cs1, v127
	.byte		N03	, Dn1, v048
	.byte	W12
	.byte		N02	
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte		N11	, Cn1
	.byte		N02	, Dn1, v048
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N02	, Dn1, v048
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N12	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N04	, Dn1, v048
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N03	, Dn1, v048
	.byte	W12
	.byte		N17	, Cs1, v127
	.byte		N03	, Dn1, v048
	.byte	W12
	.byte		N02	
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte	W03
	.byte		EOT	, Gn2
	.byte	W03
	.byte		N05	, Cn1
	.byte		N02	, Dn1, v048
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte		N11	, Cn1
	.byte		N02	, Dn1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N12	, Ds1, v048
	.byte	W12
	.byte		N04	, Dn1
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N03	, Dn1, v048
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N17	, Cs1, v127
	.byte		N03	, Dn1, v048
	.byte	W12
	.byte		N02	
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte		N11	, Cn1
	.byte		N02	, Dn1, v048
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N02	, Dn1, v048
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N12	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N04	, Dn1, v048
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N03	, Dn1, v048
	.byte	W12
	.byte		N17	, Cs1, v127
	.byte		N03	, Dn1, v048
	.byte	W12
	.byte		N02	
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte			Cn1
	.byte		N02	, Dn1, v048
	.byte	W06
	.byte		N11	, Cs1, v127
	.byte	W06
	.byte		N02	, Dn1, v048
	.byte	W06
	.byte		N05	, Cn1, v127
	.byte	W06
	.byte		N15	, Cs1
	.byte		N12	, Ds1, v048
	.byte	W12
	.byte		N04	, Dn1
	.byte	W12
	.byte		N17	, Cn1, v127
	.byte		N92	, Gn2
	.byte	W01
	.byte		N05	, Dn1, v048
	.byte	W17
	.byte		N17	, Cs1, v127
	.byte	W01
	.byte		N03	, Dn1, v048
	.byte	W17
	.byte		N23	, Cn1, v127
	.byte		N56	, Ds1, v048
	.byte	W12
	.byte	PATT	
		.word	song004_8_1
	.byte	PATT	
		.word	song004_8_2
	.byte		EOT	, Gn2
	.byte	W03
	.byte	PATT	
		.word	song004_8_3
	.byte	PATT	
		.word	song004_8_4
	.byte		EOT	, Gn2
	.byte	W01
	.byte	GOTO	
		.word	song004_8_5
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v048
	.byte		N96	, Gn2, v127
	.byte	W12
	.byte		N03	, Dn1, v048
	.byte	W12
	.byte		N17	, Cs1, v127
	.byte		N03	, Dn1, v048
	.byte	W12
	.byte		N02	
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte		N11	, Cn1
	.byte		N02	, Dn1, v048
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N02	, Dn1, v048
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N12	, Ds1, v048
	.byte	W12
	.byte			Cn1, v127
	.byte		N04	, Dn1, v048
	.byte	W12
	.byte	FINE

	.align 2
	.global song004
song004:	@ 0x0879E098
	.byte	8		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup007		@ voicegroup/tone

	.word	song004_1		@ track
	.word	song004_2		@ track
	.word	song004_3		@ track
	.word	song004_4		@ track
	.word	song004_5		@ track
	.word	song004_6		@ track
	.word	song004_7		@ track
	.word	song004_8		@ track
