	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song019_1
song019_1:	@ 0x087A8584
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 63
	.byte	VOL	, v069
	.byte	PAN	, c_v
	.byte	W24
	.byte		N23	, An3, v108
	.byte	W24
	.byte		N11	, An3, v096
	.byte	W12
	.byte		N23	, En3
	.byte	W24
	.byte			An3, v104
	.byte	W12
song019_1_1:
	.byte	W12
	.byte		N11	, En3, v096
	.byte	W12
	.byte		N23	, An3, v104
	.byte	W24
	.byte		N11	, An3, v100
	.byte	W12
	.byte		N52	, En3
	.byte	W36
	.byte	PEND
song019_1_2:
	.byte	W24
	.byte		N23	, Fs3, v104
	.byte	W24
	.byte		N11	, En3, v108
	.byte	W12
	.byte		N23	, Fs3, v076
	.byte	W24
	.byte			Gs3, v116
	.byte	W12
	.byte	PEND
song019_1_3:
	.byte	W12
	.byte		N23	, An3, v108
	.byte	W24
	.byte			Gs3, v104
	.byte	W24
	.byte		N11	, An3, v100
	.byte	W12
	.byte		N23	, Gs3, v096
	.byte	W24
	.byte	PEND
song019_1_4:
	.byte	W24
	.byte		N23	, An3, v108
	.byte	W24
	.byte		N11	, An3, v096
	.byte	W12
	.byte		N23	, En3
	.byte	W24
	.byte			An3, v104
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song019_1_1
	.byte	PATT	
		.word	song019_1_2
	.byte	PATT	
		.word	song019_1_3
	.byte	PATT	
		.word	song019_1_4
song019_1_5:
	.byte	W12
	.byte		N11	, En3, v096
	.byte	W12
	.byte		N23	, An3, v104
	.byte	W24
	.byte		N11	, An3, v100
	.byte	W12
	.byte		N44	, En3
	.byte	W36
	.byte	PEND
	.byte	PATT	
		.word	song019_1_2
	.byte	PATT	
		.word	song019_1_3
	.byte	PATT	
		.word	song019_1_4
	.byte	PATT	
		.word	song019_1_5
	.byte	PATT	
		.word	song019_1_2
	.byte	PATT	
		.word	song019_1_3
song019_1_6:
	.byte	W24
	.byte		N06	, En3, v088
	.byte	W36
	.byte		N03	
	.byte	W24
	.byte		N19	, Cs3, v076
	.byte	W12
	.byte	PEND
song019_1_7:
	.byte	W12
	.byte		N04	, En3, v080
	.byte	W24
	.byte		N36	, Cs3, v096
	.byte	W60
	.byte	PEND
song019_1_8:
	.byte	W24
	.byte		N09	, Dn3, v100
	.byte	W36
	.byte		N19	, Dn3, v080
	.byte	W24
	.byte		N06	, En3, v076
	.byte	W12
	.byte	PEND
song019_1_9:
	.byte	W12
	.byte		N18	, En3, v092
	.byte	W24
	.byte		N17	, En3, v076
	.byte	W60
	.byte	PEND
	.byte	PATT	
		.word	song019_1_4
	.byte	PATT	
		.word	song019_1_5
	.byte	PATT	
		.word	song019_1_2
	.byte	PATT	
		.word	song019_1_3
	.byte	PATT	
		.word	song019_1_4
	.byte	PATT	
		.word	song019_1_5
	.byte	PATT	
		.word	song019_1_2
	.byte	PATT	
		.word	song019_1_3
	.byte	PATT	
		.word	song019_1_6
	.byte	PATT	
		.word	song019_1_7
	.byte	PATT	
		.word	song019_1_8
	.byte	PATT	
		.word	song019_1_9
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song019_1_4
	.byte	PATT	
		.word	song019_1_1
	.byte	PATT	
		.word	song019_1_2
	.byte	PATT	
		.word	song019_1_3
	.byte	GOTO	
		.word	song019_1_4
	.byte	FINE

	@********************** Track  2 **********************@

	.global song019_2
song019_2:	@ 0x087A86AF
	.byte	KEYSH	, 0
	.byte	VOICE	, 61
	.byte	VOL	, v074
	.byte	PAN	, c_v
	.byte	W24
	.byte		N12	, En4, v056
	.byte	W24
	.byte			En4, v044
	.byte	W12
	.byte			Cs4
	.byte	W24
	.byte			En4, v056
	.byte	W12
song019_2_1:
	.byte	W12
	.byte		N12	, Cs4, v056
	.byte	W12
	.byte			En4, v052
	.byte	W24
	.byte			En4, v036
	.byte	W12
	.byte			Cs4, v028
	.byte	W36
	.byte	PEND
