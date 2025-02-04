	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song022_1
song022_1:	@ 0x087AA960
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 60
	.byte	VOL	, v052
	.byte		N92	, Gn3, v120
	.byte	W96
	.byte			As3
	.byte	W96
	.byte			An3
	.byte	W96
	.byte			Gs3
	.byte	W96
song022_1_1:
	.byte	VOICE	, 60
	.byte	VOL	, v052
	.byte		N92	, Gn3, v120
	.byte	W96
	.byte	PEND
	.byte			As3
	.byte	W96
	.byte			An3
	.byte	W96
	.byte			Gs3
	.byte	W96
song022_1_2:
	.byte	PATT	
		mPtr	song022_1_1
	.byte		N92	, As3, v120
	.byte	W96
	.byte			An3
	.byte	W96
	.byte			Gs3
	.byte	W96
	.byte	PATT	
		mPtr	song022_1_1
	.byte		N92	, As3, v120
	.byte	W96
	.byte			An3
	.byte	W96
	.byte			Gs3
	.byte	W96
	.byte			Gn3
	.byte	W96
	.byte			As3
	.byte	W96
	.byte		TIE	, Fn3
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N92	, Gn3
	.byte	W96
	.byte			As3
	.byte	W96
	.byte		TIE	, Fn3
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N92	
	.byte	W96
	.byte			An3
	.byte	W96
	.byte			Gn3
	.byte	W96
	.byte			As3
	.byte	W96
	.byte			Fn3
	.byte	W96
	.byte			An3
	.byte	W96
	.byte			Gn3
	.byte	W96
	.byte			As3
	.byte	W96
	.byte		TIE	, An3
	.byte	W96
	.byte	W96
	.byte	W84
	.byte	W02
	.byte		EOT	
	.byte	W10
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
		mPtr	song022_1_2
	.byte	FINE

	@********************** Track  2 **********************@

	.global song022_2
song022_2:	@ 0x087AA9D9
	.byte	KEYSH	, 0
song022_2_1:
	.byte	VOICE	, 25
	.byte	VOL	, v037
	.byte		N92	, Ds3, v120
	.byte	W96
	.byte	PEND
	.byte		N92	
	.byte	W96
	.byte			Fn3
	.byte	W96
	.byte			Ds3
	.byte	W96
	.byte	PATT	
		mPtr	song022_2_1
	.byte		N92	, Ds3, v120
	.byte	W96
	.byte			Fn3
	.byte	W96
	.byte			Ds3
	.byte	W96
song022_2_2:
	.byte	PATT	
		mPtr	song022_2_1
	.byte		N92	, Ds3, v120
	.byte	W96
	.byte			Fn3
	.byte	W96
	.byte			Ds3
	.byte	W96
	.byte	PATT	
		mPtr	song022_2_1
	.byte		N92	, Ds3, v120
	.byte	W96
	.byte			Fn3
	.byte	W96
	.byte			Ds3
	.byte	W96
	.byte		N92	
	.byte	W96
	.byte		N92	
	.byte	W96
	.byte		TIE	, Cn3
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N92	, Ds3
	.byte	W96
	.byte		N92	
	.byte	W96
	.byte		TIE	, Cn3
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N92	, An2
	.byte	W96
	.byte			Dn3
	.byte	W96
	.byte			As2
	.byte	W96
	.byte			Ds3
	.byte	W96
	.byte			An2
	.byte	W96
	.byte			Dn3
	.byte	W96
	.byte			As2
	.byte	W96
	.byte			Ds3
	.byte	W96
	.byte		TIE	, Cn3
	.byte	W96
	.byte	W96
	.byte	W80
	.byte	W03
	.byte		EOT	
	.byte	W13
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
		mPtr	song022_2_2
	.byte	FINE

	@********************** Track  3 **********************@

	.global song022_3
song022_3:	@ 0x087AAA50
	.byte	KEYSH	, 0
	.byte	VOICE	, 62
	.byte	VOL	, v059
	.byte		N92	, Ds3, v120
	.byte		N92	, Gn3
	.byte	W96
	.byte			Ds3
	.byte		N92	, As3
	.byte	W96
	.byte			Fn3
	.byte		N92	, An3
	.byte	W96
	.byte			Ds3
	.byte		N92	, Gs3
	.byte	W96
	.byte			Ds3
	.byte		N92	, Gn3
	.byte	W96
	.byte			Ds3
	.byte		N92	, As3
	.byte	W96
	.byte			Fn3
	.byte		N92	, An3
	.byte	W96
	.byte			Ds3
	.byte		N92	, Gs3
	.byte	W96
