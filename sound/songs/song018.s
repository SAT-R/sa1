	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song018_1
song018_1:	@ 0x087A7C1C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 56
	.byte	VOICE	, 64
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte		N92	, An1, v120
	.byte	W06
	.byte		N23	, En2, v112
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N28	, Bn2
	.byte	W12
	.byte		N23	, Cs3
	.byte	W24
	.byte			En2
	.byte	W06
	.byte		N11	, Cs3
	.byte	W06
	.byte		N23	, An2
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Cs3
	.byte	W18
	.byte		N88	, An1, v124
	.byte	W06
	.byte		N17	, En2, v112
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N23	, Bn2
	.byte	W12
	.byte			Cs3
	.byte	W24
	.byte		N17	, En2
	.byte	W06
	.byte		N11	, Cs3
	.byte	W12
	.byte		N17	, Bn2
	.byte	W06
	.byte		N23	, Cs3
	.byte	W18
	.byte		N92	, An1, v124
	.byte	W06
	.byte		N11	, En2, v112
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte		N17	, Bn2
	.byte	W12
	.byte		N28	, Dn3
	.byte	W30
	.byte		N11	, En2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte		N23	, Dn3
	.byte	W18
	.byte		N92	, An1
	.byte	W06
	.byte		N17	, En2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte		N23	, Bn2
	.byte	W12
	.byte			Dn3
	.byte	W24
	.byte		N17	, An2
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte		N11	, Dn3
	.byte	W06
	.byte		N23	, En2
	.byte	W12
	.byte		N17	, Dn3
	.byte	W12
song018_1_2:
	.byte		N92	, An1, v092
	.byte	W06
	.byte		N05	, En2, v064
	.byte	W06
	.byte			An2, v088
	.byte	W06
	.byte		N11	, Bn2, v092
	.byte	W12
	.byte		N23	, Cs3, v076
	.byte	W24
	.byte		N05	, En2
	.byte	W06
	.byte			Cs3, v092
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Bn2, v068
	.byte	W06
	.byte		N23	, Cs3
	.byte	W18
	.byte	PEND
song018_1_6:
	.byte		N88	, An1, v096
	.byte	W06
	.byte		N05	, En2, v064
	.byte	W06
	.byte			An2, v088
	.byte	W06
	.byte		N11	, Bn2, v092
	.byte	W12
	.byte		N23	, Cs3, v076
	.byte	W24
	.byte		N05	, An3
	.byte	W06
	.byte			Bn2, v092
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Bn2, v068
	.byte	W06
	.byte		N23	, Cs3
	.byte	W18
	.byte	PEND
song018_1_1:
	.byte		N92	, An1, v096
	.byte	W06
	.byte		N05	, En2, v080
	.byte	W06
	.byte			Gn2, v064
	.byte	W06
	.byte		N11	, Bn2, v080
	.byte	W12
	.byte		N28	, Dn3, v092
	.byte	W30
	.byte		N05	, En2, v072
	.byte	W06
	.byte			Gn2, v060
	.byte	W06
	.byte			Bn2, v056
	.byte	W06
	.byte		N23	, Dn3, v068
	.byte	W18
	.byte	PEND
song018_1_7:
	.byte		N92	, An1, v060
	.byte	W06
	.byte		N05	, En2, v064
	.byte	W06
	.byte			Gn2, v068
	.byte	W06
	.byte		N11	, Bn2
	.byte	W12
	.byte		N23	, Dn3, v076
	.byte	W24
	.byte		N05	, An2, v068
	.byte	W06
	.byte			Bn2, v080
	.byte	W06
	.byte			Dn3, v072
	.byte	W06
	.byte		N11	, En2, v064
	.byte	W12
	.byte		N12	, Dn3, v080
	.byte	W12
	.byte	PEND