song019_2_2:
	.byte	W24
	.byte		N12	, Dn4, v044
	.byte	W24
	.byte			An3
	.byte	W12
	.byte			Dn4
	.byte	W24
	.byte			En4, v072
	.byte	W12
	.byte	PEND
song019_2_3:
	.byte	W12
	.byte		N12	, En4, v060
	.byte	W24
	.byte			En4, v072
	.byte	W24
	.byte			En4, v044
	.byte	W12
	.byte			En4, v048
	.byte	W24
	.byte	PEND
song019_2_4:
	.byte	W24
	.byte		N12	, En4, v056
	.byte	W24
	.byte			En4, v044
	.byte	W12
	.byte			Cs4
	.byte	W24
	.byte			En4, v056
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song019_2_1
	.byte	PATT	
		.word	song019_2_2
	.byte	PATT	
		.word	song019_2_3
	.byte	PATT	
		.word	song019_2_4
	.byte	PATT	
		.word	song019_2_1
	.byte	PATT	
		.word	song019_2_2
	.byte	PATT	
		.word	song019_2_3
	.byte	PATT	
		.word	song019_2_4
	.byte	PATT	
		.word	song019_2_1
	.byte	PATT	
		.word	song019_2_2
	.byte	PATT	
		.word	song019_2_3
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song019_2_4
	.byte	PATT	
		.word	song019_2_1
	.byte	PATT	
		.word	song019_2_2
	.byte	PATT	
		.word	song019_2_3
	.byte	PATT	
		.word	song019_2_4
	.byte	PATT	
		.word	song019_2_1
	.byte	PATT	
		.word	song019_2_2
	.byte	PATT	
		.word	song019_2_3
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song019_2_5:
	.byte		N48	, An2, v080
	.byte		N48	, En3, v056
	.byte	W48
	.byte			Cs3, v088
	.byte		N48	, An3, v072
	.byte	W48
	.byte	PEND
song019_2_6:
	.byte		N48	, En3, v088
	.byte		N48	, Cs4, v080
	.byte	W48
	.byte			Cs3, v092
	.byte		N48	, An3, v072
	.byte	W48
	.byte	PEND
song019_2_7:
	.byte		N48	, An2, v076
	.byte		N48	, Fn3, v080
	.byte	W48
	.byte			An2, v092
	.byte		N48	, En3, v068
	.byte	W48
	.byte	PEND
song019_2_8:
	.byte		N48	, Gn2, v064
	.byte		N48	, Dn3, v092
	.byte	W48
	.byte			Bn2, v076
	.byte		N48	, Gn3
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song019_2_5
	.byte	PATT	
		.word	song019_2_6
	.byte	PATT	
		.word	song019_2_7
	.byte	PATT	
		.word	song019_2_8
	.byte	PATT	
		.word	song019_2_4
	.byte	PATT	
		.word	song019_2_1
	.byte	PATT	
		.word	song019_2_2
	.byte	PATT	
		.word	song019_2_3
	.byte	GOTO	
		.word	song019_2_4
	.byte	FINE

	@********************** Track  3 **********************@

	.global song019_3
song019_3:	@ 0x087A87C9
	.byte	KEYSH	, 0
	.byte	VOICE	, 125
	.byte	MOD	, 0
	.byte	VOL	, v074
	.byte	PAN	, c_v
	.byte	W96
song019_3_13:
	.byte		N06	, En3, v072
	.byte	W06
	.byte			An2, v068
	.byte	W06
	.byte			Cs3, v092
	.byte	W06
	.byte			En3, v084
	.byte	W06
	.byte			An3, v088
	.byte	W06
	.byte			Cs3, v068
	.byte	W06
	.byte			En3, v072
	.byte	W06
	.byte			An3, v080
	.byte	W06
	.byte			Cs4, v092
	.byte	W06
	.byte			En3, v064
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Cs4, v068
	.byte	W06
	.byte			En4, v092
	.byte	W06
	.byte			Gn3, v052
	.byte	W06
	.byte			Cs4, v068
	.byte	W06
	.byte			En4, v080
	.byte	W06
	.byte	PEND
song019_3_14:
	.byte		N06	, An4, v092
	.byte	W06
	.byte			Dn4, v072
	.byte	W06
	.byte			Fs4, v088
	.byte	W06
	.byte			An4, v072
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			Fs4, v068
	.byte	W06
	.byte			An4, v064
	.byte	W06
	.byte			Dn5, v060
	.byte	W06
	.byte			Fs5
	.byte	W06
	.byte			An4, v056
	.byte	W06
	.byte			Dn5, v052
	.byte	W06
	.byte			Fs5, v048
	.byte	W06
	.byte			An5
	.byte	W06
	.byte			Dn5, v044
	.byte	W06
	.byte			Fs5, v040
	.byte	W06
	.byte			An5, v036
	.byte	W06
	.byte	PEND
