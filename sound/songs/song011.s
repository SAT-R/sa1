	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song011_1
song011_1:	@ 0x0879FA14
	.byte	KEYSH	, 0
	.byte	TEMPO	, 66
	.byte	VOICE	, 75
	.byte	VOL	, v094
	.byte	PAN	, c_v
	.byte		N05	, Cn2, v116
	.byte	W05
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N24	, Gn2
	.byte	W30
	.byte	W01
	.byte		N05	, En3, v028
	.byte	W06
	.byte			Dn3, v032
	.byte	W06
	.byte			Cn3, v036
	.byte	W06
	.byte			Bn2, v040
	.byte	W06
	.byte			Fn3, v048
	.byte	W06
	.byte			En3, v052
	.byte	W06
	.byte			Dn3, v056
	.byte	W06
	.byte			Cn3, v060
	.byte	W06
	.byte			Gn3, v064
	.byte	W06
	.byte			Fn3, v068
	.byte	W06
	.byte			En3, v072
	.byte	W06
	.byte			Dn3, v076
	.byte	W06
	.byte			An3, v084
	.byte	W06
	.byte			Gn3, v088
	.byte	W06
	.byte			Fn3, v092
	.byte	W06
	.byte			En3, v096
	.byte	W06
	.byte			Bn3, v100
	.byte	W06
	.byte			An3, v104
	.byte	W06
	.byte			Gn3, v108
	.byte	W06
	.byte			Fn3, v116
	.byte	W06
song011_1_10:
	.byte		N56	, An3, v088
	.byte	W60
	.byte		N11	, Gn3, v100
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte		N92	, En3
	.byte	W96
song011_1_1:
	.byte		N56	, Gn3, v100
	.byte	W60
	.byte		N11	, Fn3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte	PEND
	.byte		N92	, Dn3
	.byte	W96
song011_1_2:
	.byte		N56	, Fn3, v100
	.byte	W60
	.byte		N11	, Ds3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte	PEND
song011_1_3:
	.byte		N44	, Cn3, v100
	.byte	W48
	.byte			Dn3
	.byte	W48
	.byte	PEND
song011_1_4:
	.byte		N05	, En3, v100
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte		TIE	, En3
	.byte	W84
	.byte	PEND
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N56	, An3
	.byte	W60
	.byte		N11	, Gn3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte		N92	, En3
	.byte	W96
	.byte	PATT	
		.int	song011_1_1
	.byte		N92	, Dn3, v100
	.byte	W96
	.byte	PATT	
		.int	song011_1_2
	.byte	PATT	
		.int	song011_1_3
	.byte	PATT	
		.int	song011_1_4
	.byte	W92
	.byte	W03
	.byte		EOT	, En3
	.byte	W01
	.byte	W96
	.byte	W96
song011_1_5:
	.byte		N56	, Gn3, v100
	.byte	W60
	.byte		N11	, En3
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte	PEND
song011_1_6:
	.byte		N23	, As3, v100
	.byte	W24
	.byte		N11	, Cn4
	.byte	W12
	.byte		N23	, As3
	.byte	W24
	.byte		N11	, Gn3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte		N68	, An3
	.byte	W12
	.byte	PEND
song011_1_7:
	.byte	W60
	.byte		N11	, En3, v100
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte		N32	, Gn3
	.byte	W12
	.byte	PEND
song011_1_8:
	.byte	W24
	.byte		N11	, An3, v100
	.byte	W12
	.byte		N32	, Gn3
	.byte	W36
	.byte		N23	, En3
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.int	song011_1_5
	.byte	PATT	
		.int	song011_1_6
song011_1_9:
	.byte	W60
	.byte		N11	, En3, v100
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte		TIE	, Gn3
	.byte	W12
	.byte	PEND
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte	PATT	
		.int	song011_1_5
	.byte	PATT	
		.int	song011_1_6
	.byte	PATT	
		.int	song011_1_7
	.byte	PATT	
		.int	song011_1_8
	.byte	PATT	
		.int	song011_1_5
	.byte	PATT	
		.int	song011_1_6
	.byte	PATT	
		.int	song011_1_9
	.byte	W92
	.byte	W03
	.byte		EOT	, Gn3
	.byte	W01
	.byte	GOTO	
		.int	song011_1_10
	.byte	FINE

	@********************** Track  2 **********************@

	.global song011_2
