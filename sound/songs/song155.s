	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song155_1
song155_1:	@ 0x087BD4E8
	.byte	KEYSH	, 0
song155_1_3:
	.byte	TEMPO	, 65
	.byte	VOICE	, 64
	.byte	VOL	, v074
	.byte	PAN	, c_v
	.byte	W24
	.byte		N23	, Cn4, v104
	.byte	W24
	.byte			Gn3
	.byte	W24
song155_1_1:
	.byte		N23	, Cn4, v104
	.byte	W24
	.byte			Dn4
	.byte	W24
	.byte		N44	, En4
	.byte	W24
	.byte	PEND
song155_1_2:
	.byte	W24
	.byte		N23	, Fn4, v104
	.byte	W24
	.byte			En4
	.byte	W24
	.byte	PEND
	.byte		N44	, Dn4
	.byte	W48
	.byte			Bn3, v100
	.byte	W24
	.byte	W24
	.byte		N23	, Cn4, v104
	.byte	W24
	.byte			Gn3
	.byte	W24
	.byte	PATT	
		.int	song155_1_1
	.byte	PATT	
		.int	song155_1_2
	.byte		N92	, Dn4, v104
	.byte	W72
	.byte	W24
	.byte		N11	, Cn5
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte		N44	, Cn5
	.byte	W24
	.byte	W24
	.byte		N11	, Bn4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte		N44	, Bn4
	.byte	W24
	.byte	W24
	.byte		N11	, An4
	.byte	W12
	.byte			Fn4, v100
	.byte	W12
	.byte		N44	, An4, v104
	.byte	W24
	.byte	W24
	.byte		N11	, Bn4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte		N22	, Bn4
	.byte	W24
	.byte	GOTO	
		.int	song155_1_3
	.byte	FINE

	@********************** Track  2 **********************@

	.global song155_2
song155_2:	@ 0x087BD552
	.byte	KEYSH	, 0
song155_2_1:
	.byte	VOICE	, 64
	.byte	VOL	, v064
	.byte	PAN	, c_v
	.byte		N68	, Cn3, v104
	.byte	W72
	.byte			Gn2
	.byte	W72
	.byte			Fn2
	.byte	W72
	.byte			Gn2
	.byte	W72
	.byte			Cn3, v092
	.byte	W72
	.byte			Gn2, v104
	.byte	W72
	.byte			Fn2, v100
	.byte	W72
	.byte			Gn2, v104
	.byte	W72
	.byte			Cn3
	.byte	W72
	.byte			Gn2, v100
	.byte	W72
	.byte			Fn2
	.byte	W72
	.byte			Gn2, v104
	.byte	W72
	.byte	GOTO	
		.int	song155_2_1
	.byte		N36	, Cn3, v104
	.byte	W36
	.byte	W02
	.byte	FINE

	@********************** Track  3 **********************@

	.global song155_3
song155_3:	@ 0x087BD585
	.byte	KEYSH	, 0
song155_3_4:
	.byte	VOICE	, 68
	.byte	VOL	, v054
	.byte	PAN	, c_v
	.byte	W24
	.byte		N68	, Gn3, v104
	.byte		N68	, Cn4
	.byte	W48
song155_3_1:
	.byte	W24
	.byte		N68	, Gn3, v104
	.byte		N68	, Bn3
	.byte	W48
	.byte	PEND
song155_3_2:
	.byte	W24
	.byte		N68	, Fn3, v104
	.byte		N72	, An3
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.int	song155_3_1
song155_3_3:
	.byte	W24
	.byte		N68	, Gn3, v104
	.byte		N68	, Cn4
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.int	song155_3_1
	.byte	PATT	
		.int	song155_3_2
	.byte	PATT	
		.int	song155_3_1
	.byte	PATT	
		.int	song155_3_3
	.byte	PATT	
		.int	song155_3_1
	.byte	PATT	
		.int	song155_3_2
	.byte	PATT	
		.int	song155_3_1
	.byte	GOTO	
		.int	song155_3_4
	.byte	PATT	
		.int	song155_3_3
	.byte	W22
	.byte	FINE

	@********************** Track  4 **********************@

	.global song155_4
song155_4:	@ 0x087BD5E0
	.byte	KEYSH	, 0
song155_4_1:
	.byte	VOICE	, 113
	.byte	VOL	, v033
	.byte	PAN	, c_v-64
	.byte	W24
	.byte		N10	, Cn5, v104
	.byte	W48
	.byte	W24
	.byte		N11	, Bn4
	.byte	W48
	.byte	W24
	.byte		N12	, An4
	.byte	W48
	.byte	W24
	.byte		N10	, Bn4
	.byte	W48
	.byte	W24
	.byte			Cn5
	.byte	W48
	.byte	W24
	.byte		N11	, Bn4
	.byte	W48
	.byte	W24
	.byte		N12	, An4
	.byte	W48
	.byte	W24
	.byte		N10	, Bn4
	.byte	W48
	.byte	W24
	.byte			Cn5
	.byte	W48
	.byte	W24
	.byte		N11	, Bn4
	.byte	W48
	.byte	W24
	.byte		N12	, An4
	.byte	W48
	.byte	W24
	.byte		N10	, Bn4
	.byte	W48
	.byte	GOTO	
		.int	song155_4_1
	.byte	W24
	.byte		N10	, Cn5, v104
	.byte	W10
	.byte	FINE

	@********************** Track  5 **********************@

	.global song155_5
song155_5:	@ 0x087BD622
	.byte	KEYSH	, 0
song155_5_1:
	.byte	VOICE	, 114
	.byte	VOL	, v033
	.byte	PAN	, c_v+63
	.byte	W24
	.byte		N10	, Gn4, v104
	.byte	W48
	.byte	W24
	.byte		N11	
	.byte	W48
	.byte	W24
	.byte		N10	, Fn4
	.byte	W48
	.byte	W24
	.byte		N11	, Gn4
	.byte	W48
	.byte	W24
	.byte		N10	
	.byte	W48
	.byte	W24
	.byte		N11	
	.byte	W48
	.byte	W24
	.byte		N10	, Fn4
	.byte	W48
	.byte	W24
	.byte		N11	, Gn4
	.byte	W48
	.byte	W24
	.byte		N10	
	.byte	W48
	.byte	W24
	.byte		N11	
	.byte	W48
	.byte	W24
	.byte		N10	, Fn4
	.byte	W48
	.byte	W24
	.byte		N11	, Gn4
	.byte	W48
	.byte	GOTO	
		.int	song155_5_1
	.byte	W24
	.byte		N10	, Gn4, v104
	.byte	W10
	.byte	FINE

	.align 2
	.global song155
song155:	@ 0x087BD664
	.byte	5		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.int	voicegroup007		@ voicegroup/tone

	.int	song155_1		@ track
	.int	song155_2		@ track
	.int	song155_3		@ track
	.int	song155_4		@ track
	.int	song155_5		@ track
