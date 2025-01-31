	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song049_1
song049_1:	@ 0x087B9ED4
	.byte	KEYSH	, 0
song049_1_3:
	.byte	TEMPO	, 56
	.byte	VOICE	, 75
	.byte	VOL	, v114
	.byte	PAN	, c_v
	.byte	W96
song049_1_1:
	.byte		N07	, Bn2, v100
	.byte	W08
	.byte			An2
	.byte	W08
	.byte			Cn3
	.byte	W08
	.byte		N68	, Bn2
	.byte	W72
	.byte	PEND
song049_1_2:
	.byte	W24
	.byte		N23	, Fs2, v100
	.byte	W24
	.byte			Bn2
	.byte	W24
	.byte			Cs3
	.byte	W24
	.byte	PEND
	.byte		N92	, Dn3
	.byte	W96
	.byte			En3
	.byte	W96
	.byte	PATT	
		.word	song049_1_1
	.byte	PATT	
		.word	song049_1_2
	.byte		N92	, Dn3, v100
	.byte	W96
	.byte		N44	, En3
	.byte	W48
	.byte			Fn3
	.byte	W48
	.byte		N92	, Fs3
	.byte	W96
	.byte	GOTO	
		.word	song049_1_3
	.byte	FINE

	@********************** Track  2 **********************@

	.global song049_2
song049_2:	@ 0x087B9F16
	.byte	KEYSH	, 0
song049_2_3:
	.byte	VOICE	, 44
	.byte	MOD	, 0
	.byte	VOL	, v062
	.byte	PAN	, c_v
	.byte	W96
song049_2_1:
	.byte		N11	, Bn4, v116
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Dn5
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Bn4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte	PEND
song049_2_2:
	.byte		N11	, Bn4, v116
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Dn5
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Bn4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte	PEND
	.byte			Gn4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Cs5
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte	PATT	
		.word	song049_2_1
	.byte	PATT	
		.word	song049_2_2
	.byte		N11	, Gn4, v116
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Bn4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Bn4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Cs5
	.byte	W12
	.byte			Bn4
	.byte	W12
	.byte			Fs5
	.byte	W12
	.byte			Cs5
	.byte	W12
	.byte		N05	, Fs5
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			Fs5
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			Fs5
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			Fs5
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			Fs5
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			Fs5
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			Fs5
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			Fs5
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte	GOTO	
		.word	song049_2_3
	.byte	FINE

	@********************** Track  3 **********************@

	.global song049_3
song049_3:	@ 0x087B9FBA
	.byte	KEYSH	, 0
song049_3_4:
	.byte	VOICE	, 45
	.byte	PAN	, c_v
	.byte	VOL	, v085
	.byte		N23	, Fs3, v116
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
song049_3_1:
	.byte		N11	, Bn1, v116
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte	PEND
song049_3_2:
	.byte		N32	, Bn1, v116
	.byte	W36
	.byte		N11	, Fs2
	.byte	W12
	.byte		N23	, Bn2
	.byte	W24
	.byte			An2
	.byte	W24
	.byte	PEND
song049_3_3:
	.byte		N11	, Gn2, v116
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N11	, Dn2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N11	, Fs2
	.byte	W12
	.byte	PEND
	.byte			En2
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N11	, Bn1
	.byte	W12
	.byte			En2
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N11	, Bn1
	.byte	W12
	.byte	PATT	
		.word	song049_3_1
	.byte	PATT	
		.word	song049_3_2
	.byte	PATT	
		.word	song049_3_3
	.byte		N11	, En2, v116
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	GOTO	
		.word	song049_3_4
	.byte	FINE

	@********************** Track  4 **********************@

	.global song049_4
song049_4:	@ 0x087BA03A
	.byte	KEYSH	, 0
song049_4_3:
	.byte	W96
	.byte	VOICE	, 127
	.byte	VOL	, v103
	.byte	PAN	, c_v
	.byte	BENDR	, 127
	.byte		N23	, Cs1, v096
	.byte	W24
	.byte		N07	
	.byte	W08
	.byte		N07	
	.byte	W08
	.byte		N07	
	.byte	W08
	.byte		N11	
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N11	
	.byte	W12
