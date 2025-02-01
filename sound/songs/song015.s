	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song015_1
song015_1:	@ 0x087A4280
	.byte	KEYSH	, 0
	.byte	TEMPO	, 95
	.byte	VOICE	, 127
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte		N07	, Cn1, v127
	.byte		N07	, Ds1, v068
	.byte	W24
	.byte			Dn1, v052
	.byte	W48
	.byte		N07	
	.byte	W24
	.byte	W24
	.byte		N07	
	.byte	W48
	.byte		N07	
	.byte	W24
	.byte	W16
	.byte			Cs1, v127
	.byte	W08
	.byte		N15	
	.byte		N07	, Dn1, v052
	.byte	W16
	.byte			Cn1, v127
	.byte	W08
	.byte		N15	
	.byte	W16
	.byte		N07	, Cs1
	.byte	W08
	.byte		N15	
	.byte		N07	, Dn1, v052
	.byte	W16
	.byte			Cn1, v127
	.byte	W08
	.byte		N15	, Gn1
	.byte	W16
	.byte		N07	, Gs1
	.byte	W08
	.byte		N15	, Cs1
	.byte		N07	, Dn1, v052
	.byte	W16
	.byte			Cs1, v127
	.byte	W08
	.byte			Cn1
	.byte	W08
	.byte			Gs1
	.byte	W08
	.byte			Cs1
	.byte	W08
	.byte		N15	
	.byte		N07	, Dn1, v052
	.byte	W16
	.byte		N15	, Cn1, v127
	.byte		N92	, Cs2
	.byte	W08
	.byte		N07	, Ds1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cs1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cn1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cs1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte		N08	, Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
song015_1_1:
	.byte		N15	, Cn1, v127
	.byte		N07	, Ds1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cs1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cn1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cs1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte		N08	, Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte	PEND
song015_1_8:
	.byte	PATT	
		.int	song015_1_1
	.byte		N15	, Cn1, v127
	.byte		N07	, Ds1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cs1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cn1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cs1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte			Cs1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Cs1, v127
	.byte		N07	, Dn1, v052
	.byte	W08
	.byte		N08	, Cs1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
song015_1_2:
	.byte		N15	, Cn1, v127
	.byte		N07	, Ds1, v064
	.byte		N92	, Cs2, v127
	.byte	W08
	.byte		N07	, Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cs1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cn1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cs1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte		N08	, Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte	PEND
	.byte	PATT	
		.int	song015_1_1
	.byte	PATT	
		.int	song015_1_1
song015_1_3:
	.byte		N15	, Cn1, v127
	.byte		N07	, Ds1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cs1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cn1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cs1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte		N08	, Cs1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte	PEND
	.byte	PATT	
		.int	song015_1_2
	.byte	PATT	
		.int	song015_1_1
	.byte	PATT	
		.int	song015_1_1
	.byte	PATT	
		.int	song015_1_1
	.byte	PATT	
		.int	song015_1_1
song015_1_4:
	.byte		N15	, Cn1, v127
	.byte		N07	, Ds1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cs1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cn1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte			Cs1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Cs1, v127
	.byte		N07	, Dn1, v052
	.byte	W08
	.byte			Cs1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte	PEND
song015_1_5:
	.byte		N08	, Cn1, v127
	.byte		N08	, Ds1, v096
	.byte	W24
	.byte		N07	, Dn1, v056
	.byte	W48
	.byte		N07	
	.byte	W24
	.byte	PEND
song015_1_6:
	.byte	W24
	.byte		N07	, Dn1, v056
	.byte	W24
	.byte		N15	, Cs1, v127
	.byte	W16
	.byte		N07	, Gn1
	.byte	W08
	.byte			Cn1
	.byte		N07	, Dn1, v056
	.byte	W08
	.byte			Cs1, v127
	.byte	W08
	.byte		N08	
	.byte	W08
	.byte	PEND
	.byte	PATT	
		.int	song015_1_2
	.byte	PATT	
		.int	song015_1_1
	.byte	PATT	
		.int	song015_1_1
	.byte		N15	, Cn1, v127
	.byte		N07	, Ds1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cs1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte			Dn1, v064
	.byte		N07	, An1, v127
	.byte	W08
	.byte			Dn1, v052
	.byte		N07	, An1, v127
	.byte	W08
	.byte			Dn1, v036
	.byte		N07	, Gs1, v127
	.byte	W08
	.byte			Dn1, v064
	.byte		N07	, Gs1, v127
	.byte	W08
	.byte			Cn1
	.byte		N07	, Dn1, v052
	.byte	W08
	.byte		N08	, Cs1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte	PATT	
		.int	song015_1_2
	.byte	PATT	
		.int	song015_1_1
	.byte	PATT	
		.int	song015_1_1
	.byte	PATT	
		.int	song015_1_3
	.byte	PATT	
		.int	song015_1_2
	.byte	PATT	
		.int	song015_1_1
	.byte	PATT	
		.int	song015_1_1
	.byte	PATT	
		.int	song015_1_1
	.byte	PATT	
		.int	song015_1_1
	.byte	PATT	
		.int	song015_1_4
	.byte	PATT	
		.int	song015_1_5
	.byte	PATT	
		.int	song015_1_6
	.byte	PATT	
		.int	song015_1_2
song015_1_7:
	.byte		N15	, Cn1, v127
	.byte		N07	, Ds1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cs1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cn1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cs1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte			Cs1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte		N07	, Gs1, v127
	.byte	W08
	.byte			Dn1, v036
	.byte		N08	, Gn1, v127
	.byte	W08
	.byte	PEND
	.byte	PATT	
		.int	song015_1_2
	.byte	PATT	
		.int	song015_1_1
	.byte	PATT	
		.int	song015_1_1
	.byte		N15	, Cn1, v127
	.byte		N07	, Ds1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cs1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cn1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte			Cs1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Cs1, v127
	.byte		N07	, Dn1, v052
	.byte	W08
	.byte		N08	, Cs1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte	PATT	
		.int	song015_1_1
	.byte	PATT	
		.int	song015_1_1
	.byte	PATT	
		.int	song015_1_1
	.byte		N15	, Cn1, v127
	.byte		N07	, Ds1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cs1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte			Cs1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte		N07	, Gs1, v127
	.byte	W08
	.byte			Dn1, v036
	.byte		N07	, Gn1, v127
	.byte	W08
	.byte			Cn1
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte		N07	, Fs1, v127
	.byte	W08
	.byte		N08	, Cs1
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte	PATT	
		.int	song015_1_2
	.byte	PATT	
		.int	song015_1_1
	.byte	PATT	
		.int	song015_1_1
	.byte	PATT	
		.int	song015_1_3
	.byte	PATT	
		.int	song015_1_1
	.byte	PATT	
		.int	song015_1_7
	.byte		N07	, Cn1, v127
	.byte		N07	, En1, v064
	.byte	W24
	.byte			Dn1, v036
	.byte	W16
	.byte			Cs1, v127
	.byte	W08
	.byte		N15	
	.byte	W16
	.byte		N07	, Cn1
	.byte		N07	, En1, v064
	.byte	W08
	.byte			Dn1, v036
	.byte	W16
	.byte			Cn1, v127
	.byte		N92	, Gn2
	.byte	W08
	.byte	W24
	.byte		N07	, Dn1, v036
	.byte	W16
	.byte			Cs1, v127
	.byte	W08
	.byte		N15	, Gs1
	.byte	W16
	.byte		N07	, Cs1
	.byte	W08
	.byte		N07	
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte			Cs1, v127
	.byte	W08
	.byte		N15	, Cn1
	.byte		N92	, Cs2
	.byte	W08
	.byte	W08
	.byte		N07	, Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cs1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cn1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte			Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte		N15	, Cs1, v127
	.byte		N07	, Dn1, v064
	.byte	W08
	.byte			Dn1, v052
	.byte	W08
	.byte		N08	, Cn1, v127
	.byte		N07	, Dn1, v036
	.byte	W08
	.byte	PATT	
		.int	song015_1_1
	.byte	GOTO	
		.int	song015_1_8
	.byte	FINE

	@********************** Track  2 **********************@

	.global song015_2
song015_2:	@ 0x087A46CF
	.byte	KEYSH	, 0
	.byte	VOICE	, 85
	.byte	VOL	, v095
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	LFOS	, 31
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PRIO	, 30
	.byte		N15	, An3, v104
	.byte	W16
	.byte		N07	, Cn4, v084
	.byte	W08
	.byte		N15	, An3, v100
	.byte	W16
	.byte		N10	, En4, v112
	.byte	W24
	.byte		N11	, Ds4
	.byte	W24
	.byte		N07	, Dn4, v100
	.byte	W08
	.byte		N14	, Cn4
	.byte	W16
	.byte		N07	, An3, v076
	.byte	W08
	.byte		N14	, Ds4, v116
	.byte	W16
	.byte		N30	, Dn4, v108
	.byte	W32
	.byte		N15	, Cn4, v088
	.byte	W16
	.byte		N07	, An3, v092
	.byte	W08
	.byte		N11	, Gn3, v108
	.byte	W16
	.byte		N07	, En3, v084
	.byte	W08
	.byte		N15	, Gs3, v104
	.byte	W16
	.byte		N21	, An3, v112
	.byte	W48
	.byte		N07	, An3, v100
	.byte	W08
	.byte		N14	, Cn4, v096
	.byte	W16
	.byte		N07	, Dn4, v108
	.byte	W08
	.byte		N12	, Ds4, v104
	.byte	W16
	.byte		N21	, En4
	.byte	W24
	.byte		N07	, Gn4, v112
	.byte	W08
	.byte		N15	, Gs4, v116
	.byte	W16
	.byte		N07	, An4, v108
	.byte	W08
	.byte	W96
	.byte	W96