song011_2:	@ 0x0879FB53
	.byte	KEYSH	, 0
	.byte	VOICE	, 50
	.byte	PAN	, c_v
	.byte	VOL	, v087
	.byte		N05	, Cn2, v116
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N17	, Gn2
	.byte	W18
	.byte		N11	, Gn1
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
song011_2_1:
	.byte		N04	, An1, v116
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			En1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			En1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			An1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			En1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			En1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.int	song011_2_1
song011_2_2:
	.byte		N04	, Gn1, v116
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.int	song011_2_2
song011_2_3:
	.byte		N04	, Fn1, v116
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Cn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Ds1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Cn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Cn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Ds1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Cn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.int	song011_2_3
	.byte	PATT	
		.int	song011_2_1
	.byte	PATT	
		.int	song011_2_1
	.byte	PATT	
		.int	song011_2_1
	.byte	PATT	
		.int	song011_2_1
	.byte	PATT	
		.int	song011_2_2
	.byte	PATT	
		.int	song011_2_2
	.byte	PATT	
		.int	song011_2_3
	.byte	PATT	
		.int	song011_2_3
	.byte	PATT	
		.int	song011_2_1
	.byte	PATT	
		.int	song011_2_1
song011_2_4:
	.byte		N04	, An1, v116
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			An1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte		N04	
	.byte	W30
	.byte	PEND
	.byte	PATT	
		.int	song011_2_4
song011_2_5:
	.byte		N04	, Cn2, v116
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			An1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			An1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	PEND
song011_2_6:
	.byte		N04	, Fs1, v116
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Ds1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Ds1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	PEND
song011_2_7:
	.byte		N04	, Fn1, v116
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Cn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Cn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Cn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Cn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	PEND
song011_2_8:
	.byte		N04	, Gn1, v116
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			En1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			En1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.int	song011_2_5
	.byte	PATT	
		.int	song011_2_6
	.byte	PATT	
		.int	song011_2_7
	.byte	PATT	
		.int	song011_2_8
	.byte	PATT	
		.int	song011_2_5
	.byte	PATT	
		.int	song011_2_6
	.byte	PATT	
		.int	song011_2_7
	.byte	PATT	
		.int	song011_2_8
	.byte	PATT	
		.int	song011_2_5
	.byte	PATT	
		.int	song011_2_6
	.byte	PATT	
		.int	song011_2_7
	.byte	PATT	
		.int	song011_2_8
	.byte	GOTO	
		.int	song011_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song011_3
song011_3:	@ 0x0879FD19
	.byte	KEYSH	, 0
	.byte	VOICE	, 66
	.byte	MOD	, 0
	.byte	VOL	, v065
	.byte	PAN	, c_v
	.byte		N05	, Cn4, v100
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		TIE	, Bn3
	.byte	W54
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
song011_3_9:
	.byte	VOICE	, 66
	.byte	MOD	, 0
	.byte	VOL	, v065
	.byte	PAN	, c_v
	.byte		N03	, An4, v100
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			En5
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			An4
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			En5
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			An4
	.byte	W06
song011_3_3:
	.byte		N03	, An4, v100
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			En5
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			An4
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			En5
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			An4
	.byte	W06
	.byte	PEND
song011_3_1:
	.byte		N03	, Gn4, v100
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.int	song011_3_1
song011_3_2:
	.byte		N03	, An4, v100
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Ds5
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			An4
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Ds5
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			An4
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.int	song011_3_2
	.byte	PATT	
		.int	song011_3_3
	.byte	PATT	
		.int	song011_3_3
	.byte	PATT	
		.int	song011_3_3
	.byte	PATT	
		.int	song011_3_3
	.byte	PATT	
		.int	song011_3_1
	.byte	PATT	
		.int	song011_3_1
	.byte	PATT	
		.int	song011_3_2
	.byte	PATT	
		.int	song011_3_2
	.byte	PATT	
		.int	song011_3_3
	.byte	PATT	
		.int	song011_3_3
song011_3_4:
	.byte		N05	, An2, v100
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte		N05	
	.byte	W30
	.byte	PEND
	.byte	PATT	
		.int	song011_3_4
	.byte	VOICE	, 67
	.byte	VOL	, v111
	.byte	W06
	.byte		N05	, En4, v100
	.byte	W06
	.byte		N11	, Cn4
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte		N23	, En4
	.byte	W36
song011_3_6:
	.byte	W06
	.byte		N05	, Fn4, v100
	.byte	W06
	.byte		N11	, Cs4
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte		N23	, Fn4
	.byte	W36
	.byte	PEND
song011_3_5:
	.byte	W06
	.byte		N05	, En4, v100
	.byte	W06
	.byte		N11	, Cn4
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte		N23	, En4
	.byte	W36
	.byte	PEND