song022_3_5:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N92	, Ds3, v120
	.byte		N92	, Gn3
	.byte	W96
	.byte			Ds3
	.byte		N92	, As3
	.byte	W96
song022_3_1:
	.byte		TIE	, Cn3, v120
	.byte		TIE	, Fn3
	.byte	W96
	.byte	PEND
	.byte	W92
	.byte	W03
	.byte		EOT	, Cn3
	.byte			Fn3
	.byte	W01
	.byte		N92	, Ds3
	.byte		N92	, Gn3
	.byte	W96
	.byte			Ds3
	.byte		N92	, As3
	.byte	W96
	.byte	PATT	
		mPtr	song022_3_1
	.byte	W92
	.byte	W03
	.byte		EOT	, Cn3
	.byte			Fn3
	.byte	W01
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
	.byte		N11	, Fs3, v120
	.byte		N14	, As3
	.byte	W24
	.byte		N15	, Cs3
	.byte		N15	, Fs3
	.byte	W24
	.byte		N14	, Ds3
	.byte		N14	, Gs3
	.byte	W18
	.byte		N12	, As2
	.byte		N12	, Ds3
	.byte	W18
	.byte		N92	
	.byte		N92	, Gn3
	.byte	W12
song022_3_2:
	.byte	W84
	.byte		N92	, Ds3, v120
	.byte		N92	, As3
	.byte	W12
	.byte	PEND
song022_3_3:
	.byte	W84
	.byte		N92	, Fn3, v120
	.byte		N92	, An3
	.byte	W12
	.byte	PEND
song022_3_4:
	.byte	W84
	.byte		N92	, Ds3, v120
	.byte		N92	, Gs3
	.byte	W12
	.byte	PEND
	.byte	W84
	.byte			Ds3
	.byte		N92	, Gn3
	.byte	W12
	.byte	PATT	
		mPtr	song022_3_2
	.byte	PATT	
		mPtr	song022_3_3
	.byte	PATT	
		mPtr	song022_3_4
	.byte	W96
	.byte	GOTO	
		mPtr	song022_3_5
	.byte	FINE

	@********************** Track  4 **********************@

	.global song022_4
song022_4:	@ 0x087AAB02
	.byte	KEYSH	, 0
	.byte	VOICE	, 23
	.byte	VOL	, v083
	.byte	W36
	.byte		N88	, Cn2, v108
	.byte	W60
	.byte	W36
	.byte		N90	, Cn2, v104
	.byte	W60
	.byte	W36
	.byte		N88	, Cn2, v108
	.byte	W60
	.byte	W36
	.byte		N56	, Cn2, v100
	.byte	W60
	.byte		N08	, Cn2, v116
	.byte	W12
	.byte		N10	, Cn2, v060
	.byte	W18
	.byte		N02	, Cn2, v092
	.byte	W06
	.byte		N18	, Cn2, v116
	.byte	W24
	.byte		N04	, Cn2, v076
	.byte	W12
	.byte		N18	, Cn2, v092
	.byte	W24
	.byte		N28	, Cn2, v100
	.byte	W36
	.byte		N19	, Cn2, v108
	.byte	W24
	.byte		N03	, Cn2, v072
	.byte	W12
	.byte		N21	, Cn2, v108
	.byte	W24
	.byte		N24	, Cn2, v100
	.byte	W36
	.byte		N18	, Cn2, v108
	.byte	W24
	.byte		N04	, Cn2, v092
	.byte	W12
	.byte		N18	, Cn2, v096
	.byte	W24
	.byte		N28	, Cn2, v100
	.byte	W36
	.byte		N18	, Cn2, v108
	.byte	W24
	.byte		N04	, Cn2, v096
	.byte	W12
	.byte		N07	, Cn2, v116
	.byte	W24
song022_4_1:
	.byte		N17	, Cn2, v116
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte		N11	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song022_4_1
	.byte	PATT	
		mPtr	song022_4_1
	.byte	PATT	
		mPtr	song022_4_1
	.byte	PATT	
		mPtr	song022_4_1
	.byte	PATT	
		mPtr	song022_4_1
	.byte	PATT	
		mPtr	song022_4_1
	.byte	PATT	
		mPtr	song022_4_1
song022_4_2:
	.byte		N17	, Cn2, v116
	.byte	W18
	.byte			Cn3
	.byte	W18
	.byte			Cn2
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte		N11	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song022_4_2
	.byte	PATT	
		mPtr	song022_4_2
	.byte	PATT	
		mPtr	song022_4_2
	.byte	PATT	
		mPtr	song022_4_2
	.byte	PATT	
		mPtr	song022_4_2
	.byte	PATT	
		mPtr	song022_4_2
	.byte	PATT	
		mPtr	song022_4_2
