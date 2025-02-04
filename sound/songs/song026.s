	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song026_1
song026_1:	@ 0x087ADD94
	.byte	KEYSH	, 0
song026_1_3:
	.byte	TEMPO	, 35
	.byte	VOICE	, 60
	.byte	VOL	, v078
	.byte	PAN	, c_v
	.byte	W84
	.byte		N05	, Cn3, v127
	.byte	W06
	.byte			Gn3
	.byte	W06
song026_1_1:
	.byte		N80	, Fs3, v127
	.byte	W84
	.byte		N05	, Ds3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte	PEND
song026_1_2:
	.byte		N80	, An3, v127
	.byte	W84
	.byte		N05	, Gs3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte	PEND
	.byte		TIE	, Dn4
	.byte	W96
	.byte	W80
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte		N05	, Cn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte	PATT	
		mPtr	song026_1_1
	.byte	PATT	
		mPtr	song026_1_2
	.byte		N92	, Dn4, v127
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
	.byte	W96
	.byte	GOTO	
		mPtr	song026_1_3
	.byte	FINE

	@********************** Track  2 **********************@

	.global song026_2
song026_2:	@ 0x087ADDE8
	.byte	KEYSH	, 0
song026_2_2:
	.byte	VOICE	, 74
	.byte	VOL	, v101
	.byte	PAN	, c_v
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
song026_2_1:
	.byte		N06	, Ds3, v127
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte		N06	
	.byte	W12
	.byte			Fs3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W24
	.byte			Ds3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Fs3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W24
	.byte	PATT	
		mPtr	song026_2_1
	.byte		N06	, Ds3, v127
	.byte	W12
	.byte			Bn2
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W24
	.byte			Cn3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Bn2
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W24
	.byte			Cn3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Bn2
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W24
	.byte		N96	, En3
	.byte	W96
	.byte		N48	, Ds3
	.byte	W48
	.byte			En3
	.byte	W48
	.byte		N96	, Gn3
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song026_2_2
	.byte	FINE

	@********************** Track  3 **********************@

	.global song026_3
song026_3:	@ 0x087ADE75
	.byte	KEYSH	, 0
song026_3_2:
	.byte	VOICE	, 60
	.byte	VOL	, v077
	.byte	PAN	, c_v
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
song026_3_1:
	.byte		N06	, Gn3, v127
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Fs3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W24
	.byte			Gn3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte		N06	
	.byte	W12
	.byte			As3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W24
	.byte			Gn3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Fs3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W24
	.byte			Gn3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			As3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W24
	.byte	PATT	
		mPtr	song026_3_1
	.byte		N06	, Gn3, v127
	.byte	W12
	.byte			Ds3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W24
	.byte			En3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Ds3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W24
	.byte			En3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Ds3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W24
	.byte		N96	, Gs3
	.byte	W96
	.byte		N48	, Gn3
	.byte	W48
	.byte			Gs3
	.byte	W48
	.byte		N96	, Bn3
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song026_3_2
	.byte	FINE

	@********************** Track  4 **********************@

	.global song026_4
song026_4:	@ 0x087ADF02
	.byte	KEYSH	, 0
song026_4_4:
	.byte	VOICE	, 74
	.byte	VOL	, v101
	.byte	PAN	, c_v
	.byte	W96
song026_4_1:
	.byte	W24
	.byte	W01
	.byte		N23	, Gn1, v127
	.byte	W23
	.byte		N22	, Fs1
	.byte	W23
	.byte		N44	, Ds1
	.byte	W24
	.byte	W01
	.byte	PEND
