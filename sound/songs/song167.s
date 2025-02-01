	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song167_1
song167_1:	@ 0x087BD818
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 52
	.byte	VOL	, v070
	.byte	PAN	, c_v
	.byte	BENDR	, 6
	.byte	BEND	, c_v-1
	.byte		N60	, Cn4, v124
	.byte	W01
	.byte	BEND	, c_v+20
	.byte	W01
	.byte		c_v+41
	.byte	W01
	.byte		c_v+58
	.byte	W01
	.byte		c_v+45
	.byte	W01
	.byte		c_v+31
	.byte	W01
	.byte		c_v+18
	.byte	W01
	.byte		c_v+4
	.byte	W01
	.byte		c_v-9
	.byte	W01
	.byte		c_v-23
	.byte	W01
	.byte		c_v-36
	.byte	W01
	.byte		c_v-50
	.byte	W01
	.byte		c_v-64
	.byte	W01
	.byte		c_v-50
	.byte	W01
	.byte		c_v-36
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-8
	.byte	W01
	.byte		c_v+6
	.byte	W01
	.byte		c_v+20
	.byte	W01
	.byte		c_v+34
	.byte	W01
	.byte		c_v+48
	.byte	W01
	.byte		c_v+63
	.byte	W36
	.byte	W03
	.byte	FINE

	@********************** Track  2 **********************@

	.global song167_2
song167_2:	@ 0x087BD857
	.byte	KEYSH	, 0
	.byte	VOICE	, 50
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte	BENDR	, 15
	.byte		N02	, Fn3, v124
	.byte	W02
	.byte	FINE

	.align 2
	.global song167
song167:	@ 0x087BD868
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.int	voicegroup000		@ voicegroup/tone

	.int	song167_1		@ track
	.int	song167_2		@ track