song019_3_15:
	.byte		N06	, Bn5, v036
	.byte	W06
	.byte			Gs5, v032
	.byte	W06
	.byte			En5, v028
	.byte	W06
	.byte			Bn4, v024
	.byte	W06
	.byte			En5, v020
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Gs4, v016
	.byte	W06
	.byte			En4, v012
	.byte	W06
	.byte			Bn4, v008
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			En4, v004
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte	PEND
song019_3_16:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song019_3_1:
	.byte		N32	, An3, v112
	.byte	W36
	.byte		N88	, En3
	.byte	W60
	.byte	PEND
song019_3_2:
	.byte	W36
	.byte		N21	, Fs3, v112
	.byte	W24
	.byte		N12	, Gn3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte	PEND
song019_3_3:
	.byte		N36	, Dn3, v112
	.byte	W36
	.byte		N17	, Cs3
	.byte	W24
	.byte		N15	, Dn3
	.byte	W24
	.byte		N88	, Bn2
	.byte	W12
	.byte	PEND
	.byte	W96
song019_3_4:
	.byte		N32	, An3, v112
	.byte	W36
	.byte		N84	, En3
	.byte	W60
	.byte	PEND
song019_3_5:
	.byte	W36
	.byte		N19	, An3, v112
	.byte	W24
	.byte		N24	, Bn3
	.byte	W24
	.byte		N06	, Cs4
	.byte	W12
	.byte	PEND
song019_3_6:
	.byte		N24	, Cs4, v112
	.byte	W24
	.byte		N11	, Dn4
	.byte	W12
	.byte		N24	, En4
	.byte	W24
	.byte			Dn4
	.byte	W24
	.byte		N60	, Cs4
	.byte	W12
	.byte	PEND
song019_3_7:
	.byte	W60
	.byte		N20	, Cs4, v112
	.byte	W24
	.byte		N05	, Bn3
	.byte	W12
	.byte	PEND
song019_3_8:
	.byte		N24	, Bn3, v112
	.byte	W24
	.byte		N09	, Cs4
	.byte	W12
	.byte		N48	, An3
	.byte	W60
	.byte	PEND
song019_3_9:
	.byte	W48
	.byte		N19	, Fs3, v112
	.byte	W24
	.byte		N17	, An3
	.byte	W24
	.byte	PEND
song019_3_10:
	.byte		N20	, En4, v112
	.byte	W24
	.byte		N11	, Dn4
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte		N23	, Gs4
	.byte	W12
	.byte	PEND
song019_3_11:
	.byte	W12
	.byte		N11	, Fs4, v112
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N10	, An3
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song019_3_1
	.byte	PATT	
		.word	song019_3_2
	.byte	PATT	
		.word	song019_3_3
	.byte	W96
	.byte	PATT	
		.word	song019_3_4
	.byte	PATT	
		.word	song019_3_5
	.byte	PATT	
		.word	song019_3_6
	.byte	PATT	
		.word	song019_3_7
	.byte	PATT	
		.word	song019_3_8
	.byte	PATT	
		.word	song019_3_9
	.byte	PATT	
		.word	song019_3_10
	.byte	PATT	
		.word	song019_3_11
song019_3_12:
	.byte		N44	, An3, v116
	.byte	W48
	.byte			En4
	.byte	W48
	.byte	PEND
	.byte			Cs4, v108
	.byte	W48
	.byte			An4, v104
	.byte	W48
	.byte		N23	, Fn4
	.byte	W24
	.byte		N11	, En4, v100
	.byte	W12
	.byte		N23	, Cn4
	.byte	W24
	.byte		N11	, An3, v104
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte		N23	, Dn4
	.byte	W24
	.byte		N11	, Cn4, v096
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N17	, Gn3
	.byte	W48
	.byte	PATT	
		.word	song019_3_12
	.byte		N56	, Cs4, v108
	.byte	W60
	.byte		N11	, Cs5, v104
	.byte	W12
	.byte			Dn5
	.byte	W12
	.byte			En5
	.byte	W12
	.byte		N23	, Fn5
	.byte	W24
	.byte		N11	, En5
	.byte	W12
	.byte			Cn5
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			An4
	.byte	W12
	.byte		N17	, Gn4
	.byte	W18
	.byte			Dn4
	.byte	W18
	.byte			Bn4
	.byte	W18
	.byte			Gn4
	.byte	W18
	.byte			Dn5
	.byte	W18
	.byte		N84	, Gn5
	.byte	W06
	.byte	W96
	.byte	PATT	
		.word	song019_3_13
	.byte	PATT	
		.word	song019_3_14
	.byte	PATT	
		.word	song019_3_15
	.byte	GOTO	
		.word	song019_3_16
	.byte	FINE

	@********************** Track  4 **********************@

	.global song019_4
