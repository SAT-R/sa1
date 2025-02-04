	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song012_1
song012_1:	@ 0x087A09A0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 127
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte	BENDR	, 127
	.byte		N12	, Ds1, v048
	.byte		N06	, Gn1, v124
	.byte	W12
	.byte			Dn2
	.byte	W06
	.byte			Gs1, v112
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte			Gs1, v112
	.byte	W06
	.byte			Fs1
	.byte	W12
	.byte			Dn1, v048
	.byte		N06	, Gn1, v124
	.byte	W12
	.byte			Dn2
	.byte	W06
	.byte			Gs1, v112
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte			Gs1, v112
	.byte	W06
	.byte			Cs1
	.byte	W12
song012_1_2:
	.byte		N12	, Ds1, v048
	.byte		N06	, Gn1, v124
	.byte	W12
	.byte			Dn2
	.byte	W06
	.byte			Gs1, v112
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte			Gs1, v112
	.byte	W06
	.byte			Fs1
	.byte	W12
	.byte			Dn1, v048
	.byte	W06
	.byte			Gn1, v124
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Gn1, v112
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte			Gn1, v112
	.byte	W06
	.byte			Cs1
	.byte		TIE	, Cs2
	.byte	W12
	.byte	PEND
song012_1_1:
	.byte		N12	, Ds1, v048
	.byte		N06	, Gn1, v124
	.byte	W12
	.byte			Dn2
	.byte	W06
	.byte			Gs1, v112
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte			Gs1, v112
	.byte	W06
	.byte			Fs1
	.byte	W12
	.byte			Dn1, v048
	.byte		N06	, Gn1, v124
	.byte	W12
	.byte			Dn2
	.byte	W06
	.byte			Gs1, v112
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte			Gs1, v112
	.byte	W06
	.byte			Cs1
	.byte	W12
	.byte	PEND
	.byte		EOT	, Cs2
	.byte	PATT	
		mPtr	song012_1_1
	.byte	PATT	
		mPtr	song012_1_1
song012_1_3:
	.byte		N06	, Cn1, v124
	.byte		N12	, Ds1, v048
	.byte	W12
	.byte		N06	, Dn2, v124
	.byte	W06
	.byte			Cn1
	.byte		N12	, Ds1, v048
	.byte	W18
	.byte		N06	, Cn1, v124
	.byte		N12	, Ds1, v048
	.byte	W18
	.byte		N06	, An1, v124
	.byte	W12
	.byte			An1, v112
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte			Cn1
	.byte	W06
	.byte		N12	, Bn1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song012_1_1
	.byte	PATT	
		mPtr	song012_1_1
	.byte	PATT	
		mPtr	song012_1_1
	.byte	PATT	
		mPtr	song012_1_1
	.byte	PATT	
		mPtr	song012_1_1
