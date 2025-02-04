	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song023_1
song023_1:	@ 0x087AB3CC
	.byte	KEYSH	, 0
song023_1_15:
	.byte	TEMPO	, 85
	.byte	VOICE	, 83
	.byte	VOL	, v065
	.byte		N05	, Cn2, v127
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N09	, Cn3
	.byte	W12
	.byte		N06	, Cn2
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N19	
	.byte	W12
song023_1_1:
	.byte	W12
	.byte		N06	, Cn2, v127
	.byte	W12
	.byte		N05	, Cn3
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte	PEND
song023_1_2:
	.byte		N04	, Fn2, v127
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N06	, Fn3
	.byte	W12
	.byte		N04	, Fn2
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N15	
	.byte	W12
	.byte	PEND
song023_1_3:
	.byte	W12
	.byte		N04	, Fn2, v127
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte		N03	, Fn2
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte	PEND
song023_1_4:
	.byte		N05	, Cn2, v127
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N09	, Cn3
	.byte	W12
	.byte		N06	, Cn2
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N19	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song023_1_1
	.byte	PATT	
		mPtr	song023_1_2
	.byte	PATT	
		mPtr	song023_1_3
	.byte	PATT	
		mPtr	song023_1_4
	.byte	PATT	
		mPtr	song023_1_1
	.byte	PATT	
		mPtr	song023_1_2
	.byte	PATT	
		mPtr	song023_1_3
	.byte	PATT	
		mPtr	song023_1_4
	.byte	PATT	
		mPtr	song023_1_1
	.byte	PATT	
		mPtr	song023_1_2
	.byte	PATT	
		mPtr	song023_1_3
song023_1_8:
	.byte		N12	, Cn2, v127
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte	PEND
song023_1_5:
	.byte	W12
	.byte		N12	, Cn2, v127
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte		N24	, Fn2
	.byte	W12
	.byte	PEND
song023_1_6:
	.byte	W12
	.byte		N12	, Fn2, v127
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte		N24	, Fn2
	.byte	W12
	.byte	PEND
song023_1_7:
	.byte	W12
	.byte		N12	, Fn2, v127
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte	PEND
song023_1_9:
	.byte	W12
	.byte		N12	, Cn2, v127
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song023_1_5
	.byte	PATT	
		mPtr	song023_1_6
	.byte	PATT	
		mPtr	song023_1_7
	.byte	PATT	
		mPtr	song023_1_4
	.byte	PATT	
		mPtr	song023_1_1
	.byte	PATT	
		mPtr	song023_1_2
	.byte	PATT	
		mPtr	song023_1_3
	.byte	PATT	
		mPtr	song023_1_4
	.byte	PATT	
		mPtr	song023_1_1
	.byte	PATT	
		mPtr	song023_1_2
	.byte	PATT	
		mPtr	song023_1_3
	.byte	PATT	
		mPtr	song023_1_8
	.byte	PATT	
		mPtr	song023_1_5
	.byte	PATT	
		mPtr	song023_1_6
	.byte	PATT	
		mPtr	song023_1_7
	.byte	PATT	
		mPtr	song023_1_9
	.byte	PATT	
		mPtr	song023_1_5
	.byte	PATT	
		mPtr	song023_1_6
	.byte	PATT	
		mPtr	song023_1_7
song023_1_10:
	.byte		N12	, Fn2, v127
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte		N24	
	.byte	W12
	.byte	PEND
song023_1_11:
	.byte	W12
	.byte		N12	, Fn2, v127
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte	PEND
song023_1_12:
	.byte		N12	, Ds2, v127
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte		N24	, Ds2
	.byte	W12
	.byte	PEND
song023_1_13:
	.byte	W12
	.byte		N12	, Ds2, v127
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song023_1_10
	.byte	PATT	
		mPtr	song023_1_11
	.byte	PATT	
		mPtr	song023_1_12
	.byte	PATT	
		mPtr	song023_1_13
song023_1_16:
	.byte		N12	, Fn2, v127
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte		N24	, Fn2
	.byte	W12
	.byte	PEND
song023_1_14:
	.byte	W12
	.byte		N12	, Fn2, v127
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song023_1_14
	.byte	W12
	.byte		N12	, Fn2, v127
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte	GOTO	
		mPtr	song023_1_15
	.byte	PATT	
		mPtr	song023_1_16
	.byte	W12
	.byte	FINE

	@********************** Track  2 **********************@

	.global song023_2
song023_2:	@ 0x087AB5D2
	.byte	KEYSH	, 0
song023_2_6:
	.byte	VOICE	, 62
	.byte	VOL	, v090
	.byte		N23	, As4, v112
	.byte	W24
	.byte			An4
	.byte	W24
	.byte		N11	, Cn4
	.byte	W12
	.byte		N23	, As4
	.byte	W24
	.byte			An4
	.byte	W12
song023_2_4:
	.byte	W12
	.byte		N23	, Cn4, v112
	.byte	W24
	.byte			As4, v096
	.byte	W24
	.byte		N11	, An4, v112
	.byte	W12
	.byte		N23	, Cn4
	.byte	W24
	.byte	PEND