song019_4:	@ 0x087A8996
	.byte	KEYSH	, 0
	.byte	VOICE	, 54
	.byte	VOL	, v084
	.byte	PAN	, c_v
	.byte		N12	, An1, v127
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N24	, Dn3
	.byte	W24
	.byte			Cs3
	.byte	W24
	.byte			Gn1
	.byte	W12
song019_4_1:
	.byte	W12
	.byte		N12	, En2, v127
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N24	, Dn3
	.byte	W24
	.byte		N36	, Cs3
	.byte	W36
	.byte	PEND
song019_4_2:
	.byte		N12	, Dn1, v127
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte		N24	, Gn2
	.byte	W24
	.byte			Fs2
	.byte	W24
	.byte			En1
	.byte	W12
	.byte	PEND
song019_4_3:
	.byte	W12
	.byte		N12	, Bn1, v127
	.byte	W12
	.byte			En2
	.byte	W12
	.byte		N24	, An2
	.byte	W24
	.byte		N36	, Gs2
	.byte	W36
	.byte	PEND
song019_4_4:
	.byte		N12	, An1, v127
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N24	, Dn3
	.byte	W24
	.byte			Cs3
	.byte	W24
	.byte			Gn1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song019_4_1
	.byte	PATT	
		.word	song019_4_2
	.byte	PATT	
		.word	song019_4_3
	.byte	PATT	
		.word	song019_4_4
	.byte	PATT	
		.word	song019_4_1
	.byte	PATT	
		.word	song019_4_2
	.byte	PATT	
		.word	song019_4_3
	.byte	PATT	
		.word	song019_4_4
	.byte	PATT	
		.word	song019_4_1
	.byte	PATT	
		.word	song019_4_2
	.byte	PATT	
		.word	song019_4_3
song019_4_5:
	.byte		N23	, Fs2, v127
	.byte	W24
	.byte		N11	, Cs2
	.byte	W12
	.byte		N23	, Fs2
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W12
	.byte	PEND
song019_4_6:
	.byte	W12
	.byte		N11	, Fs2, v127
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte		N23	, Fs2
	.byte	W24
	.byte		N11	, Fs2, v116
	.byte	W12
	.byte			An2, v127
	.byte	W12
	.byte			Fs2, v120
	.byte	W12
	.byte	PEND
song019_4_7:
	.byte		N11	, Dn2, v127
	.byte	W12
	.byte			Dn2, v112
	.byte	W12
	.byte			Fs2, v127
	.byte	W12
	.byte			Dn2, v116
	.byte	W12
	.byte		N23	, An2
	.byte	W24
	.byte		N11	, Dn2
	.byte	W12
	.byte		N23	, En2, v127
	.byte	W12
	.byte	PEND
song019_4_8:
	.byte	W12
	.byte		N23	, En2, v127
	.byte	W24
	.byte			Bn2
	.byte	W24
	.byte		N11	, En2
	.byte	W12
	.byte		N23	, Bn2
	.byte	W24
	.byte	PEND
	.byte		N11	, An1
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N24	, Dn3
	.byte	W24
	.byte			Cs3
	.byte	W24
	.byte			Gn1
	.byte	W12
	.byte	PATT	
		.word	song019_4_1
	.byte	PATT	
		.word	song019_4_2
	.byte	PATT	
		.word	song019_4_3
	.byte	PATT	
		.word	song019_4_4
	.byte	PATT	
		.word	song019_4_1
	.byte	PATT	
		.word	song019_4_2
	.byte	PATT	
		.word	song019_4_3
	.byte	PATT	
		.word	song019_4_5
	.byte	PATT	
		.word	song019_4_6
	.byte	PATT	
		.word	song019_4_7
	.byte	PATT	
		.word	song019_4_8
song019_4_9:
	.byte		N23	, An2, v127
	.byte	W24
	.byte		N11	, En2
	.byte	W12
	.byte		N23	, An2
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N11	, En2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song019_4_9
	.byte		N23	, Fn2, v127
	.byte	W24
	.byte		N11	, Cn2
	.byte	W12
	.byte		N23	, Fn2
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N11	, Cn2
	.byte	W12
	.byte		N23	, Gn2
	.byte	W24
	.byte		N11	, Dn2
	.byte	W12
	.byte		N23	, Gn2
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N11	, Dn2
	.byte	W12
	.byte	PATT	
		.word	song019_4_9
	.byte	PATT	
		.word	song019_4_9
	.byte		N11	, Fn2, v127
	.byte	W12
	.byte			Fn2, v112
	.byte	W12
	.byte			An2, v127
	.byte	W12
	.byte			Fn2, v116
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte		N23	, Gn2, v127
	.byte	W12
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte			Dn3
	.byte	W24
	.byte		N11	, Gn2
	.byte	W12
	.byte		N22	, Dn3
	.byte	W24
	.byte	PATT	
		.word	song019_4_4
	.byte	PATT	
		.word	song019_4_1
	.byte	PATT	
		.word	song019_4_2
	.byte	PATT	
		.word	song019_4_3
	.byte	GOTO	
		.word	song019_4_4
	.byte	FINE

	@********************** Track  5 **********************@

	.global song019_5
