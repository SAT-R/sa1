	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song052_1
song052_1:	@ 0x087BB018
	.byte	KEYSH	, 0
	.byte	TEMPO	, 62
	.byte	VOICE	, 123
	.byte	VOL	, v105
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte		N15	, Cs2, v127
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte		N06	, Cs2
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte		N05	, Gn2
	.byte	W06
	.byte		N06	, Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte		N15	, Cs2
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte		N06	, Cs2
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte		N05	, Gs2
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte			Gs1
	.byte	W12
song052_1_1:
	.byte		N15	, Cs2, v127
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte		N06	, Cs2
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte		N05	, Gn2
	.byte	W06
	.byte		N06	, Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte	PEND
song052_1_5:
	.byte	PATT	
		mPtr	song052_1_1
	.byte	PATT	
		mPtr	song052_1_1
song052_1_2:
	.byte		N15	, Cs2, v127
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte		N04	, Cs2
	.byte	W12
	.byte		N06	, Fs2
	.byte	W12
	.byte		N05	, Gn2
	.byte	W12
	.byte		N04	, Gs2
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N05	, Cs2
	.byte	W12
	.byte	PEND
	.byte		N09	, Fs2
	.byte	W18
	.byte		N24	
	.byte	W30
	.byte		N09	, Gs2
	.byte	W18
	.byte		N23	
	.byte	W30
	.byte		N17	, An1
	.byte	W18
	.byte			En2
	.byte	W18
	.byte		N11	, An2
	.byte	W12
	.byte		N17	, Bn1
	.byte	W18
	.byte			Fs2
	.byte	W18
	.byte		N09	, Bn1
	.byte	W12
	.byte	PATT	
		mPtr	song052_1_1
	.byte	PATT	
		mPtr	song052_1_1
	.byte	PATT	
		mPtr	song052_1_1
	.byte	PATT	
		mPtr	song052_1_2
	.byte		N14	, Fs2, v127
	.byte	W18
	.byte		N16	
	.byte	W18
	.byte		N11	, Cs2
	.byte	W12
	.byte		N15	, Gs2
	.byte	W18
	.byte		N15	
	.byte	W18
	.byte		N11	, Ds2
	.byte	W12
	.byte		N17	, An2
	.byte	W18
	.byte		N09	, En2
	.byte	W18
	.byte		N07	, An1
	.byte	W12
	.byte		N17	, Bn1
	.byte	W18
	.byte		N16	, Fs2
	.byte	W18
	.byte		N11	, Bn2
	.byte	W12
song052_1_3:
	.byte		N14	, En2, v127
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte		N06	, En2
	.byte	W12
	.byte		N07	, An2
	.byte	W12
	.byte		N06	, En2
	.byte	W12
	.byte		N04	, As2
	.byte	W06
	.byte		N08	, Bn2
	.byte	W12
	.byte		N07	, Bn1
	.byte	W12
	.byte	PEND
song052_1_4:
	.byte		N13	, En2, v127
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte		N06	, En2
	.byte	W12
	.byte		N08	, An2
	.byte	W12
	.byte		N07	, En2
	.byte	W12
	.byte		N04	, Bn2
	.byte	W06
	.byte		N07	
	.byte	W12
	.byte		N06	, En2
	.byte	W12
	.byte	PEND
	.byte		N15	, Bn1
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Bn1
	.byte	W12
	.byte		N06	, En2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte		N04	, Fn2
	.byte	W06
	.byte		N11	, Fs2
	.byte	W12
	.byte		N07	, Fs1
	.byte	W12
	.byte		N14	, Bn1
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N06	, Bn1
	.byte	W12
	.byte			En2
	.byte	W12
	.byte		N07	, Fn2
	.byte	W12
	.byte		N04	, Fs2
	.byte	W06
	.byte		N09	
	.byte	W12
	.byte		N06	, Bn1
	.byte	W12
	.byte	PATT	
		mPtr	song052_1_3
	.byte	PATT	
		mPtr	song052_1_4
	.byte		N14	, Fs2, v127
	.byte	W18
	.byte		N04	
	.byte	W06
	.byte		N05	, As2
	.byte	W06
	.byte			Fs2
	.byte	W12
	.byte		N04	, Bn2
	.byte	W12
	.byte		N06	, Fs2
	.byte	W12
	.byte		N05	, Cn3
	.byte	W06
	.byte		N06	, Cs3
	.byte	W12
	.byte		N05	, En3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte		N04	, Fs3
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Gn3
	.byte	W12
	.byte			Gs3
	.byte	W24
	.byte		N18	, Gs2
	.byte	W24
	.byte	PATT	
		mPtr	song052_1_1
	.byte	GOTO	
		mPtr	song052_1_5
	.byte	FINE

	@********************** Track  2 **********************@

	.global song052_2
