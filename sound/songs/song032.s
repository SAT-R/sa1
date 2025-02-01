	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song032_1
song032_1:	@ 0x087B2550
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 90
	.byte	VOL	, v100
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
song032_1_1:
	.byte		N07	, En2, v116
	.byte	W08
	.byte		N11	
	.byte	W08
	.byte		N30	, As2, v127
	.byte	W80
	.byte	PEND
	.byte	W96
	.byte	PATT	
		.int	song032_1_1
	.byte	W96
song032_1_3:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N07	, En2, v116
	.byte	W08
	.byte		N11	
	.byte	W08
	.byte		N72	, As2, v127
	.byte	W80
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
song032_1_2:
	.byte	W80
	.byte		N07	, En2, v127
	.byte	W08
	.byte		N07	
	.byte	W08
	.byte	PEND
	.byte		N23	, As2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.int	song032_1_2
	.byte		N23	, As2, v127
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
	.byte	W56
	.byte		N06	, As2, v120
	.byte	W08
	.byte		N07	, En3
	.byte	W08
	.byte		N24	, As2, v127
	.byte	W24
	.byte	W96
	.byte	W56
	.byte		N06	, Cs2, v120
	.byte	W08
	.byte		N07	, Gn2
	.byte	W08
	.byte		N24	, Cs2, v127
	.byte	W24
	.byte	W96
	.byte	W56
	.byte		N06	, Dn2, v120
	.byte	W08
	.byte		N07	, Gs2
	.byte	W08
	.byte		N28	, Dn2, v127
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
	.byte		N07	, En2, v116
	.byte	W08
	.byte		N11	
	.byte	W08
	.byte		N32	, As2, v127
	.byte	W80
	.byte	W96
	.byte	PATT	
		.int	song032_1_1
	.byte	W96
	.byte	GOTO	
		.int	song032_1_3
	.byte	FINE

	@********************** Track  2 **********************@

	.global song032_2
song032_2:	@ 0x087B2600
	.byte	KEYSH	, 0
	.byte	VOICE	, 101
	.byte	VOL	, v095
	.byte	W96
	.byte	W96
song032_2_1:
	.byte	W40
	.byte		N19	, An3, v056
	.byte	W20
	.byte			Cs4
	.byte	W20
	.byte		TIE	, Fn4
	.byte	W16
	.byte	PEND
	.byte	W96
	.byte	W24
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N09	, Fs5
	.byte	W10
	.byte			Dn5
	.byte	W10
	.byte			As4
	.byte	W10
	.byte			Fs4
	.byte	W10
	.byte			Dn4
	.byte	W10
	.byte		N88	, As3
	.byte	W18
song032_2_2:
	.byte	W72
	.byte		N09	, Gs5, v052
	.byte	W10
	.byte			En5, v056
	.byte	W10
	.byte			Bn4
	.byte	W04
	.byte	PEND
song032_2_3:
	.byte	W06
	.byte		N09	, Gs4, v052
	.byte	W10
	.byte			En4, v056
	.byte	W10
	.byte			Bn3
	.byte	W10
	.byte			Gs3, v052
	.byte	W10
	.byte			En3, v056
	.byte	W10
	.byte		TIE	, Bn2
	.byte	W40
	.byte	PEND
	.byte	W96
	.byte	W52
	.byte	W01
	.byte		EOT	
	.byte	W01
	.byte		N19	, An3
	.byte	W20
	.byte			Cn3
	.byte	W20
	.byte			Fn3
	.byte	W02
song032_2_4:
	.byte	W18
	.byte		N19	, Fn4, v056
	.byte	W20
	.byte			Cn4
	.byte	W20
	.byte		N10	, An4
	.byte	W36
	.byte	W02
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
song032_2_5:
	.byte	W24
	.byte		N10	, Cn4, v056
	.byte	W05
	.byte			Dn4
	.byte	W05
	.byte		N09	, Ds4
	.byte	W05
	.byte		N06	, Fn4, v052
	.byte	W05
	.byte		N10	, Gn4
	.byte	W15
	.byte			Cn4, v048
	.byte	W05
	.byte			Dn4
	.byte	W05
	.byte		N09	, Ds4
	.byte	W05
	.byte		N06	, Fn4
	.byte	W05
	.byte		N10	, Gn4, v044
	.byte	W15
	.byte			Cn4
	.byte	W02
	.byte	PEND
