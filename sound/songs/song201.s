	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song201_1
song201_1:	@ 0x087BE77C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 57
	.byte	PAN	, c_v
	.byte	MOD	, 43
	.byte	LFOS	, 7
	.byte	MODT	, 0
	.byte	BENDR	, 10
	.byte	VOL	, v090
	.byte		TIE	, As3, v127
	.byte	W24
song201_1_1:
	.byte	W72
	.byte	W72
	.byte	GOTO	
		.word	song201_1_1
	.byte	W24
	.byte		EOT	, As3
	.byte	FINE

	.align 2
	.global song201
song201:	@ 0x087BE7A0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song201_1		@ track