song018_1_8:
	.byte		N92	, An1, v092
	.byte	W06
	.byte		N05	, En2, v064
	.byte	W06
	.byte			An2, v088
	.byte	W06
	.byte		N11	, Bn2, v092
	.byte	W12
	.byte		N23	, Cs3, v076
	.byte	W24
	.byte		N05	, En2
	.byte	W06
	.byte			Cs3, v092
	.byte	W06
	.byte			An2, v060
	.byte	W06
	.byte			Bn2, v036
	.byte	W06
	.byte		N23	, Cs3
	.byte	W18
	.byte		N88	, An1, v096
	.byte	W06
	.byte		N05	, En2, v064
	.byte	W06
	.byte			An2, v088
	.byte	W06
	.byte		N11	, Bn2, v092
	.byte	W12
	.byte		N23	, Cs3, v076
	.byte	W24
	.byte		N05	, En2
	.byte	W06
	.byte		N11	, Cs3, v092
	.byte	W12
	.byte		N05	, Bn2, v036
	.byte	W06
	.byte		N23	, Cs3
	.byte	W18
	.byte	PATT	
		.word	song018_1_1
	.byte		N92	, An1, v060
	.byte	W06
	.byte		N05	, En2, v064
	.byte	W06
	.byte			Gn2, v068
	.byte	W06
	.byte		N11	, Bn2
	.byte	W12
	.byte		N23	, Dn3, v076
	.byte	W24
	.byte		N05	, An2, v068
	.byte	W06
	.byte			Bn2, v080
	.byte	W06
	.byte			Dn3, v072
	.byte	W06
	.byte		N11	, En2, v064
	.byte	W12
	.byte		N17	, Dn3, v080
	.byte	W12
	.byte		N92	, Fs1, v092
	.byte	W06
	.byte		N05	, Fs2, v064
	.byte	W06
	.byte			An2, v088
	.byte	W06
	.byte		N11	, Cs3, v092
	.byte	W12
	.byte		N23	, Gs3, v076
	.byte	W24
	.byte		N05	, Cs2
	.byte	W06
	.byte			An2, v092
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Cs3, v064
	.byte	W06
	.byte		N23	, Gs3
	.byte	W18
	.byte		N88	, Fs1, v096
	.byte	W06
	.byte		N05	, Cs2, v064
	.byte	W06
	.byte			Fs2, v088
	.byte	W06
	.byte		N11	, Gs2, v092
	.byte	W12
	.byte		N23	, An2, v076
	.byte	W24
	.byte		N05	, Cs2
	.byte	W06
	.byte		N11	, An2, v092
	.byte	W12
	.byte		N05	, Gs2, v036
	.byte	W06
	.byte		N23	, An2
	.byte	W18
	.byte		N92	, Dn1, v096
	.byte	W06
	.byte		N05	, Dn2, v064
	.byte	W06
	.byte			Gs2, v080
	.byte	W06
	.byte		N11	, Bn2, v092
	.byte	W12
	.byte		N28	, Dn3, v076
	.byte	W30
	.byte		N05	, Gs1, v072
	.byte	W06
	.byte			Dn2, v060
	.byte	W06
	.byte			Fs2, v056
	.byte	W06
	.byte		N23	, Gs2, v068
	.byte	W18
	.byte		N92	, En1, v060
	.byte	W06
	.byte		N05	, Bn1, v064
	.byte	W06
	.byte			En2, v068
	.byte	W06
	.byte		N11	, Fs2
	.byte	W12
	.byte			Bn2, v076
	.byte	W12
	.byte			Dn3, v092
	.byte	W12
	.byte		N05	, En2, v068
	.byte	W06
	.byte			Fs2, v080
	.byte	W06
	.byte			An2, v072
	.byte	W06
	.byte			Bn1, v064
	.byte	W06
	.byte			En3, v076
	.byte	W06
	.byte		N17	, An2, v080
	.byte	W12
	.byte	PATT	
		.word	song018_1_2
