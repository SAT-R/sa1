	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song224_1
song224_1:	@ 0x087BED94
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 38
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	BENDR	, 15
	.byte		N12	, En5, v100
	.byte	W12
	.byte			Bn4, v092
	.byte	W12
	.byte	FINE

	mAlignWord
	.global song224
song224:	@ 0x087BEDA8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song224_1		@ track