song022_4_3:
	.byte		N17	, Dn2, v116
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte		N11	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song022_4_3
song022_4_4:
	.byte		N17	, Ds2, v116
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte		N11	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song022_4_4
	.byte	PATT	
		mPtr	song022_4_3
	.byte	PATT	
		mPtr	song022_4_3
	.byte	PATT	
		mPtr	song022_4_4
	.byte	PATT	
		mPtr	song022_4_4
song022_4_5:
	.byte		N17	, Fn2, v116
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte		N11	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song022_4_5
	.byte	PATT	
		mPtr	song022_4_5
	.byte		N11	, As2, v076
	.byte	W24
	.byte		N10	, Fs2, v104
	.byte	W24
	.byte		N12	, Gs2, v092
	.byte	W18
	.byte		N09	, Ds2, v104
	.byte	W30
	.byte	PATT	
		mPtr	song022_4_1
	.byte	PATT	
		mPtr	song022_4_1
	.byte	PATT	
		mPtr	song022_4_1
	.byte	PATT	
		mPtr	song022_4_1
	.byte	PATT	
		mPtr	song022_4_1
	.byte	PATT	
		mPtr	song022_4_1
	.byte	PATT	
		mPtr	song022_4_1
	.byte	PATT	
		mPtr	song022_4_1
	.byte	GOTO	
		mPtr	song022_4_1
	.byte	FINE

	@********************** Track  5 **********************@

	.global song022_5
song022_5:	@ 0x087AAC65
	.byte	KEYSH	, 0
	.byte	VOICE	, 24
	.byte	MOD	, 2
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
song022_5_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N80	, Cn3, v100
	.byte	W84
	.byte		N05	, Gn2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte		N80	, Gn3
	.byte	W84
	.byte		N05	, An3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte		N80	, An3
	.byte	W84
	.byte		N04	
	.byte	W06
	.byte			As3
	.byte	W06
	.byte		N17	, An3
	.byte	W18
	.byte			Fn3
	.byte	W18
	.byte		N32	, Cn3
	.byte	W36
	.byte		N23	, Fn3
	.byte	W24
	.byte		N32	, Ds3
	.byte	W36
	.byte		N52	, Cn3
	.byte	W54
	.byte		N05	, Fs3
	.byte	W06
	.byte		N56	, Gn3
	.byte	W60
	.byte		N11	, Cn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte		N17	, As3
	.byte	W18
	.byte			Cn4
	.byte	W18
	.byte		N01	
	.byte	W02
	.byte		N03	, Cs4
	.byte	W04
	.byte		N28	, Dn4
	.byte	W30
	.byte		N11	, Cn4
	.byte	W12
	.byte			As3
	.byte	W12
	.byte		N78	, An3
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song022_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song022_6
song022_6:	@ 0x087AACE4
	.byte	KEYSH	, 0
	.byte	VOICE	, 26
	.byte	VOL	, v079
	.byte		N92	, Cn3, v068
	.byte	W96
	.byte			Gn3
	.byte	W96
	.byte		N88	, Cn3
	.byte	W96
	.byte		N84	
	.byte	W96
	.byte		N03	, Cn3, v092
	.byte	W03
	.byte			Ds3, v076
	.byte	W03
	.byte			Gn3, v080
	.byte	W03
	.byte			Cn4, v064
	.byte	W03
	.byte			Gn3, v072
	.byte	W03
	.byte			As3, v060
	.byte	W03
	.byte			Cn4, v064
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Gn3, v072
	.byte	W03
	.byte			Cn4, v076
	.byte	W03
	.byte			As3
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte			Cn4, v080
	.byte	W03
	.byte			Ds4, v064
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte			As4, v072
	.byte	W03
	.byte			Ds4, v048
	.byte	W03
	.byte			Gn4, v068
	.byte	W03
	.byte			As4, v072
	.byte	W03
	.byte			Cn5, v088
	.byte	W03
	.byte			Gn4, v080
	.byte	W03
	.byte			As4, v064
	.byte	W03
	.byte			Cn5, v072
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			Gn5, v076
	.byte	W03
	.byte			Ds5, v064
	.byte	W03
	.byte			Cn5, v056
	.byte	W03
	.byte			Cn6, v068
	.byte	W03
	.byte			As5
	.byte	W03
	.byte			Gn5, v076
	.byte	W03
	.byte			Ds5, v072
	.byte	W03
	.byte			Cn5, v088
	.byte	W03
	.byte			As4, v080
	.byte	W03
	.byte			Ds4, v076
	.byte	W03
	.byte			Cn4, v080
	.byte	W03
	.byte			Gn4, v092
	.byte	W03
	.byte			Ds4, v064
	.byte	W03
	.byte			As3, v052
	.byte	W03
	.byte			Gn3, v072
	.byte	W03
	.byte			Cn4, v100
	.byte	W03
	.byte			Gn3, v080
	.byte	W03
	.byte			Ds3, v072
	.byte	W03
	.byte			Cn3, v076
	.byte	W03
	.byte			As3, v060
	.byte	W03
	.byte			Gn3, v076
	.byte	W03
	.byte			Ds3, v088
	.byte	W03
	.byte			As2, v072
	.byte	W03
	.byte			Gn2, v080
	.byte	W03
	.byte			Gn3, v040
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			Cn3, v036
	.byte	W03
	.byte			As3
	.byte	W03
	.byte			Gn3, v032
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			As2, v028
	.byte	W03
	.byte			Gn2
	.byte	W03
	.byte			Gn3, v024
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			Cn3, v020
	.byte	W03
	.byte			As3
	.byte	W03
	.byte			Gn3, v016
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			As2, v012
	.byte	W03
	.byte			Gn2
	.byte	W03
	.byte	W96
	.byte	W96