song018_1_3:
	.byte		N88	, An1, v096
	.byte	W06
	.byte		N05	, En2, v064
	.byte	W06
	.byte			An2, v088
	.byte	W06
	.byte		N11	, Bn2, v092
	.byte	W12
	.byte		N23	, Cs3, v076
	.byte	W24
	.byte		N05	, En2
	.byte	W06
	.byte		N11	, Cs3, v092
	.byte	W12
	.byte		N05	, Bn2, v068
	.byte	W06
	.byte		N23	, Cs3
	.byte	W18
	.byte	PEND
song018_1_4:
	.byte		N92	, Fn1, v092
	.byte	W06
	.byte		N05	, Cn2, v064
	.byte	W06
	.byte			Fn2, v088
	.byte	W06
	.byte		N11	, Gn2, v092
	.byte	W12
	.byte		N23	, An2, v076
	.byte	W24
	.byte		N05	, Cn2
	.byte	W06
	.byte			An2, v092
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Gn2, v068
	.byte	W06
	.byte		N23	, An2
	.byte	W18
	.byte	PEND
song018_1_5:
	.byte		N88	, Gn1, v096
	.byte	W06
	.byte		N05	, Dn2, v064
	.byte	W06
	.byte			Gn2, v088
	.byte	W06
	.byte		N11	, An2, v092
	.byte	W12
	.byte		N23	, Bn2, v076
	.byte	W24
	.byte		N05	, Dn2
	.byte	W06
	.byte			Bn2, v092
	.byte	W06
	.byte			Dn3, v068
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte		N23	, Dn2, v060
	.byte	W18
	.byte	PEND
	.byte	PATT	
		.word	song018_1_2
	.byte	PATT	
		.word	song018_1_3
	.byte	PATT	
		.word	song018_1_4
	.byte	PATT	
		.word	song018_1_5
	.byte		N92	, An1, v092
	.byte	W06
	.byte		N11	, En2, v064
	.byte	W06
	.byte			An2, v088
	.byte	W06
	.byte		N17	, Bn2, v092
	.byte	W12
	.byte		N23	, Cs3, v076
	.byte	W24
	.byte		N11	, En2
	.byte	W06
	.byte		N05	, Cs3, v092
	.byte	W06
	.byte		N11	, An2
	.byte	W06
	.byte			Bn2, v068
	.byte	W06
	.byte		N23	, Cs3
	.byte	W18
	.byte		N88	, An1, v096
	.byte	W06
	.byte		N11	, En2, v064
	.byte	W06
	.byte			An2, v088
	.byte	W06
	.byte		N17	, Bn2, v092
	.byte	W12
	.byte		N23	, Cs3, v076
	.byte	W24
	.byte		N11	, En2
	.byte	W06
	.byte			Cs3, v092
	.byte	W12
	.byte			Bn2, v068
	.byte	W06
	.byte		N23	, Cs3
	.byte	W18
	.byte		N92	, An1, v096
	.byte	W06
	.byte		N11	, En2, v080
	.byte	W06
	.byte			Gn2, v064
	.byte	W06
	.byte		N17	, Bn2, v080
	.byte	W12
	.byte		N28	, Dn3, v092
	.byte	W30
	.byte		N11	, En2, v072
	.byte	W06
	.byte			Gn2, v060
	.byte	W06
	.byte			Bn2, v056
	.byte	W06
	.byte		N23	, Dn3, v068
	.byte	W18
	.byte		N92	, An1, v060
	.byte	W06
	.byte		N11	, En2, v064
	.byte	W06
	.byte			Gn2, v068
	.byte	W06
	.byte		N17	, Bn2
	.byte	W12
	.byte		N23	, Dn3, v076
	.byte	W24
	.byte		N11	, An2, v068
	.byte	W06
	.byte			Bn2, v080
	.byte	W06
	.byte			Dn3, v072
	.byte	W06
	.byte			En2, v064
	.byte	W12
	.byte		N17	, Dn3, v080
	.byte	W12
	.byte	PATT	
		.word	song018_1_2
	.byte	PATT	
		.word	song018_1_6
	.byte	PATT	
		.word	song018_1_1
	.byte	PATT	
		.word	song018_1_7
	.byte	GOTO	
		.word	song018_1_8
	.byte	FINE

	@********************** Track  2 **********************@

	.global song018_2
