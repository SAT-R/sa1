	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song010_1
song010_1:	@ 0x0879F418
	.byte	KEYSH	, 0
	.byte	TEMPO	, 57
	.byte	VOICE	, 74
	.byte	MOD	, 1
	.byte	BENDR	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v115
	.byte	W44
	.byte		N08	, As2, v127
	.byte	W12
	.byte		N04	
	.byte	W04
	.byte			Dn2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Fn2
	.byte	W12
song010_1_1:
	.byte		N04	, As2, v127
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte		N16	, Dn3
	.byte	W20
	.byte		N08	
	.byte	W12
	.byte		N04	
	.byte	W04
	.byte			Ds3
	.byte	W12
	.byte			Cn3
	.byte	W20
	.byte		N08	, As2
	.byte	W04
	.byte	PEND
song010_1_2:
	.byte	W08
	.byte		N03	, As2, v127
	.byte	W04
	.byte		N04	, Cn3
	.byte	W12
	.byte			Gs2
	.byte	W20
	.byte		N08	, As2
	.byte	W12
	.byte		N04	
	.byte	W04
	.byte			Dn2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte	PEND
song010_1_3:
	.byte		N04	, As2, v127
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte		N16	, Dn3
	.byte	W24
	.byte	PEND
song010_1_4:
	.byte		N08	, Dn3, v127
	.byte	W08
	.byte		N04	
	.byte	W04
	.byte			Ds3
	.byte	W12
	.byte		N12	, Fn3
	.byte	W12
	.byte		N04	, Ds3
	.byte	W08
	.byte			Dn3
	.byte	W04
	.byte	W44
	.byte		N08	, As2
	.byte	W12
	.byte		N04	
	.byte	W04
	.byte			Dn2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte	PATT	
		.word	song010_1_1
	.byte	W08
	.byte		N08	, As2, v127
	.byte	W04
	.byte		N04	, Cn3
	.byte	W12
	.byte			Gs2
	.byte	W24
	.byte			As2
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte		N19	, Cs3
	.byte	W20
	.byte		N15	, Cn3
	.byte	W16
	.byte		N16	, As2
	.byte	W24
	.byte		N04	, Cn3
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte		N16	, Ds3
	.byte	W20
	.byte			Cs3
	.byte	W16
	.byte		N04	, Cn3
	.byte	W08
	.byte		N08	, As2
	.byte	W12
	.byte		N04	
	.byte	W04
	.byte			Dn2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte	PATT	
		.word	song010_1_1
	.byte	PATT	
		.word	song010_1_2
	.byte	PATT	
		.word	song010_1_3
	.byte	GOTO	
		.word	song010_1_4
	.byte		N08	, Dn3, v127
	.byte	W08
	.byte		N04	
	.byte	W04
	.byte			Ds3
	.byte	W04
	.byte	FINE

	@********************** Track  2 **********************@

	.global song010_2
song010_2:	@ 0x0879F4DB
	.byte	KEYSH	, 0
	.byte	VOICE	, 63
	.byte	BENDR	, 1
	.byte	PAN	, c_v
	.byte	VOL	, v083
	.byte	W72
	.byte		N24	, As2, v112
	.byte	W24
song010_2_1:
	.byte		N24	, Dn3, v112
	.byte	W24
	.byte			As3
	.byte	W24
	.byte			Gs3
	.byte	W24
	.byte		N68	, Cn4
	.byte	W24
	.byte	PEND
	.byte	W72
	.byte		N24	, As2
	.byte	W24
song010_2_2:
	.byte		N24	, Dn3, v112
	.byte	W24
	.byte			As3
	.byte	W24
	.byte	PEND
song010_2_3:
	.byte		N24	, Gs3, v112
	.byte	W24
	.byte		N72	, Cn4
	.byte	W24
	.byte	W48
	.byte		N24	, As3
	.byte	W24
	.byte			As2
	.byte	W24
	.byte			Dn3
	.byte	W24
	.byte			As3
	.byte	W24
	.byte			Gs3
	.byte	W24
	.byte			Cn4
	.byte	W24
	.byte			Cs4
	.byte	W24
	.byte			Ds4
	.byte	W24
	.byte			Cs4
	.byte	W24
	.byte			As3
	.byte	W24
	.byte		N48	, Fs3
	.byte	W48
	.byte		N24	, Ds4
	.byte	W24
	.byte			Cs4
	.byte	W24
	.byte		N48	, Cn4
	.byte	W72
	.byte		N24	, As2
	.byte	W24
	.byte	PATT	
		.word	song010_2_1
	.byte	W72
	.byte		N24	, As2, v112
	.byte	W24
	.byte	PATT	
		.word	song010_2_2
	.byte	GOTO	
		.word	song010_2_3
	.byte		N24	, Gs3, v112
	.byte	W24
	.byte	FINE

	@********************** Track  3 **********************@

	.global song010_3