song022_6_1:
	.byte		N32	, Cn6, v064
	.byte	W36
	.byte			Gn5
	.byte	W36
	.byte			As5
	.byte	W24
	.byte	PEND
song022_6_2:
	.byte	W12
	.byte		N32	, Ds5, v064
	.byte	W36
	.byte		N11	, Dn5
	.byte	W12
	.byte			Ds5
	.byte	W12
	.byte		N23	, Gn5
	.byte	W24
	.byte	PEND
	.byte		N32	, Ds5
	.byte	W36
	.byte			Fn5
	.byte	W36
	.byte		TIE	, Cn5
	.byte	W24
	.byte	W78
	.byte	W01
	.byte		EOT	
	.byte	W11
	.byte		N05	, Gn5, v040
	.byte	W06
	.byte	PATT	
		mPtr	song022_6_1
	.byte	PATT	
		mPtr	song022_6_2
	.byte		N32	, An5, v064
	.byte	W36
	.byte			As5
	.byte	W36
	.byte		TIE	, Cn6
	.byte	W24
	.byte	W78
	.byte	W01
	.byte		EOT	
	.byte	W17
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N32	, An3, v100
	.byte	W36
	.byte			As3
	.byte	W36
	.byte		N11	, Cn4
	.byte	W12
	.byte		N52	, Fn3
	.byte	W12
