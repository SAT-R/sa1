	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song038_1
song038_1:	@ 0x087B3B70
	.byte	KEYSH	, 0
	.byte	TEMPO	, 56
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W66
	.byte	W01
	.byte	TEMPO	, 61
	.byte	VOICE	, 127
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 56
	.byte	LFODL	, 0
	.byte	MOD	, 0
	.byte	MODT	, 2
	.byte		N06	, Cn1, v127
	.byte		N18	, En1, v060
	.byte	W18
	.byte		N06	, Cs1, v080
	.byte	W06
	.byte			Cs1, v127
	.byte	W05
	.byte	W01
	.byte			Gn1
	.byte	W06
	.byte			Cn1
	.byte		N06	, Ds1, v060
	.byte	W06
	.byte			Cn1, v127
	.byte		N18	, En1, v060
	.byte	W18
	.byte		N06	, Dn1
	.byte	W06
	.byte			Cs1, v127
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Dn1, v060
	.byte		N06	, Gn1, v127
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte			Cn1
	.byte		N18	, En1, v060
	.byte	W18
	.byte		N06	, Gs1, v080
	.byte	W06
	.byte			Cs1, v127
	.byte	W05
	.byte	W01
	.byte		N06	
	.byte	W06
	.byte			Cn1
	.byte		N06	, Ds1, v060
	.byte	W06
	.byte			Cn1, v127
	.byte		N18	, En1, v060
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte			Dn1, v060
	.byte	W06
	.byte			Cs1, v127
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Cn1
	.byte		N06	, Dn1, v060
	.byte	W06
	.byte			Cs1, v127
	.byte	W06
	.byte			Cn1
	.byte		N96	, Cs2
	.byte	W06
	.byte		N06	, Dn1, v060
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Cn1, v127
	.byte		N06	, Dn1, v048
	.byte	W06
	.byte			Cs1, v127
	.byte	W05
	.byte	W01
	.byte			Cn1
	.byte		N06	, Dn1, v060
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte			En1, v060
	.byte	W06
	.byte			Cn1, v127
	.byte		N06	, Dn1, v060
	.byte	W06
	.byte		N06	
	.byte		N06	, En1
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte			Cn1, v127
	.byte		N06	, Dn1, v048
	.byte	W06
	.byte			Cs1, v127
	.byte	W06
	.byte			Dn1, v060
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte			Cs1, v127
	.byte		N06	, Dn1, v060
	.byte	W06
	.byte			Cn1, v127
	.byte		N06	, Ds1, v048
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Cn1, v127
	.byte		N06	, Dn1, v048
	.byte	W06
	.byte			Cs1, v127
	.byte	W05
song038_1_1:
	.byte	W01
	.byte		N06	, Cn1, v127
	.byte		N06	, Dn1, v048
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			En1
	.byte	W06
	.byte			Cn1, v127
	.byte		N06	, Dn1, v048
	.byte	W06
	.byte			En1
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte			Cn1, v127
	.byte		N06	, Dn1, v048
	.byte	W06
	.byte			Cs1, v127
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Cs1, v127
	.byte		N06	, Dn1, v048
	.byte	W06
	.byte			Cn1, v127
	.byte		N06	, Ds1, v048
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Cn1, v127
	.byte		N06	, Dn1, v048
	.byte	W06
	.byte			Cs1, v127
	.byte	W05
	.byte	PEND
	.byte	PATT	
		mPtr	song038_1_1
	.byte	PATT	
		mPtr	song038_1_1
	.byte	PATT	
		mPtr	song038_1_1
	.byte	PATT	
		mPtr	song038_1_1
	.byte	W01
	.byte		N06	, Cn1, v127
	.byte		N06	, Dn1, v048
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Cn1, v127
	.byte		N06	, En1, v056
	.byte	W24
	.byte			Cs1, v127
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N03	
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Cn1
	.byte		N06	, Ds1, v048
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte		N12	, En1, v056
	.byte	W06
	.byte		N06	, Cn1, v127
	.byte	W06
	.byte			Cs1
	.byte	W05
song038_1_2:
	.byte	W01
	.byte		N06	, Cn1, v127
	.byte		N06	, Dn1, v048
	.byte	W06
	.byte		N12	, En1, v056
	.byte	W12
	.byte		N06	, Cn1, v127
	.byte		N06	, Dn1, v048
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N12	, En1, v056
	.byte	W06
	.byte		N06	, Cn1, v127
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte			Dn1, v048
	.byte	W06
	.byte		N12	, En1, v056
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte			Cn1
	.byte		N06	, Ds1, v048
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte		N12	, En1, v056
	.byte	W06
	.byte		N06	, Cn1, v127
	.byte	W06
	.byte			Cs1
	.byte	W05
	.byte	PEND
	.byte	PATT	
		mPtr	song038_1_2
	.byte	W01
	.byte		N06	, Cn1, v127
	.byte		N06	, Dn1, v048
	.byte	W06
	.byte		N12	, En1, v056
	.byte	W12
	.byte		N06	, Cn1, v127
	.byte		N06	, Dn1, v048
	.byte	W06
	.byte		N02	, Cs1, v127
	.byte		N06	, Dn1, v048
	.byte	W03
	.byte		N02	, Cs1, v127
	.byte	W03
	.byte		N06	
	.byte		N12	, En1, v056
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			An1
	.byte	W06
	.byte			Dn1, v048
	.byte		N06	, Gs1, v127
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			Cn1
	.byte		N06	, En1, v068
	.byte	W24
	.byte			Cn1, v127
	.byte		N06	, Fs1
	.byte	W05
	.byte	W01
	.byte	FINE

	@********************** Track  2 **********************@

	.global song038_2
