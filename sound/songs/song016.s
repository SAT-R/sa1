	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song016_1
song016_1:	@ 0x087A5A28
	.byte	KEYSH	, 0
	.byte	TEMPO	, 50
	.byte	VOICE	, 127
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte		N08	, Cs1, v127
	.byte	W04
	.byte			Cn1
	.byte	W08
	.byte		N03	, Cs1, v068
	.byte		N12	, Gs1, v127
	.byte	W04
	.byte		N08	, Cs1
	.byte	W08
	.byte		N04	, Cn1
	.byte		N15	, En1, v056
	.byte	W04
	.byte		N04	, Dn1, v036
	.byte	W08
	.byte			Cs1, v127
	.byte	W04
	.byte			Cn1
	.byte		N19	, En1, v056
	.byte	W08
song016_1_5:
	.byte		N08	, Gn1, v127
	.byte	W04
	.byte		N04	, Dn1, v036
	.byte		N08	, Gs1, v127
	.byte	W08
	.byte		N04	, Cn1
	.byte		N15	, En1, v056
	.byte	W12
	.byte		N04	, Cs1, v127
	.byte	W04
	.byte			Cn1
	.byte		N04	, Dn1, v036
	.byte		N19	, En1, v056
	.byte	W08
	.byte		N08	, An1, v127
	.byte	W04
	.byte			Gs1
	.byte	W08
	.byte	PEND
song016_1_6:
	.byte		N04	, Cn1, v127
	.byte		N15	, En1, v056
	.byte	W04
	.byte		N04	, Dn1, v036
	.byte	W08
	.byte			Cs1, v127
	.byte	W04
	.byte			Cn1
	.byte		N04	, En1, v056
	.byte	W12
	.byte			Dn1, v036
	.byte	W20
	.byte	PEND
song016_1_7:
	.byte	W04
	.byte		N04	, Dn1, v036
	.byte	W08
	.byte			Cs1, v060
	.byte	W04
	.byte			Cs1, v127
	.byte	W08
	.byte		N08	, Gs1
	.byte	W04
	.byte		N04	, Dn1, v036
	.byte		N08	, Gn1, v127
	.byte	W08
	.byte		N04	, Cn1
	.byte		N16	, En1, v052
	.byte	W12
	.byte	PEND
song016_1_13:
	.byte		N04	, Cs1, v060
	.byte	W04
	.byte			Cs1, v127
	.byte		N04	, Dn1, v036
	.byte	W12
	.byte	PEND
song016_1_14:
	.byte		N04	, Cn1, v127
	.byte		N12	, Ds1, v044
	.byte		N48	, Cs2, v127
	.byte	W12
	.byte		N04	, Dn1, v040
	.byte	W08
	.byte		N03	, Cn1, v127
	.byte		N04	, Dn1, v028
	.byte	W04
	.byte			Cs1, v127
	.byte		N12	, Ds1, v044
	.byte	W08
song016_1_1:
	.byte	W04
	.byte		N04	, Dn1, v040
	.byte	W08
	.byte		N03	, Cn1, v127
	.byte		N04	, Dn1, v040
	.byte	W04
	.byte			Cn1, v127
	.byte	W04
	.byte			Dn1, v040
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W08
	.byte		N03	, Cn1, v127
	.byte		N04	, Dn1, v028
	.byte	W04
	.byte			Cs1, v127
	.byte		N12	, Ds1, v044
	.byte	W08
	.byte	PEND
song016_1_2:
	.byte	W04
	.byte		N04	, Cn1, v127
	.byte		N04	, Dn1, v040
	.byte	W08
	.byte		N04	
	.byte	W04
	.byte			Cn1, v127
	.byte		N12	, Ds1, v044
	.byte	W12
	.byte		N04	, Dn1, v040
	.byte	W08
	.byte		N03	, Cn1, v127
	.byte		N04	, Dn1, v028
	.byte	W04
	.byte			Cs1, v127
	.byte		N12	, Ds1, v044
	.byte	W08
	.byte	PEND
	.byte	PATT	
		mPtr	song016_1_1
	.byte	PATT	
		mPtr	song016_1_2
	.byte	PATT	
		mPtr	song016_1_1
	.byte	PATT	
		mPtr	song016_1_2
	.byte	PATT	
		mPtr	song016_1_1
song016_1_8:
	.byte	W04
	.byte		N04	, Cn1, v127
	.byte		N04	, Dn1, v040
	.byte	W08
	.byte			Cs1, v127
	.byte		N04	, Ds1, v040
	.byte	W04
	.byte			Cn1, v127
	.byte		N12	, Ds1, v044
	.byte	W12
	.byte		N04	, Dn1, v040
	.byte	W08
	.byte		N03	, Cn1, v127
	.byte		N04	, Dn1, v028
	.byte	W04
	.byte			Cs1, v127
	.byte		N12	, Ds1, v044
	.byte	W08
	.byte	PEND
	.byte	PATT	
		mPtr	song016_1_1
	.byte	PATT	
		mPtr	song016_1_2
	.byte	PATT	
		mPtr	song016_1_1
	.byte	PATT	
		mPtr	song016_1_2
	.byte	PATT	
		mPtr	song016_1_1
	.byte	PATT	
		mPtr	song016_1_2
	.byte	PATT	
		mPtr	song016_1_1
song016_1_9:
	.byte		N03	, Cs1, v127
	.byte	W04
	.byte		N04	, Cn1
	.byte		N04	, Dn1, v040
	.byte	W08
	.byte		N04	
	.byte	W04
	.byte			Cn1, v127
	.byte		N04	, Dn1, v040
	.byte	W08
	.byte			Dn1, v028
	.byte	W04
	.byte		N12	, Ds1, v056
	.byte	W08
	.byte		N03	, Cn1, v127
	.byte	W04
	.byte		N04	, Cs1
	.byte		N04	, Dn1, v040
	.byte	W08
	.byte	PEND
song016_1_3:
	.byte		N04	, Dn1, v028
	.byte	W04
	.byte		N12	, Ds1, v056
	.byte	W08
	.byte		N03	, Cn1, v127
	.byte	W04
	.byte		N04	
	.byte		N04	, Dn1, v040
	.byte	W08
	.byte			Dn1, v028
	.byte	W04
	.byte		N12	, Ds1, v056
	.byte	W08
	.byte		N03	, Cn1, v127
	.byte	W04
	.byte		N04	, Cs1
	.byte		N04	, Dn1, v040
	.byte	W08
	.byte	PEND
song016_1_4:
	.byte		N04	, Dn1, v028
	.byte	W04
	.byte			Cn1, v127
	.byte		N12	, Ds1, v056
	.byte	W12
	.byte		N04	, Cn1, v127
	.byte		N04	, Dn1, v040
	.byte	W08
	.byte			Dn1, v028
	.byte	W04
	.byte		N12	, Ds1, v056
	.byte	W08
	.byte		N03	, Cn1, v127
	.byte	W04
	.byte		N04	, Cs1
	.byte		N04	, Dn1, v040
	.byte	W08
	.byte	PEND
	.byte	PATT	
		mPtr	song016_1_3
	.byte	PATT	
		mPtr	song016_1_4
	.byte	PATT	
		mPtr	song016_1_3
	.byte	PATT	
		mPtr	song016_1_4
	.byte	PATT	
		mPtr	song016_1_3
song016_1_10:
	.byte		N04	, Cn1, v127
	.byte		N04	, Dn1, v028
	.byte	W04
	.byte			Cs1, v127
	.byte		N12	, Ds1, v056
	.byte	W12
	.byte		N04	, Cn1, v127
	.byte		N12	, Ds1, v044
	.byte		N56	, Cs2, v127
	.byte	W12
	.byte		N04	, Dn1, v040
	.byte	W08
	.byte		N03	, Cn1, v127
	.byte		N04	, Dn1, v028
	.byte	W04
	.byte			Cs1, v127
	.byte		N12	, Ds1, v044
	.byte	W08
	.byte	PEND
	.byte	PATT	
		mPtr	song016_1_1
	.byte	PATT	
		mPtr	song016_1_2
	.byte	PATT	
		mPtr	song016_1_1
	.byte	PATT	
		mPtr	song016_1_2
	.byte	PATT	
		mPtr	song016_1_1
	.byte	PATT	
		mPtr	song016_1_2