song018_2:	@ 0x087A7F34
	.byte	KEYSH	, 0
	.byte	VOICE	, 64
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	W42
	.byte		N40	, An3, v120
	.byte	W42
	.byte		N52	
	.byte	W12
song018_2_1:
	.byte	W42
	.byte		N40	, An3, v120
	.byte	W42
	.byte		N52	
	.byte	W12
	.byte	PEND
song018_2_2:
	.byte	W42
	.byte		N40	, Gn3, v120
	.byte	W42
	.byte		N52	
	.byte	W12
	.byte	PEND
song018_2_5:
	.byte	W42
	.byte		N32	, Gn3, v120
	.byte	W36
	.byte		N56	, An3
	.byte	W18
	.byte	PEND
	.byte	PATT	
		.word	song018_2_1
song018_2_6:
	.byte	W42
	.byte		N40	, Cs4, v120
	.byte	W42
	.byte		N52	, An3
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song018_2_2
	.byte	W42
	.byte		N32	, Gn3, v120
	.byte	W36
	.byte		N48	, An3
	.byte	W18
song018_2_3:
	.byte	W42
	.byte		N24	, An3, v092
	.byte	W42
	.byte			An3, v096
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song018_2_3
	.byte	W42
	.byte		N24	, Gn3, v076
	.byte	W42
	.byte		N24	
	.byte	W12
	.byte	W42
	.byte			Gn3, v092
	.byte	W36
	.byte			An3, v076
	.byte	W18
	.byte	PATT	
		.word	song018_2_3
	.byte	W42
	.byte		N24	, Fs3, v092
	.byte	W42
	.byte			Fs3, v096
	.byte	W12
	.byte	W42
	.byte			Gs3, v080
	.byte	W42
	.byte			Fn3, v076
	.byte	W12
	.byte	W42
	.byte			Dn3, v092
	.byte	W36
	.byte			En3, v076
	.byte	W18
	.byte	PATT	
		.word	song018_2_3
	.byte	PATT	
		.word	song018_2_3
song018_2_4:
	.byte	W42
	.byte		N24	, Fn3, v092
	.byte	W42
	.byte			Fn3, v096
	.byte	W12
	.byte	PEND
	.byte	W42
	.byte			Gn3, v092
	.byte	W42
	.byte			Gn3, v096
	.byte	W12
	.byte	PATT	
		.word	song018_2_3
	.byte	PATT	
		.word	song018_2_3
	.byte	PATT	
		.word	song018_2_4
	.byte	W42
	.byte		N24	, Gn3, v092
	.byte	W42
	.byte		N40	, Gn3, v120
	.byte	W12
	.byte	PATT	
		.word	song018_2_1
	.byte	PATT	
		.word	song018_2_1
	.byte	PATT	
		.word	song018_2_2
	.byte	PATT	
		.word	song018_2_5
	.byte	PATT	
		.word	song018_2_1
	.byte	PATT	
		.word	song018_2_6
	.byte	PATT	
		.word	song018_2_2
	.byte	W42
	.byte		N32	, Gn3, v120
	.byte	W36
	.byte		N24	, An3
	.byte	W18
	.byte	GOTO	
		.word	song018_2_3
	.byte	W06
	.byte	FINE

	@********************** Track  3 **********************@

	.global song018_3
