	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song021_1
song021_1:	@ 0x087AA068
	.byte	KEYSH	, 0
song021_1_5:
	.byte	TEMPO	, 67
	.byte	VOICE	, 127
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte		N23	, Cs1, v104
	.byte		N07	, Ds1, v040
	.byte		N92	, Fs2, v104
	.byte	W24
	.byte		N11	, Cs1
	.byte		N07	, Ds1, v040
	.byte	W12
	.byte		N11	, Cn1, v104
	.byte	W12
	.byte			Cs1
	.byte		N07	, Ds1, v040
	.byte	W12
	.byte		N11	, Cn1, v104
	.byte	W12
	.byte			Cs1
	.byte		N07	, Ds1, v040
	.byte	W12
	.byte		N12	, Cn1, v104
	.byte	W12
song021_1_1:
	.byte		N23	, Cs1, v104
	.byte		N07	, Ds1, v040
	.byte	W24
	.byte		N11	, Cs1, v104
	.byte		N07	, Ds1, v040
	.byte	W12
	.byte		N11	, Cn1, v104
	.byte	W12
	.byte			Cs1
	.byte		N07	, Ds1, v040
	.byte	W12
	.byte		N11	, Cn1, v104
	.byte	W12
	.byte			Cs1
	.byte		N07	, Ds1, v040
	.byte	W12
	.byte		N12	, Cn1, v104
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song021_1_1
	.byte	PATT	
		mPtr	song021_1_1
song021_1_2:
	.byte		N23	, Cs1, v104
	.byte		N07	, Ds1, v040
	.byte		N92	, Fs2, v104
	.byte	W24
	.byte		N11	, Cs1
	.byte		N07	, Ds1, v040
	.byte	W12
	.byte		N11	, Cn1, v104
	.byte	W12
	.byte			Cs1
	.byte		N07	, Ds1, v040
	.byte	W12
	.byte		N11	, Cn1, v104
	.byte	W12
	.byte			Cs1
	.byte		N07	, Ds1, v040
	.byte	W12
	.byte		N12	, Cn1, v104
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song021_1_1
	.byte	PATT	
		mPtr	song021_1_1
	.byte	PATT	
		mPtr	song021_1_1
	.byte	PATT	
		mPtr	song021_1_1
	.byte	PATT	
		mPtr	song021_1_1
	.byte	PATT	
		mPtr	song021_1_1
	.byte	PATT	
		mPtr	song021_1_1
	.byte	PATT	
		mPtr	song021_1_2
	.byte	PATT	
		mPtr	song021_1_1
	.byte	PATT	
		mPtr	song021_1_1
	.byte	PATT	
		mPtr	song021_1_1
	.byte	PATT	
		mPtr	song021_1_2
	.byte	PATT	
		mPtr	song021_1_1
	.byte	PATT	
		mPtr	song021_1_1
	.byte	PATT	
		mPtr	song021_1_1
	.byte	PATT	
		mPtr	song021_1_1
	.byte	PATT	
		mPtr	song021_1_1
	.byte	PATT	
		mPtr	song021_1_1
	.byte	PATT	
		mPtr	song021_1_1
song021_1_4:
	.byte		N11	, Cs1, v104
	.byte		N07	, Ds1, v040
	.byte		N92	, Cs2, v104
	.byte	W12
	.byte		N11	, Cn1
	.byte	W12
	.byte		N23	, Cs1
	.byte		N07	, Ds1, v040
	.byte	W24
	.byte		N11	, Cs1, v104
	.byte		N07	, Ds1, v040
	.byte	W12
	.byte		N11	, Cn1, v104
	.byte	W12
	.byte			Cs1
	.byte		N07	, Ds1, v040
	.byte	W12
	.byte		N12	, Cn1, v104
	.byte	W12
	.byte	PEND
