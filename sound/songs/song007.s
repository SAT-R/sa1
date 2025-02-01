	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song007_1
song007_1:	@ 0x0879EB00
	.byte	KEYSH	, 0
	.byte	TEMPO	, 65
	.byte	VOICE	, 0
	.byte	VOL	, v047
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
song007_1_1:
	.byte		N05	, As4, v104
	.byte	W06
	.byte			An4
	.byte	W06
	.byte		N11	, As4
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N23	, Fn4
	.byte	W24
	.byte		N11	, Dn4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte		N23	, Fn4
	.byte	W12
	.byte	PEND
song007_1_2:
	.byte	W12
	.byte		N23	, As3, v104
	.byte	W24
	.byte			Fn3
	.byte	W24
	.byte		N11	, As3
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte	PEND
	.byte		N11	
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			As3
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte			An3
	.byte	W24
	.byte			Gn3
	.byte	W24
	.byte			As3
	.byte	W24
	.byte	PATT	
		.int	song007_1_1
	.byte	PATT	
		.int	song007_1_2
	.byte		N11	, Fn4, v104
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte		N23	, Fn4
	.byte	W24
	.byte		N56	, Cn4
	.byte	W12
	.byte	W48
	.byte		N23	, As3
	.byte	W24
	.byte		N22	, An3
	.byte	W24
	.byte	GOTO	
		.int	song007_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song007_2
song007_2:	@ 0x0879EB74
	.byte	KEYSH	, 0
	.byte	VOICE	, 64
	.byte	VOL	, v094
	.byte	PAN	, c_v
	.byte		N06	, Gn4, v116
	.byte	W24
	.byte			Gn4, v104
	.byte	W08
	.byte			Gn4, v096
	.byte	W08
	.byte			Gn4, v088
	.byte	W08
	.byte			En4, v104
	.byte	W24
	.byte			En4, v116
	.byte	W24
	.byte		N42	, Gn4, v120
	.byte	W48
	.byte		N44	, Fn4, v100
	.byte	W48
	.byte	W96
song007_2_1:
	.byte		N05	, As4, v108
	.byte	W06
	.byte			An4, v088
	.byte	W06
	.byte		N11	, As4, v072
	.byte	W12
	.byte			As4, v104
	.byte	W12
	.byte		N23	, Fn4, v100
	.byte	W24
	.byte		N11	, Dn4
	.byte	W12
	.byte			Ds4, v092
	.byte	W12
	.byte		N23	, Fn4
	.byte	W12
	.byte	W12
	.byte			As3, v120
	.byte	W24
	.byte			Fn3, v108
	.byte	W24
	.byte		N11	, As3, v088
	.byte	W12
	.byte			Dn4, v096
	.byte	W12
	.byte			Fn4, v092
	.byte	W12
	.byte			Fn4, v096
	.byte	W12
	.byte			Ds4, v092
	.byte	W12
	.byte			Ds4, v108
	.byte	W12
	.byte			Dn4, v096
	.byte	W12
	.byte			Ds4, v104
	.byte	W12
	.byte			Dn4, v088
	.byte	W12
	.byte			Cn4, v104
	.byte	W12
	.byte			As3, v096
	.byte	W12
	.byte		N23	, As3, v100
	.byte	W24
	.byte			An3, v116
	.byte	W24
	.byte			Gn3, v104
	.byte	W24
	.byte			As3, v096
	.byte	W24
	.byte		N05	, As4, v120
	.byte	W06
	.byte			An4, v064
	.byte	W06
	.byte		N11	, As4, v072
	.byte	W12
	.byte			As4, v108
	.byte	W12
	.byte		N23	, Fn4, v096
	.byte	W24
	.byte		N11	, Dn4, v092
	.byte	W12
	.byte			Ds4, v072
	.byte	W12
	.byte		N23	, Fn4, v088
	.byte	W12
	.byte	W12
	.byte			As3, v108
	.byte	W24
	.byte			Fn3, v092
	.byte	W24
	.byte		N11	, As3, v096
	.byte	W12
	.byte			Dn4, v076
	.byte	W12
	.byte			Fn4, v088
	.byte	W12
	.byte			Fn4, v100
	.byte	W12
	.byte			Ds4, v104
	.byte	W12
	.byte			Ds4, v096
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Ds4, v068
	.byte	W12
	.byte		N23	, Fn4, v076
	.byte	W24
	.byte		N56	, Cn4, v088
	.byte	W12
	.byte	W48
	.byte		N23	, As3, v072
	.byte	W24
	.byte		N22	, An3, v100
	.byte	W24
	.byte	GOTO	
		.int	song007_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song007_3