song032_2_6:
	.byte	W03
	.byte		N10	, Dn4, v040
	.byte	W05
	.byte		N09	, Ds4
	.byte	W05
	.byte		N06	, Fn4
	.byte	W05
	.byte		N10	, Gn4
	.byte	W15
	.byte			Cn4, v036
	.byte	W05
	.byte			Dn4
	.byte	W05
	.byte		N09	, Ds4, v032
	.byte	W05
	.byte		N06	, Fn4
	.byte	W05
	.byte		N10	, Gn4
	.byte	W15
	.byte			Cn4, v028
	.byte	W05
	.byte			Dn4
	.byte	W05
	.byte		N09	, Ds4
	.byte	W05
	.byte		N06	, Fn4, v024
	.byte	W05
	.byte		N07	, Gn4
	.byte	W08
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song032_2_7:
	.byte		N92	, Cn4, v048
	.byte	W96
	.byte		N90	, Ds4
	.byte	W92
	.byte	W02
	.byte		TIE	, Fn4
	.byte	W02
	.byte	W96
	.byte	W90
	.byte	W01
	.byte		EOT	
	.byte	W05
	.byte		N92	, Cn4
	.byte	W96
	.byte		N90	, Gn4
	.byte	W96
	.byte		TIE	, An4
	.byte	W96
	.byte	W84
	.byte	W01
	.byte		EOT	
	.byte	W11
	.byte	W24
	.byte	W01
	.byte		N24	, Fn4, v060
	.byte	W24
	.byte	W01
	.byte			Cs4
	.byte	W22
	.byte			As4
	.byte	W24
	.byte	W01
	.byte		N72	, Gn4
	.byte	W92
	.byte	W03
	.byte	W24
	.byte		N24	, Gs4
	.byte	W24
	.byte	W01
	.byte			Ds4
	.byte	W22
	.byte			Cs5
	.byte	W24
	.byte	W01
	.byte		N72	, Cn5
	.byte	W96
	.byte	W24
	.byte		N24	, Bn4
	.byte	W24
	.byte			Gs4
	.byte	W24
	.byte			Dn5
	.byte	W24
	.byte		N72	, Bn4
	.byte	W96
	.byte	W24
	.byte	W01
	.byte		N24	, Gn4
	.byte	W23
	.byte			Gs4
	.byte	W24
	.byte		N72	, Dn5
	.byte	W24
	.byte		N04	, Gn5, v020
	.byte	W04
	.byte			Gs5, v024
	.byte	W04
	.byte			An5, v016
	.byte	W04
	.byte			Bn5, v024
	.byte	W04
	.byte			Dn6, v012
	.byte	W04
	.byte			En6, v008
	.byte	W04
	.byte			Fn6
	.byte	W04
	.byte			Fs6, v004
	.byte	W04
	.byte			Gn6, v024
	.byte	W04
	.byte			Bn6
	.byte	W04
	.byte			Dn7, v016
	.byte	W04
	.byte			Gn7, v044
	.byte	W04
	.byte			Fn7, v036
	.byte	W04
	.byte			Dn7, v020
	.byte	W04
	.byte			Bn6
	.byte	W04
	.byte			Gn6, v036
	.byte	W04
	.byte			Fn6, v008
	.byte	W04
	.byte			Dn6, v012
	.byte	W04
	.byte			Bn5, v016
	.byte	W04
	.byte			Gn5, v020
	.byte	W04
	.byte			Fn5, v024
	.byte	W04
	.byte			Dn5, v020
	.byte	W04
	.byte			Bn4, v032
	.byte	W04
	.byte			Gn4, v040
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
	.byte	PATT	
		.int	song032_2_1
	.byte	W96
	.byte	W24
	.byte	W03
	.byte		EOT	, Fn4
	.byte	W01
	.byte		N09	, Fs5, v056
	.byte	W10
	.byte			Dn5
	.byte	W10
	.byte			As4
	.byte	W10
	.byte			Fs4
	.byte	W10
	.byte			Dn4
	.byte	W10
	.byte		N88	, As3
	.byte	W18
	.byte	PATT	
		.int	song032_2_2
	.byte	PATT	
		.int	song032_2_3
	.byte	W96
	.byte	W52
	.byte	W01
	.byte		EOT	, Bn2
	.byte	W01
	.byte		N19	, An3, v056
	.byte	W20
	.byte			Cn3
	.byte	W20
	.byte			Fn3
	.byte	W02
	.byte	PATT	
		.int	song032_2_4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.int	song032_2_5
	.byte	PATT	
		.int	song032_2_6
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.int	song032_2_7
	.byte	FINE

	@********************** Track  3 **********************@

	.global song032_3
song032_3:	@ 0x087B27B0
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v115
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
	.byte		N92	, Cn1, v116
	.byte		N92	, Cn2
	.byte	W96
	.byte	W96
	.byte			Cn1
	.byte		N92	, Cn2
	.byte	W96
	.byte	W96
song032_3_1:
	.byte		N07	, Cn1, v116
	.byte		N05	, Dn1, v060
	.byte	W08
	.byte		N07	, Cn1, v116
	.byte	W08
	.byte		N07	
	.byte	W08
	.byte		N15	, Cs1
	.byte		N05	, Dn1, v060
	.byte	W16
	.byte		N07	, Cn1, v116
	.byte	W08
	.byte		N07	
	.byte		N05	, Dn1, v060
	.byte	W08
	.byte		N07	, Cn1, v116
	.byte	W08
	.byte		N07	
	.byte	W08
	.byte		N15	, Cs1
	.byte		N05	, Dn1, v060
	.byte	W16
	.byte		N06	, Cn1, v116
	.byte	W08
	.byte	PEND
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte		N07	, Cn1, v116
	.byte		N05	, Dn1, v060
	.byte		N92	, Fn2, v116
	.byte	W08
	.byte		N07	, Cn1
	.byte	W08
	.byte		N07	
	.byte	W08
	.byte		N15	, Cs1
	.byte		N05	, Dn1, v060
	.byte	W16
	.byte		N07	, Cn1, v116
	.byte	W08
	.byte		N07	
	.byte		N05	, Dn1, v060
	.byte	W08
	.byte		N07	, Cn1, v116
	.byte	W08
	.byte		N07	
	.byte	W08
	.byte		N15	, Cs1
	.byte		N05	, Dn1, v060
	.byte	W16
	.byte		N06	, Cn1, v116
	.byte	W08
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte	PATT	
		.int	song032_3_1
	.byte		N07	, Cn1, v116
	.byte		N05	, Dn1, v060
	.byte	W08
	.byte		N07	, Cn1, v116
	.byte	W08
	.byte		N07	
	.byte	W08
	.byte		N15	, Cs1
	.byte		N05	, Dn1, v060
	.byte	W16
	.byte		N07	, Cn1, v116
	.byte	W08
	.byte		N07	
	.byte		N05	, Dn1, v060
	.byte	W08
	.byte		N07	, Cn1, v116
	.byte	W08
	.byte		N07	
	.byte	W08
	.byte		N15	, Cs1
	.byte	W16
	.byte		N06	, Cn1
	.byte	W08
song032_3_2:
	.byte		N07	, Cn1, v116
	.byte	W56
	.byte		N05	
	.byte	W08
	.byte		N06	
	.byte	W08
	.byte		N24	
	.byte		N90	, Cn2
	.byte	W24
	.byte	PEND
	.byte	W96
	.byte	PATT	
		.int	song032_3_2
	.byte	W96
	.byte	PATT	
		.int	song032_3_2
	.byte		N02	, Cn1, v116
	.byte	W24
	.byte		N30	, Cs1
	.byte	W32
	.byte		N07	, Cn1
	.byte	W08
	.byte		N07	
	.byte	W32
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
	.byte		N92	
	.byte		N92	, Cn2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.int	song032_3_1
	.byte		N23	, Cn1, v116
	.byte	W23
	.byte	FINE

	@********************** Track  4 **********************@

	.global song032_4