song012_1_4:
	.byte		N06	, Cn1, v124
	.byte		N12	, Ds1, v048
	.byte	W24
	.byte		N06	, Dn1
	.byte	W24
	.byte		N06	
	.byte	W06
	.byte			Gs1, v124
	.byte	W12
	.byte			Gs1, v112
	.byte	W06
	.byte			Dn1, v048
	.byte		N06	, Gs1, v112
	.byte	W06
	.byte			Cn1
	.byte	W06
	.byte		N12	, Bn1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song012_1_1
	.byte	PATT	
		mPtr	song012_1_1
	.byte	PATT	
		mPtr	song012_1_1
	.byte	PATT	
		mPtr	song012_1_2
	.byte	PATT	
		mPtr	song012_1_1
	.byte		EOT	, Cs2
	.byte	PATT	
		mPtr	song012_1_1
	.byte	PATT	
		mPtr	song012_1_1
	.byte	PATT	
		mPtr	song012_1_3
	.byte	PATT	
		mPtr	song012_1_1
	.byte	PATT	
		mPtr	song012_1_1
	.byte	PATT	
		mPtr	song012_1_1
	.byte	PATT	
		mPtr	song012_1_1
	.byte	PATT	
		mPtr	song012_1_1
	.byte	PATT	
		mPtr	song012_1_4
	.byte	PATT	
		mPtr	song012_1_1
	.byte		N12	, Ds1, v048
	.byte		N06	, Gn1, v124
	.byte	W12
	.byte			Dn2
	.byte	W06
	.byte			Gs1, v112
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte			Gs1, v112
	.byte	W06
	.byte			Fs1
	.byte	W12
	.byte			Cn1, v124
	.byte		N06	, Dn1, v048
	.byte	W24
	.byte		N06	
	.byte		N24	, Bn1, v112
	.byte	W24
	.byte		N12	, Ds1, v048
	.byte		N06	, Gn1, v124
	.byte		N96	, Cs2
	.byte	W12
	.byte		N06	, Dn2
	.byte	W06
	.byte			Gs1, v112
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte			Gs1, v112
	.byte	W06
	.byte			Fs1
	.byte	W12
	.byte			Dn1, v048
	.byte		N06	, Gn1, v124
	.byte	W12
	.byte			Dn2
	.byte	W06
	.byte			Gs1, v112
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte			Gs1, v112
	.byte	W06
	.byte			Cs1
	.byte	W12
	.byte	PATT	
		mPtr	song012_1_1
	.byte	PATT	
		mPtr	song012_1_1
	.byte	PATT	
		mPtr	song012_1_1
	.byte	PATT	
		mPtr	song012_1_1
	.byte	PATT	
		mPtr	song012_1_1
	.byte	PATT	
		mPtr	song012_1_1
	.byte	PATT	
		mPtr	song012_1_1
	.byte	PATT	
		mPtr	song012_1_1
	.byte	GOTO	
		mPtr	song012_1_2
	.byte	PATT	
		mPtr	song012_1_2
	.byte	PATT	
		mPtr	song012_1_1
	.byte		EOT	, Cs2
	.byte	FINE

	@********************** Track  2 **********************@

	.global song012_2
song012_2:	@ 0x087A0B5E
	.byte	KEYSH	, 0
	.byte	VOICE	, 62
	.byte	VOL	, v099
	.byte	PAN	, c_v
	.byte	BENDR	, 0
	.byte		N07	, Cn1, v096
	.byte	W18
	.byte		N17	, Gn1, v100
	.byte	W18
	.byte		N06	, Cn2
	.byte	W12
	.byte		N08	, Cn2, v108
	.byte	W18
	.byte		N17	, Gn1, v100
	.byte	W18
	.byte		N06	, Cn1, v104
	.byte	W12
song012_2_2:
	.byte		N07	, Cn1, v096
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N17	, Gn1, v100
	.byte	W18
	.byte		N06	, Cn2
	.byte	W12
	.byte		N08	, Cn2, v108
	.byte	W18
	.byte		N17	, Gn1, v100
	.byte	W18
	.byte		N06	, Cn1, v104
	.byte	W12
	.byte	PEND
song012_2_1:
	.byte		N07	, Cn1, v096
	.byte	W18
	.byte		N17	, Gn1, v100
	.byte	W18
	.byte		N06	, Cn2
	.byte	W12
	.byte		N08	, Cn2, v108
	.byte	W18
	.byte		N17	, Gn1, v100
	.byte	W18
	.byte		N06	, Cn1, v104
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song012_2_1
song012_2_3:
	.byte		N07	, Cn1, v096
	.byte	W18
	.byte		N17	, Gn1, v100
	.byte	W18
	.byte		N06	, Cn2
	.byte	W12
	.byte		N08	, As1, v108
	.byte	W18
	.byte		N17	, Gn1, v100
	.byte	W18
	.byte		N06	, As1, v104
	.byte	W12
	.byte	PEND
song012_2_4:
	.byte		N07	, Gs1, v096
	.byte	W18
	.byte		N17	, Gs1, v100
	.byte	W18
	.byte		N32	, Gn1
	.byte	W36
	.byte		N23	, Fs1, v104
	.byte	W24
	.byte	PEND
song012_2_5:
	.byte		N07	, Fn1, v096
	.byte	W18
	.byte		N17	, Fn1, v100
	.byte	W18
	.byte		N06	, Cn1
	.byte	W12
	.byte		N08	, Fn1, v108
	.byte	W18
	.byte		N17	, Cn1, v100
	.byte	W18
	.byte		N06	, Fn1, v104
	.byte	W12
	.byte	PEND