song015_2_10:
	.byte	W96
	.byte	W96
song015_2_1:
	.byte		N15	, An4, v088
	.byte	W16
	.byte			Cn5, v096
	.byte	W16
	.byte			En5, v112
	.byte	W16
	.byte		TIE	, Ds5, v104
	.byte	W48
	.byte	PEND
	.byte	MOD	, 4
	.byte	W54
	.byte		EOT	
	.byte	W18
	.byte		N07	, Dn5, v096
	.byte	W08
	.byte			Cn5, v088
	.byte	W08
	.byte			An4, v104
	.byte	W08
song015_2_2:
	.byte		N15	, Cn5, v104
	.byte	W16
	.byte		N14	, Dn5, v116
	.byte	W24
	.byte		N20	, Cn5
	.byte	W56
	.byte	PEND
	.byte	W96
song015_2_3:
	.byte	MOD	, 0
	.byte		N15	, An4, v127
	.byte	W16
	.byte			Cn5, v112
	.byte	W16
	.byte			Gn5, v120
	.byte	W16
	.byte		TIE	, Fs5, v116
	.byte	W48
	.byte	PEND
song015_2_4:
	.byte	MOD	, 4
	.byte	W56
	.byte	W03
	.byte	PEND
	.byte		EOT	, Fs5
	.byte	W13
	.byte		N07	, En5, v116
	.byte	W08
	.byte			Dn5, v092
	.byte	W08
	.byte			Cn5, v120
	.byte	W08
song015_2_5:
	.byte		N15	, Cn5, v096
	.byte	W16
	.byte		N13	, Dn5, v112
	.byte	W80
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N24	, Bn5, v096
	.byte	W24
song015_2_6:
	.byte		N16	, An5, v096
	.byte	W88
	.byte		N08	, An4, v112
	.byte	W08
	.byte	PEND
song015_2_7:
	.byte		N08	, Ds5, v112
	.byte	W08
	.byte			Dn5, v108
	.byte	W08
	.byte			Cn5, v112
	.byte	W08
	.byte		N16	, Dn5, v116
	.byte	W16
	.byte		N08	, Cn5, v112
	.byte	W08
	.byte		N16	, An4, v100
	.byte	W16
	.byte		N08	, En4
	.byte	W08
	.byte		N16	, Gn4, v120
	.byte	W16
	.byte		N32	, An4, v124
	.byte	W08
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.int	song015_2_1
	.byte	MOD	, 4
	.byte	W54
	.byte		EOT	, Ds5
	.byte	W18
	.byte		N07	, Dn5, v096
	.byte	W08
	.byte			Cn5, v088
	.byte	W08
	.byte			An4, v104
	.byte	W08
	.byte	PATT	
		.int	song015_2_2
	.byte	W96
	.byte	PATT	
		.int	song015_2_3
	.byte	PATT	
		.int	song015_2_4
	.byte		EOT	, Fs5
	.byte	W13
	.byte		N07	, En5, v116
	.byte	W08
	.byte			Dn5, v092
	.byte	W08
	.byte			Cn5, v120
	.byte	W08
	.byte	PATT	
		.int	song015_2_5
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N24	, Bn5, v096
	.byte	W24
	.byte	PATT	
		.int	song015_2_6
	.byte	PATT	
		.int	song015_2_7
	.byte	W96
	.byte	W96
	.byte	VOL	, v095
	.byte	W02
	.byte		v094
	.byte	W01
	.byte		v093
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v091
	.byte	W01
	.byte		v090
	.byte	W02
	.byte		v090
	.byte	W01
	.byte		v089
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v087
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v084
	.byte	W02
	.byte		v084
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v080
	.byte	W01
	.byte		v079
	.byte	W02
	.byte		v078
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v073
	.byte	W02
	.byte		v072
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v069
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v067
	.byte	W02
	.byte		v065
	.byte	W09
	.byte		v066
	.byte		N96	, Cn4, v116
	.byte	W05
	.byte	VOL	, v067
	.byte	W05
	.byte		v068
	.byte	W05
	.byte		v069
	.byte	W05
	.byte		v070
	.byte	W04
	.byte		v071
	.byte	W05
	.byte		v071
	.byte	W05
	.byte		v072
	.byte	W05
	.byte		v073
	.byte	W05
	.byte		v074
	.byte	W04
	.byte		v075
	.byte	W05
	.byte		v076
	.byte	W05
	.byte		v077
	.byte	W05
	.byte		v077
	.byte	W05
	.byte		v078
	.byte	W04
	.byte		v079
	.byte	W05
	.byte		v080
	.byte	W05
	.byte		v081
	.byte	W05
	.byte		v082
	.byte	W05
	.byte		v083
	.byte	W04
	.byte		v084
	.byte		N48	, Gn4
	.byte	W05
	.byte	VOL	, v084
	.byte	W05
	.byte		v085
	.byte	W05
	.byte		v086
	.byte	W05
	.byte		v087
	.byte	W04
	.byte		v088
	.byte	W05
	.byte		v089
	.byte	W05
	.byte		v090
	.byte	W05
	.byte		v090
	.byte	W05
	.byte		v091
	.byte	W04
	.byte		v092
	.byte		N32	, Fs4, v127
	.byte	W05
	.byte	VOL	, v093
	.byte	W05
	.byte		v094
	.byte	W01
	.byte		v095
	.byte	W36
	.byte	W01
	.byte		N15	
	.byte	W16
	.byte		N23	, Ds4
	.byte	W24
	.byte		N48	, Bn3
	.byte	W08
	.byte	W96
	.byte	VOL	, v095
	.byte	W02
	.byte		v094
	.byte	W01
	.byte		v093
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v091
	.byte	W01
	.byte		v090
	.byte	W02
	.byte		v090
	.byte	W01
	.byte		v089
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v087
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v084
	.byte	W02
	.byte		v084
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v080
	.byte	W01
	.byte		v079
	.byte	W02
	.byte		v078
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v073
	.byte	W02
	.byte		v072
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v069
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v067
	.byte	W02
	.byte		v065
	.byte	W09
	.byte		v066
	.byte		N96	, Gn3, v116
	.byte	W05
	.byte	VOL	, v067
	.byte	W05
	.byte		v068
	.byte	W05
	.byte		v069
	.byte	W05
	.byte		v070
	.byte	W04
	.byte		v071
	.byte	W05
	.byte		v071
	.byte	W05
	.byte		v072
	.byte	W05
	.byte		v073
	.byte	W05
	.byte		v074
	.byte	W04
	.byte		v075
	.byte	W05
	.byte		v076
	.byte	W05
	.byte		v077
	.byte	W05
	.byte		v077
	.byte	W05
	.byte		v078
	.byte	W04
	.byte		v079
	.byte	W05
	.byte		v080
	.byte	W05
	.byte		v081
	.byte	W05
	.byte		v082
	.byte	W05
	.byte		v083
	.byte	W04
	.byte		v084
	.byte		N48	, En4
	.byte	W05
	.byte	VOL	, v084
	.byte	W05
	.byte		v085
	.byte	W05
	.byte		v086
	.byte	W05
	.byte		v087
	.byte	W04
	.byte		v088
	.byte	W05
	.byte		v089
	.byte	W05
	.byte		v090
	.byte	W05
	.byte		v090
	.byte	W05
	.byte		v091
	.byte	W04
	.byte		v092
	.byte		N32	, Ds4, v127
	.byte	W05
	.byte	VOL	, v093
	.byte	W05
	.byte		v094
	.byte	W01
	.byte		v095
	.byte	W36
	.byte	W01
	.byte		N15	
	.byte	W16
	.byte		N23	, En4
	.byte	W24
	.byte		N56	, Fs4
	.byte	W08
	.byte	W96
song015_2_8:
	.byte	VOL	, v095
	.byte	W02
	.byte		v094
	.byte	W01
	.byte		v093
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v091
	.byte	W01
	.byte		v090
	.byte	W02
	.byte		v090
	.byte	W01
	.byte		v089
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v087
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v084
	.byte	W02
	.byte		v084
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v080
	.byte	W01
	.byte		v079
	.byte	W02
	.byte		v078
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v073
	.byte	W02
	.byte		v072
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v069
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v067
	.byte	W02
	.byte		v065
	.byte	W09
	.byte		v066
	.byte		N96	, Ds4, v116
	.byte	W05
	.byte	VOL	, v067
	.byte	W05
	.byte		v068
	.byte	W05
	.byte		v069
	.byte	W05
	.byte		v070
	.byte	W04
	.byte		v071
	.byte	W05
	.byte		v071
	.byte	W05
	.byte		v072
	.byte	W05
	.byte		v073
	.byte	W05
	.byte		v074
	.byte	W04
	.byte	PEND