song021_1_3:
	.byte		N11	, Cs1, v104
	.byte		N07	, Ds1, v040
	.byte	W12
	.byte		N11	, Cn1, v104
	.byte	W12
	.byte		N23	, Cs1
	.byte		N07	, Ds1, v040
	.byte	W24
	.byte		N11	, Cs1, v104
	.byte		N07	, Ds1, v040
	.byte	W12
	.byte		N11	, Cn1, v104
	.byte	W12
	.byte			Cs1
	.byte		N07	, Ds1, v040
	.byte	W12
	.byte		N12	, Cn1, v104
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song021_1_3
	.byte	PATT	
		mPtr	song021_1_3
	.byte	PATT	
		mPtr	song021_1_3
	.byte	PATT	
		mPtr	song021_1_3
	.byte	PATT	
		mPtr	song021_1_3
	.byte	PATT	
		mPtr	song021_1_3
	.byte	PATT	
		mPtr	song021_1_4
	.byte	PATT	
		mPtr	song021_1_3
	.byte	PATT	
		mPtr	song021_1_3
	.byte	PATT	
		mPtr	song021_1_3
	.byte	PATT	
		mPtr	song021_1_3
	.byte	PATT	
		mPtr	song021_1_3
	.byte	PATT	
		mPtr	song021_1_3
	.byte	PATT	
		mPtr	song021_1_3
	.byte	GOTO	
		mPtr	song021_1_5
	.byte		N12	, Cs1, v104
	.byte	W12
	.byte	FINE

	@********************** Track  2 **********************@

	.global song021_2
song021_2:	@ 0x087AA1EB
	.byte	KEYSH	, 0
song021_2_10:
	.byte	VOICE	, 122
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte		N06	, Dn2, v112
	.byte	W12
	.byte		N03	, An1
	.byte	W12
	.byte		N16	, Dn2
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N05	, An1
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte		N15	, Cn2
	.byte	W12
song021_2_1:
	.byte	W12
	.byte		N18	, Bn1, v112
	.byte	W24
	.byte			An1
	.byte	W24
	.byte		N21	, Gn1
	.byte	W36
	.byte	PEND
	.byte		N06	, Dn2
	.byte	W12
	.byte		N03	, An1
	.byte	W12
	.byte		N16	, Dn2
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N05	, An1
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte		N15	, Cn2
	.byte	W12
	.byte	PATT	
		mPtr	song021_2_1
song021_2_2:
	.byte		N12	, Dn2, v112
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			Dn2
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte	PEND
song021_2_3:
	.byte	W12
	.byte		N12	, An1, v112
	.byte	W12
	.byte			Dn2
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte	PEND
song021_2_4:
	.byte	W12
	.byte		N12	, Cn2, v112
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte	PEND
song021_2_5:
	.byte	W12
	.byte		N12	, Cn2, v112
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			Cn2
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_3
	.byte	PATT	
		mPtr	song021_2_4
	.byte	PATT	
		mPtr	song021_2_5
	.byte		N11	, Dn2, v104
	.byte	W12
	.byte		N07	, An1, v096
	.byte	W12
	.byte		N16	, Dn2, v116
	.byte	W24
	.byte		N11	, Dn2, v108
	.byte	W12
	.byte			An1, v088
	.byte	W12
	.byte		N04	, Dn2, v108
	.byte	W12
	.byte		N18	, Cn2, v116
	.byte	W12
	.byte	W12
	.byte		N07	, Gn1, v096
	.byte	W12
	.byte		N15	, Cn2, v108
	.byte	W24
	.byte		N08	, Cn2, v120
	.byte	W12
	.byte			Gn1, v072
	.byte	W12
	.byte		N12	, Cn2, v104
	.byte	W12
	.byte		N11	, Gn1, v096
	.byte	W12
	.byte		N08	, Dn2, v104
	.byte	W12
	.byte		N05	, An1, v096
	.byte	W12
	.byte		N18	, Dn2, v100
	.byte	W24
	.byte		N11	, Dn2, v116
	.byte	W12
	.byte			An1, v092
	.byte	W12
	.byte		N03	, Dn2, v104
	.byte	W12
	.byte		N21	, Cn2, v108
	.byte	W12
	.byte	W24
	.byte		N12	, Cn2, v104
	.byte	W12
	.byte		N08	, Gn1, v060
	.byte	W12
	.byte		N09	, Cn2, v104
	.byte	W12
	.byte		N04	, Gn1, v088
	.byte	W12
	.byte		N12	, Cn2, v108
	.byte	W24
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_3
	.byte	PATT	
		mPtr	song021_2_4
	.byte	PATT	
		mPtr	song021_2_5
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_3
	.byte	PATT	
		mPtr	song021_2_4
	.byte	PATT	
		mPtr	song021_2_5