song010_3:	@ 0x0879F545
	.byte	KEYSH	, 0
	.byte	VOICE	, 51
	.byte	BENDR	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v115
	.byte	W44
	.byte		N08	, As1, v127
	.byte	W16
	.byte			As2, v112
	.byte	W12
	.byte			As1, v124
	.byte	W12
	.byte			As2, v112
	.byte	W12
song010_3_1:
	.byte		N08	, As1, v120
	.byte	W12
	.byte			As2, v112
	.byte	W12
	.byte			As1, v120
	.byte	W12
	.byte			As2, v124
	.byte	W12
	.byte		N04	, Gs1
	.byte	W08
	.byte			Gs1, v112
	.byte	W04
	.byte		N08	, Gs2, v127
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Gs2, v112
	.byte	W12
	.byte	PEND
song010_3_2:
	.byte		N08	, Gs1, v112
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Gs2, v127
	.byte	W08
	.byte			As1, v120
	.byte	W12
	.byte			As1, v108
	.byte	W08
	.byte			As2
	.byte	W08
	.byte			As1, v127
	.byte	W12
	.byte			As2
	.byte	W12
	.byte	PEND
song010_3_3:
	.byte		N08	, As1, v120
	.byte	W12
	.byte			As2, v127
	.byte	W12
	.byte			As1, v112
	.byte	W12
	.byte			As2, v127
	.byte	W12
	.byte	PEND
song010_3_4:
	.byte		N08	, Gs1, v127
	.byte	W08
	.byte			Gs1, v092
	.byte	W04
	.byte			Gs2, v127
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Gs2, v124
	.byte	W08
	.byte			Gs1, v120
	.byte	W04
	.byte	W12
	.byte			Gs2, v127
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Gs2
	.byte	W08
	.byte			As1, v112
	.byte	W12
	.byte		N08	
	.byte	W04
	.byte			As2, v127
	.byte	W12
	.byte			As1, v116
	.byte	W12
	.byte			As2, v124
	.byte	W12
	.byte			As1
	.byte	W12
	.byte			As2, v104
	.byte	W12
	.byte			As1, v127
	.byte	W12
	.byte			As2
	.byte	W08
	.byte			Gs1
	.byte	W12
	.byte			Gs1, v100
	.byte	W04
	.byte			Gs2, v112
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Gs2, v127
	.byte	W12
	.byte			Gs1, v112
	.byte	W08
	.byte		N08	
	.byte	W04
	.byte			Gs2
	.byte	W12
	.byte			Gs1, v124
	.byte	W12
	.byte			Gs2, v127
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1, v124
	.byte	W12
	.byte			Fs2, v127
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Fn1, v108
	.byte	W12
	.byte			Fn2
	.byte	W08
	.byte			As1, v127
	.byte	W16
	.byte			As2, v112
	.byte	W12
	.byte			As1, v124
	.byte	W12
	.byte			As2, v112
	.byte	W12
	.byte	PATT	
		.word	song010_3_1
	.byte	PATT	
		.word	song010_3_2
	.byte	PATT	
		.word	song010_3_3
	.byte	GOTO	
		.word	song010_3_4
	.byte		N08	, Gs1, v127
	.byte	W08
	.byte			Gs1, v092
	.byte	W04
	.byte			Gs2, v127
	.byte	W08
	.byte	FINE

	@********************** Track  4 **********************@

	.global song010_4
song010_4:	@ 0x0879F63B
	.byte	KEYSH	, 0
	.byte	VOICE	, 62
	.byte	BENDR	, 1
	.byte	PAN	, c_v
	.byte	VOL	, v083
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
song010_4_1:
	.byte	W48
	.byte		N03	, As4, v127
	.byte	W04
	.byte			Cn5
	.byte	W04
	.byte			As4, v104
	.byte	W04
	.byte			Gs4, v127
	.byte	W04
	.byte			As4, v116
	.byte	W04
	.byte			Gs4, v104
	.byte	W04
	.byte			Gn4, v108
	.byte	W04
	.byte			Gs4, v112
	.byte	W04
	.byte			Gn4, v100
	.byte	W04
	.byte			Fn4, v104
	.byte	W04
	.byte			Ds4, v127
	.byte	W04
	.byte			Dn4, v116
	.byte	W52
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte	GOTO	
		.word	song010_4_1
	.byte	FINE

	@********************** Track  5 **********************@

	.global song010_5
