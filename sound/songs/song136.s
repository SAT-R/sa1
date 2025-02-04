	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song136_1
song136_1:	@ 0x087BCEBC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 123
	.byte	MOD	, 40
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte	BENDR	, 16
	.byte	BEND	, c_v-42
	.byte		N24	, Bn3, v127
	.byte	W01
	.byte	VOL	, v104
	.byte	BEND	, c_v-40
	.byte	W01
	.byte	VOL	, v098
	.byte	BEND	, c_v-38
	.byte	W01
	.byte	VOL	, v092
	.byte	BEND	, c_v-10
	.byte	W01
	.byte	VOL	, v087
	.byte	BEND	, c_v-10
	.byte	W01
	.byte	VOL	, v081
	.byte	BEND	, c_v-11
	.byte	W01
	.byte	VOL	, v075
	.byte	BEND	, c_v-11
	.byte	W01
	.byte	VOL	, v070
	.byte	BEND	, c_v-12
	.byte	W01
	.byte	VOL	, v064
	.byte	BEND	, c_v-12
	.byte	W01
	.byte	VOL	, v058
	.byte	BEND	, c_v-13
	.byte	W01
	.byte	VOL	, v052
	.byte	BEND	, c_v-13
	.byte	W01
	.byte	VOL	, v046
	.byte	BEND	, c_v-14
	.byte	W01
	.byte	VOL	, v040
	.byte	BEND	, c_v-14
	.byte	W01
	.byte	VOL	, v038
	.byte	BEND	, c_v-15
	.byte	W01
	.byte	VOL	, v035
	.byte	BEND	, c_v-15
	.byte	W01
	.byte	VOL	, v032
	.byte	BEND	, c_v-16
	.byte	W01
	.byte	VOL	, v028
	.byte	BEND	, c_v-16
	.byte	W01
	.byte	VOL	, v025
	.byte	BEND	, c_v-17
	.byte	W01
	.byte	VOL	, v021
	.byte	BEND	, c_v-17
	.byte	W01
	.byte	VOL	, v018
	.byte	BEND	, c_v-18
	.byte	W01
	.byte	VOL	, v014
	.byte	BEND	, c_v-18
	.byte	W01
	.byte	VOL	, v011
	.byte	BEND	, c_v-19
	.byte	W01
	.byte	VOL	, v007
	.byte	BEND	, c_v-19
	.byte	W01
	.byte	VOL	, v000
	.byte	BEND	, c_v-20
	.byte	W04
	.byte	FINE

	mAlignWord
	.global song136
song136:	@ 0x087BCF44
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song136_1		@ track