song023_2_1:
	.byte		N23	, As4, v112
	.byte	W24
	.byte			An4
	.byte	W24
	.byte		N11	, Cn4
	.byte	W12
	.byte		N23	, As4
	.byte	W24
	.byte			An4
	.byte	W12
	.byte	PEND
song023_2_5:
	.byte	W12
	.byte		N23	, Cn4, v112
	.byte	W24
	.byte			As4, v104
	.byte	W24
	.byte		N11	, Cn5, v112
	.byte	W12
	.byte		N23	, As4
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song023_2_1
song023_2_2:
	.byte	W12
	.byte		N23	, Cn4, v112
	.byte	W24
	.byte			As4
	.byte	W24
	.byte		N11	, An4
	.byte	W12
	.byte		N23	, Cn4
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song023_2_1
	.byte	PATT	
		mPtr	song023_2_2
	.byte		N01	, Cn4, v100
	.byte		N32	, Cn5
	.byte	W36
	.byte			Gn4
	.byte	W36
	.byte			As4
	.byte	W24
song023_2_3:
	.byte	W12
	.byte		N32	, Ds4, v100
	.byte	W36
	.byte		N11	, Dn4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte		N23	, Gn4
	.byte	W24
	.byte	PEND
	.byte		N32	, Dn4
	.byte	W36
	.byte			Ds4
	.byte	W36
	.byte		N76	, Cn4
	.byte	W24
	.byte	W96
	.byte		N32	, Cn5
	.byte	W36
	.byte			Gn4
	.byte	W36
	.byte			As4
	.byte	W24
	.byte	PATT	
		mPtr	song023_2_3
	.byte		N32	, An4, v100
	.byte	W36
	.byte			As4
	.byte	W36
	.byte		TIE	, Cn5
	.byte	W24
	.byte	W88
	.byte	W01
	.byte		EOT	
	.byte	W07
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song023_2_1
	.byte	PATT	
		mPtr	song023_2_4
	.byte	PATT	
		mPtr	song023_2_1
	.byte	PATT	
		mPtr	song023_2_5
	.byte	PATT	
		mPtr	song023_2_1
	.byte	PATT	
		mPtr	song023_2_2
	.byte	PATT	
		mPtr	song023_2_1
	.byte	W12
	.byte		N23	, Cn4, v112
	.byte	W24
	.byte			As4
	.byte	W24
	.byte		N11	, An4
	.byte	W12
	.byte		N24	, Cn4
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N32	, An3, v120
	.byte	W36
	.byte			As3, v088
	.byte	W36
	.byte		N11	, Cn4, v092
	.byte	W12
	.byte		N56	, Fn3, v108
	.byte	W12
	.byte	W48
	.byte		N23	, Dn3, v100
	.byte	W24
	.byte			Fn3, v084
	.byte	W24
	.byte			Gn3, v088
	.byte	W24
	.byte			An3
	.byte	W24
	.byte		N11	, As3, v076
	.byte	W12
	.byte			An3, v060
	.byte	W12
	.byte		N08	, Gn3, v084
	.byte	W09
	.byte		N02	, Dn4, v108
	.byte	W03
	.byte		N23	, Ds4
	.byte	W12
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N23	, Dn4, v092
	.byte	W24
	.byte			As3, v108
	.byte	W24
	.byte			An3, v096
	.byte	W24
	.byte		N32	, An3, v108
	.byte	W36
	.byte			As3, v092
	.byte	W36
	.byte		N11	, Cn4
	.byte	W12
	.byte		N56	, Fn3, v096
	.byte	W12
	.byte	W48
	.byte		N23	, Dn3, v108
	.byte	W24
	.byte			Fn3, v088
	.byte	W24
	.byte			Gn3, v108
	.byte	W24
	.byte			An3, v100
	.byte	W24
	.byte		N11	, As3
	.byte	W12
	.byte			An3, v084
	.byte	W12
	.byte		N08	, Gn3, v100
	.byte	W09
	.byte		N02	, Fn4, v080
	.byte	W03
	.byte		N23	, Gn4, v096
	.byte	W12
	.byte	W12
	.byte		N11	, Gn4, v100
	.byte	W12
	.byte		N23	, Fn4, v080
	.byte	W24
	.byte			Dn4, v100
	.byte	W24
	.byte			As3, v108
	.byte	W24
	.byte		N92	, An3, v112
	.byte	W96
	.byte			Cn4
	.byte	W96
	.byte		N80	, Fn4
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song023_2_6
	.byte	FINE

	@********************** Track  3 **********************@

	.global song023_3
song023_3:	@ 0x087AB734
	.byte	KEYSH	, 0
song023_3_5:
	.byte	VOICE	, 85
	.byte	MOD	, 2
	.byte	VOL	, v043
	.byte	PAN	, c_v
	.byte		N23	, As5, v068
	.byte	W24
	.byte			An5
	.byte	W24
	.byte		N11	, Cn5
	.byte	W12
	.byte		N23	, As5
	.byte	W24
	.byte			An5
	.byte	W12
	.byte	W12
	.byte			Cn5
	.byte	W24
	.byte			As5, v056
	.byte	W24
	.byte		N11	, An5, v068
	.byte	W12
	.byte		N23	, Cn5
	.byte	W24