song016_1_11:
	.byte	W04
	.byte		N04	, Dn1, v040
	.byte	W08
	.byte		N03	, Cn1, v127
	.byte		N04	, Dn1, v040
	.byte	W04
	.byte			Cn1, v127
	.byte		N12	, Ds1, v044
	.byte	W12
	.byte		N04	, Dn1, v040
	.byte	W08
	.byte		N03	, Cn1, v127
	.byte		N04	, Dn1, v028
	.byte	W04
	.byte		N07	, Cs1, v127
	.byte	W08
	.byte	PEND
song016_1_12:
	.byte		N08	, Cn1, v127
	.byte	W04
	.byte		N15	, En1, v056
	.byte	W08
	.byte		N03	, Cs1, v068
	.byte		N12	, Gs1, v127
	.byte	W04
	.byte		N08	, Cs1
	.byte	W08
	.byte		N04	, Cn1
	.byte		N15	, En1, v056
	.byte	W04
	.byte		N04	, Dn1, v036
	.byte	W08
	.byte			Cs1, v127
	.byte	W04
	.byte			Cn1
	.byte		N19	, En1, v056
	.byte	W08
	.byte	PEND
	.byte	PATT	
		mPtr	song016_1_5
	.byte	PATT	
		mPtr	song016_1_6
	.byte	PATT	
		mPtr	song016_1_7
	.byte		N04	, Cs1, v060
	.byte	W04
	.byte			Cs1, v127
	.byte		N04	, Dn1, v036
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v044
	.byte		N48	, Cs2, v127
	.byte	W12
	.byte		N04	, Dn1, v040
	.byte	W08
	.byte		N03	, Cn1, v127
	.byte		N04	, Dn1, v028
	.byte	W04
	.byte			Cs1, v127
	.byte		N12	, Ds1, v044
	.byte	W08
	.byte	PATT	
		mPtr	song016_1_1
	.byte	PATT	
		mPtr	song016_1_2
	.byte	PATT	
		mPtr	song016_1_1
	.byte	PATT	
		mPtr	song016_1_2
	.byte	PATT	
		mPtr	song016_1_1
	.byte	PATT	
		mPtr	song016_1_2
	.byte	PATT	
		mPtr	song016_1_1
	.byte	PATT	
		mPtr	song016_1_8
	.byte	PATT	
		mPtr	song016_1_1
	.byte	PATT	
		mPtr	song016_1_2
	.byte	PATT	
		mPtr	song016_1_1
	.byte	PATT	
		mPtr	song016_1_2
	.byte	PATT	
		mPtr	song016_1_1
	.byte	PATT	
		mPtr	song016_1_2
	.byte	PATT	
		mPtr	song016_1_1
	.byte	PATT	
		mPtr	song016_1_9
	.byte	PATT	
		mPtr	song016_1_3
	.byte	PATT	
		mPtr	song016_1_4
	.byte	PATT	
		mPtr	song016_1_3
	.byte	PATT	
		mPtr	song016_1_4
	.byte	PATT	
		mPtr	song016_1_3
	.byte	PATT	
		mPtr	song016_1_4
	.byte	PATT	
		mPtr	song016_1_3
	.byte	PATT	
		mPtr	song016_1_10
	.byte	PATT	
		mPtr	song016_1_1
	.byte	PATT	
		mPtr	song016_1_2
	.byte	PATT	
		mPtr	song016_1_1
	.byte	PATT	
		mPtr	song016_1_2
	.byte	PATT	
		mPtr	song016_1_1
	.byte	PATT	
		mPtr	song016_1_2
	.byte	PATT	
		mPtr	song016_1_11
	.byte	PATT	
		mPtr	song016_1_12
	.byte	PATT	
		mPtr	song016_1_5
	.byte	PATT	
		mPtr	song016_1_6
	.byte	PATT	
		mPtr	song016_1_7
	.byte	PATT	
		mPtr	song016_1_13
	.byte	GOTO	
		mPtr	song016_1_14
	.byte		N48	, Cs2, v127
	.byte	W32
	.byte	W19
	.byte	FINE

	@********************** Track  2 **********************@

	.global song016_2
song016_2:	@ 0x087A5D84
	.byte	KEYSH	, 0
	.byte	VOICE	, 62
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte	W24
	.byte		N16	, Fn1, v127
	.byte	W16
	.byte		N05	
	.byte	W08
song016_2_1:
	.byte	W12
	.byte		N16	, En1, v127
	.byte	W16
	.byte		N06	
	.byte	W20
	.byte	PEND
song016_2_2:
	.byte		N16	, Ds1, v127
	.byte	W16
	.byte		N07	
	.byte	W32
	.byte	PEND
	.byte	W36
	.byte		N16	, Gs1
	.byte	W12
	.byte	W04
	.byte		N11	, Gs1, v068
	.byte	W12
song016_2_35:
	.byte		N11	, Cs1, v092
	.byte	W12
	.byte			Fn1, v076
	.byte	W12
	.byte		N07	, Gs1, v088
	.byte	W08
song016_2_3:
	.byte		N03	, Cs1, v056
	.byte	W04
	.byte		N11	, Fn1, v088
	.byte	W12
	.byte			Cs2, v084
	.byte	W12
	.byte			Fn1, v076
	.byte	W12
	.byte			Gs1, v084
	.byte	W08
	.byte	PEND
song016_2_4:
	.byte	W04
	.byte		N11	, Cs1, v088
	.byte	W12
	.byte			Dn1, v104
	.byte	W12
	.byte			Fn1, v088
	.byte	W12
	.byte			Gs1, v084
	.byte	W08
	.byte	PEND
song016_2_5:
	.byte	W04
	.byte		N11	, Fn1, v088
	.byte	W12
	.byte			Bn1, v092
	.byte	W12
	.byte			Gs1, v076
	.byte	W12
	.byte			Fn1, v084
	.byte	W08
	.byte	PEND
song016_2_6:
	.byte	W04
	.byte		N11	, Dn1, v100
	.byte	W12
	.byte			Ds1, v080
	.byte	W12
	.byte			Fn1, v088
	.byte	W12
	.byte		N07	, Fs1, v104
	.byte	W08
	.byte	PEND
song016_2_7:
	.byte		N03	, Ds1, v084
	.byte	W04
	.byte		N11	, Gn1, v096
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Fs1, v100
	.byte	W12
	.byte			Fn1, v080
	.byte	W08
	.byte	PEND
song016_2_8:
	.byte	W04
	.byte		N11	, En1, v080
	.byte	W12
	.byte			Fn1, v092
	.byte	W12
	.byte			Fn1, v100
	.byte	W12
	.byte			En1, v092
	.byte	W08
	.byte	PEND
song016_2_9:
	.byte	W04
	.byte		N11	, En1, v100
	.byte	W12
	.byte			Ds1, v088
	.byte	W12
	.byte		N07	, As1, v084
	.byte	W08
	.byte		N03	, Ds1
	.byte	W04
	.byte		N11	, Gs1, v080
	.byte	W08
	.byte	PEND
song016_2_10:
	.byte	W04
	.byte		N11	, Cn2, v076
	.byte	W12
	.byte			Cs2, v084
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Fn1, v068
	.byte	W08
	.byte	PEND
song016_2_11:
	.byte	W04
	.byte		N07	, Gs1, v084
	.byte	W08
	.byte		N03	, Cs1, v068
	.byte	W04
	.byte		N11	, Cs1, v084
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte		N07	, Gs1
	.byte	W08
	.byte	PEND
song016_2_12:
	.byte		N03	, Cs1, v068
	.byte	W04
	.byte		N11	, Fn1, v096
	.byte	W12
	.byte			Dn1, v104
	.byte	W12
	.byte			Fn1, v084
	.byte	W12
	.byte			Gs1, v088
	.byte	W08
	.byte	PEND