song019_5:	@ 0x087A8B27
	.byte	KEYSH	, 0
	.byte	VOICE	, 74
	.byte	VOL	, v097
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song019_5_4:
	.byte	W24
	.byte		N12	, En3, v080
	.byte		N12	, An3
	.byte	W24
	.byte			En3
	.byte		N12	, An3
	.byte	W12
	.byte			Cs3
	.byte		N12	, En3
	.byte	W24
	.byte		N12	
	.byte		N12	, An3
	.byte	W12
	.byte	W12
	.byte			Cs3
	.byte		N12	, En3
	.byte	W12
	.byte		N12	
	.byte		N12	, An3
	.byte	W24
	.byte			En3
	.byte		N12	, An3
	.byte	W12
	.byte			Cs3
	.byte		N12	, En3
	.byte	W36
	.byte	W24
	.byte			Dn3
	.byte		N12	, Fs3
	.byte	W24
	.byte			En3
	.byte		N12	, An3
	.byte	W12
	.byte			Dn3
	.byte		N12	, Fs3
	.byte	W24
	.byte			En3
	.byte		N12	, Gs3
	.byte	W12
	.byte	W12
	.byte			En3
	.byte		N12	, An3
	.byte	W24
	.byte			En3
	.byte		N12	, Bn3
	.byte	W24
	.byte			En3
	.byte		N12	, An3
	.byte	W12
	.byte			En3
	.byte		N12	, Gs3
	.byte	W24
song019_5_1:
	.byte		N17	, En3, v127
	.byte		N18	, An3
	.byte	W18
	.byte		N01	, Gn3, v104
	.byte	W03
	.byte		N03	, Fn3, v100
	.byte	W02
	.byte		N02	, En3, v060
	.byte	W03
	.byte		N01	, Dn3, v116
	.byte	W01
	.byte		N02	, Cn3, v096
	.byte	W01
	.byte			Bn2
	.byte	W02
	.byte		N01	, An2, v100
	.byte	W02
	.byte			Gn2, v096
	.byte	W01
	.byte			Fn2, v080
	.byte	W01
	.byte			En2, v100
	.byte	W60
	.byte	W02
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song019_5_2:
	.byte	W24
	.byte		N06	, An2, v096
	.byte		N06	, En3, v088
	.byte	W36
	.byte			An2, v080
	.byte		N03	, En3, v088
	.byte	W24
	.byte		N18	, Fs2, v080
	.byte		N19	, Cs3, v076
	.byte	W12
	.byte	PEND
song019_5_3:
	.byte	W12
	.byte		N03	, Cs3, v068
	.byte		N04	, En3, v080
	.byte	W24
	.byte		N36	, An2, v096
	.byte		N36	, Cs3, v076
	.byte	W60
	.byte	PEND
	.byte	W24
	.byte		N11	, An2, v112
	.byte		N09	, Dn3
	.byte	W36
	.byte		N20	, An2
	.byte		N19	, Dn3
	.byte	W24
	.byte		N06	, Bn2
	.byte		N06	, En3
	.byte	W12
	.byte	W12
	.byte		N08	, Bn2
	.byte		N08	, En3
	.byte	W24
	.byte		N17	, Bn2
	.byte		N17	, En3
	.byte	W60
	.byte	PATT	
		.word	song019_5_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song019_5_2
	.byte	PATT	
		.word	song019_5_3
	.byte	W24
	.byte		N11	, An2, v096
	.byte		N09	, Dn3, v100
	.byte	W36
	.byte		N20	, An2, v080
	.byte		N19	, Dn3
	.byte	W24
	.byte		N06	, Bn2, v060
	.byte		N06	, En3, v076
	.byte	W12
	.byte	W12
	.byte		N08	, Bn2, v104
	.byte		N08	, En3, v092
	.byte	W24
	.byte		N17	, Bn2, v072
	.byte		N17	, En3, v076
	.byte	W60
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
		.word	song019_5_4
	.byte	FINE

	@********************** Track  6 **********************@

	.global song019_6
song019_6:	@ 0x087A8C39
	.byte	KEYSH	, 0
	.byte	VOICE	, 126
	.byte	VOL	, v074
	.byte	PAN	, c_v
	.byte	W24
	.byte		N06	, An4, v076
	.byte	W24
	.byte			An4, v064
	.byte	W12
	.byte			En4
	.byte	W24
	.byte			An4, v072
	.byte	W12
song019_6_1:
	.byte	W12
	.byte		N06	, En4, v064
	.byte	W12
	.byte			An4, v072
	.byte	W24
	.byte			An4, v068
	.byte	W12
	.byte			En4
	.byte	W36
	.byte	PEND
