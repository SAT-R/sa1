	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song166_1
song166_1:	@ 0x087BD7B8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 39
	.byte	MOD	, 29
	.byte	VOL	, v089
	.byte	PAN	, c_v
	.byte	BENDR	, 15
	.byte	BEND	, c_v+31
	.byte		N96	, Dn4, v116
	.byte	W03
	.byte	BEND	, c_v+29
	.byte	W03
	.byte		c_v+27
	.byte	W03
	.byte		c_v+25
	.byte	W03
	.byte		c_v+23
	.byte	W03
	.byte		c_v+21
	.byte	W03
	.byte		c_v+19
	.byte	W03
	.byte		c_v+17
	.byte	W03
	.byte		c_v+15
	.byte	W03
	.byte		c_v+13
	.byte	W03
	.byte		c_v+11
	.byte	W03
	.byte		c_v+9
	.byte	W03
	.byte		c_v+7
	.byte	W03
	.byte		c_v+5
	.byte	W03
	.byte		c_v+3
	.byte	W03
	.byte		c_v+1
	.byte	W03
	.byte		c_v-1
	.byte	W03
	.byte		c_v-3
	.byte	W03
	.byte		c_v-5
	.byte	W03
	.byte		c_v-7
	.byte	W03
	.byte		c_v-9
	.byte	W03
	.byte		c_v-11
	.byte	W03
	.byte		c_v-13
	.byte	W03
	.byte		c_v-15
	.byte	W03
	.byte		c_v-17
	.byte	W03
	.byte		c_v-19
	.byte	W03
	.byte		c_v-21
	.byte	W03
	.byte		c_v-23
	.byte	W03
	.byte		c_v-25
	.byte	W03
	.byte		c_v-27
	.byte	W03
	.byte		c_v-29
	.byte	W03
	.byte		c_v-31
	.byte	W03
	.byte	FINE

	.align 2
	.global song166
song166:	@ 0x087BD80C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	song166_1		@ track
