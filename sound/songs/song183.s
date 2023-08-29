	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song183_1
song183_1:	@ 0x087BE074
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 69
	.byte	VOL	, v090
	.byte	LFOS	, 60
	.byte	BENDR	, 15
	.byte	MOD	, 9
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte		N02	, Fs3, v127
	.byte	W02
	.byte		N01	, Fn4
	.byte	W02
	.byte		N21	, Bn3
	.byte	W21
	.byte	FINE

	.align 2
	.global song183
song183:	@ 0x087BE094
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	song183_1		@ track