song019_6_2:
	.byte	W24
	.byte		N06	, Fs4, v072
	.byte	W24
	.byte			En4, v076
	.byte	W12
	.byte			Fs4, v044
	.byte	W24
	.byte			Gs4, v084
	.byte	W12
	.byte	PEND
song019_6_3:
	.byte	W12
	.byte		N06	, An4, v076
	.byte	W24
	.byte			Gs4, v072
	.byte	W24
	.byte			An4, v068
	.byte	W12
	.byte			Gs4, v064
	.byte	W24
	.byte	PEND
song019_6_15:
	.byte	W24
	.byte		N06	, An4, v076
	.byte	W24
	.byte			An4, v064
	.byte	W12
	.byte			En4
	.byte	W24
	.byte			An4, v072
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song019_6_1
	.byte	PATT	
		.word	song019_6_2
	.byte	PATT	
		.word	song019_6_3
song019_6_4:
	.byte	W24
	.byte		N12	, En3, v052
	.byte	W24
	.byte			En3, v036
	.byte	W12
	.byte			Cs3
	.byte	W24
	.byte			En3, v052
	.byte	W12
	.byte	PEND
song019_6_5:
	.byte	W12
	.byte		N12	, Cs3, v052
	.byte	W12
	.byte			En3, v048
	.byte	W24
	.byte			En3, v028
	.byte	W12
	.byte			Cs3, v020
	.byte	W36
	.byte	PEND
song019_6_6:
	.byte	W24
	.byte		N12	, Dn3, v036
	.byte	W24
	.byte			An2
	.byte	W12
	.byte			Dn3
	.byte	W24
	.byte			En3, v068
	.byte	W12
	.byte	PEND
song019_6_7:
	.byte	W12
	.byte		N12	, En3, v056
	.byte	W24
	.byte			En3, v068
	.byte	W24
	.byte			En3, v036
	.byte	W12
	.byte			En3, v040
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song019_6_4
	.byte	PATT	
		.word	song019_6_5
	.byte	PATT	
		.word	song019_6_6
	.byte	PATT	
		.word	song019_6_7
song019_6_8:
	.byte	W24
	.byte		N06	, An3, v096
	.byte	W36
	.byte			An3, v080
	.byte	W24
	.byte			Fs3
	.byte	W12
	.byte	PEND
song019_6_9:
	.byte	W12
	.byte		N06	, Fs3, v076
	.byte	W24
	.byte			An3, v096
	.byte	W60
	.byte	PEND
song019_6_10:
	.byte	W24
	.byte		N06	, Fs3, v092
	.byte	W36
	.byte			Fs3, v076
	.byte	W24
	.byte			Gs3, v088
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte			Gs3, v068
	.byte	W60
	.byte	PATT	
		.word	song019_6_4
	.byte	PATT	
		.word	song019_6_5
	.byte	PATT	
		.word	song019_6_6
	.byte	PATT	
		.word	song019_6_7
	.byte	PATT	
		.word	song019_6_4
	.byte	PATT	
		.word	song019_6_5
	.byte	PATT	
		.word	song019_6_6
	.byte	PATT	
		.word	song019_6_7
	.byte	PATT	
		.word	song019_6_8
	.byte	PATT	
		.word	song019_6_9
	.byte	PATT	
		.word	song019_6_10
	.byte	W12
	.byte		N06	, Gs3, v096
	.byte	W24
	.byte			Gs3, v068
	.byte	W60
song019_6_11:
	.byte		N48	, En3, v080
	.byte	W48
	.byte			Cs3, v088
	.byte	W48
	.byte	PEND
song019_6_12:
	.byte		N48	, An3, v088
	.byte	W48
	.byte			En3, v092
	.byte	W48
	.byte	PEND
song019_6_13:
	.byte		N48	, Cn4, v076
	.byte	W48
	.byte			Cn4, v092
	.byte	W48
	.byte	PEND
song019_6_14:
	.byte		N48	, Bn3, v064
	.byte	W48
	.byte			Dn4, v076
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song019_6_11
	.byte	PATT	
		.word	song019_6_12
	.byte	PATT	
		.word	song019_6_13
	.byte	PATT	
		.word	song019_6_14
	.byte	PATT	
		.word	song019_6_15
	.byte	PATT	
		.word	song019_6_1
	.byte	PATT	
		.word	song019_6_2
	.byte	PATT	
		.word	song019_6_3
	.byte	GOTO	
		.word	song019_6_15
	.byte	FINE

	@********************** Track  7 **********************@

	.global song019_7
song019_7:	@ 0x087A8D97
	.byte	KEYSH	, 0
	.byte	VOICE	, 62
	.byte	VOL	, v074
	.byte	PAN	, c_v
	.byte	W24
	.byte		N23	, An3, v108
	.byte	W24
	.byte		N11	, An3, v096
	.byte	W12
	.byte		N23	, En3
	.byte	W24
	.byte			An3, v104
	.byte	W12
