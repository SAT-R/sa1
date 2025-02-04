	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song302_1
song302_1:	@ 0x087BEE84
	.byte	KEYSH	, 0
	.byte	TEMPO	, 38
	.byte	VOICE	, 108
	.byte	VOL	, v077
	.byte	PAN	, c_v
	.byte		N02	, Bn4, v108
	.byte	W02
	.byte			Gn4
	.byte	W03
	.byte			Dn5
	.byte	W03
	.byte		N05	, Bn4
	.byte	W05
	.byte			Gn5
	.byte	W05
	.byte		N10	, Dn5
	.byte	W11
	.byte	FINE

	@********************** Track  2 **********************@

	.global song302_2
song302_2:	@ 0x087BEE9F
	.byte	KEYSH	, 0
	.byte	VOICE	, 109
	.byte	VOL	, v077
	.byte	PAN	, c_v
	.byte		N02	, Dn4, v108
	.byte	W02
	.byte			Bn3
	.byte	W03
	.byte			Fs4
	.byte	W03
	.byte		N05	, Dn4
	.byte	W05
	.byte			Bn4
	.byte	W05
	.byte		N10	, Fs4
	.byte	W11
	.byte	FINE

	@********************** Track  3 **********************@

	.global song302_3
song302_3:	@ 0x087BEEB8
	.byte	KEYSH	, 0
	.byte	VOICE	, 63
	.byte	VOL	, v077
	.byte	PAN	, c_v
	.byte		N02	, Bn3, v108
	.byte	W02
	.byte			Gn3
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte		N05	, Bn3
	.byte	W05
	.byte			Gn4
	.byte	W05
	.byte		N10	, Dn4
	.byte	W11
	.byte	FINE

	@********************** Track  4 **********************@

	.global song302_4
song302_4:	@ 0x087BEED1
	.byte	KEYSH	, 0
	.byte	VOICE	, 64
	.byte	VOL	, v077
	.byte	PAN	, c_v
	.byte		N02	, Dn3, v108
	.byte	W02
	.byte			Bn2
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte		N05	, Dn3
	.byte	W05
	.byte			Bn3
	.byte	W05
	.byte		N10	, Fs3
	.byte	W11
	.byte	FINE

	mAlignWord
	.global song302
song302:	@ 0x087BEEEC
	.byte	4		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb
    
mAlignWord
	mPtr	voicegroup007		@ voicegroup/tone

	mPtr	song302_1		@ track
	mPtr	song302_2		@ track
	mPtr	song302_3		@ track
	mPtr	song302_4		@ track