song023_3_1:
	.byte		N23	, As5, v068
	.byte	W24
	.byte			An5
	.byte	W24
	.byte		N11	, Cn5
	.byte	W12
	.byte		N23	, As5
	.byte	W24
	.byte			An5
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte			Cn5
	.byte	W24
	.byte			As5, v064
	.byte	W24
	.byte		N11	, Cn6, v068
	.byte	W12
	.byte		N23	, As5
	.byte	W24
	.byte	PATT	
		mPtr	song023_3_1
	.byte	W12
	.byte		N23	, Cn5, v068
	.byte	W24
	.byte			As5
	.byte	W24
	.byte		N11	, An5
	.byte	W12
	.byte		N23	, Cn5
	.byte	W24
	.byte	PATT	
		mPtr	song023_3_1
	.byte	W12
	.byte		N23	, Cn5, v068
	.byte	W24
	.byte			As5
	.byte	W24
	.byte		N11	, An5
	.byte	W12
	.byte		N24	, Cn5
	.byte	W24
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
song023_3_2:
	.byte		N23	, As4, v076
	.byte	W24
	.byte			An4
	.byte	W24
	.byte		N11	, Cn4
	.byte	W12
	.byte		N23	, As4
	.byte	W24
	.byte			An4
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte			Cn4
	.byte	W24
	.byte			As4, v064
	.byte	W24
	.byte		N11	, An4, v076
	.byte	W12
	.byte		N23	, Cn4
	.byte	W24
	.byte	PATT	
		mPtr	song023_3_2
	.byte	W12
	.byte		N23	, Cn4, v076
	.byte	W24
	.byte			As4, v072
	.byte	W24
	.byte		N11	, Cn5, v076
	.byte	W12
	.byte		N23	, As4
	.byte	W24
	.byte	PATT	
		mPtr	song023_3_2
	.byte	W12
	.byte		N23	, Cn4, v076
	.byte	W24
	.byte			As4
	.byte	W24
	.byte		N11	, An4
	.byte	W12
	.byte		N23	, Cn4
	.byte	W24
	.byte	PATT	
		mPtr	song023_3_2
	.byte	W12
	.byte		N23	, Cn4, v076
	.byte	W24
	.byte			As4
	.byte	W24
	.byte		N11	, An4
	.byte	W12
	.byte		N24	, Cn4
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song023_3_3:
	.byte		N44	, An4, v092
	.byte	W48
	.byte			Cn5
	.byte	W48
	.byte	PEND
song023_3_4:
	.byte		N44	, Fn5, v092
	.byte	W48
	.byte			An5
	.byte	W48
	.byte	PEND
	.byte			Gn5
	.byte	W44
	.byte	W01
	.byte		N04	, Fn5, v044
	.byte	W04
	.byte		N03	, En5, v092
	.byte	W04
	.byte		N02	, Dn5
	.byte	W03
	.byte			Cn5, v084
	.byte	W03
	.byte		N03	, Bn4, v092
	.byte	W03
	.byte			An4, v084
	.byte	W04
	.byte		N04	, Gn4
	.byte	W30
	.byte	W96
	.byte	PATT	
		mPtr	song023_3_3
	.byte	PATT	
		mPtr	song023_3_4
	.byte		N36	, Gn5, v092
	.byte	W36
	.byte	W02
	.byte		N03	, Fn5, v040
	.byte	W04
	.byte			En5, v092
	.byte	W03
	.byte		N02	, Dn5
	.byte	W02
	.byte			Cn5, v080
	.byte	W03
	.byte		N01	, Bn4, v092
	.byte	W02
	.byte		N02	, An4, v084
	.byte	W03
	.byte		N05	, Gn4, v092
	.byte	W06
	.byte		N02	, En4, v088
	.byte	W32
	.byte	W03
	.byte	W96
	.byte		N06	, An3, v016
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Fn4, v020
	.byte	W06
	.byte			An4, v024
	.byte	W06
	.byte			Cn4, v028
	.byte	W06
	.byte			Fn4, v032
	.byte	W06
	.byte			An4, v036
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Cn4, v040
	.byte	W06
	.byte			Fn4, v044
	.byte	W06
	.byte			An4, v048
	.byte	W06
	.byte			Cn5, v052
	.byte	W06
	.byte			Fn5, v056
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3, v060
	.byte	W06
	.byte			Fn3, v064
	.byte	W06
	.byte			An3, v068
	.byte	W06
	.byte			Cn4, v072
	.byte	W06
	.byte			Fn4, v076
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Cn4, v080
	.byte	W06
	.byte			Fn4, v084
	.byte	W06
	.byte			An4, v088
	.byte	W06
	.byte			Cn5, v092
	.byte	W06
	.byte			Cn4, v096
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			An4, v100
	.byte	W06
	.byte			Cn5, v104
	.byte	W06
	.byte			Fn5, v108
	.byte	W06
	.byte			An2, v112
	.byte	W06
	.byte			Cn3, v116
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			An3, v120
	.byte	W06
	.byte			Cn4, v124
	.byte	W06
	.byte			Fn4, v120
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Fn5
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Cn5, v124
	.byte	W06
	.byte			Fn5
	.byte	W24
	.byte	GOTO	
		mPtr	song023_3_5
	.byte	FINE

	@********************** Track  4 **********************@

	.global song023_4