song021_2_6:
	.byte		N23	, Dn2, v112
	.byte	W24
	.byte		N11	, Fs2
	.byte	W12
	.byte		N23	, Dn3
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N11	, Fs2
	.byte	W12
	.byte	PEND
song021_2_7:
	.byte		N23	, An2, v112
	.byte	W24
	.byte		N11	, En2
	.byte	W12
	.byte		N23	, Cs3
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte	PEND
song021_2_8:
	.byte		N11	, Cn3, v112
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte		N23	, Cn3
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N11	, Gn2
	.byte	W12
	.byte	PEND
song021_2_9:
	.byte		N11	, Cn3, v112
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte		N23	, Cn3
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N12	, Gn2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song021_2_6
	.byte	PATT	
		mPtr	song021_2_7
	.byte	PATT	
		mPtr	song021_2_8
	.byte	PATT	
		mPtr	song021_2_8
	.byte	PATT	
		mPtr	song021_2_6
	.byte	PATT	
		mPtr	song021_2_7
	.byte	PATT	
		mPtr	song021_2_8
	.byte	PATT	
		mPtr	song021_2_9
	.byte	PATT	
		mPtr	song021_2_6
	.byte	PATT	
		mPtr	song021_2_7
	.byte	PATT	
		mPtr	song021_2_8
	.byte	PATT	
		mPtr	song021_2_8
	.byte	GOTO	
		mPtr	song021_2_10
	.byte	FINE

	@********************** Track  3 **********************@

	.global song021_3
song021_3:	@ 0x087AA38D
	.byte	KEYSH	, 0
song021_3_8:
	.byte	VOICE	, 62
	.byte	VOL	, v096
	.byte	PAN	, c_v
	.byte	W24
	.byte		N18	, Dn3, v100
	.byte		N18	, Fs3, v092
	.byte	W24
	.byte		N06	, Dn3, v096
	.byte		N06	, Fs3, v092
	.byte	W11
	.byte			Dn3
	.byte	W01
	.byte		N08	, Fs3, v072
	.byte	W24
	.byte	W01
	.byte		N96	, En3, v100
	.byte		TIE	, Gn3, v104
	.byte	W11
	.byte	W84
	.byte	W02
	.byte		EOT	
	.byte	W10
	.byte	W24
	.byte		N16	, Dn3, v096
	.byte		N16	, Fs3, v088
	.byte	W23
	.byte		N05	, Dn3, v096
	.byte		N05	, Fs3, v104
	.byte	W12
	.byte			Dn3, v100
	.byte		N07	, Fs3, v108
	.byte	W24
	.byte		N72	, En3
	.byte	W01
	.byte			Gn3
	.byte	W12
	.byte	W96
song021_3_1:
	.byte	W24
	.byte		N14	, Dn3, v116
	.byte		N15	, Fs3, v096
	.byte	W18
	.byte		N02	, Dn3, v072
	.byte		N03	, Fs3, v060
	.byte	W06
	.byte		N04	, Dn3, v100
	.byte		N04	, Fs3, v096
	.byte	W12
	.byte			Dn3, v116
	.byte		N06	, Fs3
	.byte	W24
	.byte		N04	, Dn3
	.byte		N05	, Fs3
	.byte	W12
	.byte	PEND
song021_3_2:
	.byte	W12
	.byte		N04	, Dn3, v088
	.byte		N05	, Fs3
	.byte	W48
	.byte		N04	, Dn3, v092
	.byte		N05	, Fs3, v072
	.byte	W24
	.byte		N60	, En3, v104
	.byte		N60	, Gn3, v100
	.byte	W12
	.byte	PEND
	.byte	W96
