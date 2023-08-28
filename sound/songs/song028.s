	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song028_1
song028_1:	@ 0x087AE7B0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 67
	.byte	VOICE	, 74
	.byte	PAN	, c_v
	.byte	VOL	, v102
	.byte	W48
song028_1_2:
	.byte	W12
	.byte		N18	, Cs3, v127
	.byte	W24
	.byte		N06	
	.byte	W12
song028_1_1:
	.byte		N12	, Dn3, v127
	.byte	W18
	.byte		N28	, Bn2
	.byte	W30
	.byte		N06	, Cs3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			An2
	.byte	W12
	.byte	PEND
	.byte		N12	, Gn2
	.byte	W18
	.byte		N30	, Bn2
	.byte	W42
	.byte		N18	, Cs3
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte	PATT	
		.word	song028_1_1
	.byte		N12	, Gn2, v127
	.byte	W18
	.byte		N30	, Bn2
	.byte	W36
	.byte		N18	, Bn1, v112
	.byte	W18
	.byte		N06	, Cs2
	.byte	W24
	.byte	W06
	.byte		N18	, Bn1
	.byte	W18
	.byte		N06	, Cs2
	.byte	W24
	.byte		N04	, An2, v127
	.byte	W04
	.byte			Bn2
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			Dn3
	.byte	W04
	.byte			En3
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			Bn2
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			Dn3
	.byte	W04
	.byte			En3
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			Gs3
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			Dn3
	.byte	W04
	.byte			En3
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			Gs3
	.byte	W04
	.byte			As3
	.byte	W04
	.byte			Dn3
	.byte	W04
	.byte			En3
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			Gs3
	.byte	W04
	.byte			As3
	.byte	W04
	.byte			Cn4
	.byte	W04
	.byte	GOTO	
		.word	song028_1_2
	.byte	FINE

	@********************** Track  2 **********************@

	.global song028_2
song028_2:	@ 0x087AE830
	.byte	KEYSH	, 0
	.byte	VOICE	, 74
	.byte	VOL	, v115
	.byte	PAN	, c_v
	.byte	W48
song028_2_2:
	.byte		N06	, En2, v112
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte		N06	
	.byte	W12
song028_2_1:
	.byte		N12	, Dn2, v112
	.byte	W18
	.byte		N24	
	.byte	W30
	.byte		N06	, En2
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte		N12	, Gn2
	.byte	W18
	.byte		N24	
	.byte	W30
	.byte		N06	, En2
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PATT	
		.word	song028_2_1
	.byte		N12	, Gn2, v112
	.byte	W18
	.byte		N24	
	.byte	W36
	.byte		N18	, Bn1
	.byte	W18
	.byte		N06	, Cs2
	.byte	W24
	.byte	W06
	.byte		N18	, Bn1
	.byte	W18
	.byte		N06	, Cs2
	.byte	W24
	.byte		N04	, An1, v127
	.byte	W04
	.byte			Bn1
	.byte	W04
	.byte			Cs2
	.byte	W04
	.byte			Dn2
	.byte	W04
	.byte			En2
	.byte	W04
	.byte			Fs2
	.byte	W04
	.byte			Bn1
	.byte	W04
	.byte			Cs2
	.byte	W04
	.byte			Dn2
	.byte	W04
	.byte			En2
	.byte	W04
	.byte			Fs2
	.byte	W04
	.byte			Gs2
	.byte	W04
	.byte			Cs2
	.byte	W04
	.byte			Dn2
	.byte	W04
	.byte			En2
	.byte	W04
	.byte			Fs2
	.byte	W04
	.byte			Gs2
	.byte	W04
	.byte			As2
	.byte	W04
	.byte			Dn2
	.byte	W04
	.byte			En2
	.byte	W04
	.byte			Fs2
	.byte	W04
	.byte			Gs2
	.byte	W04
	.byte			As2
	.byte	W04
	.byte			Cn3
	.byte	W04
	.byte	GOTO	
		.word	song028_2_2
	.byte	FINE

	@********************** Track  3 **********************@

	.global song028_3
song028_3:	@ 0x087AE8B1
	.byte	KEYSH	, 0
	.byte	VOICE	, 45
	.byte	VOL	, v103
	.byte	PAN	, c_v
	.byte	W48
