	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song132_1
song132_1:	@ 0x087BCDA0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 22
	.byte	VOL	, v110
	.byte	LFOS	, 60
	.byte	BENDR	, 15
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte		N06	, Gn5, v127
	.byte	W01
	.byte	VOL	, v105
	.byte	W01
	.byte		v101
	.byte	W01
	.byte		v097
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v084
	.byte		N06	, Cn6
	.byte	W01
	.byte	VOL	, v079
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v052
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v044
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v030
	.byte	W03
	.byte		v017
	.byte	W03
	.byte		v000
	.byte	FINE

	.align 2
	.global song132
song132:	@ 0x087BCDE0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.int	voicegroup005		@ voicegroup/tone

	.int	song132_1		@ track