song012_2_6:
	.byte		N07	, Fs1, v096
	.byte	W18
	.byte		N17	, Fs1, v100
	.byte	W18
	.byte		N06	, Cn1
	.byte	W12
	.byte		N08	, Fs1, v108
	.byte	W18
	.byte		N17	, Cn1, v100
	.byte	W18
	.byte		N06	, Fs1, v104
	.byte	W12
	.byte	PEND
song012_2_7:
	.byte		N07	, Gn1, v096
	.byte	W18
	.byte		N17	, Gn1, v100
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte		N08	, Cn1, v108
	.byte	W18
	.byte		N17	, Gn1, v100
	.byte	W18
	.byte		N06	, Gs1, v104
	.byte	W12
	.byte	PEND
song012_2_8:
	.byte		N07	, An1, v096
	.byte	W18
	.byte		N17	, An1, v100
	.byte	W18
	.byte		N06	, En1
	.byte	W12
	.byte		N08	, An1, v108
	.byte	W18
	.byte		N17	, En1, v100
	.byte	W18
	.byte		N06	, An1, v104
	.byte	W12
	.byte	PEND
song012_2_9:
	.byte		N07	, Dn1, v096
	.byte	W18
	.byte		N17	, Dn1, v100
	.byte	W18
	.byte		N06	, An1
	.byte	W12
	.byte		N08	, Dn1, v108
	.byte	W18
	.byte		N17	, An1, v100
	.byte	W18
	.byte		N06	, Dn1, v104
	.byte	W12
	.byte	PEND
	.byte		N08	, Gn1, v108
	.byte	W96
	.byte	PATT	
		mPtr	song012_2_1
	.byte	PATT	
		mPtr	song012_2_2
	.byte	PATT	
		mPtr	song012_2_1
	.byte	PATT	
		mPtr	song012_2_2
	.byte	PATT	
		mPtr	song012_2_1
	.byte	PATT	
		mPtr	song012_2_1
	.byte	PATT	
		mPtr	song012_2_3
	.byte	PATT	
		mPtr	song012_2_4
	.byte	PATT	
		mPtr	song012_2_5
	.byte	PATT	
		mPtr	song012_2_6
	.byte	PATT	
		mPtr	song012_2_7
	.byte	PATT	
		mPtr	song012_2_8
	.byte	PATT	
		mPtr	song012_2_9
	.byte		N08	, Gn1, v108
	.byte	W96
	.byte	PATT	
		mPtr	song012_2_1
	.byte		N07	, Cn1, v096
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N17	, Gn1, v100
	.byte	W18
	.byte		N06	, Cn2
	.byte	W12
	.byte		N08	, Cn1, v108
	.byte	W24
	.byte		N23	, As1, v100
	.byte	W24
	.byte		N07	, Ds1, v096
	.byte	W18
	.byte		N17	, Ds1, v100
	.byte	W18
	.byte		N06	, As1
	.byte	W12
	.byte		N08	, Ds1, v108
	.byte	W18
	.byte		N17	, As1, v100
	.byte	W18
	.byte		N06	, Ds1, v104
	.byte	W12
	.byte		N07	, Gs1, v096
	.byte	W18
	.byte		N17	, Gs1, v100
	.byte	W18
	.byte		N06	, Ds1
	.byte	W12
	.byte		N08	, Gs1, v108
	.byte	W18
	.byte		N17	, Ds1, v100
	.byte	W18
	.byte		N06	, Gs1, v104
	.byte	W12
	.byte		N07	, Cs1, v096
	.byte	W18
	.byte		N17	, Cs1, v100
	.byte	W18
	.byte		N06	, Gs1
	.byte	W12
	.byte		N08	, Cs1, v108
	.byte	W18
	.byte		N17	, Gs1, v100
	.byte	W18
	.byte		N06	, Ds2, v104
	.byte	W12
	.byte		N07	, Cs2, v096
	.byte	W18
	.byte		N17	, Cs2, v100
	.byte	W18
	.byte		N06	, Gs1
	.byte	W12
	.byte		N08	, Cs2, v108
	.byte	W18
	.byte		N17	, Gs1, v100
	.byte	W18
	.byte		N06	, Cs1, v104
	.byte	W12
	.byte		N07	, Cs1, v096
	.byte	W18
	.byte		N17	, Cs1, v100
	.byte	W18
	.byte		N06	, Gs1
	.byte	W12
	.byte		N08	, Cs1, v108
	.byte	W18
	.byte		N17	, Gs1, v100
	.byte	W18
	.byte		N06	, Cs1, v104
	.byte	W12
	.byte		N07	, Fs1, v096
	.byte	W18
	.byte		N17	, Fs1, v100
	.byte	W18
	.byte		N06	, Cs1
	.byte	W12
	.byte		N08	, Fs1, v108
	.byte	W18
	.byte		N17	, Cs1, v100
	.byte	W18
	.byte		N06	, Fs1, v104
	.byte	W12
	.byte		N07	, Bn1, v096
	.byte	W18
	.byte		N17	, Bn1, v100
	.byte	W18
	.byte		N06	, Fs1
	.byte	W12
	.byte		N08	, Bn1, v108
	.byte	W18
	.byte		N11	, Fs1, v100
	.byte	W12
	.byte		N05	, Bn1
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte		N07	, Dn2, v096
	.byte	W18
	.byte		N17	, Dn1, v100
	.byte	W18
	.byte		N06	, An1
	.byte	W12
	.byte		N08	, Gn1, v108
	.byte	W18
	.byte		N17	, Dn1, v100
	.byte	W18
	.byte		N06	, Gn1, v104
	.byte	W12
	.byte	PATT	
		mPtr	song012_2_1
	.byte	GOTO	
		mPtr	song012_2_2
	.byte		N07	, Cn1, v096
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N17	, Gn1, v100
	.byte	W18
	.byte		N06	, Cn2
	.byte	W12
	.byte		N08	, Cn2, v108
	.byte	W18
	.byte		N17	, Gn1, v100
	.byte	W18
	.byte		N06	, Cn1, v104
	.byte	W06
	.byte	FINE

	@********************** Track  3 **********************@

	.global song012_3
