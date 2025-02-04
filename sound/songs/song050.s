	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song050_1
song050_1:	@ 0x087BA268
	.byte	KEYSH	, 0
song050_1_1:
	.byte	TEMPO	, 67
	.byte	VOICE	, 74
	.byte	VOL	, v078
	.byte	PAN	, c_v
	.byte		N05	, An2, v116
	.byte		N05	, Cn3
	.byte	W12
	.byte		N04	, En2
	.byte		N04	, An2
	.byte	W12
	.byte			En2
	.byte		N05	, An2
	.byte	W12
	.byte		N05	
	.byte		N05	, Cn3
	.byte	W12
	.byte		N04	, En2
	.byte		N04	, An2
	.byte	W12
	.byte			En2
	.byte		N05	, An2
	.byte	W12
	.byte		N05	
	.byte		N05	, Cn3
	.byte	W12
	.byte		N04	, En2
	.byte		N04	, An2
	.byte	W12
	.byte		N13	, En2
	.byte		N13	, Bn2
	.byte	W24
	.byte		N14	, En2
	.byte		N14	, Bn2
	.byte	W24
	.byte		N13	, En2
	.byte		N13	, Bn2
	.byte	W24
	.byte			En2
	.byte		N14	, Bn2
	.byte	W24
	.byte		N05	, An2
	.byte		N05	, Cn3
	.byte	W12
	.byte		N04	, En2
	.byte		N05	, An2
	.byte	W12
	.byte		N04	, En2
	.byte		N05	, An2
	.byte	W12
	.byte		N05	
	.byte		N05	, Cn3
	.byte	W12
	.byte		N04	, En2
	.byte		N05	, An2
	.byte	W12
	.byte		N04	, En2
	.byte		N05	, An2
	.byte	W12
	.byte		N05	
	.byte		N05	, Cn3
	.byte	W12
	.byte		N04	, En2
	.byte		N05	, An2
	.byte	W12
	.byte		N14	, En2
	.byte		N15	, Bn2
	.byte	W24
	.byte		N14	, En2
	.byte		N14	, Bn2
	.byte	W24
	.byte		N15	, En2
	.byte		N16	, Bn2
	.byte	W24
	.byte		N12	, En2
	.byte		N12	, Bn2
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
	.byte	GOTO	
		mPtr	song050_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song050_2
song050_2:	@ 0x087BA2FA
	.byte	KEYSH	, 0
song050_2_5:
	.byte	VOICE	, 61
	.byte	VOL	, v078
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song050_2_1:
	.byte		N04	, An3, v116
	.byte	W12
	.byte		N03	, Bn3
	.byte	W12
	.byte		N18	, Cn4
	.byte	W24
	.byte		N19	, Dn4
	.byte	W24
	.byte			Cn4
	.byte	W24
	.byte	PEND
song050_2_2:
	.byte		N04	, Bn3, v116
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N22	, Gn3
	.byte	W24
	.byte		N04	, En3
	.byte	W12
	.byte		N24	, Gn3
	.byte	W24
	.byte	PEND
song050_2_3:
	.byte		N04	, An3, v116
	.byte	W12
	.byte		N03	, Bn3
	.byte	W12
	.byte		N19	, Cn4
	.byte	W24
	.byte		N18	, Dn4
	.byte	W24
	.byte		N20	, Cn4
	.byte	W24
	.byte	PEND
song050_2_4:
	.byte		N04	, Bn3, v116
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte		N10	, En4
	.byte	W48
	.byte	PEND
	.byte	PATT	
		mPtr	song050_2_1
	.byte	PATT	
		mPtr	song050_2_2
	.byte	PATT	
		mPtr	song050_2_3
	.byte	PATT	
		mPtr	song050_2_4
	.byte	PATT	
		mPtr	song050_2_1
	.byte	PATT	
		mPtr	song050_2_2
	.byte	PATT	
		mPtr	song050_2_3
	.byte	PATT	
		mPtr	song050_2_4
	.byte	PATT	
		mPtr	song050_2_1
	.byte	PATT	
		mPtr	song050_2_2
	.byte	PATT	
		mPtr	song050_2_3
	.byte	PATT	
		mPtr	song050_2_4
	.byte	GOTO	
		mPtr	song050_2_5
	.byte	FINE

	@********************** Track  3 **********************@

	.global song050_3
song050_3:	@ 0x087BA389
	.byte	KEYSH	, 0
song050_3_5:
	.byte	VOICE	, 98
	.byte	VOL	, v078
	.byte	PAN	, c_v
	.byte		N05	, Cn4, v092
	.byte	W12
	.byte		N04	, An3
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte		N04	, An3
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Cn4
	.byte	W24
	.byte	W96
	.byte		N05	
	.byte	W12
	.byte			An3
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			An3
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Cn4
	.byte	W24
	.byte	W96
