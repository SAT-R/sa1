	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song048_1
song048_1:	@ 0x087B9914
	.byte	KEYSH	, 0
	.byte	TEMPO	, 66
	.byte	VOICE	, 75
	.byte	PAN	, c_v
	.byte	VOL	, v087
	.byte	W24
	.byte		N23	, Gn2, v100
	.byte	W24
	.byte			An2
	.byte	W24
	.byte			Gn3
	.byte	W24
song048_1_1:
	.byte		N80	, En3, v100
	.byte	W84
	.byte		N05	
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte	PEND
song048_1_2:
	.byte		N17	, Gn3, v100
	.byte	W18
	.byte			An3
	.byte	W18
	.byte		N11	, As3
	.byte	W12
	.byte		N23	, An3
	.byte	W24
	.byte			Gn3
	.byte	W24
	.byte	PEND
song048_1_3:
	.byte		N56	, Fn3, v100
	.byte	W60
	.byte		N11	
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N56	, Fn3
	.byte	W12
	.byte	PEND
song048_1_4:
	.byte	W48
	.byte		N23	, Dn3, v100
	.byte	W24
	.byte			En3
	.byte	W24
	.byte	PEND
song048_1_5:
	.byte		N80	, Fn3, v100
	.byte	W84
	.byte		N05	, Dn3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte	PEND
song048_1_6:
	.byte		N17	, Fn3, v100
	.byte	W18
	.byte			Gn3
	.byte	W18
	.byte		N11	, Gs3
	.byte	W12
	.byte		N23	, Gn3
	.byte	W24
	.byte			Fn3
	.byte	W24
	.byte	PEND
	.byte		N56	, En3
	.byte	W60
	.byte		N11	, Fn3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N32	, Dn3
	.byte	W12
song048_1_7:
	.byte	W24
	.byte		N23	, Gn2, v100
	.byte	W24
	.byte			An2
	.byte	W24
	.byte			Gn3
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song048_1_1
	.byte	PATT	
		mPtr	song048_1_2
	.byte	PATT	
		mPtr	song048_1_3
	.byte	PATT	
		mPtr	song048_1_4
	.byte	PATT	
		mPtr	song048_1_5
	.byte	PATT	
		mPtr	song048_1_6
	.byte		N44	, En3, v100
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song048_1_7
	.byte	GOTO	
		mPtr	song048_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song048_2
song048_2:	@ 0x087B99B4
	.byte	KEYSH	, 0
	.byte	VOICE	, 42
	.byte	VOL	, v094
	.byte	PAN	, c_v
	.byte	W96
song048_2_1:
	.byte		N11	, Cn2, v100
	.byte	W18
	.byte		N05	
	.byte	W18
	.byte		N44	
	.byte	W48
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
	.byte		N11	, As1
	.byte	W18
	.byte		N05	
	.byte	W18
	.byte		N32	, An1
	.byte	W48
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
song048_2_2:
	.byte		N11	, Dn2, v100
	.byte	W18
	.byte		N11	
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cs2
	.byte	W18
	.byte		N11	
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
song048_2_3:
	.byte		N11	, Cn2, v100
	.byte	W18
	.byte		N11	
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Bn1
	.byte	W18
	.byte		N11	
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
song048_2_4:
	.byte		N11	, Gn1, v100
	.byte	W18
	.byte		N05	
	.byte	W18
	.byte		N44	
	.byte	W48
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
	.byte		N11	, As1
	.byte	W18
	.byte		N05	
	.byte	W18
	.byte		N32	
	.byte	W48
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cn2
	.byte	W18
	.byte		N05	
	.byte	W18
	.byte		N32	
	.byte	W48
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Dn2
	.byte	W18
	.byte		N05	
	.byte	W18
	.byte		N11	, Gn1
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte	PATT	
		mPtr	song048_2_1
	.byte		N11	, As1, v100
	.byte	W18
	.byte		N05	
	.byte	W18
	.byte		N44	, An1
	.byte	W48
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PATT	
		mPtr	song048_2_2
	.byte	PATT	
		mPtr	song048_2_3
	.byte	PATT	
		mPtr	song048_2_4
	.byte		N11	, As1, v100
	.byte	W18
	.byte		N05	
	.byte	W18
	.byte		N44	
	.byte	W48
	.byte		N05	, Dn2
	.byte	W06
	.byte			As1
	.byte	W06