song012_3:	@ 0x087A0D97
	.byte	KEYSH	, 0
	.byte	VOICE	, 75
	.byte	VOL	, v060
	.byte	PAN	, c_v
	.byte	BENDR	, 0
	.byte	PRIO	, 30
	.byte	W96
song012_3_11:
	.byte	W96
song012_3_1:
	.byte		N17	, En2, v120
	.byte	W18
	.byte			Gn2, v116
	.byte	W18
	.byte		N48	, Dn3
	.byte	W60
	.byte	PEND
song012_3_2:
	.byte		N17	, Dn3, v120
	.byte	W18
	.byte			Cn3, v104
	.byte	W18
	.byte		N52	, Gn2, v108
	.byte	W60
	.byte	PEND
song012_3_3:
	.byte		N17	, En2, v112
	.byte	W18
	.byte			Gn2
	.byte	W18
	.byte		N48	, Dn3
	.byte	W60
	.byte	PEND
song012_3_4:
	.byte		N17	, Dn3, v120
	.byte	W18
	.byte		N07	, Cn3, v112
	.byte	W18
	.byte		N36	, Gn2
	.byte	W48
	.byte		N05	, Gn2, v108
	.byte	W06
	.byte			Gs2, v112
	.byte	W06
	.byte	PEND
song012_3_5:
	.byte		N11	, An2, v120
	.byte	W12
	.byte		N05	, Cn3, v108
	.byte	W12
	.byte		N11	, Dn3, v120
	.byte	W12
	.byte		N04	, Cn3, v104
	.byte	W12
	.byte		N02	, Dn3, v108
	.byte	W02
	.byte		N12	, Ds3, v100
	.byte	W16
	.byte		N16	, Dn3, v112
	.byte	W18
	.byte		N42	, Cn3, v100
	.byte	W12
	.byte	PEND
