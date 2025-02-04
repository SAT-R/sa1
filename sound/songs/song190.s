	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song190_1
song190_1:	@ 0x087BE2D0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 50
	.byte	VOL	, v090
	.byte	BENDR	, 18
	.byte	LFOS	, 30
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 60
	.byte	BEND	, c_v+63
	.byte		N30	, Cn5, v127
	.byte	W01
	.byte	VOL	, v090
	.byte	BEND	, c_v+32
	.byte	W01
	.byte	VOL	, v090
	.byte	BEND	, c_v
	.byte	W01
	.byte	VOL	, v090
	.byte	BEND	, c_v-32
	.byte	W01
	.byte	VOL	, v086
	.byte	BEND	, c_v-64
	.byte	W01
	.byte	VOL	, v082
	.byte	BEND	, c_v-33
	.byte	W01
	.byte	VOL	, v078
	.byte	BEND	, c_v-1
	.byte	W01
	.byte	VOL	, v075
	.byte	BEND	, c_v+31
	.byte	W01
	.byte	VOL	, v071
	.byte	BEND	, c_v+63
	.byte	W01
	.byte	VOL	, v067
	.byte	BEND	, c_v+56
	.byte	W01
	.byte	VOL	, v063
	.byte	BEND	, c_v+49
	.byte	W01
	.byte	VOL	, v060
	.byte	BEND	, c_v+42
	.byte	W01
	.byte	VOL	, v055
	.byte	BEND	, c_v+35
	.byte	W01
	.byte	VOL	, v052
	.byte	BEND	, c_v+28
	.byte	W01
	.byte	VOL	, v048
	.byte	BEND	, c_v+21
	.byte	W01
	.byte	VOL	, v044
	.byte	BEND	, c_v+14
	.byte	W01
	.byte	VOL	, v041
	.byte	BEND	, c_v+7
	.byte	W01
	.byte	VOL	, v037
	.byte	BEND	, c_v
	.byte	W01
	.byte	VOL	, v033
	.byte	BEND	, c_v-7
	.byte	W01
	.byte	VOL	, v029
	.byte	BEND	, c_v-14
	.byte	W01
	.byte	VOL	, v021
	.byte	BEND	, c_v-21
	.byte	W01
	.byte	VOL	, v017
	.byte	BEND	, c_v-28
	.byte	W01
	.byte	VOL	, v011
	.byte	BEND	, c_v-35
	.byte	W01
	.byte	VOL	, v005
	.byte	BEND	, c_v-42
	.byte	W01
	.byte	VOL	, v000
	.byte	BEND	, c_v-49
	.byte	W01
	.byte		c_v-56
	.byte	W01
	.byte		c_v-64
	.byte	W05
	.byte	FINE

	mAlignWord
	.global song190
song190:	@ 0x087BE368
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb
    
mAlignWord
	mPtr	voicegroup000		@ voicegroup/tone

	mPtr	song190_1		@ track