song022_6_3:
	.byte	W48
	.byte		N23	, Dn3, v100
	.byte	W24
	.byte			Fn3
	.byte	W24
	.byte	PEND
	.byte			Gn3
	.byte	W24
	.byte			An3
	.byte	W24
	.byte		N11	, As3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte		N05	, Cs4
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte		N17	, Ds4
	.byte	W06
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N23	, Dn4
	.byte	W24
	.byte			As3
	.byte	W24
	.byte		N18	, An3
	.byte	W24
	.byte		N32	
	.byte	W36
	.byte			As3
	.byte	W36
	.byte		N11	, Cn4
	.byte	W12
	.byte		N56	, Fn3
	.byte	W12
	.byte	PATT	
		mPtr	song022_6_3
	.byte		N21	, Gn3, v100
	.byte	W24
	.byte			An3
	.byte	W24
	.byte		N11	, As3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte		N15	, Gn3
	.byte	W12
	.byte		N05	, Fn4
	.byte	W03
	.byte		N06	, Fs4
	.byte	W03
	.byte		N14	, Gn4
	.byte	W06
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N23	, Fn4
	.byte	W24
	.byte			Dn4
	.byte	W24
	.byte			Ds4
	.byte	W24
	.byte		N32	, Fn4
	.byte	W36
	.byte			Cn4
	.byte	W36
	.byte		N23	, As3
	.byte	W24
	.byte		N32	, An3
	.byte	W36
	.byte			As3
	.byte	W36
	.byte		N11	, Cn4
	.byte	W12
	.byte		N84	, Fn4
	.byte	W12
	.byte	W96
	.byte		N08	, As2, v076
	.byte	W24
	.byte		N09	, Fs2
	.byte	W24
	.byte		N08	, Gs2
	.byte	W18
	.byte		N06	, Ds2
	.byte	W30
	.byte	W72
	.byte			Gn3
	.byte	W06
	.byte			Cn4, v092
	.byte	W06
	.byte			As3, v072
	.byte	W06
	.byte			Ds4, v088
	.byte	W06
	.byte			Cn4, v092
	.byte	W06
	.byte			Gn4, v088
	.byte	W06
	.byte			Ds4, v064
	.byte	W06
	.byte			As4, v076
	.byte	W06
	.byte			Gn4, v064
	.byte	W06
	.byte			Ds5, v088
	.byte	W06
	.byte			As4, v064
	.byte	W06
	.byte			Gn5, v092
	.byte	W06
	.byte			Ds5, v072
	.byte	W06
	.byte			As5, v104
	.byte	W06
	.byte			Gn4, v088
	.byte	W06
	.byte			Ds4, v064
	.byte	W06
	.byte			As4, v076
	.byte	W06
	.byte			Gn4, v064
	.byte	W06
	.byte			Ds5, v088
	.byte	W06
	.byte			As4, v064
	.byte	W06
	.byte			Gn5, v092
	.byte	W06
	.byte			Ds5, v072
	.byte	W06
	.byte		N12	, Cn6, v084
	.byte	W84
	.byte	W96
	.byte	W60
	.byte		N06	, Gn3, v076
	.byte	W06
	.byte			Cn4, v092
	.byte	W06
	.byte			As3, v072
	.byte	W06
	.byte			Ds4, v088
	.byte	W06
	.byte			Cn4, v092
	.byte	W06
	.byte			Gn4, v088
	.byte	W06
	.byte			Ds4, v064
	.byte	W06
	.byte			As4, v076
	.byte	W06
	.byte			Gn4, v064
	.byte	W06
	.byte			Ds5, v088
	.byte	W06
	.byte			As4, v064
	.byte	W06
	.byte			Gn5, v092
	.byte	W06
	.byte			Ds5, v072
	.byte	W06
	.byte			As5, v104
	.byte	W06
	.byte			Gn4, v088
	.byte	W06
	.byte			Ds4, v064
	.byte	W06
	.byte			As4, v076
	.byte	W06
	.byte			Gn4, v064
	.byte	W06
	.byte			Ds5, v088
	.byte	W06
	.byte			As4, v064
	.byte	W06
	.byte			Gn5, v092
	.byte	W06
	.byte			Ds5, v072
	.byte	W06
	.byte		N12	, Cn6, v084
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song022_6_1
	.byte	FINE

	@********************** Track  7 **********************@

	.global song022_7
song022_7:	@ 0x087AAF09
	.byte	KEYSH	, 0
	.byte	VOICE	, 64
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song022_7_1:
	.byte		N32	, Cn4, v127
	.byte	W36
	.byte			Gn3
	.byte	W36
	.byte			As3
	.byte	W24
	.byte	PEND
song022_7_2:
	.byte	W12
	.byte		N32	, Ds3, v127
	.byte	W36
	.byte		N11	, Dn3
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte		N23	, Gn3
	.byte	W24
	.byte	PEND
	.byte		N32	, Ds3
	.byte	W36
	.byte			Fn3
	.byte	W36
	.byte		TIE	, Cn3
	.byte	W24
	.byte	W78
	.byte	W01
	.byte		EOT	
	.byte	W17
	.byte	PATT	
		mPtr	song022_7_1
	.byte	PATT	
		mPtr	song022_7_2
	.byte		N32	, An3, v127
	.byte	W36
	.byte			As3
	.byte	W36
	.byte		TIE	, Cn4
	.byte	W24
	.byte	W78
	.byte	W01
	.byte		EOT	
	.byte	W17
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PAN	, c_v-1
	.byte		N03	, Fn3, v072
	.byte	W03
	.byte			An3, v092
	.byte	W03
	.byte			Cn4, v088
	.byte	W03
	.byte			En4
	.byte	W03
	.byte			An3, v084
	.byte	W03
	.byte			Cn4, v092
	.byte	W03
	.byte			En4, v096
	.byte	W03
	.byte			Fn4, v076
	.byte	W03
	.byte			Cn4, v024
	.byte	W03
	.byte			En4, v076
	.byte	W03
	.byte	PAN	, c_v+17
	.byte		N03	, Fn4, v080
	.byte	W03
	.byte			An4, v104
	.byte	W03
	.byte	PAN	, c_v+31
	.byte		N03	, En4, v084
	.byte	W03
	.byte			Fn4, v060
	.byte	W03
	.byte	PAN	, c_v+35
	.byte		N03	, An4, v076
	.byte	W03
	.byte			Cn5, v104
	.byte	W03
	.byte	PAN	, c_v+44
	.byte		N03	, Fn4, v068
	.byte	W03
	.byte			An4, v076
	.byte	W03
	.byte	PAN	, c_v+44
	.byte		N03	, Cn5, v096
	.byte	W03
	.byte			En5, v104
	.byte	W03
	.byte	PAN	, c_v+44
	.byte		N03	, An4, v072
	.byte	W03
	.byte			Cn5, v088
	.byte	W03
	.byte	PAN	, c_v+44
	.byte		N03	, En5, v092
	.byte	W03
	.byte			Fn5, v096
	.byte	W03
	.byte	PAN	, c_v+44
	.byte		N03	, Cn5
	.byte	W03
	.byte			En5, v084
	.byte	W03
	.byte			Fn5, v076
	.byte	W02
	.byte	PAN	, c_v+31
	.byte	W01
	.byte		N03	, An5, v100
	.byte	W03
	.byte	PAN	, c_v+22
	.byte		N03	, Cn6, v108
	.byte	W03
	.byte			An5, v088
	.byte	W03
	.byte	PAN	, c_v+17
	.byte		N03	, Fn5
	.byte	W03
	.byte			An5, v084
	.byte	W03
