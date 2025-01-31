	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song193_1
song193_1:	@ 0x087BE40C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 6
	.byte	VOL	, v090
	.byte	LFOS	, 30
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 60
	.byte	BEND	, c_v-64
	.byte		N02	, Gn2, v127
	.byte	W01
	.byte	VOL	, v090
	.byte	BEND	, c_v-59
	.byte	W01
	.byte	VOL	, v090
	.byte	BEND	, c_v-54
	.byte	W01
	.byte	VOL	, v090
	.byte	BEND	, c_v-49
	.byte		N02	, Gs3
	.byte	W01
	.byte	VOL	, v082
	.byte	BEND	, c_v-43
	.byte	W01
	.byte	VOL	, v079
	.byte	BEND	, c_v-38
	.byte	W01
	.byte	VOL	, v075
	.byte	BEND	, c_v-33
	.byte	W01
	.byte	VOL	, v072
	.byte	BEND	, c_v-27
	.byte		N11	, En4
	.byte	W01
	.byte	VOL	, v068
	.byte	BEND	, c_v-22
	.byte	W01
	.byte	VOL	, v065
	.byte	BEND	, c_v-17
	.byte	W01
	.byte	VOL	, v061
	.byte	BEND	, c_v-12
	.byte	W01
	.byte	VOL	, v058
	.byte	BEND	, c_v-6
	.byte	W01
	.byte	VOL	, v054
	.byte	BEND	, c_v-1
	.byte	W01
	.byte	VOL	, v051
	.byte	BEND	, c_v+4
	.byte	W01
	.byte	VOL	, v047
	.byte	BEND	, c_v+10
	.byte	W01
	.byte	VOL	, v043
	.byte	BEND	, c_v+15
	.byte	W01
	.byte	VOL	, v040
	.byte	BEND	, c_v+20
	.byte	W01
	.byte	VOL	, v036
	.byte	BEND	, c_v+25
	.byte	W01
	.byte	VOL	, v033
	.byte	BEND	, c_v+31
	.byte	W01
	.byte	VOL	, v029
	.byte	BEND	, c_v+36
	.byte		N36	, Cn4
	.byte	W01
	.byte	VOL	, v019
	.byte	BEND	, c_v+41
	.byte	W01
	.byte	VOL	, v018
	.byte	BEND	, c_v+47
	.byte	W01
	.byte	VOL	, v017
	.byte	BEND	, c_v+52
	.byte	W01
	.byte	VOL	, v016
	.byte	W01
	.byte		v015
	.byte	W01
	.byte		v014
	.byte	W01
	.byte		v013
	.byte	W01
	.byte		v012
	.byte	W01
	.byte		v011
	.byte	W01
	.byte		v010
	.byte	W01
	.byte		v009
	.byte	W01
	.byte		v008
	.byte	W01
	.byte		v007
	.byte	W01
	.byte		v006
	.byte	W01
	.byte		v005
	.byte	W01
	.byte		v004
	.byte	W01
	.byte		v003
	.byte	W21
	.byte	FINE

	.align 2
	.global song193
song193:	@ 0x087BE4B4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	song193_1		@ track
