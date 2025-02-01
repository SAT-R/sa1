	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song188_1
song188_1:	@ 0x087BE1BC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 51
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	MOD	, 60
	.byte	BENDR	, 19
	.byte	LFOS	, 60
	.byte	MODT	, 0
	.byte		TIE	, Fn3, v080
	.byte	W24
song188_1_1:
	.byte	W72
	.byte	W96
	.byte	GOTO	
		.int	song188_1_1
	.byte	W13
	.byte		EOT	, Fn3
	.byte	FINE

	.align 2
	.global song188
song188:	@ 0x087BE1E0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.int	voicegroup005		@ voicegroup/tone

	.int	song188_1		@ track