song015_2_9:
	.byte	VOL	, v075
	.byte	W05
	.byte		v076
	.byte	W05
	.byte		v077
	.byte	W05
	.byte		v077
	.byte	W05
	.byte		v078
	.byte	W04
	.byte		v079
	.byte	W05
	.byte		v080
	.byte	W05
	.byte		v081
	.byte	W05
	.byte		v082
	.byte	W05
	.byte		v083
	.byte	W04
	.byte		v084
	.byte		N48	, As4, v116
	.byte	W05
	.byte	VOL	, v084
	.byte	W05
	.byte		v085
	.byte	W05
	.byte		v086
	.byte	W05
	.byte		v087
	.byte	W04
	.byte		v088
	.byte	W05
	.byte		v089
	.byte	W05
	.byte		v090
	.byte	W05
	.byte		v090
	.byte	W05
	.byte		v091
	.byte	W04
	.byte	PEND
	.byte		v092
	.byte		N32	, An4, v127
	.byte	W05
	.byte	VOL	, v093
	.byte	W05
	.byte		v094
	.byte	W01
	.byte		v095
	.byte	W36
	.byte	W01
	.byte		N15	
	.byte	W16
	.byte		N23	, Fs4
	.byte	W24
	.byte		N48	, Dn4
	.byte	W08
	.byte	W96
	.byte	PATT	
		.int	song015_2_8
	.byte	PATT	
		.int	song015_2_9
	.byte	VOL	, v092
	.byte		N16	, An4, v127
	.byte	W05
	.byte	VOL	, v093
	.byte	W05
	.byte		v094
	.byte	W01
	.byte		v095
	.byte	W36
	.byte	W01
	.byte		N15	
	.byte	W16
	.byte			As4
	.byte	W24
	.byte		N54	, Bn4
	.byte	W08
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.int	song015_2_10
	.byte	FINE

	@********************** Track  3 **********************@

	.global song015_3
song015_3:	@ 0x087A4A1F
	.byte	KEYSH	, 0
	.byte	VOICE	, 84
	.byte	VOL	, v095
	.byte	PAN	, c_v
	.byte	MOD	, 31
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W01
	.byte		N07	, Dn4, v092
	.byte	W05
	.byte		N09	, Ds4, v064
	.byte	W05
	.byte		N08	, En4
	.byte	W10
	.byte		N07	, An4, v104
	.byte	W08
	.byte		N08	, Dn4, v096
	.byte	W09
	.byte		N07	, Ds4, v080
	.byte	W06
	.byte		N48	, Dn4, v076
	.byte	W52
song015_3_1:
	.byte	W03
	.byte		N11	, Cn4, v124
	.byte	W15
	.byte		N03	, An3, v044
	.byte	W08
	.byte		N08	, Dn4, v120
	.byte	W15
	.byte		N18	, Cn4, v116
	.byte	W32
	.byte		N12	, An3
	.byte	W16
	.byte		N07	, En3, v096
	.byte	W07
	.byte	W02
	.byte		N08	, Ds3, v112
	.byte	W14
	.byte			Dn3, v092
	.byte	W11
	.byte		N06	, Cn3, v076
	.byte	W15
	.byte		N05	, An2, v016
	.byte	W07
	.byte		N10	, Dn3, v116
	.byte	W15
	.byte		N03	, An2, v068
	.byte	W08
	.byte		N12	, Cn3, v080
	.byte	W17
	.byte		N32	, An2
	.byte	W07
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
	.byte	W84
	.byte	W03
	.byte		N18	, Dn4, v127
	.byte		N20	, An4
	.byte	W09
	.byte	W09
	.byte		N08	, Ds4, v080
	.byte	W08
	.byte		N04	, Dn4, v048
	.byte	W04
	.byte		N06	, Cn4, v084
	.byte	W06
	.byte		N15	, Dn4, v112
	.byte	W16
	.byte		N24	, Cn4, v108
	.byte	W30
	.byte	W01
	.byte		N10	, An3, v104
	.byte	W17
	.byte		N04	, En3, v056
	.byte	W05
	.byte	W03
	.byte		N08	, Gn3, v116
	.byte	W15
	.byte			Gs3, v127
	.byte	W10
	.byte		N16	, An3, v116
	.byte	W23
	.byte		N10	, Gn3, v127
	.byte	W13
	.byte		N06	, En3, v084
	.byte	W11
	.byte		N07	, Ds3, v112
	.byte	W14
	.byte		N28	, Dn3, v124
	.byte	W07
	.byte	W24
	.byte	W01
	.byte		N10	, Cn3, v100
	.byte	W15
	.byte		N05	, An2, v080
	.byte	W10
	.byte		N07	, Dn3, v116
	.byte	W16
	.byte		N10	, Dn3, v112
	.byte	W09
	.byte		N12	, Cn3, v104
	.byte	W14
	.byte		N09	, An2, v088
	.byte	W07
	.byte	W06
	.byte		N10	, An2, v016
	.byte	W90
	.byte	W96
	.byte	W96
	.byte		N05	, Dn3, v116
	.byte		N18	, An3, v120
	.byte	W01
	.byte		N19	, Ds3, v116
	.byte	W24
	.byte		N18	, An3, v120
	.byte	W01
	.byte		N21	, Ds3
	.byte	W24
	.byte	W01
	.byte		N13	, Dn3, v127
	.byte	W01
	.byte			An3, v092
	.byte	W14
	.byte		N07	, Cn3, v108
	.byte	W11
	.byte		N12	, An2, v104
	.byte	W13
	.byte		N24	, Cn3, v096
	.byte	W06
	.byte	W96
	.byte	W96
	.byte	W36
	.byte	W03
	.byte		N09	, Gs3, v124
	.byte	W09
	.byte		N08	, An3, v104
	.byte	W15
	.byte			Gn4, v127
	.byte	W11
	.byte			Fs4, v120
	.byte	W12
	.byte		N10	, Fn4, v112
	.byte	W10
	.byte	W03
	.byte		N08	, Ds4, v116
	.byte	W14
	.byte			Cn4, v100
	.byte	W10
	.byte		N11	, An3, v096
	.byte	W15
	.byte		N10	, Gs3, v124
	.byte	W11
	.byte		N09	, Gn3, v100
	.byte	W14
	.byte			Fs3, v108
	.byte	W10
	.byte			Fn3, v096
	.byte	W14
	.byte			Ds3, v072
	.byte	W05
	.byte	W05
	.byte		N17	, Cn3, v056
	.byte	W90
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		N14	, Ds4, v124
	.byte	W01
	.byte		N13	, An4, v120
	.byte	W24
	.byte	W01
	.byte		N14	, Dn4, v108
	.byte	W23
	.byte		N15	, Cn4, v112
	.byte	W23
	.byte	W02
	.byte		N13	, Dn4, v127
	.byte	W14
	.byte		N08	, Cn4, v088
	.byte	W14
	.byte		N04	, An3, v028
	.byte	W09
	.byte		N09	, Dn4, v127
	.byte	W11
	.byte		N13	, Cn4, v104
	.byte	W14
	.byte		N09	, An3, v044
	.byte	W12
	.byte		N06	, En3, v076
	.byte	W12
	.byte		N07	, Gn3, v100
	.byte	W08
	.byte	W28
	.byte		N12	, Fs3, v124
	.byte	W15
	.byte		N07	, Gn3, v092
	.byte	W08
	.byte		N10	, An3, v120
	.byte	W13
	.byte		N08	, Gn3, v112
	.byte	W11
	.byte		N10	, Fs3, v120
	.byte	W11
	.byte		N08	, En3, v096
	.byte	W10
	.byte	W01
	.byte		N10	, Ds3, v116
	.byte	W15
	.byte		N09	, Fs3, v124
	.byte	W09
	.byte		N13	, Cn3, v108
	.byte	W17
	.byte		N04	, As2, v080
	.byte	W07
	.byte		N03	, As2, v032
	.byte	W04
	.byte		N14	, Bn2, v092
	.byte	W20
	.byte		N24	, Bn2, v100
	.byte	W23
	.byte	W40
	.byte		N08	, Gn2, v116
	.byte	W09
	.byte		N07	, Cn3, v100
	.byte	W08
	.byte		N05	, En3, v084
	.byte	W05
	.byte		N08	, Gn3, v100
	.byte	W09
	.byte		N09	, Ds3, v120
	.byte	W13
	.byte		N08	, En3, v068
	.byte	W10
	.byte		N12	, Fs3, v116
	.byte	W02
	.byte	W13
	.byte		N08	, Gn3, v100
	.byte	W11
	.byte		N09	, An3, v112
	.byte	W14
	.byte			Bn3, v120
	.byte	W11
	.byte			Cn4, v116
	.byte	W12
	.byte		N08	, Dn4, v124
	.byte	W11
	.byte		N06	, As3, v116
	.byte	W06
	.byte		N10	, Bn3, v108
	.byte	W11
	.byte			An3
	.byte	W07
	.byte	W04
	.byte		N08	, Gn3, v100
	.byte	W21
	.byte		N11	, Fs3, v120
	.byte	W18
	.byte		N17	, Ds3, v127
	.byte	W22
	.byte		N10	, Ds3, v112
	.byte	W10
	.byte		N12	, Fs3, v116
	.byte	W14
	.byte		N16	, Bn2, v088
	.byte	W07
	.byte	W16
	.byte		N07	, Bn2, v096
	.byte	W10
	.byte		N08	, Cs3, v108
	.byte	W13
	.byte		N09	, Ds3, v116
	.byte	W10
	.byte		N08	, En3, v104
	.byte	W12
	.byte		N09	, Fs3, v112
	.byte	W12
	.byte		N10	, Gn3, v104
	.byte	W13
	.byte		N07	, An3, v108
	.byte	W10
	.byte	W01
	.byte		N09	, As3, v124
	.byte	W13
	.byte		N08	, Cn4, v108
	.byte	W10
	.byte		N10	, Cs4, v116
	.byte	W15
	.byte		N15	, Fn4, v127
	.byte	W24
	.byte		N07	, Ds4, v112
	.byte	W32
	.byte	W01
	.byte	W36
	.byte	W03
	.byte		N06	, Cn4, v076
	.byte	W09
	.byte		N07	, Cs4, v084
	.byte	W16
	.byte		N15	, Gs4, v127
	.byte	W24
	.byte		N14	, Gn4
	.byte	W08
	.byte	W18
	.byte		N12	, Fs4
	.byte	W22
	.byte		N08	, En4, v108
	.byte	W10
	.byte		N10	, Ds4, v116
	.byte	W17
	.byte		N09	, Dn4, v088
	.byte	W18
	.byte			Cn4, v108
	.byte	W11
	.byte	W02
	.byte		N10	, As3, v127
	.byte	W16
	.byte		N08	, An3, v104
	.byte	W09
	.byte		N10	, Gn3, v096
	.byte	W13
	.byte		N09	, Fs3, v104
	.byte	W21
	.byte			Fs3, v108
	.byte	W10
	.byte		N13	, An3, v104
	.byte	W17
	.byte		N15	, Dn3, v080
	.byte	W08
	.byte	W48
	.byte		N09	, Cn4, v112
	.byte	W09
	.byte		N07	, Cs4, v104
	.byte	W08
	.byte		N06	, Dn4, v084
	.byte	W07
	.byte		N08	, Ds4, v112
	.byte	W09
	.byte		N06	, Dn4, v088
	.byte	W07
	.byte			Cs4, v096
	.byte	W06
	.byte		N09	, Cn4, v116
	.byte	W02
	.byte	W15
	.byte		N07	, As3, v092
	.byte	W01
	.byte		N18	, An3, v108
	.byte	W20
	.byte		N08	, Gn3, v096
	.byte	W11
	.byte		N11	, Fs3, v112
	.byte	W13
	.byte		N09	, An3, v096
	.byte	W10
	.byte		N10	, Ds3, v112
	.byte	W15
	.byte		N07	, Cn3, v060
	.byte	W08
	.byte		N17	, Dn3, v120
	.byte	W03
	.byte	W48
	.byte		N13	, Dn3, v127
	.byte	W16
	.byte		N09	, Ds3, v120
	.byte	W23
	.byte		N36	, En3, v127
	.byte	W09
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.int	song015_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song015_4
song015_4:	@ 0x087A4CDC
	.byte	KEYSH	, 0
	.byte	VOICE	, 68
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte		N15	, An2, v104
	.byte	W16
	.byte		N07	, Cn3, v084
	.byte	W08
	.byte		N15	, An2, v100
	.byte	W16
	.byte		N10	, En3, v112
	.byte	W24
	.byte		N11	, Ds3
	.byte	W24
	.byte		N07	, Dn3, v100
	.byte	W08
	.byte		N14	, Cn3
	.byte	W16
	.byte		N07	, An2, v076
	.byte	W08
	.byte		N14	, Ds3, v116
	.byte	W16
	.byte		N30	, Dn3, v108
	.byte	W32
	.byte		N15	, Cn3, v088
	.byte	W16
	.byte		N07	, An2, v092
	.byte	W08
	.byte		N11	, Gn2, v108
	.byte	W16
	.byte		N07	, En2, v084
	.byte	W08
	.byte		N15	, Gs2, v104
	.byte	W16
	.byte		N21	, An2, v112
	.byte	W48
	.byte		N07	, An2, v100
	.byte	W08
	.byte		N14	, En3, v096
	.byte	W16
	.byte		N07	, En3, v108
	.byte	W08
	.byte		N12	, Ds3, v104
	.byte	W16
	.byte		N21	, Dn3
	.byte	W24
	.byte		N07	, Cn3, v112
	.byte	W08
	.byte		N15	, Bn2, v116
	.byte	W16
	.byte		N07	, An2, v108
	.byte	W08
