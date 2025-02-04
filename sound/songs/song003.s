	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song003_1
song003_1:	@ 0x0879D760
	.byte	KEYSH	, 0
song003_1_4:
	.byte	TEMPO	, 60
	.byte	VOICE	, 127
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	BENDR	, 15
	.byte		N06	, Cn1, v120
	.byte	W12
	.byte			Dn1, v044
	.byte	W06
	.byte			Cn1, v108
	.byte	W06
	.byte			Cs1, v120
	.byte	W12
	.byte			Dn1, v044
	.byte	W06
	.byte			Cn1, v112
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte			Cn1, v112
	.byte	W12
	.byte			Cs1, v120
	.byte	W12
	.byte			Dn1, v044
	.byte	W06
	.byte			Cs1, v116
	.byte	W06
song003_1_1:
	.byte		N06	, Cn1, v120
	.byte	W12
	.byte			Dn1, v044
	.byte	W06
	.byte			Cn1, v108
	.byte	W06
	.byte			Cs1, v120
	.byte	W12
	.byte			Dn1, v044
	.byte	W06
	.byte			Cn1, v112
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte			Cn1, v112
	.byte	W12
	.byte			Cs1, v120
	.byte	W12
	.byte		N12	, Ds1, v044
	.byte	W06
	.byte		N06	, Cs1, v116
	.byte	W06
	.byte	PEND
	.byte			Cn1, v120
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte			Cs1, v120
	.byte	W12
	.byte			Dn1, v044
	.byte	W06
	.byte			Cn1, v112
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte			Cn1, v112
	.byte	W12
	.byte			Cs1, v120
	.byte	W12
	.byte			Dn1, v044
	.byte	W06
	.byte			Cs1, v116
	.byte	W06
	.byte	PATT	
		mPtr	song003_1_1
song003_1_2:
	.byte		N06	, Cn1, v120
	.byte	W12
	.byte			Dn1, v044
	.byte	W06
	.byte			Cn1, v108
	.byte	W06
	.byte			Cs1, v120
	.byte	W12
	.byte			Dn1, v044
	.byte	W06
	.byte			Cn1, v112
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte			Cn1, v112
	.byte	W12
	.byte			Cs1, v120
	.byte	W12
	.byte			Dn1, v044
	.byte	W06
	.byte			Cs1, v116
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song003_1_2
	.byte	PATT	
		mPtr	song003_1_2
	.byte		N06	, Cn1, v120
	.byte	W12
	.byte			Dn1, v044
	.byte	W06
	.byte			Cn1, v108
	.byte	W06
	.byte			Cs1, v120
	.byte	W12
	.byte			Dn1, v044
	.byte	W06
	.byte			Cn1, v112
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Cs1, v120
	.byte	W12
	.byte			Cn1, v112
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte			Cs1, v116
	.byte	W06
song003_1_3:
	.byte		N06	, Cn1, v120
	.byte	W12
	.byte			Ds1, v048
	.byte	W12
	.byte			Cs1, v120
	.byte	W12
	.byte			Ds1, v048
	.byte	W06
	.byte			Cn1, v112
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte			Ds1, v048
	.byte	W12
	.byte			Cs1, v120
	.byte	W12
	.byte			Ds1, v048
	.byte	W12
	.byte	PEND
	.byte			Cn1, v120
	.byte	W12
	.byte			Ds1, v048
	.byte	W12
	.byte			Cs1, v120
	.byte	W12
	.byte			Ds1, v048
	.byte	W06
	.byte			Cs1, v112
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte			Cn1, v112
	.byte		N12	, En1, v044
	.byte	W12
	.byte		N06	, Dn1
	.byte	W06
	.byte			Cn1, v116
	.byte		N18	, En1, v044
	.byte	W12
	.byte		N06	, Cn1, v116
	.byte	W06
	.byte	PATT	
		mPtr	song003_1_3
	.byte		N06	, Cn1, v120
	.byte	W12
	.byte			Ds1, v048
	.byte	W12
	.byte			Cs1, v120
	.byte	W06
	.byte			Cs1, v112
	.byte	W06
	.byte			Ds1, v048
	.byte	W06
	.byte			Cn1, v112
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte			Cn1, v112
	.byte		N12	, En1, v044
	.byte	W12
	.byte		N06	, Cs1, v116
	.byte	W06
	.byte			Cn1
	.byte		N18	, En1, v044
	.byte	W12
	.byte		N06	, Cn1, v116
	.byte	W06
	.byte	PATT	
		mPtr	song003_1_3
	.byte		N06	, Cs1, v112
	.byte	W12
	.byte			Ds1, v048
	.byte	W06
	.byte			Cs1, v112
	.byte	W06
	.byte			Cn1, v120
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Ds1, v048
	.byte	W06
	.byte			Cs1, v068
	.byte	W06
	.byte			Cs1, v120
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte			Cn1, v112
	.byte		N12	, En1, v044
	.byte	W12
	.byte		N06	, Dn1
	.byte	W06
	.byte			Cn1, v116
	.byte		N18	, En1, v044
	.byte	W12
	.byte		N06	, Cn1, v116
	.byte	W06
	.byte			Cn1, v120
	.byte	W12
	.byte			Ds1, v048
	.byte	W12
	.byte			Cs1, v120
	.byte	W12
	.byte			Ds1, v048
	.byte	W12
	.byte			Cn1, v112
	.byte	W12
	.byte			Ds1, v048
	.byte	W06
	.byte			Cs1, v112
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Cn1, v120
	.byte	W06
	.byte			Ds1, v048
	.byte	W06
	.byte			Cn1, v120
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W48
	.byte		N03	, Cs1, v068
	.byte	W03
	.byte			Cs1, v112
	.byte	W03
	.byte		N06	, Cn1, v116
	.byte	W06
	.byte			Cn1, v124
	.byte	W12
	.byte			Cn1, v120
	.byte	W06
	.byte	GOTO	
		mPtr	song003_1_4
	.byte	FINE

	@********************** Track  2 **********************@

	.global song003_2
