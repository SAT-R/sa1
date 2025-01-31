	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song120_1
song120_1:	@ 0x087BC7DC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 120
	.byte	VOL	, v127
	.byte	LFOS	, 45
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 76
	.byte		N05	, Ds3, v127
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
song120_1_1:
	.byte		N05	, Ds3, v127
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	GOTO	
		.word	song120_1_1
	.byte	FINE

	.align 2
	.global song120
song120:	@ 0x087BC838
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	song120_1		@ track