song052_2:	@ 0x087BB181
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v105
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte		N12	, Cn1, v127
	.byte		N05	, Dn1, v028
	.byte	W06
	.byte		N01	, Dn1, v044
	.byte	W06
	.byte		N06	, Dn1, v056
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N12	, Cs1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte		N12	, Cn1, v127
	.byte		N06	, Dn1, v044
	.byte	W06
	.byte			Dn1, v028
	.byte	W06
	.byte		N12	, Cn1, v127
	.byte		N06	, Dn1, v044
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N12	, Cs1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N12	, Cn1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N12	, Cs1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte		N12	, Cn1, v127
	.byte		N06	, Dn1, v044
	.byte	W06
	.byte			Dn1, v028
	.byte	W06
	.byte		N12	, Cn1, v127
	.byte		N06	, Dn1, v044
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N12	, Cs1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte			Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W06
	.byte			Cs1, v127
	.byte		N06	, Dn1, v044
	.byte	W06
song052_2_1:
	.byte		N12	, Cn1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N12	, Cs1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte		N12	, Cn1, v127
	.byte		N06	, Dn1, v044
	.byte	W06
	.byte			Dn1, v028
	.byte	W06
	.byte		N12	, Cn1, v127
	.byte		N06	, Dn1, v044
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N12	, Cs1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte	PEND
song052_2_3:
	.byte	PATT	
		mPtr	song052_2_1
	.byte	PATT	
		mPtr	song052_2_1
	.byte		N12	, Cn1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N12	, Cs1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte		N12	, Cn1, v127
	.byte		N06	, Dn1, v044
	.byte	W06
	.byte			Dn1, v028
	.byte	W06
	.byte		N12	, Cn1, v127
	.byte		N06	, Dn1, v044
	.byte	W06
	.byte			Dn1, v056
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte			Cs1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Cs1, v127
	.byte		N06	, Dn1, v044
	.byte	W06
	.byte			Cn1, v127
	.byte		N06	, Dn1, v056
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N12	, Cn1, v127
	.byte		N12	, Ds1, v068
	.byte	W12
	.byte		N06	, Dn1, v056
	.byte	W06
	.byte		N12	, Cn1, v127
	.byte		N12	, Ds1, v068
	.byte	W18
	.byte			Cs1, v127
	.byte	W12
	.byte			Cn1
	.byte		N12	, En1, v068
	.byte	W12
	.byte		N06	, Dn1, v056
	.byte	W06
	.byte		N12	, Cn1, v127
	.byte		N12	, En1, v068
	.byte	W12
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N12	, Cn1
	.byte		N23	, Ds1, v060
	.byte	W24
	.byte		N12	, Cs1, v127
	.byte		N23	, Ds1, v068
	.byte	W24
	.byte		N12	, Cn1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Ds1, v044
	.byte	W06
	.byte		N11	, En1, v052
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Cs1, v127
	.byte		N06	, Ds1, v044
	.byte	W06
	.byte			Cn1, v127
	.byte		N11	, En1, v068
	.byte	W12
	.byte	PATT	
		mPtr	song052_2_1
	.byte	PATT	
		mPtr	song052_2_1
	.byte	PATT	
		mPtr	song052_2_1
	.byte	PATT	
		mPtr	song052_2_1
	.byte		N12	, Cn1, v127
	.byte		N12	, En1, v068
	.byte	W12
	.byte		N05	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W06
	.byte		N12	, Cn1, v127
	.byte		N12	, En1, v068
	.byte	W12
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte			Cn1
	.byte	W12
	.byte		N12	
	.byte		N12	, En1, v068
	.byte	W12
	.byte		N06	, Dn1, v056
	.byte	W06
	.byte		N12	, Cn1, v127
	.byte		N12	, En1, v068
	.byte	W12
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N12	, Cn1
	.byte		N12	, En1, v068
	.byte	W12
	.byte		N05	, Cs1, v127
	.byte		N06	, Dn1, v056
	.byte	W06
	.byte		N12	, Cn1, v127
	.byte		N12	, En1, v068
	.byte	W12
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte			Cn1
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N11	, Cs1
	.byte	W12
	.byte		N12	
	.byte	W06
	.byte		N06	, Dn1, v056
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte		N06	, Ds1, v056
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte		N12	, En1, v052
	.byte	W06
	.byte		N05	, Cn1, v127
	.byte	W06