song023_4:	@ 0x087AB8FC
	.byte	KEYSH	, 0
song023_4_15:
	.byte	VOICE	, 84
	.byte	VOL	, v079
	.byte		N48	, Cn2, v108
	.byte	W48
	.byte			Ds2
	.byte	W48
song023_4_1:
	.byte		N48	, Gn2, v108
	.byte	W48
	.byte			Cn3
	.byte	W48
	.byte	PEND
song023_4_2:
	.byte		N48	, An2, v108
	.byte	W48
	.byte		TIE	, Fn2
	.byte	W48
	.byte	PEND
	.byte	W96
	.byte		EOT	
song023_4_5:
	.byte		N48	, Cn2, v108
	.byte	W48
	.byte			Ds2
	.byte	W48
	.byte	PEND
	.byte	PATT	
		mPtr	song023_4_1
	.byte	PATT	
		mPtr	song023_4_2
	.byte	W96
	.byte		EOT	, Fn2
song023_4_3:
	.byte		N32	, Cn5, v056
	.byte	W36
	.byte			Gn4
	.byte	W36
	.byte			As4
	.byte	W24
	.byte	PEND
song023_4_4:
	.byte	W12
	.byte		N32	, Ds4, v056
	.byte	W36
	.byte		N11	, Dn4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte		N23	, Gn4
	.byte	W24
	.byte	PEND
	.byte		N32	, Dn4
	.byte	W36
	.byte			Ds4
	.byte	W36
	.byte		TIE	, Cn4
	.byte	W24
	.byte	W92
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte	PATT	
		mPtr	song023_4_3
	.byte	PATT	
		mPtr	song023_4_4
	.byte		N32	, An4, v056
	.byte	W36
	.byte			As4
	.byte	W36
	.byte		TIE	, Cn5
	.byte	W24
	.byte	W92
	.byte		EOT	
	.byte	W04
song023_4_6:
	.byte		N56	, Cn3, v108
	.byte	W60
	.byte		N11	, Gn2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte		N68	, Gn3
	.byte	W12
	.byte	PEND
song023_4_7:
	.byte	W60
	.byte		N11	, An3, v108
	.byte	W12
	.byte			As3
	.byte	W12
	.byte		N80	, An3
	.byte	W12
	.byte	PEND
	.byte	W72
	.byte		N23	, As3
	.byte	W24
song023_4_8:
	.byte		N23	, An3, v108
	.byte	W24
	.byte			Fn3
	.byte	W24
	.byte			Cn3
	.byte	W24
	.byte			Fn3
	.byte	W24
	.byte	PEND
song023_4_9:
	.byte		N32	, Ds3, v108
	.byte	W36
	.byte		N56	, Cn3
	.byte	W60
	.byte	PEND
song023_4_10:
	.byte		N44	, Gn3, v108
	.byte	W48
	.byte		N11	, Gn2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte		N32	, An3
	.byte	W12
	.byte	PEND
song023_4_11:
	.byte	W24
	.byte		N21	, As3, v108
	.byte	W22
	.byte		N01	, Bn3
	.byte	W02
	.byte		N23	, Cn4
	.byte	W24
	.byte		N11	, As3
	.byte	W12
	.byte		N76	, An3
	.byte	W12
	.byte	PEND
song023_4_12:
	.byte	W64
	.byte	W01
	.byte		N06	, Gn3, v072
	.byte	W04
	.byte		N04	, Fn3, v092
	.byte	W03
	.byte		N03	, En3, v096
	.byte	W04
	.byte			Dn3
	.byte	W03
	.byte		N04	, Cn3
	.byte	W04
	.byte		N03	, Bn2
	.byte	W04
	.byte		N02	, An2
	.byte	W05
	.byte			Gn2
	.byte	W04
	.byte	PEND
	.byte	PATT	
		mPtr	song023_4_5
	.byte	PATT	
		mPtr	song023_4_1
	.byte	PATT	
		mPtr	song023_4_2
	.byte	W96
	.byte		EOT	, Fn2
	.byte	PATT	
		mPtr	song023_4_5
	.byte	PATT	
		mPtr	song023_4_1
	.byte	PATT	
		mPtr	song023_4_2
	.byte	W96
	.byte		EOT	, Fn2
	.byte	PATT	
		mPtr	song023_4_6
	.byte	PATT	
		mPtr	song023_4_7
	.byte	W72
	.byte		N23	, As3, v108
	.byte	W24
	.byte	PATT	
		mPtr	song023_4_8
	.byte	PATT	
		mPtr	song023_4_9
	.byte	PATT	
		mPtr	song023_4_10
	.byte	PATT	
		mPtr	song023_4_11
	.byte	PATT	
		mPtr	song023_4_12
song023_4_13:
	.byte		N32	, An3, v084
	.byte	W36
	.byte			As3
	.byte	W36
	.byte		N11	, Cn4
	.byte	W12
	.byte		N56	, Fn3
	.byte	W12
	.byte	PEND