song018_3:	@ 0x087A8012
	.byte	KEYSH	, 0
	.byte	VOICE	, 60
	.byte	VOL	, v108
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		TIE	, An1, v116
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
song018_3_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N44	, An3, v096
	.byte	W48
	.byte		N48	, Cs4, v068
	.byte	W48
	.byte			Fs4, v088
	.byte	W48
	.byte		N28	, An4, v080
	.byte	W30
	.byte		N15	, Cs5, v096
	.byte	W18
	.byte		N24	, Dn5
	.byte	W24
	.byte			Gs4
	.byte	W24
	.byte			Fn4
	.byte	W24
	.byte			Dn4
	.byte	W24
	.byte		N06	, En4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Gs4
	.byte	W12
	.byte			Fs4
	.byte	W06
	.byte		N05	, Gs4
	.byte	W06
	.byte			An4
	.byte	W12
	.byte			Gs4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Bn4
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte			Dn5
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		TIE	, An1, v116
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song018_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song018_4
song018_4:	@ 0x087A807E
	.byte	KEYSH	, 0
	.byte	VOICE	, 33
	.byte	VOL	, v095
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song018_4_2:
	.byte		N17	, An1, v116
	.byte	W18
	.byte			An2
	.byte	W18
	.byte		N23	, An1
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N05	, En2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte	PEND
song018_4_3:
	.byte		N05	, An1, v116
	.byte	W06
	.byte		N11	
	.byte	W12
	.byte		N17	, An2
	.byte	W18
	.byte		N23	, An1
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte	PEND
song018_4_1:
	.byte		N05	, An1, v116
	.byte	W06
	.byte		N11	
	.byte	W12
	.byte		N17	, An2
	.byte	W18
	.byte		N23	, An1
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N05	, En2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song018_4_1
	.byte		N17	, Fs1, v116
	.byte	W18
	.byte			Fs2
	.byte	W18
	.byte		N23	, Fs1
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte		N05	, Cs2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte		N11	
	.byte	W12
	.byte		N17	, Fs2
	.byte	W18
	.byte		N23	, Fs1
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Dn1
	.byte		N11	, Dn2
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte			Dn1
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte		N05	, An1
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			En1
	.byte	W06
	.byte		N11	
	.byte	W12
	.byte		N17	, En2
	.byte	W18
	.byte		N23	, En1
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			En2
	.byte	W12
	.byte		N05	, Bn1
	.byte	W06
	.byte			En2
	.byte	W06
	.byte	PATT	
		.word	song018_4_2
	.byte	PATT	
		.word	song018_4_3
song018_4_4:
	.byte		N17	, Fn1, v116
	.byte	W18
	.byte			Fn2
	.byte	W18
	.byte		N23	, Fn1
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte		N05	, Cn2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte	PEND
song018_4_5:
	.byte		N05	, Gn1, v116
	.byte	W06
	.byte		N11	
	.byte	W12
	.byte		N17	, Gn2
	.byte	W18
	.byte		N23	, Gn1
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song018_4_2
	.byte	PATT	
		.word	song018_4_3
	.byte	PATT	
		.word	song018_4_4
	.byte	PATT	
		.word	song018_4_5
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song018_4_2
	.byte	PATT	
		.word	song018_4_3
	.byte	PATT	
		.word	song018_4_1
	.byte	PATT	
		.word	song018_4_1
	.byte	GOTO	
		.word	song018_4_2
	.byte	FINE

	@********************** Track  5 **********************@

	.global song018_5
song018_5:	@ 0x087A8175
	.byte	KEYSH	, 0
	.byte	VOICE	, 34
	.byte	MOD	, 3
	.byte	VOL	, v073
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N32	, An3, v104
	.byte	W36
	.byte		N92	, En3, v096
	.byte	W60
	.byte	W36
	.byte		N23	, Fs3
	.byte	W24
	.byte		N11	, Gn3
	.byte	W12
	.byte			Fs3, v100
	.byte	W12
	.byte			En3, v096
	.byte	W12
	.byte		N32	, Dn3, v092
	.byte	W36
	.byte		N23	, Cs3, v108
	.byte	W24
	.byte			Dn3, v096
	.byte	W24
	.byte		TIE	, Bn2, v104
	.byte	W12
	.byte	W92
	.byte	W02
	.byte		EOT	
	.byte	W02