song012_3_6:
	.byte	W44
	.byte	W03
	.byte		N02	, Dn3, v108
	.byte	W03
	.byte		N05	, Ds3, v076
	.byte	W05
	.byte		N04	, Dn3, v084
	.byte	W05
	.byte		N02	, Cn3, v068
	.byte	W04
	.byte		N09	, Dn3, v104
	.byte	W14
	.byte		N05	, An2, v084
	.byte	W06
	.byte			Cn3, v104
	.byte	W06
	.byte			Dn3, v100
	.byte	W06
	.byte	PEND
song012_3_7:
	.byte		N60	, En3, v108
	.byte	W66
	.byte		N05	, Dn3, v084
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			En3, v104
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			An3, v112
	.byte	W06
	.byte	PEND
song012_3_8:
	.byte		N32	, As3, v124
	.byte	W36
	.byte		N08	, An3, v100
	.byte	W12
	.byte		N10	, Gs3, v104
	.byte	W12
	.byte		N20	, An3, v100
	.byte	W24
	.byte		N08	, En3, v084
	.byte	W12
	.byte	PEND
song012_3_9:
	.byte		N17	, Gn3, v120
	.byte	W18
	.byte		N05	, Fn3, v096
	.byte	W12
	.byte			En3, v076
	.byte	W06
	.byte		N06	, Fn3, v100
	.byte	W12
	.byte		N48	, An2, v096
	.byte	W48
	.byte	PEND
song012_3_10:
	.byte	W42
	.byte		N05	, Gn2, v064
	.byte	W06
	.byte		N08	, En3, v108
	.byte	W12
	.byte		N05	, Gn2, v096
	.byte	W12
	.byte			An2
	.byte	W06
	.byte		N07	, Cn3
	.byte	W12
	.byte		N96	, Cn3, v088
	.byte	W06
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song012_3_1
	.byte	PATT	
		mPtr	song012_3_2
	.byte	PATT	
		mPtr	song012_3_3
	.byte	PATT	
		mPtr	song012_3_4
	.byte	PATT	
		mPtr	song012_3_5
	.byte	PATT	
		mPtr	song012_3_6
	.byte	PATT	
		mPtr	song012_3_7
	.byte	PATT	
		mPtr	song012_3_8
	.byte	PATT	
		mPtr	song012_3_9
	.byte	PATT	
		mPtr	song012_3_10
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
		mPtr	song012_3_11
	.byte	FINE

	@********************** Track  4 **********************@

	.global song012_4
song012_4:	@ 0x087A0EB5
	.byte	KEYSH	, 0
	.byte	VOICE	, 80
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v069
	.byte	LFOS	, 10
	.byte	LFODL	, 0
	.byte	BENDR	, 2
	.byte	W96
song012_4_1:
	.byte	W06
	.byte		N06	, Cn3, v124
	.byte	W12
	.byte		N18	
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte			Dn3
	.byte	W18
	.byte		N18	
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte	W96
	.byte	PATT	
		mPtr	song012_4_1
	.byte	W96
song012_4_3:
	.byte		N17	, Ds3, v124
	.byte	W18
	.byte		N06	
	.byte	W18
	.byte		N23	, Dn3
	.byte	W24
	.byte		N01	
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N24	, Cs3
	.byte	W24
	.byte	PEND
song012_4_2:
	.byte		N06	, Cn3, v120
	.byte	W18
	.byte		N18	
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N18	
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte	W96
	.byte	W96