song052_2_2:
	.byte		N12	, Cn1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N12	, En1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N12	, En1, v056
	.byte	W06
	.byte			Cn1, v127
	.byte	W06
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte		N12	, Cn1, v127
	.byte		N06	, Dn1, v044
	.byte	W06
	.byte		N12	, En1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N12	, En1, v056
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song052_2_2
	.byte	PATT	
		mPtr	song052_2_2
	.byte		N12	, Cn1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N12	, En1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N12	, En1, v056
	.byte	W06
	.byte			Cn1, v127
	.byte	W06
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte		N12	, Cn1, v127
	.byte		N06	, Dn1, v044
	.byte	W06
	.byte		N12	, En1, v056
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Cn1, v127
	.byte		N06	, Dn1, v044
	.byte	W06
	.byte			Cs1, v127
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N12	, Cn1
	.byte		N24	, En1, v072
	.byte	W24
	.byte		N12	, Cs1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N12	, En1, v056
	.byte	W06
	.byte			Cn1, v127
	.byte	W06
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte		N12	, Cn1, v127
	.byte		N06	, Dn1, v044
	.byte	W06
	.byte		N12	, En1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N12	, En1, v056
	.byte	W12
	.byte	PATT	
		mPtr	song052_2_2
	.byte		N12	, Cn1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N12	, En1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N12	, En1, v056
	.byte	W06
	.byte			Cn1, v127
	.byte	W06
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte		N12	, Cn1, v127
	.byte		N06	, Dn1, v044
	.byte	W06
	.byte		N12	, En1, v056
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte		N06	, Dn1, v028
	.byte	W06
	.byte			Cs1, v127
	.byte		N06	, Dn1, v044
	.byte	W06
	.byte			Cn1, v127
	.byte		N12	, En1, v056
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Cn1
	.byte	W06
	.byte		N06	
	.byte		N12	, En1, v056
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte			Cn1
	.byte		N24	, En1, v072
	.byte	W24
	.byte	PATT	
		mPtr	song052_2_1
	.byte	GOTO	
		mPtr	song052_2_3
	.byte	FINE

	@********************** Track  3 **********************@

	.global song052_3
song052_3:	@ 0x087BB4A9
	.byte	KEYSH	, 0
	.byte	VOICE	, 87
	.byte	VOL	, v070
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 56
	.byte	LFODL	, 0
	.byte	MOD	, 34
	.byte	MODT	, 2
	.byte	W96
	.byte	W96
song052_3_1:
	.byte	W24
	.byte		N06	, En3, v100
	.byte		N18	, Gs3, v096
	.byte	W06
	.byte		N12	, Fn3, v080
	.byte	W12
	.byte		N06	, Fn3, v124
	.byte		N06	, Gs3, v112
	.byte	W18
	.byte			Fn3, v108
	.byte		N06	, Gs3, v112
	.byte	W24
	.byte			Gs2, v096
	.byte	W12
	.byte	PEND
song052_3_2:
	.byte	W24
	.byte		N06	, En3, v100
	.byte		N18	, Gs3, v096
	.byte	W06
	.byte		N12	, Fn3, v080
	.byte	W12
	.byte		N06	, Fn3, v124
	.byte		N06	, Gs3, v112
	.byte	W18
	.byte			Cn3
	.byte		N06	, En3
	.byte	W06
	.byte			Cs3, v096
	.byte		N06	, Fn3
	.byte	W06
	.byte			Cs3, v092
	.byte		N06	, Fn3
	.byte	W06
	.byte			Cs3, v124
	.byte		N06	, Fn3
	.byte	W18
	.byte	PEND
	.byte	PATT	
		mPtr	song052_3_1
	.byte	PATT	
		mPtr	song052_3_2
song052_3_3:
	.byte		N06	, Cs3, v124
	.byte		N06	, Fs3
	.byte	W18
	.byte		N24	, Cs3
	.byte		N24	, Fs3
	.byte	W30
	.byte		N06	, Ds3, v120
	.byte		N06	, Gs3
	.byte	W18
	.byte		N30	, Ds3
	.byte		N30	, Gs3
	.byte	W30
	.byte	PEND
