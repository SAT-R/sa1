	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song202_1
song202_1:	@ 0x087BE7AC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 0
	.byte	VOL	, v100
	.byte	PAN	, c_v
	.byte	BENDR	, 6
	.byte		TIE	, Cn3, v127
	.byte	W96
	.byte	W48
	.byte		EOT	
	.byte	FINE

	mAlignWord
	.global song202
song202:	@ 0x087BE7C0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup004		@ voicegroup/tone

	mPtr	song202_1		@ track