song016_2_13:
	.byte	W04
	.byte		N11	, Fn1, v084
	.byte	W12
	.byte		N07	, Bn1, v080
	.byte	W08
	.byte		N03	, Cs1, v084
	.byte	W04
	.byte		N11	, Fn1
	.byte	W12
	.byte			Gs1
	.byte	W08
	.byte	PEND
song016_2_14:
	.byte	W04
	.byte		N11	, Dn1, v092
	.byte	W12
	.byte			Ds1, v084
	.byte	W12
	.byte		N07	, Fn1
	.byte	W08
	.byte		N03	, Ds1, v080
	.byte	W04
	.byte		N11	, Fs1, v104
	.byte	W08
	.byte	PEND
song016_2_15:
	.byte	W04
	.byte		N11	, Gn1, v084
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Fs1, v104
	.byte	W12
	.byte			Fn1, v088
	.byte	W08
	.byte	PEND
song016_2_16:
	.byte	W04
	.byte		N11	, Ds1, v084
	.byte	W12
	.byte			Cs1, v096
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N07	, Fn1, v088
	.byte	W08
	.byte	PEND
song016_2_17:
	.byte		N03	, Cs1, v088
	.byte	W04
	.byte		N11	, Fn1, v096
	.byte	W12
	.byte			Cs1, v084
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte		N07	, Gs1, v092
	.byte	W08
	.byte	PEND
song016_2_18:
	.byte		N03	, Cs1, v088
	.byte	W04
	.byte		N11	
	.byte	W12
	.byte			Fs1, v100
	.byte	W12
	.byte			Gs1, v080
	.byte	W12
	.byte			As1, v092
	.byte	W08
	.byte	PEND
song016_2_19:
	.byte	W04
	.byte		N11	, Gs1, v084
	.byte	W12
	.byte			Fs1, v096
	.byte	W12
	.byte			Fn1, v084
	.byte	W12
	.byte			Fs1, v088
	.byte	W08
	.byte	PEND
song016_2_20:
	.byte	W04
	.byte		N11	, Cs1, v084
	.byte	W12
	.byte			Fs1, v100
	.byte	W12
	.byte			Gs1, v092
	.byte	W12
	.byte		N07	, An1, v084
	.byte	W08
	.byte	PEND
song016_2_21:
	.byte		N03	, Cs1, v076
	.byte	W04
	.byte		N11	, Fs1, v108
	.byte	W12
	.byte			Bn1, v092
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N07	, Fs1, v104
	.byte	W08
	.byte	PEND
song016_2_22:
	.byte		N03	, Cs1, v068
	.byte	W04
	.byte		N11	, Fn1, v072
	.byte	W12
	.byte			En1, v100
	.byte	W12
	.byte			Fs1, v092
	.byte	W12
	.byte			Gs1
	.byte	W08
	.byte	PEND
song016_2_23:
	.byte	W04
	.byte		N11	, An1, v068
	.byte	W12
	.byte			Bn1, v080
	.byte	W12
	.byte			Gs1, v084
	.byte	W12
	.byte			En1
	.byte	W08
	.byte	PEND
song016_2_24:
	.byte	W04
	.byte		N11	, Gs1, v080
	.byte	W12
	.byte			Ds1, v092
	.byte	W12
	.byte			Fn1, v084
	.byte	W12
	.byte		N07	, Fs1, v092
	.byte	W08
	.byte	PEND
song016_2_25:
	.byte		N03	, Ds1, v076
	.byte	W04
	.byte		N11	, Gn1, v092
	.byte	W12
	.byte			Gs1, v088
	.byte	W12
	.byte		N07	, As1, v092
	.byte	W08
	.byte		N03	, Ds1, v076
	.byte	W04
	.byte		N11	, Bn1, v092
	.byte	W08
	.byte	PEND
song016_2_26:
	.byte	W04
	.byte		N11	, Cn2, v084
	.byte	W12
	.byte			Cs2, v092
	.byte	W12
	.byte			Ds2, v100
	.byte	W12
	.byte			Fn2, v096
	.byte	W08
	.byte	PEND
song016_2_27:
	.byte	W04
	.byte		N11	, Ds2, v092
	.byte	W12
	.byte		N07	, Cs2, v084
	.byte	W08
	.byte		N03	, Cs1
	.byte	W04
	.byte		N11	, Gs1, v096
	.byte	W12
	.byte			Fn1, v088
	.byte	W08
	.byte	PEND
song016_2_28:
	.byte	W04
	.byte		N11	, Cs1, v084
	.byte	W12
	.byte			Dn1, v092
	.byte	W12
	.byte			Ds1, v100
	.byte	W12
	.byte			Fn1, v084
	.byte	W08
	.byte	PEND
song016_2_29:
	.byte	W04
	.byte		N11	, Ds1, v084
	.byte	W12
	.byte			Dn1, v096
	.byte	W12
	.byte			Fn1, v076
	.byte	W12
	.byte		N07	, Gs1, v084
	.byte	W08
	.byte	PEND
song016_2_30:
	.byte		N03	, Cs1, v068
	.byte	W04
	.byte		N11	, Dn1, v100
	.byte	W12
	.byte			Ds1
	.byte	W12
	.byte			Fn1, v084
	.byte	W12
	.byte		N07	, Fs1, v096
	.byte	W08
	.byte	PEND
song016_2_31:
	.byte		N03	, Ds1, v068
	.byte	W04
	.byte		N11	, Gn1, v080
	.byte	W12
	.byte			Gs1, v096
	.byte	W12
	.byte			Fs1, v080
	.byte	W12
	.byte			Fn1, v100
	.byte	W08
	.byte	PEND
song016_2_32:
	.byte	W04
	.byte		N11	, Ds1, v100
	.byte	W12
	.byte			Cs1, v096
	.byte	W12
	.byte			Ds1
	.byte	W12
	.byte			Fn1, v088
	.byte	W08
	.byte	PEND
song016_2_33:
	.byte	W04
	.byte		N11	, Cs1, v096
	.byte	W12
	.byte			Ds1
	.byte	W12
	.byte			As1
	.byte	W12
	.byte		N07	, Gs1, v088
	.byte	W08
	.byte	PEND
song016_2_34:
	.byte		N03	, Ds1, v088
	.byte	W04
	.byte		N11	, Gs1, v092
	.byte	W20
	.byte		N16	, Fn1, v127
	.byte	W16
	.byte		N05	
	.byte	W08
	.byte	PEND
	.byte	PATT	
		mPtr	song016_2_1
	.byte	PATT	
		mPtr	song016_2_2
	.byte	W36
	.byte		N16	, Gs1, v127
	.byte	W12
	.byte	W04
	.byte		N11	, Gs1, v068
	.byte	W12
	.byte			Cs1, v092
	.byte	W12
	.byte			Fn1, v076
	.byte	W12
	.byte		N07	, Gs1, v088
	.byte	W08
	.byte	PATT	
		mPtr	song016_2_3
	.byte	PATT	
		mPtr	song016_2_4
	.byte	PATT	
		mPtr	song016_2_5
	.byte	PATT	
		mPtr	song016_2_6
	.byte	PATT	
		mPtr	song016_2_7
	.byte	PATT	
		mPtr	song016_2_8
	.byte	PATT	
		mPtr	song016_2_9
	.byte	PATT	
		mPtr	song016_2_10
	.byte	PATT	
		mPtr	song016_2_11
	.byte	PATT	
		mPtr	song016_2_12
	.byte	PATT	
		mPtr	song016_2_13
	.byte	PATT	
		mPtr	song016_2_14
	.byte	PATT	
		mPtr	song016_2_15
	.byte	PATT	
		mPtr	song016_2_16
	.byte	PATT	
		mPtr	song016_2_17
	.byte	PATT	
		mPtr	song016_2_18
	.byte	PATT	
		mPtr	song016_2_19
	.byte	PATT	
		mPtr	song016_2_20
	.byte	PATT	
		mPtr	song016_2_21
	.byte	PATT	
		mPtr	song016_2_22
	.byte	PATT	
		mPtr	song016_2_23
	.byte	PATT	
		mPtr	song016_2_24
	.byte	PATT	
		mPtr	song016_2_25
	.byte	PATT	
		mPtr	song016_2_26
	.byte	PATT	
		mPtr	song016_2_27
	.byte	PATT	
		mPtr	song016_2_28
	.byte	PATT	
		mPtr	song016_2_29
	.byte	PATT	
		mPtr	song016_2_30
	.byte	PATT	
		mPtr	song016_2_31
	.byte	PATT	
		mPtr	song016_2_32
	.byte	PATT	
		mPtr	song016_2_33
	.byte	PATT	
		mPtr	song016_2_34
	.byte	PATT	
		mPtr	song016_2_1
	.byte	PATT	
		mPtr	song016_2_2
	.byte	W36
	.byte		N16	, Gs1, v127
	.byte	W12
	.byte	W04
	.byte		N11	, Gs1, v068
	.byte	W12
	.byte	GOTO	
		mPtr	song016_2_35
	.byte	FINE

	@********************** Track  3 **********************@

	.global song016_3
