	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song146_1
song146_1:	@ 0x087BD22C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 31
	.byte	MOD	, 13
	.byte	VOL	, v064
	.byte	LFOS	, 84
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte		N42	, Cn3, v127
	.byte	W03
	.byte	BEND	, c_v-24
	.byte	W03
	.byte		c_v-10
	.byte	W03
	.byte		c_v+13
	.byte	W03
	.byte		c_v+31
	.byte	W03
	.byte		c_v+40
	.byte	W03
	.byte		c_v+40
	.byte	W03
	.byte		c_v+40
	.byte	W03
	.byte		c_v+40
	.byte	W03
	.byte		c_v+44
	.byte	W03
	.byte		c_v+44
	.byte	W03
	.byte		c_v+44
	.byte	W03
	.byte		c_v+44
	.byte	W03
	.byte		c_v+44
	.byte	W03
	.byte		c_v+31
	.byte	W03
	.byte		c_v+17
	.byte	W03
	.byte		c_v+8
	.byte	W03
	.byte		c_v+4
	.byte	W03
	.byte		c_v+4
	.byte	W03
	.byte		c_v+4
	.byte	W03
	.byte		c_v+4
	.byte	W03
	.byte		c_v+4
	.byte	W03
	.byte		c_v-1
	.byte	W03
	.byte		c_v-15
	.byte	W03
	.byte		c_v-28
	.byte	FINE

	.align 2
	.global song146
song146:	@ 0x087BD274
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	song146_1		@ track