song018_5_1:
	.byte		N36	, An3, v104
	.byte	W36
	.byte		N88	, En3, v100
	.byte	W60
	.byte	W36
	.byte		N24	, An3, v108
	.byte	W24
	.byte			Bn3, v100
	.byte	W24
	.byte		N11	, Cs4, v088
	.byte	W12
	.byte		N23	, Cs4, v104
	.byte	W24
	.byte		N15	, Dn4
	.byte	W12
	.byte		N23	, En4, v088
	.byte	W24
	.byte		N24	, Dn4, v092
	.byte	W24
	.byte		N68	, Cs4, v108
	.byte	W12
	.byte	W60
	.byte		N20	
	.byte	W24
	.byte		N10	, Bn3, v104
	.byte	W12
	.byte		N24	, Bn3, v100
	.byte	W24
	.byte		N11	, Cs4, v104
	.byte	W12
	.byte		TIE	, An3, v092
	.byte	W60
	.byte	W54
	.byte		EOT	
	.byte	W06
	.byte		N18	, Fs3, v108
	.byte	W18
	.byte		N16	, An3, v092
	.byte	W18
	.byte		N22	, En4
	.byte	W24
	.byte		N10	, Dn4
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte		N48	, En4, v088
	.byte	W12
	.byte	W48
	.byte		N16	, Dn4, v092
	.byte	W24
	.byte			Cs4
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
	.byte		N36	, An3, v104
	.byte	W36
	.byte		N92	, En3, v096
	.byte	W60
	.byte	W36
	.byte		N28	, Fs3
	.byte	W24
	.byte		N14	, Gn3
	.byte	W12
	.byte		N13	, Fs3, v100
	.byte	W12
	.byte		N12	, En3, v096
	.byte	W12
	.byte		N36	, Dn3, v092
	.byte	W36
	.byte		N24	, Cs3, v108
	.byte	W24
	.byte			Dn3, v096
	.byte	W24
	.byte		TIE	, Bn2, v104
	.byte	W12
	.byte	W92
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte	GOTO	
		.word	song018_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song018_6
song018_6:	@ 0x087A8245
	.byte	KEYSH	, 0
	.byte	VOICE	, 26
	.byte	VOL	, v045
	.byte	PAN	, c_v
	.byte	W42
	.byte		N24	, An4, v092
	.byte	W42
	.byte			An4, v096
	.byte	W12
song018_6_1:
	.byte	W42
	.byte		N24	, An4, v092
	.byte	W42
	.byte			An4, v096
	.byte	W12
	.byte	PEND
song018_6_2:
	.byte	W42
	.byte		N24	, Gn4, v076
	.byte	W42
	.byte		N24	
	.byte	W12
	.byte	PEND
song018_6_3:
	.byte	W42
	.byte		N24	, Gn4, v092
	.byte	W36
	.byte			An4, v076
	.byte	W18
	.byte	PEND
	.byte	PATT	
		.word	song018_6_1
song018_6_6:
	.byte	W42
	.byte		N24	, Cs5, v092
	.byte	W42
	.byte			An4, v096
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song018_6_2
	.byte	PATT	
		.word	song018_6_3
song018_6_7:
	.byte	PATT	
		.word	song018_6_1
	.byte	PATT	
		.word	song018_6_1
	.byte	PATT	
		.word	song018_6_2
	.byte	PATT	
		.word	song018_6_3
	.byte	PATT	
		.word	song018_6_1
	.byte	W42
	.byte		N24	, Fs4, v092
	.byte	W42
	.byte			Fs4, v096
	.byte	W12
	.byte	W42
	.byte			Gs4, v080
	.byte	W42
	.byte			Fn4, v076
	.byte	W12
	.byte	W42
	.byte			Dn4, v092
	.byte	W36
	.byte			En4, v076
	.byte	W18
	.byte	PATT	
		.word	song018_6_1
	.byte	PATT	
		.word	song018_6_1
