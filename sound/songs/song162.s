	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song162_1
song162_1:	@ 0x087BD740
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 37
	.byte	VOL	, v114
	.byte	BENDR	, 13
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 29
	.byte	LFOS	, 74
	.byte	BEND	, c_v+8
	.byte		N03	, As2, v127
	.byte	W01
	.byte	BEND	, c_v+5
	.byte	W01
	.byte	VOL	, v100
	.byte	BEND	, c_v+2
	.byte	W01
	.byte		c_v-1
	.byte	W01
	.byte	VOL	, v080
	.byte	BEND	, c_v-4
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte	VOL	, v060
	.byte	BEND	, c_v-10
	.byte	W01
	.byte		c_v-13
	.byte	W01
	.byte	VOL	, v039
	.byte	FINE

	.align 2
	.global song162
song162:	@ 0x087BD774
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.int	voicegroup005		@ voicegroup/tone

	.int	song162_1		@ track
