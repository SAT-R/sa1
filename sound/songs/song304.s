	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song304_1
song304_1:	@ 0x087BEF94
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 127
	.byte	VOL	, v095
	.byte	PAN	, c_v
	.byte	W24
	.byte		N11	, Cs1, v127
	.byte		N60	, Cs2
	.byte	W12
	.byte		N05	, Cn1
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte			Cn1
	.byte	W06
	.byte		N11	, Cs1
	.byte	W12
	.byte		N05	, An1
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte		N24	, Cn1
	.byte		N72	, Cs2
	.byte	W72
	.byte	W03
	.byte	FINE

	@********************** Track  2 **********************@

	.global song304_2
song304_2:	@ 0x087BEFC7
	.byte	KEYSH	, 0
	.byte	VOICE	, 110
	.byte	VOL	, v049
	.byte	PAN	, c_v
	.byte	W24
	.byte		N06	, An3, v116
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N18	, Gn3
	.byte	W18
	.byte		N06	, Fs3
	.byte	W12
	.byte			En3
	.byte	W06
	.byte			Fs3
	.byte	W12
	.byte			An3
	.byte	W06
	.byte	FINE

	@********************** Track  3 **********************@

	.global song304_3
song304_3:	@ 0x087BEFE7
	.byte	KEYSH	, 0
	.byte	VOICE	, 111
	.byte	VOL	, v049
	.byte	PAN	, c_v
	.byte	W24
	.byte		N06	, Cs3, v116
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N12	, Dn3
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte			Bn2
	.byte	W06
	.byte			Dn3
	.byte	W12
	.byte			Cs3
	.byte	W06
	.byte	FINE

	@********************** Track  4 **********************@

	.global song304_4
song304_4:	@ 0x087BF006
	.byte	KEYSH	, 0
	.byte	VOICE	, 112
	.byte	VOL	, v093
	.byte	PAN	, c_v+14
	.byte	W24
	.byte		N06	, An1, v116
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N12	, En2
	.byte	W12
	.byte		N06	, Cs2
	.byte	W12
	.byte		N18	, Gn1
	.byte	W18
	.byte		N06	, Dn2
	.byte	W12
	.byte			Bn1
	.byte	W06
	.byte			Gn1
	.byte	W12
	.byte			An1
	.byte	W06
	.byte	FINE

	@********************** Track  5 **********************@

	.global song304_5
song304_5:	@ 0x087BF028
	.byte	KEYSH	, 0
	.byte	VOICE	, 74
	.byte	VOL	, v089
	.byte	PAN	, c_v
	.byte	W24
	.byte		N06	, An3, v116
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N18	, Gn3
	.byte	W18
	.byte		N06	, Fs3
	.byte	W12
	.byte			En3
	.byte	W06
	.byte			Fs3
	.byte	W12
	.byte			An3
	.byte	W06
	.byte	FINE

	@********************** Track  6 **********************@

	.global song304_6
song304_6:	@ 0x087BF048
	.byte	KEYSH	, 0
	.byte	VOICE	, 61
	.byte	VOL	, v105
	.byte	PAN	, c_v
	.byte	W24
	.byte		N06	, Cs3, v116
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N12	, Dn3
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte			Bn2
	.byte	W06
	.byte			Dn3
	.byte	W12
	.byte			Cs3
	.byte	W06
	.byte	FINE

	@********************** Track  7 **********************@

	.global song304_7
song304_7:	@ 0x087BF067
	.byte	KEYSH	, 0
	.byte	VOICE	, 80
	.byte	VOL	, v086
	.byte	PAN	, c_v
	.byte	W08
	.byte		N02	, En2, v088
	.byte	W01
	.byte		N03	, Fn2, v064
	.byte	W03
	.byte			Gn2, v068
	.byte	W01
	.byte		N02	, An2, v080
	.byte	W02
	.byte			Bn2, v092
	.byte	W02
	.byte		N03	, Cn3
	.byte	W02
	.byte		N02	, Dn3, v076
	.byte	W01
	.byte			En3, v080
	.byte	W03
	.byte		N04	, Ds3, v127
	.byte	W01
	.byte			En3
	.byte	W07
	.byte		N03	
	.byte	W11
	.byte		N04	
	.byte	W10
	.byte		N07	
	.byte	W12
	.byte		N15	, Dn3
	.byte	W17
	.byte		N06	
	.byte	W14
	.byte		N03	
	.byte	W01
	.byte	W04
	.byte		N06	
	.byte	W11
	.byte		N04	, Ds3
	.byte	W03
	.byte		N17	, En3
	.byte	W16
	.byte		N03	, Dn3, v072
	.byte	W01
	.byte		N04	, Cn3
	.byte	W01
	.byte		N03	, Bn2
	.byte	W02
	.byte		N04	, An2
	.byte	W02
	.byte		N03	, Gn2
	.byte	W02
	.byte			Fs2
	.byte	W01
	.byte		N04	, En2
	.byte	W01
	.byte		N03	, Ds2
	.byte	W02
	.byte		N04	, Cs2
	.byte	W02
	.byte		N03	, Bn1
	.byte	W03
	.byte	FINE

	.align 2
	.global song304
song304:	@ 0x087BF0C8
	.byte	7		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.int	voicegroup007		@ voicegroup/tone

	.int	song304_1		@ track
	.int	song304_2		@ track
	.int	song304_3		@ track
	.int	song304_4		@ track
	.int	song304_5		@ track
	.int	song304_6		@ track
	.int	song304_7		@ track