song022_7_3:
	.byte	PAN	, c_v+4
	.byte		N03	, Fn5, v096
	.byte	W03
	.byte			Cn5, v088
	.byte	W03
	.byte	PAN	, c_v+4
	.byte		N03	, Fn5
	.byte	W03
	.byte			Cn5
	.byte	W03
	.byte	PAN	, c_v-6
	.byte		N03	, An4, v072
	.byte	W03
	.byte			Cn5, v092
	.byte	W03
	.byte	PAN	, c_v-6
	.byte		N03	, An4, v084
	.byte	W03
	.byte			Fn4, v060
	.byte	W03
	.byte	PAN	, c_v-6
	.byte		N03	, An4, v096
	.byte	W03
	.byte			Fn4, v088
	.byte	W03
	.byte	PAN	, c_v-1
	.byte		N03	, Cn4, v076
	.byte	W03
	.byte			Fn4, v096
	.byte	W03
	.byte	PAN	, c_v+8
	.byte		N03	, Cn4, v088
	.byte	W03
	.byte			An3, v096
	.byte	W03
	.byte	PAN	, c_v+17
	.byte		N03	, Cn4, v092
	.byte	W03
	.byte			An3, v096
	.byte	W03
	.byte			Fn3, v100
	.byte	W03
	.byte			An3, v096
	.byte	W03
	.byte			Fn3, v104
	.byte	W03
	.byte			Cn3
	.byte	W03
	.byte			An4, v100
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Cn4, v096
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Cn4, v092
	.byte	W03
	.byte			An3
	.byte	W03
	.byte			Cn4, v088
	.byte	W03
	.byte			An3
	.byte	W03
	.byte			Fn3, v084
	.byte	W03
	.byte			An3
	.byte	W03
	.byte			Fn3, v080
	.byte	W03
	.byte			Cn3
	.byte	W03
	.byte	PEND
song022_7_4:
	.byte		N03	, An4, v076
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Cn4, v072
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Cn4, v068
	.byte	W03
	.byte			An3
	.byte	W03
	.byte			Cn4, v064
	.byte	W03
	.byte			An3
	.byte	W03
	.byte			Fn3, v060
	.byte	W03
	.byte			An3
	.byte	W03
	.byte			Fn3, v056
	.byte	W03
	.byte			Cn3
	.byte	W03
	.byte			An4, v052
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Cn4, v048
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Cn4, v044
	.byte	W03
	.byte			An3
	.byte	W03
	.byte			Cn4, v040
	.byte	W03
	.byte			An3
	.byte	W03
	.byte			Fn3, v036
	.byte	W03
	.byte			An3
	.byte	W03
	.byte			Fn3, v032
	.byte	W03
	.byte			Cn3
	.byte	W24
	.byte	W03
	.byte	PEND
	.byte	W96
	.byte	W84
	.byte	PAN	, c_v+22
	.byte		N03	, Cn6, v108
	.byte	W03
	.byte			An5, v088
	.byte	W03
	.byte	PAN	, c_v+17
	.byte		N03	, Fn5
	.byte	W03
	.byte			An5, v084
	.byte	W03
	.byte	PATT	
		mPtr	song022_7_3
	.byte	PATT	
		mPtr	song022_7_4
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
		mPtr	song022_7_1
	.byte	FINE

	@********************** Track  8 **********************@

	.global song022_8
song022_8:	@ 0x087AB0BC
	.byte	KEYSH	, 0
	.byte	VOICE	, 63
	.byte	VOL	, v100
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song022_8_2:
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
	.byte	W96