song007_3:	@ 0x0879EC3C
	.byte	KEYSH	, 0
	.byte	VOICE	, 1
	.byte	VOL	, v043
	.byte	PAN	, c_v
	.byte		N06	, Cn3, v108
	.byte	W24
	.byte			Cn3, v092
	.byte	W08
	.byte			Cn3, v088
	.byte	W08
	.byte			Cn3, v092
	.byte	W08
	.byte			Gn3, v104
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N42	, Fn3, v108
	.byte	W48
	.byte		N40	, Ds3
	.byte	W48
	.byte	W96
song007_3_1:
	.byte	W01
	.byte		TIE	, As3, v100
	.byte	W92
	.byte	W03
	.byte	PEND
	.byte	W02
	.byte		N03	, Cs4, v072
	.byte	W01
	.byte		EOT	, As3
	.byte	W03
	.byte		N44	, Dn4, v092
	.byte	W44
	.byte	W01
	.byte			Fn4, v080
	.byte	W44
	.byte	W01
	.byte	W01
	.byte			Ds4, v088
	.byte	W48
	.byte			Gn4
	.byte	W44
	.byte	W02
	.byte		N03	, An4, v100
	.byte	W01
	.byte	W02
	.byte		N42	, As4, v092
	.byte	W48
	.byte		N16	, An4, v072
	.byte	W22
	.byte		N17	, Fn4, v092
	.byte	W24
	.byte	PATT	
		.int	song007_3_1
	.byte	W02
	.byte		N03	, Cs4, v072
	.byte	W01
	.byte		EOT	, As3
	.byte	W03
	.byte		N44	, Dn4, v092
	.byte	W44
	.byte	W01
	.byte			Fn4, v080
	.byte	W44
	.byte	W01
	.byte	W01
	.byte			Ds4, v088
	.byte	W48
	.byte			Cn4
	.byte	W44
	.byte	W02
	.byte		N03	, Fs4, v100
	.byte	W01
	.byte	W02
	.byte		N42	, Gn4, v092
	.byte	W48
	.byte		N16	, An4, v072
	.byte	W22
	.byte		N17	, Fn4, v092
	.byte	W24
	.byte	GOTO	
		.int	song007_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song007_4
song007_4:	@ 0x0879ECC2
	.byte	KEYSH	, 0
	.byte	VOICE	, 74
	.byte	VOL	, v067
	.byte	PAN	, c_v
	.byte		N06	, Cn3, v104
	.byte	W24
	.byte		N06	
	.byte	W08
	.byte		N06	
	.byte	W08
	.byte		N06	
	.byte	W08
	.byte			Gn2
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N44	, As2
	.byte	W48
	.byte			An2
	.byte	W48
	.byte	W96
song007_4_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.int	song007_4_1
	.byte	FINE

	@********************** Track  5 **********************@

	.global song007_5