song021_3_3:
	.byte	W12
	.byte		N05	, En3, v116
	.byte		N05	, Gn3
	.byte	W24
	.byte		N03	, En3, v108
	.byte		N05	, Gn3
	.byte	W24
	.byte		N06	, Gn3, v100
	.byte		N05	, Dn4, v116
	.byte	W36
	.byte	PEND
	.byte	PATT	
		mPtr	song021_3_1
	.byte	PATT	
		mPtr	song021_3_2
	.byte	W96
	.byte	PATT	
		mPtr	song021_3_3
	.byte	W24
	.byte		N17	, Dn3, v108
	.byte		N18	, Fs3, v104
	.byte	W24
	.byte		N04	, Dn3, v096
	.byte		N05	, Fs3, v088
	.byte	W12
	.byte			An2, v104
	.byte		N06	, Dn3, v108
	.byte	W24
	.byte		N56	, Cn3, v104
	.byte		N56	, En3, v116
	.byte	W12
	.byte	W96
	.byte	W24
	.byte		N17	, Dn3, v120
	.byte		N17	, Fs3, v108
	.byte	W18
	.byte		N05	, Fs3, v096
	.byte	W06
	.byte		N04	, Dn3, v104
	.byte		N06	, Fs3, v096
	.byte	W12
	.byte		N05	, An2, v108
	.byte		N06	, Dn3, v104
	.byte	W24
	.byte		N56	, Cn3
	.byte		N56	, En3, v116
	.byte	W12
	.byte	W96
	.byte	PATT	
		mPtr	song021_3_1
	.byte	PATT	
		mPtr	song021_3_2
	.byte	W96
	.byte	PATT	
		mPtr	song021_3_3
	.byte	PATT	
		mPtr	song021_3_1
	.byte	PATT	
		mPtr	song021_3_2
	.byte	W96
	.byte	PATT	
		mPtr	song021_3_3
song021_3_4:
	.byte		N12	, Dn3, v120
	.byte	W11
	.byte			An2, v100
	.byte	W12
	.byte			Fs3, v104
	.byte	W12
	.byte			Dn3, v096
	.byte	W12
	.byte			An3, v116
	.byte	W12
	.byte			Dn3, v092
	.byte	W12
	.byte			Fs3, v120
	.byte	W12
	.byte			Dn3, v096
	.byte	W12
	.byte			En3, v104
	.byte	W01
	.byte	PEND
song021_3_5:
	.byte	W11
	.byte		N12	, An2, v096
	.byte	W12
	.byte			Cs3, v116
	.byte	W12
	.byte			An2, v064
	.byte	W12
	.byte			An3, v116
	.byte	W12
	.byte			An2, v060
	.byte	W12
	.byte			En3, v116
	.byte	W12
	.byte			An2, v092
	.byte	W12
	.byte			Gn3, v104
	.byte	W01
	.byte	PEND
song021_3_6:
	.byte	W11
	.byte		N12	, Cn3, v104
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Gn2, v096
	.byte	W12
	.byte			Cn3, v104
	.byte	W12
	.byte			En2, v096
	.byte	W12
	.byte			Gn2, v100
	.byte	W12
	.byte			Cn2, v096
	.byte	W12
	.byte			Gn3, v108
	.byte	W01
	.byte	PEND