song038_2:	@ 0x087B3D3D
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W66
	.byte	W01
	.byte	VOICE	, 45
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte		N20	, An1, v124
	.byte	W24
	.byte		N07	, An2, v116
	.byte	W05
	.byte	W13
	.byte		N24	, An1
	.byte	W30
	.byte		N04	, An2, v096
	.byte	W06
	.byte		N05	, An2, v108
	.byte	W06
	.byte		N11	, En2, v100
	.byte	W12
	.byte		N15	, An1, v127
	.byte	W24
	.byte		N06	, An2, v120
	.byte	W05
	.byte	W13
	.byte		N22	, An1
	.byte	W24
	.byte		N05	, An1, v104
	.byte	W06
	.byte		N04	, An2, v108
	.byte	W06
	.byte		N05	, En2, v084
	.byte	W06
	.byte		N11	, An1, v116
	.byte	W12
	.byte		N13	, Dn2, v112
	.byte	W18
	.byte		N12	, Dn2, v116
	.byte	W11
	.byte	W07
	.byte		N28	, Dn2, v108
	.byte	W30
	.byte		N04	, Dn2, v088
	.byte	W06
	.byte			An1, v108
	.byte	W06
	.byte		N05	, An1, v124
	.byte	W06
	.byte		N11	, Bn1, v096
	.byte	W12
	.byte		N13	, Dn2, v108
	.byte	W18
	.byte		N09	, Dn2, v088
	.byte	W11
	.byte	W07
	.byte		N48	, Dn2, v104
	.byte	W60
	.byte		N14	, Dn2, v120
	.byte	W18
	.byte		N12	, Dn2, v104
	.byte	W11
	.byte	W07
	.byte		N28	, Dn2, v108
	.byte	W30
	.byte		N05	, Dn2, v100
	.byte	W06
	.byte			An1, v116
	.byte	W06
	.byte			An1, v124
	.byte	W06
	.byte		N11	, Dn2, v116
	.byte	W12
	.byte		N14	, Cn2, v108
	.byte	W18
	.byte		N10	, Cn2, v080
	.byte	W11
	.byte	W07
	.byte		N36	, Cn2, v108
	.byte	W48
	.byte		N08	, Cn2, v100
	.byte	W12
	.byte		N11	, Bn1, v116
	.byte	W18
	.byte			Bn1, v104
	.byte	W11
	.byte	W07
	.byte		N28	, Bn1, v108
	.byte	W30
	.byte		N05	, Bn1, v088
	.byte	W06
	.byte			Fs1, v108
	.byte	W06
	.byte			Bn1, v100
	.byte	W06
	.byte		N10	, Fs1, v120
	.byte	W12
	.byte		N14	, En1, v116
	.byte	W18
	.byte		N08	, En1, v108
	.byte	W11
	.byte	W07
	.byte		N28	, En1, v116
	.byte	W30
	.byte		N05	, En1, v120
	.byte	W06
	.byte			Bn1, v100
	.byte	W06
	.byte			En2, v096
	.byte	W06
	.byte		N11	, En1, v116
	.byte	W12
	.byte		N10	, An1, v124
	.byte	W18
	.byte		N06	, An1, v127
	.byte	W11
	.byte	W07
	.byte		N32	
	.byte	W36
	.byte		N11	, En2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N10	, As2, v124
	.byte	W18
	.byte		N06	, As2, v127
	.byte	W11
	.byte	W07
	.byte		N32	
	.byte	W48
	.byte		N11	
	.byte	W12
	.byte		N10	, Cn3, v124
	.byte	W18
	.byte		N06	, Cn3, v127
	.byte	W11
	.byte	W07
	.byte		N32	
	.byte	W48
	.byte		N11	
	.byte	W12
	.byte		N10	, Dn3, v124
	.byte	W18
	.byte		N06	, Dn3, v127
	.byte	W11
	.byte	W07
	.byte		N32	
	.byte	W48
	.byte		N11	, An2
	.byte	W12
	.byte			Dn3
	.byte	W24
	.byte			Dn2
	.byte	W05
	.byte	W06
	.byte	FINE

	@********************** Track  3 **********************@

	.global song038_3
song038_3:	@ 0x087B3E49
	.byte	KEYSH	, 0
	.byte	VOICE	, 13
	.byte	MOD	, 0
	.byte	VOL	, v028
	.byte	PAN	, c_v
	.byte	BENDR	, 12
	.byte	BEND	, c_v+63
	.byte		N96	, Gs3, v127
	.byte	W16
	.byte	BEND	, c_v+63
	.byte	W01
	.byte		c_v+60
	.byte	W01
	.byte		c_v+57
	.byte	W01
	.byte		c_v+50
	.byte	W01
	.byte		c_v+46
	.byte	W01
	.byte		c_v+43
	.byte	W01
	.byte		c_v+36
	.byte	W01
	.byte		c_v+32
	.byte	W01
	.byte		c_v+29
	.byte	W01
	.byte		c_v+22
	.byte	W01
	.byte		c_v+18
	.byte	W01
	.byte		c_v+15
	.byte	W01
	.byte		c_v+8
	.byte	W01
	.byte		c_v+4
	.byte	W01
	.byte		c_v
	.byte	W23
	.byte		c_v
	.byte	W01
	.byte		c_v+3
	.byte	W01
	.byte		c_v+9
	.byte	W01
	.byte		c_v+12
	.byte	W01
	.byte		c_v+15
	.byte	W01
	.byte		c_v+21
	.byte	W01
	.byte		c_v+24
	.byte	W01
	.byte		c_v+27
	.byte	W01
	.byte		c_v+34
	.byte	W01
	.byte		c_v+37
	.byte	W01
	.byte		c_v+40
	.byte	W01
	.byte		c_v+46
	.byte	W01
	.byte		c_v+49
	.byte	W01
	.byte		c_v+52
	.byte	W01
	.byte		c_v+59
	.byte	W01
	.byte		c_v+63
	.byte	W28
	.byte		N96	, An3
	.byte	W21
	.byte	BEND	, c_v+63
	.byte	W01
	.byte		c_v+60
	.byte	W01
	.byte		c_v+53
	.byte	W01
	.byte		c_v+50
	.byte	W01
	.byte		c_v+46
	.byte	W01
	.byte		c_v+39
	.byte	W01
	.byte		c_v+36
	.byte	W01
	.byte		c_v+32
	.byte	W01
	.byte		c_v+25
	.byte	W01
	.byte		c_v+22
	.byte	W01
	.byte		c_v+18
	.byte	W01
	.byte		c_v+11
	.byte	W01
	.byte		c_v+8
	.byte	W01
	.byte		c_v+4
	.byte	W01
	.byte		c_v
	.byte	W24
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte		c_v+5
	.byte	W02
	.byte		c_v+11
	.byte	W01
	.byte		c_v+17
	.byte	W02
	.byte		c_v+23
	.byte	W01
	.byte		c_v+29
	.byte	W02
	.byte		c_v+35
	.byte	W01
	.byte		c_v+41
	.byte	W02
	.byte		c_v+47
	.byte	W01
	.byte		c_v+53
	.byte	W02
	.byte		c_v+59
	.byte	W01
	.byte		c_v+63
	.byte	W20
	.byte		N84	, As3
	.byte	W12
	.byte	VOL	, v028
	.byte	W01
	.byte		v026
	.byte	W01
	.byte		v025
	.byte	W01
	.byte		v023
	.byte	W01
	.byte		v021
	.byte	W01
	.byte		v020
	.byte	W01
	.byte		v018
	.byte	W01
	.byte		v017
	.byte	W01
	.byte		v016
	.byte	W01
	.byte		v014
	.byte	W01
	.byte		v012
	.byte	W02
	.byte	MOD	, 7
	.byte	W03
	.byte	VOL	, v013
	.byte	W02
	.byte		v014
	.byte	W02
	.byte		v015
	.byte	W02
	.byte		v016
	.byte	W03
	.byte		v017
	.byte	W02
	.byte		v017
	.byte	W02
	.byte		v018
	.byte	W02
	.byte		v019
	.byte	W02
	.byte		v020
	.byte	W03
	.byte		v021
	.byte	W02
	.byte		v022
	.byte	W02
	.byte		v023
	.byte	W02
	.byte		v024
	.byte	W02
	.byte		v025
	.byte	W03
	.byte		v026
	.byte	W02
	.byte		v028
	.byte	W36
	.byte	W96
	.byte	W66
	.byte	W01
	.byte		v066
	.byte	BEND	, c_v
	.byte		N03	, An1, v088
	.byte	W03
	.byte			Bn1
	.byte	W01
	.byte	MOD	, 2
	.byte	W02
	.byte		N03	, Cs2, v092
	.byte	W03
	.byte			En2, v096
	.byte	W03
	.byte			An2, v100
	.byte	W03
	.byte			Bn2
	.byte	W03
	.byte			Cs3, v104
	.byte	W03
	.byte			En3, v108
	.byte	W03
	.byte			An3, v112
	.byte	W03
	.byte			Bn3
	.byte	W02
	.byte	W01
	.byte			Cs4, v116
	.byte	W03
	.byte			En4, v120
	.byte	W03
	.byte			An4, v124
	.byte	W03
	.byte			Bn4
	.byte	W03
	.byte			Cs5, v127
	.byte	W03
	.byte			En5
	.byte	W03
	.byte			Dn5
	.byte	W03
	.byte			Bn4
	.byte	W03
	.byte			An4, v124
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte			Dn4, v120
	.byte	W03
	.byte			Bn3
	.byte	W03
	.byte			An3
	.byte	W03
	.byte			Gn3, v116
	.byte	W03
	.byte			Dn3
	.byte	W03
	.byte			Bn2, v112
	.byte	W03
	.byte			An2
	.byte	W03
	.byte			Gn2, v108
	.byte	W03
	.byte			Dn2
	.byte	W03
	.byte			Bn1
	.byte	W03
	.byte			An1, v104
	.byte	W03
	.byte			Gn1
	.byte	W03
	.byte			Fs1, v092
	.byte	W03
	.byte			An1
	.byte	W03
	.byte			Dn2, v096
	.byte	W03
	.byte			En2
	.byte	W03
	.byte			Fs2, v100
	.byte	W03
	.byte			An2, v104
	.byte	W03
	.byte			Dn3
	.byte	W03
	.byte			En3, v108
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			An3, v112
	.byte	W02
	.byte	W01
	.byte			Dn4, v116
	.byte	W03
	.byte			En4
	.byte	W03
	.byte			Fs4, v120
	.byte	W03
	.byte			An4
	.byte	W03
	.byte			Dn5, v124
	.byte	W03
	.byte			Fs5
	.byte	W03
	.byte			En5, v127
	.byte	W03
	.byte			Cs5
	.byte	W03
	.byte			Bn4, v124
	.byte	W03
	.byte			An4
	.byte	W03
	.byte			En4, v120
	.byte	W03
	.byte			Cs4
	.byte	W03
	.byte			Bn3
	.byte	W03
	.byte			An3, v116
	.byte	W03
	.byte			En3
	.byte	W03
	.byte			Cs3, v112
	.byte	W03
	.byte			Bn2
	.byte	W03
	.byte			An2, v108
	.byte	W03
	.byte			En2
	.byte	W03
	.byte			Cs2, v104
	.byte	W03
	.byte			Bn1
	.byte	W03
	.byte			An1
	.byte	W32
	.byte	W66
	.byte	W01
	.byte	VOL	, v056
	.byte	W28
	.byte	W01
	.byte	W19
	.byte		N05	, Gn3, v116
	.byte	W06
	.byte			Fs3
	.byte	W12
	.byte		N04	, Dn3, v108
	.byte	W12
	.byte			Bn2, v068
	.byte	W12
	.byte		N80	, An2, v076
	.byte	W32
	.byte	W03
	.byte	W96
	.byte	W07
	.byte		N06	, Gn3, v124
	.byte	W06
	.byte			Cn4, v112
	.byte	W06
	.byte			Cn4, v116
	.byte	W06
	.byte			Dn4
	.byte	W12
	.byte		N24	, En4, v124
	.byte	W56
	.byte	W03
	.byte	W96
	.byte	W66
	.byte	W01
	.byte	VOL	, v094
	.byte	W28
	.byte	W01
	.byte	W30
	.byte	W01
	.byte		N04	, An1, v092
	.byte	W06
	.byte		N06	, Bn1, v108
	.byte	W12
	.byte		N05	, Dn2, v116
	.byte	W12
	.byte		N04	, En2, v108
	.byte	W06
	.byte		N88	, As2, v100
	.byte	W28
	.byte	W01
	.byte	W66
	.byte	W01
	.byte		N76	, Cn3
	.byte	W28
	.byte	W01
	.byte	W54
	.byte	W01
	.byte		N11	
	.byte	W12
	.byte		N76	, Dn3
	.byte	W28
	.byte	W01
	.byte	W66
	.byte	W01
	.byte		N10	
	.byte	W24
	.byte			Dn2
	.byte	W05
	.byte	W06
	.byte	FINE

	@********************** Track  4 **********************@

	.global song038_4