song012_4_4:
	.byte	W06
	.byte		N06	, En3, v124
	.byte	W12
	.byte		N18	
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W18
	.byte		N18	
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song012_4_2
	.byte		N12	, Dn3, v120
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song012_4_1
	.byte	W96
	.byte	PATT	
		mPtr	song012_4_1
	.byte	W96
	.byte	PATT	
		mPtr	song012_4_1
	.byte	W96
	.byte	PATT	
		mPtr	song012_4_3
	.byte	PATT	
		mPtr	song012_4_2
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song012_4_4
	.byte	PATT	
		mPtr	song012_4_2
	.byte		N12	, Dn3, v120
	.byte	W96
	.byte	W96
	.byte	W06
	.byte		N06	, Cn3, v124
	.byte	W12
	.byte		N18	
	.byte	W18
	.byte		N06	
	.byte	W60
	.byte		N52	, Cs3, v104
	.byte	W54
	.byte		N04	, Cs3, v120
	.byte	W12
	.byte		N15	, Cs3, v116
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte		N68	, Cs3, v120
	.byte	W68
	.byte	W01
	.byte		N03	, Dn3, v096
	.byte	W04
	.byte		N22	, Ds3, v112
	.byte	W23
	.byte	W96
	.byte	W96
	.byte		N52	, Bn2, v104
	.byte	W54
	.byte		N04	, Bn2, v120
	.byte	W12
	.byte		N15	, Bn2, v116
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte		N68	, Bn2, v120
	.byte	W68
	.byte	W01
	.byte		N03	, Cn3, v096
	.byte	W04
	.byte		N24	, Cs3, v112
	.byte	W23
	.byte	W96
	.byte	W48
	.byte		N04	, Cn3, v120
	.byte	W06
	.byte		N04	
	.byte	W12
	.byte		N17	, Dn3
	.byte	W18
	.byte		N04	
	.byte	W12
	.byte	W96
	.byte	GOTO	
		mPtr	song012_4_1
	.byte	W06
	.byte		N06	, Cn3, v124
	.byte	W12
	.byte		N18	
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte			Dn3
	.byte	W18
	.byte		N18	
	.byte	W18
	.byte		N06	
	.byte	W06
	.byte	FINE

	@********************** Track  5 **********************@

	.global song012_5
song012_5:	@ 0x087A0FAE
	.byte	KEYSH	, 0
	.byte	VOICE	, 76
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v060
	.byte	LFOS	, 10
	.byte	LFODL	, 0
	.byte	BENDR	, 2
	.byte		N06	, Gn3, v120
	.byte	W18
	.byte		N18	
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte			Fn3
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N18	
	.byte	W18
	.byte		N06	
	.byte	W12
song012_5_4:
	.byte	W96
song012_5_1:
	.byte		N06	, Gn3, v120
	.byte	W18
	.byte		N18	
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte			Fn3
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N18	
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte	W96
song012_5_2:
	.byte		N06	, Gn3, v120
	.byte	W18
	.byte		N18	
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte		N18	
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
song012_5_3:
	.byte		N06	, Gn3, v120
	.byte	W18
	.byte		N18	
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte		N18	, Gn3
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song012_5_1
	.byte	W96
	.byte	PATT	
		mPtr	song012_5_1
	.byte	W96
	.byte	PATT	
		mPtr	song012_5_1
	.byte	W96
	.byte	PATT	
		mPtr	song012_5_2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song012_5_3
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song012_5_1
	.byte	W48
	.byte		N12	, Gn3, v120
	.byte	W48
	.byte	W96
	.byte	W96
	.byte		N48	, Gs3, v116
	.byte	W54
	.byte		N06	, Gs3, v092
	.byte	W12
	.byte		N13	, Gs3, v104
	.byte	W18
	.byte		N04	
	.byte	W12
	.byte		N68	, Gs3, v072
	.byte	W72
	.byte		N23	, Gs3, v104
	.byte	W24
	.byte	W96
	.byte	W96
	.byte		N48	, Fs3, v116
	.byte	W54
	.byte		N06	, Fs3, v092
	.byte	W12
	.byte		N11	, Fs3, v104
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte		N44	, An3
	.byte	W96
	.byte	PATT	
		mPtr	song012_5_1
	.byte	GOTO	
		mPtr	song012_5_4
	.byte	FINE

	@********************** Track  6 **********************@

	.global song012_6
song012_6:	@ 0x087A1078
	.byte	KEYSH	, 0
	.byte	VOICE	, 92
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v060
	.byte	LFOS	, 10
	.byte	LFODL	, 0
	.byte	BENDR	, 2
	.byte	W96
song012_6_2:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song012_6_1:
	.byte	W06
	.byte		N06	, Cn3, v124
	.byte	W12
	.byte		N18	
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W18
	.byte		N18	
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte	PEND
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
		mPtr	song012_6_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N24	, Bn2, v112
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
	.byte	GOTO	
		mPtr	song012_6_2
	.byte	FINE

	@********************** Track  7 **********************@

	.global song012_7