song050_3_1:
	.byte		N04	, An2, v096
	.byte	W12
	.byte		N03	, Bn2
	.byte	W12
	.byte		N18	, Cn3
	.byte	W24
	.byte		N19	, Dn3
	.byte	W24
	.byte			Cn3
	.byte	W24
	.byte	PEND
song050_3_2:
	.byte		N04	, Bn2, v096
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N22	, Gn2
	.byte	W24
	.byte		N04	, En2
	.byte	W12
	.byte		N24	, Gn2
	.byte	W24
	.byte	PEND
song050_3_3:
	.byte		N04	, An2, v096
	.byte	W12
	.byte		N03	, Bn2
	.byte	W12
	.byte		N19	, Cn3
	.byte	W24
	.byte		N18	, Dn3
	.byte	W24
	.byte		N20	, Cn3
	.byte	W24
	.byte	PEND
song050_3_4:
	.byte		N04	, Bn2, v096
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte		N06	, Ds3
	.byte	W12
	.byte		N10	, En3
	.byte	W48
	.byte	PEND
	.byte	PATT	
		mPtr	song050_3_1
	.byte	PATT	
		mPtr	song050_3_2
	.byte	PATT	
		mPtr	song050_3_3
	.byte	PATT	
		mPtr	song050_3_4
	.byte	PATT	
		mPtr	song050_3_1
	.byte	PATT	
		mPtr	song050_3_2
	.byte	PATT	
		mPtr	song050_3_3
	.byte	PATT	
		mPtr	song050_3_4
	.byte		N05	, Cn4, v112
	.byte	W12
	.byte		N04	, Dn4
	.byte	W12
	.byte		N20	, En4
	.byte	W24
	.byte		N19	, Fn4
	.byte	W24
	.byte		N23	, En4
	.byte	W24
	.byte		N04	, Dn4
	.byte	W12
	.byte		N05	, En4
	.byte	W12
	.byte		N04	, Dn4
	.byte	W12
	.byte		N23	, Bn3
	.byte	W24
	.byte		N05	, Gn3
	.byte	W12
	.byte		N21	, Bn3
	.byte	W24
	.byte		N03	, Cn4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte		N20	, En4
	.byte	W24
	.byte		N19	, Fn4
	.byte	W24
	.byte			En4
	.byte	W24
	.byte		N05	, Dn4
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte		N06	, Fs4
	.byte	W12
	.byte		N10	, Gs4
	.byte	W48
	.byte	GOTO	
		mPtr	song050_3_5
	.byte	FINE

	@********************** Track  4 **********************@

	.global song050_4
song050_4:	@ 0x087BA45F
	.byte	KEYSH	, 0
song050_4_1:
	.byte	VOICE	, 82
	.byte	VOL	, v066
	.byte	PAN	, c_v
	.byte	W84
	.byte		N06	, Dn3, v116
	.byte	W06
	.byte		N05	, En3
	.byte	W06
	.byte		N15	, Fn3
	.byte	W24
	.byte		N16	, En3
	.byte	W24
	.byte		N19	, Dn3
	.byte	W24
	.byte		N20	, En3
	.byte	W24
	.byte	W84
	.byte		N06	, Dn3
	.byte	W06
	.byte		N05	, En3
	.byte	W06
	.byte		N10	, Fn3
	.byte	W12
	.byte		N11	, En3
	.byte	W12
	.byte		N12	, Ds3
	.byte	W12
	.byte		N07	, En3
	.byte	W12
	.byte		N21	, Gs3
	.byte	W24
	.byte		N18	, En3
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N72	, Cn3, v127
	.byte	W72
	.byte		N11	, Dn3, v108
	.byte	W12
	.byte		N13	, Cn3
	.byte	W12
	.byte		N48	, Bn2, v116
	.byte	W48
	.byte			Gn2
	.byte	W48
	.byte		N72	, Cn3, v096
	.byte	W72
	.byte		N11	, Dn3, v108
	.byte	W12
	.byte		N13	, Cn3, v120
	.byte	W12
	.byte		N48	, Bn2, v108
	.byte	W48
	.byte		N44	, Gs2, v127
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song050_4_1
	.byte	FINE

	@********************** Track  5 **********************@

	.global song050_5
song050_5:	@ 0x087BA4CB
	.byte	KEYSH	, 0