song038_4:	@ 0x087B4021
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W66
	.byte	W01
	.byte	VOICE	, 74
	.byte	VOL	, v037
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 31
	.byte	LFODL	, 22
	.byte	MOD	, 0
	.byte	MODT	, 0
	.byte		N40	, Cs3, v124
	.byte		N40	, En3
	.byte		N40	, An3
	.byte	W07
	.byte	VOL	, v094
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v069
	.byte	W01
	.byte		v061
	.byte	W02
	.byte		v063
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v073
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v080
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		v084
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v089
	.byte	W01
	.byte		v091
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v094
	.byte	W07
	.byte		N52	, Bn2
	.byte		N52	, Dn3
	.byte		N52	, Gn3
	.byte	W05
	.byte	VOL	, v094
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v063
	.byte	W02
	.byte		v064
	.byte	W01
	.byte		v065
	.byte	W02
	.byte		v066
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v068
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
	.byte		v077
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v080
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v084
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v087
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v089
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v091
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v094
	.byte	W06
	.byte		N40	, An2
	.byte		N40	, Dn3
	.byte		N40	, Fs3
	.byte	W07
	.byte	VOL	, v093
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v084
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v073
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v080
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v087
	.byte	W01
	.byte		v089
	.byte	W01
	.byte		v091
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v094
	.byte	W07
	.byte		N48	, An2, v108
	.byte		N48	, Cs3
	.byte		N48	, En3
	.byte	W08
	.byte	VOL	, v093
	.byte	W01
	.byte		v091
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v063
	.byte	W02
	.byte		v064
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v066
	.byte	W02
	.byte		v067
	.byte	W01
	.byte		v068
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
	.byte	W02
	.byte		v073
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v078
	.byte	W02
	.byte		v079
	.byte	W01
	.byte		v080
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v084
	.byte	W01
	.byte		v085
	.byte	W02
	.byte		v085
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v087
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v089
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v091
	.byte	W02
	.byte		v092
	.byte	W01
	.byte		v094
	.byte	W24
	.byte	W02
song038_4_1:
	.byte	W66
	.byte	W01
	.byte	VOL	, v094
	.byte	W28
	.byte	W01
	.byte	PEND
	.byte	W19
	.byte		N05	, Gn3, v116
	.byte	W06
	.byte			Fs3
	.byte	W12
	.byte		N04	, Dn3, v108
	.byte	W12
	.byte			Bn2, v068
	.byte	W12
	.byte		N80	, An2, v076
	.byte	W32
	.byte	W03
	.byte	W96
	.byte	W07
	.byte		N06	, Gn2, v124
	.byte	W06
	.byte			Cn3, v112
	.byte	W06
	.byte			En3, v116
	.byte	W06
	.byte			Fs3
	.byte	W12
	.byte		N24	, Gn3, v124
	.byte	W56
	.byte	W03
	.byte	W96
	.byte	PATT	
		mPtr	song038_4_1
	.byte	W30
	.byte	W01
	.byte		N04	, An2, v092
	.byte	W06
	.byte		N06	, Bn2, v108
	.byte	W12
	.byte		N05	, Dn3, v116
	.byte	W12
	.byte		N04	, En3, v108
	.byte	W06
	.byte		N88	, Dn3, v100
	.byte		N88	, Fn3
	.byte	W28
	.byte	W01
	.byte	W66
	.byte	W01
	.byte		N76	, En3
	.byte		N76	, Gn3
	.byte	W28
	.byte	W01
	.byte	W54
	.byte	W01
	.byte		N11	, En3
	.byte		N11	, Gn3
	.byte	W12
	.byte		N76	, Fs3
	.byte		N76	, An3
	.byte	W28
	.byte	W01
	.byte	W66
	.byte	W01
	.byte		N10	, Fs3
	.byte		N10	, An3
	.byte	W24
	.byte			Dn1
	.byte		N10	, Dn2
	.byte	W05
	.byte	W06
	.byte	FINE

	@********************** Track  5 **********************@

	.global song038_5