song026_4_2:
	.byte	W24
	.byte	W01
	.byte		N21	, An1, v127
	.byte	W23
	.byte		N22	, As1
	.byte	W24
	.byte		N44	, Cn2
	.byte	W24
	.byte	PEND
	.byte	W24
	.byte		N22	, As1
	.byte	W24
	.byte	W01
	.byte		N21	, Cn2
	.byte	W24
	.byte		N20	, Dn2
	.byte	W22
	.byte		N23	, Ds2
	.byte	W01
	.byte	W24
	.byte	W01
	.byte		N22	, Cn2
	.byte	W24
	.byte		N44	, An1
	.byte	W44
	.byte	W03
	.byte	PATT	
		mPtr	song026_4_1
	.byte	PATT	
		mPtr	song026_4_2
	.byte	W24
	.byte		N22	, As1, v127
	.byte	W24
	.byte	W01
	.byte		N21	, Cn2
	.byte	W24
	.byte		N20	, Dn2
	.byte	W22
	.byte		N44	, An1
	.byte	W01
	.byte	W44
	.byte	W03
	.byte			Fn1
	.byte	W48
	.byte	W01
	.byte	W96
song026_4_3:
	.byte		N06	, Cn4, v127
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Bn3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W24
	.byte			Cn4
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte		N06	
	.byte	W12
	.byte			Ds4
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W24
	.byte			Cn4
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Bn3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W24
	.byte			Cn4
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Ds4
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W24
	.byte	PATT	
		mPtr	song026_4_3
	.byte		N06	, Cn4, v127
	.byte	W12
	.byte			Gs3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W24
	.byte			An3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Gs3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W24
	.byte			An3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Gs3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W24
	.byte		N96	, Cn4
	.byte	W96
	.byte		N48	, Bn3
	.byte	W48
	.byte			Cn4
	.byte	W48
	.byte		N96	, Ds4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song026_4_4
	.byte	FINE

	@********************** Track  5 **********************@

	.global song026_5
song026_5:	@ 0x087ADFD7
	.byte	KEYSH	, 0
song026_5_4:
	.byte	VOICE	, 90
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte		N23	, As2, v116
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Fn2
	.byte	W06
song026_5_1:
	.byte		N23	, As2, v116
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song026_5_1
song026_5_2:
	.byte		N23	, As2, v116
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte	PEND
song026_5_3:
	.byte		N23	, As2, v116
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N20	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song026_5_1
	.byte	PATT	
		mPtr	song026_5_1
	.byte	PATT	
		mPtr	song026_5_2
	.byte	PATT	
		mPtr	song026_5_3
	.byte	PATT	
		mPtr	song026_5_2
	.byte		N23	, Cn3, v100
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N32	, Bn2
	.byte	W36
	.byte		N23	, Cn3
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N32	, Gn2
	.byte	W36
	.byte		N23	, Cn3
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N32	, Bn2
	.byte	W12
	.byte	W24
	.byte		N23	, Cn3
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N32	, Gn2
	.byte	W36
	.byte		N23	, Cn3, v104
	.byte	W24
	.byte		N11	, Cn3, v116
	.byte	W12
	.byte		N32	, Bn2, v104
	.byte	W36
	.byte		N23	, Cn3, v108
	.byte	W24
	.byte		N11	, Cn3, v104
	.byte	W12
	.byte		N32	, Gs2, v108
	.byte	W36
	.byte		N23	, An2, v100
	.byte	W24
	.byte		N11	, An2, v104
	.byte	W12
	.byte		N32	, Gs2, v108
	.byte	W12
	.byte	W24
	.byte		N23	, An2, v100
	.byte	W24
	.byte		N11	, An2, v116
	.byte	W12
	.byte		N32	, Gs2, v104
	.byte	W36
	.byte		N44	, Cn3
	.byte	W48
	.byte			Gs2
	.byte	W48
	.byte			Gn2
	.byte	W48
	.byte			Cn3
	.byte	W48
	.byte			Gn2
	.byte	W48
	.byte		N42	, Ds2
	.byte	W48
	.byte	PATT	
		mPtr	song026_5_2
	.byte	PATT	
		mPtr	song026_5_1
	.byte	PATT	
		mPtr	song026_5_2
	.byte	PATT	
		mPtr	song026_5_1
	.byte	GOTO	
		mPtr	song026_5_4
	.byte	FINE

	@********************** Track  6 **********************@

	.global song026_6
song026_6:	@ 0x087AE0AB
	.byte	KEYSH	, 0
song026_6_2:
	.byte	VOICE	, 14
	.byte	VOL	, v083
	.byte	PAN	, c_v
	.byte		N18	, Cn2, v127
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte		N18	
	.byte	W24
