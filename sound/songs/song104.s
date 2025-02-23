	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song104_1
song104_1:	@ 0x087BC3BC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 64
	.byte	VOL	, v120
	.byte	LFOS	, 15
	.byte	BENDR	, 15
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte		N03	, Gn4, v096
	.byte	W03
	.byte			Cn5, v092
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte			Cn5
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte		N12	, En5
	.byte	W12
	.byte	FINE

	mAlignWord
	.global song104
song104:	@ 0x087BC3E0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb
    
mAlignWord
	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song104_1		@ track
