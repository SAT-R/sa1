	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song122_1
song122_1:	@ 0x087BC868
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 121
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte	BENDR	, 15
	.byte	BEND	, c_v+22
	.byte		N54	, Fn5, v127
	.byte	W01
	.byte	VOL	, v125
	.byte	BEND	, c_v+22
	.byte	W01
	.byte	VOL	, v123
	.byte	BEND	, c_v+22
	.byte	W01
	.byte	VOL	, v121
	.byte	BEND	, c_v+21
	.byte	W01
	.byte	VOL	, v118
	.byte	BEND	, c_v+21
	.byte	W01
	.byte	VOL	, v116
	.byte	BEND	, c_v+20
	.byte	W01
	.byte	VOL	, v114
	.byte	BEND	, c_v+20
	.byte	W01
	.byte	VOL	, v112
	.byte	BEND	, c_v+20
	.byte	W01
	.byte	VOL	, v109
	.byte	BEND	, c_v+19
	.byte	W01
	.byte	VOL	, v107
	.byte	BEND	, c_v+19
	.byte	W01
	.byte	VOL	, v105
	.byte	BEND	, c_v+18
	.byte	W01
	.byte	VOL	, v103
	.byte	BEND	, c_v+18
	.byte	W01
	.byte	VOL	, v100
	.byte	BEND	, c_v+18
	.byte	W01
	.byte	VOL	, v098
	.byte	BEND	, c_v+17
	.byte	W01
	.byte	VOL	, v096
	.byte	BEND	, c_v+17
	.byte	W01
	.byte	VOL	, v093
	.byte	BEND	, c_v+16
	.byte	W01
	.byte	VOL	, v091
	.byte	BEND	, c_v+16
	.byte	W01
	.byte	VOL	, v089
	.byte	BEND	, c_v+16
	.byte	W01
	.byte	VOL	, v087
	.byte	BEND	, c_v+15
	.byte	W01
	.byte	VOL	, v084
	.byte	BEND	, c_v+15
	.byte	W01
	.byte	VOL	, v082
	.byte	BEND	, c_v+14
	.byte	W01
	.byte	VOL	, v080
	.byte	BEND	, c_v+14
	.byte	W01
	.byte	VOL	, v078
	.byte	BEND	, c_v+14
	.byte	W01
	.byte	VOL	, v075
	.byte	BEND	, c_v+13
	.byte	W01
	.byte	VOL	, v073
	.byte	BEND	, c_v+13
	.byte	W01
	.byte	VOL	, v071
	.byte	BEND	, c_v+12
	.byte	W01
	.byte	VOL	, v069
	.byte	BEND	, c_v+12
	.byte	W01
	.byte	VOL	, v066
	.byte	BEND	, c_v+12
	.byte	W01
	.byte	VOL	, v064
	.byte	BEND	, c_v+11
	.byte	W01
	.byte	VOL	, v062
	.byte	BEND	, c_v+11
	.byte	W01
	.byte	VOL	, v059
	.byte	BEND	, c_v+10
	.byte	W01
	.byte	VOL	, v057
	.byte	BEND	, c_v+10
	.byte	W01
	.byte	VOL	, v055
	.byte	BEND	, c_v+10
	.byte	W01
	.byte	VOL	, v053
	.byte	BEND	, c_v+9
	.byte	W01
	.byte	VOL	, v050
	.byte	BEND	, c_v+9
	.byte	W01
	.byte	VOL	, v048
	.byte	BEND	, c_v+8
	.byte	W01
	.byte	VOL	, v046
	.byte	BEND	, c_v+8
	.byte	W01
	.byte	VOL	, v044
	.byte	BEND	, c_v+8
	.byte	W01
	.byte	VOL	, v041
	.byte	BEND	, c_v+7
	.byte	W01
	.byte	VOL	, v039
	.byte	BEND	, c_v+7
	.byte	W01
	.byte	VOL	, v037
	.byte	BEND	, c_v+6
	.byte	W01
	.byte	VOL	, v035
	.byte	BEND	, c_v+6
	.byte	W01
	.byte	VOL	, v032
	.byte	BEND	, c_v+6
	.byte	W01
	.byte	VOL	, v030
	.byte	BEND	, c_v+5
	.byte	W01
	.byte	VOL	, v028
	.byte	BEND	, c_v+5
	.byte	W01
	.byte	VOL	, v025
	.byte	BEND	, c_v+4
	.byte	W01
	.byte	VOL	, v023
	.byte	BEND	, c_v+4
	.byte	W01
	.byte	VOL	, v021
	.byte	BEND	, c_v+4
	.byte	W01
	.byte	VOL	, v019
	.byte	BEND	, c_v+3
	.byte	W01
	.byte	VOL	, v016
	.byte	BEND	, c_v+3
	.byte	W01
	.byte	VOL	, v014
	.byte	BEND	, c_v+2
	.byte	W01
	.byte	VOL	, v012
	.byte	BEND	, c_v+2
	.byte	W01
	.byte	VOL	, v010
	.byte	BEND	, c_v+2
	.byte	W01
	.byte	VOL	, v007
	.byte	BEND	, c_v+1
	.byte	W01
	.byte	VOL	, v000
	.byte	FINE

	mAlignWord
	.global song122
song122:	@ 0x087BC988
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

mAlignWord
	mPtr	voicegroup005		@ voicegroup/tone

	mPtr	song122_1		@ track
