	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song169_1
song169_1:	@ 0x087BD8A0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 64
	.byte	VOL	, v090
	.byte	LFOS	, 15
	.byte	BENDR	, 15
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte		N05	, Cn5, v127
	.byte	W05
	.byte		N24	, An4
	.byte	W24
	.byte	W01
	.byte	FINE

	mAlignWord
	.global song169
song169:	@ 0x087BD8BC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb
    
mAlignWord
	mPtr	voicegroup000		@ voicegroup/tone

	mPtr	song169_1		@ track