song003_2:	@ 0x0879D915
	.byte	KEYSH	, 0
song003_2_3:
	.byte	VOICE	, 44
	.byte	VOL	, v075
	.byte	PAN	, c_v
	.byte	BENDR	, 0
	.byte		N16	, Ds1, v120
	.byte	W18
	.byte		N04	, Ds1, v116
	.byte	W66
	.byte			As1
	.byte	W06
	.byte			As1, v120
	.byte	W06
song003_2_1:
	.byte		N16	, Ds1, v120
	.byte	W18
	.byte		N04	
	.byte	W42
	.byte			Ds1, v116
	.byte	W12
	.byte	MOD	, 0
	.byte		N04	, As1, v124
	.byte	W06
	.byte		N16	, Cs2
	.byte	W18
	.byte	PEND
song003_2_2:
	.byte		N16	, Ds1, v120
	.byte	W18
	.byte		N04	, Ds1, v116
	.byte	W66
	.byte			As1
	.byte	W06
	.byte			As1, v120
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song003_2_1
	.byte	PATT	
		mPtr	song003_2_2
	.byte	PATT	
		mPtr	song003_2_1
	.byte		N16	, Ds1, v127
	.byte	W18
	.byte		N04	
	.byte	W66
	.byte			As1
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N16	, Ds1
	.byte	W18
	.byte		N04	
	.byte	W42
	.byte		N05	
	.byte	W06
	.byte		N04	, As1
	.byte	W06
	.byte	MOD	, 0
	.byte		N04	, Ds2
	.byte	W06
	.byte		N16	, Dn2
	.byte	W18
	.byte		N56	, Cs2
	.byte	W60
	.byte		N17	
	.byte	W18
	.byte			Gs1
	.byte	W18
	.byte		N44	, Cs1
	.byte	W48
	.byte		N11	
	.byte	W12
	.byte		N05	, Gs1
	.byte	W12
	.byte			Cs2
	.byte	W06
	.byte		N16	, Cn2
	.byte	W18
	.byte		N72	, Bn1
	.byte	W78
	.byte		N05	
	.byte	W06
	.byte		N11	, Fs1
	.byte	W12
	.byte		N56	, Bn0
	.byte	W60
	.byte		N06	, Fs1
	.byte	W12
	.byte		N05	, Bn1
	.byte	W06
	.byte		N17	, As1
	.byte	W18
	.byte		N72	, An1
	.byte	W84
	.byte		N11	, En1
	.byte	W12
	.byte		N54	, An1
	.byte	W60
	.byte		N16	
	.byte	W18
	.byte			Gs1
	.byte	W18
	.byte		N76	, Gn1
	.byte	W78
	.byte		N05	
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			An1
	.byte	W06
	.byte			As1
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N03	
	.byte	W78
	.byte	GOTO	
		mPtr	song003_2_3
	.byte	FINE

	@********************** Track  3 **********************@

	.global song003_3
song003_3:	@ 0x0879D9C4
	.byte	KEYSH	, 0
song003_3_3:
	.byte	VOICE	, 70
	.byte	VOL	, v094
	.byte	PAN	, c_v
	.byte	MOD	, 24
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte	W24
	.byte		N30	, Cn3, v127
	.byte	W72
song003_3_1:
	.byte	W24
	.byte		N30	, Cn3, v127
	.byte	W24
	.byte	VOICE	, 71
	.byte	W12
	.byte		N30	
	.byte	W36
	.byte	PEND
song003_3_2:
	.byte	VOICE	, 70
	.byte	W24
	.byte		N30	, Cn3, v127
	.byte	W72
	.byte	PEND
	.byte	PATT	
		mPtr	song003_3_1
	.byte	PATT	
		mPtr	song003_3_2
	.byte	PATT	
		mPtr	song003_3_1
	.byte	PATT	
		mPtr	song003_3_2
	.byte	PATT	
		mPtr	song003_3_1
	.byte	VOICE	, 73
	.byte		TIE	, Cn3, v127
	.byte	W96
	.byte	W54
	.byte		EOT	
	.byte	W06
	.byte		N06	
	.byte	W18
	.byte		N18	, Bn2
	.byte	W18
	.byte		TIE	, As2
	.byte	W96
	.byte	W54
	.byte		EOT	
	.byte	W06
	.byte		N06	
	.byte	W18
	.byte		N18	, An2
	.byte	W18
	.byte		TIE	, Gs2
	.byte	W96
	.byte	W54
	.byte		EOT	
	.byte	W06
	.byte		N06	
	.byte	W18
	.byte		N18	, Gn2
	.byte	W18
	.byte	VOICE	, 72
	.byte		N96	, Fs2
	.byte	W96
	.byte		N04	, Cn3
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W78
	.byte	GOTO	
		mPtr	song003_3_3
	.byte	FINE

	mAlignWord
	.global song003
song003:	@ 0x0879DA40
	.byte	3		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

mAlignWord
	mPtr	voicegroup000		@ voicegroup/tone

	mPtr	song003_1		@ track
	mPtr	song003_2		@ track
	mPtr	song003_3		@ track