song011_3_7:
	.byte		N23	, Dn4, v100
	.byte	W24
	.byte			En4
	.byte	W24
	.byte			Fn4
	.byte	W24
	.byte			Gn4
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.int	song011_3_5
	.byte	PATT	
		.int	song011_3_6
	.byte	PATT	
		.int	song011_3_5
song011_3_8:
	.byte		N23	, Dn4, v100
	.byte	W24
	.byte			Gn4
	.byte	W24
	.byte			Fn4
	.byte	W24
	.byte			En4
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.int	song011_3_5
	.byte	PATT	
		.int	song011_3_6
	.byte	PATT	
		.int	song011_3_5
	.byte	PATT	
		.int	song011_3_7
	.byte	PATT	
		.int	song011_3_5
	.byte	PATT	
		.int	song011_3_6
	.byte	PATT	
		.int	song011_3_5
	.byte	PATT	
		.int	song011_3_8
	.byte	GOTO	
		.int	song011_3_9
	.byte	FINE

	@********************** Track  4 **********************@

	.global song011_4
song011_4:	@ 0x0879FEB1
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v103
	.byte	PAN	, c_v
	.byte	BENDR	, 127
	.byte		N05	, Cs1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N11	, Cs1, v127
	.byte		N01	, Dn1, v052
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N01	, Dn1, v052
	.byte	W12
	.byte		N05	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N28	, Cs1, v127
	.byte		N01	, Dn1, v044
	.byte	W30
	.byte		N44	, Cn1, v127
	.byte		N01	, Dn1, v044
	.byte	W24
	.byte			Dn1, v048
	.byte	W24
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v044
	.byte	W24
	.byte		N11	, Cn1, v127
	.byte		N01	, Dn1, v048
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte	W12
	.byte		N11	
	.byte		N01	, Dn1, v044
	.byte	W12
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte		N05	
	.byte	W06
song011_4_1:
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N11	, Cs1, v127
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte		N13	, Ds1, v048
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte		N23	, Cn1
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte		N11	, Cs1, v127
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte		N13	, Ds1, v048
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte		N05	
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N05	, Cn1, v127
	.byte		N13	, Ds1, v048
	.byte	W06
	.byte		N05	, Cn1, v127
	.byte	W06
	.byte		N05	
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N05	, Cn1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte		N13	, Ds1, v048
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte			Cn1
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N05	, Cn1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N05	, Cn1, v127
	.byte		N13	, Ds1, v048
	.byte	W06
	.byte		N05	, Cn1, v127
	.byte	W06
	.byte			Cs1
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte		N13	, Ds1, v048
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte		N05	
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N05	, Cn1, v127
	.byte		N13	, Ds1, v048
	.byte	W06
	.byte		N05	, Cn1, v127
	.byte	W06
	.byte		N05	
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte		N05	, Cn1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte		N13	, Ds1, v048
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte			Cn1
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N05	, Cn1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N05	, Cn1, v127
	.byte		N13	, Ds1, v048
	.byte	W06
	.byte		N05	, Cn1, v127
	.byte	W06
	.byte			Cs1
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte		N13	, Ds1, v048
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte		N23	, Cn1
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N17	, Cs1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W06
	.byte		N11	, Cn1, v127
	.byte	W06
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N17	, Cn1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N17	, Cs1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W06
	.byte		N11	, Cn1, v127
	.byte	W06
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N17	, Cn1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N17	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1
	.byte	W06
	.byte		N11	, Cn1, v127
	.byte	W06
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N17	, Cn1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N17	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1
	.byte	W06
	.byte		N11	, Cn1, v127
	.byte	W06
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N17	, Cs1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N17	, Cs1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W06
	.byte		N11	, Cn1, v127
	.byte	W06
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N17	, Cn1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N17	, Cs1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W06
	.byte		N11	, Cn1, v127
	.byte	W06
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N17	, Cn1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N17	, Cs1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W06
	.byte		N11	, Cn1, v127
	.byte	W06
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N17	, Cn1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N17	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W06
	.byte		N11	, Cn1, v127
	.byte	W06
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N17	, Cs1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte		N13	, Ds1, v048
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte		N23	, Cn1
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N17	, Cs1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W06
	.byte		N11	, Cn1, v127
	.byte	W06
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N17	, Cn1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N17	, Cs1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W06
	.byte		N11	, Cn1, v127
	.byte	W06
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N17	, Cn1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N17	, Cs1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W06
	.byte		N11	, Cn1, v127
	.byte	W06
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N17	, Cn1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N17	, Cs1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W06
	.byte		N11	, Cn1, v127
	.byte	W06
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N17	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N17	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W06
	.byte		N11	, Cn1, v127
	.byte	W06
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N17	, Cn1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N17	, Cs1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W06
	.byte		N11	, Cn1, v127
	.byte	W06
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N17	, Cn1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N17	, Cs1, v127
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W06
	.byte		N11	, Cn1, v127
	.byte	W06
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte		N17	, Cn1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cs1, v127
	.byte		N01	, Dn1, v048
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N23	, Cn1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N17	, Cs1, v127
	.byte		N01	, Dn1, v056
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N13	, Ds1
	.byte	W06
	.byte		N11	, Cn1, v127
	.byte	W06
	.byte		N01	, Dn1, v052
	.byte	W06
	.byte		N17	, Cs1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N13	, Ds1, v048
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte		N13	, Ds1, v048
	.byte	W06
	.byte		N01	, Cs1, v127
	.byte	W06
	.byte	GOTO	
		.int	song011_4_1
	.byte	W01
	.byte	FINE

	@********************** Track  5 **********************@

	.global song011_5