song052_3_4:
	.byte		N18	, En3, v120
	.byte		N18	, An3
	.byte	W18
	.byte			Cs3, v108
	.byte		N18	, En3
	.byte	W18
	.byte		N12	, En3, v112
	.byte		N12	, An3
	.byte	W12
	.byte		N18	, Fs3, v124
	.byte		N18	, Bn3
	.byte	W18
	.byte			Ds3, v108
	.byte		N18	, Fs3
	.byte	W18
	.byte		N12	, Fs3, v120
	.byte		N12	, Bn3
	.byte	W12
	.byte	PEND
	.byte		N09	, Fn3
	.byte		N09	, Cs4
	.byte	W10
	.byte		N02	, Cn4, v088
	.byte	W01
	.byte			As3, v092
	.byte	W02
	.byte		N01	, Gs3, v088
	.byte	W02
	.byte		N02	, Fs3, v080
	.byte	W09
	.byte		N06	, En3, v100
	.byte		N18	, Gs3, v096
	.byte	W06
	.byte		N12	, Fn3, v080
	.byte	W12
	.byte		N06	, Fn3, v124
	.byte		N06	, Gs3, v112
	.byte	W18
	.byte			Fn3, v108
	.byte		N06	, Gs3, v112
	.byte	W24
	.byte			Gs2, v096
	.byte	W12
	.byte	PATT	
		mPtr	song052_3_2
	.byte	PATT	
		mPtr	song052_3_1
	.byte	PATT	
		mPtr	song052_3_2
	.byte	PATT	
		mPtr	song052_3_3
	.byte	PATT	
		mPtr	song052_3_4
	.byte		N54	, Gs3, v108
	.byte		N54	, Bn3, v104
	.byte	W60
	.byte		N06	, Fs3, v088
	.byte		N06	, An3, v112
	.byte	W12
	.byte			Fs3, v076
	.byte		N06	, An3, v112
	.byte	W06
	.byte		N12	, Gs3, v108
	.byte		N12	, Bn3, v104
	.byte	W12
	.byte		N06	, Fs3, v092
	.byte		N06	, An3, v112
	.byte	W06
	.byte		N48	, En3, v108
	.byte		N48	, Gs3, v104
	.byte	W54
	.byte		N06	, En3, v108
	.byte		N06	, Gs3, v096
	.byte	W12
	.byte			En3, v088
	.byte		N06	, Gs3, v072
	.byte	W06
	.byte			Ds3, v096
	.byte		N06	, Fs3, v088
	.byte	W12
	.byte			Cs3, v076
	.byte		N06	, En3
	.byte	W12
	.byte		N54	, Bn2, v108
	.byte		N52	, Ds3, v092
	.byte	W54
	.byte		N06	, Ds3, v116
	.byte		N06	, Fs3, v108
	.byte	W12
	.byte			Ds3
	.byte		N06	, Fs3, v092
	.byte	W06
	.byte			Cs3, v096
	.byte		N06	, En3, v108
	.byte	W12
	.byte			Cs3, v092
	.byte		N06	, En3, v108
	.byte	W12
	.byte			Bn2, v100
	.byte		N06	, Ds3, v104
	.byte	W12
	.byte			Bn2, v080
	.byte		N06	, Ds3, v076
	.byte	W06
	.byte			Cs3, v104
	.byte		N06	, En3, v116
	.byte	W12
	.byte			Cs3, v092
	.byte		N06	, En3, v104
	.byte	W12
	.byte			Ds3, v124
	.byte		N06	, Fs3, v112
	.byte	W12
	.byte			Ds3, v104
	.byte		N06	, Fs3, v092
	.byte	W12
	.byte			Bn2, v100
	.byte		N06	, Ds3, v076
	.byte	W06
	.byte			Cs3, v084
	.byte		N06	, En3, v108
	.byte	W12
	.byte			Ds3, v112
	.byte		N06	, Fs3, v100
	.byte	W12
	.byte		N54	, En3, v108
	.byte		N48	, Gs3, v120
	.byte	W54
	.byte		N06	, Fs3, v084
	.byte		N06	, An3, v108
	.byte	W12
	.byte			Fs3, v068
	.byte		N06	, An3, v104
	.byte	W06
	.byte			Gs3, v100
	.byte		N06	, Bn3, v112
	.byte	W12
	.byte			Fs3, v084
	.byte		N06	, An3, v108
	.byte	W12
	.byte		N48	, En3, v068
	.byte		N48	, Gs3, v116
	.byte	W48
	.byte		N18	, Bn2, v100
	.byte		N18	, Gs3
	.byte	W18
	.byte		N06	, Bn2, v116
	.byte		N06	, Gs3
	.byte	W12
	.byte			En3, v124
	.byte		N06	, Gs3
	.byte	W12
	.byte			Fn3, v112
	.byte		N06	, An3
	.byte	W06
	.byte		N24	, Fs3, v092
	.byte		N24	, As3
	.byte	W24
	.byte		N06	, Fs3, v116
	.byte		N06	, As3, v124
	.byte	W06
	.byte			Fs3, v068
	.byte		N06	, As3, v108
	.byte	W12
	.byte		N18	, Fs3
	.byte		N18	, As3, v124
	.byte	W16
	.byte		N01	, Fn3, v052
	.byte	W02
	.byte			Ds3, v072
	.byte	W01
	.byte			Cs3, v084
	.byte	W02
	.byte			Cn3, v100
	.byte	W01
	.byte			As2, v108
	.byte	W01
	.byte			Gs2, v116
	.byte	W01
	.byte			Fs2, v100
	.byte	W02
	.byte			Fn2, v116
	.byte	W01
	.byte			Ds2, v100
	.byte	W01
	.byte			Cs2, v108
	.byte	W01
	.byte			Cn2
	.byte	W02
	.byte		N05	, As1
	.byte	W05
	.byte		N01	, Cn2, v060
	.byte		N01	, Cs2, v072
	.byte	W01
	.byte		N02	, Ds2, v080
	.byte	W01
	.byte			Fn2, v084
	.byte	W01
	.byte			Fs2, v092
	.byte	W01
	.byte			Gs2, v084
	.byte	W02
	.byte			As2, v056
	.byte	W01
	.byte			Cn3
	.byte	W01
	.byte		N01	, Cs3, v072
	.byte	W01
	.byte	BEND	, c_v
	.byte		N02	, Ds3, v108
	.byte	W02
	.byte			Fn3, v100
	.byte	W01
	.byte	BEND	, c_v
	.byte		N05	, Fs3, v116
	.byte	W02
	.byte		N02	, Gs3, v080
	.byte	W04
	.byte		N01	, Fs3, v124
	.byte		N06	, As3
	.byte	W06
	.byte			Fs3, v108
	.byte		N06	, As3
	.byte	W12
	.byte			Fs3, v124
	.byte		N06	, As3
	.byte	W12
	.byte			Fs3
	.byte		N06	, As3
	.byte	W06
	.byte			Gn3
	.byte		N06	, Bn3
	.byte	W12
	.byte			Gs3
	.byte		N06	, Cn4
	.byte	W24
	.byte		N24	, Cn3
	.byte		N24	, Fs3
	.byte	W24
	.byte		N18	, Cs3, v108
	.byte		N18	, Fn3, v124
	.byte	W16
	.byte		N01	, Cn3, v052
	.byte	W02
	.byte			As2, v072
	.byte	W01
	.byte			Gs2, v084
	.byte	W02
	.byte			Gn2, v100
	.byte	W01
	.byte			Fn2, v108
	.byte	W01
	.byte			Ds2, v116
	.byte	W01
	.byte			Cs2, v100
	.byte	W02
	.byte			Cn2, v116
	.byte	W16
	.byte		N06	, Fn3, v124
	.byte		N06	, Gs3, v112
	.byte	W18
	.byte			Fn3, v108
	.byte		N06	, Gs3, v112
	.byte	W36
	.byte	GOTO	
		mPtr	song052_3_2
	.byte	FINE

	@********************** Track  4 **********************@

	.global song052_4