song028_3_2:
	.byte		N06	, An2, v127
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			En2
	.byte	W12
	.byte		N06	
	.byte	W12
song028_3_1:
	.byte		N18	, Gn2, v127
	.byte	W18
	.byte		N12	, Fs2
	.byte	W12
	.byte		N06	, Gn2
	.byte	W06
	.byte		N12	, Fs2
	.byte	W12
	.byte		N06	, An2
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			En2
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte		N18	, Dn3
	.byte	W18
	.byte		N12	, Cs3
	.byte	W12
	.byte		N06	, Dn3
	.byte	W06
	.byte		N12	, Cs3
	.byte	W12
	.byte		N06	, An2
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			En2
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PATT	
		.word	song028_3_1
	.byte		N18	, Dn3, v127
	.byte	W18
	.byte		N12	, Cs3
	.byte	W12
	.byte		N06	, Dn3
	.byte	W06
	.byte		N12	, Cs3
	.byte	W12
	.byte		N06	, En2
	.byte	W06
	.byte		N18	, Gn2
	.byte	W18
	.byte		N06	, An2
	.byte	W24
	.byte	W06
	.byte		N18	, Gn2
	.byte	W18
	.byte		N06	, An2
	.byte	W30
	.byte		N18	, Gn2
	.byte	W18
	.byte		N06	, An2
	.byte	W24
	.byte	W06
	.byte		N18	, Gn2
	.byte	W18
	.byte		N06	, An2
	.byte	W24
	.byte	GOTO	
		.word	song028_3_2
	.byte	FINE

	@********************** Track  4 **********************@

	.global song028_4
song028_4:	@ 0x087AE925
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v103
	.byte	PAN	, c_v
	.byte	BENDR	, 127
	.byte		N23	, Cs1, v112
	.byte		N32	, Cs2, v127
	.byte	W24
	.byte		N03	, Cs1
	.byte	W04
	.byte			Cs1, v096
	.byte	W04
	.byte			Cs1, v052
	.byte	W04
	.byte			Cs1, v072
	.byte	W04
	.byte			Cs1, v088
	.byte	W04
	.byte			Cs1, v108
	.byte	W04
song028_4_1:
	.byte		N11	, Cn1, v127
	.byte		N32	, Cs2
	.byte	W12
	.byte		N11	, Cs1
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte			Cn1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte			Cn1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte		N06	, Cn1, v127
	.byte		N11	, Dn1, v056
	.byte	W06
	.byte		N05	, Cn1, v127
	.byte	W06
	.byte		N11	, Cs1
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte			Cn1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte		N05	, Cn1, v127
	.byte		N11	, Dn1, v056
	.byte	W06
	.byte		N05	, Cn1, v127
	.byte	W06
	.byte		N11	, Cs1
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte		N05	, Cn1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte		N05	, Cs1, v127
	.byte		N11	, Dn1, v056
	.byte	W06
	.byte		N05	, Cn1, v127
	.byte	W06
	.byte		N11	, Dn1, v056
	.byte	W06
	.byte		N05	, Cn1, v127
	.byte	W06
	.byte		N11	, Cs1
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte			Cn1, v127
	.byte		N32	, Cs2, v120
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte			Cn1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte			Cn1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte			Cn1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte			Cn1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte			Cn1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte			Cn1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte			Cn1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte		N05	, Cs1, v127
	.byte		N05	, Dn1, v056
	.byte	W06
	.byte		N17	, Cn1, v127
	.byte		N17	, En1, v056
	.byte	W18
	.byte		N11	, Cn1, v127
	.byte		N11	, Dn1, v056
	.byte	W06
	.byte		N05	, Gn1, v127
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			An1
	.byte	W06
	.byte			Cs1
	.byte		N05	, Dn1, v056
	.byte	W06
	.byte		N17	, Cn1, v127
	.byte		N17	, En1, v056
	.byte	W18
	.byte		N11	, Cn1, v127
	.byte		N11	, Dn1, v056
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte		N11	
	.byte	W12
	.byte		N05	
	.byte		N05	, Dn1, v056
	.byte	W06
	.byte		N17	, Cn1, v127
	.byte		N17	, En1, v056
	.byte	W18
	.byte		N11	, Cn1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N11	, Dn1, v056
	.byte	W12
	.byte		N03	, Cs1, v127
	.byte		N11	, Dn1, v056
	.byte	W04
	.byte		N03	, Cs1, v127
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N03	
	.byte		N11	, Dn1, v056
	.byte	W04
	.byte		N03	, Cs1, v127
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N03	
	.byte		N11	, Dn1, v056
	.byte	W04
	.byte		N03	, Cs1, v127
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N03	
	.byte		N13	, Dn1, v056
	.byte	W04
	.byte		N03	, Cs1, v127
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte	GOTO	
		.word	song028_4_1
	.byte	W01
	.byte	FINE

	@********************** Track  5 **********************@

	.global song028_5
