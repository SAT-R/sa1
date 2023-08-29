	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song137_1
song137_1:	@ 0x087BCF50
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 124
	.byte	VOL	, v107
	.byte	LFOS	, 84
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 77
	.byte		N12	, Fn3, v127
	.byte	W12
	.byte	FINE

	.align 2
	.global song137
song137:	@ 0x087BCF68
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	song137_1		@ track