song052_4:	@ 0x087BB721
	.byte	KEYSH	, 0
	.byte	VOICE	, 82
	.byte	VOL	, v082
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 26
	.byte	LFODL	, 22
	.byte	MOD	, 4
	.byte	MODT	, 0
	.byte	PRIO	, 30
	.byte	W96
	.byte	W96
song052_4_1:
	.byte		N06	, Fn3, v120
	.byte	W06
	.byte			Fn3, v127
	.byte	W78
	.byte			Ds3, v112
	.byte	W06
	.byte			En3, v120
	.byte	W06
	.byte	PEND
song052_4_2:
	.byte		N06	, Fn3, v116
	.byte	W18
	.byte			Ds3, v124
	.byte	W18
	.byte		N48	, Cs3, v127
	.byte	W60
	.byte	PEND
	.byte	PATT	
		mPtr	song052_4_1
	.byte	PATT	
		mPtr	song052_4_2
song052_4_3:
	.byte		N06	, As2, v108
	.byte	W06
	.byte			Cn3, v104
	.byte	W06
	.byte			Cs3, v120
	.byte	W06
	.byte		N24	, As2, v116
	.byte	W30
	.byte		N06	, Cn3, v092
	.byte	W06
	.byte			Cs3, v100
	.byte	W06
	.byte			Ds3, v104
	.byte	W06
	.byte		N24	, Cn3, v108
	.byte	W30
	.byte	PEND
	.byte		N18	, Cs3, v127
	.byte	W18
	.byte			An2, v088
	.byte	W18
	.byte		N12	, Cs3, v104
	.byte	W12
	.byte		N18	, Ds3, v108
	.byte	W18
	.byte			Bn2
	.byte	W18
	.byte		N12	, Ds3, v104
	.byte	W12
	.byte	PATT	
		mPtr	song052_4_1
	.byte	PATT	
		mPtr	song052_4_2
	.byte	PATT	
		mPtr	song052_4_1
	.byte	PATT	
		mPtr	song052_4_2
	.byte	PATT	
		mPtr	song052_4_3
	.byte		N18	, Cs3, v127
	.byte	W18
	.byte			An2, v088
	.byte	W18
	.byte		N12	, Cs3, v104
	.byte	W12
	.byte		N18	, Ds3, v116
	.byte	W18
	.byte			Bn2
	.byte	W18
	.byte		N12	, Ds3, v112
	.byte	W12
