	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song035_1
song035_1:	@ 0x087B3510
	.byte	KEYSH	, 0
	.byte	TEMPO	, 72
	.byte	VOICE	, 60
	.byte	VOL	, v073
	.byte	PAN	, c_v
	.byte	W48
	.byte		N06	, Gs3, v127
	.byte	W18
	.byte			As3
	.byte	W18
	.byte		N54	, Cn4
	.byte	W12
	.byte	W48
	.byte		N06	
	.byte	W18
	.byte			Dn4
	.byte	W18
	.byte		N48	, Ds4
	.byte	W12
	.byte	W48
	.byte		N06	, Fn4
	.byte	W06
	.byte		TIE	
	.byte	W42
	.byte	W96
	.byte		EOT	
	.byte	FINE

	@********************** Track  2 **********************@

	.global song035_2
song035_2:	@ 0x087B3535
	.byte	KEYSH	, 0
	.byte	VOICE	, 61
	.byte	VOL	, v070
	.byte	PAN	, c_v
	.byte	W48
	.byte		N06	, Gs2, v127
	.byte	W18
	.byte			As2
	.byte	W18
	.byte		N54	, Cn3
	.byte	W12
	.byte	W48
	.byte		N06	
	.byte	W18
	.byte			Dn3
	.byte	W18
	.byte		N48	, Ds3
	.byte	W12
	.byte	W48
	.byte		N06	, Fn3
	.byte	W06
	.byte		N12	
	.byte	W12
	.byte	FINE

	@********************** Track  3 **********************@

	.global song035_3
song035_3:	@ 0x087B3556
	.byte	KEYSH	, 0
	.byte	VOICE	, 8
	.byte	VOL	, v060
	.byte	PAN	, c_v
	.byte	W48
	.byte		N06	, Ds2, v127
	.byte	W18
	.byte			Fn2
	.byte	W18
	.byte		N54	, Gs2
	.byte	W12
	.byte	W48
	.byte		N06	
	.byte	W18
	.byte			As2, v120
	.byte	W18
	.byte		N48	, Bn2, v127
	.byte	W12
	.byte	W48
	.byte		N06	, Cs3
	.byte	W06
	.byte		TIE	
	.byte	W42
	.byte	W96
	.byte		EOT	
	.byte	FINE

	@********************** Track  4 **********************@

	.global song035_4
song035_4:	@ 0x087B357B
	.byte	KEYSH	, 0
	.byte	VOICE	, 20
	.byte	VOL	, v093
	.byte	PAN	, c_v
	.byte	W48
	.byte		N06	, Cn3, v127
	.byte	W18
	.byte			Dn3
	.byte	W18
	.byte		N54	, Ds3, v124
	.byte	W12
	.byte	W48
	.byte		N06	, Ds3, v127
	.byte	W18
	.byte			Fn3
	.byte	W18
	.byte		N48	, Fs3
	.byte	W12
	.byte	W48
	.byte		N06	, Gs3
	.byte	W06
	.byte		TIE	
	.byte	W42
	.byte	W96
	.byte		EOT	
	.byte	FINE

	@********************** Track  5 **********************@

	.global song035_5
song035_5:	@ 0x087B35A1
	.byte	KEYSH	, 0
	.byte	VOICE	, 9
	.byte	VOL	, v095
	.byte	PAN	, c_v
	.byte	W48
	.byte		N06	, Gs2, v127
	.byte	W18
	.byte			Gn2
	.byte	W18
	.byte		N54	, Fn2
	.byte	W12
	.byte	W48
	.byte		N06	
	.byte	W18
	.byte			Ds2
	.byte	W18
	.byte		N48	, Cs2
	.byte	W12
	.byte	W48
	.byte		N06	, Ds2
	.byte	W06
	.byte		TIE	
	.byte	W42
	.byte	W96
	.byte		EOT	
	.byte	FINE

	@********************** Track  6 **********************@

	.global song035_6
song035_6:	@ 0x087B35C4
	.byte	KEYSH	, 0
	.byte	VOICE	, 10
	.byte	VOL	, v063
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		N03	, Ds2, v120
	.byte	W03
	.byte			Fn2, v127
	.byte	W03
	.byte			Gs2
	.byte	W03
	.byte			Cs3
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			Gs3
	.byte	W03
	.byte			Cs4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Gs4
	.byte	W03
	.byte			Cs5
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			Fn5
	.byte	W03
	.byte			Gs5
	.byte	W03
	.byte			Cs6
	.byte	W03
	.byte			Gs5
	.byte	W03
	.byte			Fn5
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			Cs5
	.byte	W03
	.byte			Gs4
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Cs4
	.byte	W03
	.byte			Gs3
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			Cs3
	.byte	W03
	.byte			Gs2
	.byte	W03
	.byte			Fn2
	.byte	W04
	.byte			Cs6, v072
	.byte	W03
	.byte			Gs5
	.byte	W03
	.byte			Fn5
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			Cs5
	.byte	W03
	.byte			Gs4
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Cs4
	.byte	W03
	.byte			Gs3
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			Cs3
	.byte	W03
	.byte			Gs2
	.byte	W03
	.byte			Fn2
	.byte	W05
	.byte			Cs6, v028
	.byte	W03
	.byte			Gs5
	.byte	W03
	.byte			Fn5
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			Cs5
	.byte	W03
	.byte			Gs4
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Cs4
	.byte	W03
	.byte			Gs3
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			Cs3
	.byte	W03
	.byte			Gs2
	.byte	W03
	.byte			Fn2
	.byte	W03
	.byte	FINE

	@********************** Track  7 **********************@

	.global song035_7