song038_5:	@ 0x087B41E8
	.byte	KEYSH	, 0
	.byte	VOICE	, 2
	.byte	VOL	, v000
	.byte	PAN	, c_v
	.byte	BENDR	, 33
	.byte	LFOS	, 47
	.byte	LFODL	, 0
	.byte	MOD	, 0
	.byte	MODT	, 0
	.byte	BEND	, c_v+63
	.byte		TIE	, Cn4, v124
	.byte	W01
	.byte	VOL	, v000
	.byte	W01
	.byte		v002
	.byte	W01
	.byte		v003
	.byte	BEND	, c_v+62
	.byte	W01
	.byte	VOL	, v005
	.byte	W01
	.byte		v006
	.byte	W01
	.byte		v008
	.byte	BEND	, c_v+60
	.byte	W01
	.byte	VOL	, v009
	.byte	W01
	.byte		v011
	.byte	W01
	.byte		v012
	.byte	BEND	, c_v+58
	.byte	W01
	.byte	VOL	, v014
	.byte	W01
	.byte		v015
	.byte	W01
	.byte		v017
	.byte	BEND	, c_v+56
	.byte	W01
	.byte	VOL	, v017
	.byte	W01
	.byte		v019
	.byte	W01
	.byte		v020
	.byte	BEND	, c_v+54
	.byte	W01
	.byte	VOL	, v022
	.byte	W01
	.byte		v023
	.byte	W01
	.byte		v025
	.byte	BEND	, c_v+52
	.byte	W01
	.byte	VOL	, v026
	.byte	W01
	.byte		v027
	.byte	W01
	.byte		v028
	.byte	BEND	, c_v+50
	.byte	W01
	.byte	VOL	, v030
	.byte	W01
	.byte		v031
	.byte	W01
	.byte		v033
	.byte	BEND	, c_v+48
	.byte	W01
	.byte	VOL	, v034
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v036
	.byte	BEND	, c_v+46
	.byte	W01
	.byte	VOL	, v037
	.byte	W01
	.byte		v039
	.byte	W01
	.byte		v040
	.byte	BEND	, c_v+44
	.byte	W01
	.byte	VOL	, v042
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v045
	.byte	BEND	, c_v+42
	.byte	W01
	.byte	VOL	, v046
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v049
	.byte	BEND	, c_v+40
	.byte	W01
	.byte	VOL	, v051
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v053
	.byte	BEND	, c_v+38
	.byte	W02
	.byte	VOL	, v055
	.byte	W01
	.byte		v056
	.byte	BEND	, c_v+36
	.byte	W01
	.byte	VOL	, v058
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v061
	.byte	BEND	, c_v+34
	.byte	W01
	.byte	VOL	, v063
	.byte	W02
	.byte	BEND	, c_v+32
	.byte	W03
	.byte		c_v+30
	.byte	W03
	.byte		c_v+28
	.byte	W02
	.byte	VOL	, v062
	.byte	W01
	.byte	BEND	, c_v+26
	.byte	W03
	.byte		c_v+24
	.byte	W01
	.byte	VOL	, v061
	.byte	W02
	.byte	BEND	, c_v+22
	.byte	W03
	.byte	VOL	, v060
	.byte	BEND	, c_v+21
	.byte	W03
	.byte		c_v+19
	.byte	W02
	.byte	VOL	, v059
	.byte	W01
	.byte	BEND	, c_v+17
	.byte	W03
	.byte		c_v+15
	.byte	W01
	.byte	VOL	, v058
	.byte	W02
	.byte	BEND	, c_v+13
	.byte	W03
	.byte	VOL	, v057
	.byte	BEND	, c_v+11
	.byte	W03
	.byte		c_v+9
	.byte	W02
	.byte	VOL	, v056
	.byte	W01
	.byte	BEND	, c_v+7
	.byte	W03
	.byte	VOL	, v055
	.byte	BEND	, c_v+5
	.byte	W03
	.byte		c_v+3
	.byte	W02
	.byte	VOL	, v054
	.byte	W01
	.byte	BEND	, c_v+1
	.byte	W03
	.byte		c_v-1
	.byte	W01
	.byte	VOL	, v053
	.byte	W02
	.byte	BEND	, c_v-3
	.byte	W03
	.byte	VOL	, v052
	.byte	BEND	, c_v-5
	.byte	W03
	.byte		c_v-7
	.byte	W02
	.byte	VOL	, v051
	.byte	W01
	.byte	BEND	, c_v-9
	.byte	W03
	.byte		c_v-11
	.byte	W01
	.byte	VOL	, v051
	.byte	W02
	.byte	BEND	, c_v-13
	.byte	W03
	.byte	VOL	, v050
	.byte	BEND	, c_v-15
	.byte	W03
	.byte		c_v-17
	.byte	W02
	.byte	VOL	, v049
	.byte	W01
	.byte	BEND	, c_v-19
	.byte	W03
	.byte		c_v-21
	.byte	W01
	.byte	VOL	, v048
	.byte	W02
	.byte	BEND	, c_v-22
	.byte	W03
	.byte	VOL	, v047
	.byte	BEND	, c_v-24
	.byte	W03
	.byte		c_v-26
	.byte	W01
	.byte	VOL	, v046
	.byte	W02
	.byte	BEND	, c_v-28
	.byte	W03
	.byte	VOL	, v045
	.byte	BEND	, c_v-30
	.byte	W03
	.byte		c_v-32
	.byte	W02
	.byte	VOL	, v044
	.byte	W01
	.byte	BEND	, c_v-34
	.byte	W03
	.byte		c_v-36
	.byte	W01
	.byte	VOL	, v043
	.byte	W02
	.byte	BEND	, c_v-38
	.byte	W03
	.byte	VOL	, v042
	.byte	BEND	, c_v-40
	.byte	W03
	.byte		c_v-42
	.byte	W02
	.byte	VOL	, v041
	.byte	W01
	.byte	BEND	, c_v-44
	.byte	W03
	.byte		c_v-46
	.byte	W01
	.byte	VOL	, v040
	.byte	W02
	.byte	BEND	, c_v-48
	.byte	W03
	.byte	VOL	, v038
	.byte	BEND	, c_v-50
	.byte	W02
	.byte	VOL	, v037
	.byte	W01
	.byte	BEND	, c_v-52
	.byte	W01
	.byte	VOL	, v036
	.byte	W01
	.byte		v035
	.byte	W01
	.byte		v034
	.byte	BEND	, c_v-54
	.byte	W01
	.byte	VOL	, v034
	.byte	W01
	.byte		v033
	.byte	W01
	.byte		v032
	.byte	BEND	, c_v-56
	.byte	W01
	.byte	VOL	, v031
	.byte	W02
	.byte		v030
	.byte	BEND	, c_v-58
	.byte	W01
	.byte	VOL	, v029
	.byte	W01
	.byte		v028
	.byte	W01
	.byte		v027
	.byte	BEND	, c_v-60
	.byte	W01
	.byte	VOL	, v026
	.byte	W01
	.byte		v025
	.byte	W01
	.byte	BEND	, c_v-62
	.byte	W01
	.byte	VOL	, v024
	.byte	W01
	.byte		v023
	.byte	W01
	.byte		v022
	.byte	BEND	, c_v-64
	.byte	W01
	.byte	VOL	, v021
	.byte	W01
	.byte		v020
	.byte	W01
	.byte		v019
	.byte	W01
	.byte		v018
	.byte	W02
	.byte		v017
	.byte	W01
	.byte		v017
	.byte	W01
	.byte		v016
	.byte	W01
	.byte		v015
	.byte	W01
	.byte		v014
	.byte	W01
	.byte		v013
	.byte	W01
	.byte		v012
	.byte	W02
	.byte		v011
	.byte	W01
	.byte		v010
	.byte	W01
	.byte		v009
	.byte	W01
	.byte		v008
	.byte	W01
	.byte		v007
	.byte	W01
	.byte		v006
	.byte	W02
	.byte		EOT	
	.byte	VOL	, v005
	.byte	W01
	.byte		v004
	.byte	W01
	.byte		v003
	.byte	W01
	.byte		v002
	.byte	W01
	.byte		v001
	.byte	W01
	.byte		v000
	.byte	W01
	.byte		v000
	.byte	W66
	.byte	W24
	.byte		v072
	.byte	MOD	, 18
	.byte	W02
	.byte	BEND	, c_v+60
	.byte	W01
	.byte		c_v+57
	.byte	W01
	.byte		c_v+54
	.byte		N30	, Fs1
	.byte	W01
	.byte	BEND	, c_v+48
	.byte	W01
	.byte		c_v+45
	.byte	W01
	.byte		c_v+42
	.byte	W01
	.byte	VOL	, v072
	.byte	BEND	, c_v+36
	.byte	W01
	.byte	VOL	, v068
	.byte	BEND	, c_v+33
	.byte	W01
	.byte	VOL	, v065
	.byte	BEND	, c_v+30
	.byte	W01
	.byte	VOL	, v063
	.byte	BEND	, c_v+24
	.byte	W01
	.byte	VOL	, v059
	.byte	BEND	, c_v+21
	.byte	W01
	.byte	VOL	, v055
	.byte	BEND	, c_v+18
	.byte	W01
	.byte	VOL	, v052
	.byte	BEND	, c_v+12
	.byte	W01
	.byte	VOL	, v049
	.byte	BEND	, c_v+9
	.byte	W01
	.byte	VOL	, v045
	.byte	BEND	, c_v+6
	.byte	W01
	.byte	VOL	, v042
	.byte	BEND	, c_v
	.byte	W01
	.byte	VOL	, v038
	.byte	BEND	, c_v-3
	.byte	W01
	.byte	VOL	, v034
	.byte	BEND	, c_v-6
	.byte	W01
	.byte	VOL	, v033
	.byte	BEND	, c_v-12
	.byte	W01
	.byte	VOL	, v029
	.byte	BEND	, c_v-15
	.byte	W01
	.byte	VOL	, v025
	.byte	BEND	, c_v-18
	.byte	W01
	.byte	VOL	, v022
	.byte	BEND	, c_v-24
	.byte	W01
	.byte	VOL	, v018
	.byte	BEND	, c_v-25
	.byte	W01
	.byte	VOL	, v015
	.byte	W01
	.byte		v012
	.byte	W01
	.byte		v008
	.byte	W01
	.byte		v004
	.byte	W01
	.byte		v002
	.byte	W01
	.byte		v000
	.byte	W42
	.byte	W66
	.byte	W01
	.byte	VOICE	, 2
	.byte	VOL	, v037
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 23
	.byte	LFODL	, 22
	.byte	MOD	, 4
	.byte	MODT	, 0
	.byte	W28
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W66
	.byte	W01
	.byte	BEND	, c_v
	.byte		N92	, Dn4, v127
	.byte	W28
	.byte	W01
	.byte	W66
	.byte	W01
	.byte		N80	, En4
	.byte	W28
	.byte	W01
	.byte	W66
	.byte	W01
	.byte		N22	, Gn3
	.byte	W24
	.byte		N16	, Dn4
	.byte	W05
	.byte	W13
	.byte		N14	, Cs4
	.byte	W16
	.byte		N01	, Cn4, v120
	.byte	W02
	.byte			Bn3, v108
	.byte	W02
	.byte			As3, v112
	.byte	W02
	.byte			An3, v096
	.byte	W02
	.byte			Gs3
	.byte	W02
	.byte			Gn3, v104
	.byte	W02
	.byte			Fs3, v056
	.byte	W24
	.byte	W02
	.byte	VOL	, v047
	.byte	BEND	, c_v
	.byte		N03	, As1, v127
	.byte	W03
	.byte			Cn2
	.byte	W03
	.byte			Dn2
	.byte	W03
	.byte			Fn2
	.byte	W03
	.byte			As2
	.byte	W03
	.byte			Cn3
	.byte	W03
	.byte			Dn3
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			As3
	.byte	W03
	.byte			Cn4
	.byte	W02
	.byte	W01
	.byte			Dn4
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			As4
	.byte	W03
	.byte			Cn5
	.byte	W03
	.byte			Dn5
	.byte	W03
	.byte			Fn5
	.byte	W03
	.byte			As5
	.byte	W03
	.byte			Fn5
	.byte	W03
	.byte			Dn5
	.byte	W03
	.byte			Cn5
	.byte	W03
	.byte			As4
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			Cn4
	.byte	W03
	.byte			As3
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			Dn3
	.byte	W03
	.byte			Cn3
	.byte	W03
	.byte			As2
	.byte	W03
	.byte			Fn2
	.byte	W03
	.byte			Dn2
	.byte	W03
	.byte			Cn2
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte			Dn2
	.byte	W03
	.byte			En2
	.byte	W03
	.byte			Gn2
	.byte	W03
	.byte			Cn3
	.byte	W03
	.byte			Dn3
	.byte	W03
	.byte			En3
	.byte	W03
	.byte			Gn3
	.byte	W03
	.byte			Cn4
	.byte	W03
	.byte			Dn4
	.byte	W02
	.byte	W01
	.byte			En4
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte			Cn5
	.byte	W03
	.byte			Dn5
	.byte	W03
	.byte			En5
	.byte	W03
	.byte			Gn5
	.byte	W03
	.byte			Cn6
	.byte	W03
	.byte			Gn5
	.byte	W03
	.byte			En5
	.byte	W03
	.byte			Dn5
	.byte	W03
	.byte			Cn5
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte			En4
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			Cn4
	.byte	W03
	.byte			Gn3
	.byte	W03
	.byte			En3
	.byte	W03
	.byte			Dn3
	.byte	W03
	.byte			Cn3
	.byte	W03
	.byte			Gn2
	.byte	W03
	.byte			En2
	.byte	W03
	.byte			Cn2
	.byte	W03
	.byte			Dn2
	.byte	W03
	.byte			En2
	.byte	W03
	.byte			Fs2
	.byte	W03
	.byte			An2
	.byte	W03
	.byte			Dn3
	.byte	W03
	.byte			En3
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			An3
	.byte	W03
	.byte			An2
	.byte	W03
	.byte			Dn3
	.byte	W02
	.byte	W01
	.byte			En3
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			An3
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			En4
	.byte	W03
	.byte			Fs4
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			En4
	.byte	W03
	.byte			Fs4
	.byte	W03
	.byte			An4
	.byte	W03
	.byte			Dn5
	.byte	W03
	.byte			En5
	.byte	W03
	.byte			Fs5
	.byte	W03
	.byte			An5
	.byte	W03
	.byte			An4
	.byte	W03
	.byte			Dn5
	.byte	W03
	.byte			En5
	.byte	W03
	.byte			Fs5
	.byte	W03
	.byte			An5
	.byte	W03
	.byte			Dn6
	.byte	W03
	.byte			En6
	.byte	W03
	.byte			Fs6
	.byte	W03
	.byte	FINE

	@********************** Track  6 **********************@

	.global song038_6