song032_4:	@ 0x087B292B
	.byte	KEYSH	, 0
	.byte	VOICE	, 102
	.byte	VOL	, v095
	.byte		TIE	, Fn2, v112
	.byte	W96
	.byte	W44
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		TIE	, Cs2
	.byte	W48
	.byte	W96
	.byte	W52
	.byte	W01
	.byte		EOT	
	.byte	W01
	.byte		TIE	, Cn2
	.byte	W42
	.byte	W78
	.byte		EOT	
	.byte		TIE	, Gs2
	.byte	W18
	.byte	W96
	.byte	W06
	.byte		EOT	
	.byte		TIE	, Fs2
	.byte	W90
	.byte	W30
	.byte		EOT	
	.byte		TIE	, Cs2
	.byte	W66
	.byte	W54
	.byte		EOT	
	.byte		TIE	, Gn2
	.byte	W42
	.byte	W78
	.byte		EOT	
	.byte		TIE	, Dn2
	.byte	W18
	.byte	W96
	.byte	W06
	.byte		EOT	
	.byte		TIE	, Cn2
	.byte	W90
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		EOT	
song032_4_1:
	.byte		N03	, Cn2, v116
	.byte	W08
	.byte		N03	
	.byte	W08
	.byte		N03	
	.byte	W08
	.byte		N14	, Cn3
	.byte	W16
	.byte		N02	, Cn2
	.byte	W08
	.byte		N02	
	.byte	W08
	.byte		N01	
	.byte	W08
	.byte		N02	
	.byte	W08
	.byte		N13	, Cn3
	.byte	W16
	.byte		N02	, Cn2
	.byte	W08
	.byte	PEND
	.byte	PATT	
		.int	song032_4_1
	.byte	PATT	
		.int	song032_4_1
	.byte	PATT	
		.int	song032_4_1
song032_4_4:
	.byte	PATT	
		.int	song032_4_1
	.byte	PATT	
		.int	song032_4_1
	.byte	PATT	
		.int	song032_4_1
	.byte	PATT	
		.int	song032_4_1
	.byte	PATT	
		.int	song032_4_1
	.byte	PATT	
		.int	song032_4_1
	.byte	PATT	
		.int	song032_4_1
	.byte	PATT	
		.int	song032_4_1
song032_4_2:
	.byte		N03	, Gs1, v116
	.byte	W08
	.byte		N03	
	.byte	W08
	.byte		N03	
	.byte	W08
	.byte		N14	, Gs2
	.byte	W16
	.byte		N02	, Gs1
	.byte	W08
	.byte		N02	
	.byte	W08
	.byte		N01	
	.byte	W08
	.byte		N02	
	.byte	W08
	.byte		N13	, Gs2
	.byte	W16
	.byte		N02	, Gs1
	.byte	W08
	.byte	PEND
	.byte	PATT	
		.int	song032_4_2
	.byte	PATT	
		.int	song032_4_2
	.byte	PATT	
		.int	song032_4_2
	.byte	PATT	
		.int	song032_4_2
	.byte	PATT	
		.int	song032_4_2
song032_4_3:
	.byte		N03	, Gn1, v116
	.byte	W08
	.byte		N03	
	.byte	W08
	.byte		N03	
	.byte	W08
	.byte		N14	, Gn2
	.byte	W16
	.byte		N02	, Gn1
	.byte	W08
	.byte		N02	
	.byte	W08
	.byte		N01	
	.byte	W08
	.byte		N02	
	.byte	W08
	.byte		N13	, Gn2
	.byte	W16
	.byte		N02	, Gn1
	.byte	W08
	.byte	PEND
	.byte	PATT	
		.int	song032_4_3
	.byte	PATT	
		.int	song032_4_1
	.byte	PATT	
		.int	song032_4_1
	.byte	PATT	
		.int	song032_4_1
	.byte	PATT	
		.int	song032_4_1
	.byte	PATT	
		.int	song032_4_1
	.byte	PATT	
		.int	song032_4_1
	.byte	PATT	
		.int	song032_4_1
	.byte	PATT	
		.int	song032_4_1
	.byte	PATT	
		.int	song032_4_2
	.byte	PATT	
		.int	song032_4_2
	.byte	PATT	
		.int	song032_4_2
	.byte	PATT	
		.int	song032_4_2
	.byte	PATT	
		.int	song032_4_2
	.byte	PATT	
		.int	song032_4_2
	.byte	PATT	
		.int	song032_4_3
	.byte	PATT	
		.int	song032_4_3
	.byte		N04	, Cn2, v116
	.byte	W08
	.byte		N04	
	.byte	W08
	.byte		N03	, Cn2, v104
	.byte	W08
	.byte		N13	, Bn1, v127
	.byte	W16
	.byte		N06	, As1
	.byte	W56
	.byte		N03	, Cn2
	.byte	W08
	.byte			Cn2, v100
	.byte	W08
	.byte		N04	, Cn2, v116
	.byte	W08
	.byte		N13	, Bn1, v127
	.byte	W16
	.byte		N07	, As1, v116
	.byte	W56
	.byte		N04	, Ds2
	.byte	W08
	.byte		N04	
	.byte	W08
	.byte		N03	, Ds2, v104
	.byte	W08
	.byte		N13	, Dn2, v127
	.byte	W16
	.byte		N06	, Cs2
	.byte	W56
	.byte		N03	, Ds2
	.byte	W08
	.byte			Ds2, v100
	.byte	W08
	.byte		N04	, Ds2, v116
	.byte	W08
	.byte		N13	, Dn2, v127
	.byte	W16
	.byte		N07	, Cs2, v116
	.byte	W56
	.byte		N04	, En2
	.byte	W08
	.byte		N04	
	.byte	W08
	.byte		N03	, En2, v104
	.byte	W08
	.byte		N13	, Ds2, v127
	.byte	W16
	.byte		N06	, Dn2
	.byte	W56
	.byte		N03	, En2
	.byte	W08
	.byte			En2, v100
	.byte	W08
	.byte		N04	, En2, v116
	.byte	W08
	.byte		N13	, Ds2, v127
	.byte	W16
	.byte		N07	, Dn2, v116
	.byte	W32
	.byte		TIE	, Fn2, v112
	.byte	W24
	.byte	W96
	.byte		EOT	
	.byte		TIE	, Cs2
	.byte	W96
	.byte	W54
	.byte		EOT	
	.byte		TIE	, Cn2
	.byte	W42
	.byte	W78
	.byte		EOT	
	.byte		TIE	, Gs2
	.byte	W18
	.byte	W96
	.byte	W06
	.byte		EOT	
	.byte		TIE	, Fs2
	.byte	W90
	.byte	W30
	.byte		EOT	
	.byte		TIE	, Cs2
	.byte	W66
	.byte	W54
	.byte		EOT	
	.byte		TIE	, Gn2
	.byte	W42
	.byte	W78
	.byte		EOT	
	.byte		TIE	, Dn2
	.byte	W18
	.byte	W96
	.byte	W06
	.byte		EOT	
	.byte		TIE	, Cn2
	.byte	W90
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte	PATT	
		.int	song032_4_1
	.byte	PATT	
		.int	song032_4_1
	.byte	PATT	
		.int	song032_4_1
	.byte	PATT	
		.int	song032_4_1
	.byte	GOTO	
		.int	song032_4_4
	.byte	FINE

	@********************** Track  5 **********************@

	.global song032_5