song022_8_1:
	.byte		N23	, Fn3, v127
	.byte	W24
	.byte			Gn3
	.byte	W24
	.byte		N17	, An3
	.byte	W18
	.byte			As3, v124
	.byte	W18
	.byte		N11	, Cn4, v127
	.byte	W12
	.byte	PEND
	.byte		N32	, Dn4
	.byte	W36
	.byte			Fn4
	.byte	W36
	.byte		N11	, Ds4
	.byte	W12
	.byte		TIE	, Dn4
	.byte	W12
	.byte	W88
	.byte		EOT	
	.byte	W08
	.byte	W96
	.byte	PATT	
		mPtr	song022_8_1
	.byte		N32	, Dn4, v127
	.byte	W36
	.byte			Fn4
	.byte	W36
	.byte		N11	, Ds4
	.byte	W12
	.byte		N92	, Dn4
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N44	, Gn3, v116
	.byte	W48
	.byte		N48	, Dn4, v096
	.byte	W48
	.byte		N44	, As3, v080
	.byte	W44
	.byte	W03
	.byte		N05	, Fs4, v100
	.byte	W03
	.byte		N44	, Gn4, v096
	.byte	W44
	.byte		N48	, Fn4
	.byte	W02
	.byte	W44
	.byte	W03
	.byte		TIE	, Cn4, v092
	.byte	W48
	.byte	W01
	.byte	W84
	.byte	W01
	.byte		EOT	
	.byte	W11
	.byte	W01
	.byte		N48	, Gn3
	.byte	W48
	.byte		N44	, Dn4, v100
	.byte	W44
	.byte	W02
	.byte		N48	, As3, v088
	.byte	W01
	.byte	W44
	.byte	W03
	.byte		N52	, Gn4, v100
	.byte	W48
	.byte	W01
	.byte		N44	, Fn4, v096
	.byte	W48
	.byte		TIE	, Cn4, v104
	.byte	W48
	.byte	W72
	.byte	W01
	.byte		EOT	
	.byte	W23
	.byte	GOTO	
		mPtr	song022_8_2
	.byte	FINE

	@********************** Track  9 **********************@

	.global song022_9
song022_9:	@ 0x087AB15C
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v110
	.byte		N76	, Cs2, v120
	.byte	W36
	.byte			Cn1
	.byte	W60
	.byte	W36
	.byte	W01
	.byte		N84	, Cn1, v116
	.byte	W56
	.byte	W03
	.byte	W32
	.byte	W02
	.byte		N88	
	.byte	W60
	.byte	W02
	.byte	W32
	.byte	W03
	.byte		N20	
	.byte	W60
	.byte	W01
	.byte		N23	, Cn1, v127
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte			Cn1, v120
	.byte	W24
	.byte			Cn1, v127
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte			Cn1, v120
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte			Cn1, v116
	.byte	W24
	.byte			Cn1, v120
	.byte	W24
	.byte		N11	, Cn1, v116
	.byte	W12
	.byte			Cs1, v104
	.byte	W12
	.byte		N23	, Cn1, v116
	.byte	W24
	.byte			Cn1, v120
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Cs1, v092
	.byte	W12
	.byte			Cn1, v116
	.byte	W12
	.byte			Cs1, v068
	.byte	W12
	.byte			Cs1, v120
	.byte	W12
	.byte		N05	, Cs1, v096
	.byte	W06
	.byte		N03	, Cs1, v108
	.byte	W06
song022_9_4:
	.byte		N23	, Cn1, v104
	.byte		N05	, Dn1, v060
	.byte		N88	, Cs2, v104
	.byte	W12
	.byte		N05	, Dn1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cs1, v116
	.byte		N05	, Dn1, v060
	.byte	W12
	.byte		N23	, Cn1, v108
	.byte		N05	, Dn1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Dn1, v060
	.byte	W12
	.byte		N11	, Cn1, v116
	.byte		N05	, Dn1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cs1, v108
	.byte		N05	, Dn1, v060
	.byte	W12
	.byte			Cn1, v108
	.byte		N05	, Dn1, v028
	.byte	W06
	.byte			Cs1, v127
	.byte		N05	, Dn1, v028
	.byte	W06
song022_9_1:
	.byte		N23	, Cn1, v116
	.byte		N05	, Dn1, v060
	.byte	W12
	.byte			Dn1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cs1, v108
	.byte		N05	, Dn1, v060
	.byte	W12
	.byte		N23	, Cn1, v104
	.byte		N05	, Dn1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Dn1, v060
	.byte	W12
	.byte		N11	, Cn1, v108
	.byte		N05	, Dn1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N24	, Cs1, v116
	.byte		N05	, Dn1, v060
	.byte	W12
	.byte			Dn1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