song021_3_7:
	.byte	W11
	.byte		N12	, Cn3, v088
	.byte	W12
	.byte			En3, v096
	.byte	W12
	.byte			Gn2, v092
	.byte	W12
	.byte			Cn3, v104
	.byte	W12
	.byte			En2, v088
	.byte	W12
	.byte			Gn2, v104
	.byte	W12
	.byte			Cn2, v108
	.byte	W13
	.byte	PEND
	.byte	PATT	
		mPtr	song021_3_4
	.byte	PATT	
		mPtr	song021_3_5
	.byte	PATT	
		mPtr	song021_3_6
	.byte	PATT	
		mPtr	song021_3_7
	.byte	PATT	
		mPtr	song021_3_4
	.byte	PATT	
		mPtr	song021_3_5
	.byte	PATT	
		mPtr	song021_3_6
	.byte	PATT	
		mPtr	song021_3_7
	.byte	PATT	
		mPtr	song021_3_4
	.byte	PATT	
		mPtr	song021_3_5
	.byte	PATT	
		mPtr	song021_3_6
	.byte	PATT	
		mPtr	song021_3_7
	.byte	GOTO	
		mPtr	song021_3_8
	.byte	FINE

	@********************** Track  4 **********************@

	.global song021_4
song021_4:	@ 0x087AA538
	.byte	KEYSH	, 0
song021_4_10:
	.byte	VOICE	, 123
	.byte	MOD	, 0
	.byte	VOL	, v086
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song021_4_1:
	.byte	W01
	.byte		N30	, An3, v116
	.byte	W36
	.byte	W01
	.byte		N17	, Gn3
	.byte	W23
	.byte		N14	, Fs3
	.byte	W24
	.byte		N36	, Dn3, v108
	.byte	W11
	.byte	PEND
song021_4_2:
	.byte	W36
	.byte	W02
	.byte		N04	, Dn3, v104
	.byte	W12
	.byte		N10	, Fs3, v108
	.byte	W10
	.byte		N04	, En3, v096
	.byte	W13
	.byte		N05	, Dn3, v108
	.byte	W12
	.byte		N03	, Dn3, v100
	.byte	W11
	.byte	PEND
song021_4_3:
	.byte		N30	, En3, v116
	.byte	W36
	.byte	W02
	.byte		N28	, Bn3, v108
	.byte	W36
	.byte		N76	, Cn4, v116
	.byte	W22
	.byte	PEND
	.byte	W96
song021_4_4:
	.byte	W23
	.byte		N03	, Gs3, v076
	.byte	W01
	.byte		N15	, An3, v104
	.byte	W13
	.byte		N13	, Gn3, v096
	.byte	W10
	.byte		N03	, Gs3, v076
	.byte	W01
	.byte		N15	, An3, v104
	.byte	W13
	.byte		N13	, Gn3, v096
	.byte	W11
	.byte		N15	, Fs3, v108
	.byte	W12
	.byte		N48	, Dn3, v120
	.byte	W12
	.byte	PEND
song021_4_5:
	.byte	W32
	.byte	W03
	.byte		N03	, Fn3, v076
	.byte	W01
	.byte		N24	, Fs3, v108
	.byte	W24
	.byte	W02
	.byte		N13	, Gn3, v092
	.byte	W11
	.byte		N11	, An3, v080
	.byte	W12
	.byte		N07	, Dn4, v108
	.byte	W11
	.byte	PEND
song021_4_6:
	.byte		N28	, Fs4, v100
	.byte	W36
	.byte	W01
	.byte			Gn4
	.byte	W36
	.byte		N48	, En4, v116
	.byte	W23
	.byte	PEND
	.byte	W96
	.byte	W24
	.byte		N17	, Dn3, v084
	.byte	W24
	.byte		N04	, Dn3, v072
	.byte	W12
	.byte		N05	, An2, v080
	.byte	W24
	.byte		N32	, Cn3, v084
	.byte	W12
	.byte	W96
	.byte	W24
	.byte		N17	, Dn3, v096
	.byte	W24
	.byte		N04	, Dn3, v080
	.byte	W12
	.byte		N05	, An2, v084
	.byte	W24
	.byte		N32	, Cn3, v080
	.byte	W12
	.byte	W96
	.byte	PATT	
		mPtr	song021_4_1
	.byte	PATT	
		mPtr	song021_4_2
	.byte	PATT	
		mPtr	song021_4_3
	.byte	W96
	.byte	PATT	
		mPtr	song021_4_4
	.byte	PATT	
		mPtr	song021_4_5
	.byte	PATT	
		mPtr	song021_4_6
	.byte	W96