song032_5:	@ 0x087B2B13
	.byte	KEYSH	, 0
	.byte	VOICE	, 64
	.byte	VOL	, v095
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
	.byte	W24
	.byte		N10	, Cn5, v096
	.byte	W05
	.byte			Dn5
	.byte	W05
	.byte		N13	, Ds5, v088
	.byte	W05
	.byte		N06	, Fn5
	.byte	W05
	.byte		N10	, Gn5, v084
	.byte	W15
	.byte			Cn5, v076
	.byte	W05
	.byte			Dn5, v072
	.byte	W05
	.byte		N13	, Ds5, v068
	.byte	W05
	.byte		N06	, Fn5, v064
	.byte	W05
	.byte		N10	, Gn5
	.byte	W15
	.byte			Cn5, v056
	.byte	W02
	.byte	W03
	.byte			Dn5, v052
	.byte	W05
	.byte		N13	, Ds5, v048
	.byte	W05
	.byte		N06	, Fn5, v044
	.byte	W05
	.byte		N10	, Gn5
	.byte	W15
	.byte			Cn5, v032
	.byte	W05
	.byte			Dn5
	.byte	W05
	.byte		N13	, Ds5, v028
	.byte	W05
	.byte		N06	, Fn5, v024
	.byte	W05
	.byte		N10	, Gn5, v020
	.byte	W42
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song032_5_1:
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
	.byte	W24
	.byte		N10	, Cn5, v096
	.byte	W05
	.byte			Dn5
	.byte	W05
	.byte		N13	, Ds5, v092
	.byte	W05
	.byte		N06	, Fn5
	.byte	W05
	.byte		N10	, Gn5, v088
	.byte	W15
	.byte			Cn5, v076
	.byte	W05
	.byte			Dn5, v072
	.byte	W05
	.byte		N13	, Ds5
	.byte	W05
	.byte		N06	, Fn5, v068
	.byte	W05
	.byte		N10	, Gn5, v064
	.byte	W15
	.byte			Cn5, v056
	.byte	W02
	.byte	W03
	.byte			Dn5, v052
	.byte	W05
	.byte		N13	, Ds5, v048
	.byte	W05
	.byte		N06	, Fn5, v044
	.byte	W05
	.byte		N10	, Gn5, v040
	.byte	W15
	.byte			Cn5, v032
	.byte	W05
	.byte			Dn5, v028
	.byte	W05
	.byte		N13	, Ds5, v024
	.byte	W05
	.byte		N06	, Fn5
	.byte	W05
	.byte		N10	, Gn5, v020
	.byte	W42
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.int	song032_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song032_6
song032_6:	@ 0x087B2BF7
	.byte	KEYSH	, 0
	.byte	VOICE	, 100
	.byte	VOL	, v066
	.byte	PAN	, c_v
	.byte		TIE	, An2, v064
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W54
	.byte		EOT	
	.byte		TIE	, As2
	.byte	W42
	.byte	W96
	.byte	W96
	.byte	W06
	.byte		EOT	
	.byte		TIE	, Bn2
	.byte	W90
	.byte	W96
	.byte	W54
	.byte		EOT	
	.byte		TIE	, Cn3
	.byte	W42
	.byte	W96
	.byte	W96
	.byte	W06
	.byte		EOT	
	.byte		TIE	
	.byte	W90
	.byte	W96
	.byte	W54
	.byte		EOT	
	.byte		TIE	, Ds3
	.byte	W42
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song032_6_1:
	.byte		N92	, Gn2, v112
	.byte	W92
	.byte	W02
	.byte		N01	, Bn2, v104
	.byte	W02
	.byte	PEND
song032_6_2:
	.byte		N44	, Cn3, v100
	.byte	W44
	.byte	W02
	.byte		N01	, Fs3, v060
	.byte	W02
	.byte		N44	, Gn3, v104
	.byte	W48
	.byte	PEND
song032_6_3:
	.byte		N44	, Fn3, v112
	.byte	W48
	.byte		TIE	, Cn3
	.byte	W48
	.byte	PEND
	.byte	W92
	.byte		EOT	
	.byte	W01
	.byte		N02	, Fs2
	.byte	W03
song032_6_4:
	.byte		N92	, Gn2, v104
	.byte	W92
	.byte	W01
	.byte		N02	, Bn2, v080
	.byte	W03
	.byte	PEND
song032_6_5:
	.byte		N44	, Cn3, v108
	.byte	W44
	.byte	W01
	.byte		N02	, Fs3, v080
	.byte	W03
	.byte		N44	, Gn3, v108
	.byte	W44
	.byte	W01
	.byte		N01	, Gs3, v096
	.byte	W03
	.byte	PEND