song019_7_7:
	.byte	W12
	.byte		N11	, En3, v096
	.byte	W12
	.byte		N23	, An3, v104
	.byte	W24
	.byte		N11	, An3, v100
	.byte	W12
	.byte		N56	, En3
	.byte	W36
	.byte	PEND
song019_7_8:
	.byte	W24
	.byte		N23	, Fs3, v104
	.byte	W24
	.byte		N11	, En3, v108
	.byte	W12
	.byte		N23	, Fs3, v076
	.byte	W24
	.byte			Gs3, v116
	.byte	W12
	.byte	PEND
song019_7_9:
	.byte	W12
	.byte		N23	, An3, v108
	.byte	W24
	.byte			Gs3, v104
	.byte	W24
	.byte		N11	, An3, v100
	.byte	W12
	.byte		N23	, Gs3, v096
	.byte	W24
	.byte	PEND
song019_7_10:
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
song019_7_1:
	.byte	W60
	.byte		N20	, Cs4, v088
	.byte	W24
	.byte		N05	, Bn3
	.byte	W12
	.byte	PEND
song019_7_2:
	.byte		N24	, Bn3, v088
	.byte	W24
	.byte		N09	, Cs4
	.byte	W12
	.byte		N48	, An3
	.byte	W60
	.byte	PEND
song019_7_3:
	.byte	W48
	.byte		N19	, Fs3, v088
	.byte	W24
	.byte		N17	, An3
	.byte	W24
	.byte	PEND
song019_7_4:
	.byte		N20	, En4, v088
	.byte	W24
	.byte		N11	, Dn4
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte		N23	, Gs4
	.byte	W12
	.byte	PEND
song019_7_5:
	.byte	W12
	.byte		N11	, Fs4, v088
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N10	, An3
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song019_7_1
	.byte	PATT	
		.word	song019_7_2
	.byte	PATT	
		.word	song019_7_3
	.byte	PATT	
		.word	song019_7_4
	.byte	PATT	
		.word	song019_7_5
song019_7_6:
	.byte		N44	, An3, v116
	.byte	W48
	.byte			En4
	.byte	W48
	.byte	PEND
	.byte			Cs4, v108
	.byte	W48
	.byte			An4, v104
	.byte	W48
	.byte		N23	, Fn4
	.byte	W24
	.byte		N11	, En4, v100
	.byte	W12
	.byte		N23	, Cn4
	.byte	W24
	.byte		N11	, An3, v104
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte		N23	, Dn4
	.byte	W24
	.byte		N11	, Cn4, v096
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N17	, Gn3
	.byte	W48
	.byte	PATT	
		.word	song019_7_6
	.byte		N56	, Cs4, v108
	.byte	W60
	.byte		N11	, Cs5, v104
	.byte	W12
	.byte			Dn5
	.byte	W12
	.byte			En5
	.byte	W12
	.byte		N23	, Fn5
	.byte	W24
	.byte		N11	, En5
	.byte	W12
	.byte			Cn5
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			An4
	.byte	W12
	.byte		N17	, Gn4
	.byte	W18
	.byte			Dn4
	.byte	W18
	.byte			Bn4
	.byte	W18
	.byte			Gn4
	.byte	W18
	.byte			Dn5
	.byte	W18
	.byte		N06	, Gn5
	.byte	W06
	.byte	W24
	.byte		N23	, An3, v108
	.byte	W24
	.byte		N11	, An3, v096
	.byte	W12
	.byte		N23	, En3
	.byte	W24
	.byte			An3, v104
	.byte	W12
	.byte	PATT	
		.word	song019_7_7
	.byte	PATT	
		.word	song019_7_8
	.byte	PATT	
		.word	song019_7_9
	.byte	GOTO	
		.word	song019_7_10
	.byte	FINE

	@********************** Track  8 **********************@

	.global song019_8
song019_8:	@ 0x087A8ECD
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v105
	.byte	PAN	, c_v
	.byte		N72	, Cn1, v127
	.byte		N72	, Cs2, v120
	.byte	W84
	.byte		N92	, Cn1
	.byte		N92	, Cs2, v127
	.byte	W12
	.byte	W96
song019_8_1:
	.byte		N72	, Cn1, v120
	.byte		N76	, Cs2
	.byte	W84
	.byte		N44	, Cn1, v127
	.byte		N44	, Cs2, v120
	.byte	W12
	.byte	PEND
song019_8_2:
	.byte	W36
	.byte		N23	, An1, v120
	.byte	W24
	.byte			Gs1
	.byte	W24
	.byte		N10	, Gn1, v116
	.byte	W12
	.byte	PEND