song038_6:	@ 0x087B4531
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W66
	.byte	W01
	.byte	VOICE	, 80
	.byte	VOL	, v103
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 23
	.byte	LFODL	, 22
	.byte	MOD	, 0
	.byte	MODT	, 0
	.byte		N23	, En3, v127
	.byte	W24
	.byte	W02
	.byte		N06	
	.byte	W03
	.byte	W15
	.byte		N52	, Dn3
	.byte	W54
	.byte		N23	, An2
	.byte	W24
	.byte	W02
	.byte		N09	
	.byte	W01
	.byte	W15
	.byte		N52	, En2
	.byte	W52
	.byte		N17	, An2
	.byte	W18
	.byte		N08	
	.byte	W11
	.byte	W07
	.byte		N56	
	.byte	W60
	.byte		N17	, Dn3
	.byte	W18
	.byte		N08	
	.byte	W11
	.byte	W07
	.byte		N56	
	.byte	W60
	.byte		N17	, An2
	.byte	W18
	.byte		N08	
	.byte	W11
	.byte	W07
	.byte		N32	
	.byte	W36
	.byte		N11	
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte		N17	, Gn2
	.byte	W18
	.byte		N08	
	.byte	W11
	.byte	W07
	.byte		N56	
	.byte	W60
	.byte		N17	, An2
	.byte	W18
	.byte		N08	
	.byte	W11
	.byte	W07
	.byte		N44	
	.byte	W48
	.byte		N05	
	.byte	W06
	.byte			As2
	.byte	W06
	.byte		N17	, Bn2
	.byte	W18
	.byte		N08	
	.byte	W11
	.byte	W07
	.byte		N56	
	.byte	W60
	.byte		N17	, Dn3
	.byte	W18
	.byte		N08	
	.byte	W11
	.byte	W07
	.byte		N56	, En3
	.byte	W60
	.byte		N92	, Fn3
	.byte	W28
	.byte	W01
	.byte	W66
	.byte	W01
	.byte			Gn3
	.byte	W28
	.byte	W01
	.byte	W66
	.byte	W01
	.byte			An3
	.byte	W28
	.byte	W01
	.byte	W66
	.byte	W01
	.byte		N09	
	.byte	W09
	.byte	FINE

	@********************** Track  7 **********************@

	.global song038_7
