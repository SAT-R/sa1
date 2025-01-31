	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song135_1
song135_1:	@ 0x087BCE9C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 4
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	BENDR	, 6
	.byte		TIE	, Cn3, v127
	.byte	W96
	.byte	W12
	.byte		EOT	
	.byte	FINE

	.align 2
	.global song135
song135:	@ 0x087BCEB0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup004		@ voicegroup/tone

	.word	song135_1		@ track
