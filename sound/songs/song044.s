	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song044_1
song044_1:	@ 0x087B8F3C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 59
	.byte	VOICE	, 127
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte		N06	, Cn1, v127
	.byte		N32	, Fn2
	.byte	W24
	.byte		N06	, Cs1
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Cn1
	.byte		N05	, Fs2
	.byte	W06
	.byte		N06	, Cn1
	.byte		N52	, Gn2
	.byte	W12
	.byte		N03	, Cs1
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte			Cn1
	.byte		N17	, En1, v076
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte			Cn1
	.byte		N11	, En1, v076
	.byte	W06
	.byte		N06	, Gs1, v127
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			Cn1
	.byte		N17	, En1, v076
	.byte	W12
	.byte		N06	, Cn1, v127
	.byte	W06
	.byte			Cs1
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Cn1
	.byte		N17	, En1, v076
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte			Cn1
	.byte		N17	, En1, v076
	.byte	W18
	.byte		N06	, Cn1, v127
	.byte		N05	, Dn1, v076
	.byte	W06
	.byte	FINE

	@********************** Track  2 **********************@

	.global song044_2
song044_2:	@ 0x087B8FA6
	.byte	KEYSH	, 0
	.byte	VOICE	, 45
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte		N40	, Cs3, v112
	.byte	W42
	.byte		N48	, Bn2, v104
	.byte	W54
	.byte		N10	, As2, v108
	.byte	W18
	.byte			As2, v104
	.byte	W18
	.byte		N36	, An2, v124
	.byte	W42
	.byte		N17	, Gs2, v108
	.byte	W18
	.byte			Cs3, v112
	.byte	W18
	.byte		N08	
	.byte	W08
	.byte	FINE

	@********************** Track  3 **********************@

	.global song044_3
song044_3:	@ 0x087B8FCD
	.byte	KEYSH	, 0
	.byte	VOICE	, 74
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 31
	.byte	LFODL	, 22
	.byte	MOD	, 0
	.byte	MODT	, 0
	.byte		N05	, Cs2, v112
	.byte		N05	, Fn2
	.byte	W06
	.byte		N06	, Ds2, v108
	.byte		N06	, Fs2
	.byte	W12
	.byte			Fn2, v116
	.byte		N06	, Gs2
	.byte	W12
	.byte		N07	, Cs2, v100
	.byte		N07	, Fn2
	.byte	W12
	.byte		N06	, Fn2, v116
	.byte		N06	, Gs2
	.byte	W12
	.byte		N05	, Gs1, v072
	.byte		N05	, Cs2
	.byte	W06
	.byte			Cs2, v088
	.byte		N05	, Fn2
	.byte	W06
	.byte			Fn2, v080
	.byte		N05	, Gs2
	.byte	W06
	.byte			Gs2, v104
	.byte		N05	, Cs3
	.byte	W06
	.byte			Cn3, v096
	.byte		N05	, Ds3
	.byte	W06
	.byte			Cs3, v104
	.byte		N05	, Fn3
	.byte	W06
	.byte			Gs2, v092
	.byte		N05	, Cs3
	.byte	W06
	.byte			Cs3, v124
	.byte		N05	, Fs3
	.byte	W06
	.byte			Cs3, v120
	.byte		N05	, Fn3
	.byte	W12
	.byte		N04	, As2, v112
	.byte		N04	, Cs3
	.byte	W12
	.byte			Gs3, v080
	.byte	W06
	.byte		N40	, Bn2, v120
	.byte		N40	, Fs3
	.byte	W42
	.byte		N17	, Cn3, v127
	.byte		N17	, Fs3
	.byte	W18
	.byte			Cs3, v124
	.byte		N17	, Gs3
	.byte	W18
	.byte		N09	, Cs3
	.byte		N09	, Gs3
	.byte	W09
	.byte	FINE

	@********************** Track  4 **********************@

	.global song044_4
song044_4:	@ 0x087B904A
	.byte	KEYSH	, 0
	.byte	VOICE	, 10
	.byte	VOL	, v066
	.byte	PAN	, c_v
	.byte	BENDR	, 12
	.byte	LFOS	, 21
	.byte	LFODL	, 22
	.byte	MOD	, 3
	.byte	MODT	, 0
	.byte	BEND	, c_v-64
	.byte		N92	, Cs4, v092
	.byte	W32
	.byte	W03
	.byte	BEND	, c_v-64
	.byte	W01
	.byte		c_v-59
	.byte	W01
	.byte		c_v-49
	.byte	W01
	.byte		c_v-44
	.byte	W01
	.byte		c_v-39
	.byte	W01
	.byte		c_v-29
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-19
	.byte	W01
	.byte		c_v-9
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v
	.byte	W48
	.byte	W03
	.byte		N05	, Fs4, v124
	.byte	W06
	.byte			Fn4, v120
	.byte	W12
	.byte		N04	, Cs4, v112
	.byte	W12
	.byte			Gs4, v080
	.byte	W06
	.byte		N40	, Bn4, v120
	.byte	W42
	.byte		N17	, Cn5, v127
	.byte	W18
	.byte		N16	, Cs5, v124
	.byte	W18
	.byte		N09	
	.byte	W09
	.byte	FINE

	@********************** Track  5 **********************@

	.global song044_5
song044_5:	@ 0x087B9098
	.byte	KEYSH	, 0
	.byte	VOICE	, 80
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 68
	.byte	LFODL	, 0
	.byte	MOD	, 31
	.byte	MODT	, 2
	.byte	W96
	.byte		N17	, Cs3, v127
	.byte	W18
	.byte		N03	
	.byte	W18
	.byte		N36	, En3
	.byte	W42
	.byte		N16	, Ds3
	.byte	W16
	.byte	FINE

	@********************** Track  6 **********************@

	.global song044_6
song044_6:	@ 0x087B90B8
	.byte	KEYSH	, 0
	.byte	VOICE	, 76
	.byte	VOL	, v068
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 68
	.byte	LFODL	, 0
	.byte	MOD	, 30
	.byte	MODT	, 2
	.byte		N36	, Gs3, v127
	.byte	W42
	.byte		N52	
	.byte	W54
	.byte	W96
	.byte		N16	
	.byte	W18
	.byte		N06	
	.byte	W07
	.byte	FINE

	mAlignWord
	.global song044
song044:	@ 0x087B90D8
	.byte	6		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup000		@ voicegroup/tone

	mPtr	song044_1		@ track
	mPtr	song044_2		@ track
	mPtr	song044_3		@ track
	mPtr	song044_4		@ track
	mPtr	song044_5		@ track
	mPtr	song044_6		@ track