song012_7:	@ 0x087A10CA
	.byte	KEYSH	, 0
	.byte	VOICE	, 77
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v060
	.byte	LFOS	, 10
	.byte	LFODL	, 0
	.byte	BENDR	, 2
	.byte	W96
song012_7_1:
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
	.byte	W06
	.byte		N05	, Gn4, v088
	.byte		N04	, En5
	.byte	W12
	.byte		N05	, Gn4, v068
	.byte		N05	, En5, v092
	.byte	W06
	.byte		N16	, Cn5, v088
	.byte		N15	, Gn5, v076
	.byte	W24
	.byte		N05	, As4, v108
	.byte		N05	, Fn5, v084
	.byte	W12
	.byte			As4, v068
	.byte		N05	, Fn5, v064
	.byte	W06
	.byte		N16	, Fn4
	.byte		N14	, Dn5, v088
	.byte	W30
	.byte	W06
	.byte		N03	, Fn4, v080
	.byte		N04	, Cn5, v092
	.byte	W12
	.byte		N05	, Fn4
	.byte		N05	, Cn5, v084
	.byte	W06
	.byte		N07	, An4
	.byte		N18	, Fn5, v076
	.byte	W12
	.byte		N07	, An4
	.byte	W12
	.byte		N05	, Gn4, v092
	.byte		N06	, Dn5, v096
	.byte	W12
	.byte		N05	, Gn4, v060
	.byte		N05	, Dn5, v056
	.byte	W06
	.byte		N06	, Dn4, v076
	.byte		N06	, Bn4, v068
	.byte	W12
	.byte		N05	, Dn4
	.byte		N05	, Bn4, v072
	.byte	W06
	.byte		N06	, En4, v068
	.byte		N08	, Cn5, v072
	.byte	W12
	.byte	W72
	.byte		N23	, Gn3, v120
	.byte	W24
	.byte		N52	, Gn4, v104
	.byte	W72
	.byte		N20	, Gn4, v112
	.byte	W24
	.byte		N48	, Gn5, v116
	.byte	W72
	.byte		N21	, Gn4, v112
	.byte	W24
	.byte		N17	, Dn5, v108
	.byte	W18
	.byte		N04	, Cn5, v112
	.byte	W18
	.byte		N36	, Gn4, v116
	.byte	W60
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W78
	.byte		N05	, Fn4, v088
	.byte		N05	, An4
	.byte	W06
	.byte		N04	, An4, v104
	.byte		N04	, Cn5
	.byte	W12
	.byte		N05	, Bn4, v116
	.byte		N05	, Dn5
	.byte	W96
	.byte	W06
	.byte			Gn3
	.byte		N05	, En4
	.byte	W12
	.byte			Gn3, v104
	.byte		N05	, En4
	.byte	W06
	.byte		N07	, Cn4, v120
	.byte		N07	, Gn4
	.byte	W12
	.byte		N06	, Cn4, v096
	.byte		N06	, Gn4
	.byte	W12
	.byte			As3
	.byte		N06	, Fn4
	.byte	W12
	.byte		N05	, As3, v088
	.byte		N05	, Fn4
	.byte	W06
	.byte			An3, v100
	.byte		N05	, Dn4
	.byte	W30
	.byte	W06
	.byte		N04	, Fn3
	.byte		N04	, Cn4
	.byte	W12
	.byte			Fn3, v092
	.byte		N04	, Cn4
	.byte	W06
	.byte		N06	, An3, v116
	.byte		N06	, Fn4
	.byte	W12
	.byte			An3, v096
	.byte		N06	, Fn4
	.byte	W12
	.byte			Gn3, v100
	.byte		N06	, En4
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N23	, Fn5, v108
	.byte	W24
	.byte			Gs4, v124
	.byte	W24
	.byte			Cs5, v100
	.byte	W24
	.byte			Fn4, v080
	.byte	W24
	.byte		N32	, Cs4
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N23	, Fs5, v104
	.byte	W24
	.byte			An5, v108
	.byte	W24
	.byte			Dn5, v084
	.byte	W24
	.byte			Bn4, v092
	.byte	W24
	.byte			Gn5, v124
	.byte	W24
	.byte		N24	, En4, v112
	.byte		N24	, Cn5
	.byte	W96
	.byte	GOTO	
		mPtr	song012_7_1
	.byte	FINE

	@********************** Track  8 **********************@

	.global song012_8