song022_9_2:
	.byte		N23	, Cn1, v104
	.byte		N05	, Dn1, v060
	.byte	W12
	.byte			Dn1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cs1, v116
	.byte		N05	, Dn1, v060
	.byte	W12
	.byte		N23	, Cn1, v108
	.byte		N05	, Dn1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Dn1, v060
	.byte	W12
	.byte		N11	, Cn1, v116
	.byte		N05	, Dn1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cs1, v108
	.byte		N05	, Dn1, v060
	.byte	W12
	.byte			Cn1, v108
	.byte		N05	, Dn1, v028
	.byte	W06
	.byte			Cs1, v127
	.byte		N05	, Dn1, v028
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song022_9_1
	.byte		N23	, Cn1, v104
	.byte		N05	, Dn1, v060
	.byte		N92	, Cs2, v104
	.byte	W12
	.byte		N05	, Dn1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cs1, v116
	.byte		N05	, Dn1, v060
	.byte	W12
	.byte		N23	, Cn1, v108
	.byte		N05	, Dn1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Dn1, v060
	.byte	W12
	.byte		N11	, Cn1, v116
	.byte		N05	, Dn1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cs1, v108
	.byte		N05	, Dn1, v060
	.byte	W12
	.byte			Cn1, v108
	.byte		N05	, Dn1, v028
	.byte	W06
	.byte			Cs1, v127
	.byte		N05	, Dn1, v028
	.byte	W06
	.byte	PATT	
		mPtr	song022_9_1
	.byte	PATT	
		mPtr	song022_9_2
	.byte	PATT	
		mPtr	song022_9_1
	.byte	PATT	
		mPtr	song022_9_2
	.byte	PATT	
		mPtr	song022_9_1
	.byte	PATT	
		mPtr	song022_9_2
	.byte	PATT	
		mPtr	song022_9_1
	.byte	PATT	
		mPtr	song022_9_2
	.byte	PATT	
		mPtr	song022_9_1
	.byte	PATT	
		mPtr	song022_9_2
	.byte	PATT	
		mPtr	song022_9_1
	.byte	PATT	
		mPtr	song022_9_2
	.byte	PATT	
		mPtr	song022_9_1
	.byte	PATT	
		mPtr	song022_9_2
	.byte	PATT	
		mPtr	song022_9_1
	.byte	PATT	
		mPtr	song022_9_2
	.byte	PATT	
		mPtr	song022_9_1
	.byte	PATT	
		mPtr	song022_9_2
	.byte	PATT	
		mPtr	song022_9_1
	.byte	PATT	
		mPtr	song022_9_2
	.byte	PATT	
		mPtr	song022_9_1
	.byte	PATT	
		mPtr	song022_9_2
	.byte		N11	, Cn1, v076
	.byte		N11	, Fs1, v068
	.byte	W24
	.byte		N10	, Cs1, v104
	.byte		N10	, Fs1, v096
	.byte	W24
	.byte		N12	, Cn1, v092
	.byte		N12	, Fs1, v080
	.byte	W18
	.byte		N09	, Cs1, v104
	.byte		N09	, Fs1, v096
	.byte	W18
	.byte		N48	, Cs2, v104
	.byte	W12
song022_9_3:
	.byte		N23	, Cn1, v104
	.byte		N05	, Dn1, v060
	.byte	W12
	.byte			Dn1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cs1, v116
	.byte		N05	, Dn1, v060
	.byte	W12
	.byte		N23	, Cn1, v108
	.byte		N05	, Dn1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Dn1, v060
	.byte	W12
	.byte		N11	, Cn1, v116
	.byte		N05	, Dn1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cs1, v108
	.byte		N05	, Dn1, v060
	.byte	W12
	.byte			Cn1, v108
	.byte		N05	, Dn1, v028
	.byte	W06
	.byte			Cs1, v068
	.byte		N05	, Dn1, v028
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song022_9_1
	.byte	PATT	
		mPtr	song022_9_3
	.byte	PATT	
		mPtr	song022_9_1
	.byte	PATT	
		mPtr	song022_9_3
	.byte	PATT	
		mPtr	song022_9_1
	.byte	PATT	
		mPtr	song022_9_3
	.byte	PATT	
		mPtr	song022_9_1
	.byte	GOTO	
		mPtr	song022_9_4
	.byte	FINE

	mAlignWord
	.global song022
song022:	@ 0x087AB3A0
	.byte	9		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup006		@ voicegroup/tone

	mPtr	song022_1		@ track
	mPtr	song022_2		@ track
	mPtr	song022_3		@ track
	mPtr	song022_4		@ track
	mPtr	song022_5		@ track
	mPtr	song022_6		@ track
	mPtr	song022_7		@ track
	mPtr	song022_8		@ track
	mPtr	song022_9		@ track