song023_4_14:
	.byte	W48
	.byte		N23	, Dn3, v084
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
	.byte		N08	, Gn3
	.byte	W09
	.byte		N02	, Dn4
	.byte	W03
	.byte		N23	, Ds4
	.byte	W12
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N23	, Dn4
	.byte	W24
	.byte			As3
	.byte	W24
	.byte			An3
	.byte	W24
	.byte	PATT	
		mPtr	song023_4_13
	.byte	PATT	
		mPtr	song023_4_14
	.byte		N23	, Gn3, v084
	.byte	W24
	.byte			An3
	.byte	W24
	.byte		N11	, As3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte		N08	, Gn3
	.byte	W09
	.byte		N02	, Fn4
	.byte	W03
	.byte		N23	, Gn4
	.byte	W12
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N23	, Fn4
	.byte	W24
	.byte			Dn4
	.byte	W24
	.byte			As3
	.byte	W24
	.byte		N92	, An3
	.byte	W96
	.byte			Cn4
	.byte	W96
	.byte		N80	, Fn4
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song023_4_15
	.byte	FINE

	@********************** Track  5 **********************@

	.global song023_5
song023_5:	@ 0x087ABA86
	.byte	KEYSH	, 0
song023_5_5:
	.byte	VOICE	, 63
	.byte	VOL	, v043
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song023_5_1:
	.byte	W12
	.byte		N12	, Cn3, v127
	.byte	W12
	.byte			Ds3, v124
	.byte	W12
	.byte			Cn3, v120
	.byte	W12
	.byte			Gn3, v116
	.byte	W12
	.byte			Cn3, v112
	.byte	W12
	.byte			As3, v108
	.byte	W12
	.byte			Cn4, v104
	.byte	W12
	.byte	PEND
song023_5_2:
	.byte	W12
	.byte		N12	, Cn3, v096
	.byte	W12
	.byte			Ds3, v092
	.byte	W12
	.byte			Cn3, v088
	.byte	W12
	.byte			Gn3, v084
	.byte	W12
	.byte			Cn3, v080
	.byte	W12
	.byte			As3, v076
	.byte	W12
	.byte			Cn4, v072
	.byte	W12
	.byte	PEND
song023_5_3:
	.byte	W12
	.byte		N12	, Cn3, v068
	.byte	W12
	.byte			Ds3, v064
	.byte	W12
	.byte			Cn3, v060
	.byte	W12
	.byte			Gn3, v056
	.byte	W12
	.byte			Cn3, v052
	.byte	W12
	.byte			As3, v048
	.byte	W12
	.byte			Cn4, v044
	.byte	W12
	.byte	PEND
song023_5_4:
	.byte	W12
	.byte		N12	, Cn3, v036
	.byte	W12
	.byte			Ds3, v032
	.byte	W12
	.byte			Cn3, v028
	.byte	W12
	.byte			Gn3, v024
	.byte	W12
	.byte			Cn3, v020
	.byte	W12
	.byte			As3, v016
	.byte	W12
	.byte			Cn4, v012
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song023_5_1
	.byte	PATT	
		mPtr	song023_5_2
	.byte	PATT	
		mPtr	song023_5_3
	.byte	PATT	
		mPtr	song023_5_4
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
		mPtr	song023_5_5
	.byte	FINE

	@********************** Track  6 **********************@

	.global song023_6
song023_6:	@ 0x087ABB32
	.byte	KEYSH	, 0
song023_6_8:
	.byte	VOICE	, 74
	.byte	VOL	, v100
	.byte	PAN	, c_v
	.byte		N12	, Cn3, v088
	.byte		N12	, Ds3, v092
	.byte		N12	, As3
	.byte	W12
	.byte		N06	, Cn3, v100
	.byte		N06	, Ds3, v104
	.byte		N06	, As3, v096
	.byte	W12
	.byte			Cn3, v104
	.byte		N06	, Ds3, v096
	.byte		N06	, An3, v100
	.byte	W72
	.byte	W96
song023_6_1:
	.byte		N06	, Cn3, v088
	.byte		N06	, Fn3, v092
	.byte		N06	, As3
	.byte	W24
	.byte			Cn3, v100
	.byte		N06	, Fn3, v104
	.byte		N06	, As3, v096
	.byte	W12
	.byte			Cn3, v104
	.byte		N06	, Fn3, v096
	.byte		N06	, An3, v100
	.byte	W60
	.byte	PEND
	.byte	W96
song023_6_5:
	.byte		N12	, Cn3, v088
	.byte		N12	, Ds3, v092
	.byte		N12	, As3
	.byte	W12
	.byte		N06	, Cn3, v100
	.byte		N06	, Ds3, v104
	.byte		N06	, As3, v096
	.byte	W12
	.byte			Cn3, v104
	.byte		N06	, Ds3, v096
	.byte		N06	, An3, v100
	.byte	W72
	.byte	PEND
	.byte	W96
	.byte	PATT	
		mPtr	song023_6_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song023_6_6:
	.byte	W24
	.byte		N06	, Ds3, v116
	.byte		N06	, Gn3, v124
	.byte		N06	, Cn4, v127
	.byte	W24
	.byte		N05	, Ds3, v108
	.byte		N05	, Gn3, v112
	.byte		N05	, Cn4, v116
	.byte	W12
	.byte			Ds3, v112
	.byte		N05	, Gn3, v124
	.byte		N05	, As3
	.byte	W24
	.byte		N13	, Ds3, v127
	.byte		N10	, Gn3
	.byte		N15	, Cn4
	.byte	W12
	.byte	PEND