song015_4_1:
	.byte		N10	, An2, v120
	.byte	W16
	.byte		N07	, An2, v104
	.byte	W08
	.byte		N15	, Cn3
	.byte	W16
	.byte		N08	, An2, v112
	.byte	W24
	.byte		N07	, An2, v100
	.byte	W08
	.byte			En2, v084
	.byte	W08
	.byte			Gn2, v096
	.byte	W08
	.byte			Gs2, v108
	.byte	W08
	.byte	PEND
	.byte	PATT	
		.int	song015_4_1
song015_4_12:
	.byte	PATT	
		.int	song015_4_1
	.byte	PATT	
		.int	song015_4_1
	.byte	PATT	
		.int	song015_4_1
	.byte	PATT	
		.int	song015_4_1
	.byte	PATT	
		.int	song015_4_1
	.byte	PATT	
		.int	song015_4_1
	.byte	PATT	
		.int	song015_4_1
song015_4_2:
	.byte		N10	, An2, v120
	.byte	W16
	.byte		N07	, An2, v104
	.byte	W08
	.byte		N15	, Cn3
	.byte	W16
	.byte		N08	, An2, v112
	.byte	W24
	.byte		N07	, An2, v100
	.byte	W08
	.byte			Gs2, v084
	.byte	W08
	.byte			Gn2, v096
	.byte	W08
	.byte			Fs2, v108
	.byte	W08
	.byte	PEND
song015_4_3:
	.byte		N10	, Fn2, v120
	.byte	W16
	.byte		N07	, Fn2, v104
	.byte	W08
	.byte		N15	, Cn3
	.byte	W16
	.byte		N08	, Fn2, v112
	.byte	W24
	.byte		N07	, Fn2, v100
	.byte	W08
	.byte			Cn2, v084
	.byte	W08
	.byte			Ds2, v096
	.byte	W08
	.byte			En2, v108
	.byte	W08
	.byte	PEND
song015_4_4:
	.byte		N10	, Fn2, v120
	.byte	W16
	.byte		N07	, Fn2, v104
	.byte	W08
	.byte		N15	, Cn3
	.byte	W16
	.byte		N08	, Fn2, v112
	.byte	W24
	.byte		N07	, Fn2, v100
	.byte	W08
	.byte			Cn2, v084
	.byte	W08
	.byte			Fn2, v096
	.byte	W08
	.byte			Ds2, v108
	.byte	W08
	.byte	PEND
song015_4_5:
	.byte		N10	, En2, v120
	.byte	W16
	.byte		N07	, En2, v104
	.byte	W08
	.byte		N15	, Bn2
	.byte	W16
	.byte		N08	, En2, v112
	.byte	W24
	.byte		N07	, En2, v100
	.byte	W08
	.byte			Bn1, v084
	.byte	W08
	.byte			Dn2, v096
	.byte	W08
	.byte			Ds2, v108
	.byte	W08
	.byte	PEND
song015_4_6:
	.byte		N10	, En2, v120
	.byte	W16
	.byte		N07	, En2, v104
	.byte	W08
	.byte		N15	, Bn2
	.byte	W16
	.byte		N08	, En2, v112
	.byte	W24
	.byte		N07	, En2, v100
	.byte	W08
	.byte			Bn2, v084
	.byte	W08
	.byte			En3, v096
	.byte	W08
	.byte			Ds3, v108
	.byte	W08
	.byte	PEND
	.byte		N15	, Dn3, v104
	.byte	W96
	.byte	W96
	.byte	PATT	
		.int	song015_4_1
	.byte	PATT	
		.int	song015_4_1
	.byte	PATT	
		.int	song015_4_1
	.byte	PATT	
		.int	song015_4_1
	.byte	PATT	
		.int	song015_4_1
	.byte	PATT	
		.int	song015_4_1
	.byte	PATT	
		.int	song015_4_1
	.byte	PATT	
		.int	song015_4_1
	.byte	PATT	
		.int	song015_4_1
	.byte	PATT	
		.int	song015_4_2
	.byte	PATT	
		.int	song015_4_3
	.byte	PATT	
		.int	song015_4_4
	.byte	PATT	
		.int	song015_4_5
	.byte	PATT	
		.int	song015_4_6
	.byte		N15	, Dn3, v104
	.byte	W96
	.byte	W96
	.byte	PATT	
		.int	song015_4_1
	.byte		N10	, An2, v120
	.byte	W16
	.byte		N07	, An2, v104
	.byte	W08
	.byte		N15	, Cn3
	.byte	W16
	.byte		N08	, An2, v112
	.byte	W24
	.byte		N07	, En2, v100
	.byte	W08
	.byte			An2, v084
	.byte	W08
	.byte			As2, v096
	.byte	W08
	.byte			Bn2, v108
	.byte	W08
song015_4_7:
	.byte		N10	, Cn3, v120
	.byte	W16
	.byte		N07	, Cn3, v104
	.byte	W08
	.byte		N15	, Gn3
	.byte	W16
	.byte		N08	, Cn3, v112
	.byte	W24
	.byte		N07	, Cn3, v100
	.byte	W08
	.byte			Gn2, v084
	.byte	W08
	.byte			As2, v096
	.byte	W08
	.byte			Bn2, v108
	.byte	W08
	.byte	PEND
song015_4_8:
	.byte		N10	, Cn3, v120
	.byte	W16
	.byte		N07	, Cn3, v104
	.byte	W08
	.byte		N15	, Gn3
	.byte	W16
	.byte		N08	, Cn3, v112
	.byte	W24
	.byte		N07	, Cn3, v100
	.byte	W08
	.byte			Gn2, v084
	.byte	W08
	.byte			Cn3, v096
	.byte	W08
	.byte			As2, v108
	.byte	W08
	.byte	PEND