song016_3:	@ 0x087A60AC
	.byte	KEYSH	, 0
	.byte	VOICE	, 88
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte	W48
	.byte	W48
song016_3_3:
	.byte	W20
	.byte		N04	, Fn2, v112
	.byte		N04	, Gs2
	.byte	W04
	.byte			En2, v120
	.byte		N04	, Gn2
	.byte	W04
	.byte		N07	, Ds2, v108
	.byte		N07	, Fs2
	.byte	W08
	.byte		N04	, Fn2, v104
	.byte	W04
	.byte			Ds2, v112
	.byte		N04	, Fs2
	.byte	W04
	.byte			Ds2, v084
	.byte		N04	, Fs2
	.byte		N04	, As2
	.byte	W04
	.byte	PEND
song016_3_4:
	.byte		N04	, Fs2, v112
	.byte		N04	, As2
	.byte		N04	, Cs3
	.byte	W04
	.byte		N06	, As2, v116
	.byte		N06	, Cs3
	.byte		N06	, Fn3
	.byte	W08
	.byte		N08	, As2, v120
	.byte		N08	, Cs3
	.byte		N08	, Gs3
	.byte	W08
	.byte		N01	, Gn3, v068
	.byte	W02
	.byte			Fn3, v076
	.byte	W02
	.byte			Ds3, v064
	.byte	W02
	.byte			Dn3, v068
	.byte	W02
	.byte			Cn3, v040
	.byte	W03
	.byte			As2, v016
	.byte	W03
	.byte			Gn2, v044
	.byte	W14
	.byte	PEND
	.byte	W16
song016_3_7:
	.byte	W32
	.byte	W48
	.byte	W48
song016_3_1:
	.byte	W11
	.byte		N04	, Cs2, v092
	.byte		N04	, Fn2
	.byte	W05
	.byte		N06	, Fn2, v104
	.byte		N06	, Gs2
	.byte	W08
	.byte		N03	, Fn2, v100
	.byte		N03	, As2
	.byte	W04
	.byte		N06	, Gs2, v112
	.byte		N06	, Cs3
	.byte	W08
	.byte		N17	, As2, v124
	.byte		N17	, Dn3
	.byte	W12
	.byte	PEND
song016_3_2:
	.byte	W06
	.byte		N07	, Fn2, v112
	.byte		N07	, As2
	.byte	W08
	.byte		N13	, Fs2, v127
	.byte		N13	, Ds3
	.byte	W16
	.byte		N01	, Cs3, v068
	.byte	W02
	.byte			Cn3
	.byte	W02
	.byte			As2, v076
	.byte	W02
	.byte			Gs2
	.byte	W01
	.byte			Fs2, v068
	.byte	W02
	.byte			Fn2, v064
	.byte	W02
	.byte			Ds2, v060
	.byte	W02
	.byte			Cs2, v068
	.byte	W05
	.byte	PEND
	.byte	W48
	.byte	W12
	.byte		N23	, Gs2, v124
	.byte		N23	, Cn3
	.byte	W24
	.byte			Gn2, v120
	.byte		N23	, Bn2
	.byte	W12
	.byte	W12
	.byte			Fs2, v096
	.byte		N23	, As2, v108
	.byte	W24
	.byte			Fs2, v104
	.byte		N23	, Cn3, v120
	.byte	W12
	.byte	W12
	.byte		N13	, Fn2
	.byte		N11	, Cs3, v127
	.byte	W15
	.byte		N01	, Fs2, v068
	.byte	W02
	.byte			En2, v076
	.byte	W02
	.byte			Dn2, v064
	.byte	W02
	.byte			Cs2, v068
	.byte	W02
	.byte			Bn1, v040
	.byte	W03
	.byte			An1, v016
	.byte	W02
	.byte			Fs1, v044
	.byte	W08
	.byte	W48
	.byte	W48
	.byte	PATT	
		mPtr	song016_3_1
	.byte	PATT	
		mPtr	song016_3_2
	.byte	W48
	.byte	W24
	.byte		N14	, Fn2, v104
	.byte		N14	, Gs2
	.byte	W16
	.byte		N07	, Fn2, v112
	.byte		N07	, Cs3
	.byte	W08
	.byte		N03	, Gs2, v100
	.byte		N03	, Bn2
	.byte	W04
	.byte		N07	, Fs2, v096
	.byte		N07	, As2
	.byte	W08
	.byte		N24	, Fn2, v108
	.byte		N24	, Gs2
	.byte	W36
	.byte	W48
	.byte	W48
	.byte	W48
	.byte		N12	, Cs2, v116
	.byte		N12	, Cs3
	.byte	W12
	.byte		N01	, Ds2, v088
	.byte		N01	, Ds3
	.byte	W02
	.byte		N03	, En2, v076
	.byte		N03	, En3
	.byte	W04
	.byte			Fn2, v084
	.byte		N03	, Fn3
	.byte	W03
	.byte		N42	, Fs2
	.byte		N42	, Fs3
	.byte	W24
	.byte	W03
	.byte	W16
	.byte		N16	, Bn2, v116
	.byte	W32
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	PATT	
		mPtr	song016_3_1
	.byte	PATT	
		mPtr	song016_3_2
	.byte	W48
	.byte	W48
song016_3_5:
	.byte	W24
	.byte		N03	, Fn2, v100
	.byte		N03	, Gs2
	.byte	W04
	.byte		N06	, Fs2, v104
	.byte		N06	, As2
	.byte	W07
	.byte		N05	, As2, v092
	.byte		N05	, Cs3
	.byte	W05
	.byte		N07	, Cs3, v108
	.byte		N07	, Fn3
	.byte	W08
	.byte	PEND
song016_3_6:
	.byte		N03	, As2, v068
	.byte		N03	, Cs3
	.byte	W03
	.byte			An2, v100
	.byte		N03	, Ds3
	.byte	W04
	.byte			Gs2, v092
	.byte		N03	, Fn3
	.byte	W04
	.byte			Gn2, v096
	.byte		N03	, Fs3
	.byte	W04
	.byte			Gn3, v112
	.byte	W03
	.byte		N18	, Gs3, v120
	.byte	W30
	.byte	PEND
	.byte	W48
	.byte	PATT	
		mPtr	song016_3_3
	.byte	PATT	
		mPtr	song016_3_4
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	PATT	
		mPtr	song016_3_5
	.byte	PATT	
		mPtr	song016_3_6
	.byte	W48
	.byte	PATT	
		mPtr	song016_3_3
	.byte	PATT	
		mPtr	song016_3_4
	.byte	W16
	.byte	GOTO	
		mPtr	song016_3_7
	.byte	FINE

	@********************** Track  4 **********************@

	.global song016_4
song016_4:	@ 0x087A6270
	.byte	KEYSH	, 0
	.byte	VOICE	, 74
	.byte	VOL	, v099
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte	PRIO	, 30
	.byte	W24
	.byte		N16	, Cn3, v127
	.byte		N16	, Gs3
	.byte	W16
	.byte		N05	, Cn3
	.byte		N05	, Gs3
	.byte	W08