song048_2_5:
	.byte		N11	, Cn2, v100
	.byte	W18
	.byte		N05	
	.byte	W18
	.byte		N32	
	.byte	W48
	.byte		N05	, Gn1
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte	PEND
song048_2_6:
	.byte		N11	, Dn2, v100
	.byte	W18
	.byte		N05	
	.byte	W18
	.byte		N32	
	.byte	W48
	.byte		N05	, An1
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte	PEND
	.byte		N11	, En2
	.byte	W18
	.byte		N05	
	.byte	W18
	.byte		N32	
	.byte	W48
	.byte		N05	, Bn1
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N11	, Fn2
	.byte	W18
	.byte		N05	
	.byte	W18
	.byte		N32	
	.byte	W48
	.byte		N05	, Gn2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte	PATT	
		mPtr	song048_2_5
	.byte	PATT	
		mPtr	song048_2_6
	.byte		N11	, En2, v100
	.byte	W18
	.byte		N05	
	.byte	W18
	.byte		N32	
	.byte	W48
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Gn2
	.byte	W24
	.byte		N68	, Gn1
	.byte	W72
	.byte	GOTO	
		mPtr	song048_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song048_3
song048_3:	@ 0x087B9AB5
	.byte	KEYSH	, 0
	.byte	VOICE	, 62
	.byte	VOL	, v068
	.byte	PAN	, c_v
	.byte	W96
song048_3_1:
	.byte		N03	, En3, v108
	.byte		N04	, Gn3, v104
	.byte	W18
	.byte		N03	, En3, v092
	.byte		N04	, Gn3, v096
	.byte	W16
	.byte		N40	, En3, v108
	.byte		N42	, Gn3, v116
	.byte	W60
	.byte	W02
	.byte	PEND
song048_3_2:
	.byte		N03	, Dn3, v108
	.byte		N04	, Fn3, v104
	.byte	W18
	.byte		N03	, Dn3, v092
	.byte		N04	, Fn3, v096
	.byte	W16
	.byte		N40	, Cs3, v108
	.byte		N42	, En3, v116
	.byte	W60
	.byte	W02
	.byte	PEND
song048_3_3:
	.byte		N17	, Fn3, v127
	.byte		N17	, An3
	.byte	W18
	.byte			En3, v104
	.byte		N17	, Gn3
	.byte	W18
	.byte		N11	, Dn3, v092
	.byte		N11	, Fn3
	.byte	W12
	.byte		N17	, Fn3, v120
	.byte		N17	, An3
	.byte	W18
	.byte			En3, v100
	.byte		N17	, Gn3
	.byte	W18
	.byte		N11	, Dn3
	.byte		N11	, Fn3
	.byte	W12
	.byte	PEND
song048_3_4:
	.byte		N17	, Fn3, v108
	.byte		N17	, An3
	.byte	W18
	.byte			En3, v104
	.byte		N17	, Gn3
	.byte	W18
	.byte		N36	, Dn3, v092
	.byte		N36	, Fn3
	.byte	W60
	.byte	PEND
song048_3_5:
	.byte		N03	, Dn3, v108
	.byte		N04	, Fn3, v104
	.byte	W18
	.byte		N03	, Dn3, v092
	.byte		N04	, Fn3, v096
	.byte	W16
	.byte		N40	, Dn3, v108
	.byte		N42	, Fn3, v116
	.byte	W60
	.byte	W02
	.byte	PEND
song048_3_6:
	.byte		N03	, Fn3, v108
	.byte		N04	, Gs3, v104
	.byte	W18
	.byte		N03	, Fn3, v092
	.byte		N04	, Gs3, v096
	.byte	W17
	.byte		N42	, Gs3, v116
	.byte	W01
	.byte		N40	, Fn3, v108
	.byte	W60
	.byte	PEND
	.byte		N03	, En3
	.byte		N04	, Gn3, v104
	.byte	W18
	.byte		N03	, En3, v092
	.byte		N04	, Gn3, v096
	.byte	W17
	.byte		N42	, Gn3, v116
	.byte	W01
	.byte		N40	, En3, v108
	.byte	W48
	.byte		N18	, Gn3, v127
	.byte		N18	, Bn3
	.byte	W12
	.byte	W12
	.byte		N03	, Gn3, v116
	.byte		N03	, Bn3
	.byte	W11
	.byte		N23	, Fn3, v127
	.byte		N23	, An3
	.byte	W24
	.byte		N03	, En3, v100
	.byte		N03	, Gn3
	.byte	W12
	.byte		N32	, Dn3, v116
	.byte		N32	, Fn3
	.byte	W36
	.byte	W01
	.byte	PATT	
		mPtr	song048_3_1
	.byte	PATT	
		mPtr	song048_3_2
	.byte	PATT	
		mPtr	song048_3_3
	.byte	PATT	
		mPtr	song048_3_4
	.byte	PATT	
		mPtr	song048_3_5
	.byte	PATT	
		mPtr	song048_3_6
	.byte	W60
	.byte		N11	, En4, v100
	.byte	W12
	.byte		TIE	, Cn4
	.byte	W24
	.byte	W96
	.byte	W13
	.byte		EOT	
	.byte	W44
	.byte	W03
	.byte		N11	, En4
	.byte	W12
	.byte		TIE	, Cn4
	.byte	W24
	.byte	W96
	.byte	W11
	.byte		EOT	
	.byte	W48
	.byte	W01
	.byte		N11	, En4
	.byte	W12
	.byte		TIE	, Cn4
	.byte	W24
	.byte	W96
	.byte	W11
	.byte		EOT	
	.byte	W48
	.byte	W01
	.byte		N11	, En4
	.byte	W12
	.byte		N23	, Cn4
	.byte	W24
	.byte		N66	, Gn3
	.byte	W96
	.byte	GOTO	
		mPtr	song048_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song048_4