song032_6_6:
	.byte		N44	, An3, v112
	.byte	W48
	.byte		TIE	, Fn3
	.byte	W48
	.byte	PEND
	.byte	W92
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.int	song032_6_1
	.byte	PATT	
		.int	song032_6_2
	.byte	PATT	
		.int	song032_6_3
	.byte	W92
	.byte		EOT	, Cn3
	.byte	W01
	.byte		N02	, Fs2, v112
	.byte	W03
	.byte	PATT	
		.int	song032_6_4
	.byte	PATT	
		.int	song032_6_5
	.byte	PATT	
		.int	song032_6_6
	.byte	W92
	.byte	W02
	.byte		EOT	, Fn3
	.byte	W02
	.byte		N90	, Gs2, v080
	.byte	W96
	.byte		N92	, As2, v088
	.byte	W96
	.byte		TIE	, Gs2
	.byte	W96
	.byte	W92
	.byte	W01
	.byte		EOT	
	.byte	W03
	.byte		TIE	
	.byte	W96
	.byte	W88
	.byte	W01
	.byte		EOT	
	.byte	W07
	.byte		TIE	, Gn2
	.byte	W96
	.byte	W88
	.byte	W01
	.byte		EOT	
	.byte	W07
	.byte		N03	, Gs3, v084
	.byte	W08
	.byte		N03	
	.byte	W07
	.byte		N03	
	.byte	W08
	.byte		N13	, Gn3
	.byte	W17
	.byte		N06	, Fs3
	.byte	W56
	.byte		N03	, Gs3
	.byte	W07
	.byte		N02	
	.byte	W08
	.byte		N03	
	.byte	W08
	.byte		N13	, Gn3
	.byte	W17
	.byte		N07	, Fs3
	.byte	W56
	.byte		N03	, Bn3
	.byte	W08
	.byte		N03	
	.byte	W07
	.byte		N03	
	.byte	W08
	.byte		N13	, As3
	.byte	W17
	.byte		N06	, An3
	.byte	W56
	.byte		N03	, Bn3
	.byte	W07
	.byte		N02	
	.byte	W08
	.byte		N03	
	.byte	W08
	.byte		N13	, As3
	.byte	W17
	.byte		N07	, An3
	.byte	W56
	.byte		N03	, Cn4
	.byte	W08
	.byte		N03	
	.byte	W07
	.byte		N03	
	.byte	W08
	.byte		N13	, Bn3
	.byte	W17
	.byte		N06	, As3
	.byte	W56
	.byte		N03	, Cn4
	.byte	W07
	.byte		N02	
	.byte	W08
	.byte		N03	
	.byte	W08
	.byte		N13	, Bn3
	.byte	W17
	.byte		N07	, As3
	.byte	W32
	.byte		TIE	, An2, v064
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W54
	.byte		EOT	
	.byte		TIE	, As2
	.byte	W42
	.byte	W96
	.byte	W96
	.byte	W06
	.byte		EOT	
	.byte		TIE	, Bn2
	.byte	W90
	.byte	W96
	.byte	W54
	.byte		EOT	
	.byte		TIE	, Cn3
	.byte	W42
	.byte	W96
	.byte	W96
	.byte	W06
	.byte		EOT	
	.byte		TIE	
	.byte	W90
	.byte	W96
	.byte	W54
	.byte		EOT	
	.byte		TIE	, Ds3
	.byte	W42
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.int	song032_6_1
	.byte	FINE

	@********************** Track  7 **********************@

	.global song032_7
song032_7:	@ 0x087B2D48
	.byte	KEYSH	, 0
	.byte	VOICE	, 60
	.byte	VOL	, v095
	.byte	PAN	, c_v
	.byte		TIE	, Cs3, v112
	.byte		TIE	, Fn3
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W54
	.byte		EOT	, Cs3
	.byte			Fn3
	.byte		TIE	, Dn3
	.byte		TIE	, Fs3
	.byte	W42
	.byte	W96
	.byte	W96
	.byte	W06
	.byte		EOT	, Dn3
	.byte			Fs3
	.byte		TIE	, En3
	.byte		TIE	, Gs3, v104
	.byte	W90
	.byte	W96
	.byte	W54
	.byte		EOT	, En3
	.byte			Gs3
	.byte		TIE	, Fn3, v112
	.byte		TIE	, An3
	.byte	W42
	.byte	W96
	.byte	W96
	.byte	W06
	.byte		EOT	, Fn3
	.byte			An3
	.byte		TIE	, Ds3
	.byte		TIE	, As3
	.byte	W90
	.byte	W96
	.byte	W54
	.byte		EOT	, Ds3
	.byte			As3
	.byte		TIE	, Gn3
	.byte		TIE	, Ds4
	.byte	W42
	.byte	W96
	.byte	W96
	.byte		EOT	, Gn3
	.byte			Ds4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song032_7_1:
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
	.byte	W96
	.byte	W72
	.byte		TIE	, Cs3, v112
	.byte		TIE	, Fn3
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W54
	.byte		EOT	, Cs3
	.byte			Fn3
	.byte		TIE	, Dn3
	.byte		TIE	, Fs3
	.byte	W42
	.byte	W96
	.byte	W96
	.byte	W06
	.byte		EOT	, Dn3
	.byte			Fs3
	.byte		TIE	, En3
	.byte		TIE	, Gs3, v104
	.byte	W90
	.byte	W96
	.byte	W54
	.byte		EOT	, En3
	.byte			Gs3
	.byte		TIE	, Fn3, v112
	.byte		TIE	, An3
	.byte	W42
	.byte	W96
	.byte	W96
	.byte	W06
	.byte		EOT	, Fn3
	.byte			An3
	.byte		TIE	, Ds3
	.byte		TIE	, As3
	.byte	W90
	.byte	W96
	.byte	W54
	.byte		EOT	, Ds3
	.byte			As3
	.byte		TIE	, Gn3
	.byte		TIE	, Ds4
	.byte	W42
	.byte	W96
	.byte	W96
	.byte		EOT	, Gn3
	.byte			Ds4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.int	song032_7_1
	.byte	FINE

	@********************** Track  8 **********************@

	.global song032_8
