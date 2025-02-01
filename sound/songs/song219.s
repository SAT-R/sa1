	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song219_1
song219_1:	@ 0x087BECF4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 38
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	BENDR	, 15
	.byte		N12	, Bn4, v100
	.byte	W12
	.byte			Fs4, v092
	.byte	W12
	.byte	FINE

	.align 2
	.global song219
song219:	@ 0x087BED08
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.int	voicegroup005		@ voicegroup/tone

	.int	song219_1		@ track