song052_4_4:
	.byte		N60	, En3, v104
	.byte	W84
	.byte		N06	, Ds3
	.byte	W12
	.byte	PEND
	.byte		N18	, En3, v108
	.byte	W18
	.byte			Ds3, v100
	.byte	W18
	.byte		N12	, Cs3, v104
	.byte	W12
	.byte		N18	, Bn2, v100
	.byte	W18
	.byte		N06	, Cs3, v108
	.byte	W12
	.byte			Ds3, v100
	.byte	W12
	.byte			Cs3, v104
	.byte	W06
	.byte		N12	, Bn2, v100
	.byte	W12
	.byte		N06	, Bn2, v104
	.byte	W06
	.byte			Fs2, v100
	.byte	W12
	.byte			Fs2, v088
	.byte	W06
	.byte		N96	, Ds2, v112
	.byte	W60
	.byte	W84
	.byte		N06	, Dn3, v104
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte	PATT	
		mPtr	song052_4_4
	.byte		N18	, En3, v108
	.byte	W18
	.byte			Ds3, v100
	.byte	W18
	.byte		N12	, Cs3, v104
	.byte	W12
	.byte			Bn2, v100
	.byte	W12
	.byte		N06	, Fs2, v116
	.byte	W06
	.byte			Bn2
	.byte	W12
	.byte			Bn2, v124
	.byte	W12
	.byte			Cn3, v112
	.byte	W06
	.byte		N72	, Cs3, v120
	.byte	W84
	.byte		N06	, Bn2, v112
	.byte	W06
	.byte			Cn3, v120
	.byte	W06
	.byte		N18	, Cs3
	.byte	W18
	.byte		N06	, Cs3, v127
	.byte	W12
	.byte			Cs3, v124
	.byte	W06
	.byte			Dn3, v120
	.byte	W12
	.byte			Ds3, v124
	.byte	W48
	.byte	PATT	
		mPtr	song052_4_1
	.byte	GOTO	
		mPtr	song052_4_2
	.byte	FINE

	@********************** Track  5 **********************@

	.global song052_5
song052_5:	@ 0x087BB83A
	.byte	KEYSH	, 0
	.byte	VOICE	, 12
	.byte	VOL	, v057
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 17
	.byte	LFODL	, 22
	.byte	MOD	, 4
	.byte	MODT	, 0
	.byte	W96
	.byte	W96