song015_4_9:
	.byte		N10	, Bn2, v120
	.byte	W16
	.byte		N07	, Bn2, v104
	.byte	W08
	.byte		N15	, Fs3
	.byte	W16
	.byte		N08	, Bn2, v112
	.byte	W24
	.byte		N07	, Bn2, v100
	.byte	W08
	.byte			Fs2, v084
	.byte	W08
	.byte			An2, v096
	.byte	W08
	.byte			As2, v108
	.byte	W08
	.byte	PEND
	.byte		N10	, Bn2, v120
	.byte	W16
	.byte		N07	, Bn2, v104
	.byte	W08
	.byte		N15	, Fs3
	.byte	W16
	.byte		N08	, Bn2, v112
	.byte	W24
	.byte		N07	, Bn2, v100
	.byte	W08
	.byte			An2, v084
	.byte	W08
	.byte			As2, v096
	.byte	W08
	.byte			Bn2, v108
	.byte	W08
	.byte	PATT	
		.int	song015_4_7
	.byte	PATT	
		.int	song015_4_8
	.byte	PATT	
		.int	song015_4_9
	.byte		N10	, Bn2, v120
	.byte	W16
	.byte		N07	, Bn2, v104
	.byte	W08
	.byte		N15	, Fs3
	.byte	W16
	.byte		N08	, Bn2, v112
	.byte	W24
	.byte		N07	, Bn2, v100
	.byte	W08
	.byte			Cn3, v084
	.byte	W08
	.byte			Cs3, v096
	.byte	W08
	.byte			Dn3, v108
	.byte	W08
song015_4_10:
	.byte		N10	, Ds3, v120
	.byte	W16
	.byte		N07	, Ds3, v104
	.byte	W08
	.byte		N15	, As3
	.byte	W16
	.byte		N08	, Ds3, v112
	.byte	W24
	.byte		N07	, Ds3, v100
	.byte	W08
	.byte			As2, v084
	.byte	W08
	.byte			Cs3, v096
	.byte	W08
	.byte			Dn3, v108
	.byte	W08
	.byte	PEND
song015_4_11:
	.byte		N10	, Ds3, v120
	.byte	W16
	.byte		N07	, Ds3, v104
	.byte	W08
	.byte		N15	, As3
	.byte	W16
	.byte		N08	, Ds3, v112
	.byte	W24
	.byte		N07	, Ds3, v100
	.byte	W08
	.byte			As2, v084
	.byte	W08
	.byte			Ds3, v096
	.byte	W08
	.byte			Cs3, v108
	.byte	W08
	.byte	PEND
	.byte		N10	, Dn3, v120
	.byte	W16
	.byte		N07	, Dn3, v104
	.byte	W08
	.byte		N15	, An3
	.byte	W16
	.byte		N08	, Dn3, v112
	.byte	W24
	.byte		N07	, Dn3, v100
	.byte	W08
	.byte			An2, v084
	.byte	W08
	.byte			Cn3, v096
	.byte	W08
	.byte			Cs3, v108
	.byte	W08
	.byte		N10	, Dn3, v120
	.byte	W16
	.byte		N07	, Dn3, v104
	.byte	W08
	.byte		N15	, An3
	.byte	W16
	.byte		N08	, Dn3, v112
	.byte	W24
	.byte		N07	, Dn3, v100
	.byte	W08
	.byte			Cn3, v084
	.byte	W08
	.byte			Cs3, v096
	.byte	W08
	.byte			Dn3, v108
	.byte	W08
	.byte	PATT	
		.int	song015_4_10
	.byte	PATT	
		.int	song015_4_11
	.byte		N10	, Dn3, v120
	.byte	W40
	.byte		N07	, Dn3, v084
	.byte	W08
	.byte		N10	, Dn3, v120
	.byte	W16
	.byte		N07	, Ds3, v108
	.byte	W24
	.byte		N10	, En3, v120
	.byte	W08
	.byte	W40
	.byte		N07	, Ds3, v084
	.byte	W08
	.byte			En3, v108
	.byte	W08
	.byte			Ds3
	.byte	W08
	.byte			Dn3
	.byte	W08
	.byte		N15	, Cn3
	.byte	W16
	.byte		N07	, An2
	.byte	W08
	.byte	W16
	.byte			An2, v104
	.byte	W08
	.byte		N15	, Cn3
	.byte	W16
	.byte		N08	, An2, v112
	.byte	W24
	.byte		N07	, An2, v100
	.byte	W08
	.byte			En2, v084
	.byte	W08
	.byte			Gn2, v096
	.byte	W08
	.byte			Gs2, v108
	.byte	W08
	.byte			An2
	.byte	W16
	.byte			An2, v104
	.byte	W08
	.byte		N15	, Cn3
	.byte	W16
	.byte		N08	, An2, v112
	.byte	W24
	.byte		N07	, An2, v100
	.byte	W08
	.byte			En2, v084
	.byte	W08
	.byte			Gn2, v096
	.byte	W08
	.byte			Gs2, v108
	.byte	W08
	.byte	GOTO	
		.int	song015_4_12
	.byte	FINE

	@********************** Track  5 **********************@

	.global song015_5
song015_5:	@ 0x087A5007
	.byte	KEYSH	, 0
	.byte	VOICE	, 87
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte	MOD	, 19
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte	PRIO	, 30
	.byte		N15	, An2, v104
	.byte	W16
	.byte		N07	, Cn3, v084
	.byte	W08
	.byte		N15	, An2, v100
	.byte	W16
	.byte		N10	, En3, v112
	.byte	W24
	.byte		N11	, Ds3
	.byte	W24
	.byte		N07	, Dn3, v100
	.byte	W08
	.byte		N14	, Cn3
	.byte	W16
	.byte		N07	, An2, v076
	.byte	W08
	.byte		N14	, Ds3, v116
	.byte	W16
	.byte		N30	, Dn3, v108
	.byte	W32
	.byte		N15	, Cn3, v088
	.byte	W16
	.byte		N07	, An2, v092
	.byte	W08
	.byte		N11	, Gn2, v108
	.byte	W16
	.byte		N07	, En2, v084
	.byte	W08
	.byte		N15	, Gs2, v104
	.byte	W16
	.byte		N21	, An2, v112
	.byte	W56
	.byte	W96
	.byte	W96
	.byte	W96
song015_5_1:
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.int	song015_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song015_6
song015_6:	@ 0x087A5092
	.byte	KEYSH	, 0
	.byte	VOICE	, 74
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte	MOD	, 19
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte	PRIO	, 30
	.byte		N15	, An2, v104
	.byte	W16
	.byte		N07	, Cn3, v084
	.byte	W08
	.byte		N15	, An2, v100
	.byte	W16
	.byte		N10	, En3, v112
	.byte	W24
	.byte		N11	, Ds3
	.byte	W24
	.byte		N07	, Dn3, v100
	.byte	W08
	.byte		N14	, Cn3
	.byte	W16
	.byte		N07	, An2, v076
	.byte	W08
	.byte		N14	, Ds3, v116
	.byte	W16
	.byte		N30	, Dn3, v108
	.byte	W32
	.byte		N15	, Cn3, v088
	.byte	W16
	.byte		N07	, An2, v092
	.byte	W08
	.byte		N11	, Gn2, v108
	.byte	W16
	.byte		N07	, En2, v084
	.byte	W08
	.byte		N15	, Gs2, v104
	.byte	W16
	.byte		N21	, An2, v112
	.byte	W48
	.byte		N07	, An2, v100
	.byte	W08
	.byte		N14	, Cn3, v096
	.byte	W16
	.byte		N07	, Dn3, v108
	.byte	W08
	.byte		N12	, Ds3, v104
	.byte	W16
	.byte		N21	, En3
	.byte	W24
	.byte		N07	, Gn3, v112
	.byte	W08
	.byte		N15	, Gs3, v116
	.byte	W16
	.byte			An3, v108
	.byte	W08
	.byte	W96
	.byte	W96
song015_6_10:
	.byte	W96
	.byte	W96
song015_6_1:
	.byte	VOL	, v110
	.byte		N15	, En2, v088
	.byte	W16
	.byte			Gs2, v096
	.byte	W16
	.byte			An2, v112
	.byte	W16
	.byte		TIE	, Cn3, v104
	.byte	W13
	.byte	VOL	, v108
	.byte	W01
	.byte		v104
	.byte	W01
	.byte		v099
	.byte	W01
	.byte		v094
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v062
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v047
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v037
	.byte	W01
	.byte		v033
	.byte	W01
	.byte		v031
	.byte	W01
	.byte		v032
	.byte	W01
	.byte		v033
	.byte	W01
	.byte		v035
	.byte	W01
	.byte		v036
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v040
	.byte	W01
	.byte		v041
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v044
	.byte	W01
	.byte		v045
	.byte	W01
	.byte		v046
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v050
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v052
	.byte	W01
	.byte		v053
	.byte	W01
	.byte	PEND
song015_6_2:
	.byte	VOL	, v055
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v073
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v080
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v084
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v087
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v091
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v094
	.byte	W01
	.byte		v095
	.byte	W01
	.byte		v097
	.byte	W01
	.byte		v097
	.byte	W01
	.byte		v099
	.byte	W01
	.byte		v101
	.byte	W01
	.byte		v102
	.byte	W01
	.byte		v103
	.byte	W01
	.byte		v104
	.byte	W01
	.byte		v106
	.byte	W01
	.byte		v107
	.byte	W01
	.byte		v109
	.byte	W01
	.byte		v110
	.byte	W12
	.byte	PEND
	.byte		EOT	, Cn3
	.byte	W18
	.byte		N07	, Dn3, v096
	.byte	W08
	.byte			Cn3, v088
	.byte	W08
	.byte			An2, v104
	.byte	W08