song016_4_1:
	.byte	W12
	.byte		N16	, Bn2, v127
	.byte		N16	, Gs3
	.byte	W16
	.byte		N05	, Bn2
	.byte		N05	, Gs3
	.byte	W20
	.byte	PEND
song016_4_2:
	.byte		N16	, As2, v127
	.byte		N16	, Gs3
	.byte	W16
	.byte		N05	, As2
	.byte		N05	, Gs3
	.byte	W32
	.byte	PEND
	.byte	W48
	.byte	W16
song016_4_4:
	.byte	W32
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W24
	.byte		N14	, Cs3, v108
	.byte		N14	, Fn3, v120
	.byte	W16
	.byte		N05	, Ds3, v104
	.byte		N07	, Fs3, v096
	.byte	W08
	.byte	W04
	.byte		N05	, Fn3, v112
	.byte		N06	, Gs3, v108
	.byte	W12
	.byte			Cs3
	.byte		N07	, As3, v116
	.byte	W12
	.byte		N03	, Cn3, v096
	.byte		N05	, An3, v124
	.byte	W12
	.byte		N06	, Cs3, v096
	.byte		N06	, As3, v120
	.byte	W08
	.byte		N05	, Cn3, v092
	.byte		N04	, An3, v108
	.byte	W12
	.byte		N22	, Cs3, v104
	.byte		N22	, As3, v124
	.byte	W24
	.byte		N02	, Cs3
	.byte		N02	, As3
	.byte	W04
	.byte		N06	, Bn2, v084
	.byte		N06	, Gs3, v124
	.byte	W08
	.byte		N03	, Cn3, v108
	.byte		N03	, An3, v112
	.byte	W12
	.byte		N13	, Cs3, v100
	.byte		N15	, As3, v116
	.byte	W16
	.byte		N04	, As2, v104
	.byte		N05	, Cs3, v100
	.byte	W08
	.byte		N24	, As2, v112
	.byte		N24	, Cs3
	.byte	W12
	.byte	W24
	.byte		N14	, En3, v096
	.byte		N14	, Cs4, v108
	.byte	W16
	.byte		N03	, Ds3, v112
	.byte		N06	, Bn3, v104
	.byte	W08
	.byte	W04
	.byte			Cs3, v100
	.byte		N06	, An3
	.byte	W12
	.byte		N07	, Bn2, v120
	.byte		N07	, Gs3
	.byte	W12
	.byte		N06	, As2, v100
	.byte		N06	, Gn3
	.byte	W12
	.byte			Bn2, v112
	.byte		N06	, Gs3
	.byte	W08
	.byte		N03	, As2, v072
	.byte		N03	, Gn3
	.byte	W12
	.byte		N15	, Bn2, v120
	.byte		N15	, Gs3
	.byte	W16
	.byte		N06	, En2, v112
	.byte		N06	, Bn2
	.byte	W08
	.byte		N10	, En2, v124
	.byte		N10	, Bn2
	.byte	W12
	.byte		N02	, Gs2, v108
	.byte		N02	, En3
	.byte	W04
	.byte		N06	, Bn2, v112
	.byte		N06	, Gs3
	.byte	W08
	.byte		N24	, As2
	.byte		N24	, Fs3
	.byte	W28
	.byte		N07	, As2, v096
	.byte		N07	, Fs3
	.byte	W08
	.byte		N03	, Fs2, v084
	.byte		N03	, Ds3
	.byte	W12
	.byte		N21	, Cs3, v127
	.byte		N48	, Gs3
	.byte	W24
	.byte		N24	, Cn3
	.byte	W12
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
song016_4_3:
	.byte	W24
	.byte		N16	, Cn3, v127
	.byte		N16	, Gs3
	.byte	W16
	.byte		N05	, Cn3
	.byte		N05	, Gs3
	.byte	W08
	.byte	PEND
	.byte	PATT	
		mPtr	song016_4_1
	.byte	PATT	
		mPtr	song016_4_2
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	PATT	
		mPtr	song016_4_3
	.byte	PATT	
		mPtr	song016_4_1
	.byte	PATT	
		mPtr	song016_4_2
	.byte	W48
	.byte	W16
	.byte	GOTO	
		mPtr	song016_4_4
	.byte	FINE

	@********************** Track  5 **********************@

	.global song016_5
song016_5:	@ 0x087A63D2
	.byte	KEYSH	, 0
	.byte	VOICE	, 75
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte	PRIO	, 30
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W16
song016_5_5:
	.byte	W06
	.byte		N16	, Fn2, v096
	.byte	W17
	.byte		N08	, Gs2, v112
	.byte	W09
song016_5_1:
	.byte	W04
	.byte		N07	, As2, v108
	.byte	W13
	.byte		N15	, Cs3, v100
	.byte	W17
	.byte		N05	, As2, v096
	.byte	W06
	.byte		N07	, Cs3, v116
	.byte	W08
	.byte	PEND
song016_5_2:
	.byte	W01
	.byte		N06	, Ds3, v120
	.byte	W09
	.byte			En3, v108
	.byte	W07
	.byte		N08	, Fn3, v104
	.byte	W11
	.byte		N07	, Fn3, v100
	.byte	W08
	.byte		N60	, As2, v104
	.byte	W12
	.byte	PEND
	.byte	W48
song016_5_3:
	.byte	W24
	.byte		N14	, Fs3, v108
	.byte	W16
	.byte		N10	, Fs3, v124
	.byte	W08
	.byte	PEND
song016_5_4:
	.byte	W04
	.byte		N06	, As2, v092
	.byte	W12
	.byte		N08	, Cs3, v108
	.byte	W12
	.byte		N09	, As2, v104
	.byte	W11
	.byte		N07	, Cn3
	.byte	W09
	.byte	PEND
	.byte	W01
	.byte		N06	, Cs3, v120
	.byte	W08
	.byte		N07	, Ds3, v076
	.byte	W09
	.byte		N84	, Gs3, v104
	.byte	W30
	.byte	W48
	.byte	W24
	.byte		N15	, Fn2, v112
	.byte	W16
	.byte		N08	, Gs2
	.byte	W08
	.byte	W04
	.byte			As2, v116
	.byte	W12
	.byte		N13	, Cs3, v104
	.byte	W17
	.byte		N06	, As2, v100
	.byte	W07
	.byte		N07	, Cs3, v116
	.byte	W08
	.byte	W01
	.byte			Ds3, v124
	.byte	W10
	.byte		N05	, En3, v112
	.byte	W06
	.byte		N08	, Fn3, v100
	.byte	W11
	.byte		N07	
	.byte	W08
	.byte		N72	, As2, v104
	.byte	W12
	.byte	W48
	.byte	W24
	.byte		N13	, Fs3, v100
	.byte	W17
	.byte		N07	, Fs3, v096
	.byte	W07
	.byte	W04
	.byte			As2
	.byte	W13
	.byte		N08	, Cs3
	.byte	W11
	.byte		N07	, As2, v104
	.byte	W12
	.byte			Cn3, v100
	.byte	W08
	.byte	W02
	.byte		N06	, Cs3, v112
	.byte	W09
	.byte			Ds3
	.byte	W09
	.byte		N66	, Cs3, v108
	.byte	W28
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W22
	.byte		N16	, Fn2, v096
	.byte	W17
	.byte		N08	, Gs2, v112
	.byte	W09
	.byte	PATT	
		mPtr	song016_5_1
	.byte	PATT	
		mPtr	song016_5_2
	.byte	W48
	.byte	PATT	
		mPtr	song016_5_3
	.byte	PATT	
		mPtr	song016_5_4
	.byte	W01
	.byte		N06	, Cs3, v120
	.byte	W08
	.byte		N07	, Ds3, v076
	.byte	W09
	.byte		N84	, Cs3, v104
	.byte	W30
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W16
	.byte	GOTO	
		mPtr	song016_5_5
	.byte	FINE

	@********************** Track  6 **********************@

	.global song016_6