song038_7:	@ 0x087B45B2
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W66
	.byte	W01
	.byte	VOICE	, 82
	.byte	VOL	, v103
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 23
	.byte	LFODL	, 22
	.byte	MOD	, 3
	.byte	MODT	, 0
	.byte	W28
	.byte	W01
	.byte	W96
	.byte	W66
	.byte	W01
	.byte	VOL	, v103
	.byte		N17	, An2, v124
	.byte	W18
	.byte		N36	, Dn2, v104
	.byte	W11
	.byte	W30
	.byte	W01
	.byte		N11	, En2, v108
	.byte	W12
	.byte		N12	, Fs2, v112
	.byte	W12
	.byte		N09	, An2, v116
	.byte	W12
	.byte		N17	, Bn2
	.byte	W18
	.byte		N66	, En2, v100
	.byte	W11
	.byte	W66
	.byte	W01
	.byte		N16	, Cs3, v124
	.byte	W18
	.byte		N28	, Fs2, v104
	.byte	W11
	.byte	W19
	.byte		N11	, An2, v108
	.byte	W12
	.byte			Dn3, v096
	.byte	W12
	.byte		N10	, Gn3, v116
	.byte	W12
	.byte		N11	, Fs3, v100
	.byte	W12
	.byte		N07	, En3, v104
	.byte	W12
	.byte		N05	, Dn3, v096
	.byte	W06
	.byte		N52	, En3
	.byte	W11
	.byte	W42
	.byte	W01
	.byte		N11	, Dn3, v116
	.byte	W12
	.byte		N10	, En3, v108
	.byte	W12
	.byte		N17	, Fs3, v096
	.byte	W18
	.byte		N36	, Bn2
	.byte	W11
	.byte	W30
	.byte	W01
	.byte		N11	, En3, v112
	.byte	W12
	.byte		N10	, Dn3
	.byte	W11
	.byte			As2, v084
	.byte	W11
	.byte		N03	, Bn2
	.byte	W04
	.byte		N04	, Cn3, v096
	.byte	W04
	.byte		N09	, Cs3
	.byte	W13
	.byte		N17	, Cs3, v112
	.byte	W10
	.byte	W07
	.byte		N23	, Bn2, v068
	.byte	W24
	.byte		N17	, Fs2, v084
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte			Gn2, v060
	.byte	W06
	.byte			Gs2, v076
	.byte	W06
	.byte		N06	, An2, v120
	.byte	W06
	.byte			Dn3, v124
	.byte	W12
	.byte			Gn3, v127
	.byte	W11
	.byte	W01
	.byte			Fs3, v112
	.byte	W12
	.byte			Dn3, v127
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			As2
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte		N90	, Dn3
	.byte	W24
	.byte	W01
	.byte	VOL	, v103
	.byte	W10
	.byte	W54
	.byte	W01
	.byte	FINE

	@********************** Track  8 **********************@

	.global song038_8