song049_4_1:
	.byte		N32	, Cs1, v096
	.byte	W36
	.byte		N11	
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte	PEND
song049_4_2:
	.byte		N23	, Cs1, v096
	.byte	W24
	.byte		N07	
	.byte	W08
	.byte		N07	
	.byte	W08
	.byte		N07	
	.byte	W08
	.byte		N11	
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song049_4_1
	.byte	PATT	
		.word	song049_4_2
	.byte	PATT	
		.word	song049_4_1
	.byte	PATT	
		.word	song049_4_2
	.byte		N11	, Cs1, v096
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N13	
	.byte	W12
	.byte	W96
	.byte	GOTO	
		.word	song049_4_3
	.byte	FINE

	@********************** Track  5 **********************@

	.global song049_5
song049_5:	@ 0x087BA09A
	.byte	KEYSH	, 0
song049_5_1:
	.byte	VOICE	, 90
	.byte	VOL	, v118
	.byte	PAN	, c_v
	.byte	BENDR	, 127
	.byte		N11	, Cn3, v100
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 90
	.byte	VOL	, v108
	.byte	PAN	, c_v
	.byte	BENDR	, 127
	.byte		N11	, Cn3
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte	GOTO	
		.word	song049_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song049_6
song049_6:	@ 0x087BA0DD
	.byte	KEYSH	, 0
song049_6_3:
	.byte	VOICE	, 68
	.byte	MOD	, 0
	.byte	VOL	, v045
	.byte	PAN	, c_v
	.byte		N08	, Fs2, v116
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs3
	.byte	W12
song049_6_1:
	.byte		N11	, Bn3, v116
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte	PEND
song049_6_2:
	.byte		N11	, Bn3, v116
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte	PEND
	.byte			Gn3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte	PATT	
		.word	song049_6_1
	.byte	PATT	
		.word	song049_6_2
	.byte		N11	, Gn3, v116
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte		N05	, Fs4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte	GOTO	
		.word	song049_6_3
	.byte	FINE

	@********************** Track  7 **********************@

	.global song049_7
song049_7:	@ 0x087BA192
	.byte	KEYSH	, 0
song049_7_4:
	.byte	VOICE	, 46
	.byte	PAN	, c_v
	.byte	VOL	, v065
	.byte		N23	, Fs3, v116
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N23	
	.byte	W24
song049_7_1:
	.byte		N11	, Bn1, v116
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte	PEND
song049_7_2:
	.byte		N32	, Bn1, v116
	.byte	W36
	.byte		N11	, Fs2
	.byte	W12
	.byte		N23	, Bn2
	.byte	W24
	.byte			An2
	.byte	W24
	.byte	PEND
song049_7_3:
	.byte		N11	, Gn2, v116
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N11	, Dn2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N11	, Fs2
	.byte	W12
	.byte	PEND
	.byte			En2
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N11	, Bn1
	.byte	W12
	.byte			En2
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N11	, Bn1
	.byte	W12
	.byte	PATT	
		.word	song049_7_1
	.byte	PATT	
		.word	song049_7_2
	.byte	PATT	
		.word	song049_7_3
	.byte		N11	, En2, v116
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	GOTO	
		.word	song049_7_4
	.byte	FINE

	@********************** Track  8 **********************@

	.global song049_8
song049_8:	@ 0x087BA212
	.byte	KEYSH	, 0
song049_8_1:
	.byte	VOICE	, 47
	.byte	MOD	, 0
	.byte	VOL	, v084
	.byte	PAN	, c_v
	.byte		N05	, Fs3, v116
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Fs4
	.byte	W12
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
		.word	song049_8_1
	.byte	FINE

	.align 2
	.global song049
song049:	@ 0x087BA240
	.byte	8		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup006		@ voicegroup/tone

	.word	song049_1		@ track
	.word	song049_2		@ track
	.word	song049_3		@ track
	.word	song049_4		@ track
	.word	song049_5		@ track
	.word	song049_6		@ track
	.word	song049_7		@ track
	.word	song049_8		@ track