song012_8:	@ 0x087A11F2
	.byte	KEYSH	, 0
	.byte	VOICE	, 41
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 39
	.byte	VOL	, v060
	.byte	LFOS	, 18
	.byte	LFODL	, 0
	.byte	MODT	, 1
	.byte	W96
song012_8_1:
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
	.byte	W02
	.byte		N54	, As5, v127
	.byte	W56
	.byte	W03
	.byte		N12	, As4, v116
	.byte	W12
	.byte		N11	, Ds5, v108
	.byte	W12
	.byte			Fs5
	.byte	W11
	.byte	W01
	.byte		N21	, As5, v116
	.byte	W24
	.byte		N13	, As5, v120
	.byte	W14
	.byte		N22	, Cs6
	.byte	W24
	.byte		N18	, Cn6
	.byte	W19
	.byte		N03	, Cs6, v072
	.byte	W04
	.byte		N05	, Dn6, v080
	.byte	W05
	.byte			Ds6, v084
	.byte	W05
	.byte	W01
	.byte		N32	, Cn6, v108
	.byte	W36
	.byte	W01
	.byte		N05	, As5, v104
	.byte	W06
	.byte			Cn6, v100
	.byte	W06
	.byte		N32	, Gs5, v112
	.byte	W32
	.byte	W02
	.byte		N06	, Fs5, v088
	.byte	W06
	.byte		N05	, Gs5, v080
	.byte	W06
	.byte		N36	, Fn5, v084
	.byte	W36
	.byte	W01
	.byte		N05	, Ds5, v072
	.byte	W06
	.byte			Fn5, v044
	.byte	W06
	.byte		N22	, Cs5, v072
	.byte	W24
	.byte	W01
	.byte		N04	, Fn4, v040
	.byte	W22
	.byte		N52	, En5, v112
	.byte	W60
	.byte	W02
	.byte		N11	, Gs4, v108
	.byte	W11
	.byte		N13	, Bn4, v084
	.byte	W13
	.byte		N12	, En5, v080
	.byte	W10
	.byte	W03
	.byte		N20	, Gs5, v116
	.byte	W20
	.byte		N14	, Gs5, v112
	.byte	W15
	.byte		N24	, Bn5, v096
	.byte	W24
	.byte	W01
	.byte		N23	, As5, v112
	.byte	W23
	.byte		N05	, Bn5, v068
	.byte	W05
	.byte			Cs6, v092
	.byte	W05
	.byte	W01
	.byte		N32	, As5, v124
	.byte	W36
	.byte		N05	, Gs5, v064
	.byte	W06
	.byte			As5, v096
	.byte	W05
	.byte		N28	, Fs5, v080
	.byte	W48
	.byte	W18
	.byte		N05	, Fn5, v048
	.byte	W06
	.byte		N04	, Fs5, v064
	.byte	W06
	.byte		N05	, An5, v080
	.byte	W06
	.byte		N04	, Cn6, v096
	.byte	W06
	.byte		N05	, En6, v112
	.byte	W06
	.byte		N17	, Dn6, v124
	.byte	W18
	.byte		N05	, Bn5, v076
	.byte	W06
	.byte		N02	, Gn5
	.byte	W06
	.byte			Dn5, v072
	.byte	W06
	.byte		N04	, Bn4, v052
	.byte	W06
	.byte		N02	, Gn4, v068
	.byte	W06
	.byte	W96
	.byte	GOTO	
		mPtr	song012_8_1
	.byte	FINE

	mAlignWord
	.global song012
song012:	@ 0x087A12E8
	.byte	8		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

mAlignWord
	mPtr	voicegroup000		@ voicegroup/tone

	mPtr	song012_1		@ track
	mPtr	song012_2		@ track
	mPtr	song012_3		@ track
	mPtr	song012_4		@ track
	mPtr	song012_5		@ track
	mPtr	song012_6		@ track
	mPtr	song012_7		@ track
	mPtr	song012_8		@ track
