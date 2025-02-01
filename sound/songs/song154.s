	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song154_1
song154_1:	@ 0x087BD498
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 64
	.byte	VOL	, v086
	.byte	PAN	, c_v
	.byte		N04	, Dn4, v080
	.byte	W04
	.byte			An3, v104
	.byte	W05
	.byte			Fs4
	.byte	W04
	.byte			Dn4
	.byte	W05
	.byte			An4, v108
	.byte	W05
	.byte			Fs4, v116
	.byte	W04
	.byte		N18	, Dn5, v108
	.byte	W19
	.byte	FINE

	@********************** Track  2 **********************@

	.global song154_2
song154_2:	@ 0x087BD4B8
	.byte	KEYSH	, 0
	.byte	VOICE	, 64
	.byte	VOL	, v086
	.byte	PAN	, c_v
	.byte		N04	, Fs3, v080
	.byte	W04
	.byte			Dn3, v104
	.byte	W05
	.byte			An3
	.byte	W04
	.byte			Fs3
	.byte	W05
	.byte			Dn4, v108
	.byte	W05
	.byte			An3, v116
	.byte	W04
	.byte		N18	, Fs4, v108
	.byte	W19
	.byte	FINE

	.align 2
	.global song154
song154:	@ 0x087BD4D8
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.int	voicegroup007		@ voicegroup/tone

	.int	song154_1		@ track
	.int	song154_2		@ track