song015_6_3:
	.byte		N15	, Cn3, v104
	.byte	W16
	.byte		N14	, Dn3, v116
	.byte	W24
	.byte		N20	, Cn3
	.byte	W56
	.byte	PEND
	.byte	W96
song015_6_4:
	.byte		N15	, En2, v127
	.byte	W16
	.byte			Gs2, v112
	.byte	W16
	.byte			Cn3, v120
	.byte	W16
	.byte		N02	, An2, v124
	.byte	W02
	.byte			As2, v120
	.byte	W02
	.byte			Bn2, v127
	.byte	W04
	.byte		TIE	, Cn3, v116
	.byte	W14
	.byte	VOL	, v107
	.byte	W01
	.byte		v100
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v052
	.byte	W01
	.byte		v045
	.byte	W01
	.byte		v035
	.byte	W01
	.byte		v028
	.byte	W02
	.byte		v030
	.byte	W01
	.byte		v031
	.byte	W01
	.byte		v032
	.byte	W01
	.byte		v033
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v035
	.byte	W01
	.byte		v036
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v039
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
	.byte	PEND
song015_6_5:
	.byte	VOL	, v046
	.byte	W01
	.byte		v047
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
	.byte		v057
	.byte	W02
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
	.byte		v064
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v065
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
	.byte		v075
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v080
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v084
	.byte	W01
	.byte		v084
	.byte	W01
	.byte		v086
	.byte	W02
	.byte		v087
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v091
	.byte	W01
	.byte		v093
	.byte	W01
	.byte		v094
	.byte	W01
	.byte		v095
	.byte	W01
	.byte		v096
	.byte	W01
	.byte		v097
	.byte	W01
	.byte		v098
	.byte	W01
	.byte		v099
	.byte	W01
	.byte		v101
	.byte	W01
	.byte		v102
	.byte	W01
	.byte		v103
	.byte	W01
	.byte		v103
	.byte	W01
	.byte		v105
	.byte	W01
	.byte		v106
	.byte	W01
	.byte		v107
	.byte	W01
	.byte		v109
	.byte	W01
	.byte		v110
	.byte	W01
	.byte	PEND
	.byte		EOT	, Cn3
	.byte	W13
	.byte		N07	, Cn3, v116
	.byte	W08
	.byte			As2, v092
	.byte	W08
	.byte			An2, v120
	.byte	W08
song015_6_6:
	.byte		N15	, An2, v096
	.byte	W16
	.byte		N13	, An2, v112
	.byte	W80
	.byte	PEND
	.byte	W96
	.byte		N96	, En2, v096
	.byte	W96
song015_6_7:
	.byte		N48	, Bn2, v096
	.byte	W48
	.byte			Gs3
	.byte	W48
	.byte	PEND
song015_6_8:
	.byte		N16	, Fs3, v096
	.byte	W88
	.byte		N08	, An2, v112
	.byte	W08
	.byte	PEND
song015_6_9:
	.byte		N08	, Ds3, v112
	.byte	W08
	.byte			Dn3, v108
	.byte	W08
	.byte			Cn3, v112
	.byte	W08
	.byte		N16	, Dn3, v116
	.byte	W16
	.byte		N08	, Cn3, v112
	.byte	W08
	.byte		N16	, An2, v100
	.byte	W16
	.byte		N08	, En2
	.byte	W08
	.byte		N16	, Gn2, v120
	.byte	W16
	.byte		N32	, An2, v124
	.byte	W08
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.int	song015_6_1
	.byte	PATT	
		.int	song015_6_2
	.byte		EOT	, Cn3
	.byte	W18
	.byte		N07	, Dn3, v096
	.byte	W08
	.byte			Cn3, v088
	.byte	W08
	.byte			An2, v104
	.byte	W08
	.byte	PATT	
		.int	song015_6_3
	.byte	W96
	.byte	PATT	
		.int	song015_6_4
	.byte	PATT	
		.int	song015_6_5
	.byte		EOT	, Cn3
	.byte	W13
	.byte		N07	, Cn3, v116
	.byte	W08
	.byte			As2, v092
	.byte	W08
	.byte			An2, v120
	.byte	W08
	.byte	PATT	
		.int	song015_6_6
	.byte	W96
	.byte		N96	, En2, v096
	.byte	W96
	.byte	PATT	
		.int	song015_6_7
	.byte	PATT	
		.int	song015_6_8
	.byte	PATT	
		.int	song015_6_9
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
	.byte	GOTO	
		.int	song015_6_10
	.byte	FINE

	@********************** Track  7 **********************@

	.global song015_7
song015_7:	@ 0x087A5346
	.byte	KEYSH	, 0
	.byte	VOICE	, 80
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte	MOD	, 19
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte	PRIO	, 30
	.byte		N20	, Gn3, v127
	.byte	W21
	.byte		N03	, Fn3, v084
	.byte	W03
	.byte		N07	, En3, v076
	.byte	W04
	.byte		N08	, Dn3, v064
	.byte	W05
	.byte			Cn3, v040
	.byte	W06
	.byte		N03	, Bn2
	.byte	W06
	.byte			An2, v044
	.byte	W07
	.byte		N04	, Gn2, v020
	.byte	W44
	.byte	W96
	.byte	W96
song015_7_2:
	.byte	W68
	.byte	W01
	.byte		N03	, An1, v072
	.byte		N08	, Bn1, v108
	.byte	W02
	.byte		N06	, Cn2, v096
	.byte	W03
	.byte			Dn2, v104
	.byte	W02
	.byte			En2, v108
	.byte	W02
	.byte		N07	, Fn2, v092
	.byte	W03
	.byte		N06	, Gn2, v096
	.byte	W02
	.byte			An2, v104
	.byte	W02
	.byte			Bn2, v100
	.byte	W03
	.byte		N07	, Cn3
	.byte	W02
	.byte		N08	, Dn3
	.byte	W02
	.byte		N11	, En3, v064
	.byte	W04
	.byte	PEND
song015_7_3:
	.byte		N08	, Fn3, v024
	.byte	W05
	.byte		N03	, Fs3, v104
	.byte	W03
	.byte		TIE	, Gn3, v100
	.byte	W88
	.byte	PEND
	.byte	W44
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N03	, Fs3, v096
	.byte	W04
	.byte		N19	, Gn3, v108
	.byte	W20
	.byte		N03	, Fs3
	.byte	W04
	.byte		N19	, Gn3
	.byte	W20
song015_7_4:
	.byte		N03	, Fs3, v104
	.byte	W04
	.byte		N60	, Gn3, v112
	.byte	W60
	.byte		N05	, Fn3, v068
	.byte	W05
	.byte		N04	, En3, v076
	.byte	W04
	.byte		N02	, Dn3, v088
	.byte	W04
	.byte			Cn3, v076
	.byte	W04
	.byte			Bn2
	.byte	W04
	.byte			An2, v084
	.byte	W03
	.byte			Gn2, v088
	.byte	W04
	.byte			Fn2, v076
	.byte	W04
	.byte	PEND
song015_7_5:
	.byte		N02	, En2, v080
	.byte	W03
	.byte			Dn2, v084
	.byte	W04
	.byte			Cn2, v080
	.byte	W04
	.byte			Bn1
	.byte	W04
	.byte		N03	, An1
	.byte	W04
	.byte			Gn1
	.byte	W04
	.byte		N04	, Fn1, v040
	.byte	W72
	.byte	W01
	.byte	PEND
song015_7_1:
	.byte		N28	, Gn2, v120
	.byte	W40
	.byte		N08	
	.byte	W56
	.byte	PEND
	.byte	PATT	
		.int	song015_7_1
song015_7_6:
	.byte		N28	, Gn2, v120
	.byte	W40
	.byte		N08	
	.byte	W52
	.byte		N05	, En3, v052
	.byte	W04
	.byte	PEND
song015_7_7:
	.byte	W01
	.byte		N13	, Gn3, v116
	.byte	W16
	.byte		N04	, En3, v080
	.byte	W06
	.byte		N15	, An3, v116
	.byte	W16
	.byte		N28	, Gn3, v120
	.byte	W32
	.byte	W02
	.byte		N11	, Gn3, v124
	.byte	W16
	.byte		N28	, Gn3, v127
	.byte	W07
	.byte	PEND
song015_7_8:
	.byte	W20
	.byte		N06	, Fn3, v052
	.byte	W03
	.byte			En3, v060
	.byte	W06
	.byte		N04	, Dn3
	.byte	W08
	.byte		N03	, Cn3, v076
	.byte	W04
	.byte			Bn2, v072
	.byte	W03
	.byte			An2, v068
	.byte	W04
	.byte			Gn2, v060
	.byte	W04
	.byte			Fn2, v044
	.byte	W44
	.byte	PEND
	.byte	PATT	
		.int	song015_7_1
song015_7_9:
	.byte		N22	, Cn3, v120
	.byte	W40
	.byte		N06	
	.byte	W22
	.byte			Cn3, v100
	.byte	W24
	.byte	W01
	.byte		N08	, Cn3, v092
	.byte	W09
	.byte	PEND
song015_7_10:
	.byte		N14	, Ds3, v120
	.byte	W17
	.byte		N04	, Cn3, v052
	.byte	W06
	.byte		N14	, Fn3, v120
	.byte	W15
	.byte		N32	, Ds3, v104
	.byte	W32
	.byte	W02
	.byte		N15	, Cn3, v100
	.byte	W16
	.byte		N84	, Bn2, v124
	.byte	W08
	.byte	PEND