song010_5:	@ 0x0879F67B
	.byte	KEYSH	, 0
	.byte	VOICE	, 52
	.byte	BENDR	, 1
	.byte	PAN	, c_v-64
	.byte	VOL	, v058
	.byte	W72
	.byte		N24	, As3, v112
	.byte	W24
song010_5_1:
	.byte		N24	, Dn4, v112
	.byte	W24
	.byte			As4
	.byte	W24
	.byte			Gs4
	.byte	W24
	.byte		N68	, Cn5
	.byte	W24
	.byte	PEND
	.byte	W72
	.byte		N24	, As3
	.byte	W24
song010_5_2:
	.byte		N24	, Dn4, v112
	.byte	W24
	.byte			As4
	.byte	W24
	.byte	PEND
song010_5_3:
	.byte		N24	, Gs4, v112
	.byte	W24
	.byte		N72	, Cn5
	.byte	W24
	.byte	W48
	.byte		N24	, As4
	.byte	W24
	.byte			As3
	.byte	W24
	.byte			Dn4
	.byte	W24
	.byte			As4
	.byte	W24
	.byte			Gs4
	.byte	W24
	.byte			Cn5
	.byte	W24
	.byte			Cs5
	.byte	W24
	.byte			Ds5
	.byte	W24
	.byte			Cs5
	.byte	W24
	.byte			As4
	.byte	W24
	.byte		N48	, Fs4
	.byte	W48
	.byte		N24	, Ds5
	.byte	W24
	.byte			Cs5
	.byte	W24
	.byte		N48	, Cn5
	.byte	W72
	.byte		N24	, As3
	.byte	W24
	.byte	PATT	
		.word	song010_5_1
	.byte	W72
	.byte		N24	, As3, v112
	.byte	W24
	.byte	PATT	
		.word	song010_5_2
	.byte	GOTO	
		.word	song010_5_3
	.byte		N24	, Gs4, v112
	.byte	W24
	.byte	FINE

	@********************** Track  6 **********************@

	.global song010_6
song010_6:	@ 0x0879F6E5
	.byte	KEYSH	, 0
	.byte	VOICE	, 53
	.byte	MOD	, 1
	.byte	BENDR	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v038
	.byte	W44
	.byte		N08	, As2, v127
	.byte	W12
	.byte		N04	
	.byte	W04
	.byte			Dn2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Fn2
	.byte	W12
song010_6_1:
	.byte		N04	, As2, v127
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte		N16	, Dn3
	.byte	W20
	.byte		N08	
	.byte	W12
	.byte		N04	
	.byte	W04
	.byte			Ds3
	.byte	W12
	.byte			Cn3
	.byte	W20
	.byte		N08	, As2
	.byte	W04
	.byte	PEND
song010_6_2:
	.byte	W08
	.byte		N03	, As2, v127
	.byte	W04
	.byte		N04	, Cn3
	.byte	W12
	.byte			Gs2
	.byte	W20
	.byte		N08	, As2
	.byte	W12
	.byte		N04	
	.byte	W04
	.byte			Dn2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte	PEND
song010_6_3:
	.byte		N04	, As2, v127
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte		N16	, Dn3
	.byte	W24
	.byte	PEND
song010_6_4:
	.byte		N08	, Dn3, v127
	.byte	W08
	.byte		N04	
	.byte	W04
	.byte			Ds3
	.byte	W12
	.byte		N12	, Fn3
	.byte	W12
	.byte		N04	, Ds3
	.byte	W08
	.byte			Dn3
	.byte	W04
	.byte	W44
	.byte		N08	, As2
	.byte	W12
	.byte		N04	
	.byte	W04
	.byte			Dn2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte	PATT	
		.word	song010_6_1
	.byte	W08
	.byte		N08	, As2, v127
	.byte	W04
	.byte		N04	, Cn3
	.byte	W12
	.byte			Gs2
	.byte	W24
	.byte			As2
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte		N19	, Cs3
	.byte	W20
	.byte		N15	, Cn3
	.byte	W16
	.byte		N16	, As2
	.byte	W24
	.byte		N04	, Cn3
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte		N16	, Ds3
	.byte	W20
	.byte			Cs3
	.byte	W16
	.byte		N04	, Cn3
	.byte	W08
	.byte		N08	, As2
	.byte	W12
	.byte		N04	
	.byte	W04
	.byte			Dn2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte	PATT	
		.word	song010_6_1
	.byte	PATT	
		.word	song010_6_2
	.byte	PATT	
		.word	song010_6_3
	.byte	GOTO	
		.word	song010_6_4
	.byte		N08	, Dn3, v127
	.byte	W08
	.byte		N04	
	.byte	W04
	.byte			Ds3
	.byte	W04
	.byte	FINE

	@********************** Track  7 **********************@

	.global song010_7
