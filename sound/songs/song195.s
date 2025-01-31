	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song195_1
song195_1:	@ 0x087BE52C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 50
	.byte	VOL	, v090
	.byte	LFOS	, 90
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 49
	.byte		N04	, An3, v127
	.byte	W04
	.byte		N32	, Dn3, v120
	.byte	W09
	.byte	VOL	, v086
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v053
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v045
	.byte	W01
	.byte		v041
	.byte	W01
	.byte		v037
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v030
	.byte	W01
	.byte		v026
	.byte	W01
	.byte		v022
	.byte	W01
	.byte		v019
	.byte	W01
	.byte		v015
	.byte	W01
	.byte		v011
	.byte	W01
	.byte		v007
	.byte	W01
	.byte		v004
	.byte	W03
	.byte	FINE

	.align 2
	.global song195
song195:	@ 0x087BE574
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song195_1		@ track