song028_5:	@ 0x087AEA9F
	.byte	KEYSH	, 0
	.byte	VOICE	, 84
	.byte	VOL	, v042
	.byte	PAN	, c_v
	.byte	W48
song028_5_2:
	.byte		N06	, En4, v112
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte		N06	
	.byte	W12
song028_5_1:
	.byte		N12	, Dn4, v112
	.byte	W18
	.byte		N24	
	.byte	W30
	.byte		N06	, En4
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte		N12	, Gn4
	.byte	W18
	.byte		N24	
	.byte	W30
	.byte		N06	, En4
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PATT	
		.word	song028_5_1
	.byte		N12	, Gn4, v112
	.byte	W18
	.byte		N24	
	.byte	W36
	.byte		N18	, Bn3
	.byte	W18
	.byte		N06	, Cs4
	.byte	W24
	.byte	W06
	.byte		N18	, Bn3
	.byte	W18
	.byte		N06	, Cs4
	.byte	W30
	.byte		N18	, Bn3
	.byte	W18
	.byte		N06	, Cs4
	.byte	W24
	.byte	W06
	.byte		N18	, Bn3
	.byte	W18
	.byte		N06	, Cs4
	.byte	W24
	.byte	GOTO	
		.word	song028_5_2
	.byte	FINE

	@********************** Track  6 **********************@

	.global song028_6
song028_6:	@ 0x087AEAFB
	.byte	KEYSH	, 0
	.byte	VOICE	, 1
	.byte	PAN	, c_v
	.byte	VOL	, v046
	.byte	W48
song028_6_2:
	.byte	W12
	.byte		N18	, Cs4, v127
	.byte	W24
	.byte		N06	
	.byte	W12
song028_6_1:
	.byte		N12	, Dn4, v127
	.byte	W18
	.byte		N28	, Bn3
	.byte	W30
	.byte		N06	, Cs4
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			An3
	.byte	W12
	.byte	PEND
	.byte		N12	, Gn3
	.byte	W18
	.byte		N30	, Bn3
	.byte	W42
	.byte		N18	, Cs4
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte	PATT	
		.word	song028_6_1
	.byte		N12	, Gn3, v127
	.byte	W18
	.byte		N30	, Bn3
	.byte	W36
	.byte		N18	, Bn2, v112
	.byte	W18
	.byte		N06	, Cs3
	.byte	W24
	.byte	W06
	.byte		N18	, Bn2
	.byte	W18
	.byte		N06	, Cs3
	.byte	W24
	.byte		N04	, An3, v127
	.byte	W04
	.byte			Bn3
	.byte	W04
	.byte			Cs4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			En4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			Bn3
	.byte	W04
	.byte			Cs4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			En4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			Gs4
	.byte	W04
	.byte			Cs4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			En4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			Gs4
	.byte	W04
	.byte			As4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			En4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			Gs4
	.byte	W04
	.byte			As4
	.byte	W04
	.byte			Cn5
	.byte	W04
	.byte	GOTO	
		.word	song028_6_2
	.byte	FINE

	.align 2
	.global song028
song028:	@ 0x087AEB7C
	.byte	6		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	song028_1		@ track
	.word	song028_2		@ track
	.word	song028_3		@ track
	.word	song028_4		@ track
	.word	song028_5		@ track
	.word	song028_6		@ track