song050_5_1:
	.byte	VOICE	, 97
	.byte	VOL	, v078
	.byte	PAN	, c_v
	.byte		N05	, An2, v116
	.byte	W12
	.byte		N04	, En2
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N05	, An2
	.byte	W12
	.byte		N04	, En2
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N05	, An2
	.byte	W12
	.byte		N04	, En2
	.byte	W12
	.byte		N13	
	.byte	W24
	.byte		N14	
	.byte	W24
	.byte		N13	
	.byte	W24
	.byte		N13	
	.byte	W24
	.byte		N05	, An2
	.byte	W12
	.byte		N04	, En2
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N05	, An2
	.byte	W12
	.byte		N04	, En2
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N05	, An2
	.byte	W12
	.byte		N04	, En2
	.byte	W12
	.byte		N14	
	.byte	W24
	.byte		N14	
	.byte	W24
	.byte		N15	
	.byte	W24
	.byte		N12	
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
	.byte		N05	, An3, v112
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N20	, Cn4
	.byte	W24
	.byte		N18	, Dn4
	.byte	W24
	.byte		N20	, Cn4
	.byte	W24
	.byte		N04	, Bn3, v108
	.byte	W12
	.byte		N05	, Cn4, v112
	.byte	W12
	.byte		N04	, Bn3
	.byte	W12
	.byte		N18	, Gn3, v068
	.byte	W24
	.byte		N06	, En3, v112
	.byte	W12
	.byte		N21	, Gn3
	.byte	W24
	.byte		N05	, An3
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N21	, Cn4
	.byte	W24
	.byte		N18	, Dn4
	.byte	W24
	.byte		N19	, Cn4
	.byte	W24
	.byte		N05	, Bn3
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte		N10	, En4
	.byte	W48
	.byte	GOTO	
		mPtr	song050_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song050_6
song050_6:	@ 0x087BA561
	.byte	KEYSH	, 0
song050_6_1:
	.byte	VOICE	, 99
	.byte	VOL	, v078
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
	.byte		N68	, Cn4, v108
	.byte	W72
	.byte		N11	, Dn4, v088
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte		N44	, Bn3, v096
	.byte	W48
	.byte			Gn3
	.byte	W48
	.byte		N68	, Cn4, v076
	.byte	W72
	.byte		N11	, Dn4, v088
	.byte	W12
	.byte			Cn4, v100
	.byte	W12
	.byte		N44	, Bn3, v088
	.byte	W48
	.byte		N42	, Gs3, v108
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song050_6_1
	.byte	FINE

	@********************** Track  7 **********************@

	.global song050_7
song050_7:	@ 0x087BA5A2
	.byte	KEYSH	, 0
song050_7_1:
	.byte	VOICE	, 90
	.byte	VOL	, v087
	.byte	PAN	, c_v
	.byte	W96
	.byte		N23	, En2, v116
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N40	, En2
	.byte	W12
	.byte		N24	, Bn2
	.byte	W12
	.byte	W96
	.byte		N23	, En2
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N05	, En2
	.byte	W06
	.byte		TIE	
	.byte	W06
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte	W60
	.byte		N05	
	.byte	W06
	.byte		N17	
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte		N92	
	.byte	W06
	.byte	W96
	.byte	W84
	.byte		N05	
	.byte	W06
	.byte		N92	
	.byte	W06
	.byte	W96
	.byte	W60
	.byte		N05	
	.byte	W06
	.byte		N17	
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte		N84	
	.byte	W06
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		N05	
	.byte	W06
	.byte		N88	
	.byte	W06
	.byte	W96
	.byte	W12
	.byte		N05	, Bn2
	.byte	W06
	.byte		N17	
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte		N52	
	.byte	W18
	.byte		N05	, En2
	.byte	W06
	.byte		N17	
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte		N60	
	.byte	W06
	.byte	GOTO	
		mPtr	song050_7_1
	.byte	W56
	.byte	W01
	.byte	FINE

	@********************** Track  8 **********************@

	.global song050_8
song050_8:	@ 0x087BA61B
	.byte	KEYSH	, 0
song050_8_5:
	.byte	VOICE	, 96
	.byte	VOL	, v078
	.byte	PAN	, c_v
	.byte		N10	, An1, v116
	.byte	W12
	.byte		N04	, An2
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N12	, An1
	.byte	W12
	.byte		N04	, An2
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N10	, An1
	.byte	W12
	.byte		N06	, An2
	.byte	W12
	.byte		N12	, En1
	.byte	W12
	.byte		N05	, En2
	.byte	W12
	.byte		N11	, En1
	.byte	W12
	.byte		N04	, En2
	.byte	W12
	.byte		N10	, En1
	.byte	W12
	.byte		N04	, En2
	.byte	W12
	.byte		N12	, En1
	.byte	W12
	.byte		N04	, En2
	.byte	W12
	.byte		N09	, An1
	.byte	W12
	.byte		N04	, An2
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N09	, An1
	.byte	W12
	.byte		N03	, An2
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N09	, An1
	.byte	W12
	.byte		N03	, An2
	.byte	W12
	.byte		N12	, En1
	.byte	W12
	.byte		N05	, En2
	.byte	W12
	.byte		N12	, Fs1
	.byte	W12
	.byte		N04	, Fs2
	.byte	W12
	.byte		N12	, Gn1
	.byte	W12
	.byte		N04	, Gn2
	.byte	W12
	.byte		N11	, Gs1
	.byte	W12
	.byte		N08	, Gs2
	.byte	W12
