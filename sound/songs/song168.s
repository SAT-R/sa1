	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song168_1
song168_1:	@ 0x087BD878
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 52
	.byte	VOL	, v100
	.byte	LFOS	, 52
	.byte	BENDR	, 2
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 10
	.byte		N03	, Cs1, v096
	.byte	W04
	.byte		N48	, Dn1, v127
	.byte	W48
	.byte	FINE

	mAlignWord
	.global song168
song168:	@ 0x087BD894
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb
    
mAlignWord
	mPtr	voicegroup000		@ voicegroup/tone

	mPtr	song168_1		@ track