song007_5:	@ 0x0879ECEC
	.byte	KEYSH	, 0
	.byte	VOICE	, 74
	.byte	VOL	, v067
	.byte	PAN	, c_v
	.byte		N06	, Gn3, v116
	.byte	W23
	.byte			Gn3, v104
	.byte	W08
	.byte			Gn3, v096
	.byte	W08
	.byte			Gn3, v088
	.byte	W08
	.byte			En3, v104
	.byte	W24
	.byte			En3, v116
	.byte	W24
	.byte		N42	, Gn3, v120
	.byte	W01
	.byte	W44
	.byte	W03
	.byte		N44	, Fn3, v100
	.byte	W48
	.byte	W01
	.byte	W92
	.byte	W03
	.byte		N05	, As3, v108
	.byte	W01
song007_5_1:
	.byte	W05
	.byte		N05	, An3, v088
	.byte	W06
	.byte		N11	, As3, v072
	.byte	W12
	.byte			As3, v104
	.byte	W12
	.byte		N23	, Fn3, v100
	.byte	W24
	.byte		N11	, Dn3
	.byte	W12
	.byte			Ds3, v092
	.byte	W12
	.byte		N23	, Fn3
	.byte	W13
	.byte	W11
	.byte			As2, v120
	.byte	W24
	.byte			Fn2, v108
	.byte	W24
	.byte		N11	, As2, v088
	.byte	W12
	.byte			Dn3, v096
	.byte	W12
	.byte			Fn3, v092
	.byte	W12
	.byte			Fn3, v096
	.byte	W01
	.byte	W11
	.byte			Ds3, v092
	.byte	W12
	.byte			Ds3, v108
	.byte	W12
	.byte			Dn3, v096
	.byte	W12
	.byte			Ds3, v104
	.byte	W12
	.byte			Dn3, v088
	.byte	W12
	.byte			Cn3, v104
	.byte	W12
	.byte			As2, v096
	.byte	W12
	.byte		N23	, As2, v100
	.byte	W01
	.byte	W23
	.byte			An2, v116
	.byte	W24
	.byte			Gn2, v104
	.byte	W24
	.byte			As2, v096
	.byte	W24
	.byte		N05	, As3, v120
	.byte	W01
	.byte	W05
	.byte			An3, v064
	.byte	W06
	.byte		N11	, As3, v072
	.byte	W12
	.byte			As3, v108
	.byte	W12
	.byte		N23	, Fn3, v096
	.byte	W24
	.byte		N11	, Dn3, v092
	.byte	W12
	.byte			Ds3, v072
	.byte	W12
	.byte		N23	, Fn3, v088
	.byte	W13
	.byte	W11
	.byte			As2, v108
	.byte	W24
	.byte			Fn2, v092
	.byte	W24
	.byte		N11	, As2, v096
	.byte	W12
	.byte			Dn3, v076
	.byte	W12
	.byte			Fn3, v088
	.byte	W12
	.byte			Fn3, v100
	.byte	W01
	.byte	W11
	.byte			Ds3, v104
	.byte	W12
	.byte			Ds3, v096
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Ds3, v068
	.byte	W12
	.byte		N23	, Fn3, v076
	.byte	W24
	.byte		N56	, Cn3, v088
	.byte	W13
	.byte	W44
	.byte	W03
	.byte		N23	, As2, v072
	.byte	W24
	.byte		N22	, An2, v100
	.byte	W24
	.byte	W01
	.byte	GOTO	
		.int	song007_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song007_6
song007_6:	@ 0x0879EDC0
	.byte	KEYSH	, 0
	.byte	VOICE	, 62
	.byte	VOL	, v094
	.byte	PAN	, c_v
	.byte		N06	, Cn2, v108
	.byte	W24
	.byte			Cn2, v092
	.byte	W08
	.byte			Cn2, v088
	.byte	W08
	.byte			Cn2, v092
	.byte	W08
	.byte			Gn2, v104
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N42	, Fn2, v108
	.byte	W48
	.byte		N40	, Ds2
	.byte	W48
	.byte	W92
	.byte	W03
	.byte		N12	, Fn4
	.byte	W01
song007_6_1:
	.byte	W11
	.byte		N60	, Fn3, v100
	.byte	W84
	.byte		N14	, Fn4
	.byte	W01
	.byte	PEND