song021_4_7:
	.byte	W02
	.byte		N32	, Dn4, v108
	.byte	W36
	.byte		N24	, An4, v116
	.byte	W24
	.byte		N17	, Gn4, v100
	.byte	W24
	.byte		N44	, Fs4, v096
	.byte	W10
	.byte	PEND
song021_4_8:
	.byte	W36
	.byte	W02
	.byte		N18	, Dn4, v104
	.byte	W24
	.byte		N05	, Dn4, v088
	.byte	W12
	.byte		N12	, Fs4, v108
	.byte	W12
	.byte		N03	, Dn4, v072
	.byte	W10
	.byte	PEND
song021_4_9:
	.byte	W02
	.byte		N30	, Fs4, v116
	.byte	W36
	.byte		N28	, Gn4, v108
	.byte	W36
	.byte	W01
	.byte		N90	, En4, v116
	.byte	W21
	.byte	PEND
	.byte	W96
	.byte	PATT	
		mPtr	song021_4_7
	.byte	PATT	
		mPtr	song021_4_8
	.byte	PATT	
		mPtr	song021_4_9
	.byte	W96
	.byte	PATT	
		mPtr	song021_4_7
	.byte	PATT	
		mPtr	song021_4_8
	.byte	PATT	
		mPtr	song021_4_9
	.byte	W96
	.byte	PATT	
		mPtr	song021_4_7
	.byte	PATT	
		mPtr	song021_4_8
	.byte	PATT	
		mPtr	song021_4_9
	.byte	W96
	.byte	GOTO	
		mPtr	song021_4_10
	.byte	FINE

	@********************** Track  5 **********************@

	.global song021_5
song021_5:	@ 0x087AA673
	.byte	KEYSH	, 0
song021_5_1:
	.byte	VOICE	, 76
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte	W17
	.byte		N02	, Fn3, v092
	.byte	W02
	.byte			Gn3, v088
	.byte	W01
	.byte			Gs3, v092
	.byte	W04
	.byte		N18	, An3
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N08	, An3, v072
	.byte	W24
	.byte	W01
	.byte		TIE	, Gn3, v104
	.byte	W11
	.byte	W96
	.byte	W02
	.byte		EOT	
	.byte	W15
	.byte		N02	, Fn3, v092
	.byte	W02
	.byte			Gn3, v088
	.byte	W01
	.byte			Gs3, v092
	.byte	W04
	.byte		N16	, An3, v088
	.byte	W23
	.byte		N05	, An3, v104
	.byte	W12
	.byte		N07	, An3, v108
	.byte	W24
	.byte	W01
	.byte		TIE	, Gn3
	.byte	W12
	.byte	W92
	.byte		EOT	
	.byte	W04
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
		mPtr	song021_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song021_6
song021_6:	@ 0x087AA6DF
	.byte	KEYSH	, 0
song021_6_10:
	.byte	VOICE	, 124
	.byte	VOL	, v071
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song021_6_1:
	.byte	W24
	.byte		N12	, Fs3, v096
	.byte	W18
	.byte		N03	, Fs3, v080
	.byte	W06
	.byte		N04	, Fs3, v096
	.byte	W12
	.byte		N06	, Fs3, v116
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte	PEND
song021_6_2:
	.byte	W12
	.byte		N05	, Fs3, v108
	.byte	W48
	.byte			Fs3, v072
	.byte	W24
	.byte		N60	, Gn3, v100
	.byte	W12
	.byte	PEND
	.byte	W96
