	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song222_1
song222_1:	@ 0x087BED54
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 38
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	BENDR	, 15
	.byte		N12	, Dn5, v100
	.byte	W12
	.byte			An4, v092
	.byte	W12
	.byte	FINE

	.align 2
	.global song222
song222:	@ 0x087BED68
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.int	voicegroup005		@ voicegroup/tone

	.int	song222_1		@ track