song032_8:	@ 0x087B2E08
	.byte	KEYSH	, 0
	.byte	VOICE	, 74
	.byte	VOL	, v068
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
song032_8_1:
	.byte		N92	, Cn2, v088
	.byte		N92	, Gn2
	.byte	W96
	.byte		N88	
	.byte		N90	, Cn3
	.byte	W92
	.byte	W01
	.byte		TIE	
	.byte	W01
	.byte			An2
	.byte	W02
	.byte	W96
	.byte	W90
	.byte		EOT	
	.byte	W01
	.byte		EOT	, Cn3
	.byte	W05
	.byte		N92	, Gn2
	.byte		N92	, Cn3
	.byte	W96
	.byte		N88	, Ds3
	.byte		N90	, Gn3
	.byte	W96
	.byte		TIE	, Fn3
	.byte		TIE	, An3
	.byte	W96
	.byte	W84
	.byte	W01
	.byte		EOT	
	.byte	W01
	.byte		EOT	, Fn3
	.byte	W10
	.byte		N92	, Cs3, v084
	.byte		N92	, Fn3, v088
	.byte	W96
	.byte		N96	, Ds3, v080
	.byte		N92	, Gn3, v088
	.byte	W96
	.byte		TIE	, Cn3
	.byte		TIE	, Ds3, v080
	.byte	W96
	.byte	W90
	.byte	W01
	.byte		EOT	, Cn3
	.byte	W02
	.byte			Ds3
	.byte	W03
	.byte		TIE	, Bn2, v088
	.byte		TIE	, Dn3
	.byte	W96
	.byte		N90	, Fn3
	.byte	W01
	.byte		EOT	, Bn2
	.byte	W88
	.byte			Dn3
	.byte	W07
	.byte		TIE	, As2
	.byte		TIE	, Fn3
	.byte	W96
	.byte	W96
	.byte		EOT	, As2
	.byte			Fn3
	.byte		N92	, Gn2
	.byte		N92	, Cn3
	.byte	W96
	.byte		N90	
	.byte		N90	, Ds3
	.byte	W92
	.byte	W01
	.byte		TIE	, Cn3
	.byte	W01
	.byte			Fn3
	.byte		TIE	, An3
	.byte	W02
	.byte	W96
	.byte	W90
	.byte	W01
	.byte		EOT	, Cn3
	.byte			Fn3
	.byte			An3
	.byte	W04
	.byte		N01	, Gn2
	.byte		N01	, Cn3
	.byte	W01
	.byte		N92	, Gn2
	.byte		N92	, Cn3
	.byte		N92	, Ds3
	.byte	W96
	.byte		N88	
	.byte		N90	, Gn3
	.byte		N90	, As3
	.byte	W92
	.byte	W03
	.byte		TIE	, Cn3
	.byte		TIE	, Fn3
	.byte		TIE	, An3
	.byte	W01
	.byte	W96
	.byte	W84
	.byte		EOT	
	.byte	W01
	.byte		EOT	, Cn3
	.byte			Fn3
	.byte	W11
	.byte		N92	, Fn2, v100
	.byte	W96
	.byte			Gn2
	.byte	W96
	.byte		TIE	, Ds2, v092
	.byte	W96
	.byte	W92
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte	W01
	.byte		N92	, Dn2, v100
	.byte	W92
	.byte	W03
	.byte	W01
	.byte		N90	, Fn2
	.byte	W92
	.byte	W03
	.byte		TIE	
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte		N03	, Cn3, v112
	.byte		N02	, En3
	.byte		N03	, Gs3
	.byte	W08
	.byte		N02	, Cn3
	.byte		N02	, En3
	.byte		N03	, Gs3
	.byte	W07
	.byte			Cn3
	.byte		N02	, En3
	.byte		N03	, Gs3
	.byte	W08
	.byte		N12	, Bn2
	.byte		N13	, Ds3
	.byte		N13	, Gn3
	.byte	W17
	.byte		N05	, As2
	.byte		N05	, Dn3
	.byte		N06	, Fs3
	.byte	W56
	.byte		N03	, Cn3
	.byte		N02	, En3
	.byte		N03	, Gs3
	.byte	W07
	.byte			Cn3
	.byte		N03	, En3
	.byte		N02	, Gs3
	.byte	W08
	.byte		N03	, Cn3
	.byte		N02	, En3
	.byte		N03	, Gs3
	.byte	W08
	.byte		N12	, Bn2
	.byte		N13	, Ds3
	.byte		N13	, Gn3
	.byte	W16
	.byte		N06	, As2
	.byte	W01
	.byte		N05	, Dn3
	.byte		N07	, Fs3
	.byte	W56
	.byte		N03	, Ds3
	.byte		N02	, Gn3
	.byte		N03	, Bn3
	.byte	W08
	.byte		N02	, Ds3
	.byte		N02	, Gn3
	.byte		N03	, Bn3
	.byte	W07
	.byte			Ds3
	.byte		N02	, Gn3
	.byte		N03	, Bn3
	.byte	W08
	.byte		N12	, Dn3
	.byte		N13	, Fs3
	.byte		N13	, As3
	.byte	W17
	.byte		N05	, Cs3
	.byte		N05	, Fn3
	.byte		N06	, An3
	.byte	W56
	.byte		N03	, Ds3
	.byte		N02	, Gn3
	.byte		N03	, Bn3
	.byte	W07
	.byte			Ds3
	.byte		N03	, Gn3
	.byte		N02	, Bn3
	.byte	W08
	.byte		N03	, Ds3
	.byte		N02	, Gn3
	.byte		N03	, Bn3
	.byte	W08
	.byte		N12	, Dn3
	.byte		N13	, Fs3
	.byte		N13	, As3
	.byte	W16
	.byte		N06	, Cs3
	.byte	W01
	.byte		N05	, Fn3
	.byte		N07	, An3
	.byte	W56
	.byte		N03	, En3
	.byte		N02	, Gs3
	.byte		N03	, Cn4
	.byte	W08
	.byte		N02	, En3
	.byte		N02	, Gs3
	.byte		N03	, Cn4
	.byte	W07
	.byte			En3
	.byte		N02	, Gs3
	.byte		N03	, Cn4
	.byte	W08
	.byte		N12	, Ds3
	.byte		N13	, Gn3
	.byte		N13	, Bn3
	.byte	W17
	.byte		N05	, Dn3
	.byte		N05	, Fs3
	.byte		N06	, As3
	.byte	W56
	.byte		N03	, En3
	.byte		N02	, Gs3
	.byte		N03	, Cn4
	.byte	W07
	.byte			En3
	.byte		N03	, Gs3
	.byte		N02	, Cn4
	.byte	W08
	.byte		N03	, En3
	.byte		N02	, Gs3
	.byte		N03	, Cn4
	.byte	W08
	.byte		N12	, Ds3
	.byte		N13	, Gn3
	.byte		N13	, Bn3
	.byte	W16
	.byte		N06	, Dn3
	.byte	W01
	.byte		N05	, Fs3
	.byte		N07	, As3
	.byte	W56
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
		.int	song032_8_1
	.byte	FINE

	@********************** Track  9 **********************@

	.global song032_9
