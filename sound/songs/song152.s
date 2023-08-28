	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song152_1
song152_1:	@ 0x087BD444
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 32
	.byte	VOL	, v120
	.byte	LFOS	, 15
	.byte	BENDR	, 15
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte		N03	, Dn4, v127
	.byte	W04
	.byte		N02	, Bn4
	.byte	W02
	.byte		N30	, Gn4
	.byte	W30
	.byte	W01
	.byte	FINE

	.align 2
	.global song152
song152:	@ 0x087BD464
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	song152_1		@ track