song023_6_2:
	.byte	W03
	.byte		N05	, Bn3, v056
	.byte	W04
	.byte		N04	, An3, v076
	.byte	W03
	.byte		N03	, Gn3, v092
	.byte	W02
	.byte			Fn3, v104
	.byte	W02
	.byte			En3, v096
	.byte	W03
	.byte		N01	, Dn3, v100
	.byte	W03
	.byte			Cn3, v096
	.byte	W02
	.byte		N02	, Bn2, v092
	.byte	W72
	.byte	W02
	.byte	PEND
song023_6_3:
	.byte	W24
	.byte		N06	, Fn3, v116
	.byte		N06	, An3
	.byte		N06	, Cn4
	.byte	W36
	.byte			Fn3
	.byte		N06	, An3
	.byte		N07	, Cn4
	.byte	W24
	.byte		N10	, Fn3
	.byte		N10	, An3
	.byte		N10	, Cn4
	.byte	W10
	.byte		N05	, Bn3, v056
	.byte	W02
	.byte	PEND
song023_6_4:
	.byte	W02
	.byte		N04	, An3, v076
	.byte	W03
	.byte		N03	, Gn3, v092
	.byte	W02
	.byte			Fn3, v104
	.byte	W01
	.byte		N05	, En3, v056
	.byte	W04
	.byte		N04	, Dn3, v076
	.byte	W03
	.byte		N03	, Cn3, v092
	.byte	W02
	.byte			As2, v104
	.byte	W78
	.byte	W01
	.byte	PEND