song035_7:	@ 0x087B364D
	.byte	KEYSH	, 0
	.byte	VOICE	, 64
	.byte	VOL	, v025
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		N03	, Ds2, v120
	.byte	W03
	.byte			Fn2, v127
	.byte	W03
	.byte			Gs2
	.byte	W03
	.byte			Cs3
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			Gs3
	.byte	W03
	.byte			Cs4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Gs4
	.byte	W03
	.byte			Cs5
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			Fn5
	.byte	W03
	.byte			Gs5
	.byte	W03
	.byte			Cs6
	.byte	W03
	.byte			Gs5
	.byte	W03
	.byte			Fn5
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			Cs5
	.byte	W03
	.byte			Gs4
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Cs4
	.byte	W03
	.byte			Gs3
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			Cs3
	.byte	W03
	.byte			Gs2
	.byte	W03
	.byte			Fn2
	.byte	W04
	.byte			Cs6, v072
	.byte	W03
	.byte			Gs5
	.byte	W03
	.byte			Fn5
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			Cs5
	.byte	W03
	.byte			Gs4
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Cs4
	.byte	W03
	.byte			Gs3
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			Cs3
	.byte	W03
	.byte			Gs2
	.byte	W03
	.byte			Fn2
	.byte	W05
	.byte			Cs6, v028
	.byte	W03
	.byte			Gs5
	.byte	W03
	.byte			Fn5
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			Cs5
	.byte	W03
	.byte			Gs4
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Cs4
	.byte	W03
	.byte			Gs3
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			Cs3
	.byte	W03
	.byte			Gs2
	.byte	W03
	.byte			Fn2
	.byte	W03
	.byte	FINE

	@********************** Track  8 **********************@

	.global song035_8
song035_8:	@ 0x087B36D6
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v103
	.byte	PAN	, c_v
	.byte		N03	, Cs1, v120
	.byte	W04
	.byte			Cs1, v108
	.byte	W04
	.byte		N24	, Cs1, v064
	.byte	W04
	.byte		N05	, Gs1, v100
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Gn1, v096
	.byte	W06
	.byte			Gn1, v092
	.byte	W06
	.byte			Fs1, v108
	.byte	W06
	.byte			Fs1, v104
	.byte	W06
	.byte		N17	, Cn1, v108
	.byte		N72	, Fs2
	.byte	W18
	.byte		N17	, Cs1, v104
	.byte	W18
	.byte		N23	, Cn1, v127
	.byte	W12
	.byte	W12
	.byte		N05	, Cn1, v108
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cs1, v127
	.byte	W12
	.byte		N05	, Cn1, v116
	.byte	W06
	.byte			Cs1, v096
	.byte	W06
	.byte		N17	, Cn1, v120
	.byte		N72	, Fs2, v108
	.byte	W18
	.byte		N17	, Cs1
	.byte	W18
	.byte		N23	, Cn1, v116
	.byte	W12
	.byte	W12
	.byte		N03	, An1, v120
	.byte	W04
	.byte		N19	
	.byte	W02
	.byte		N23	, Gs1
	.byte	W06
	.byte		N11	, Cs1
	.byte	W12
	.byte			Cn1, v096
	.byte	W12
	.byte		N05	, Cs1, v116
	.byte		N05	, Fs2, v108
	.byte	W06
	.byte		N76	, Cs1, v100
	.byte		N72	, Fs2, v108
	.byte	W42
	.byte	W36
	.byte		N05	, Cs1, v100
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N30	, Cn1
	.byte		TIE	, Fs2, v108
	.byte	W48
	.byte	W48
	.byte	W01
	.byte		EOT	
	.byte	FINE

	@********************** Track  9 **********************@

	.global song035_9
song035_9:	@ 0x087B3758
	.byte	VOL	, v110
	.byte	KEYSH	, 0
	.byte	W48
	.byte		N09	, Dn1, v040
	.byte	W18
	.byte		N09	
	.byte	W18
	.byte		N09	
	.byte	W12
	.byte	W24
	.byte		N21	, Ds1
	.byte	W24
	.byte		N09	, Dn1
	.byte	W18
	.byte		N09	
	.byte	W18
	.byte		N09	
	.byte	W12
	.byte	W24
	.byte		N24	, Ds1
	.byte	W30
	.byte		N24	
	.byte	W24
	.byte	W03
	.byte	FINE

	mAlignWord
	.global song035
song035:	@ 0x087B3778
	.byte	9		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

mAlignWord
	mPtr	voicegroup007		@ voicegroup/tone

	mPtr	song035_1		@ track
	mPtr	song035_2		@ track
	mPtr	song035_3		@ track
	mPtr	song035_4		@ track
	mPtr	song035_5		@ track
	mPtr	song035_6		@ track
	mPtr	song035_7		@ track
	mPtr	song035_8		@ track
	mPtr	song035_9		@ track