song015_7_11:
	.byte	W76
	.byte	W01
	.byte		N03	, Cn3, v056
	.byte	W03
	.byte			Dn3, v076
	.byte	W03
	.byte			En3, v056
	.byte	W01
	.byte			Fn3, v088
	.byte	W01
	.byte		N02	, Gn3, v116
	.byte	W02
	.byte		N04	, An3, v112
	.byte	W03
	.byte		TIE	, Bn3, v076
	.byte	W06
	.byte	PEND
	.byte	W92
	.byte	W01
	.byte		EOT	
	.byte	W01
	.byte		N22	, An3, v127
	.byte	W02
song015_7_12:
	.byte	W22
	.byte		N03	, Gn3, v068
	.byte	W03
	.byte			Fn3, v076
	.byte	W02
	.byte			En3, v084
	.byte	W03
	.byte			Dn3
	.byte	W02
	.byte			Cn3, v060
	.byte	W03
	.byte		N04	, Bn2, v036
	.byte	W60
	.byte	W01
	.byte	PEND
	.byte	PATT	
		.int	song015_7_2
	.byte	PATT	
		.int	song015_7_3
	.byte	W44
	.byte	W03
	.byte		EOT	, Gn3
	.byte	W01
	.byte		N03	, Fs3, v096
	.byte	W04
	.byte		N19	, Gn3, v108
	.byte	W20
	.byte		N03	, Fs3
	.byte	W04
	.byte		N19	, Gn3
	.byte	W20
	.byte	PATT	
		.int	song015_7_4
	.byte	PATT	
		.int	song015_7_5
	.byte	PATT	
		.int	song015_7_1
	.byte	PATT	
		.int	song015_7_1
	.byte	PATT	
		.int	song015_7_6
	.byte	PATT	
		.int	song015_7_7
	.byte	PATT	
		.int	song015_7_8
	.byte	PATT	
		.int	song015_7_1
	.byte	PATT	
		.int	song015_7_9
	.byte	PATT	
		.int	song015_7_10
	.byte	PATT	
		.int	song015_7_11
	.byte	W92
	.byte	W01
	.byte		EOT	, Bn3
	.byte	W01
	.byte		N22	, An3, v127
	.byte	W02
	.byte	PATT	
		.int	song015_7_12
	.byte	W84
	.byte	W03
	.byte		N09	, Fn3, v060
	.byte	W05
	.byte			Fs3, v084
	.byte	W04
	.byte	W01
	.byte		N84	, Gn3, v104
	.byte	W90
	.byte	W01
	.byte		N09	, Fs3, v080
	.byte	W04
	.byte	W02
	.byte			Gn3, v100
	.byte	W14
	.byte		N10	, Gn3, v124
	.byte	W23
	.byte		N36	
	.byte	W56
	.byte	W01
	.byte	W01
	.byte		TIE	, Gn3, v127
	.byte	W92
	.byte	W03
	.byte	W96
	.byte		EOT	
	.byte	W01
	.byte		TIE	, Fs3, v108
	.byte	W92
	.byte	W03
	.byte	W42
	.byte		EOT	
	.byte	W04
	.byte		N13	, Fs3, v088
	.byte	W18
	.byte		N14	, Fs3, v108
	.byte	W21
	.byte		TIE	, Gn3, v116
	.byte	W11
	.byte	W96
	.byte	W92
	.byte	W02
	.byte		EOT	
	.byte		TIE	, Fs3, v100
	.byte	W02
	.byte	W96
	.byte	W36
	.byte	W03
	.byte		EOT	
	.byte	W09
	.byte		N15	, Gn3, v096
	.byte	W16
	.byte		N07	, Gs3, v116
	.byte	W08
	.byte		N15	, An3, v104
	.byte	W16
	.byte		TIE	, As3, v112
	.byte	W08
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte		TIE	, An3, v100
	.byte	W96
	.byte	W80
	.byte	W03
	.byte		EOT	
	.byte	W13
	.byte		N92	, As3, v108
	.byte	W96
	.byte			As3, v088
	.byte	W92
	.byte	W03
	.byte		N18	, An3, v120
	.byte	W01
	.byte	W44
	.byte	W03
	.byte		N14	, An3, v112
	.byte	W15
	.byte		N11	, As3, v104
	.byte	W24
	.byte		N56	, Bn3, v124
	.byte	W10
	.byte	PATT	
		.int	song015_7_2
	.byte	PATT	
		.int	song015_7_3
	.byte	W44
	.byte	W03
	.byte		EOT	, Gn3
	.byte	W01
	.byte		N03	, Fs3, v096
	.byte	W04
	.byte		N19	, Gn3, v108
	.byte	W20
	.byte		N03	, Fs3
	.byte	W04
	.byte		N19	, Gn3
	.byte	W20
	.byte	GOTO	
		.int	song015_7_4
	.byte	FINE

	@********************** Track  8 **********************@

	.global song015_8
song015_8:	@ 0x087A55B4
	.byte	KEYSH	, 0
	.byte	VOICE	, 10
	.byte	VOL	, v043
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song015_8_12:
	.byte	W96
	.byte	W96
song015_8_1:
	.byte	VOL	, v110
	.byte		N15	, Cn3, v060
	.byte	W16
	.byte			En3, v072
	.byte	W16
	.byte			Cn3, v088
	.byte	W16
	.byte		TIE	, Fs3, v076
	.byte	W13
	.byte	VOL	, v108
	.byte	W01
	.byte		v104
	.byte	W01
	.byte		v099
	.byte	W01
	.byte		v094
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v062
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v047
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v037
	.byte	W01
	.byte		v033
	.byte	W01
	.byte		v031
	.byte	W01
	.byte		v032
	.byte	W01
	.byte		v033
	.byte	W01
	.byte		v035
	.byte	W01
	.byte		v036
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v040
	.byte	W01
	.byte		v041
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v044
	.byte	W01
	.byte		v045
	.byte	W01
	.byte		v046
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v050
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v052
	.byte	W01
	.byte		v053
	.byte	W01
	.byte	PEND
song015_8_2:
	.byte	VOL	, v055
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v073
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v080
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v084
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v087
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v091
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v094
	.byte	W01
	.byte		v095
	.byte	W01
	.byte		v097
	.byte	W01
	.byte		v097
	.byte	W01
	.byte		v099
	.byte	W01
	.byte		v101
	.byte	W01
	.byte		v102
	.byte	W01
	.byte		v103
	.byte	W01
	.byte		v104
	.byte	W01
	.byte		v106
	.byte	W01
	.byte		v107
	.byte	W01
	.byte		v109
	.byte	W01
	.byte		v110
	.byte	W12
	.byte	PEND
	.byte		EOT	, Fs3
	.byte	W18
	.byte		N07	, Dn3, v072
	.byte	W08
	.byte			Cn3, v060
	.byte	W08
	.byte			An2, v076
	.byte	W08
song015_8_3:
	.byte		N15	, Cn3, v076
	.byte	W16
	.byte		N14	, Dn3, v092
	.byte	W24
	.byte		N20	, Cn3
	.byte	W56
	.byte	PEND
	.byte	W96
song015_8_4:
	.byte		N15	, Cn3, v100
	.byte	W16
	.byte			En3, v088
	.byte	W16
	.byte			En3, v092
	.byte	W16
	.byte		N02	, Fn3, v096
	.byte	W02
	.byte			Fs3
	.byte	W02
	.byte			Gn3, v100
	.byte	W04
	.byte		TIE	, Gs3, v092
	.byte	W14
	.byte	VOL	, v107
	.byte	W01
	.byte		v100
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v052
	.byte	W01
	.byte		v045
	.byte	W01
	.byte		v035
	.byte	W01
	.byte		v028
	.byte	W02
	.byte		v030
	.byte	W01
	.byte		v031
	.byte	W01
	.byte		v032
	.byte	W01
	.byte		v033
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v035
	.byte	W01
	.byte		v036
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v039
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
	.byte	PEND
song015_8_5:
	.byte	VOL	, v046
	.byte	W01
	.byte		v047
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
	.byte		v057
	.byte	W02
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
	.byte		v064
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v065
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
	.byte		v075
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v080
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v084
	.byte	W01
	.byte		v084
	.byte	W01
	.byte		v086
	.byte	W02
	.byte		v087
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v091
	.byte	W01
	.byte		v093
	.byte	W01
	.byte		v094
	.byte	W01
	.byte		v095
	.byte	W01
	.byte		v096
	.byte	W01
	.byte		v097
	.byte	W01
	.byte		v098
	.byte	W01
	.byte		v099
	.byte	W01
	.byte		v101
	.byte	W01
	.byte		v102
	.byte	W01
	.byte		v103
	.byte	W01
	.byte		v103
	.byte	W01
	.byte		v105
	.byte	W01
	.byte		v106
	.byte	W01
	.byte		v107
	.byte	W01
	.byte		v109
	.byte	W01
	.byte		v110
	.byte	W01
	.byte	PEND
	.byte		EOT	, Gs3
	.byte	W13
	.byte		N07	, En3, v088
	.byte	W08
	.byte			Dn3, v064
	.byte	W08
	.byte			En3, v092
	.byte	W08
song015_8_6:
	.byte		N15	, Ds3, v072
	.byte	W16
	.byte		N13	, Ds3, v084
	.byte	W80
	.byte	PEND
	.byte	W96
song015_8_7:
	.byte	VOL	, v060
	.byte	W48
	.byte		N72	, Gs3, v096
	.byte	W48
	.byte	PEND
	.byte	W24
	.byte		N48	, En4
	.byte	W72