song016_6:	@ 0x087A64F3
	.byte	KEYSH	, 0
	.byte	VOICE	, 93
	.byte	VOL	, v099
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W36
	.byte		N04	, Gn4, v096
	.byte	W01
	.byte		N24	, Gs4, v116
	.byte	W11
	.byte	W16
song016_6_1:
	.byte	W32
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W07
	.byte		N04	, Gn4, v092
	.byte	W04
	.byte		N52	, Gs3, v108
	.byte		N52	, Gs4, v116
	.byte	W36
	.byte	W01
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W23
	.byte		N01	, Gs4, v092
	.byte	W01
	.byte		N03	, Gn4, v108
	.byte	W04
	.byte		N05	, Fs4, v104
	.byte	W07
	.byte		N04	, En4
	.byte	W05
	.byte		N05	, Fn4, v116
	.byte	W07
	.byte		N04	, Cs4, v088
	.byte	W01
	.byte	W05
	.byte		N05	, Gs3, v104
	.byte	W06
	.byte		N04	, Gn3, v096
	.byte	W05
	.byte		N05	, Fs3, v084
	.byte	W08
	.byte			En3, v096
	.byte	W05
	.byte			Fn3, v088
	.byte	W07
	.byte		N04	, Gs3, v084
	.byte	W04
	.byte		N06	, As3, v108
	.byte	W08
	.byte		N02	, Gs3, v068
	.byte	W04
	.byte		N07	, Cs4, v116
	.byte	W13
	.byte		N05	, En4, v127
	.byte	W07
	.byte			Fn4, v120
	.byte	W06
	.byte		N04	, Cs4, v096
	.byte	W05
	.byte			Gs3
	.byte	W06
	.byte		N06	, Gn3, v112
	.byte	W07
	.byte		N02	, Fn3, v032
	.byte	W05
	.byte		N05	, Fs3, v096
	.byte	W06
	.byte		N02	, Fn3, v080
	.byte	W02
	.byte			En3, v100
	.byte	W04
	.byte		N05	, Ds3
	.byte	W07
	.byte		N04	, Cs3, v096
	.byte	W05
	.byte			Dn3, v088
	.byte	W07
	.byte		N05	, Fn3
	.byte	W05
	.byte			Gs3, v100
	.byte	W07
	.byte		N03	, As3
	.byte	W05
	.byte		N06	, Bn3, v112
	.byte	W06
	.byte		N03	, An3, v056
	.byte	W05
	.byte		N08	, As3, v108
	.byte	W12
	.byte		N05	, As3, v104
	.byte	W07
	.byte		N07	, Fn3, v088
	.byte	W11
	.byte		N04	, Fn3, v068
	.byte	W02
	.byte	W02
	.byte		N07	, Gs3, v116
	.byte	W13
	.byte		N05	, Fs3, v112
	.byte	W08
	.byte		N04	, As2, v100
	.byte	W15
	.byte		N02	, As2, v060
	.byte	W10
	.byte		N03	, As2, v076
	.byte	W04
	.byte		N05	, Cs3, v100
	.byte	W07
	.byte		N04	, Fn3, v120
	.byte	W06
	.byte		N05	, En3, v104
	.byte	W07
	.byte		N03	, Cn3, v064
	.byte	W05
	.byte		N05	, Ds3, v112
	.byte	W08
	.byte		N03	, Cn3, v088
	.byte	W11
	.byte	W04
	.byte		N07	, Dn3, v116
	.byte	W08
	.byte		N02	, Cn3, v068
	.byte	W05
	.byte		N06	, Cs3, v108
	.byte	W07
	.byte		N04	, Bn2
	.byte	W05
	.byte		N06	, Cn3, v076
	.byte	W07
	.byte		N03	, Ds3, v084
	.byte	W05
	.byte		N05	, Gs3, v068
	.byte	W07
	.byte		N04	, Cn4, v096
	.byte	W06
	.byte			Bn3, v120
	.byte	W07
	.byte		N02	, En2, v044
	.byte		N01	, Bn2, v048
	.byte		N02	, Dn3, v068
	.byte	W05
	.byte		N06	, As3, v120
	.byte	W06
	.byte		N03	, Gn3, v088
	.byte	W05
	.byte		N04	, Fs3, v096
	.byte	W06
	.byte		N05	, En3, v116
	.byte	W01
	.byte		N01	, As2, v044
	.byte		N01	, Cs3, v040
	.byte	W05
	.byte		N06	, Fn3, v068
	.byte	W07
	.byte		N03	, Gs3, v096
	.byte	W04
	.byte		N06	, As3, v116
	.byte	W09
	.byte		N02	, Gs3, v048
	.byte	W04
	.byte		N09	, Cs4, v116
	.byte	W11
	.byte		N03	, Ds3, v076
	.byte	W01
	.byte		N02	, Fn2, v044
	.byte	W08
	.byte		N04	, En4, v120
	.byte	W05
	.byte		N09	, Fn4, v092
	.byte	W06
	.byte	W04
	.byte		N02	, Fn2, v060
	.byte		N01	, Ds3, v072
	.byte	W09
	.byte		N04	, Gn4, v127
	.byte	W05
	.byte		N07	, Gs4, v120
	.byte	W07
	.byte		N01	, Ds3, v084
	.byte	W01
	.byte			Fn2, v076
	.byte	W03
	.byte		N05	, En4, v104
	.byte	W06
	.byte		N06	, Fn4
	.byte	W11
	.byte		N02	, Fn2, v080
	.byte		N01	, Ds3, v084
	.byte		N04	, Cs4, v096
	.byte	W02
	.byte	W03
	.byte		N05	, Gs3
	.byte	W08
	.byte		N06	, Gn3, v100
	.byte	W05
	.byte		N05	, Fs3, v068
	.byte	W07
	.byte			En3, v112
	.byte	W07
	.byte		N03	, Fn3, v072
	.byte	W06
	.byte		N04	, Gs3, v092
	.byte	W05
	.byte			As3, v112
	.byte	W06
	.byte		N02	, Dn2, v056
	.byte		N01	, Gs2, v064
	.byte		N01	, Bn2, v068
	.byte	W01
	.byte		N04	, Bn3, v124
	.byte	W05
	.byte			Cs4, v096
	.byte	W07
	.byte			Dn4, v116
	.byte	W06
	.byte		N05	, En4
	.byte	W07
	.byte		N08	, Fn4, v100
	.byte	W12
	.byte		N02	, Dn2, v028
	.byte		N01	, Bn2, v044
	.byte		N03	, Cs4, v096
	.byte	W01
	.byte		N01	, Gs2, v044
	.byte	W03
	.byte		N07	, Dn4, v120
	.byte	W07
	.byte		N01	, Dn2, v060
	.byte		N01	, Bn2
	.byte	W01
	.byte		N04	, As3, v084
	.byte	W15
	.byte		N03	, Fs2, v064
	.byte		N05	, As2, v084
	.byte		N03	, Fn3, v092
	.byte	W01
	.byte		N05	, Cs3, v056
	.byte	W19
	.byte		N04	, Fs2
	.byte		N05	, Cs3
	.byte		N03	, Fn3
	.byte	W01
	.byte		N05	, As2, v068
	.byte	W09
	.byte		N04	, As3
	.byte	W02
	.byte	W03
	.byte		N05	, Cs4, v100
	.byte	W07
	.byte		N01	, Fn4, v084
	.byte	W06
	.byte		N08	, Gs4, v124
	.byte	W07
	.byte		N04	, Gn4, v116
	.byte	W02
	.byte		N01	, Fs2, v048
	.byte		N02	, Cn3, v044
	.byte		N02	, En3
	.byte	W03
	.byte		N04	, Fs4, v108
	.byte	W06
	.byte		N13	, En3, v092
	.byte		N05	, En4, v116
	.byte	W01
	.byte		N11	, Fs2, v056
	.byte		N14	, Cn3, v068
	.byte	W09
	.byte		N05	, Fn4, v092
	.byte	W04
	.byte		N04	, Cs4, v088
	.byte	W03
	.byte		N06	, Gs3, v108
	.byte	W09
	.byte			Gn3, v112
	.byte	W04
	.byte		N04	, Fs3, v072
	.byte	W07
	.byte		N05	, En3, v112
	.byte	W01
	.byte		N02	, Fn2, v068
	.byte	W01
	.byte			Ds3, v024
	.byte	W04
	.byte		N04	, Fn3, v068
	.byte	W07
	.byte		N03	, Gs3
	.byte	W04
	.byte		N05	, As3, v096
	.byte	W07
	.byte		N13	, Fn2, v088
	.byte		N14	, Ds3, v096
	.byte		N07	, Cs4, v104
	.byte	W01
	.byte		N03	, Bn2, v076
	.byte	W17
	.byte			Fn2
	.byte		N02	, Bn2, v088
	.byte		N01	, Ds3, v072
	.byte	W19
	.byte		N05	, Cs4, v100
	.byte	W04
	.byte		N06	, En4, v112
	.byte	W07
	.byte		N02	, Fn2, v084
	.byte		N03	, En3, v104
	.byte	W01
	.byte		N02	, Bn2, v080
	.byte		N04	, Gs4, v112
	.byte	W06
	.byte		N05	, An4, v127
	.byte	W06
	.byte		N16	, En2, v100
	.byte		N16	, Ds3, v104
	.byte		N14	, As4, v127
	.byte	W01
	.byte		N16	, As2, v088
	.byte	W16
	.byte		N04	, Fs4, v108
	.byte	W07
	.byte			As4
	.byte	W04
	.byte		N06	, Fs4
	.byte	W08
	.byte		N02	, En2, v088
	.byte		N01	, As2, v076
	.byte		N01	, Ds3, v068
	.byte	W04
	.byte		N04	, Cs4, v096
	.byte	W07
	.byte			Fs4, v108
	.byte	W06
	.byte			En4, v100
	.byte	W06
	.byte		N02	, En2, v084
	.byte	W01
	.byte			As2, v068
	.byte		N01	, Ds3, v076
	.byte		N04	, Cs4, v096
	.byte	W06
	.byte			Bn3, v104
	.byte	W03
	.byte		N08	, Cn4, v076
	.byte	W07
	.byte			Bn3, v112
	.byte	W08
	.byte		N04	, An3, v096
	.byte	W05
	.byte		N06	, Fs3
	.byte	W07
	.byte		N02	, En2, v080
	.byte		N02	, As2, v068
	.byte		N01	, Ds3
	.byte	W05
	.byte		N05	, Bn3, v124
	.byte	W07
	.byte		N02	, Fs3, v048
	.byte	W04
	.byte		N05	, An3, v104
	.byte	W07
	.byte		N06	, An3, v120
	.byte		N01	, Bn3, v072
	.byte	W01
	.byte		N03	, En2, v080
	.byte	W01
	.byte		N04	, As2, v064
	.byte	W03
	.byte		N05	, Fs3, v076
	.byte	W08
	.byte			En3, v108
	.byte	W04
	.byte			Ds3, v080
	.byte	W08
	.byte		N07	, Dn3, v112
	.byte	W01
	.byte		N01	, As2, v064
	.byte	W04
	.byte		N05	, Cs3, v068
	.byte	W07
	.byte			Bn2, v124
	.byte	W06
	.byte		N04	, Cs3, v076
	.byte	W06
	.byte			Ds3, v108
	.byte	W05
	.byte			En3, v116
	.byte	W06
	.byte			Fs3, v100
	.byte	W01
	.byte	W05
	.byte			Gs3, v112
	.byte	W06
	.byte		N05	, An3, v127
	.byte	W08
	.byte		N10	, Bn3
	.byte	W08
	.byte		N02	, En2, v044
	.byte		N01	, Ds3, v052
	.byte	W01
	.byte			Gs2, v056
	.byte	W01
	.byte			Bn2, v016
	.byte	W01
	.byte		N05	, Gs3, v100
	.byte	W03
	.byte		N03	, En3, v084
	.byte	W04
	.byte			Ds3, v092
	.byte	W05
	.byte		N07	, Fs3, v120
	.byte	W06
	.byte	W01
	.byte		N05	, Ds3, v084
	.byte	W09
	.byte		N02	, En3, v100
	.byte	W04
	.byte		N04	, Gs3
	.byte	W04
	.byte		N05	, Bn3, v116
	.byte	W07
	.byte		N04	, Ds4, v120
	.byte	W01
	.byte		N01	, Gs2, v032
	.byte		N01	, Bn2, v048
	.byte		N02	, Ds3, v028
	.byte	W04
	.byte		N05	, Fs4, v120
	.byte	W06
	.byte			En4, v104
	.byte	W12
	.byte		N04	, En4, v124
	.byte	W04
	.byte		N09	, Bn3, v112
	.byte	W13
	.byte		N12	, Fs2, v084
	.byte		N13	, As2, v088
	.byte		N13	, Cs3, v076
	.byte		N13	, Fn3, v084
	.byte	W18
	.byte		N04	, As3, v096
	.byte	W05
	.byte		N05	, Cs4, v088
	.byte	W07
	.byte		N03	, Fn4
	.byte	W01
	.byte	W04
	.byte		N07	, Gs4, v120
	.byte	W09
	.byte		N01	, Fs2, v044
	.byte		N02	, Cn3, v060
	.byte		N01	, Fn3, v056
	.byte	W03
	.byte		N07	, Gs4, v120
	.byte	W12
	.byte			Gs4, v112
	.byte	W12
	.byte		N03	, En3, v100
	.byte		N05	, Bn4, v127
	.byte	W01
	.byte		N02	, Fs2, v080
	.byte		N03	, Cn3, v076
	.byte	W07
	.byte		N04	, Cn5, v120
	.byte	W12
	.byte		N06	, Cs4, v108
	.byte		N07	, Cs5, v120
	.byte	W12
	.byte		N01	, Fn2, v060
	.byte		N01	, Bn2, v056
	.byte		N01	, Ds3, v064
	.byte		N01	, Cs4
	.byte		N03	, Cs5, v096
	.byte	W04
	.byte		N08	, En4, v116
	.byte		N08	, En5, v127
	.byte	W08
	.byte		N01	, Fn2, v052
	.byte		N01	, Bn2, v064
	.byte		N01	, Ds3, v044
	.byte	W04
	.byte		N08	, Cs4, v076
	.byte		N11	, Cs5, v116
	.byte	W08
	.byte	W04
	.byte		N08	, Fn2, v068
	.byte		N09	, Bn2
	.byte		N08	, Ds3, v072
	.byte	W12
	.byte		N05	, Cs4, v116
	.byte		N08	, Cs5, v120
	.byte	W12
	.byte		N05	, En4, v112
	.byte		N06	, En5, v120
	.byte	W12
	.byte		N07	, Cs4, v092
	.byte		N10	, Cs5
	.byte	W08
	.byte	W03
	.byte		N02	, Fn2, v052
	.byte	W01
	.byte		N03	, Bn2, v044
	.byte		N02	, Ds3, v032
	.byte	W08
	.byte		N04	, En5, v116
	.byte	W05
	.byte		N06	, Fn5
	.byte	W11
	.byte		N04	, Cs5, v108
	.byte	W06
	.byte		N10	, Dn5, v116
	.byte	W13
	.byte		N01	, Gs2, v068
	.byte		N01	, Bn2, v056
	.byte	W01
	.byte		N02	, Dn2, v028
	.byte		N03	, As4, v096
	.byte	W05
	.byte		N06	, Bn4, v108
	.byte	W07
	.byte		N02	, Gn4, v064
	.byte	W04
	.byte		N07	, Gs4, v112
	.byte	W07
	.byte		N06	, Gn4, v108
	.byte	W01
	.byte		N02	, Dn2, v060
	.byte		N02	, Bn2, v068
	.byte	W01
	.byte			Gs2
	.byte	W04
	.byte		N03	, Fs4, v080
	.byte	W07
	.byte		N05	, Fn4, v096
	.byte	W06
	.byte		N04	, Ds4, v060
	.byte	W05
	.byte			Cs4, v068
	.byte	W01
	.byte	W04
	.byte		N05	, Dn4, v100
	.byte	W07
	.byte		N06	, Fn4, v116
	.byte	W05
	.byte			En4, v104
	.byte	W06
	.byte		N02	, Dn4, v076
	.byte	W02
	.byte			Fn3, v060
	.byte	W01
	.byte			Fs2, v032
	.byte		N02	, As2, v056
	.byte		N01	, Cs3, v048
	.byte	W03
	.byte		N05	, Ds4, v112
	.byte	W08
	.byte		N04	, Cs4, v104
	.byte	W01
	.byte		N02	, Fs2, v072
	.byte		N02	, As2, v060
	.byte		N02	, Fn3, v076
	.byte	W01
	.byte			Cs3, v028
	.byte	W03
	.byte		N03	, As3, v076
	.byte	W05
	.byte			Fs3, v080
	.byte	W02
	.byte	W04
	.byte		N04	, Fn3, v068
	.byte	W07
	.byte		N02	, Ds3, v056
	.byte	W05
	.byte		N07	, Gs3, v112
	.byte	W07
	.byte		N05	, Gn3, v080
	.byte	W05
	.byte			Fs3, v084
	.byte	W08
	.byte		N02	, Fs2, v072
	.byte		N02	, Cn3, v084
	.byte		N04	, En3, v104
	.byte	W05
	.byte		N06	, Fn3, v080
	.byte	W07
	.byte		N03	, Gs3, v084
	.byte	W05
	.byte		N05	, As3, v108
	.byte	W08
	.byte		N07	, Gs3, v116
	.byte	W03
	.byte		N06	, Cs4, v096
	.byte	W12
	.byte		N05	, Fn2, v044
	.byte		N06	, Bn2, v060
	.byte		N06	, Ds3, v024
	.byte		N07	, Cs4, v124
	.byte	W08
	.byte		N04	, Bn3, v108
	.byte	W04
	.byte			Gs3, v096
	.byte	W08
	.byte		N05	, Gn3, v108
	.byte	W04
	.byte		N02	, Fn2, v048
	.byte		N04	, Bn2, v080
	.byte		N04	, Fs3, v088
	.byte	W08
	.byte		N03	, En3, v080
	.byte	W04
	.byte		N05	, Fn3, v108
	.byte	W08
	.byte		N04	, Cs3, v092
	.byte	W04
	.byte			As2, v100
	.byte	W08
	.byte		N05	, Fs2, v096
	.byte	W04
	.byte		N06	, Fn2, v092
	.byte	W08
	.byte		N03	, Ds2
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W16
	.byte	GOTO	
		mPtr	song016_6_1
	.byte	FINE

	@********************** Track  7 **********************@

	.global song016_7