song018_6_4:
	.byte	W42
	.byte		N24	, Fn4, v092
	.byte	W42
	.byte			Fn4, v096
	.byte	W12
	.byte	PEND
song018_6_5:
	.byte	W42
	.byte		N24	, Gn4, v092
	.byte	W42
	.byte			Gn4, v096
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song018_6_1
	.byte	PATT	
		.word	song018_6_1
	.byte	PATT	
		.word	song018_6_4
	.byte	PATT	
		.word	song018_6_5
	.byte	PATT	
		.word	song018_6_1
	.byte	PATT	
		.word	song018_6_1
	.byte	PATT	
		.word	song018_6_2
	.byte	PATT	
		.word	song018_6_3
	.byte	PATT	
		.word	song018_6_1
	.byte	PATT	
		.word	song018_6_6
	.byte	PATT	
		.word	song018_6_2
	.byte	PATT	
		.word	song018_6_3
	.byte	GOTO	
		.word	song018_6_7
	.byte	W06
	.byte	FINE

	@********************** Track  7 **********************@

	.global song018_7
song018_7:	@ 0x087A8315
	.byte	KEYSH	, 0
	.byte	VOICE	, 36
	.byte	VOL	, v052
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		TIE	, An2, v116
	.byte	W96
	.byte	W92
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte		TIE	
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
song018_7_1:
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
	.byte		TIE	, An2, v116
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		TIE	
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song018_7_1
	.byte	FINE

	@********************** Track  8 **********************@

	.global song018_8
song018_8:	@ 0x087A8357
	.byte	KEYSH	, 0
	.byte	VOICE	, 62
	.byte	VOL	, v092
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song018_8_2:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song018_8_1:
	.byte		N44	, An2, v127
	.byte	W48
	.byte			En3
	.byte	W48
	.byte	PEND
	.byte			Cs3
	.byte	W48
	.byte			An3
	.byte	W48
	.byte		N17	, Fn3
	.byte	W18
	.byte			En3
	.byte	W18
	.byte		N11	, Cn3
	.byte	W12
	.byte		N17	, An2
	.byte	W18
	.byte			Gn2
	.byte	W18
	.byte		N11	, Fn2
	.byte	W12
	.byte		N17	, Dn3
	.byte	W18
	.byte			Cn3
	.byte	W18
	.byte		N11	, Bn2
	.byte	W12
	.byte		N44	, Gn2
	.byte	W48
	.byte	PATT	
		.word	song018_8_1
	.byte		N56	, An3, v127
	.byte	W60
	.byte		N11	, Cs4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			En4
	.byte	W12
	.byte		N23	, Fn4
	.byte	W24
	.byte		N11	, En4
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte		N17	, Gn3
	.byte	W18
	.byte			Dn3
	.byte	W18
	.byte			Bn3
	.byte	W18
	.byte			Gn3
	.byte	W18
	.byte			Dn4
	.byte	W18
	.byte		N66	, Gn4
	.byte	W06
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song018_8_2
	.byte	FINE

	@********************** Track  9 **********************@

	.global song018_9
song018_9:	@ 0x087A83D1
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v110
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W60
	.byte		N02	, Dn1, v052
	.byte	W06
	.byte		N03	, Dn1, v040
	.byte	W06
	.byte		N12	, Ds1, v052
	.byte	W12
	.byte		N03	, Dn1, v048
	.byte	W06
	.byte		N04	, Ds1, v056
	.byte	W06