song026_6_1:
	.byte		N18	, Cn2, v127
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song026_6_1
	.byte	PATT	
		mPtr	song026_6_1
	.byte	PATT	
		mPtr	song026_6_1
	.byte	PATT	
		mPtr	song026_6_1
	.byte	PATT	
		mPtr	song026_6_1
	.byte	PATT	
		mPtr	song026_6_1
	.byte	PATT	
		mPtr	song026_6_1
	.byte	PATT	
		mPtr	song026_6_1
	.byte		N23	, Cn2, v127
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N32	, Bn1
	.byte	W36
	.byte		N23	, Cn2
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N32	, Ds2
	.byte	W36
	.byte		N23	, Cn2
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N32	, Bn1
	.byte	W12
	.byte	W24
	.byte		N23	, Cn2
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N36	, Ds2
	.byte	W36
	.byte		N23	, Cn2
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte			Cn2
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte			An1
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte			An1
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N44	, Cn2
	.byte	W48
	.byte			Gs1
	.byte	W48
	.byte			Gn1
	.byte	W48
	.byte			Cn2
	.byte	W48
	.byte			Gn2
	.byte	W48
	.byte		N42	, Ds2
	.byte	W48
	.byte	PATT	
		mPtr	song026_6_1
	.byte	PATT	
		mPtr	song026_6_1
	.byte	PATT	
		mPtr	song026_6_1
	.byte	PATT	
		mPtr	song026_6_1
	.byte	GOTO	
		mPtr	song026_6_2
	.byte	FINE

	@********************** Track  7 **********************@

	.global song026_7
song026_7:	@ 0x087AE15B
	.byte	KEYSH	, 0
song026_7_4:
	.byte	VOICE	, 15
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte		N03	, Cn3, v120
	.byte	W03
	.byte			Ds3, v116
	.byte	W03
	.byte			Fs3, v112
	.byte	W03
	.byte			An3, v108
	.byte	W03
	.byte			Ds3, v104
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			An3, v100
	.byte	W03
	.byte			Cn4, v096
	.byte	W03
	.byte			Fs3, v092
	.byte	W03
	.byte			An3, v088
	.byte	W03
	.byte			Cn4
	.byte	W03
	.byte			Ds4, v084
	.byte	W03
	.byte			An3, v080
	.byte	W03
	.byte			Cn4, v076
	.byte	W03
	.byte			Ds4, v072
	.byte	W03
	.byte			Fs4, v068
	.byte	W03
	.byte			Cn4
	.byte	W03
	.byte			Ds4, v064
	.byte	W03
	.byte			Fs4, v060
	.byte	W03
	.byte			An4, v056
	.byte	W03
	.byte			Ds4, v052
	.byte	W03
	.byte			Fs4
	.byte	W03
	.byte			An4, v048
	.byte	W03
	.byte			Cn5, v044
	.byte	W15
	.byte		N07	, Cn2, v072
	.byte	W06
	.byte			Gn2
	.byte	W06
song026_7_1:
	.byte		N84	, Fs2, v072
	.byte	W84
	.byte		N07	, Ds2
	.byte	W06
	.byte			As2, v068
	.byte	W06
	.byte	PEND
song026_7_2:
	.byte		N84	, An2, v072
	.byte	W84
	.byte		N05	, Gs2
	.byte	W06
	.byte		N06	, Ds3
	.byte	W06
	.byte	PEND
	.byte		TIE	, Dn3
	.byte	W96
	.byte	W80
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte		N07	, Cn2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte	PATT	
		mPtr	song026_7_1
	.byte	PATT	
		mPtr	song026_7_2
	.byte		N92	, Dn3, v072
	.byte	W96
	.byte	W96
	.byte		N04	, Fs3, v064
	.byte	W06
	.byte			An3, v052
	.byte	W06
	.byte			Ds2, v084
	.byte	W06
	.byte			An2, v064
	.byte	W06
	.byte			Cn2, v068
	.byte	W06
	.byte			Fs2, v088
	.byte	W06
	.byte			Cn3, v084
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			An3, v076
	.byte	W06
	.byte			Fs3, v088
	.byte	W06
	.byte			Fs3, v056
	.byte	W06
	.byte			Fs2, v048
	.byte	W06
	.byte			Ds2, v064
	.byte	W06
	.byte			Cn3
	.byte	W06