song048_4:	@ 0x087B9BD3
	.byte	KEYSH	, 0
	.byte	VOICE	, 41
	.byte	VOL	, v056
	.byte	W96
song048_4_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W60
	.byte		N11	, En4, v100
	.byte	W12
	.byte		TIE	, Cn4
	.byte	W24
	.byte	W96
	.byte	W13
	.byte		EOT	
	.byte	W44
	.byte	W03
	.byte		N11	, En4
	.byte	W12
	.byte		TIE	, Cn4
	.byte	W24
	.byte	W96
	.byte	W11
	.byte		EOT	
	.byte	W48
	.byte	W01
	.byte		N11	, En4
	.byte	W12
	.byte		TIE	, Cn4
	.byte	W24
	.byte	W96
	.byte	W11
	.byte		EOT	
	.byte	W48
	.byte	W01
	.byte		N11	, En4
	.byte	W12
	.byte		N23	, Cn4
	.byte	W24
	.byte		N66	, Gn3
	.byte	W96
	.byte	GOTO	
		mPtr	song048_4_1
	.byte	FINE

	@********************** Track  5 **********************@

	.global song048_5
song048_5:	@ 0x087B9C1A
	.byte	KEYSH	, 0
	.byte	VOICE	, 43
	.byte	PAN	, c_v
	.byte	VOL	, v066
	.byte	W24
	.byte		N23	, Gn2, v100
	.byte	W24
	.byte			An2
	.byte	W24
	.byte			Gn3
	.byte	W24
song048_5_1:
	.byte		N80	, En3, v100
	.byte	W84
	.byte		N05	
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte	PEND
song048_5_2:
	.byte		N17	, Gn3, v100
	.byte	W18
	.byte			An3
	.byte	W18
	.byte		N11	, As3
	.byte	W12
	.byte		N23	, An3
	.byte	W24
	.byte			Gn3
	.byte	W24
	.byte	PEND
song048_5_3:
	.byte		N56	, Fn3, v100
	.byte	W60
	.byte		N11	
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N56	, Fn3
	.byte	W12
	.byte	PEND
song048_5_4:
	.byte	W48
	.byte		N23	, Dn3, v100
	.byte	W24
	.byte			En3
	.byte	W24
	.byte	PEND
song048_5_5:
	.byte		N80	, Fn3, v100
	.byte	W84
	.byte		N05	, Dn3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte	PEND
song048_5_6:
	.byte		N17	, Fn3, v100
	.byte	W18
	.byte			Gn3
	.byte	W18
	.byte		N11	, Gs3
	.byte	W12
	.byte		N23	, Gn3
	.byte	W24
	.byte			Fn3
	.byte	W24
	.byte	PEND
	.byte		N56	, En3
	.byte	W60
	.byte		N11	, Fn3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N32	, Dn3
	.byte	W12
	.byte	W24
	.byte		N23	, Gn2
	.byte	W24
	.byte			An2
	.byte	W24
	.byte			Gn3
	.byte	W24
	.byte	PATT	
		mPtr	song048_5_1
	.byte	PATT	
		mPtr	song048_5_2
	.byte	PATT	
		mPtr	song048_5_3
	.byte	PATT	
		mPtr	song048_5_4
	.byte	PATT	
		mPtr	song048_5_5
	.byte	PATT	
		mPtr	song048_5_6
	.byte		N44	, En3, v100
	.byte	W96
song048_5_7:
	.byte	W12
	.byte		N11	, En3, v096
	.byte	W24
	.byte			Cn3
	.byte	W24
	.byte		N05	, An2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte	PEND
	.byte	W96
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			Gn3
	.byte	W24
	.byte			Cn3
	.byte	W12
	.byte	W96
	.byte	PATT	
		mPtr	song048_5_7
	.byte	W84
	.byte		N05	, En3, v096
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte		N23	, Gn3, v100
	.byte	W24
	.byte			Gn2
	.byte	W24
	.byte			An2
	.byte	W24
	.byte			Gn3
	.byte	W24
	.byte	GOTO	
		mPtr	song048_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song048_6
