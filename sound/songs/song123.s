	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song123_1
song123_1:	@ 0x087BC994
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 122
	.byte	VOL	, v127
	.byte		N05	, Dn5, v127
	.byte	W06
	.byte		N06	, Fn4
	.byte	W06
	.byte	FINE

	.align 2
	.global song123
song123:	@ 0x087BC9A4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	song123_1		@ track