song050_8_1:
	.byte		N07	, An1, v116
	.byte	W12
	.byte		N03	, An2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			An1
	.byte	W12
	.byte		N03	, An2
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N06	, An1
	.byte	W12
	.byte		N03	, An2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N10	, An1
	.byte	W12
	.byte		N03	, An2
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	PEND
song050_8_2:
	.byte		N09	, Gn1, v116
	.byte	W12
	.byte		N03	, Gn2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N07	, Gn1
	.byte	W12
	.byte		N03	, Gn2
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N06	, Gn1
	.byte	W12
	.byte		N03	, Gn2
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N07	, Gn1
	.byte	W12
	.byte		N03	, Gn2
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	PEND
song050_8_3:
	.byte		N07	, An1, v116
	.byte	W12
	.byte		N03	, An2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N07	, An1
	.byte	W12
	.byte		N03	, An2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N07	, An1
	.byte	W12
	.byte		N03	, An2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N06	, An1
	.byte	W12
	.byte		N03	, An2
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	PEND
song050_8_4:
	.byte		N07	, Gn1, v116
	.byte	W12
	.byte		N03	, Gn2
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N08	, Gn1
	.byte	W12
	.byte		N03	, Gn2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N09	, En1
	.byte	W12
	.byte		N03	, En2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N08	, En1
	.byte	W12
	.byte		N03	, En2
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song050_8_1
	.byte	PATT	
		mPtr	song050_8_2
	.byte	PATT	
		mPtr	song050_8_3
	.byte	PATT	
		mPtr	song050_8_4
	.byte	PATT	
		mPtr	song050_8_1
	.byte	PATT	
		mPtr	song050_8_2
	.byte	PATT	
		mPtr	song050_8_3
	.byte	PATT	
		mPtr	song050_8_4
	.byte	PATT	
		mPtr	song050_8_1
	.byte	PATT	
		mPtr	song050_8_2
	.byte	PATT	
		mPtr	song050_8_3
	.byte	PATT	
		mPtr	song050_8_4
	.byte	GOTO	
		mPtr	song050_8_5
	.byte	FINE

	@********************** Track  9 **********************@

	.global song050_9
song050_9:	@ 0x087BA749
	.byte	KEYSH	, 0
song050_9_2:
	.byte	VOICE	, 127
	.byte	VOL	, v105
	.byte	PAN	, c_v
	.byte		N11	, Cs1, v116
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N18	
	.byte	W12
	.byte	W96
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte	W96
song050_9_1:
	.byte		N11	, Cn1, v116
	.byte	W11
	.byte		N05	, Cs1
	.byte	W06
	.byte		N05	
	.byte	W07
	.byte		N11	, Cn1
	.byte	W11
	.byte		N05	, Cs1
	.byte	W06
	.byte		N05	
	.byte	W07
	.byte		N11	, Cn1
	.byte	W11
	.byte		N05	, Cs1
	.byte	W06
	.byte		N05	
	.byte	W07
	.byte		N11	, Cn1
	.byte	W11
	.byte		N05	, Cs1
	.byte	W06
	.byte		N04	
	.byte	W07
	.byte	PEND
	.byte	PATT	
		mPtr	song050_9_1
	.byte	PATT	
		mPtr	song050_9_1
	.byte	PATT	
		mPtr	song050_9_1
	.byte	PATT	
		mPtr	song050_9_1
	.byte	PATT	
		mPtr	song050_9_1
	.byte	PATT	
		mPtr	song050_9_1
	.byte	PATT	
		mPtr	song050_9_1
	.byte	PATT	
		mPtr	song050_9_1
	.byte	PATT	
		mPtr	song050_9_1
	.byte	PATT	
		mPtr	song050_9_1
	.byte	PATT	
		mPtr	song050_9_1
	.byte	PATT	
		mPtr	song050_9_1
	.byte	PATT	
		mPtr	song050_9_1
	.byte	PATT	
		mPtr	song050_9_1
	.byte	PATT	
		mPtr	song050_9_1
	.byte	GOTO	
		mPtr	song050_9_2
	.byte	FINE

	mAlignWord
	.global song050
song050:	@ 0x087BA7E8
	.byte	9		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup007		@ voicegroup/tone

	mPtr	song050_1		@ track
	mPtr	song050_2		@ track
	mPtr	song050_3		@ track
	mPtr	song050_4		@ track
	mPtr	song050_5		@ track
	mPtr	song050_6		@ track
	mPtr	song050_7		@ track
	mPtr	song050_8		@ track
	mPtr	song050_9		@ track