song023_6_7:
	.byte	W24
	.byte		N06	, Ds3, v116
	.byte		N06	, Gn3
	.byte		N06	, Cn4
	.byte	W24
	.byte			Ds3
	.byte		N06	, Gn3
	.byte		N06	, Cn4
	.byte	W12
	.byte			Ds3
	.byte		N06	, Gn3
	.byte		N06	, As3
	.byte	W24
	.byte		N15	, Ds3
	.byte		N15	, Gn3
	.byte		N15	, Cn4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song023_6_2
	.byte	PATT	
		mPtr	song023_6_3
	.byte	PATT	
		mPtr	song023_6_4
	.byte	PATT	
		mPtr	song023_6_5
	.byte	W96
	.byte	PATT	
		mPtr	song023_6_1
	.byte	W96
	.byte		N12	, Cn3, v088
	.byte		N12	, Ds3, v092
	.byte		N12	, As3
	.byte	W12
	.byte		N06	, Cn3, v100
	.byte		N06	, Ds3, v104
	.byte		N06	, As3, v096
	.byte	W12
	.byte			Cn3, v104
	.byte		N06	, Ds3, v096
	.byte		N06	, An3, v100
	.byte	W24
	.byte			Cn3
	.byte		N06	, Ds3, v104
	.byte		N06	, As3, v096
	.byte	W12
	.byte			Cn3, v104
	.byte		N06	, Ds3, v096
	.byte		N06	, An3, v100
	.byte	W24
	.byte			Cn3
	.byte		N06	, Ds3, v104
	.byte		N06	, As3, v096
	.byte	W12
	.byte	W96
	.byte			Cn3, v088
	.byte		N06	, Fn3, v092
	.byte		N06	, As3
	.byte	W24
	.byte			Cn3, v100
	.byte		N06	, Fn3, v104
	.byte		N06	, As3, v096
	.byte	W12
	.byte			Cn3, v104
	.byte		N06	, Fn3, v096
	.byte		N06	, An3, v100
	.byte	W24
	.byte			Cn3, v104
	.byte		N06	, Fn3, v096
	.byte		N06	, An3, v100
	.byte	W11
	.byte		N04	, Fn3
	.byte		N04	, An3, v108
	.byte	W12
	.byte		N22	, Fn3, v116
	.byte		N23	, An3, v120
	.byte	W13
	.byte	W08
	.byte		N01	, Gn3, v080
	.byte	W06
	.byte		N05	, Fn3, v060
	.byte	W03
	.byte		N04	, Ds3, v092
	.byte	W02
	.byte		N03	, Cs3, v080
	.byte	W02
	.byte		N04	, Bn2, v092
	.byte	W02
	.byte			As2, v100
	.byte	W03
	.byte			Gs2, v096
	.byte	W02
	.byte		N03	, Fs2, v088
	.byte	W02
	.byte			Fn2, v096
	.byte	W02
	.byte		N02	, Ds2, v092
	.byte	W02
	.byte			Cs2, v076
	.byte	W03
	.byte		N01	, Bn1, v056
	.byte	W56
	.byte	W03
	.byte	PATT	
		mPtr	song023_6_6
	.byte	PATT	
		mPtr	song023_6_2
	.byte	W48
	.byte		N07	, Fn3, v124
	.byte		N07	, An3
	.byte	W12
	.byte			Gn3
	.byte		N07	, As3
	.byte	W24
	.byte		N10	, An3
	.byte		N10	, Cn4
	.byte	W12
	.byte	W96
	.byte	PATT	
		mPtr	song023_6_7
	.byte	PATT	
		mPtr	song023_6_2
	.byte	PATT	
		mPtr	song023_6_3
	.byte	PATT	
		mPtr	song023_6_4
	.byte		TIE	, An2, v096
	.byte	W48
	.byte			Cn3
	.byte	W48
	.byte		N40	, Fn3
	.byte	W48
	.byte		N42	, An3, v108
	.byte	W36
	.byte	W03
	.byte		EOT	, An2
	.byte			Cn3
	.byte	W09
	.byte		N32	, As2, v100
	.byte		N36	, Ds3, v092
	.byte		N44	, Gn3, v108
	.byte	W36
	.byte	W03
	.byte		N06	, Cn3, v016
	.byte	W03
	.byte		N08	, Bn2, v076
	.byte	W03
	.byte		N06	, Fn3, v032
	.byte	W01
	.byte		N08	, An2, v060
	.byte	W03
	.byte		N05	, En3, v088
	.byte	W02
	.byte		N07	, Gn2, v056
	.byte	W02
	.byte		N04	, Dn3, v080
	.byte	W02
	.byte		N05	, Fn2, v048
	.byte	W01
	.byte		N04	, Cn3, v068
	.byte	W01
	.byte		N05	, En2
	.byte	W02
	.byte		N04	, Bn2, v076
	.byte	W03
	.byte			An2, v068
	.byte	W04
	.byte		N02	, Bn1, v044
	.byte		N02	, Gn2, v068
	.byte	W01
	.byte			An1
	.byte	W02
	.byte			Gn1
	.byte	W24
	.byte	W03
	.byte	W96
	.byte		N44	, An2, v100
	.byte	W48
	.byte		TIE	, Cn3, v096
	.byte	W48
	.byte		N44	, Fn3, v100
	.byte	W48
	.byte		N40	, Fn3, v088
	.byte		N42	, An3, v100
	.byte	W40
	.byte	W01
	.byte		EOT	, Cn3
	.byte	W07
	.byte		N36	, As2, v096
	.byte		N36	, Dn3
	.byte		N36	, Gn3, v100
	.byte	W36
	.byte	W02
	.byte		N05	, Cn3, v032
	.byte		N05	, Fn3, v024
	.byte	W02
	.byte			Bn2, v104
	.byte	W02
	.byte			En3, v092
	.byte	W01
	.byte			An2, v096
	.byte	W02
	.byte		N04	, Dn3, v092
	.byte	W01
	.byte		N02	, Gn2
	.byte	W01
	.byte		N03	, Cn3, v064
	.byte	W03
	.byte			Bn2, v076
	.byte	W02
	.byte			An2, v068
	.byte	W02
	.byte		N01	, En2, v056
	.byte	W01
	.byte		N02	, Gn2, v080
	.byte	W06
	.byte		N01	, An1, v060
	.byte		N02	, En2, v072
	.byte	W32
	.byte	W03
	.byte	W96
	.byte	W13
	.byte		N03	, Fn3, v104
	.byte		N05	, An3, v108
	.byte	W09
	.byte			An3, v076
	.byte	W01
	.byte			Fn3, v092
	.byte	W24
	.byte		N07	, An3, v080
	.byte	W01
	.byte		N06	, Fn3, v100
	.byte	W12
	.byte		N06	
	.byte		N06	, As3, v096
	.byte	W24
	.byte		N05	, Fn3, v104
	.byte		N05	, An3, v100
	.byte	W12
	.byte	W96
	.byte	W11
	.byte			Fn3, v108
	.byte	W01
	.byte			An3
	.byte	W10
	.byte		N07	, Fn3
	.byte		N06	, An3, v104
	.byte	W24
	.byte	W01
	.byte			An3, v096
	.byte	W01
	.byte		N04	, Fn3, v104
	.byte	W11
	.byte		N06	, As3, v096
	.byte	W01
	.byte		N04	, Fn3, v088
	.byte	W24
	.byte		N24	, Fn3, v116
	.byte		N21	, Cn4, v120
	.byte	W12
	.byte	W11
	.byte		N06	, En3, v064
	.byte	W01
	.byte		N01	, Gn3, v096
	.byte	W02
	.byte		N04	, Dn3, v104
	.byte	W02
	.byte			Cn3, v108
	.byte	W03
	.byte			Bn2, v096
	.byte	W01
	.byte			An2, v100
	.byte	W02
	.byte		N03	, Gn2, v104
	.byte	W02
	.byte			Fn2, v108
	.byte	W01
	.byte			En2
	.byte	W02
	.byte			Dn2, v092
	.byte	W68
	.byte	W01
	.byte	GOTO	
		mPtr	song023_6_8
	.byte	FINE

	@********************** Track  7 **********************@

	.global song023_7
song023_7:	@ 0x087ABE33
	.byte	KEYSH	, 0
