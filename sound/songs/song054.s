	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song054_1
song054_1:	@ 0x087BC1E0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 62
	.byte	VOICE	, 67
	.byte	VOL	, v105
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte		N09	, Cs2, v112
	.byte	W18
	.byte		N24	, Cs2, v120
	.byte	W30
	.byte		N17	, Dn2, v116
	.byte	W24
	.byte			Dn2, v120
	.byte	W18
	.byte		N52	, En2, v112
	.byte	W06
	.byte	W48
	.byte		N06	, En2, v124
	.byte	W06
	.byte			En2, v120
	.byte	W06
	.byte	FINE

	@********************** Track  2 **********************@

	.global song054_2
song054_2:	@ 0x087BC208
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v105
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte		N06	, Cn1, v127
	.byte		N17	, Ds1, v068
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte			Cn1
	.byte		N24	, Ds1, v068
	.byte	W18
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte			Cn1
	.byte	W06
	.byte		N06	
	.byte		N23	, Ds1, v068
	.byte	W18
	.byte		N06	, Cn1, v127
	.byte	W06
	.byte		N06	
	.byte		N17	, Ds1, v068
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Cn1
	.byte		N28	, Ds1, v068
	.byte	W06
	.byte	W06
	.byte		N06	, Cn1, v127
	.byte	W12
	.byte			Cs1
	.byte	W06
	.byte			Cn1
	.byte		N23	, Ds1, v068
	.byte	W06
	.byte		N06	, Cs1
	.byte	W06
	.byte			Cs1, v127
	.byte	W06
	.byte			Cn1
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte	FINE

	@********************** Track  3 **********************@

	.global song054_3
song054_3:	@ 0x087BC25A
	.byte	KEYSH	, 0
	.byte	VOICE	, 87
	.byte	VOL	, v070
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 56
	.byte	LFODL	, 0
	.byte	MOD	, 34
	.byte	MODT	, 2
	.byte		N07	, Ds3, v112
	.byte		N07	, Fs3
	.byte	W18
	.byte		N30	, Ds3, v120
	.byte		N30	, Fs3, v124
	.byte	W30
	.byte		N19	, En3, v116
	.byte		N20	, Gn3, v127
	.byte	W24
	.byte		N17	, En3, v116
	.byte		N17	, Gn3, v127
	.byte	W18
	.byte		N44	, Fs3, v116
	.byte		N48	, An3, v124
	.byte	W06
	.byte	W48
	.byte		N04	, Fs3, v116
	.byte		N04	, An3, v120
	.byte	W06
	.byte		N03	, Fs3, v124
	.byte		N04	, An3, v116
	.byte	W04
	.byte	FINE

	@********************** Track  4 **********************@

	.global song054_4
song054_4:	@ 0x087BC29E
	.byte	KEYSH	, 0
	.byte	VOICE	, 82
	.byte	VOL	, v086
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 31
	.byte	LFODL	, 22
	.byte	MOD	, 4
	.byte	MODT	, 0
	.byte		N05	, Fs3, v120
	.byte	W06
	.byte			Ds3, v108
	.byte	W06
	.byte			Bn2, v100
	.byte	W06
	.byte		N11	, Fs2, v104
	.byte	W12
	.byte		N05	, Bn2, v100
	.byte	W06
	.byte			Ds3, v096
	.byte	W06
	.byte			Fs3, v084
	.byte	W06
	.byte			Gn3, v112
	.byte	W06
	.byte			En3, v116
	.byte	W06
	.byte			Cn3, v112
	.byte	W06
	.byte			Gn2, v092
	.byte	W06
	.byte			Cn3, v108
	.byte	W06
	.byte			En3, v096
	.byte	W06
	.byte			Gn3, v088
	.byte	W06
	.byte		N52	, An3, v124
	.byte	W06
	.byte	W48
	.byte		N05	, An3, v127
	.byte	W06
	.byte		N04	, An3, v124
	.byte	W04
	.byte	FINE

	@********************** Track  5 **********************@

	.global song054_5
song054_5:	@ 0x087BC2EB
	.byte	KEYSH	, 0
	.byte	VOICE	, 12
	.byte	VOL	, v057
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 23
	.byte	LFODL	, 22
	.byte	MOD	, 4
	.byte	MODT	, 0
	.byte		N05	, Ds4, v120
	.byte	W06
	.byte			Bn3, v108
	.byte	W06
	.byte			Fs3, v100
	.byte	W06
	.byte		N11	, Ds3, v104
	.byte	W12
	.byte		N05	, Fs3, v100
	.byte	W06
	.byte			Bn3, v096
	.byte	W06
	.byte			Ds4, v084
	.byte	W06
	.byte			En4, v112
	.byte	W06
	.byte			Cn4, v116
	.byte	W06
	.byte			Gn3, v112
	.byte	W06
	.byte			En3, v092
	.byte	W06
	.byte			Gn3, v108
	.byte	W06
	.byte			Cn4, v096
	.byte	W06
	.byte			En4, v088
	.byte	W06
	.byte		N52	, Fs4, v124
	.byte	W06
	.byte	W48
	.byte		N05	, Fs4, v127
	.byte	W06
	.byte		N04	, Fs4, v124
	.byte	W04
	.byte	FINE

	.align 2
	.global song054
song054:	@ 0x087BC338
	.byte	5		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.int	voicegroup000		@ voicegroup/tone

	.int	song054_1		@ track
	.int	song054_2		@ track
	.int	song054_3		@ track
	.int	song054_4		@ track
	.int	song054_5		@ track
