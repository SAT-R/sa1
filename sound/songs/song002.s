	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song002_1
song002_1:	@ 0x0879D438
	.byte	KEYSH	, 0
	.byte	TEMPO	, 65
	.byte	VOICE	, 127
	.byte	VOL	, v115
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte		N06	, Cn1, v127
	.byte		N17	, En1, v060
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte			Cn1
	.byte		N01	, En1, v060
	.byte	W12
	.byte		N06	, Gs1, v127
	.byte	W06
	.byte			Cn1
	.byte		N18	, En1, v060
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Cn1
	.byte		N24	, En1, v060
	.byte	W18
	.byte		N06	, Cn1, v127
	.byte	W06
	.byte		N03	, Cs1
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte		N06	, Cs1, v052
	.byte		N06	, Dn1
	.byte	W06
	.byte			Cs1, v127
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Dn1, v052
	.byte		N06	, An1, v088
	.byte	W06
	.byte			Cs1, v127
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			An1
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte			An1, v127
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte			Fs1, v127
	.byte	W06
	.byte			Cn1
	.byte		N18	, En1, v060
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte			Cn1
	.byte		N12	, En1, v060
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Cn1
	.byte		N24	, En1, v060
	.byte	W12
	.byte		N06	, Cn1, v127
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte			Cs1, v127
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Dn1, v052
	.byte	W06
	.byte			Cs1, v127
	.byte	W06
	.byte			Cn1
	.byte		N18	, En1, v060
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte			Cn1
	.byte		N18	, En1, v060
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Cn1
	.byte		N06	, En1, v076
	.byte	W06
	.byte			Cn1, v127
	.byte		N78	, Cs2
	.byte	W78
	.byte	FINE

	@********************** Track  2 **********************@

	.global song002_2
song002_2:	@ 0x0879D4E9
	.byte	KEYSH	, 0
	.byte	VOICE	, 11
	.byte	VOL	, v054
	.byte	PAN	, c_v
	.byte	BENDR	, 13
	.byte	LFOS	, 18
	.byte	LFODL	, 20
	.byte	MOD	, 3
	.byte	MODT	, 0
	.byte	BEND	, c_v
	.byte		N05	, Cn3, v127
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte		N17	, Ds3
	.byte	W18
	.byte		N05	, Fn3
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte		N68	
	.byte	W42
	.byte	W36
	.byte		N05	
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte		N15	, Ds4
	.byte	W18
	.byte		N14	, Gn3
	.byte	W18
	.byte		N05	, Gs3
	.byte	W06
	.byte	W12
	.byte		N40	, An3
	.byte	W42
	.byte		N05	, As3
	.byte	W06
	.byte			Bn3
	.byte	W11
	.byte	BEND	, c_v-60
	.byte	W01
	.byte		N40	, Cn4
	.byte	W13
	.byte	BEND	, c_v-60
	.byte	W01
	.byte		c_v-55
	.byte	W01
	.byte		c_v-44
	.byte	W01
	.byte		c_v-39
	.byte	W01
	.byte		c_v-33
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-17
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v
	.byte	W03
	.byte	W07
	.byte		c_v
	.byte	W01
	.byte		c_v+10
	.byte	W01
	.byte		c_v+20
	.byte	W01
	.byte		c_v+40
	.byte	W01
	.byte		c_v+51
	.byte	W01
	.byte		c_v+60
	.byte	W06
	.byte		N11	
	.byte	W11
	.byte	FINE

	@********************** Track  3 **********************@

	.global song002_3