song015_8_8:
	.byte		N16	, Dn4, v096
	.byte	W88
	.byte		N08	, An2, v112
	.byte	W08
	.byte	PEND
song015_8_9:
	.byte		N08	, Ds3, v112
	.byte	W08
	.byte			Dn3, v108
	.byte	W08
	.byte			Cn3, v112
	.byte	W08
	.byte		N16	, Dn3, v116
	.byte	W16
	.byte		N08	, Cn3, v112
	.byte	W08
	.byte		N16	, An2, v100
	.byte	W16
	.byte		N08	, En2
	.byte	W08
	.byte		N16	, Gn2, v120
	.byte	W16
	.byte		N32	, An2, v124
	.byte	W08
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.int	song015_8_1
	.byte	PATT	
		.int	song015_8_2
	.byte		EOT	, Fs3
	.byte	W18
	.byte		N07	, Dn3, v072
	.byte	W08
	.byte			Cn3, v060
	.byte	W08
	.byte			An2, v076
	.byte	W08
	.byte	PATT	
		.int	song015_8_3
	.byte	W96
	.byte	PATT	
		.int	song015_8_4
	.byte	PATT	
		.int	song015_8_5
	.byte		EOT	, Gs3
	.byte	W13
	.byte		N07	, En3, v088
	.byte	W08
	.byte			Dn3, v064
	.byte	W08
	.byte			En3, v092
	.byte	W08
	.byte	PATT	
		.int	song015_8_6
	.byte	W96
	.byte	PATT	
		.int	song015_8_7
	.byte	W24
	.byte		N48	, En4, v096
	.byte	W72
	.byte	PATT	
		.int	song015_8_8
	.byte	PATT	
		.int	song015_8_9
	.byte	W96
	.byte	W96
	.byte	VOL	, v069
	.byte		N96	, Gn2, v116
	.byte	W02
	.byte	VOL	, v068
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v064
	.byte	W02
	.byte		v064
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v062
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v058
	.byte	W02
	.byte		v058
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v055
	.byte	W01
	.byte		v054
	.byte	W01
	.byte		v053
	.byte	W02
	.byte		v052
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v050
	.byte	W01
	.byte		v049
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v047
	.byte	W02
	.byte		v046
	.byte	W01
	.byte		v045
	.byte	W01
	.byte		v045
	.byte	W01
	.byte		v044
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v041
	.byte	W02
	.byte		v039
	.byte	W09
	.byte		v040
	.byte	W05
	.byte		v041
	.byte	W05
	.byte		v042
	.byte	W05
	.byte		v043
	.byte	W05
	.byte		v044
	.byte	W04
	.byte		v045
	.byte	W05
	.byte		v045
	.byte	W05
	.byte		v046
	.byte	W05
	.byte		v047
	.byte	W05
	.byte		v048
	.byte	W04
	.byte		v049
	.byte		N96	, En3
	.byte	W05
	.byte	VOL	, v050
	.byte	W05
	.byte		v051
	.byte	W05
	.byte		v051
	.byte	W05
	.byte		v052
	.byte	W04
	.byte		v053
	.byte	W05
	.byte		v054
	.byte	W05
	.byte		v055
	.byte	W05
	.byte		v056
	.byte	W05
	.byte		v057
	.byte	W04
	.byte		v058
	.byte	W05
	.byte		v058
	.byte	W05
	.byte		v059
	.byte	W05
	.byte		v060
	.byte	W05
	.byte		v061
	.byte	W04
	.byte		v062
	.byte	W05
	.byte		v063
	.byte	W05
	.byte		v064
	.byte	W05
	.byte		v064
	.byte	W05
	.byte		v065
	.byte	W04
	.byte		v066
	.byte		N32	, Ds3, v127
	.byte	W05
	.byte	VOL	, v067
	.byte	W05
	.byte		v068
	.byte	W01
	.byte		v069
	.byte	W36
	.byte	W01
	.byte		N15	
	.byte	W16
	.byte		N23	, Bn2
	.byte	W24
	.byte		N48	, Fs2
	.byte	W08
	.byte	W96
	.byte	VOL	, v069
	.byte		N96	, En2, v116
	.byte	W02
	.byte	VOL	, v068
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v064
	.byte	W02
	.byte		v064
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v062
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v058
	.byte	W02
	.byte		v058
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v055
	.byte	W01
	.byte		v054
	.byte	W01
	.byte		v053
	.byte	W02
	.byte		v052
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v050
	.byte	W01
	.byte		v049
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v047
	.byte	W02
	.byte		v046
	.byte	W01
	.byte		v045
	.byte	W01
	.byte		v045
	.byte	W01
	.byte		v044
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v041
	.byte	W02
	.byte		v039
	.byte	W09
	.byte		v040
	.byte	W05
	.byte		v041
	.byte	W05
	.byte		v042
	.byte	W05
	.byte		v043
	.byte	W05
	.byte		v044
	.byte	W04
	.byte		v045
	.byte	W05
	.byte		v045
	.byte	W05
	.byte		v046
	.byte	W05
	.byte		v047
	.byte	W05
	.byte		v048
	.byte	W04
	.byte		v049
	.byte		N96	, Cn3
	.byte	W05
	.byte	VOL	, v050
	.byte	W05
	.byte		v051
	.byte	W05
	.byte		v051
	.byte	W05
	.byte		v052
	.byte	W04
	.byte		v053
	.byte	W05
	.byte		v054
	.byte	W05
	.byte		v055
	.byte	W05
	.byte		v056
	.byte	W05
	.byte		v057
	.byte	W04
	.byte		v058
	.byte	W05
	.byte		v058
	.byte	W05
	.byte		v059
	.byte	W05
	.byte		v060
	.byte	W05
	.byte		v061
	.byte	W04
	.byte		v062
	.byte	W05
	.byte		v063
	.byte	W05
	.byte		v064
	.byte	W05
	.byte		v064
	.byte	W05
	.byte		v065
	.byte	W04
	.byte		v066
	.byte		N32	, Bn2, v127
	.byte	W05
	.byte	VOL	, v067
	.byte	W05
	.byte		v068
	.byte	W01
	.byte		v069
	.byte	W36
	.byte	W01
	.byte		N15	
	.byte	W16
	.byte		N23	, Cs3
	.byte	W24
	.byte		N56	, Ds3
	.byte	W08
	.byte	W96
song015_8_10:
	.byte	VOL	, v069
	.byte		N96	, As2, v116
	.byte	W02
	.byte	VOL	, v068
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v064
	.byte	W02
	.byte		v064
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v062
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v058
	.byte	W02
	.byte		v058
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v055
	.byte	W01
	.byte		v054
	.byte	W01
	.byte		v053
	.byte	W02
	.byte		v052
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v050
	.byte	W01
	.byte		v049
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v047
	.byte	W02
	.byte		v046
	.byte	W01
	.byte		v045
	.byte	W01
	.byte		v045
	.byte	W01
	.byte		v044
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v041
	.byte	W02
	.byte		v039
	.byte	W09
	.byte		v040
	.byte	W05
	.byte		v041
	.byte	W05
	.byte		v042
	.byte	W05
	.byte		v043
	.byte	W05
	.byte		v044
	.byte	W04
	.byte		v045
	.byte	W05
	.byte		v045
	.byte	W05
	.byte		v046
	.byte	W05
	.byte		v047
	.byte	W05
	.byte		v048
	.byte	W04
	.byte	PEND
song015_8_11:
	.byte	VOL	, v049
	.byte		N96	, Gn3, v116
	.byte	W05
	.byte	VOL	, v050
	.byte	W05
	.byte		v051
	.byte	W05
	.byte		v051
	.byte	W05
	.byte		v052
	.byte	W04
	.byte		v053
	.byte	W05
	.byte		v054
	.byte	W05
	.byte		v055
	.byte	W05
	.byte		v056
	.byte	W05
	.byte		v057
	.byte	W04
	.byte		v058
	.byte	W05
	.byte		v058
	.byte	W05
	.byte		v059
	.byte	W05
	.byte		v060
	.byte	W05
	.byte		v061
	.byte	W04
	.byte		v062
	.byte	W05
	.byte		v063
	.byte	W05
	.byte		v064
	.byte	W05
	.byte		v064
	.byte	W05
	.byte		v065
	.byte	W04
	.byte	PEND
	.byte		v066
	.byte		N32	, Fs3, v127
	.byte	W05
	.byte	VOL	, v067
	.byte	W05
	.byte		v068
	.byte	W01
	.byte		v069
	.byte	W36
	.byte	W01
	.byte		N15	
	.byte	W16
	.byte		N23	, Dn3
	.byte	W24
	.byte		N48	, An2
	.byte	W08
	.byte	W96
	.byte	PATT	
		.int	song015_8_10
	.byte	PATT	
		.int	song015_8_11
	.byte	VOL	, v066
	.byte		N16	, Fs3, v127
	.byte	W05
	.byte	VOL	, v067
	.byte	W05
	.byte		v068
	.byte	W01
	.byte		v069
	.byte	W36
	.byte	W01
	.byte		N15	
	.byte	W16
	.byte			Gn3
	.byte	W24
	.byte		N54	, Gs3
	.byte	W08
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.int	song015_8_12
	.byte	FINE

	.align 2
	.global song015
song015:	@ 0x087A5A00
	.byte	8		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.int	voicegroup000		@ voicegroup/tone

	.int	song015_1		@ track
	.int	song015_2		@ track
	.int	song015_3		@ track
	.int	song015_4		@ track
	.int	song015_5		@ track
	.int	song015_6		@ track
	.int	song015_7		@ track
	.int	song015_8		@ track