song016_7:	@ 0x087A69E8
	.byte	KEYSH	, 0
	.byte	VOICE	, 68
	.byte	VOL	, v062
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte	W24
	.byte		N16	, Ds4, v127
	.byte	W16
	.byte		N05	
	.byte	W08
song016_7_1:
	.byte	W12
	.byte		N16	, Dn4, v127
	.byte	W16
	.byte		N05	
	.byte	W20
	.byte	PEND
song016_7_2:
	.byte		N16	, Cs4, v127
	.byte	W16
	.byte		N05	
	.byte	W32
	.byte	PEND
	.byte	W48
	.byte	W16
song016_7_4:
	.byte	W32
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
song016_7_3:
	.byte	W24
	.byte		N16	, Ds4, v127
	.byte	W16
	.byte		N05	
	.byte	W08
	.byte	PEND
	.byte	PATT	
		mPtr	song016_7_1
	.byte	PATT	
		mPtr	song016_7_2
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	PATT	
		mPtr	song016_7_3
	.byte	PATT	
		mPtr	song016_7_1
	.byte	PATT	
		mPtr	song016_7_2
	.byte	W48
	.byte	W16
	.byte	GOTO	
		mPtr	song016_7_4
	.byte	FINE

	@********************** Track  8 **********************@

	.global song016_8