song026_7_3:
	.byte		N32	, Cn3, v072
	.byte	W36
	.byte		N23	, Bn2
	.byte	W36
	.byte		N32	, Cn3
	.byte	W24
	.byte	PEND
	.byte	W12
	.byte		N23	, Ds3
	.byte	W36
	.byte		N32	, Cn3
	.byte	W36
	.byte		N23	, Bn2
	.byte	W12
	.byte	W24
	.byte		N32	, Cn3
	.byte	W36
	.byte		N23	, Ds3
	.byte	W36
	.byte	PATT	
		mPtr	song026_7_3
	.byte	W12
	.byte		N23	, Gs2, v072
	.byte	W36
	.byte		N32	, An2
	.byte	W36
	.byte		N23	, Gs2
	.byte	W12
	.byte	W24
	.byte		N32	, An2
	.byte	W36
	.byte		N23	, Bn2
	.byte	W36
	.byte		N44	, Cn2, v127
	.byte	W48
	.byte			Gs1
	.byte	W48
	.byte			Gn1
	.byte	W48
	.byte			Cn2
	.byte	W48
	.byte			Gn2
	.byte	W48
	.byte		N42	, Ds2
	.byte	W48
	.byte	W48
	.byte		N03	, Fs4, v028
	.byte	W03
	.byte			Fs3, v032
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			Cn4, v036
	.byte	W03
	.byte			An3, v040
	.byte	W03
	.byte			Ds4, v044
	.byte	W03
	.byte			An4
	.byte	W03
	.byte			An5, v048
	.byte	W03
	.byte			An4, v052
	.byte	W03
	.byte			Cn5, v056
	.byte	W03
	.byte			Fs4
	.byte	W03
	.byte			Cn4, v060
	.byte	W03
	.byte			Ds4, v064
	.byte	W03
	.byte			An3, v068
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			An5, v072
	.byte	W03
	.byte			Ds5, v076
	.byte	W03
	.byte			Fs5, v080
	.byte	W03
	.byte			Cn5
	.byte	W03
	.byte			Ds4, v084
	.byte	W03
	.byte			Fs4, v088
	.byte	W03
	.byte			An4, v092
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			An3, v096
	.byte	W03
	.byte			Cn3, v100
	.byte	W03
	.byte			Fs3, v104
	.byte	W03
	.byte			Cn4
	.byte	W03
	.byte			An4, v108
	.byte	W03
	.byte			Ds4, v112
	.byte	W03
	.byte			An3, v116
	.byte	W03
	.byte			An4
	.byte	W03
	.byte			Fs4, v120
	.byte	W03
	.byte			Cn5, v124
	.byte	W03
	.byte			Fs5, v120
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			An4, v116
	.byte	W03
	.byte			Cn4, v112
	.byte	W03
	.byte			Fs4, v108
	.byte	W03
	.byte			Cn5
	.byte	W03
	.byte			Fs3, v104
	.byte	W03
	.byte			An3, v100
	.byte	W03
	.byte			Cn3, v096
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			Fs5, v092
	.byte	W03
	.byte			Cn5, v088
	.byte	W03
	.byte			Ds4, v084
	.byte	W03
	.byte			Fs4
	.byte	W03
	.byte			An4, v080
	.byte	W03
	.byte			Ds3, v076
	.byte	W03
	.byte			An3, v072
	.byte	W03
	.byte			Cn3
	.byte	W03
	.byte			Fs3, v068
	.byte	W03
	.byte			Cn4, v064
	.byte	W03
	.byte			An4, v060
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			An3, v056
	.byte	W03
	.byte			An4, v052
	.byte	W03
	.byte			An5, v048
	.byte	W03
	.byte			An4
	.byte	W03
	.byte			Cn5, v044
	.byte	W03
	.byte			Fs4, v040
	.byte	W03
	.byte			Cn4, v036
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			An3, v032
	.byte	W48
	.byte	W03
	.byte	W96
	.byte	GOTO	
		mPtr	song026_7_4
	.byte	FINE

	@********************** Track  8 **********************@

	.global song026_8