song010_7:	@ 0x0879F7A6
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v115
	.byte	PAN	, c_v
	.byte	BENDR	, 127
	.byte		N13	, Cn1, v127
	.byte	W08
	.byte		N15	, Cs1
	.byte	W16
	.byte		N03	
	.byte	W04
	.byte			Cs1, v084
	.byte	W04
	.byte			Cs1, v127
	.byte	W04
	.byte		N07	
	.byte	W08
	.byte		N15	, Cn1
	.byte		TIE	, Cs2, v124
	.byte	W16
	.byte		N11	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N07	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W08
	.byte		N11	, Cn1, v127
	.byte	W04
song010_7_1:
	.byte		N06	, Dn1, v056
	.byte	W08
	.byte		N03	, Cn1, v127
	.byte	W04
	.byte		N11	, Cs1
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W10
	.byte	PEND
	.byte		EOT	, Cs2
	.byte	W02
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N07	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W08
	.byte		N11	, Cn1, v127
	.byte	W04
song010_7_2:
	.byte		N06	, Dn1, v056
	.byte	W08
	.byte		N03	, Cn1, v127
	.byte	W04
	.byte		N11	, Cs1
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N07	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W08
	.byte		N15	, Cn1, v127
	.byte		TIE	, Cs2, v124
	.byte	W16
	.byte		N11	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N07	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W08
	.byte		N11	, Cn1, v127
	.byte	W04
	.byte	PEND
	.byte	PATT	
		.word	song010_7_1
	.byte		EOT	, Cs2
	.byte	W02
song010_7_3:
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N07	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W08
	.byte		N11	, Cn1, v127
	.byte	W04
	.byte		N06	, Dn1, v056
	.byte	W08
	.byte		N03	, Cn1, v127
	.byte	W04
	.byte		N11	, Cs1
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N03	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W04
	.byte		N03	, Cs1, v127
	.byte	W04
	.byte		N15	, Cn1
	.byte		TIE	, Cs2, v124
	.byte	W16
	.byte		N11	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N07	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W08
	.byte		N11	, Cn1, v127
	.byte	W04
	.byte	PATT	
		.word	song010_7_1
	.byte		EOT	, Cs2
	.byte	W02
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N07	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W08
	.byte		N11	, Cn1, v127
	.byte	W04
	.byte		N06	, Dn1, v056
	.byte	W08
	.byte		N03	, Cn1, v127
	.byte	W04
	.byte		N11	, Cs1
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N07	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W08
	.byte		N11	, Cn1, v127
	.byte	W04
	.byte		N06	, Dn1, v056
	.byte	W08
	.byte		N03	, Cn1, v127
	.byte	W04
	.byte		N11	, Cs1
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N07	, Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W08
	.byte		N15	, Cs1, v127
	.byte	W04
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N03	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W04
	.byte		N03	, Cs1, v127
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N03	
	.byte		N06	, Dn1, v056
	.byte	W04
	.byte		N03	, Cs1, v127
	.byte	W04
	.byte		N15	, Cn1
	.byte		TIE	, Cs2, v124
	.byte	W16
	.byte		N11	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N07	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W08
	.byte		N11	, Cn1, v127
	.byte	W04
	.byte	PATT	
		.word	song010_7_1
	.byte		EOT	, Cs2
	.byte	W02
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N07	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W08
	.byte		N11	, Cn1, v127
	.byte	W04
	.byte	PATT	
		.word	song010_7_2
	.byte	PATT	
		.word	song010_7_1
	.byte		EOT	, Cs2
	.byte	W02
	.byte	GOTO	
		.word	song010_7_3
	.byte		N11	, Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W11
	.byte	FINE

	.align 2
	.global song010
song010:	@ 0x0879F9F0
	.byte	7		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup006		@ voicegroup/tone

	.word	song010_1		@ track
	.word	song010_2		@ track
	.word	song010_3		@ track
	.word	song010_4		@ track
	.word	song010_5		@ track
	.word	song010_6		@ track
	.word	song010_7		@ track
