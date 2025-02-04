	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song196_1
song196_1:	@ 0x087BE580
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 50
	.byte	VOL	, v090
	.byte	MODT	, 0
	.byte	LFOS	, 22
	.byte	PAN	, c_v
	.byte	MOD	, 49
	.byte	BENDR	, 20
	.byte	BEND	, c_v-64
	.byte		TIE	, Dn4, v080
	.byte	W01
	.byte	BEND	, c_v-63
	.byte	W01
	.byte		c_v-62
	.byte	W01
	.byte		c_v-60
	.byte	W01
	.byte		c_v-59
	.byte	W01
	.byte		c_v-57
	.byte	W01
	.byte		c_v-56
	.byte	W01
	.byte		c_v-55
	.byte	W01
	.byte		c_v-53
	.byte	W01
	.byte		c_v-52
	.byte	W01
	.byte		c_v-50
	.byte	W01
	.byte		c_v-49
	.byte	W01
	.byte		c_v-47
	.byte	W01
	.byte		c_v-46
	.byte	W01
	.byte		c_v-45
	.byte	W01
	.byte		c_v-43
	.byte	W01
	.byte		c_v-42
	.byte	W01
	.byte		c_v-40
	.byte	W01
	.byte		c_v-39
	.byte	W01
	.byte		c_v-38
	.byte	W01
	.byte		c_v-36
	.byte	W01
	.byte		c_v-35
	.byte	W01
	.byte		c_v-33
	.byte	W01
	.byte		c_v-32
	.byte	W01
song196_1_1:
	.byte	BEND	, c_v-30
	.byte	W01
	.byte		c_v-29
	.byte	W01
	.byte		c_v-28
	.byte	W01
	.byte		c_v-26
	.byte	W01
	.byte		c_v-25
	.byte	W01
	.byte		c_v-23
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-20
	.byte	W01
	.byte		c_v-19
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		c_v-16
	.byte	W01
	.byte		c_v-15
	.byte	W01
	.byte		c_v-13
	.byte	W01
	.byte		c_v-12
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v-9
	.byte	W01
	.byte		c_v-8
	.byte	W01
	.byte		c_v-6
	.byte	W01
	.byte		c_v-5
	.byte	W01
	.byte		c_v-3
	.byte	W01
	.byte		c_v-2
	.byte	W52
	.byte	W72
	.byte	GOTO	
		mPtr	song196_1_1
	.byte	W24
	.byte		EOT	, Dn4
	.byte	FINE

	mAlignWord
	.global song196
song196:	@ 0x087BE5FC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb
    
mAlignWord
	mPtr	voicegroup000		@ voicegroup/tone

	mPtr	song196_1		@ track