song026_8:	@ 0x087AE308
	.byte	KEYSH	, 0
song026_8_1:
	.byte	VOICE	, 16
	.byte	VOL	, v048
	.byte	PAN	, c_v
	.byte	W24
	.byte		N03	, Cn3, v120
	.byte	W03
	.byte			Ds3, v116
	.byte	W03
	.byte			Fs3, v112
	.byte	W03
	.byte			An3, v108
	.byte	W03
	.byte			Ds3, v104
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			An3, v100
	.byte	W03
	.byte			Cn4, v096
	.byte	W03
	.byte			Fs3, v092
	.byte	W03
	.byte			An3, v088
	.byte	W03
	.byte			Cn4
	.byte	W03
	.byte			Ds4, v084
	.byte	W03
	.byte			An3, v080
	.byte	W03
	.byte			Cn4, v076
	.byte	W03
	.byte			Ds4, v072
	.byte	W03
	.byte			Fs4, v068
	.byte	W03
	.byte			Cn4
	.byte	W03
	.byte			Ds4, v064
	.byte	W03
	.byte			Fs4, v060
	.byte	W03
	.byte			An4, v056
	.byte	W03
	.byte			Ds4, v052
	.byte	W03
	.byte			Fs4
	.byte	W03
	.byte			An4, v048
	.byte	W03
	.byte			Cn5, v044
	.byte	W03
	.byte			Fs4, v040
	.byte	W03
	.byte			An4, v036
	.byte	W03
	.byte			Cn5, v032
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			An4, v028
	.byte	W03
	.byte			Cn5, v024
	.byte	W03
	.byte			Ds5, v020
	.byte	W03
	.byte			Fs5, v016
	.byte	W72
	.byte	W03
	.byte	W96
	.byte	W96
	.byte		N01	, Cn2, v127
	.byte	W01
	.byte			Ds2
	.byte	W02
	.byte			Fs2
	.byte	W01
	.byte			An2
	.byte	W02
	.byte			Cn3
	.byte	W01
	.byte			Ds3
	.byte	W02
	.byte			Fs3
	.byte	W01
	.byte			An3
	.byte	W02
	.byte			Cn4
	.byte	W01
	.byte			Ds4
	.byte	W02
	.byte			Fs4
	.byte	W01
	.byte			An4
	.byte	W02
	.byte			Cn5
	.byte	W01
	.byte			Ds5
	.byte	W02
	.byte			Fs5
	.byte	W01
	.byte			An5
	.byte	W02
	.byte			Cn6
	.byte	W01
	.byte			An5
	.byte	W02
	.byte			Fs5
	.byte	W01
	.byte			Ds5
	.byte	W02
	.byte			Cn5
	.byte	W01
	.byte			An4
	.byte	W02
	.byte			Fs4
	.byte	W01
	.byte			Ds4
	.byte	W02
	.byte			Cn4
	.byte	W01
	.byte			An3
	.byte	W02
	.byte			Fs3
	.byte	W01
	.byte			Ds3
	.byte	W02
	.byte			Cn3
	.byte	W01
	.byte			An2
	.byte	W02
	.byte			Fs2
	.byte	W01
	.byte			Ds2
	.byte	W02
	.byte			Cn2
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N03	, Fs4, v016
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			Ds3, v020
	.byte	W03
	.byte			Cn4
	.byte	W03
	.byte			An3, v024
	.byte	W03
	.byte			Ds4, v028
	.byte	W03
	.byte			An4
	.byte	W03
	.byte			An5, v032
	.byte	W03
	.byte			An4, v036
	.byte	W03
	.byte			Cn5
	.byte	W03
	.byte			Fs4, v040
	.byte	W03
	.byte			Cn4
	.byte	W03
	.byte			Ds4, v044
	.byte	W03
	.byte			An3, v048
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			An5, v052
	.byte	W03
	.byte			Ds5, v056
	.byte	W03
	.byte			Fs5
	.byte	W03
	.byte			Cn5, v060
	.byte	W03
	.byte			Ds4, v064
	.byte	W03
	.byte			Fs4
	.byte	W03
	.byte			An4, v068
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			An3, v072
	.byte	W03
	.byte			Cn3, v076
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			Cn4, v080
	.byte	W03
	.byte			An4, v084
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			An3, v088
	.byte	W03
	.byte			An4
	.byte	W03
	.byte			Fs4, v092
	.byte	W03
	.byte			Fs4, v080
	.byte	W03
	.byte			Fs3, v072
	.byte	W03
	.byte			Ds3, v092
	.byte	W03
	.byte			Cn4
	.byte	W03
	.byte			An3
	.byte	W03
	.byte			Ds4, v080
	.byte	W03
	.byte			An4, v092
	.byte	W03
	.byte			An5
	.byte	W03
	.byte			An4, v088
	.byte	W03
	.byte			Cn5, v068
	.byte	W03
	.byte			Fs4, v080
	.byte	W03
	.byte			Cn4, v092
	.byte	W03
	.byte			Ds4, v088
	.byte	W03
	.byte			An3, v092
	.byte	W03
	.byte			Fs3, v068
	.byte	W03
	.byte			An5, v092
	.byte	W03
	.byte			Ds5, v072
	.byte	W03
	.byte			Fs5, v096
	.byte	W03
	.byte			Cn5, v088
	.byte	W03
	.byte			Ds4, v096
	.byte	W03
	.byte			Fs4, v092
	.byte	W03
	.byte			An4, v076
	.byte	W03
	.byte			Ds3, v108
	.byte	W03
	.byte			An3, v092
	.byte	W03
	.byte			Cn3, v096
	.byte	W03
	.byte			Fs3, v116
	.byte	W03
	.byte			Cn4, v108
	.byte	W03
	.byte			An4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			An3
	.byte	W03
	.byte			An4, v104
	.byte	W03
	.byte			Fs4, v116
	.byte	W03
	.byte	W48
	.byte		N06	, Bn4, v064
	.byte	W06
	.byte			Fs4, v080
	.byte	W06
	.byte			Ds4, v092
	.byte	W06
	.byte			Bn3, v064
	.byte	W30
	.byte	W18
	.byte			As4, v072
	.byte	W06
	.byte			Ds5
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Ds4
	.byte	W54
	.byte			Bn4, v064
	.byte	W06
	.byte			Fs4, v080
	.byte	W06
	.byte			Ds4, v092
	.byte	W06
	.byte			Bn3, v064
	.byte	W48
	.byte			Ds4, v072
	.byte	W06
	.byte			Ds5
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte	W48
	.byte			Bn4, v064
	.byte	W06
	.byte			Ds4, v092
	.byte	W06
	.byte			Fs4, v080
	.byte	W06
	.byte			Bn3, v064
	.byte	W30
	.byte	W24
	.byte			Gs4, v076
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Bn3, v080
	.byte	W06
	.byte			Gs3, v076
	.byte	W42
	.byte			Ds5
	.byte	W06
	.byte			Bn4, v080
	.byte	W06
	.byte			Gs4, v076
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Bn3, v080
	.byte	W06
	.byte			Gs3, v076
	.byte	W42
	.byte			Ds5
	.byte	W06
	.byte			Bn4, v080
	.byte	W06
	.byte			Gs4, v076
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Bn3, v080
	.byte	W06
	.byte			Gs3, v076
	.byte	W06
	.byte		N44	, Cn3, v127
	.byte	W48
	.byte			Gs2
	.byte	W48
	.byte			Gn2
	.byte	W48
	.byte			Cn3
	.byte	W48
	.byte			Gn3
	.byte	W48
	.byte		N42	, Ds3
	.byte	W48
	.byte	W72
	.byte		N03	, Fs4, v028
	.byte	W03
	.byte			Fs3, v032
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			Cn4, v036
	.byte	W03
	.byte			An3, v040
	.byte	W03
	.byte			Ds4, v044
	.byte	W03
	.byte			An4
	.byte	W03
	.byte			An5, v048
	.byte	W03
	.byte			An4, v052
	.byte	W03
	.byte			Cn5, v056
	.byte	W03
	.byte			Fs4
	.byte	W03
	.byte			Cn4, v060
	.byte	W03
	.byte			Ds4, v064
	.byte	W03
	.byte			An3, v068
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			An5, v072
	.byte	W03
	.byte			Ds5, v076
	.byte	W03
	.byte			Fs5, v080
	.byte	W03
	.byte			Cn5
	.byte	W03
	.byte			Ds4, v084
	.byte	W03
	.byte			Fs4, v088
	.byte	W03
	.byte			An4, v092
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			An3, v096
	.byte	W03
	.byte			Cn3, v100
	.byte	W03
	.byte			Fs3, v104
	.byte	W03
	.byte			Cn4
	.byte	W03
	.byte			An4, v108
	.byte	W03
	.byte			Ds4, v112
	.byte	W03
	.byte			An3, v116
	.byte	W03
	.byte			An4
	.byte	W03
	.byte			Fs4, v120
	.byte	W03
	.byte			Cn5, v124
	.byte	W03
	.byte			Fs5, v120
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			An4, v116
	.byte	W03
	.byte			Cn4, v112
	.byte	W03
	.byte			Fs4, v108
	.byte	W03
	.byte			Cn5
	.byte	W03
	.byte			Fs3, v104
	.byte	W03
	.byte			An3, v100
	.byte	W03
	.byte			Cn3, v096
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			Fs5, v092
	.byte	W03
	.byte			Cn5, v088
	.byte	W03
	.byte			Ds4, v084
	.byte	W03
	.byte			Fs4
	.byte	W03
	.byte			An4, v080
	.byte	W03
	.byte			Ds3, v076
	.byte	W03
	.byte			An3, v072
	.byte	W03
	.byte			Cn3
	.byte	W03
	.byte			Fs3, v068
	.byte	W03
	.byte			Cn4, v064
	.byte	W03
	.byte			An4, v060
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			An3, v056
	.byte	W03
	.byte			An4, v052
	.byte	W03
	.byte			An5, v048
	.byte	W03
	.byte			An4
	.byte	W03
	.byte			Cn5, v044
	.byte	W03
	.byte			Fs4, v040
	.byte	W03
	.byte			Cn4, v036
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			An3, v032
	.byte	W24
	.byte	W03
	.byte	W96
	.byte	GOTO	
		mPtr	song026_8_1
	.byte	FINE

	@********************** Track  9 **********************@

	.global song026_9