song021_6_3:
	.byte	W12
	.byte		N05	, Gn3, v116
	.byte	W24
	.byte			Gn3, v108
	.byte	W24
	.byte			Dn4, v116
	.byte	W36
	.byte	PEND
	.byte	PATT	
		mPtr	song021_6_1
	.byte	PATT	
		mPtr	song021_6_2
	.byte	W96
	.byte	PATT	
		mPtr	song021_6_3
	.byte		N12	, An3, v072
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Dn5
	.byte	W12
	.byte			Fs5
	.byte	W12
	.byte			An5
	.byte	W12
	.byte			Dn6
	.byte	W12
	.byte			Cn5
	.byte	W12
	.byte			Cn6
	.byte	W12
	.byte			Gn5
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			Cn5
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			Fs5
	.byte	W12
	.byte			Dn5
	.byte	W12
	.byte			An5
	.byte	W12
	.byte			Dn6
	.byte	W12
	.byte			En6
	.byte	W12
	.byte			Cn6
	.byte	W12
	.byte			Gn5
	.byte	W12
	.byte			Cn5
	.byte	W12
	.byte			En5
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			Cn5
	.byte	W12
	.byte			En4
	.byte	W12
	.byte	PATT	
		mPtr	song021_6_1
	.byte	PATT	
		mPtr	song021_6_2
	.byte	W96
	.byte	PATT	
		mPtr	song021_6_3
	.byte	PATT	
		mPtr	song021_6_1
	.byte	PATT	
		mPtr	song021_6_2
	.byte	W96
	.byte	PATT	
		mPtr	song021_6_3
song021_6_5:
	.byte	W02
	.byte		N92	, Dn3, v108
	.byte	W92
	.byte	W02
	.byte	PEND
song021_6_4:
	.byte	W02
	.byte		N80	, An3, v108
	.byte	W80
	.byte	W02
	.byte		N05	, Gn3
	.byte	W06
	.byte		N08	, Fs3
	.byte	W06
	.byte	PEND
song021_6_6:
	.byte	W02
	.byte		N44	, Gn3, v108
	.byte	W44
	.byte	W02
	.byte		N06	, Cn4, v127
	.byte	W06
	.byte			Dn4, v124
	.byte	W06
	.byte			En4, v120
	.byte	W06
	.byte			Gn4, v116
	.byte	W06
	.byte			Cn4, v112
	.byte	W06
	.byte			Dn4, v108
	.byte	W06
	.byte			En4, v104
	.byte	W06
	.byte			Gn4, v100
	.byte	W06
	.byte	PEND
song021_6_7:
	.byte		N06	, Cn4, v096
	.byte	W06
	.byte			Dn4, v092
	.byte	W06
	.byte			En4, v088
	.byte	W06
	.byte			Gn4, v084
	.byte	W06
	.byte			Cn4, v080
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte			En4, v072
	.byte	W06
	.byte			Gn4, v068
	.byte	W06
	.byte			Cn4, v064
	.byte	W06
	.byte			Dn4, v060
	.byte	W06
	.byte			En4, v056
	.byte	W06
	.byte			Gn4, v052
	.byte	W06
	.byte			Cn4, v048
	.byte	W06
	.byte			Dn4, v044
	.byte	W06
	.byte			En4, v040
	.byte	W06
	.byte			Gn4, v036
	.byte	W06
	.byte	PEND
song021_6_8:
	.byte	W02
	.byte		N92	, Dn3, v116
	.byte	W92
	.byte	W02
	.byte	PEND
	.byte	PATT	
		mPtr	song021_6_4
song021_6_9:
	.byte	W02
	.byte		TIE	, Gn3, v108
	.byte	W92
	.byte	W02
	.byte	PEND
	.byte	W92
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte	PATT	
		mPtr	song021_6_5
	.byte	PATT	
		mPtr	song021_6_4
	.byte	PATT	
		mPtr	song021_6_6
	.byte	PATT	
		mPtr	song021_6_7
	.byte	PATT	
		mPtr	song021_6_8
	.byte	PATT	
		mPtr	song021_6_4
	.byte	PATT	
		mPtr	song021_6_9
	.byte	W92
	.byte	W02
	.byte		EOT	, Gn3
	.byte	W02
	.byte	GOTO	
		mPtr	song021_6_10
	.byte	FINE

	@********************** Track  7 **********************@

	.global song021_7
song021_7:	@ 0x087AA836
	.byte	KEYSH	, 0
