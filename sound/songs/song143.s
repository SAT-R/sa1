	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song143_1
song143_1:	@ 0x087BD068
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 26
	.byte	MOD	, 49
	.byte	VOL	, v120
	.byte	BENDR	, 26
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	BEND	, c_v+63
	.byte		N05	, Gs1, v127
	.byte	W01
	.byte	VOL	, v118
	.byte	BEND	, c_v+62
	.byte	W01
	.byte	VOL	, v116
	.byte	BEND	, c_v+60
	.byte	W01
	.byte	VOL	, v114
	.byte	BEND	, c_v+58
	.byte	W01
	.byte	VOL	, v112
	.byte	BEND	, c_v+57
	.byte	W01
	.byte	VOL	, v110
	.byte	BEND	, c_v+55
	.byte	W01
	.byte	VOL	, v108
	.byte	BEND	, c_v+53
	.byte		N05	
	.byte	W01
	.byte	VOL	, v106
	.byte	BEND	, c_v+52
	.byte	W01
	.byte	VOL	, v103
	.byte	BEND	, c_v+50
	.byte	W01
	.byte	VOL	, v102
	.byte	BEND	, c_v+48
	.byte	W01
	.byte	VOL	, v100
	.byte	BEND	, c_v+46
	.byte	W01
	.byte	VOL	, v098
	.byte	BEND	, c_v+45
	.byte	W01
	.byte	VOL	, v096
	.byte	BEND	, c_v+43
	.byte		N30	
	.byte	W01
	.byte	VOL	, v094
	.byte	BEND	, c_v+41
	.byte	W01
	.byte	VOL	, v092
	.byte	BEND	, c_v+40
	.byte	W01
	.byte	VOL	, v089
	.byte	BEND	, c_v+38
	.byte	W01
	.byte	VOL	, v087
	.byte	BEND	, c_v+36
	.byte	W01
	.byte	VOL	, v085
	.byte	BEND	, c_v+34
	.byte	W01
	.byte	VOL	, v084
	.byte	BEND	, c_v+33
	.byte	W01
	.byte	VOL	, v082
	.byte	BEND	, c_v+31
	.byte	W01
	.byte	VOL	, v080
	.byte	BEND	, c_v+29
	.byte	W01
	.byte	VOL	, v078
	.byte	BEND	, c_v+28
	.byte	W01
	.byte	VOL	, v076
	.byte	BEND	, c_v+26
	.byte	W01
	.byte	VOL	, v073
	.byte	BEND	, c_v+24
	.byte	W01
	.byte	VOL	, v071
	.byte	BEND	, c_v+22
	.byte	W01
	.byte	VOL	, v064
	.byte	BEND	, c_v+21
	.byte	W01
	.byte	VOL	, v061
	.byte	BEND	, c_v+19
	.byte	W01
	.byte	VOL	, v051
	.byte	BEND	, c_v+17
	.byte	W01
	.byte	VOL	, v047
	.byte	BEND	, c_v+16
	.byte	W01
	.byte	VOL	, v042
	.byte	BEND	, c_v+14
	.byte	W01
	.byte	VOL	, v038
	.byte	BEND	, c_v+12
	.byte	W01
	.byte	VOL	, v034
	.byte	BEND	, c_v+11
	.byte	W01
	.byte	VOL	, v030
	.byte	W01
	.byte		v025
	.byte	W01
	.byte		v021
	.byte	W01
	.byte		v017
	.byte	W01
	.byte		v013
	.byte	W01
	.byte		v008
	.byte	W06
	.byte	FINE

	.align 2
	.global song143
song143:	@ 0x087BD12C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	song143_1		@ track