song011_5:	@ 0x087A06F0
	.byte	KEYSH	, 0
	.byte	VOICE	, 49
	.byte	VOL	, v066
	.byte	PAN	, c_v
	.byte		N05	, Cn2, v116
	.byte	W05
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N24	, Gn2
	.byte	W30
	.byte	W01
	.byte		N05	, En3, v060
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Cn3, v064
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Fn3, v068
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Dn3, v072
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Gn3, v076
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			En3, v080
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			An3, v084
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Fn3, v088
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Bn3, v092
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Gn3, v096
	.byte	W06
	.byte			Fn3
	.byte	W06
song011_5_1:
	.byte		N56	, An3, v100
	.byte	W60
	.byte		N11	, Gn3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte	PEND
	.byte		N92	, En3
	.byte	W96
song011_5_2:
	.byte		N56	, Gn3, v100
	.byte	W60
	.byte		N11	, Fn3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte	PEND
	.byte		N92	, Dn3
	.byte	W96
song011_5_3:
	.byte		N56	, Fn3, v100
	.byte	W60
	.byte		N11	, Ds3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte	PEND
song011_5_4:
	.byte		N44	, Cn3, v100
	.byte	W48
	.byte			Dn3
	.byte	W48
	.byte	PEND
song011_5_5:
	.byte		N05	, En3, v100
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte		N32	, En3
	.byte	W36
	.byte		N44	, Fs3
	.byte	W48
	.byte	PEND
song011_5_6:
	.byte		N44	, Gn3, v100
	.byte	W48
	.byte			Gs3
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.int	song011_5_1
	.byte		N92	, En3, v100
	.byte	W96
	.byte	PATT	
		.int	song011_5_2
	.byte		N92	, Dn3, v100
	.byte	W96
	.byte	PATT	
		.int	song011_5_3
	.byte	PATT	
		.int	song011_5_4
	.byte	PATT	
		.int	song011_5_5
	.byte	PATT	
		.int	song011_5_6
	.byte	W96
	.byte	W96
song011_5_7:
	.byte		N56	, Gn3, v100
	.byte	W60
	.byte		N11	, En3
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte	PEND
song011_5_8:
	.byte		N23	, As3, v100
	.byte	W24
	.byte		N11	, Cn4
	.byte	W12
	.byte		N23	, As3
	.byte	W24
	.byte		N11	, Gn3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte		N68	, An3
	.byte	W12
	.byte	PEND
song011_5_9:
	.byte	W60
	.byte		N11	, En3, v100
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte		N32	, Gn3
	.byte	W12
	.byte	PEND
song011_5_10:
	.byte	W24
	.byte		N11	, An3, v100
	.byte	W12
	.byte		N32	, Gn3
	.byte	W36
	.byte		N23	, En3
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.int	song011_5_7
	.byte	PATT	
		.int	song011_5_8
song011_5_11:
	.byte	W60
	.byte		N11	, En3, v100
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte		TIE	, Gn3
	.byte	W12
	.byte	PEND
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte	PATT	
		.int	song011_5_7
	.byte	PATT	
		.int	song011_5_8
	.byte	PATT	
		.int	song011_5_9
	.byte	PATT	
		.int	song011_5_10
	.byte	PATT	
		.int	song011_5_7
	.byte	PATT	
		.int	song011_5_8
	.byte	PATT	
		.int	song011_5_11
	.byte	W92
	.byte	W03
	.byte		EOT	, Gn3
	.byte	W01
	.byte	GOTO	
		.int	song011_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song011_6