song018_9_1:
	.byte		N05	, Dn1, v056
	.byte	W06
	.byte			Dn1, v040
	.byte	W06
	.byte			Dn1, v060
	.byte	W12
	.byte			Dn1, v056
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte			Dn1, v056
	.byte	W12
	.byte			Dn1, v052
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte			Dn1, v036
	.byte	W12
	.byte			Dn1, v056
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N11	, Ds1, v056
	.byte	W12
	.byte	PEND
	.byte		N05	, Dn1, v032
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte			Dn1, v044
	.byte	W12
	.byte			Dn1, v052
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Dn1, v028
	.byte	W12
	.byte			Dn1, v060
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Dn1, v056
	.byte	W12
	.byte			Dn1, v068
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte		N08	, Ds1, v064
	.byte	W12
	.byte	PATT	
		.word	song018_9_1
	.byte		N05	, Dn1, v032
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte			Dn1, v044
	.byte	W12
	.byte			Dn1, v052
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Dn1, v028
	.byte	W12
	.byte			Dn1, v060
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Dn1, v056
	.byte	W12
	.byte			Dn1, v068
	.byte		N05	, Gs1, v120
	.byte	W06
	.byte			Dn1, v056
	.byte		N05	, Gs1, v120
	.byte	W06
	.byte		N08	, Ds1, v064
	.byte		N11	, Fs1, v120
	.byte	W12
song018_9_2:
	.byte		N17	, Cn1, v120
	.byte		N05	, Dn1, v056
	.byte	W06
	.byte			Dn1, v040
	.byte	W06
	.byte			Dn1, v060
	.byte	W06
	.byte		N17	, Cs1, v120
	.byte	W06
	.byte		N05	, Dn1, v056
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N23	, Cn1, v120
	.byte		N05	, Dn1, v056
	.byte	W12
	.byte			Dn1, v052
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte		N11	, Cn1, v120
	.byte		N05	, Dn1, v036
	.byte	W12
	.byte		N23	, Cs1, v120
	.byte		N05	, Dn1, v056
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N11	, Ds1, v056
	.byte	W12
	.byte	PEND
song018_9_3:
	.byte		N05	, Cn1, v120
	.byte		N05	, Dn1, v032
	.byte	W06
	.byte		N11	, Cn1, v120
	.byte		N05	, Dn1, v052
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N17	, Cs1, v120
	.byte	W06
	.byte		N05	, Dn1, v052
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N23	, Cn1, v120
	.byte		N05	, Dn1, v028
	.byte	W12
	.byte			Dn1, v060
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cn1, v120
	.byte		N05	, Dn1, v056
	.byte	W12
	.byte		N22	, Cs1, v120
	.byte		N05	, Dn1, v068
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte		N08	, Ds1, v064
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song018_9_2
	.byte	PATT	
		.word	song018_9_3
	.byte	PATT	
		.word	song018_9_2
	.byte	PATT	
		.word	song018_9_3
	.byte	PATT	
		.word	song018_9_2
	.byte	PATT	
		.word	song018_9_3
	.byte	PATT	
		.word	song018_9_2
	.byte	PATT	
		.word	song018_9_3
	.byte	PATT	
		.word	song018_9_2
	.byte	PATT	
		.word	song018_9_3
	.byte	PATT	
		.word	song018_9_2
	.byte	PATT	
		.word	song018_9_3
	.byte	PATT	
		.word	song018_9_2
	.byte	PATT	
		.word	song018_9_3
	.byte	PATT	
		.word	song018_9_2
	.byte	PATT	
		.word	song018_9_3
	.byte	PATT	
		.word	song018_9_2
	.byte	PATT	
		.word	song018_9_3
	.byte	PATT	
		.word	song018_9_2
	.byte	PATT	
		.word	song018_9_3
	.byte	PATT	
		.word	song018_9_2
	.byte	PATT	
		.word	song018_9_3
	.byte	GOTO	
		.word	song018_9_2
	.byte	FINE

	.align 2
	.global song018
song018:	@ 0x087A8558
	.byte	9		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup006		@ voicegroup/tone

	.word	song018_1		@ track
	.word	song018_2		@ track
	.word	song018_3		@ track
	.word	song018_4		@ track
	.word	song018_5		@ track
	.word	song018_6		@ track
	.word	song018_7		@ track
	.word	song018_8		@ track
	.word	song018_9		@ track