song002_3:	@ 0x0879D553
	.byte	KEYSH	, 0
	.byte	VOICE	, 74
	.byte	VOL	, v081
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 56
	.byte	LFODL	, 0
	.byte	MOD	, 2
	.byte	MODT	, 2
	.byte		N05	, Cn2, v127
	.byte		N05	, Gs2
	.byte		N05	, Ds3
	.byte	W06
	.byte			Gs1
	.byte		N05	, Ds2
	.byte		N05	, Cn3
	.byte	W06
	.byte			Cn2
	.byte		N05	, Gs2
	.byte		N05	, Ds3
	.byte	W06
	.byte		N17	, Ds2
	.byte		N17	, Gs2
	.byte		N17	, Fn3
	.byte	W18
	.byte		N05	, Fn2
	.byte		N05	, Cs3
	.byte		N05	, Gs3
	.byte	W06
	.byte			Cs2
	.byte		N05	, Gs2
	.byte		N05	, Fn3
	.byte	W06
	.byte			Fn2
	.byte		N05	, Cs3
	.byte		N05	, Gs3
	.byte	W06
	.byte		N68	, Fn2
	.byte		N68	, Cs3
	.byte		N68	, As3
	.byte	W06
	.byte	VOL	, v079
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v073
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v062
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v055
	.byte	W01
	.byte		v052
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v045
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v039
	.byte	W01
	.byte		v040
	.byte	W01
	.byte		v041
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v044
	.byte	W01
	.byte		v045
	.byte	W01
	.byte		v046
	.byte	W01
	.byte		v047
	.byte	W01
	.byte		v047
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v049
	.byte	W01
	.byte		v050
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v052
	.byte	W01
	.byte		v053
	.byte	W01
	.byte		v054
	.byte	W01
	.byte		v055
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v062
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v069
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v073
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v080
	.byte	W01
	.byte		v081
	.byte	W12
	.byte		N05	, Fn2
	.byte		N05	, Fn3
	.byte	W06
	.byte			Gn2
	.byte		N05	, Gn3
	.byte	W06
	.byte			As2
	.byte		N05	, As3
	.byte	W06
	.byte		N15	, Ds3
	.byte		N15	, Ds4
	.byte	W18
	.byte		N14	, Gn2
	.byte		N14	, Ds3
	.byte		N14	, Cn4
	.byte	W18
	.byte		N05	, Gs2
	.byte		N05	, En3
	.byte		N05	, Cn4
	.byte	W06
	.byte	W12
	.byte		N40	, An2
	.byte		N40	, Ds3
	.byte		N40	, Cn4
	.byte	W01
	.byte	VOL	, v080
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v073
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v053
	.byte	W02
	.byte		v054
	.byte	W01
	.byte		v055
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v062
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v069
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v073
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v081
	.byte		N05	, As2
	.byte		N05	, As3
	.byte	W06
	.byte			Bn2
	.byte		N05	, Bn3
	.byte	W12
	.byte		N17	, Cn3
	.byte		N17	, Cn4
	.byte	W18
	.byte			Cn3
	.byte		N17	, Cn4
	.byte	W06
	.byte	W12
	.byte		N05	, Cn3
	.byte		N05	, Cn4
	.byte	W06
	.byte		N11	, Cn3
	.byte		N11	, Cn4
	.byte	W11
	.byte	FINE

	@********************** Track  4 **********************@

	.global song002_4
song002_4:	@ 0x0879D6AD
	.byte	KEYSH	, 0
	.byte	VOICE	, 80
	.byte	VOL	, v115
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 23
	.byte	LFODL	, 22
	.byte	MOD	, 4
	.byte	MODT	, 0
	.byte		N17	, Ds3, v127
	.byte	W18
	.byte		N01	
	.byte	W18
	.byte		N18	, Gs2
	.byte	W18
	.byte		TIE	, Cs3
	.byte	W42
	.byte	W56
	.byte	W03
	.byte		EOT	
	.byte	W13
	.byte		N18	, As2
	.byte	W18
	.byte		N06	, Bn2
	.byte	W06
	.byte	W12
	.byte		N54	, Cn3
	.byte	W54
	.byte	FINE

	@********************** Track  5 **********************@

	.global song002_5
song002_5:	@ 0x0879D6DA
	.byte	KEYSH	, 0
	.byte	VOICE	, 44
	.byte	VOL	, v115
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 23
	.byte	LFODL	, 22
	.byte	MOD	, 2
	.byte	MODT	, 0
	.byte		N17	, Cn2, v124
	.byte	W18
	.byte			Gs1, v127
	.byte	W18
	.byte			Cs2
	.byte	W18
	.byte		TIE	, Fs1
	.byte	W42
	.byte	W64
	.byte		EOT	
	.byte	W08
	.byte		N17	, Ds2
	.byte	W18
	.byte		N10	, En2
	.byte	W06
	.byte	W12
	.byte		N48	, Fn2
	.byte	W60
	.byte		N16	, As1
	.byte	W18
	.byte		N17	, Bn1
	.byte	W06
	.byte	W12
	.byte		N03	, Cn2
	.byte	W06
	.byte		N09	
	.byte	W09
	.byte	FINE

	@********************** Track  6 **********************@

	.global song002_6
song002_6:	@ 0x0879D712
	.byte	KEYSH	, 0
	.byte	VOICE	, 87
	.byte	VOL	, v072
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 23
	.byte	LFODL	, 22
	.byte	MOD	, 0
	.byte	MODT	, 0
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N16	, As1, v127
	.byte		N16	, Cn4
	.byte	W18
	.byte		N17	, Bn1
	.byte		N17	, Cn4
	.byte	W06
	.byte	W12
	.byte		N03	, Cn2
	.byte		N03	, Cn4
	.byte	W06
	.byte		N09	, Cn2
	.byte		N09	, Cn4
	.byte	W09
	.byte	FINE

	.align 2
	.global song002
song002:	@ 0x0879D740
	.byte	6		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song002_1		@ track
	.word	song002_2		@ track
	.word	song002_3		@ track
	.word	song002_4		@ track
	.word	song002_5		@ track
	.word	song002_6		@ track