song026_9:	@ 0x087AE599
	.byte	KEYSH	, 0
song026_9_2:
	.byte	VOICE	, 127
	.byte	VOL	, v108
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		TIE	, Cn2, v127
	.byte	W96
	.byte	W80
	.byte	W02
	.byte		EOT	
	.byte	W14
	.byte	W96
	.byte	W96
	.byte	W96
song026_9_1:
	.byte		N64	, Cn2, v127
	.byte	W72
	.byte		N64	
	.byte	W24
	.byte	PEND
	.byte	W48
	.byte		N64	
	.byte	W48
	.byte	W24
	.byte		N64	
	.byte	W72
	.byte	PATT	
		mPtr	song026_9_1
	.byte	W48
	.byte		N64	, Cn2, v127
	.byte	W48
	.byte	W24
	.byte		N64	
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song026_9_2
	.byte	FINE

	mAlignWord
	.global song026
song026:	@ 0x087AE5D8
	.byte	9		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

mAlignWord
	mPtr	voicegroup007		@ voicegroup/tone

	mPtr	song026_1		@ track
	mPtr	song026_2		@ track
	mPtr	song026_3		@ track
	mPtr	song026_4		@ track
	mPtr	song026_5		@ track
	mPtr	song026_6		@ track
	mPtr	song026_7		@ track
	mPtr	song026_8		@ track
	mPtr	song026_9		@ track