song032_9:	@ 0x087B2FC1
	.byte	KEYSH	, 0
	.byte	VOICE	, 104
	.byte	VOL	, v043
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
song032_9_1:
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
	.byte		N92	, Cs3, v112
	.byte	W96
	.byte			Ds3
	.byte	W96
	.byte		TIE	, Cn3
	.byte	W96
	.byte	W90
	.byte	W01
	.byte		EOT	
	.byte	W05
	.byte		TIE	, Bn2
	.byte	W96
	.byte	W88
	.byte	W01
	.byte		EOT	
	.byte	W07
	.byte		TIE	, As2
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte		N02	, En3, v052
	.byte	W08
	.byte		N02	
	.byte	W07
	.byte		N02	
	.byte	W08
	.byte		N13	, Ds3
	.byte	W17
	.byte		N05	, Dn3
	.byte	W08
	.byte			Bn2, v008
	.byte	W48
	.byte		N02	, En3, v052
	.byte	W07
	.byte		N03	
	.byte	W08
	.byte		N02	
	.byte	W08
	.byte		N13	, Ds3
	.byte	W17
	.byte		N05	, Dn3
	.byte	W08
	.byte			Bn2, v008
	.byte	W48
	.byte		N02	, Gn3, v052
	.byte	W08
	.byte		N02	
	.byte	W07
	.byte		N02	
	.byte	W08
	.byte		N13	, Fs3
	.byte	W17
	.byte		N05	, Fn3
	.byte	W08
	.byte			Dn3, v008
	.byte	W48
	.byte		N02	, Gn3, v052
	.byte	W07
	.byte		N03	
	.byte	W08
	.byte		N02	
	.byte	W08
	.byte		N13	, Fs3
	.byte	W17
	.byte		N05	, Fn3
	.byte	W08
	.byte			Dn3, v008
	.byte	W48
	.byte		N02	, Gs3, v052
	.byte	W08
	.byte		N02	
	.byte	W07
	.byte		N02	
	.byte	W08
	.byte		N13	, Gn3
	.byte	W17
	.byte		N05	, Fs3
	.byte	W08
	.byte			Ds3, v008
	.byte	W48
	.byte		N02	, Gs3, v052
	.byte	W07
	.byte		N03	
	.byte	W08
	.byte		N02	
	.byte	W08
	.byte		N13	, Gn3
	.byte	W17
	.byte		N05	, Fs3
	.byte	W08
	.byte			Ds3, v008
	.byte	W48
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
		.int	song032_9_1
	.byte	FINE

	@********************** Track  10 **********************@

	.global song032_10
song032_10:	@ 0x087B308D
	.byte	KEYSH	, 0
	.byte	VOICE	, 62
	.byte	VOL	, v095
	.byte	W96
	.byte	W96
song032_10_1:
	.byte	W40
	.byte		N19	, An3, v056
	.byte	W20
	.byte			Cs4
	.byte	W20
	.byte		TIE	, Fn4
	.byte	W16
	.byte	PEND
	.byte	W96
	.byte	W24
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N09	, Fs5
	.byte	W10
	.byte			Dn5
	.byte	W10
	.byte			As4
	.byte	W10
	.byte			Fs4
	.byte	W10
	.byte			Dn4
	.byte	W10
	.byte		N88	, As3
	.byte	W18
song032_10_2:
	.byte	W72
	.byte		N09	, Gs5, v052
	.byte	W10
	.byte			En5, v056
	.byte	W10
	.byte			Bn4
	.byte	W04
	.byte	PEND
song032_10_3:
	.byte	W06
	.byte		N09	, Gs4, v052
	.byte	W10
	.byte			En4, v056
	.byte	W10
	.byte			Bn3
	.byte	W10
	.byte			Gs3, v052
	.byte	W10
	.byte			En3, v056
	.byte	W10
	.byte		TIE	, Bn2
	.byte	W40
	.byte	PEND
	.byte	W96
	.byte	W52
	.byte	W01
	.byte		EOT	
	.byte	W01
	.byte		N19	, An3
	.byte	W20
	.byte			Cn3
	.byte	W20
	.byte			Fn3
	.byte	W02
song032_10_4:
	.byte	W18
	.byte		N19	, Fn4, v056
	.byte	W20
	.byte			Cn4
	.byte	W20
	.byte		N10	, An4
	.byte	W36
	.byte	W02
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
song032_10_5:
	.byte	W24
	.byte		N10	, Cn4, v056
	.byte	W05
	.byte			Dn4
	.byte	W05
	.byte		N09	, Ds4
	.byte	W05
	.byte		N06	, Fn4, v052
	.byte	W05
	.byte		N10	, Gn4
	.byte	W15
	.byte			Cn4, v048
	.byte	W05
	.byte			Dn4
	.byte	W05
	.byte		N09	, Ds4
	.byte	W05
	.byte		N06	, Fn4
	.byte	W05
	.byte		N10	, Gn4, v044
	.byte	W15
	.byte			Cn4
	.byte	W02
	.byte	PEND
