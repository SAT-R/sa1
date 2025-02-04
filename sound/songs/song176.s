	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song176_1
song176_1:	@ 0x087BDC10
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 1
	.byte	VOL	, v088
	.byte	LFOS	, 45
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 41
	.byte	BEND	, c_v-57
	.byte		N48	, Ds3, v127
	.byte	W01
	.byte	VOL	, v087
	.byte	BEND	, c_v-50
	.byte	W01
	.byte	VOL	, v084
	.byte	BEND	, c_v-42
	.byte	W01
	.byte	VOL	, v082
	.byte	BEND	, c_v-35
	.byte	W01
	.byte	VOL	, v080
	.byte	BEND	, c_v-27
	.byte	W01
	.byte	VOL	, v080
	.byte	BEND	, c_v-20
	.byte	W01
	.byte	VOL	, v076
	.byte	BEND	, c_v-12
	.byte	W01
	.byte	VOL	, v074
	.byte	BEND	, c_v-5
	.byte	W01
	.byte	VOL	, v072
	.byte	BEND	, c_v+3
	.byte	W01
	.byte	VOL	, v070
	.byte	BEND	, c_v+10
	.byte	W01
	.byte	VOL	, v068
	.byte	BEND	, c_v+18
	.byte	W01
	.byte	VOL	, v066
	.byte	BEND	, c_v+25
	.byte	W01
	.byte	VOL	, v064
	.byte	BEND	, c_v+33
	.byte	W01
	.byte	VOL	, v062
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v054
	.byte	W01
	.byte		v053
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v046
	.byte	W01
	.byte		v044
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v041
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v036
	.byte	W01
	.byte		v031
	.byte	W01
	.byte		v031
	.byte	W01
	.byte		v030
	.byte	W01
	.byte		v029
	.byte	W01
	.byte		v028
	.byte	W01
	.byte		v027
	.byte	W01
	.byte		v026
	.byte	W01
	.byte		v025
	.byte	W01
	.byte		v024
	.byte	W01
	.byte		v023
	.byte	W01
	.byte		v022
	.byte	W01
	.byte		v021
	.byte	W01
	.byte		v020
	.byte	W01
	.byte		v019
	.byte	W01
	.byte		v018
	.byte	W01
	.byte		v017
	.byte	W01
	.byte		v017
	.byte	W01
	.byte		v015
	.byte	W01
	.byte		v014
	.byte	W01
	.byte		v014
	.byte	W01
	.byte		v012
	.byte	W01
	.byte		v012
	.byte	W01
	.byte		v010
	.byte	W01
	.byte		v009
	.byte	W01
	.byte		v009
	.byte	W01
	.byte		v007
	.byte	W01
	.byte		v007
	.byte	W01
	.byte		v006
	.byte	W01
	.byte		v004
	.byte	W01
	.byte		v004
	.byte	FINE

	mAlignWord
	.global song176
song176:	@ 0x087BDCBC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup000		@ voicegroup/tone

	mPtr	song176_1		@ track
