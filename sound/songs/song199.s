	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song199_1
song199_1:	@ 0x087BE634
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 0
	.byte	BENDR	, 11
	.byte	LFOS	, 73
	.byte	MODT	, 0
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	MOD	, 15
	.byte	BEND	, c_v-64
	.byte		TIE	, Fs1, v127
	.byte	W02
	.byte	BEND	, c_v-62
	.byte	W01
	.byte		c_v-59
	.byte	W01
	.byte		c_v-57
	.byte	W01
	.byte		c_v-54
	.byte	W01
	.byte		c_v-51
	.byte	W01
	.byte		c_v-49
	.byte	W01
	.byte		c_v-46
	.byte	W01
	.byte		c_v-43
	.byte	W01
	.byte		c_v-41
	.byte	W01
	.byte		c_v-38
	.byte	W01
	.byte		c_v-35
	.byte	W01
	.byte		c_v-33
	.byte	W01
	.byte		c_v-30
	.byte	W01
	.byte		c_v-27
	.byte	W01
	.byte		c_v-25
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-20
	.byte	W01
	.byte		c_v-17
	.byte	W01
	.byte		c_v-14
	.byte	W01
	.byte		c_v-12
	.byte	W01
	.byte		c_v-9
	.byte	W01
	.byte		c_v-6
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v-1
	.byte	W01
	.byte		c_v+2
	.byte	W01
	.byte		c_v+4
	.byte	W01
	.byte		c_v+7
	.byte	W01
	.byte		c_v+10
	.byte	W01
	.byte		c_v+12
	.byte	W01
	.byte		c_v+15
	.byte	W01
	.byte		c_v+18
	.byte	W01
	.byte		c_v+20
	.byte	W01
	.byte		c_v+23
	.byte	W01
	.byte		c_v+25
	.byte	W01
	.byte		c_v+28
	.byte	W01
	.byte		c_v+31
	.byte	W01
	.byte		c_v+33
	.byte	W01
	.byte		c_v+36
	.byte	W01
	.byte		c_v+39
	.byte	W01
	.byte		c_v+41
	.byte	W01
	.byte		c_v+44
	.byte	W01
	.byte		c_v+47
	.byte	W01
	.byte		c_v+49
	.byte	W01
	.byte		c_v+52
	.byte	W01
	.byte		c_v+55
	.byte	W01
	.byte		c_v+57
	.byte	W01
song199_1_1:
	.byte	BEND	, c_v+60
	.byte	W48
	.byte	W96
	.byte	GOTO	
		.int	song199_1_1
	.byte	W22
	.byte		EOT	, Fs1
	.byte	FINE

	.align 2
	.global song199
song199:	@ 0x087BE6B8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.int	voicegroup000		@ voicegroup/tone

	.int	song199_1		@ track