song011_6:	@ 0x087A0825
	.byte	KEYSH	, 0
	.byte	VOICE	, 48
	.byte	MOD	, 0
	.byte	VOL	, v060
	.byte	PAN	, c_v
	.byte		N05	, Cn5, v092
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Bn4
	.byte	W54
	.byte	W96
song011_6_1:
	.byte		N05	, An5, v092
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			En6
	.byte	W06
	.byte			An5
	.byte	W06
	.byte			Dn6
	.byte	W06
	.byte			An5
	.byte	W06
	.byte			Cn6
	.byte	W06
	.byte			An5
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			En6
	.byte	W06
	.byte			An5
	.byte	W06
	.byte			Dn6
	.byte	W06
	.byte			An5
	.byte	W06
	.byte			Cn6
	.byte	W06
	.byte			An5
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.int	song011_6_1
song011_6_2:
	.byte		N05	, Gn5, v092
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Dn6
	.byte	W06
	.byte			Gn5
	.byte	W06
	.byte			Cn6
	.byte	W06
	.byte			Gn5
	.byte	W06
	.byte			Bn5
	.byte	W06
	.byte			Gn5
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Dn6
	.byte	W06
	.byte			Gn5
	.byte	W06
	.byte			Cn6
	.byte	W06
	.byte			Gn5
	.byte	W06
	.byte			Bn5
	.byte	W06
	.byte			Gn5
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.int	song011_6_2
song011_6_3:
	.byte		N05	, An5, v092
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Ds6
	.byte	W06
	.byte			An5
	.byte	W06
	.byte			Dn6
	.byte	W06
	.byte			An5
	.byte	W06
	.byte			Cn6
	.byte	W06
	.byte			An5
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Ds6
	.byte	W06
	.byte			An5
	.byte	W06
	.byte			Dn6
	.byte	W06
	.byte			An5
	.byte	W06
	.byte			Cn6
	.byte	W06
	.byte			An5
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.int	song011_6_3
	.byte	PATT	
		.int	song011_6_1
	.byte	PATT	
		.int	song011_6_1
	.byte	PATT	
		.int	song011_6_1
	.byte	PATT	
		.int	song011_6_1
	.byte	PATT	
		.int	song011_6_2
	.byte	PATT	
		.int	song011_6_2
	.byte	PATT	
		.int	song011_6_3
	.byte	PATT	
		.int	song011_6_3
	.byte	PATT	
		.int	song011_6_1
	.byte	PATT	
		.int	song011_6_1
song011_6_4:
	.byte		N05	, An3, v092
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			An3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte		N05	
	.byte	W30
	.byte	PEND
	.byte	PATT	
		.int	song011_6_4
song011_6_5:
	.byte	W06
	.byte		N06	, En5, v092
	.byte	W06
	.byte			Cn5
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			Cn5
	.byte	W12
	.byte			En5
	.byte	W36
	.byte	PEND
song011_6_6:
	.byte	W06
	.byte		N06	, Fn5, v092
	.byte	W06
	.byte			Cs5
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			As4
	.byte	W12
	.byte			Cs5
	.byte	W12
	.byte			Fn5
	.byte	W36
	.byte	PEND
	.byte	PATT	
		.int	song011_6_5
song011_6_7:
	.byte		N06	, Dn5, v092
	.byte	W24
	.byte			En5
	.byte	W24
	.byte			Fn5
	.byte	W24
	.byte			Gn5
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.int	song011_6_5
	.byte	PATT	
		.int	song011_6_6
	.byte	PATT	
		.int	song011_6_5
song011_6_8:
	.byte		N06	, Dn5, v092
	.byte	W24
	.byte			Gn5
	.byte	W24
	.byte			Fn5
	.byte	W24
	.byte			En5
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.int	song011_6_5
	.byte	PATT	
		.int	song011_6_6
	.byte	PATT	
		.int	song011_6_5
	.byte	PATT	
		.int	song011_6_7
	.byte	PATT	
		.int	song011_6_5
	.byte	PATT	
		.int	song011_6_6
	.byte	PATT	
		.int	song011_6_5
	.byte	PATT	
		.int	song011_6_8
	.byte	GOTO	
		.int	song011_6_1
	.byte	FINE

	.align 2
	.global song011
song011:	@ 0x087A0980
	.byte	6		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.int	voicegroup006		@ voicegroup/tone

	.int	song011_1		@ track
	.int	song011_2		@ track
	.int	song011_3		@ track
	.int	song011_4		@ track
	.int	song011_5		@ track
	.int	song011_6		@ track