song016_8:	@ 0x087A6A7A
	.byte	KEYSH	, 0
	.byte	VOICE	, 76
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W16
song016_8_5:
	.byte		N03	, Gs3, v080
	.byte	W20
	.byte			Gs3, v108
	.byte	W12
song016_8_3:
	.byte	W24
	.byte		N14	, Gs3, v100
	.byte	W16
	.byte		N03	, Gs3, v108
	.byte	W08
	.byte	PEND
song016_8_1:
	.byte	W16
	.byte		N17	, Fn3, v096
	.byte	W20
	.byte		N01	, Fn3, v108
	.byte	W12
	.byte	PEND
	.byte	W48
song016_8_2:
	.byte	W24
	.byte		N14	, Cs3, v100
	.byte	W16
	.byte		N03	, Cs3, v108
	.byte	W08
	.byte	PEND
song016_8_4:
	.byte	W16
	.byte		N04	, Cs3, v100
	.byte	W12
	.byte		N04	
	.byte	W08
	.byte		N03	, Ds3, v108
	.byte	W12
	.byte	PEND
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W16
	.byte		N04	, Gs3, v112
	.byte	W20
	.byte		N06	, Gs3, v108
	.byte	W12
	.byte	PATT	
		mPtr	song016_8_1
	.byte	W48
	.byte	PATT	
		mPtr	song016_8_2
	.byte	W16
	.byte		N03	, Ds3, v108
	.byte	W12
	.byte		N03	
	.byte	W08
	.byte		N03	
	.byte	W12
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W16
	.byte			Gs3, v080
	.byte	W20
	.byte			Gs3, v108
	.byte	W12
	.byte	PATT	
		mPtr	song016_8_3
	.byte	PATT	
		mPtr	song016_8_1
	.byte	W48
	.byte	PATT	
		mPtr	song016_8_2
	.byte	PATT	
		mPtr	song016_8_4
	.byte	W23
	.byte		N15	, Gs3, v116
	.byte	W24
	.byte	W01
	.byte	W11
	.byte		N32	, Gs3, v127
	.byte	W36
	.byte	W01
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W16
	.byte	GOTO	
		mPtr	song016_8_5
	.byte	FINE

	@********************** Track  9 **********************@

	.global song016_9
song016_9:	@ 0x087A6B42
	.byte	KEYSH	, 0
	.byte	VOICE	, 80
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W16
song016_9_1:
	.byte	W32
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W08
	.byte		N02	, As2, v068
	.byte	W03
	.byte		N01	, Bn2, v092
	.byte	W02
	.byte		N02	, Cn3, v088
	.byte	W03
	.byte		TIE	, Cs3, v100
	.byte	W32
	.byte	W48
	.byte	W20
	.byte		EOT	
	.byte	W02
	.byte		N03	, Cs3, v116
	.byte	W17
	.byte		N28	, Cs3, v124
	.byte	W09
	.byte	W48
	.byte	W40
	.byte		N06	, Bn2
	.byte	W08
	.byte	W12
	.byte		N44	, Bn2, v120
	.byte	W36
	.byte	W12
	.byte			As2, v108
	.byte	W36
	.byte	W12
	.byte		N52	, Cs3, v112
	.byte	W36
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W40
	.byte		N07	, Cs3, v124
	.byte	W08
	.byte	W01
	.byte		N06	
	.byte	W44
	.byte	W03
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	W16
	.byte	GOTO	
		mPtr	song016_9_1
	.byte	FINE

	mAlignWord
	.global song016
song016:	@ 0x087A6BD8
	.byte	9		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	mPtr	voicegroup000		@ voicegroup/tone

	mPtr	song016_1		@ track
	mPtr	song016_2		@ track
	mPtr	song016_3		@ track
	mPtr	song016_4		@ track
	mPtr	song016_5		@ track
	mPtr	song016_6		@ track
	mPtr	song016_7		@ track
	mPtr	song016_8		@ track
	mPtr	song016_9		@ track
