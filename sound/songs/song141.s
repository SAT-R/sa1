	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song141_1
song141_1:	@ 0x087BD01C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 90
	.byte	VOICE	, 1
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	BENDR	, 127
	.byte		TIE	, Cn3, v127
	.byte	W96
	.byte	W48
	.byte		EOT	
	.byte	FINE

	.align 2
	.global song141
song141:	@ 0x087BD030
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.int	voicegroup004		@ voicegroup/tone

	.int	song141_1		@ track