song019_8_3:
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v036
	.byte		TIE	, Cs2, v127
	.byte	W12
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v044
	.byte	W12
	.byte		N11	, Cn1, v120
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v108
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N06	
	.byte	W11
	.byte		EOT	, Cs2
	.byte	W01
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N11	, Cn1, v108
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cn1, v120
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N11	, Cn1, v116
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v108
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cs1, v120
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v044
	.byte	W12
	.byte			Dn1, v040
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N06	, Dn1, v044
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte		N96	, Cs2, v104
	.byte	W12
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N11	, Cn1, v120
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N23	, Cs1, v108
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v108
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N23	, Cn1, v120
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte			Dn1, v040
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N11	, Cn1, v116
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v108
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte			Dn1, v040
	.byte	W12
	.byte		N23	, Cs1, v120
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N06	, Dn1, v044
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v120
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N23	, Cs1, v108
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte			Dn1, v040
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v108
	.byte		N06	, Dn1, v044
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte		N23	, Cn1, v120
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N11	, Cn1, v108
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v044
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v120
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte			Dn1, v040
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte			Dn1, v040
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v036
	.byte		N96	, Cs2, v104
	.byte	W12
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v120
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N23	, Cs1, v108
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte			Dn1, v040
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte			Dn1, v040
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N11	, Cn1, v108
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte			Dn1, v040
	.byte	W12
	.byte		N23	, Cn1, v120
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N11	, Cn1, v116
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v108
	.byte		N06	, Dn1, v044
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte			Dn1, v040
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v120
	.byte		N06	, Dn1, v044
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N05	, Cs1, v127
	.byte		N06	, Dn1, v036
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte		N05	
	.byte		N06	, Dn1, v040
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte		N23	, Cn1
	.byte		N06	, Dn1, v040
	.byte		N96	, Cs2, v104
	.byte	W12
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte			Dn1, v040
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N11	, Cn1, v120
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v108
	.byte		N06	, Dn1, v044
	.byte	W12
	.byte			Dn1, v040
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v044
	.byte	W12
	.byte			Dn1, v040
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N11	, Cn1, v108
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cn1, v120
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte			Dn1, v040
	.byte	W12
	.byte		N11	, Cn1, v116
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v108
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte		N23	, Cs1, v120
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte			Dn1, v040
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N11	, Cn1, v120
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v108
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v108
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N23	, Cn1, v120
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N11	, Cn1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N11	, Cn1, v108
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v044
	.byte	W12
	.byte			Dn1, v040
	.byte	W12
	.byte		N23	, Cs1, v120
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v036
	.byte		N96	, Cs2, v104
	.byte	W12
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v120
	.byte		N06	, Dn1, v044
	.byte	W12
	.byte		N23	, Cs1, v108
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte			Dn1, v040
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N11	, Cn1, v108
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cn1, v120
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N11	, Cn1, v108
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cs1, v120
	.byte		N06	, Dn1, v044
	.byte	W12
	.byte			Dn1, v040
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte			Dn1, v040
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte		TIE	, Cs2, v127
	.byte	W12
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N11	, Cn1, v120
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N23	, Cs1, v108
	.byte		N06	, Dn1, v044
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v040
	.byte	W11
	.byte		EOT	, Cs2
	.byte	W01
	.byte		N06	, Dn1
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N11	, Cn1, v108
	.byte		N06	, Dn1, v044
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v044
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cn1, v120
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte			Dn1, v040
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N11	, Cn1, v116
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v108
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte			Dn1, v040
	.byte	W12
	.byte		N23	, Cs1, v120
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N11	, Cn1, v120
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N23	, Cs1, v108
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N11	, Cn1, v108
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cn1, v120
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v044
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N11	, Cn1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N11	, Cn1, v108
	.byte		N06	, Dn1, v044
	.byte	W12
	.byte		N23	, Cs1, v116
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cs1, v120
	.byte		N06	, Dn1, v036
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte			Dn1, v036
	.byte	W12
	.byte		N22	, Cs1, v127
	.byte		N06	, Dn1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N72	, Cn1, v127
	.byte		N72	, Cs2, v120
	.byte	W84
	.byte		N92	, Cn1
	.byte		N92	, Cs2, v127
	.byte	W12
	.byte	W96
	.byte	PATT	
		.word	song019_8_1
	.byte	PATT	
		.word	song019_8_2
	.byte	GOTO	
		.word	song019_8_3
	.byte		N44	, Cn1, v127
	.byte	W44
	.byte	W03
	.byte	FINE

	.align 2
	.global song019
song019:	@ 0x087A9524
	.byte	8		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup007		@ voicegroup/tone

	.word	song019_1		@ track
	.word	song019_2		@ track
	.word	song019_3		@ track
	.word	song019_4		@ track
	.word	song019_5		@ track
	.word	song019_6		@ track
	.word	song019_7		@ track
	.word	song019_8		@ track