song038_8:	@ 0x087B4674
	.byte	KEYSH	, 0
	.byte	VOICE	, 98
	.byte	VOL	, v094
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 23
	.byte	LFODL	, 22
	.byte	MOD	, 2
	.byte	MODT	, 0
	.byte		N04	, Fs3, v120
	.byte		N04	, Cn4
	.byte	W04
	.byte			Fn3, v108
	.byte		N04	, Bn3
	.byte	W04
	.byte			En3, v112
	.byte		N04	, As3
	.byte	W04
	.byte			Ds3, v116
	.byte		N04	, An3
	.byte	W04
	.byte			Dn3, v120
	.byte		N04	, Gs3
	.byte	W04
	.byte			Ds3, v116
	.byte		N04	, An3
	.byte	W04
	.byte			En3, v108
	.byte		N04	, As3
	.byte	W04
	.byte			Fn3, v120
	.byte		N04	, Bn3
	.byte	W04
	.byte			Fs3
	.byte		N04	, Cn4
	.byte	W04
	.byte			Fn3, v124
	.byte		N04	, Bn3
	.byte	W04
	.byte			En3, v112
	.byte		N04	, As3
	.byte	W04
	.byte			Ds3, v104
	.byte		N04	, An3
	.byte	W04
	.byte			Dn3, v116
	.byte		N04	, Gs3
	.byte	W04
	.byte			Ds3, v112
	.byte		N04	, An3
	.byte	W04
	.byte			En3
	.byte		N04	, As3
	.byte	W04
	.byte			Fn3, v127
	.byte		N04	, Bn3
	.byte	W04
	.byte			Fs3, v112
	.byte		N04	, Cn4
	.byte	W04
	.byte			Fn3, v116
	.byte		N04	, Bn3
	.byte	W04
	.byte			En3, v112
	.byte		N04	, As3
	.byte	W04
	.byte			Ds3, v108
	.byte		N04	, An3
	.byte	W04
	.byte			Dn3, v112
	.byte		N04	, Gs3
	.byte	W04
	.byte			En3, v100
	.byte		N04	, As3
	.byte	W04
	.byte			Fn3, v112
	.byte		N04	, Bn3
	.byte	W04
	.byte			Fs3, v116
	.byte		N04	, Cn4
	.byte	W04
	.byte			Gn3, v120
	.byte		N04	, Cs4
	.byte	W04
	.byte			Fs3, v108
	.byte		N04	, Cn4
	.byte	W04
	.byte			Fn3, v112
	.byte		N04	, Bn3
	.byte	W04
	.byte			En3, v116
	.byte		N04	, As3
	.byte	W04
	.byte			Ds3, v120
	.byte		N04	, An3
	.byte	W04
	.byte			En3, v116
	.byte		N04	, As3
	.byte	W04
	.byte			Fn3, v108
	.byte		N04	, Bn3
	.byte	W04
	.byte			Fs3, v120
	.byte		N04	, Cn4
	.byte	W04
	.byte			Gn3
	.byte		N04	, Cs4
	.byte	W04
	.byte			Fs3, v124
	.byte		N04	, Cn4
	.byte	W04
	.byte			Fn3, v112
	.byte		N04	, Bn3
	.byte	W04
	.byte			En3, v104
	.byte		N04	, As3
	.byte	W04
	.byte			Ds3, v116
	.byte		N04	, An3
	.byte	W04
	.byte			En3, v112
	.byte		N04	, As3
	.byte	W04
	.byte			Fn3
	.byte		N04	, Bn3
	.byte	W04
	.byte			Fs3, v127
	.byte		N04	, Cn4
	.byte	W04
	.byte			Gn3, v112
	.byte		N04	, Cs4
	.byte	W04
	.byte			Fs3, v116
	.byte		N04	, Cn4
	.byte	W04
	.byte			Fn3, v112
	.byte		N04	, Bn3
	.byte	W04
	.byte			En3, v108
	.byte		N04	, As3
	.byte	W04
	.byte			Ds3
	.byte		N04	, An3
	.byte	W04
	.byte			Fn3, v100
	.byte		N04	, Bn3
	.byte	W04
	.byte			Fs3, v112
	.byte		N04	, Cn4
	.byte	W04
	.byte			Gn3, v116
	.byte		N04	, Cs4
	.byte	W04
	.byte		N80	, Gs3
	.byte		N80	, Dn4
	.byte	W08
	.byte	VOL	, v094
	.byte	W01
	.byte		v091
	.byte	W01
	.byte		v089
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v054
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v048
	.byte	W02
	.byte		v049
	.byte	W01
	.byte		v050
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v051
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
	.byte		v058
	.byte	W01
	.byte		v059
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
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		v084
	.byte	W02
	.byte		v085
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v087
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v091
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v094
	.byte	W28
	.byte	W96
	.byte	W66
	.byte	W01
	.byte	VOICE	, 98
	.byte	VOL	, v094
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 23
	.byte	LFODL	, 22
	.byte	MOD	, 2
	.byte	MODT	, 0
	.byte	W28
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W54
	.byte	W01
	.byte		N03	, Ds3, v127
	.byte	W03
	.byte		N04	, En3
	.byte	W04
	.byte			Fn3
	.byte	W05
	.byte		N92	, Dn3
	.byte		N92	, Fs3
	.byte	W28
	.byte	W01
	.byte	W66
	.byte	W01
	.byte		N80	, En3
	.byte		N80	, Gs3
	.byte	W28
	.byte	W01
	.byte	W66
	.byte	W01
	.byte		N22	, Gn2
	.byte		N22	, Bn2
	.byte	W24
	.byte		N16	, Dn3
	.byte		N16	, Bn3
	.byte	W05
	.byte	W13
	.byte		N14	, Cs3
	.byte		N14	, An3
	.byte	W16
	.byte		N01	, Cn3, v120
	.byte		N01	, Gs3
	.byte	W02
	.byte			Bn2, v108
	.byte		N01	, Gn3
	.byte	W02
	.byte			As2, v112
	.byte		N01	, Fs3
	.byte	W02
	.byte			An2, v096
	.byte		N01	, Fn3
	.byte	W02
	.byte			Gs2
	.byte		N01	, En3
	.byte	W02
	.byte			Gn2, v104
	.byte		N01	, Ds3
	.byte	W02
	.byte			Fs2, v056
	.byte		N01	, Dn3
	.byte	W01
	.byte	FINE

	@********************** Track  9 **********************@

	.global song038_9
song038_9:	@ 0x087B4857
	.byte	KEYSH	, 0
	.byte	VOICE	, 95
	.byte	VOL	, v094
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 23
	.byte	LFODL	, 22
	.byte	MOD	, 2
	.byte	MODT	, 0
	.byte		N96	, Dn3, v096
	.byte		N96	, Gs3
	.byte	W02
	.byte	VOL	, v052
	.byte	W02
	.byte		v053
	.byte	W01
	.byte		v054
	.byte	W01
	.byte		v055
	.byte	W02
	.byte		v056
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
	.byte	W02
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
	.byte		v068
	.byte	W01
	.byte		v069
	.byte	W01
	.byte		v070
	.byte	W02
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
	.byte		v077
	.byte	W01
	.byte		v078
	.byte	W02
	.byte		v079
	.byte	W01
	.byte		v080
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v084
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v085
	.byte	W02
	.byte		v086
	.byte	W01
	.byte		v087
	.byte	W01
	.byte		v089
	.byte	W02
	.byte		v088
	.byte	W02
	.byte		v087
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v085
	.byte	W02
	.byte		v084
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		v081
	.byte	W02
	.byte		v080
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v077
	.byte	W02
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
	.byte		v070
	.byte	W01
	.byte		v069
	.byte	W02
	.byte		v068
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v066
	.byte	W02
	.byte		v065
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v062
	.byte	W02
	.byte		v061
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v058
	.byte	W02
	.byte		v057
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v055
	.byte	W01
	.byte		v054
	.byte	W02
	.byte		v053
	.byte	W01
	.byte		v052
	.byte		N96	, Ds3
	.byte		N96	, An3
	.byte	W02
	.byte	VOL	, v053
	.byte	W01
	.byte		v054
	.byte	W02
	.byte		v055
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v058
	.byte	W02
	.byte		v059
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v061
	.byte	W02
	.byte		v062
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v065
	.byte	W02
	.byte		v066
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v068
	.byte	W02
	.byte		v069
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v071
	.byte	W02
	.byte		v072
	.byte	W01
	.byte		v073
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v075
	.byte	W02
	.byte		v076
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v079
	.byte	W02
	.byte		v080
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v082
	.byte	W02
	.byte		v083
	.byte	W01
	.byte		v084
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v085
	.byte	W02
	.byte		v086
	.byte	W01
	.byte		v087
	.byte	W01
	.byte		v088
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
	.byte		v085
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
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v075
	.byte	W02
	.byte		v074
	.byte	W01
	.byte		v073
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v069
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v066
	.byte	W02
	.byte		v065
	.byte	W01
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
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v056
	.byte	W02
	.byte		v055
	.byte	W01
	.byte		v054
	.byte	W01
	.byte		v053
	.byte	W01
	.byte		v052
	.byte	W01
	.byte		v051
	.byte	W02
	.byte		N84	, En3
	.byte		N84	, As3
	.byte	W02
	.byte	VOL	, v052
	.byte	W01
	.byte		v053
	.byte	W02
	.byte		v054
	.byte	W02
	.byte		v055
	.byte	W02
	.byte		v056
	.byte	W02
	.byte		v057
	.byte	W01
	.byte		v058
	.byte	W02
	.byte		v059
	.byte	W02
	.byte		v060
	.byte	W02
	.byte		v061
	.byte	W02
	.byte		v062
	.byte	W01
	.byte		v063
	.byte	W02
	.byte		v064
	.byte	W02
	.byte		v065
	.byte	W02
	.byte		v066
	.byte	W02
	.byte		v067
	.byte	W01
	.byte		v068
	.byte	W02
	.byte		v068
	.byte	W02
	.byte		v069
	.byte	W02
	.byte		v070
	.byte	W02
	.byte		v071
	.byte	W01
	.byte		v072
	.byte	W02
	.byte		v073
	.byte	W02
	.byte		v074
	.byte	W02
	.byte		v075
	.byte	W02
	.byte		v076
	.byte	W01
	.byte		v077
	.byte	W02
	.byte		v078
	.byte	W02
	.byte		v079
	.byte	W02
	.byte		v080
	.byte	W02
	.byte		v081
	.byte	W01
	.byte		v082
	.byte	W02
	.byte		v083
	.byte	W02
	.byte		v084
	.byte	W02
	.byte		v085
	.byte	W02
	.byte		v085
	.byte	W01
	.byte		v086
	.byte	W02
	.byte		v087
	.byte	W02
	.byte		v088
	.byte	W01
	.byte		v089
	.byte	W24
	.byte	W01
	.byte	W96
	.byte	W66
	.byte	W01
	.byte	FINE

	@********************** Track  10 **********************@

	.global song038_10