song021_7_6:
	.byte	VOICE	, 74
	.byte	VOL	, v071
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song021_7_1:
	.byte	W12
	.byte		N04	, En3, v116
	.byte		N05	, Gn3, v104
	.byte	W24
	.byte	W01
	.byte		N04	, En3, v116
	.byte		N05	, Gn3
	.byte	W23
	.byte		N12	, Gn3, v127
	.byte	W01
	.byte		N11	, Dn4
	.byte	W12
	.byte		N01	, Cn4, v116
	.byte	W02
	.byte		N02	, Bn3, v092
	.byte	W01
	.byte			An3, v088
	.byte	W02
	.byte			Gn3, v068
	.byte	W02
	.byte			Fn3, v064
	.byte	W02
	.byte			En3, v092
	.byte	W14
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song021_7_1
	.byte	W24
	.byte		N17	, Dn3, v108
	.byte		N18	, Fs3, v104
	.byte	W24
	.byte		N04	, Dn3, v096
	.byte		N05	, Fs3, v088
	.byte	W12
	.byte			An2, v104
	.byte		N06	, Dn3, v108
	.byte	W24
	.byte		N11	, Cn3
	.byte	W01
	.byte		N19	, En3, v127
	.byte	W11
song021_7_2:
	.byte	W06
	.byte		N04	, Dn3, v056
	.byte	W03
	.byte		N03	, Cn3, v064
	.byte	W03
	.byte			Bn2, v072
	.byte	W02
	.byte			An2
	.byte	W02
	.byte			Gn2, v060
	.byte	W80
	.byte	PEND
	.byte	W24
	.byte		N17	, Dn3, v120
	.byte		N17	, Fs3, v108
	.byte	W18
	.byte		N05	, Fs3, v096
	.byte	W06
	.byte		N04	, Dn3, v104
	.byte		N06	, Fs3, v096
	.byte	W12
	.byte		N05	, An2, v108
	.byte		N06	, Dn3, v104
	.byte	W24
	.byte		N11	, Cn3
	.byte	W01
	.byte		N19	, En3, v127
	.byte	W11
	.byte	PATT	
		mPtr	song021_7_2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song021_7_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song021_7_1
song021_7_5:
	.byte	W02
	.byte		N92	, Dn2, v108
	.byte	W92
	.byte	W02
	.byte	PEND
song021_7_3:
	.byte	W02
	.byte		N80	, An2, v108
	.byte	W80
	.byte	W02
	.byte		N05	, Gn2
	.byte	W06
	.byte		N08	, Fs2
	.byte	W06
	.byte	PEND
song021_7_4:
	.byte	W02
	.byte		TIE	, Gn2, v108
	.byte	W92
	.byte	W02
	.byte	PEND
	.byte	W96
	.byte	W01
	.byte		EOT	
	.byte	W01
	.byte		N92	, Dn2
	.byte	W92
	.byte	W02
	.byte	PATT	
		mPtr	song021_7_3
	.byte	PATT	
		mPtr	song021_7_4
	.byte	W92
	.byte	W02
	.byte		EOT	, Gn2
	.byte	W02
	.byte	PATT	
		mPtr	song021_7_5
	.byte	PATT	
		mPtr	song021_7_3
	.byte	PATT	
		mPtr	song021_7_4
	.byte	W96
	.byte	W01
	.byte		EOT	, Gn2
	.byte	W01
	.byte		N92	, Dn2, v108
	.byte	W92
	.byte	W02
	.byte	PATT	
		mPtr	song021_7_3
	.byte	PATT	
		mPtr	song021_7_4
	.byte	W92
	.byte	W02
	.byte		EOT	, Gn2
	.byte	W02
	.byte	GOTO	
		mPtr	song021_7_6
	.byte	FINE

	mAlignWord
	.global song021
song021:	@ 0x087AA93C
	.byte	7		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

mAlignWord
	mPtr	voicegroup007		@ voicegroup/tone

	mPtr	song021_1		@ track
	mPtr	song021_2		@ track
	mPtr	song021_3		@ track
	mPtr	song021_4		@ track
	mPtr	song021_5		@ track
	mPtr	song021_6		@ track
	mPtr	song021_7		@ track