song048_6:	@ 0x087B9CE2
	.byte	KEYSH	, 0
	.byte	VOICE	, 63
	.byte	PAN	, c_v
	.byte	VOL	, v087
	.byte	W96
song048_6_2:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song048_6_1:
	.byte	W12
	.byte		N05	, Gn2, v096
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte		N05	
	.byte	W42
	.byte	PEND
	.byte	W96
	.byte	PATT	
		mPtr	song048_6_1
	.byte	W96
	.byte	PATT	
		mPtr	song048_6_1
	.byte	W96
	.byte	W12
	.byte		N05	, Gn2, v096
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte		N05	
	.byte	W30
	.byte			En3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Gn3, v100
	.byte	W96
	.byte	GOTO	
		mPtr	song048_6_2
	.byte	FINE

	@********************** Track  7 **********************@

	.global song048_7
song048_7:	@ 0x087B9D36
	.byte	KEYSH	, 0
	.byte	VOICE	, 63
	.byte	VOL	, v056
	.byte	W96
song048_7_2:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song048_7_1:
	.byte	W12
	.byte		N11	, En4, v096
	.byte	W24
	.byte			Cn4
	.byte	W24
	.byte		N05	, An3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cn4
	.byte	W12
	.byte			An3
	.byte	W12
	.byte	PEND
	.byte	W96
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte			Gn4
	.byte	W24
	.byte			Cn4
	.byte	W12
	.byte	W96
	.byte	PATT	
		mPtr	song048_7_1
	.byte	W84
	.byte		N05	, En4, v096
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte		N23	, Gn4, v100
	.byte	W96
	.byte	GOTO	
		mPtr	song048_7_2
	.byte	FINE

	@********************** Track  8 **********************@

	.global song048_8
song048_8:	@ 0x087B9D83
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v103
	.byte	PAN	, c_v
	.byte	BENDR	, 127
	.byte	W72
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N05	, Ds1
	.byte	W12
song048_8_1:
	.byte		N11	, Cn1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N05	, Ds1
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N05	, Ds1
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N05	, Ds1
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N05	, Ds1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song048_8_1
	.byte	PATT	
		mPtr	song048_8_1
	.byte	PATT	
		mPtr	song048_8_1
	.byte	PATT	
		mPtr	song048_8_1
	.byte	PATT	
		mPtr	song048_8_1
	.byte	PATT	
		mPtr	song048_8_1
	.byte		N11	, Cn1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N05	, Ds1
	.byte	W06
	.byte		N11	, Cs1, v127
	.byte	W06
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N11	, Cs1, v127
	.byte		N05	, Ds1, v056
	.byte	W12
	.byte		N01	, Dn1
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N05	, Cn1, v127
	.byte		N05	, Ds1, v056
	.byte	W06
	.byte			Cn1, v127
	.byte	W06
	.byte		N11	, Cs1
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N11	, Cs1, v127
	.byte		N05	, Ds1, v056
	.byte	W12
	.byte	PATT	
		mPtr	song048_8_1
	.byte	PATT	
		mPtr	song048_8_1
	.byte	PATT	
		mPtr	song048_8_1
	.byte	PATT	
		mPtr	song048_8_1
	.byte	PATT	
		mPtr	song048_8_1
	.byte	PATT	
		mPtr	song048_8_1
	.byte	PATT	
		mPtr	song048_8_1
	.byte	PATT	
		mPtr	song048_8_1
	.byte	PATT	
		mPtr	song048_8_1
	.byte	PATT	
		mPtr	song048_8_1
	.byte	PATT	
		mPtr	song048_8_1
	.byte	PATT	
		mPtr	song048_8_1
	.byte		N11	, Cn1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N05	, Ds1
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N05	, Ds1
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N05	, Ds1
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte		N05	, Ds1, v056
	.byte	W06
	.byte			Cs1, v127
	.byte	W06
	.byte		N05	
	.byte		N11	, Ds1, v056
	.byte	W24
	.byte			Cn1, v127
	.byte	W48
	.byte		N13	
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N07	, Ds1
	.byte	W12
	.byte	GOTO	
		mPtr	song048_8_1
	.byte	FINE

	mAlignWord
	.global song048
song048:	@ 0x087B9EAC
	.byte	8		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup006		@ voicegroup/tone

	mPtr	song048_1		@ track
	mPtr	song048_2		@ track
	mPtr	song048_3		@ track
	mPtr	song048_4		@ track
	mPtr	song048_5		@ track
	mPtr	song048_6		@ track
	mPtr	song048_7		@ track
	mPtr	song048_8		@ track