song038_10:	@ 0x087B4A0A
	.byte	KEYSH	, 0
	.byte	VOICE	, 57
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	BENDR	, 33
	.byte	LFOS	, 65
	.byte	LFODL	, 0
	.byte	MOD	, 0
	.byte	MODT	, 0
	.byte	W96
	.byte	W96
	.byte	W80
	.byte	W01
	.byte	BEND	, c_v+63
	.byte	W01
	.byte		c_v+59
	.byte	W02
	.byte		c_v+54
	.byte		N28	, Gn2, v052
	.byte	W01
	.byte	BEND	, c_v+50
	.byte	W02
	.byte		c_v+45
	.byte	W01
	.byte		c_v+40
	.byte	W02
	.byte		c_v+36
	.byte	W01
	.byte		c_v+31
	.byte	W02
	.byte		c_v+26
	.byte	W01
	.byte		c_v+22
	.byte	W02
	.byte		c_v+17
	.byte	W01
	.byte		c_v+12
	.byte	W02
	.byte		c_v+8
	.byte	W01
	.byte		c_v+3
	.byte	W02
	.byte		c_v-2
	.byte	W01
	.byte		c_v-6
	.byte	W02
	.byte		c_v-11
	.byte	W01
	.byte		c_v-15
	.byte	W02
	.byte		c_v-20
	.byte	W01
	.byte		c_v-25
	.byte	W02
	.byte		c_v-29
	.byte	W01
	.byte		c_v-34
	.byte	W02
	.byte		c_v-39
	.byte	W01
	.byte		c_v-43
	.byte	W02
	.byte		c_v-48
	.byte	W01
	.byte		c_v-53
	.byte	W02
	.byte		c_v-57
	.byte	W01
	.byte		c_v-62
	.byte	W01
	.byte		c_v-64
	.byte	W06
	.byte		c_v-64
	.byte	W16
	.byte	MOD	, 59
	.byte	BEND	, c_v
	.byte	W03
	.byte	VOL	, v000
	.byte	W32
	.byte		v000
	.byte	W02
	.byte		v000
	.byte	W01
	.byte		v001
	.byte	W01
	.byte		v002
	.byte	W01
	.byte		v003
	.byte		TIE	, Bn2, v112
	.byte	W02
	.byte	VOL	, v004
	.byte	W01
	.byte		v005
	.byte	W01
	.byte		v006
	.byte	W01
	.byte		v007
	.byte	W01
	.byte		v008
	.byte	W01
	.byte		v009
	.byte	W01
	.byte		v010
	.byte	W01
	.byte		v011
	.byte	W01
	.byte		v012
	.byte	W01
	.byte		v013
	.byte	W02
	.byte		v014
	.byte	W01
	.byte		v015
	.byte	W01
	.byte		v016
	.byte	W01
	.byte		v017
	.byte	W01
	.byte		v017
	.byte	W01
	.byte		v018
	.byte	W01
	.byte		v019
	.byte	W01
	.byte		v020
	.byte	W01
	.byte		v021
	.byte	W01
	.byte		v022
	.byte	W02
	.byte		v023
	.byte	W01
	.byte		v024
	.byte	W01
	.byte		v025
	.byte	W01
	.byte		v026
	.byte	W01
	.byte		v027
	.byte	W01
	.byte		v028
	.byte	W01
	.byte		v029
	.byte	W01
	.byte		v030
	.byte	W01
	.byte		v031
	.byte	W01
	.byte		v032
	.byte	W02
	.byte		v033
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v035
	.byte	W01
	.byte		v036
	.byte	W01
	.byte		v037
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v039
	.byte	W01
	.byte		v040
	.byte	W01
	.byte		v041
	.byte	W02
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
	.byte		v048
	.byte	W01
	.byte		v049
	.byte	W01
	.byte		v050
	.byte	W01
	.byte		v051
	.byte	W02
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
	.byte		v058
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v060
	.byte	W02
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
	.byte		v068
	.byte	W01
	.byte		v069
	.byte	W02
	.byte		v071
	.byte	W24
	.byte	W01
	.byte	W22
	.byte		v071
	.byte	W01
	.byte		v069
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v062
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v055
	.byte	W01
	.byte		v053
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v050
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v047
	.byte	W01
	.byte		v045
	.byte	W01
	.byte		v044
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v040
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v036
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v033
	.byte	W01
	.byte		v031
	.byte	W01
	.byte		v029
	.byte	W01
	.byte		v027
	.byte	W01
	.byte		v025
	.byte	W01
	.byte		v024
	.byte	W01
	.byte		v022
	.byte	W01
	.byte		v021
	.byte	W01
	.byte		v019
	.byte	W01
	.byte		v017
	.byte	W01
	.byte		v016
	.byte	W01
	.byte		v014
	.byte	W01
	.byte		v012
	.byte	W01
	.byte		v010
	.byte	W01
	.byte		v008
	.byte	W01
	.byte		v007
	.byte	W01
	.byte		v005
	.byte	W01
	.byte		v003
	.byte	W01
	.byte		v001
	.byte	W01
	.byte		v000
	.byte	W13
	.byte		EOT	
	.byte	FINE

	mAlignWord
	.global song038
song038:	@ 0x087B4B60
	.byte	10		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

mAlignWord
	mPtr	voicegroup000		@ voicegroup/tone

	mPtr	song038_1		@ track
	mPtr	song038_2		@ track
	mPtr	song038_3		@ track
	mPtr	song038_4		@ track
	mPtr	song038_5		@ track
	mPtr	song038_6		@ track
	mPtr	song038_7		@ track
	mPtr	song038_8		@ track
	mPtr	song038_9		@ track
	mPtr	song038_10		@ track
