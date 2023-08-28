	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song124_1
song124_1:	@ 0x087BC9B0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 122
	.byte	VOL	, v107
	.byte		N23	, Dn5, v127
	.byte	W24
	.byte	FINE

	.align 2
	.global song124
song124:	@ 0x087BC9C0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	song124_1		@ track