song032_10_6:
	.byte	W03
	.byte		N10	, Dn4, v040
	.byte	W05
	.byte		N09	, Ds4
	.byte	W05
	.byte		N06	, Fn4
	.byte	W05
	.byte		N10	, Gn4
	.byte	W15
	.byte			Cn4, v036
	.byte	W05
	.byte			Dn4
	.byte	W05
	.byte		N09	, Ds4, v032
	.byte	W05
	.byte		N06	, Fn4
	.byte	W05
	.byte		N10	, Gn4
	.byte	W15
	.byte			Cn4, v028
	.byte	W05
	.byte			Dn4
	.byte	W05
	.byte		N09	, Ds4
	.byte	W05
	.byte		N06	, Fn4, v024
	.byte	W05
	.byte		N07	, Gn4
	.byte	W08
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song032_10_7:
	.byte		N92	, Gn2, v112
	.byte	W96
	.byte		N44	, Cn3, v100
	.byte	W48
	.byte			Gn3, v104
	.byte	W48
	.byte			Fn3, v112
	.byte	W48
	.byte		TIE	, Cn3
	.byte	W48
	.byte	W96
	.byte		N90	, Gn2, v104
	.byte	W07
	.byte		EOT	, Cn3
	.byte	W88
	.byte	W01
	.byte		N44	, Cn3, v108
	.byte	W48
	.byte			Gn3
	.byte	W48
	.byte			An3, v112
	.byte	W48
	.byte		TIE	, Fn3, v092
	.byte	W48
	.byte	W92
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte	W24
	.byte	W01
	.byte		N24	, Fn4, v080
	.byte	W24
	.byte	W01
	.byte			Cs4
	.byte	W22
	.byte			As4
	.byte	W24
	.byte	W01
	.byte		TIE	, Gn4
	.byte	W92
	.byte	W03
	.byte	W05
	.byte		EOT	
	.byte	W19
	.byte		N24	, Gs4
	.byte	W24
	.byte	W01
	.byte			Ds4
	.byte	W22
	.byte			Cs5
	.byte	W24
	.byte	W01
	.byte		N92	, Cn5
	.byte	W96
	.byte	W24
	.byte		N24	, Bn4
	.byte	W24
	.byte			Gs4
	.byte	W24
	.byte			Dn5
	.byte	W24
	.byte		N88	, Bn4
	.byte	W96
	.byte	W24
	.byte	W01
	.byte		N24	, Gn4
	.byte	W23
	.byte			Gs4
	.byte	W24
	.byte			Dn5
	.byte	W24
	.byte		N04	, Gn4, v076
	.byte	W04
	.byte			Gs4, v080
	.byte	W04
	.byte			An4, v072
	.byte	W04
	.byte			Bn4, v080
	.byte	W04
	.byte			Dn5, v068
	.byte	W04
	.byte			En5, v064
	.byte	W04
	.byte			Fn5
	.byte	W04
	.byte			Fs5, v044
	.byte	W04
	.byte			Gn5, v080
	.byte	W04
	.byte			Bn5
	.byte	W04
	.byte			Dn6, v072
	.byte	W04
	.byte			Gn6, v100
	.byte	W04
	.byte			Fn6, v092
	.byte	W04
	.byte			Dn6, v076
	.byte	W04
	.byte			Bn5
	.byte	W04
	.byte			Gn5, v092
	.byte	W04
	.byte			Fn5, v064
	.byte	W04
	.byte			Dn5, v068
	.byte	W04
	.byte			Bn4, v072
	.byte	W04
	.byte			Gn4, v076
	.byte	W04
	.byte			Fn4, v080
	.byte	W04
	.byte			Dn4, v076
	.byte	W04
	.byte			Bn3, v088
	.byte	W04
	.byte			Gn3, v096
	.byte	W04
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		N09	, Fn6, v080
	.byte	W08
	.byte		N11	, Cn6, v092
	.byte	W08
	.byte			An5, v072
	.byte	W08
	.byte			Fn5, v080
	.byte	W08
	.byte		N12	, Cn5, v088
	.byte	W08
	.byte		N10	, An4, v104
	.byte	W08
	.byte		N14	, Fn4, v100
	.byte	W08
	.byte			Cn4, v096
	.byte	W08
	.byte			An3, v104
	.byte	W08
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		N23	, Fn3, v092
	.byte		N23	, Fn4
	.byte	W24
	.byte		N15	, Fn3
	.byte		N15	, Fn4
	.byte	W16
	.byte			Ds3
	.byte		N15	, Ds4
	.byte	W16
	.byte			Cs3
	.byte		N15	, Cs4
	.byte	W16
	.byte		N44	, Cn3
	.byte		N44	, Cn4
	.byte	W48
	.byte		N30	, As2
	.byte		N30	, As3
	.byte	W32
	.byte		N07	, Cn3
	.byte		N07	, Cn4
	.byte	W08
	.byte			Cs3
	.byte		N07	, Cs4
	.byte	W08
	.byte		N60	, Ds3
	.byte		N60	, Ds4
	.byte	W64
	.byte		N30	, As2
	.byte		N30	, As3
	.byte	W32
	.byte		N78	, Gs2
	.byte		N78	, Gs3
	.byte	W80
	.byte		N07	, Gn2
	.byte		N07	, Gn3
	.byte	W08
	.byte			Gs2
	.byte		N07	, Gs3
	.byte	W08
	.byte		N68	, Gs2
	.byte		N68	, Gs3
	.byte	W72
	.byte		N07	, Fn2
	.byte		N07	, Fn3
	.byte	W08
	.byte			Gn2
	.byte		N07	, Gn3
	.byte	W08
	.byte			Gs2
	.byte		N07	, Gs3
	.byte	W08
	.byte		N68	, Bn2
	.byte		N68	, Bn3
	.byte	W72
	.byte		N07	, As2
	.byte		N07	, As3
	.byte	W08
	.byte			Bn2
	.byte		N07	, Bn3
	.byte	W08
	.byte			Dn3, v088
	.byte		N07	, Dn4
	.byte	W08
	.byte		N92	, Fn3, v092
	.byte		N92	, Fn4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.int	song032_10_1
	.byte	W96
	.byte	W24
	.byte	W03
	.byte		EOT	, Fn4
	.byte	W01
	.byte		N09	, Fs5, v056
	.byte	W10
	.byte			Dn5
	.byte	W10
	.byte			As4
	.byte	W10
	.byte			Fs4
	.byte	W10
	.byte			Dn4
	.byte	W10
	.byte		N88	, As3
	.byte	W18
	.byte	PATT	
		.int	song032_10_2
	.byte	PATT	
		.int	song032_10_3
	.byte	W96
	.byte	W52
	.byte	W01
	.byte		EOT	, Bn2
	.byte	W01
	.byte		N19	, An3, v056
	.byte	W20
	.byte			Cn3
	.byte	W20
	.byte			Fn3
	.byte	W02
	.byte	PATT	
		.int	song032_10_4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.int	song032_10_5
	.byte	PATT	
		.int	song032_10_6
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.int	song032_10_7
	.byte	FINE

	.align 2
	.global song032
song032:	@ 0x087B32D0
	.byte	10		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.int	voicegroup007		@ voicegroup/tone

	.int	song032_1		@ track
	.int	song032_2		@ track
	.int	song032_3		@ track
	.int	song032_4		@ track
	.int	song032_5		@ track
	.int	song032_6		@ track
	.int	song032_7		@ track
	.int	song032_8		@ track
	.int	song032_9		@ track
	.int	song032_10		@ track