song052_5_1:
	.byte		N06	, Gs3, v120
	.byte	W06
	.byte			Gs3, v127
	.byte	W78
	.byte			Fs3, v112
	.byte	W06
	.byte			Gn3, v120
	.byte	W06
	.byte	PEND
song052_5_2:
	.byte		N06	, Gs3, v116
	.byte	W18
	.byte			Fs3, v124
	.byte	W18
	.byte		N48	, Fn3, v127
	.byte	W60
	.byte	PEND
	.byte	PATT	
		mPtr	song052_5_1
	.byte	PATT	
		mPtr	song052_5_2
song052_5_3:
	.byte		N06	, Cs3, v108
	.byte	W06
	.byte			Ds3, v104
	.byte	W06
	.byte			Fn3, v120
	.byte	W06
	.byte		N24	, Cs3, v116
	.byte	W30
	.byte		N06	, Ds3, v092
	.byte	W06
	.byte			Fn3, v100
	.byte	W06
	.byte			Fs3, v104
	.byte	W06
	.byte		N24	, Ds3, v108
	.byte	W30
	.byte	PEND
	.byte		N18	, En3, v127
	.byte	W18
	.byte			Cs3, v088
	.byte	W18
	.byte		N12	, En3, v104
	.byte	W12
	.byte		N18	, Fs3, v108
	.byte	W18
	.byte			Ds3
	.byte	W18
	.byte		N12	, Fs3, v104
	.byte	W12
	.byte	PATT	
		mPtr	song052_5_1
	.byte	PATT	
		mPtr	song052_5_2
	.byte	PATT	
		mPtr	song052_5_1
	.byte	PATT	
		mPtr	song052_5_2
	.byte	PATT	
		mPtr	song052_5_3
	.byte		N18	, En3, v127
	.byte	W18
	.byte			Cs3, v088
	.byte	W18
	.byte		N12	, En3, v104
	.byte	W12
	.byte		N18	, Fs3, v108
	.byte	W18
	.byte			En4, v116
	.byte	W18
	.byte		N12	, Fs4, v104
	.byte	W12
song052_5_4:
	.byte		N60	, Gs4, v104
	.byte	W84
	.byte		N06	, Fs4
	.byte	W12
	.byte	PEND
	.byte		N18	, Gs4, v108
	.byte	W18
	.byte			Fs4, v100
	.byte	W18
	.byte		N12	, En4, v104
	.byte	W12
	.byte		N18	, Ds4, v100
	.byte	W18
	.byte		N06	, En4, v108
	.byte	W12
	.byte			Fs4, v100
	.byte	W12
	.byte			En4, v104
	.byte	W06
	.byte		N12	, Ds4, v100
	.byte	W12
	.byte		N06	, Ds4, v104
	.byte	W06
	.byte			Bn3, v100
	.byte	W12
	.byte			Bn3, v088
	.byte	W06
	.byte		N96	, Fs3, v112
	.byte	W60
	.byte	W84
	.byte		N06	, Fs4, v104
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte	PATT	
		mPtr	song052_5_4
	.byte		N18	, Gs4, v108
	.byte	W18
	.byte			Fs4, v100
	.byte	W18
	.byte		N12	, En4, v104
	.byte	W12
	.byte			Ds4, v100
	.byte	W12
	.byte		N06	, Bn3, v116
	.byte	W06
	.byte			Ds4
	.byte	W12
	.byte			En4, v124
	.byte	W12
	.byte			Fn4, v112
	.byte	W06
	.byte		N72	, Fs4, v120
	.byte	W84
	.byte		N06	, En4, v112
	.byte	W06
	.byte			Fn4, v120
	.byte	W06
	.byte		N18	, Fs4
	.byte	W18
	.byte		N06	, Fs4, v127
	.byte	W12
	.byte			Fs4, v124
	.byte	W06
	.byte			Gn4, v120
	.byte	W12
	.byte			Gs4, v124
	.byte	W48
	.byte	PATT	
		mPtr	song052_5_1
	.byte	GOTO	
		mPtr	song052_5_2
	.byte	FINE

	mAlignWord
	.global song052
song052:	@ 0x087BB954
	.byte	5		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

mAlignWord
	mPtr	voicegroup000		@ voicegroup/tone

	mPtr	song052_1		@ track
	mPtr	song052_2		@ track
	mPtr	song052_3		@ track
	mPtr	song052_4		@ track
	mPtr	song052_5		@ track