song023_7_6:
	.byte	VOICE	, 127
	.byte	VOL	, v110
	.byte		N23	, Cn1, v127
	.byte		N03	, Dn1, v036
	.byte		N80	, Cs2, v127
	.byte	W12
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cs1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
song023_7_1:
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cs1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte	PEND
song023_7_2:
	.byte		N23	, Cn1, v127
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N23	, Cs1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cs1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song023_7_1
	.byte	PATT	
		mPtr	song023_7_2
	.byte	PATT	
		mPtr	song023_7_1
	.byte	PATT	
		mPtr	song023_7_2
	.byte	PATT	
		mPtr	song023_7_1
song023_7_3:
	.byte		N23	, Cn1, v127
	.byte		N03	, Dn1, v036
	.byte		TIE	, Cs2, v127
	.byte	W12
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cs1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte	PEND
song023_7_4:
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N03	
	.byte	W11
	.byte	PEND
	.byte		EOT	, Cs2
	.byte	W01
	.byte		N11	, Cn1, v127
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cs1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte	PATT	
		mPtr	song023_7_2
	.byte	PATT	
		mPtr	song023_7_1
	.byte	PATT	
		mPtr	song023_7_2
	.byte	PATT	
		mPtr	song023_7_1
	.byte	PATT	
		mPtr	song023_7_2
	.byte	PATT	
		mPtr	song023_7_1
	.byte	PATT	
		mPtr	song023_7_3
	.byte	PATT	
		mPtr	song023_7_4
	.byte		EOT	, Cs2
	.byte	W01
	.byte		N11	, Cn1, v127
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cs1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte	PATT	
		mPtr	song023_7_2
	.byte	PATT	
		mPtr	song023_7_1
	.byte	PATT	
		mPtr	song023_7_2
	.byte	PATT	
		mPtr	song023_7_1
	.byte	PATT	
		mPtr	song023_7_2
	.byte	PATT	
		mPtr	song023_7_1
	.byte	PATT	
		mPtr	song023_7_3
	.byte	PATT	
		mPtr	song023_7_4
	.byte		EOT	, Cs2
	.byte	W01
	.byte		N11	, Cn1, v127
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cs1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte	PATT	
		mPtr	song023_7_2
	.byte	PATT	
		mPtr	song023_7_1
	.byte	PATT	
		mPtr	song023_7_2
	.byte	PATT	
		mPtr	song023_7_1
	.byte	PATT	
		mPtr	song023_7_2
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cs1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cs1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte	PATT	
		mPtr	song023_7_3
	.byte	PATT	
		mPtr	song023_7_4
	.byte		EOT	, Cs2
	.byte	W01
	.byte		N11	, Cn1, v127
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cs1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte	PATT	
		mPtr	song023_7_2
	.byte	PATT	
		mPtr	song023_7_1
	.byte	PATT	
		mPtr	song023_7_2
	.byte	PATT	
		mPtr	song023_7_1
	.byte	PATT	
		mPtr	song023_7_2
	.byte	PATT	
		mPtr	song023_7_1
song023_7_5:
	.byte		N23	, Cn1, v127
	.byte		N03	, Dn1, v036
	.byte		TIE	, Fs2, v127
	.byte	W12
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cs1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte	PEND
	.byte		N03	
	.byte	W12
	.byte		N11	, Cn1, v120
	.byte		N03	, Dn1, v036
	.byte	W11
	.byte		EOT	, Fs2
	.byte	W01
	.byte		N23	, Cs1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cs1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte	PATT	
		mPtr	song023_7_2
	.byte	PATT	
		mPtr	song023_7_1
	.byte	PATT	
		mPtr	song023_7_2
	.byte	PATT	
		mPtr	song023_7_1
	.byte	PATT	
		mPtr	song023_7_2
	.byte	PATT	
		mPtr	song023_7_1
	.byte	PATT	
		mPtr	song023_7_2
	.byte	PATT	
		mPtr	song023_7_1
	.byte	PATT	
		mPtr	song023_7_5
	.byte		N11	, Cn1, v120
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N03	
	.byte		N11	, An1, v120
	.byte	W12
	.byte			Cs1
	.byte		N03	, Dn1, v036
	.byte	W11
	.byte		EOT	, Fs2
	.byte	W01
	.byte		N03	, Dn1
	.byte	W01
	.byte		N23	, Gs1, v120
	.byte	W11
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N03	, Dn1, v036
	.byte	W12
	.byte		N05	, Cs1, v120
	.byte		N03	, Dn1, v036
	.byte	W06
	.byte		N05	, Cs1, v084
	.byte	W06
	.byte			Cs1, v088
	.byte		N03	, Dn1, v036
	.byte	W06
	.byte		N05	, Cs1, v120
	.byte	W06
	.byte	GOTO	
		mPtr	song023_7_6
	.byte	PATT	
		mPtr	song023_7_5
	.byte	W32
	.byte	W03
	.byte		EOT	, Fs2
	.byte	FINE

	mAlignWord
	.global song023
song023:	@ 0x087AC10C
	.byte	7		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

mAlignWord
	mPtr	voicegroup007		@ voicegroup/tone

	mPtr	song023_1		@ track
	mPtr	song023_2		@ track
	mPtr	song023_3		@ track
	mPtr	song023_4		@ track
	mPtr	song023_5		@ track
	mPtr	song023_6		@ track
	mPtr	song023_7		@ track