song007_6_2:
	.byte	W12
	.byte		N56	, Fn3, v080
	.byte	W80
	.byte	W03
	.byte		N10	, Gn4, v092
	.byte	W01
	.byte	PEND
song007_6_3:
	.byte	W11
	.byte		N60	, Gn3, v088
	.byte	W84
	.byte	W01
	.byte	PEND
	.byte		N12	, As4, v108
	.byte	W12
	.byte		N36	, As3, v092
	.byte	W36
	.byte		N11	, Cn5
	.byte	W11
	.byte		N30	, Cn4, v088
	.byte	W36
	.byte		N12	, Fn4, v108
	.byte	W01
	.byte	PATT	
		.int	song007_6_1
	.byte	PATT	
		.int	song007_6_2
	.byte	PATT	
		.int	song007_6_3
	.byte		N12	, As4, v108
	.byte	W12
	.byte		N36	, As3, v092
	.byte	W36
	.byte		N11	, Cn5
	.byte	W11
	.byte		N30	, Cn4, v088
	.byte	W36
	.byte	W01
	.byte	GOTO	
		.int	song007_6_1
	.byte	FINE

	@********************** Track  7 **********************@

	.global song007_7
song007_7:	@ 0x0879EE39
	.byte	KEYSH	, 0
	.byte	VOICE	, 2
	.byte	VOL	, v077
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte		N12	, As1, v100
	.byte	W12
	.byte		N06	, As2
	.byte	W12
	.byte		N12	, As1
	.byte	W12
	.byte		N06	, As2
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N12	, As1
	.byte	W12
	.byte		N06	, As2
	.byte	W12
	.byte		N12	, As1
	.byte	W12
	.byte		N06	, As2
	.byte	W12
song007_7_1:
	.byte		N09	, As1, v100
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			As1
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			As1
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			As1
	.byte	W12
	.byte			As2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.int	song007_7_1
song007_7_2:
	.byte		N09	, Cn2, v100
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte	PEND
song007_7_3:
	.byte		N09	, Ds2, v100
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.int	song007_7_1
	.byte	PATT	
		.int	song007_7_1
	.byte	PATT	
		.int	song007_7_2
	.byte	PATT	
		.int	song007_7_3
	.byte	GOTO	
		.int	song007_7_1
	.byte	FINE

	@********************** Track  8 **********************@

	.global song007_8
song007_8:	@ 0x0879EEB6
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v108
	.byte		N72	, Cn2, v104
	.byte	W96
	.byte	W96
song007_8_1:
	.byte		N11	, Dn1, v052
	.byte	W12
	.byte		N05	, Dn1, v040
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Dn1, v052
	.byte	W12
	.byte		N05	, Dn1, v040
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Dn1, v052
	.byte	W12
	.byte		N05	, Dn1, v040
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Dn1, v052
	.byte	W12
	.byte		N05	, Dn1, v040
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte	PEND
song007_8_2:
	.byte	PATT	
		.int	song007_8_1
	.byte	PATT	
		.int	song007_8_1
	.byte	PATT	
		.int	song007_8_1
	.byte	PATT	
		.int	song007_8_1
	.byte	PATT	
		.int	song007_8_1
	.byte	PATT	
		.int	song007_8_1
	.byte	PATT	
		.int	song007_8_1
	.byte	PATT	
		.int	song007_8_1
	.byte	GOTO	
		.int	song007_8_2
	.byte	FINE

	.align 2
	.global song007
song007:	@ 0x0879EF18
	.byte	8		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.int	voicegroup007		@ voicegroup/tone

	.int	song007_1		@ track
	.int	song007_2		@ track
	.int	song007_3		@ track
	.int	song007_4		@ track
	.int	song007_5		@ track
	.int	song007_6		@ track
	.int	song007_7		@ track
	.int	song007_8		@ track
