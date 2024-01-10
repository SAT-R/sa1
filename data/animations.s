	.section .rodata

.equ AnimCmd_GetTiles,            -1
.equ AnimCmd_GetPalette,          -2
.equ AnimCmd_JumpBack,            -3
.equ AnimCmd_End,                 -4
.equ AnimCmd_PlaySoundEffect,     -5
.equ AnimCmd_AddHitbox,           -6
.equ AnimCmd_TranslateSprite,     -7
.equ AnimCmd_8,                   -8
.equ AnimCmd_SetIdAndVariant,     -9
.equ AnimCmd_10,                  -10
.equ AnimCmd_SetSpritePriority,   -11
.equ AnimCmd_12,                  -12
.equ AnimCmd_Display,             -13

.equ NUM_ANIMATION_TABLE_ENTRIES, 908


.macro mGetTiles tile_index:req, num_tiles_to_copy:req
.4byte AnimCmd_GetTiles
  .4byte \tile_index
  .4byte \num_tiles_to_copy
.endm

.macro mGetPalette pal_ptr:req, num_colors_to_copy:req, insert_offset:req
.4byte AnimCmd_GetPalette
@  .4byte (\pal_ptr - gObjPalettes) / 0x20
  .4byte \pal_ptr
  .2byte \num_colors_to_copy
  .2byte \insert_offset
.endm

.macro mJumpBack jmpTarget:req
.4byte AnimCmd_JumpBack
  .4byte ((.-0x4) - \jmpTarget) / 4
.endm

.macro mEnd
.4byte AnimCmd_End
.endm

.macro mPlaySoundEffect songId:req
.4byte AnimCmd_PlaySoundEffect
  .2byte \songId
  .space 2
.endm

.macro mAddHitbox index:req, left:req, top:req, right:req, bottom:req
.4byte AnimCmd_AddHitbox
  .4byte \index
  .byte \left, \top, \right, \bottom
.endm

.macro mTranslateSprite x:req y:req
.4byte AnimCmd_TranslateSprite
  .2byte \x
  .2byte \y
.endm

.macro mAnimCmd8 unk4:req, unk8:req
.4byte AnimCmd_8
  .4byte \unk4
  .4byte \unk8
.endm

.macro mSetIdAndVariant animId:req, variant:req
.4byte AnimCmd_SetIdAndVariant
  .2byte \animId
   .2byte \variant
.endm

.macro mAnimCmd10 unk4:req, unk8:req, unkC:req
.4byte AnimCmd_10
  .4byte \unk4
  .4byte \unk8
  .4byte \unkC
.endm

.macro mAnimCmdSetSpritePriority unk4:req
.4byte AnimCmd_SetSpritePriority
  .4byte \unk4
.endm

.macro mAnimCmd12 unk4:req
.4byte AnimCmd_12
  .4byte \unk4
.endm

.macro mDisplayFrame displayFor:req frameIndex:req
  .4byte \displayFor, \frameIndex
.endm

anim_0000__v0_l0: @ 80DC188
	mGetPalette 0 16 0x0
	mGetTiles 0x0 20
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x6 0x0

	mGetTiles 0x14 16
	mDisplayFrame 0x6 0x1

	mGetTiles 0x24 16
	mDisplayFrame 0x6 0x2

	mGetTiles 0x34 16
	mDisplayFrame 0x6 0x3

	mGetTiles 0x44 20
	mDisplayFrame 0x6 0x4

	mGetTiles 0x58 20
	mDisplayFrame 0x6 0x5

	mGetTiles 0x6C 16
	mDisplayFrame 0x6 0x6

	mGetTiles 0x7C 20
	mDisplayFrame 0x6 0x7

	mGetTiles 0x0 20
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x6 0x0

	mGetTiles 0x14 16
	mDisplayFrame 0x6 0x1

	mGetTiles 0x90 16
	mDisplayFrame 0x6 0x8

	mGetTiles 0xA0 16
	mDisplayFrame 0x6 0x9

	mGetTiles 0x44 20
	mDisplayFrame 0x6 0x4

	mGetTiles 0x58 20
	mDisplayFrame 0x6 0x5

	mGetTiles 0x6C 16
	mDisplayFrame 0x6 0x6

	mGetTiles 0x7C 20
	mDisplayFrame 0x6 0x7

	mGetTiles 0x0 20
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x6 0x0

	mGetTiles 0x14 16
	mDisplayFrame 0x6 0x1

	mGetTiles 0x24 16
	mDisplayFrame 0x6 0x2

	mGetTiles 0x34 16
	mDisplayFrame 0x6 0x3

	mGetTiles 0x44 20
	mDisplayFrame 0x6 0x4

	mGetTiles 0x58 20
	mDisplayFrame 0x6 0x5

	mGetTiles 0x6C 16
	mDisplayFrame 0x6 0x6

	mGetTiles 0x7C 20
	mDisplayFrame 0x6 0x7

	mGetTiles 0xB0 20
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x6 0xA

	mGetTiles 0xC4 20
	mDisplayFrame 0xC 0xB

	mGetTiles 0xD8 20
	mDisplayFrame 0x6 0xC

	mGetTiles 0xC4 20
	mDisplayFrame 0x6 0xB

	mGetTiles 0xD8 20
	mDisplayFrame 0x6 0xC

	mGetTiles 0xC4 20
	mDisplayFrame 0xC 0xB

	mGetTiles 0xB0 20
	mDisplayFrame 0x8 0xA

	mGetTiles 0x0 20
	mDisplayFrame 0x6 0x0

	mGetTiles 0x58 20
	mDisplayFrame 0x6 0x5

	mGetTiles 0x6C 16
	mDisplayFrame 0x6 0x6

	mGetTiles 0x7C 20
	mDisplayFrame 0x6 0x7

anim_0000__v0_l1: @ 80DC480
	mJumpBack anim_0000__v0_l0

anim_0000:
	.4byte anim_0000__v0_l0


anim_0001__v0_l0: @ 80DC48C
	mGetPalette 0 16 0x0
	mGetTiles 0xEC 20
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x6 0x0

	mGetTiles 0x100 20
	mDisplayFrame 0x1E 0x1

	mGetTiles 0x114 30
	mDisplayFrame 0xA 0x2

	mGetTiles 0x132 20
	mDisplayFrame 0x6 0x3

	mGetTiles 0x100 20
	mDisplayFrame 0x28 0x1

	mGetTiles 0x146 20
	mDisplayFrame 0x6 0x4

	mGetTiles 0x15A 25
	mDisplayFrame 0x8 0x5

	mGetTiles 0x173 25
	mDisplayFrame 0x8 0x6

	mGetTiles 0x15A 25
	mDisplayFrame 0x8 0x5

	mGetTiles 0x173 25
	mDisplayFrame 0x8 0x6

	mGetTiles 0x15A 25
	mDisplayFrame 0x8 0x5

	mGetTiles 0x173 25
	mDisplayFrame 0x8 0x6

	mGetTiles 0x18C 20
	mDisplayFrame 0x6 0x7

	mGetTiles 0x1A0 20
	mDisplayFrame 0xC 0x8

	mGetTiles 0x1B4 20
	mDisplayFrame 0x6 0x9

	mGetTiles 0x1C8 20
	mDisplayFrame 0x6 0xA

	mGetTiles 0x1DC 20
	mDisplayFrame 0x6 0xB

	mGetTiles 0x1F0 20
	mDisplayFrame 0x14 0xC

	mGetTiles 0x204 20
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x8 0xD

	mGetTiles 0x218 20
	mDisplayFrame 0x1E 0xE

	mGetTiles 0x204 20
	mDisplayFrame 0x8 0xD

anim_0001__v0_l1: @ 80DC654
	mGetTiles 0x100 20
	mDisplayFrame 0x14 0x1

	mGetTiles 0x22C 20
	mDisplayFrame 0x8 0xF

	mGetTiles 0x240 20
	mDisplayFrame 0xC 0x10

	mGetTiles 0x254 20
	mDisplayFrame 0x8 0x11

	mGetTiles 0x240 20
	mDisplayFrame 0x8 0x10

	mGetTiles 0x254 20
	mDisplayFrame 0x8 0x11

	mGetTiles 0x240 20
	mDisplayFrame 0x14 0x10

	mGetTiles 0x22C 20
	mDisplayFrame 0x6 0xF

	mGetTiles 0x100 20
	mDisplayFrame 0x50 0x1

	mGetTiles 0x22C 20
	mDisplayFrame 0x8 0xF

	mGetTiles 0x240 20
	mDisplayFrame 0xC 0x10

	mGetTiles 0x254 20
	mDisplayFrame 0x8 0x11

	mGetTiles 0x240 20
	mDisplayFrame 0x8 0x10

	mGetTiles 0x254 20
	mDisplayFrame 0x8 0x11

	mGetTiles 0x240 20
	mDisplayFrame 0x14 0x10

	mGetTiles 0x22C 20
	mDisplayFrame 0x6 0xF

anim_0001__v0_l2: @ 80DC794
	mJumpBack anim_0001__v0_l1

anim_0001:
	.4byte anim_0001__v0_l0


anim_0002__v0_l0: @ 80DC7A0
	mGetPalette 0 16 0x0
	mGetTiles 0x268 20
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x1 0x0

	mGetTiles 0x27C 20
	mDisplayFrame 0x1 0x1

anim_0002__v0_l1: @ 80DC7E0
	mGetTiles 0x290 20
	mDisplayFrame 0xC 0x2

	mGetTiles 0x2A4 20
	mDisplayFrame 0xC 0x3

	mGetTiles 0x290 20
	mDisplayFrame 0xC 0x2

	mGetTiles 0x2B8 20
	mDisplayFrame 0xC 0x4

anim_0002__v0_l2: @ 80DC830
	mJumpBack anim_0002__v0_l1

anim_0002__v1_l0: @ 80DC838
	mGetPalette 0 16 0x0
	mGetTiles 0x27C 20
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x1 0x1

	mGetTiles 0x268 20
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0002:
	.4byte anim_0002__v0_l0
	.4byte anim_0002__v1_l0


anim_0003__v0_l0: @ 80DC884
	mGetPalette 0 16 0x0
	mGetTiles 0x2CC 16
	mAddHitbox 0 0xFA 0xFA 0x06 0x10
	mDisplayFrame 0x1 0x0

	mGetTiles 0x2DC 16
	mDisplayFrame 0x1 0x1

	mGetTiles 0x2EC 16
	mDisplayFrame 0x1 0x2

anim_0003__v0_l1: @ 80DC8D8
	mGetTiles 0x2FC 16
	mDisplayFrame 0x1 0x3

anim_0003__v0_l2: @ 80DC8EC
	mJumpBack anim_0003__v0_l1

anim_0003__v1_l0: @ 80DC8F4
	mGetPalette 0 16 0x0
	mGetTiles 0x2DC 16
	mAddHitbox 0 0xFA 0xFA 0x06 0x10
	mDisplayFrame 0x1 0x1

	mGetTiles 0x2CC 16
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0003:
	.4byte anim_0003__v0_l0
	.4byte anim_0003__v1_l0


anim_0004__v0_l0: @ 80DC940
	mGetPalette 0 16 0x0
	mGetTiles 0x30C 64
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x3 0x0

	mGetTiles 0x34C 64
	mDisplayFrame 0x3 0x1

	mGetTiles 0x38C 64
	mDisplayFrame 0x3 0x2

	mGetTiles 0x3CC 64
	mDisplayFrame 0x3 0x3

	mGetTiles 0x40C 64
	mDisplayFrame 0x3 0x4

	mGetTiles 0x44C 64
	mDisplayFrame 0x3 0x5

	mGetTiles 0x48C 64
	mDisplayFrame 0x3 0x6

	mGetTiles 0x4CC 64
	mDisplayFrame 0x3 0x7

anim_0004__v0_l1: @ 80DC9F8
	mJumpBack anim_0004__v0_l0

anim_0004:
	.4byte anim_0004__v0_l0


anim_0005__v0_l0: @ 80DCA04
	mGetPalette 0 16 0x0
	mGetTiles 0x50C 64
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x2 0x0

	mGetTiles 0x54C 64
	mDisplayFrame 0x2 0x1

	mGetTiles 0x58C 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0x5CC 64
	mDisplayFrame 0x2 0x3

anim_0005__v0_l1: @ 80DCA6C
	mJumpBack anim_0005__v0_l0

anim_0005:
	.4byte anim_0005__v0_l0


anim_0006__v0_l0: @ 80DCA78
	mGetPalette 0 16 0x0
	mGetTiles 0x60C 20
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x1 0x0

	mGetTiles 0x620 20
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0006:
	.4byte anim_0006__v0_l0


anim_0007__v0_l0: @ 80DCAC0
	mGetPalette 0 16 0x0
	mGetTiles 0x634 20
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x1 0x0

	mGetTiles 0x648 20
	mDisplayFrame 0x1 0x1

	mGetTiles 0x65C 25
	mDisplayFrame 0x1 0x2

	mGetTiles 0x675 20
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0007:
	.4byte anim_0007__v0_l0


anim_0008__v0_l0: @ 80DCB30
	mGetPalette 0 16 0x0
	mGetTiles 0x689 16
	mAddHitbox 0 0xF8 0xF8 0x08 0x08
	mAddHitbox 1 0xF8 0xF8 0x08 0x08
	mDisplayFrame 0x2 0x0

	mGetTiles 0x699 16
	mDisplayFrame 0x2 0x1

	mGetTiles 0x6A9 16
	mDisplayFrame 0x2 0x2

	mGetTiles 0x6B9 16
	mDisplayFrame 0x2 0x3

anim_0008__v0_l1: @ 80DCBA4
	mJumpBack anim_0008__v0_l0

anim_0008:
	.4byte anim_0008__v0_l0


anim_0009__v0_l0: @ 80DCBB0
	mGetPalette 0 16 0x0
	mGetTiles 0x6C9 25
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x2 0x0

anim_0009__v0_l1: @ 80DCBDC
	mGetTiles 0x6E2 25
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x4 0x1

	mGetTiles 0x6FB 25
	mDisplayFrame 0x4 0x2

anim_0009__v0_l2: @ 80DCC10
	mJumpBack anim_0009__v0_l1

anim_0009__v1_l0: @ 80DCC18
	mGetPalette 0 16 0x0
	mGetTiles 0x6C9 25
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x4 0x0

	mEnd 

anim_0009:
	.4byte anim_0009__v0_l0
	.4byte anim_0009__v1_l0


anim_0010__v0_l0: @ 80DCC50
	mGetPalette 0 16 0x0
	mGetTiles 0x714 24
	mAddHitbox 0 0xFA 0xF0 0x06 0x0E
	mDisplayFrame 0x3 0x0

anim_0010__v0_l1: @ 80DCC7C
	mGetTiles 0x72C 18
	mDisplayFrame 0x3 0x1

	mGetTiles 0x73E 18
	mDisplayFrame 0x3 0x2

	mGetTiles 0x750 18
	mDisplayFrame 0x3 0x3

anim_0010__v0_l2: @ 80DCCB8
	mJumpBack anim_0010__v0_l1

anim_0010__v1_l0: @ 80DCCC0
	mGetPalette 0 16 0x0
	mGetTiles 0x714 24
	mAddHitbox 0 0xFA 0xF0 0x06 0x0E
	mDisplayFrame 0x2 0x0

	mGetTiles 0x762 20
	mDisplayFrame 0x2 0x4

	mGetTiles 0x776 20
	mDisplayFrame 0x2 0x5

	mGetTiles 0x78A 20
	mDisplayFrame 0x3 0x6

	mGetTiles 0x79E 20
	mDisplayFrame 0x3 0x7

	mGetTiles 0x7B2 20
	mDisplayFrame 0x3 0x8

	mEnd 

anim_0010__v2_l0: @ 80DCD54
	mGetPalette 0 16 0x0
	mGetTiles 0x7C6 20
	mAddHitbox 0 0xFA 0xF0 0x06 0x0E
	mDisplayFrame 0x3 0x9

	mGetTiles 0x7DA 20
	mDisplayFrame 0x3 0xA

	mGetTiles 0x7EE 20
	mDisplayFrame 0x3 0xB

anim_0010__v2_l1: @ 80DCDA8
	mJumpBack anim_0010__v2_l0

anim_0010__v3_l0: @ 80DCDB0
	mGetPalette 0 16 0x0
	mGetTiles 0x802 20
	mAddHitbox 0 0xFA 0xF0 0x06 0x0E
	mDisplayFrame 0x3 0xC

	mGetTiles 0x816 16
	mAddHitbox 0 0xFA 0x00 0x06 0x18
	mDisplayFrame 0x1 0xD

	mGetTiles 0x826 16
	mAddHitbox 0 0xFA 0x00 0x06 0x18
	mDisplayFrame 0x1 0xE

	mGetTiles 0x816 16
	mAddHitbox 0 0xFA 0x00 0x06 0x18
	mDisplayFrame 0x1 0xD

	mEnd 

anim_0010:
	.4byte anim_0010__v0_l0
	.4byte anim_0010__v1_l0
	.4byte anim_0010__v2_l0
	.4byte anim_0010__v3_l0


anim_0011__v0_l0: @ 80DCE50
	mGetPalette 0 16 0x0
	mGetTiles 0x836 20
	mAddHitbox 0 0xFA 0xF0 0x06 0x0E
	mDisplayFrame 0x4 0x0

	mGetTiles 0x84A 16
	mDisplayFrame 0x4 0x1

	mGetTiles 0x85A 20
	mDisplayFrame 0x4 0x2

	mGetTiles 0x86E 20
	mDisplayFrame 0x4 0x3

	mGetTiles 0x882 20
	mDisplayFrame 0x4 0x4

	mGetTiles 0x896 20
	mDisplayFrame 0x4 0x5

	mGetTiles 0x8AA 20
	mDisplayFrame 0x4 0x6

	mGetTiles 0x8BE 20
	mDisplayFrame 0x4 0x7

	mGetTiles 0x8D2 20
	mDisplayFrame 0x4 0x8

	mGetTiles 0x8E6 16
	mDisplayFrame 0x4 0x9

	mGetTiles 0x8F6 20
	mDisplayFrame 0x4 0xA

	mEnd 

anim_0011:
	.4byte anim_0011__v0_l0


anim_0012__v0_l0: @ 80DCF4C
	mGetPalette 0 16 0x0
	mGetTiles 0x90A 16
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x4 0x0

anim_0012__v0_l1: @ 80DCF78
	mGetTiles 0x91A 16
	mDisplayFrame 0x6 0x1

	mGetTiles 0x92A 16
	mDisplayFrame 0x6 0x2

	mGetTiles 0x93A 16
	mDisplayFrame 0x6 0x3

	mGetTiles 0x94A 16
	mDisplayFrame 0x6 0x4

	mGetTiles 0x95A 16
	mDisplayFrame 0x6 0x5

	mGetTiles 0x96A 16
	mDisplayFrame 0x6 0x6

	mGetTiles 0x97A 16
	mDisplayFrame 0x6 0x7

	mGetTiles 0x98A 16
	mDisplayFrame 0x6 0x8

anim_0012__v0_l2: @ 80DD018
	mJumpBack anim_0012__v0_l1

anim_0012__v1_l0: @ 80DD020
	mGetPalette 0 16 0x0
	mGetTiles 0x90A 16
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x4 0x0

	mEnd 

anim_0012:
	.4byte anim_0012__v0_l0
	.4byte anim_0012__v1_l0


anim_0013__v0_l0: @ 80DD058
	mGetPalette 0 16 0x0
	mGetTiles 0x99A 20
	mAddHitbox 0 0xFB 0xF3 0x07 0x10
	mDisplayFrame 0x2 0x0

anim_0013__v0_l1: @ 80DD084
	mGetTiles 0x9AE 25
	mAddHitbox 0 0xFB 0xF3 0x07 0x10
	mDisplayFrame 0x2 0x1

	mGetTiles 0x9C7 25
	mDisplayFrame 0x2 0x2

	mGetTiles 0x9E0 25
	mDisplayFrame 0x2 0x3

	mGetTiles 0x9F9 20
	mDisplayFrame 0x2 0x4

	mGetTiles 0xA0D 25
	mDisplayFrame 0x2 0x5

	mGetTiles 0xA26 25
	mDisplayFrame 0x2 0x6

	mGetTiles 0xA3F 25
	mDisplayFrame 0x2 0x7

	mGetTiles 0xA58 20
	mDisplayFrame 0x2 0x8

anim_0013__v0_l2: @ 80DD130
	mJumpBack anim_0013__v0_l1

anim_0013__v1_l0: @ 80DD138
	mGetPalette 0 16 0x0
	mGetTiles 0xA6C 20
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x2 0x9

	mEnd 

anim_0013:
	.4byte anim_0013__v0_l0
	.4byte anim_0013__v1_l0


anim_0014__v0_l0: @ 80DD170
	mGetPalette 0 16 0x0
	mGetTiles 0xA80 25
	mAddHitbox 0 0xF0 0xF3 0xFC 0x10
	mDisplayFrame 0x2 0x0

anim_0014__v0_l1: @ 80DD19C
	mGetTiles 0xA99 25
	mAddHitbox 0 0xF0 0xF3 0xFC 0x10
	mDisplayFrame 0x3 0x1

	mGetTiles 0xAB2 25
	mDisplayFrame 0x3 0x2

	mGetTiles 0xACB 25
	mDisplayFrame 0x3 0x3

	mGetTiles 0xAE4 20
	mDisplayFrame 0x3 0x4

	mGetTiles 0xAF8 25
	mDisplayFrame 0x3 0x5

	mGetTiles 0xB11 25
	mDisplayFrame 0x3 0x6

	mGetTiles 0xB2A 25
	mDisplayFrame 0x3 0x7

	mGetTiles 0xB43 30
	mDisplayFrame 0x3 0x8

anim_0014__v0_l2: @ 80DD248
	mJumpBack anim_0014__v0_l1

anim_0014__v1_l0: @ 80DD250
	mGetPalette 0 16 0x0
	mGetTiles 0xB61 25
	mAddHitbox 0 0xF2 0xF3 0xFE 0x10
	mDisplayFrame 0x2 0x9

	mEnd 

anim_0014:
	.4byte anim_0014__v0_l0
	.4byte anim_0014__v1_l0


anim_0017__v0_l0: @ 80DD288
	mGetPalette 0 16 0x0
	mGetTiles 0xB7A 24
	mAddHitbox 0 0xFA 0xF2 0x06 0x0E
	mPlaySoundEffect 191
	mDisplayFrame 0x6 0x0

	mGetTiles 0xB92 24
	mDisplayFrame 0x6 0x1

	mEnd 

anim_0017:
	.4byte anim_0017__v0_l0


anim_0018__v0_l0: @ 80DD2D8
	mGetPalette 0 16 0x0
	mGetTiles 0xBAA 16
	mAddHitbox 0 0xF8 0xF8 0x08 0x08
	mAddHitbox 1 0xF8 0xF8 0x08 0x08
	mDisplayFrame 0x2 0x0

	mGetTiles 0xBBA 16
	mDisplayFrame 0x2 0x1

	mGetTiles 0xBCA 16
	mDisplayFrame 0x2 0x2

	mGetTiles 0xBDA 16
	mDisplayFrame 0x2 0x3

anim_0018__v0_l1: @ 80DD34C
	mJumpBack anim_0018__v0_l0

anim_0018__v1_l0: @ 80DD354
	mGetPalette 0 16 0x0
	mGetTiles 0xBEA 16
	mAddHitbox 0 0xF8 0xF8 0x08 0x08
	mAddHitbox 1 0xF8 0xF8 0x08 0x08
	mDisplayFrame 0x2 0x4

	mGetTiles 0xBFA 16
	mAddHitbox 0 0xF9 0xF7 0x05 0x08
	mDisplayFrame 0x2 0x5

	mGetTiles 0xC0A 16
	mAddHitbox 0 0xF9 0xF7 0x05 0x08
	mDisplayFrame 0x2 0x6

	mGetTiles 0xC1A 16
	mAddHitbox 0 0xF9 0xF7 0x05 0x08
	mDisplayFrame 0x2 0x7

	mEnd 

anim_0018:
	.4byte anim_0018__v0_l0
	.4byte anim_0018__v1_l0


anim_0019__v0_l0: @ 80DD3F8
	mGetPalette 0 16 0x0
	mGetTiles 0xC2A 20
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x3 0x0

	mGetTiles 0xC3E 25
	mDisplayFrame 0x3 0x1

	mGetTiles 0xC57 20
	mDisplayFrame 0x3 0x2

	mGetTiles 0xC6B 25
	mDisplayFrame 0x3 0x3

anim_0019__v0_l1: @ 80DD460
	mGetTiles 0xC84 20
	mDisplayFrame 0x3 0x4

anim_0019__v0_l2: @ 80DD474
	mJumpBack anim_0019__v0_l1

anim_0019:
	.4byte anim_0019__v0_l0


anim_0021__v0_l0: @ 80DD480
	mGetPalette 0 16 0x0
	mGetTiles 0xC98 20
	mDisplayFrame 0x3 0x0

	mGetTiles 0xCAC 25
	mDisplayFrame 0x3 0x1

	mGetTiles 0xC98 20
	mDisplayFrame 0xC 0x0

	mGetTiles 0xCC5 16
	mDisplayFrame 0x2 0x2

anim_0021__v0_l1: @ 80DD4DC
	mGetTiles 0xCD5 20
	mDisplayFrame 0x3 0x3

	mGetTiles 0xCE9 20
	mDisplayFrame 0x3 0x4

anim_0021__v0_l2: @ 80DD504
	mJumpBack anim_0021__v0_l1

anim_0021:
	.4byte anim_0021__v0_l0


anim_0022__v0_l0: @ 80DD510
	mGetPalette 0 16 0x0
	mGetTiles 0xCFD 20
	mDisplayFrame 0x3 0x0

	mGetTiles 0xD11 20
	mDisplayFrame 0x3 0x1

	mGetTiles 0xD25 20
	mDisplayFrame 0x3 0x2

	mGetTiles 0xD39 20
	mDisplayFrame 0x3 0x3

	mGetTiles 0xD4D 20
	mDisplayFrame 0x3 0x4

	mGetTiles 0xD61 20
	mDisplayFrame 0x3 0x5

	mGetTiles 0xD75 25
	mDisplayFrame 0x3 0x6

	mGetTiles 0xD8E 25
	mDisplayFrame 0x3 0x7

anim_0022__v0_l1: @ 80DD5BC
	mGetTiles 0xDA7 20
	mDisplayFrame 0x3 0x8

	mGetTiles 0xDBB 20
	mDisplayFrame 0x3 0x9

	mGetTiles 0xDCF 20
	mDisplayFrame 0x3 0xA

	mGetTiles 0xDE3 20
	mDisplayFrame 0x3 0xB

	mGetTiles 0xDF7 20
	mDisplayFrame 0x3 0xC

	mGetTiles 0xE0B 20
	mDisplayFrame 0x3 0xD

	mGetTiles 0xD75 25
	mDisplayFrame 0x3 0x6

	mGetTiles 0xE1F 25
	mDisplayFrame 0x3 0xE

anim_0022__v0_l2: @ 80DD65C
	mJumpBack anim_0022__v0_l1

anim_0022:
	.4byte anim_0022__v0_l0


anim_0023__v0_l0: @ 80DD668
	mGetPalette 0 16 0x0
	mGetTiles 0xE38 20
	mDisplayFrame 0x4 0x0

	mGetTiles 0xE4C 20
	mDisplayFrame 0x4 0x1

	mGetTiles 0xE60 24
	mDisplayFrame 0x4 0x2

	mGetTiles 0xE78 24
	mDisplayFrame 0x4 0x3

	mGetTiles 0xE90 24
	mDisplayFrame 0x4 0x4

	mGetTiles 0xEA8 24
	mDisplayFrame 0x4 0x5

	mGetTiles 0xEC0 20
	mDisplayFrame 0x4 0x6

	mGetTiles 0xED4 20
	mDisplayFrame 0x4 0x7

	mGetTiles 0xEE8 20
	mDisplayFrame 0x4 0x8

	mGetTiles 0xEFC 20
	mDisplayFrame 0x8 0x9

	mGetTiles 0xEE8 20
	mDisplayFrame 0x4 0x8

	mGetTiles 0xF10 20
	mDisplayFrame 0x3 0xA

	mGetTiles 0xF24 20
	mDisplayFrame 0x3 0xB

	mGetTiles 0xF38 25
	mDisplayFrame 0x4 0xC

	mGetTiles 0xF51 25
	mDisplayFrame 0x8 0xD

	mGetTiles 0xF6A 25
	mDisplayFrame 0x4 0xE

	mGetTiles 0xF83 25
	mDisplayFrame 0x4 0xF

	mGetTiles 0xF9C 25
	mDisplayFrame 0x4 0x10

	mEnd 

anim_0023:
	.4byte anim_0023__v0_l0


anim_0024__v0_l0: @ 80DD7E4
	mGetPalette 0 16 0x0
	mGetTiles 0xFB5 25
	mDisplayFrame 0x3 0x0

	mGetTiles 0xFCE 25
	mDisplayFrame 0x3 0x1

	mGetTiles 0xFE7 25
	mDisplayFrame 0x3 0x2

	mGetTiles 0x1000 25
	mDisplayFrame 0x14 0x3

	mGetTiles 0xFB5 25
	mDisplayFrame 0x3 0x0

	mGetTiles 0x1019 20
	mDisplayFrame 0x3 0x4

	mGetTiles 0x102D 20
	mDisplayFrame 0x1E 0x5

	mEnd 

anim_0024:
	.4byte anim_0024__v0_l0


anim_0025__v0_l0: @ 80DD884
	mGetPalette 0 16 0x70
	mGetTiles 0x1041 18
	mDisplayFrame 0x3 0x0

	mGetTiles 0x1053 24
	mDisplayFrame 0x3 0x1

	mGetTiles 0x106B 18
	mDisplayFrame 0x3 0x2

	mGetTiles 0x107D 24
	mDisplayFrame 0x3 0x3

anim_0025__v0_l1: @ 80DD8E0
	mJumpBack anim_0025__v0_l0

anim_0025:
	.4byte anim_0025__v0_l0


anim_0026__v0_l0: @ 80DD8EC
	mGetPalette 0 16 0x70
	mGetTiles 0x1095 35
	mDisplayFrame 0x14 0x0

	mGetTiles 0x10B8 36
	mDisplayFrame 0xA 0x1

	mGetTiles 0x10DC 42
	mDisplayFrame 0x8 0x2

	mGetTiles 0x1106 42
	mDisplayFrame 0x7 0x3

	mGetTiles 0x1130 42
	mDisplayFrame 0x5 0x4

	mGetTiles 0x115A 42
	mDisplayFrame 0x3 0x5

anim_0026__v0_l1: @ 80DD970
	mGetTiles 0x1184 42
	mDisplayFrame 0x2 0x6

	mGetTiles 0x11AE 42
	mDisplayFrame 0x2 0x7

	mGetTiles 0x11D8 42
	mDisplayFrame 0x2 0x8

anim_0026__v0_l2: @ 80DD9AC
	mJumpBack anim_0026__v0_l1

anim_0026:
	.4byte anim_0026__v0_l0


anim_0027__v0_l0: @ 80DD9B8
	mGetPalette 0 16 0x0
	mGetTiles 0x1202 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x0

	mGetTiles 0x1242 64
	mDisplayFrame 0x2 0x1

anim_0027__v0_l1: @ 80DD9F8
	mJumpBack anim_0027__v0_l0

anim_0027__v1_l0: @ 80DDA00
	mGetPalette 0 16 0x0
	mGetTiles 0x1282 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x2

	mGetTiles 0x12C2 64
	mDisplayFrame 0x2 0x3

anim_0027__v1_l1: @ 80DDA40
	mJumpBack anim_0027__v1_l0

anim_0027__v2_l0: @ 80DDA48
	mGetPalette 0 16 0x0
	mGetTiles 0x1302 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x4

	mGetTiles 0x1342 64
	mDisplayFrame 0x2 0x5

anim_0027__v2_l1: @ 80DDA88
	mJumpBack anim_0027__v2_l0

anim_0027__v3_l0: @ 80DDA90
	mGetPalette 0 16 0x0
	mGetTiles 0x1382 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x6

	mGetTiles 0x13C2 64
	mDisplayFrame 0x2 0x7

anim_0027__v3_l1: @ 80DDAD0
	mJumpBack anim_0027__v3_l0

anim_0027__v4_l0: @ 80DDAD8
	mGetPalette 0 16 0x0
	mGetTiles 0x1402 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x8

	mGetTiles 0x1442 64
	mDisplayFrame 0x2 0x9

anim_0027__v4_l1: @ 80DDB18
	mJumpBack anim_0027__v4_l0

anim_0027__v5_l0: @ 80DDB20
	mGetPalette 0 16 0x0
	mGetTiles 0x1482 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xA

	mGetTiles 0x14C2 64
	mDisplayFrame 0x2 0xB

anim_0027__v5_l1: @ 80DDB60
	mJumpBack anim_0027__v5_l0

anim_0027__v6_l0: @ 80DDB68
	mGetPalette 0 16 0x0
	mGetTiles 0x1502 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xC

	mGetTiles 0x1542 64
	mDisplayFrame 0x2 0xD

anim_0027__v6_l1: @ 80DDBA8
	mJumpBack anim_0027__v6_l0

anim_0027__v7_l0: @ 80DDBB0
	mGetPalette 0 16 0x0
	mGetTiles 0x1582 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xE

	mGetTiles 0x15C2 64
	mDisplayFrame 0x2 0xF

anim_0027__v7_l1: @ 80DDBF0
	mJumpBack anim_0027__v7_l0

anim_0027__v8_l0: @ 80DDBF8
	mGetPalette 0 16 0x0
	mGetTiles 0x1602 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x10

	mGetTiles 0x1642 64
	mDisplayFrame 0x2 0x11

anim_0027__v8_l1: @ 80DDC38
	mJumpBack anim_0027__v8_l0

anim_0027:
	.4byte anim_0027__v0_l0
	.4byte anim_0027__v1_l0
	.4byte anim_0027__v2_l0
	.4byte anim_0027__v3_l0
	.4byte anim_0027__v4_l0
	.4byte anim_0027__v5_l0
	.4byte anim_0027__v6_l0
	.4byte anim_0027__v7_l0
	.4byte anim_0027__v8_l0


anim_0028__v0_l0: @ 80DDC64
	mGetPalette 0 16 0x0
	mGetTiles 0x1682 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x0

	mGetTiles 0x16C2 64
	mDisplayFrame 0x2 0x1

anim_0028__v0_l1: @ 80DDCA4
	mJumpBack anim_0028__v0_l0

anim_0028__v1_l0: @ 80DDCAC
	mGetPalette 0 16 0x0
	mGetTiles 0x1702 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x2

	mGetTiles 0x1742 64
	mDisplayFrame 0x2 0x3

anim_0028__v1_l1: @ 80DDCEC
	mJumpBack anim_0028__v1_l0

anim_0028__v2_l0: @ 80DDCF4
	mGetPalette 0 16 0x0
	mGetTiles 0x1782 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x4

	mGetTiles 0x17C2 64
	mDisplayFrame 0x2 0x5

anim_0028__v2_l1: @ 80DDD34
	mJumpBack anim_0028__v2_l0

anim_0028__v3_l0: @ 80DDD3C
	mGetPalette 0 16 0x0
	mGetTiles 0x1802 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x6

	mGetTiles 0x1842 64
	mDisplayFrame 0x2 0x7

anim_0028__v3_l1: @ 80DDD7C
	mJumpBack anim_0028__v3_l0

anim_0028__v4_l0: @ 80DDD84
	mGetPalette 0 16 0x0
	mGetTiles 0x1882 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x8

	mGetTiles 0x18C2 64
	mDisplayFrame 0x2 0x9

anim_0028__v4_l1: @ 80DDDC4
	mJumpBack anim_0028__v4_l0

anim_0028__v5_l0: @ 80DDDCC
	mGetPalette 0 16 0x0
	mGetTiles 0x1902 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xA

	mGetTiles 0x1942 64
	mDisplayFrame 0x2 0xB

anim_0028__v5_l1: @ 80DDE0C
	mJumpBack anim_0028__v5_l0

anim_0028__v6_l0: @ 80DDE14
	mGetPalette 0 16 0x0
	mGetTiles 0x1982 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xC

	mGetTiles 0x19C2 64
	mDisplayFrame 0x2 0xD

anim_0028__v6_l1: @ 80DDE54
	mJumpBack anim_0028__v6_l0

anim_0028__v7_l0: @ 80DDE5C
	mGetPalette 0 16 0x0
	mGetTiles 0x1A02 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xE

	mGetTiles 0x1A42 64
	mDisplayFrame 0x2 0xF

anim_0028__v7_l1: @ 80DDE9C
	mJumpBack anim_0028__v7_l0

anim_0028:
	.4byte anim_0028__v0_l0
	.4byte anim_0028__v1_l0
	.4byte anim_0028__v2_l0
	.4byte anim_0028__v3_l0
	.4byte anim_0028__v4_l0
	.4byte anim_0028__v5_l0
	.4byte anim_0028__v6_l0
	.4byte anim_0028__v7_l0


anim_0029__v0_l0: @ 80DDEC4
	mGetPalette 0 16 0x0
	mGetTiles 0x1A82 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x4 0x0

anim_0029__v0_l1: @ 80DDEF0
	mGetTiles 0x1AC2 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x1

	mGetTiles 0x1B02 64
	mDisplayFrame 0x2 0x2

anim_0029__v0_l2: @ 80DDF24
	mJumpBack anim_0029__v0_l1

anim_0029__v1_l0: @ 80DDF2C
	mGetPalette 0 16 0x0
	mGetTiles 0x1A82 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x4 0x0

	mEnd 

anim_0029:
	.4byte anim_0029__v0_l0
	.4byte anim_0029__v1_l0


anim_0030__v0_l0: @ 80DDF64
	mGetPalette 0 16 0x0
	mGetTiles 0x1B42 64
	mAddHitbox 0 0xEA 0xEA 0x16 0x16
	mDisplayFrame 0x2 0x0

	mGetTiles 0x1B82 64
	mDisplayFrame 0x2 0x1

	mGetTiles 0x1BC2 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0x1C02 64
	mDisplayFrame 0x2 0x3

	mGetTiles 0x1C42 64
	mDisplayFrame 0x2 0x4

	mGetTiles 0x1C82 64
	mDisplayFrame 0x2 0x5

	mGetTiles 0x1CC2 64
	mDisplayFrame 0x2 0x6

	mGetTiles 0x1D02 64
	mDisplayFrame 0x2 0x7

	mGetTiles 0x1D42 64
	mDisplayFrame 0x2 0x8

	mGetTiles 0x1D82 64
	mDisplayFrame 0x2 0x9

	mGetTiles 0x1DC2 64
	mDisplayFrame 0x2 0xA

anim_0030__v0_l1: @ 80DE058
	mJumpBack anim_0030__v0_l0

anim_0030:
	.4byte anim_0030__v0_l0


anim_0031__v0_l0: @ 80DE064
	mGetPalette 0 16 0x0
	mGetTiles 0x1E02 64
	mAddHitbox 0 0xEC 0xEC 0x14 0x14
	mDisplayFrame 0x2 0x0

	mGetTiles 0x1E42 64
	mDisplayFrame 0x2 0x1

	mGetTiles 0x1E82 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0x1EC2 64
	mDisplayFrame 0x3 0x3

	mGetTiles 0x1F02 64
	mDisplayFrame 0x3 0x4

	mGetTiles 0x1F42 64
	mDisplayFrame 0x3 0x5

	mGetTiles 0x1F82 64
	mDisplayFrame 0x3 0x6

	mGetTiles 0x1FC2 64
	mDisplayFrame 0x3 0x7

	mGetTiles 0x2002 64
	mDisplayFrame 0x3 0x8

	mGetTiles 0x2042 64
	mDisplayFrame 0x3 0x9

	mGetTiles 0x2082 64
	mDisplayFrame 0x3 0xA

	mGetTiles 0x1EC2 64
	mDisplayFrame 0x3 0x3

	mGetTiles 0x20C2 64
	mDisplayFrame 0x3 0xB

	mGetTiles 0x2102 64
	mDisplayFrame 0x3 0xC

	mGetTiles 0x2142 64
	mDisplayFrame 0x3 0xD

	mEnd 

anim_0031:
	.4byte anim_0031__v0_l0

	.4byte anim_0031 @ Bug/Leftover?


anim_0032__v0_l0: @ 80DE1B4
	mGetPalette 0 16 0x0
	mGetTiles 0x2182 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x3 0x0

	mGetTiles 0x21C2 64
	mDisplayFrame 0x3 0x1

	mGetTiles 0x2202 64
	mDisplayFrame 0x3 0x2

	mGetTiles 0x2242 64
	mDisplayFrame 0x3 0x3

	mGetTiles 0x2282 64
	mDisplayFrame 0x3 0x4

	mGetTiles 0x22C2 64
	mDisplayFrame 0x3 0x5

	mGetTiles 0x2302 64
	mDisplayFrame 0x3 0x6

anim_0032__v0_l1: @ 80DE258
	mJumpBack anim_0032__v0_l0

anim_0032:
	.4byte anim_0032__v0_l0


anim_0033__v0_l0: @ 80DE264
	mGetPalette 0 16 0x0
	mGetTiles 0x2342 64
	mDisplayFrame 0x6 0x0

anim_0033__v0_l1: @ 80DE284
	mGetTiles 0x2382 64
	mDisplayFrame 0x3 0x1

	mGetTiles 0x23C2 64
	mDisplayFrame 0x3 0x2

anim_0033__v0_l2: @ 80DE2AC
	mJumpBack anim_0033__v0_l1

anim_0033__v1_l0: @ 80DE2B4
	mGetPalette 0 16 0x0
	mGetTiles 0x2342 64
	mDisplayFrame 0x6 0x0

	mEnd 

anim_0033:
	.4byte anim_0033__v0_l0
	.4byte anim_0033__v1_l0


anim_0034__v0_l0: @ 80DE2E0
	mGetPalette 0 16 0x0
	mGetTiles 0x2402 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x0

	mGetTiles 0x2442 64
	mDisplayFrame 0x2 0x1

anim_0034__v0_l1: @ 80DE320
	mJumpBack anim_0034__v0_l0

anim_0034__v1_l0: @ 80DE328
	mGetPalette 0 16 0x0
	mGetTiles 0x2482 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0x24C2 64
	mDisplayFrame 0x2 0x3

	mGetTiles 0x2502 64
	mDisplayFrame 0x2 0x4

	mGetTiles 0x2542 64
	mDisplayFrame 0x2 0x5

	mGetTiles 0x2582 64
	mDisplayFrame 0x2 0x6

	mGetTiles 0x25C2 64
	mDisplayFrame 0x2 0x7

anim_0034__v1_l1: @ 80DE3AC
	mJumpBack anim_0034__v1_l0

anim_0034:
	.4byte anim_0034__v0_l0
	.4byte anim_0034__v1_l0


anim_0035__v0_l0: @ 80DE3BC
	mGetPalette 0 16 0x70
	mGetTiles 0x2602 16
	mDisplayFrame 0x1 0x0

	mGetTiles 0x2612 16
	mDisplayFrame 0x1 0x1

	mGetTiles 0x2622 16
	mDisplayFrame 0x10 0x2

	mGetTiles 0x2612 16
	mDisplayFrame 0x1 0x1

	mGetTiles 0x2602 16
	mDisplayFrame 0x2 0x0

	mGetTiles 0x2632 20
	mDisplayFrame 0x2 0x3

	mGetTiles 0x2646 25
	mDisplayFrame 0x14 0x4

anim_0035__v0_l1: @ 80DE454
	mGetTiles 0x265F 20
	mDisplayFrame 0x6 0x5

	mGetTiles 0x2673 25
	mDisplayFrame 0x6 0x6

	mGetTiles 0x268C 25
	mDisplayFrame 0x6 0x7

	mGetTiles 0x26A5 20
	mDisplayFrame 0x6 0x8

	mGetTiles 0x26B9 20
	mDisplayFrame 0x6 0x9

	mGetTiles 0x2646 25
	mDisplayFrame 0x6 0x4

anim_0035__v0_l2: @ 80DE4CC
	mJumpBack anim_0035__v0_l1

anim_0035:
	.4byte anim_0035__v0_l0


anim_0036__v0_l0: @ 80DE4D8
	mGetPalette 0 16 0x0
	mGetTiles 0x26CD 16
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x3 0x0

	mGetTiles 0x26DD 16
	mDisplayFrame 0x3 0x1

	mGetTiles 0x26ED 16
	mDisplayFrame 0x3 0x2

	mGetTiles 0x26FD 16
	mDisplayFrame 0x3 0x3

	mGetTiles 0x270D 16
	mDisplayFrame 0x3 0x4

	mGetTiles 0x271D 16
	mDisplayFrame 0x3 0x5

	mGetTiles 0x272D 16
	mDisplayFrame 0x3 0x6

	mGetTiles 0x273D 16
	mDisplayFrame 0x3 0x7

anim_0036__v0_l1: @ 80DE590
	mJumpBack anim_0036__v0_l0

anim_0036__v1_l0: @ 80DE598
	mGetPalette 0 16 0x0
	mGetTiles 0x274D 20
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x3 0x8

	mGetTiles 0x2761 20
	mDisplayFrame 0x3 0x9

	mGetTiles 0x2775 16
	mDisplayFrame 0x3 0xA

	mGetTiles 0x2785 20
	mDisplayFrame 0x3 0xB

	mGetTiles 0x2799 20
	mDisplayFrame 0x3 0xC

	mGetTiles 0x27AD 20
	mDisplayFrame 0x3 0xD

	mGetTiles 0x27C1 20
	mDisplayFrame 0x3 0xE

	mGetTiles 0x27D5 20
	mDisplayFrame 0x3 0xF

anim_0036__v1_l1: @ 80DE650
	mJumpBack anim_0036__v1_l0

anim_0036__v2_l0: @ 80DE658
	mGetPalette 0 16 0x0
	mGetTiles 0x27E9 20
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x3 0x10

	mGetTiles 0x27FD 20
	mDisplayFrame 0x3 0x11

	mGetTiles 0x2811 25
	mDisplayFrame 0x3 0x12

	mGetTiles 0x282A 20
	mDisplayFrame 0x3 0x13

	mGetTiles 0x283E 20
	mDisplayFrame 0x3 0x14

	mGetTiles 0x2852 20
	mDisplayFrame 0x3 0x15

	mGetTiles 0x2866 16
	mDisplayFrame 0x3 0x16

	mGetTiles 0x2876 20
	mDisplayFrame 0x3 0x17

anim_0036__v2_l1: @ 80DE710
	mJumpBack anim_0036__v2_l0

anim_0036:
	.4byte anim_0036__v0_l0
	.4byte anim_0036__v1_l0
	.4byte anim_0036__v2_l0


anim_0037__v0_l0: @ 80DE724
	mGetPalette 0 16 0x0
	mGetTiles 0x288A 20
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x2 0x0

	mGetTiles 0x289E 25
	mDisplayFrame 0x2 0x1

	mGetTiles 0x28B7 25
	mDisplayFrame 0x4 0x2

	mGetTiles 0x28D0 25
	mDisplayFrame 0x1 0x3

	mGetTiles 0x28E9 20
	mDisplayFrame 0x1 0x4

anim_0037__v0_l1: @ 80DE7A0
	mGetTiles 0x28FD 30
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x1 0x5

	mGetTiles 0x291B 30
	mDisplayFrame 0x1 0x6

	mGetTiles 0x2939 30
	mDisplayFrame 0x1 0x7

anim_0037__v0_l2: @ 80DE7E8
	mJumpBack anim_0037__v0_l1

anim_0037:
	.4byte anim_0037__v0_l0


anim_0038__v0_l0: @ 80DE7F4
	mGetPalette 0 16 0x0
	mGetTiles 0x2957 30
	mAddHitbox 0 0xFD 0xEE 0x09 0x0E
	mDisplayFrame 0x3 0x0

	mGetTiles 0x2975 30
	mDisplayFrame 0x3 0x1

	mGetTiles 0x2993 30
	mDisplayFrame 0x3 0x2

	mGetTiles 0x29B1 24
	mAddHitbox 0 0xFD 0xF4 0x09 0x0E
	mDisplayFrame 0x2 0x3

	mGetTiles 0x29C9 18
	mDisplayFrame 0x2 0x4

	mEnd 

anim_0038:
	.4byte anim_0038__v0_l0


anim_0039__v0_l0: @ 80DE884
	mGetPalette 0 16 0x0
	mGetTiles 0x29DB 64
	mDisplayFrame 0x2 0x0

	mGetTiles 0x2A1B 64
	mDisplayFrame 0x2 0x1

	mGetTiles 0x2A5B 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0x2A9B 64
	mDisplayFrame 0x2 0x3

anim_0039__v0_l1: @ 80DE8E0
	mJumpBack anim_0039__v0_l0

anim_0039:
	.4byte anim_0039__v0_l0


anim_0040__v0_l0: @ 80DE8EC
	mGetPalette 0 16 0x0
	mGetTiles 0x2ADB 28
	mAddHitbox 0 0xE0 0xEA 0xF8 0xFC
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x0

	mGetTiles 0x2AF7 20
	mAddHitbox 0 0xE8 0xEA 0xFA 0xFC
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x1

	mGetTiles 0x2B0B 16
	mAddHitbox 0 0xF8 0xEA 0x00 0xFC
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x2

	mGetTiles 0x2B1B 16
	mAddHitbox 0 0x02 0xEA 0x0A 0xFC
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x3

	mGetTiles 0x2B2B 24
	mAddHitbox 0 0x06 0xEA 0x18 0xFC
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x4

	mGetTiles 0x2B43 28
	mAddHitbox 0 0x08 0xEA 0x20 0xFC
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x5

	mGetTiles 0x2B5F 20
	mAddHitbox 0 0x06 0xEA 0x18 0xFC
	mAnimCmd12 0x13
	mDisplayFrame 0x3 0x6

	mGetTiles 0x2B73 16
	mAddHitbox 0 0x02 0xEA 0x0A 0xFC
	mAnimCmd12 0x13
	mDisplayFrame 0x3 0x7

	mGetTiles 0x2B83 20
	mAddHitbox 0 0xF8 0xEA 0x00 0xFC
	mAnimCmd12 0x13
	mDisplayFrame 0x3 0x8

	mGetTiles 0x2B97 20
	mAddHitbox 0 0xE8 0xEA 0xFA 0xFC
	mAnimCmd12 0x13
	mDisplayFrame 0x3 0x9

anim_0040__v0_l1: @ 80DEA88
	mJumpBack anim_0040__v0_l0

anim_0040__v1_l0: @ 80DEA90
	mGetPalette 0 16 0x0
	mGetTiles 0x2BAB 28
	mAddHitbox 0 0xF8 0x02 0x08 0x24
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xA

	mGetTiles 0x2BC7 20
	mAddHitbox 0 0xF8 0x02 0x08 0x18
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xB

	mGetTiles 0x2BDB 16
	mAddHitbox 0 0xF8 0xFE 0x08 0x0A
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xC

	mGetTiles 0x2BEB 16
	mAddHitbox 0 0xF8 0xF6 0x08 0x02
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xD

	mGetTiles 0x2BFB 24
	mAddHitbox 0 0xF8 0xEE 0x08 0x00
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xE

	mGetTiles 0x2C13 28
	mAddHitbox 0 0xF8 0xDB 0x08 0xFD
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xF

	mGetTiles 0x2C2F 20
	mAddHitbox 0 0xF8 0xEA 0x08 0x00
	mAnimCmdSetSpritePriority 0x3
	mDisplayFrame 0x3 0x10

	mGetTiles 0x2C43 16
	mAddHitbox 0 0xF8 0xF6 0x08 0x02
	mAnimCmdSetSpritePriority 0x3
	mDisplayFrame 0x3 0x11

	mGetTiles 0x2C53 20
	mAddHitbox 0 0xF8 0xFE 0x08 0x0A
	mAnimCmdSetSpritePriority 0x3
	mDisplayFrame 0x3 0x12

	mGetTiles 0x2C67 20
	mAddHitbox 0 0xF8 0x02 0x08 0x14
	mAnimCmdSetSpritePriority 0x3
	mDisplayFrame 0x3 0x13

anim_0040__v1_l1: @ 80DEC2C
	mJumpBack anim_0040__v1_l0

anim_0040:
	.4byte anim_0040__v0_l0
	.4byte anim_0040__v1_l0


anim_0041__v0_l0: @ 80DEC3C
	mGetPalette 0 16 0x0
	mGetTiles 0x2C7B 24
	mAddHitbox 0 0xFA 0xED 0x06 0x07
	mDisplayFrame 0xA 0x0

	mGetTiles 0x2C93 24
	mDisplayFrame 0xA 0x1

	mGetTiles 0x2CAB 24
	mDisplayFrame 0xA 0x2

	mGetTiles 0x2C93 24
	mDisplayFrame 0xA 0x1

anim_0041__v0_l1: @ 80DECA4
	mJumpBack anim_0041__v0_l0

anim_0041__v1_l0: @ 80DECAC
	mGetPalette 0 16 0x0
	mGetTiles 0x2CC3 24
	mAddHitbox 0 0xFA 0xED 0x06 0x07
	mDisplayFrame 0x5 0x3

	mGetTiles 0x2C93 24
	mDisplayFrame 0x5 0x1

	mGetTiles 0x2CDB 24
	mDisplayFrame 0x5 0x4

	mGetTiles 0x2C93 24
	mDisplayFrame 0x5 0x1

anim_0041__v1_l1: @ 80DED14
	mJumpBack anim_0041__v1_l0

anim_0041:
	.4byte anim_0041__v0_l0
	.4byte anim_0041__v1_l0


anim_0042__v0_l0: @ 80DED24
	mGetPalette 0 16 0x0
	mGetTiles 0x2CF3 36
	mAddHitbox 0 0xFA 0xF4 0x06 0x0A
	mDisplayFrame 0x5 0x0

	mGetTiles 0x2D17 25
	mDisplayFrame 0x5 0x1

	mGetTiles 0x2D30 16
	mDisplayFrame 0x5 0x2

	mGetTiles 0x2D40 25
	mDisplayFrame 0x5 0x3

	mGetTiles 0x2D59 36
	mDisplayFrame 0x5 0x4

	mGetTiles 0x2D7D 20
	mDisplayFrame 0x5 0x5

	mGetTiles 0x2D91 16
	mDisplayFrame 0x5 0x6

	mGetTiles 0x2DA1 20
	mDisplayFrame 0x5 0x7

anim_0042__v0_l1: @ 80DEDDC
	mJumpBack anim_0042__v0_l0

anim_0042:
	.4byte anim_0042__v0_l0


anim_0043__v0_l0: @ 80DEDE8
	mGetPalette 0 16 0x0
	mGetTiles 0x2DB5 30
	mDisplayFrame 0x8 0x0

	mGetTiles 0x2DD3 30
	mDisplayFrame 0x8 0x1

	mGetTiles 0x2DF1 30
	mDisplayFrame 0x8 0x2

	mGetTiles 0x2DD3 30
	mDisplayFrame 0x8 0x1

anim_0043__v0_l1: @ 80DEE44
	mJumpBack anim_0043__v0_l0

anim_0043:
	.4byte anim_0043__v0_l0


anim_0044__v0_l0: @ 80DEE50
	mGetPalette 0 16 0x0
	mGetTiles 0x2E0F 20
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x2 0x0

	mGetTiles 0x2E23 20
	mDisplayFrame 0x2 0x1

anim_0044__v0_l1: @ 80DEE90
	mJumpBack anim_0044__v0_l0

anim_0044__v1_l0: @ 80DEE98
	mGetPalette 0 16 0x0
	mGetTiles 0x2E37 30
	mAddHitbox 0 0xFA 0xF4 0x06 0x0E
	mDisplayFrame 0x2 0x2

	mGetTiles 0x2E55 28
	mDisplayFrame 0x2 0x3

anim_0044__v1_l1: @ 80DEED8
	mJumpBack anim_0044__v1_l0

anim_0044:
	.4byte anim_0044__v0_l0
	.4byte anim_0044__v1_l0


anim_0045__v0_l0: @ 80DEEE8
	mGetPalette 0 16 0x0
	mGetTiles 0x2E71 20
	mAddHitbox 0 0xFA 0xF0 0x06 0x08
	mDisplayFrame 0x3 0x0

	mGetTiles 0x2E85 24
	mDisplayFrame 0x3 0x1

	mGetTiles 0x2E9D 20
	mDisplayFrame 0x3 0x2

	mGetTiles 0x2E71 20
	mDisplayFrame 0x3 0x0

	mGetTiles 0x2E85 24
	mDisplayFrame 0x3 0x1

	mGetTiles 0x2E9D 20
	mDisplayFrame 0x3 0x2

	mGetTiles 0x2EB1 25
	mDisplayFrame 0x3 0x3

	mGetTiles 0x2ECA 20
	mDisplayFrame 0x3 0x4

	mGetTiles 0x2EDE 25
	mDisplayFrame 0x3 0x5

	mGetTiles 0x2EF7 20
	mDisplayFrame 0x3 0x6

	mGetTiles 0x2EB1 25
	mDisplayFrame 0x3 0x3

	mGetTiles 0x2ECA 20
	mDisplayFrame 0x3 0x4

	mGetTiles 0x2EDE 25
	mDisplayFrame 0x3 0x5

	mGetTiles 0x2EF7 20
	mDisplayFrame 0x3 0x6

	mGetTiles 0x2EB1 25
	mDisplayFrame 0x3 0x3

	mGetTiles 0x2ECA 20
	mDisplayFrame 0x3 0x4

	mGetTiles 0x2EDE 25
	mDisplayFrame 0x3 0x5

	mGetTiles 0x2EF7 20
	mDisplayFrame 0x3 0x6

anim_0045__v0_l1: @ 80DF068
	mGetTiles 0x2F0B 20
	mAddHitbox 0 0xFA 0xF0 0x06 0x08
	mDisplayFrame 0x3 0x7

	mGetTiles 0x2F1F 20
	mDisplayFrame 0x3 0x8

	mGetTiles 0x2F33 20
	mDisplayFrame 0x3 0x9

anim_0045__v0_l2: @ 80DF0B0
	mJumpBack anim_0045__v0_l1

anim_0045__v1_l0: @ 80DF0B8
	mGetPalette 0 16 0x0
	mGetTiles 0x2F47 20
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x3 0xA

	mGetTiles 0x2F5B 16
	mDisplayFrame 0x1 0xB

	mGetTiles 0x2F6B 16
	mDisplayFrame 0x1 0xC

	mGetTiles 0x2F7B 16
	mDisplayFrame 0x4 0xD

	mGetTiles 0x2F6B 16
	mDisplayFrame 0x2 0xC

	mGetTiles 0x2F5B 16
	mDisplayFrame 0x2 0xB

	mEnd 

anim_0045:
	.4byte anim_0045__v0_l0
	.4byte anim_0045__v1_l0


anim_0049__v0_l0: @ 80DF154
	mGetPalette 0 16 0x0
	mGetTiles 0x2F8B 16
	mAddHitbox 0 0xFA 0xF4 0x06 0x0A
	mDisplayFrame 0x2 0x0

	mGetTiles 0x2F9B 16
	mDisplayFrame 0x2 0x1

	mGetTiles 0x2FAB 16
	mDisplayFrame 0x2 0x2

	mGetTiles 0x2FBB 16
	mDisplayFrame 0x2 0x3

anim_0049__v0_l1: @ 80DF1BC
	mGetTiles 0x2FCB 20
	mAddHitbox 0 0xF8 0xF2 0x06 0x0C
	mDisplayFrame 0x2 0x4

	mGetTiles 0x2FDF 24
	mDisplayFrame 0x2 0x5

	mGetTiles 0x2FF7 20
	mDisplayFrame 0x2 0x6

anim_0049__v0_l2: @ 80DF204
	mJumpBack anim_0049__v0_l1

anim_0049__v1_l0: @ 80DF20C
	mGetPalette 0 16 0x0
	mGetTiles 0x300B 25
	mAddHitbox 0 0xFA 0xF4 0x06 0x0C
	mDisplayFrame 0x2 0x7

	mGetTiles 0x3024 25
	mDisplayFrame 0x2 0x8

anim_0049__v1_l1: @ 80DF24C
	mJumpBack anim_0049__v1_l0

anim_0049__v2_l0: @ 80DF254
	mGetPalette 0 16 0x0
	mGetTiles 0x303D 25
	mAddHitbox 0 0xFA 0xF4 0x06 0x0C
	mDisplayFrame 0x2 0x9

	mEnd 

anim_0049:
	.4byte anim_0049__v0_l0
	.4byte anim_0049__v1_l0
	.4byte anim_0049__v2_l0


anim_0050__v0_l0: @ 80DF290
	mGetPalette 0 16 0x0
	mGetTiles 0x3056 16
	mAddHitbox 0 0xF8 0xF8 0x0A 0x0A
	mAddHitbox 1 0xF2 0xF2 0x0E 0x0E
	mDisplayFrame 0x1 0x0

	mGetTiles 0x3066 12
	mDisplayFrame 0x1 0x1

	mGetTiles 0x3072 16
	mDisplayFrame 0x1 0x2

	mGetTiles 0x3082 16
	mDisplayFrame 0x1 0x3

	mGetTiles 0x3092 16
	mDisplayFrame 0x1 0x4

	mGetTiles 0x30A2 12
	mDisplayFrame 0x1 0x5

	mGetTiles 0x30AE 16
	mDisplayFrame 0x1 0x6

	mGetTiles 0x30BE 20
	mDisplayFrame 0x1 0x7

anim_0050__v0_l1: @ 80DF354
	mGetTiles 0x30D2 16
	mAddHitbox 0 0xF8 0xF8 0x08 0x08
	mDisplayFrame 0x2 0x8

	mGetTiles 0x30E2 16
	mDisplayFrame 0x2 0x9

	mGetTiles 0x30F2 16
	mDisplayFrame 0x2 0xA

	mGetTiles 0x3102 16
	mDisplayFrame 0x2 0xB

anim_0050__v0_l2: @ 80DF3B0
	mJumpBack anim_0050__v0_l1

anim_0050__v1_l0: @ 80DF3B8
	mGetPalette 1 16 0x50
	mGetTiles 0x3112 8
	mDisplayFrame 0x2 0xC

	mGetTiles 0x311A 16
	mDisplayFrame 0x2 0xD

	mGetTiles 0x312A 16
	mDisplayFrame 0x2 0xE

	mGetTiles 0x313A 16
	mDisplayFrame 0x2 0xF

	mGetTiles 0x314A 16
	mDisplayFrame 0x2 0x10

	mGetTiles 0x315A 16
	mDisplayFrame 0x2 0x11

	mGetTiles 0x316A 12
	mDisplayFrame 0x2 0x12

	mGetTiles 0x3176 16
	mDisplayFrame 0x2 0x13

	mEnd 

anim_0050:
	.4byte anim_0050__v0_l0
	.4byte anim_0050__v1_l0


anim_0051__v0_l0: @ 80DF470
	mGetPalette 0 16 0x0
	mGetTiles 0x3186 16
	mAddHitbox 0 0xF8 0xFC 0x06 0x0C
	mAddHitbox 1 0xF6 0xF8 0x0C 0x10
	mDisplayFrame 0x6 0x0

	mGetTiles 0x3196 16
	mAddHitbox 0 0xFA 0xFE 0x06 0x10
	mDisplayFrame 0x6 0x1

	mGetTiles 0x31A6 16
	mDisplayFrame 0x6 0x2

	mGetTiles 0x31B6 12
	mAddHitbox 0 0xFA 0xFE 0x06 0x10
	mAddHitbox 1 0x00 0x00 0x00 0x00
	mDisplayFrame 0x6 0x3

	mEnd 

anim_0051:
	.4byte anim_0051__v0_l0


anim_0052__v0_l0: @ 80DF510
	mGetPalette 0 16 0x0
	mGetTiles 0x31C2 16
	mAddHitbox 0 0xFA 0xFE 0x06 0x10
	mDisplayFrame 0x3 0x0

	mGetTiles 0x31D2 30
	mAddHitbox 0 0xF2 0xF6 0x0E 0x10
	mAddHitbox 1 0xE9 0xEC 0x06 0x10
	mDisplayFrame 0x2 0x1

	mGetTiles 0x31F0 18
	mDisplayFrame 0x2 0x2

	mGetTiles 0x3202 24
	mAddHitbox 0 0xF2 0xF6 0x0E 0x10
	mAddHitbox 1 0xEC 0xF1 0x06 0x10
	mDisplayFrame 0x2 0x3

	mGetTiles 0x321A 30
	mDisplayFrame 0x2 0x4

	mGetTiles 0x3238 30
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mAddHitbox 1 0x00 0x00 0x00 0x00
	mDisplayFrame 0x2 0x5

	mGetTiles 0x3256 36
	mDisplayFrame 0x1 0x6

	mGetTiles 0x327A 25
	mDisplayFrame 0x1 0x7

	mGetTiles 0x3293 30
	mDisplayFrame 0x1 0x8

	mGetTiles 0x32B1 30
	mDisplayFrame 0x2 0x9

	mGetTiles 0x32CF 20
	mDisplayFrame 0x3 0xA

	mEnd 

anim_0052:
	.4byte anim_0052__v0_l0


anim_0053__v0_l0: @ 80DF654
	mGetPalette 0 16 0x0
	mGetTiles 0x32E3 24
	mAddHitbox 0 0xF2 0xFE 0x0E 0x10
	mAddHitbox 1 0xEB 0xF8 0x03 0x10
	mDisplayFrame 0x2 0x0

	mGetTiles 0x32FB 24
	mDisplayFrame 0x2 0x1

	mGetTiles 0x3313 24
	mDisplayFrame 0x2 0x2

anim_0053__v0_l1: @ 80DF6B4
	mJumpBack anim_0053__v0_l0

anim_0053__v1_l0: @ 80DF6BC
	mGetPalette 0 16 0x0
	mGetTiles 0x332B 16
	mAddHitbox 0 0xFA 0xFA 0x06 0x10
	mDisplayFrame 0x2 0x3

	mGetTiles 0x333B 16
	mDisplayFrame 0x2 0x4

	mGetTiles 0x334B 16
	mDisplayFrame 0x2 0x5

	mEnd 

anim_0053:
	.4byte anim_0053__v0_l0
	.4byte anim_0053__v1_l0


anim_0055__v0_l0: @ 80DF71C
	mGetPalette 0 16 0x0
	mGetTiles 0x335B 16
	mAddHitbox 0 0xFA 0xF8 0x06 0x10
	mDisplayFrame 0x2 0x0

	mGetTiles 0x336B 16
	mDisplayFrame 0x2 0x1

	mGetTiles 0x337B 16
	mDisplayFrame 0x2 0x2

	mGetTiles 0x338B 16
	mDisplayFrame 0x2 0x3

anim_0055__v0_l1: @ 80DF784
	mJumpBack anim_0055__v0_l0

anim_0055:
	.4byte anim_0055__v0_l0


anim_0081__v0_l0: @ 80DF790
	mGetPalette 0 16 0x0
	mGetTiles 0x339B 25
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x4 0x0

	mGetTiles 0x33B4 30
	mDisplayFrame 0x4 0x1

	mGetTiles 0x33D2 36
	mDisplayFrame 0x4 0x2

	mGetTiles 0x33F6 25
	mDisplayFrame 0x4 0x3

anim_0081__v0_l1: @ 80DF7F8
	mJumpBack anim_0081__v0_l0

anim_0081:
	.4byte anim_0081__v0_l0


anim_0082__v0_l0: @ 80DF804
	mGetPalette 0 16 0x0
	mGetTiles 0x340F 30
	mAddHitbox 0 0xFA 0xF3 0x06 0x10
	mDisplayFrame 0x4 0x0

	mGetTiles 0x342D 36
	mDisplayFrame 0x4 0x1

	mGetTiles 0x3451 36
	mDisplayFrame 0x4 0x2

	mGetTiles 0x3475 24
	mDisplayFrame 0x4 0x3

anim_0082__v0_l1: @ 80DF86C
	mJumpBack anim_0082__v0_l0

anim_0082:
	.4byte anim_0082__v0_l0


anim_0083__v0_l0: @ 80DF878
	mGetPalette 0 16 0x0
	mGetTiles 0x348D 20
	mAddHitbox 0 0xFA 0xF4 0x06 0x06
	mDisplayFrame 0x2 0x0

	mGetTiles 0x34A1 20
	mDisplayFrame 0x2 0x1

	mGetTiles 0x34B5 20
	mDisplayFrame 0x2 0x2

	mGetTiles 0x34C9 20
	mDisplayFrame 0x2 0x3

anim_0083__v0_l1: @ 80DF8E0
	mJumpBack anim_0083__v0_l0

anim_0083:
	.4byte anim_0083__v0_l0


anim_0084__v0_l0: @ 80DF8EC
	mGetPalette 0 16 0x0
	mGetTiles 0x34DD 20
	mAddHitbox 0 0xF8 0xF8 0x08 0x08
	mAddHitbox 1 0xF8 0xF8 0x08 0x08
	mDisplayFrame 0x2 0x0

	mGetTiles 0x34F1 30
	mDisplayFrame 0x2 0x1

	mGetTiles 0x350F 35
	mDisplayFrame 0x2 0x2

	mGetTiles 0x3532 16
	mDisplayFrame 0x2 0x3

	mEnd 

anim_0084:
	.4byte anim_0084__v0_l0


anim_0085__v0_l0: @ 80DF968
	mGetPalette 0 16 0x70
	mGetTiles 0x3542 24
	mDisplayFrame 0x3 0x0

	mGetTiles 0x355A 24
	mDisplayFrame 0x3 0x1

anim_0085__v0_l1: @ 80DF99C
	mJumpBack anim_0085__v0_l0

anim_0085:
	.4byte anim_0085__v0_l0


anim_0086__v0_l0: @ 80DF9A8
	mGetPalette 0 16 0x70
	mGetTiles 0x3572 16
	mDisplayFrame 0x2 0x0

	mGetTiles 0x3582 16
	mDisplayFrame 0x2 0x1

	mEnd 

anim_0086__v1_l0: @ 80DF9E0
	mGetPalette 0 16 0x70
	mGetTiles 0x3592 16
	mDisplayFrame 0x2 0x2

	mEnd 

anim_0086:
	.4byte anim_0086__v0_l0
	.4byte anim_0086__v1_l0


anim_0087__v0_l0: @ 80DFA0C
	mGetPalette 0 16 0x0
	mGetTiles 0x35A2 15
	mDisplayFrame 0x3 0x0

	mGetTiles 0x35B1 15
	mDisplayFrame 0x3 0x1

anim_0087__v0_l1: @ 80DFA40
	mJumpBack anim_0087__v0_l0

anim_0087:
	.4byte anim_0087__v0_l0


anim_0088__v0_l0: @ 80DFA4C
	mGetPalette 0 16 0x70
	mGetTiles 0x35C0 20
	mDisplayFrame 0x6 0x0

	mGetTiles 0x35D4 20
	mDisplayFrame 0x6 0x1

	mGetTiles 0x35E8 20
	mDisplayFrame 0x6 0x2

anim_0088__v0_l1: @ 80DFA94
	mGetTiles 0x35FC 20
	mDisplayFrame 0x3 0x3

	mGetTiles 0x3610 20
	mDisplayFrame 0x3 0x4

anim_0088__v0_l2: @ 80DFABC
	mJumpBack anim_0088__v0_l1

anim_0088:
	.4byte anim_0088__v0_l0


anim_0089__v0_l0: @ 80DFAC8
	mGetPalette 0 16 0x70
	mGetTiles 0x3624 20
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0089__v1_l0: @ 80DFAEC
	mGetPalette 0 16 0x70
	mGetTiles 0x3638 20
	mDisplayFrame 0x4 0x1

	mGetTiles 0x364C 20
	mDisplayFrame 0x4 0x2

	mGetTiles 0x3660 20
	mDisplayFrame 0x4 0x3

	mGetTiles 0x3674 20
	mDisplayFrame 0x28 0x4

	mEnd 

anim_0089:
	.4byte anim_0089__v0_l0
	.4byte anim_0089__v1_l0


anim_0091__v0_l0: @ 80DFB54
	mGetPalette 0 16 0x70
	mGetTiles 0x3688 16
	mDisplayFrame 0x3 0x0

	mGetTiles 0x3698 16
	mDisplayFrame 0x3 0x1

anim_0091__v0_l1: @ 80DFB88
	mJumpBack anim_0091__v0_l0

anim_0091:
	.4byte anim_0091__v0_l0


anim_0093__v0_l0: @ 80DFB94
	mGetPalette 0 16 0x0
	mGetTiles 0x36A8 25
	mAddHitbox 0 0xFA 0xF2 0x06 0x0E
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0093__v1_l0: @ 80DFBC4
	mGetPalette 0 16 0x0
	mGetTiles 0x36C1 16
	mAddHitbox 0 0xFA 0xF2 0x06 0x0E
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0093__v2_l0: @ 80DFBF4
	mGetPalette 0 16 0x0
	mGetTiles 0x36D1 16
	mAddHitbox 0 0xFA 0xF2 0x06 0x0E
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0093__v3_l0: @ 80DFC24
	mGetPalette 0 16 0x0
	mGetTiles 0x36E1 25
	mAddHitbox 0 0xFA 0xF2 0x06 0x0E
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0093__v4_l0: @ 80DFC54
	mGetPalette 0 16 0x0
	mGetTiles 0x36FA 20
	mAddHitbox 0 0xFA 0xF2 0x06 0x0E
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0093__v5_l0: @ 80DFC84
	mGetPalette 0 16 0x0
	mGetTiles 0x370E 16
	mAddHitbox 0 0xFA 0xF2 0x06 0x0E
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0093__v6_l0: @ 80DFCB4
	mGetPalette 0 16 0x0
	mGetTiles 0x371E 16
	mAddHitbox 0 0xFA 0xF2 0x06 0x0E
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0093__v7_l0: @ 80DFCE4
	mGetPalette 0 16 0x0
	mGetTiles 0x372E 20
	mAddHitbox 0 0xFA 0xF2 0x06 0x0E
	mDisplayFrame 0x1 0x7

	mEnd 

anim_0093:
	.4byte anim_0093__v0_l0
	.4byte anim_0093__v1_l0
	.4byte anim_0093__v2_l0
	.4byte anim_0093__v3_l0
	.4byte anim_0093__v4_l0
	.4byte anim_0093__v5_l0
	.4byte anim_0093__v6_l0
	.4byte anim_0093__v7_l0


anim_0096__v0_l0: @ 80DFD34
	mGetPalette 0 16 0x70
	mGetTiles 0x3742 64
	mDisplayFrame 0x2 0x0

	mGetTiles 0x3782 64
	mDisplayFrame 0x2 0x1

	mGetTiles 0x37C2 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0x3802 64
	mDisplayFrame 0x2 0x3

anim_0096__v0_l1: @ 80DFD90
	mJumpBack anim_0096__v0_l0

anim_0096:
	.4byte anim_0096__v0_l0


anim_0097__v0_l0: @ 80DFD9C
	mGetPalette 0 16 0x0
	mGetTiles 0x3842 8
	mDisplayFrame 0x1 0x0

	mGetTiles 0x384A 8
	mDisplayFrame 0x1 0x1

	mGetTiles 0x3842 8
	mDisplayFrame 0x1 0x0

	mGetTiles 0x3852 12
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0097:
	.4byte anim_0097__v0_l0


anim_0098__v0_l0: @ 80DFE00
	mGetPalette 0 16 0x0
	mGetTiles 0x385E 64
	mDisplayFrame 0x3 0x0

	mEnd 

anim_0098:
	.4byte anim_0098__v0_l0


anim_0099__v0_l0: @ 80DFE28
	mGetPalette 2 16 0x10
	mGetTiles 0x389E 24
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x8 0x0

	mGetTiles 0x38B6 24
	mDisplayFrame 0x8 0x1

	mGetTiles 0x38CE 30
	mDisplayFrame 0x8 0x2

	mGetTiles 0x38EC 24
	mDisplayFrame 0x8 0x3

	mGetTiles 0x3904 24
	mDisplayFrame 0x8 0x4

	mGetTiles 0x391C 24
	mDisplayFrame 0x8 0x5

	mGetTiles 0x3934 30
	mDisplayFrame 0x8 0x6

	mGetTiles 0x3952 24
	mDisplayFrame 0x8 0x7

	mGetTiles 0x389E 24
	mDisplayFrame 0x8 0x0

	mGetTiles 0x396A 24
	mDisplayFrame 0x8 0x8

	mGetTiles 0x3982 30
	mDisplayFrame 0x8 0x9

	mGetTiles 0x39A0 24
	mDisplayFrame 0x8 0xA

	mGetTiles 0x3904 24
	mDisplayFrame 0x8 0x4

	mGetTiles 0x391C 24
	mDisplayFrame 0x8 0x5

	mGetTiles 0x3934 30
	mDisplayFrame 0x8 0x6

	mGetTiles 0x3952 24
	mDisplayFrame 0x8 0x7

anim_0099__v0_l1: @ 80DFF80
	mJumpBack anim_0099__v0_l0

anim_0099:
	.4byte anim_0099__v0_l0


anim_0100__v0_l0: @ 80DFF8C
	mGetPalette 2 16 0x10
	mGetTiles 0x39B8 20
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x4 0x0

	mGetTiles 0x39CC 36
	mDisplayFrame 0xA 0x1

	mGetTiles 0x39F0 20
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0xC 0x2

	mGetTiles 0x3A04 20
	mDisplayFrame 0xA 0x3

	mGetTiles 0x3A18 20
	mDisplayFrame 0xA 0x4

	mGetTiles 0x3A04 20
	mDisplayFrame 0xA 0x3

	mGetTiles 0x39F0 20
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0xA 0x2

	mGetTiles 0x3A04 20
	mDisplayFrame 0xA 0x3

	mGetTiles 0x3A18 20
	mDisplayFrame 0xA 0x4

	mGetTiles 0x3A04 20
	mDisplayFrame 0xA 0x3

	mGetTiles 0x3A2C 16
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x6 0x5

	mGetTiles 0x3A3C 12
	mDisplayFrame 0x6 0x6

	mGetTiles 0x3A2C 16
	mDisplayFrame 0x6 0x5

	mGetTiles 0x3A48 20
	mDisplayFrame 0x6 0x7

	mGetTiles 0x3A5C 16
	mDisplayFrame 0x6 0x8

	mGetTiles 0x3A6C 16
	mDisplayFrame 0x6 0x9

	mGetTiles 0x3A5C 16
	mDisplayFrame 0x6 0x8

	mGetTiles 0x3A48 20
	mDisplayFrame 0x6 0x7

	mGetTiles 0x3A2C 16
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x6 0x5

	mGetTiles 0x3A3C 12
	mDisplayFrame 0x6 0x6

	mGetTiles 0x3A2C 16
	mDisplayFrame 0x6 0x5

	mGetTiles 0x3A48 20
	mDisplayFrame 0x6 0x7

	mGetTiles 0x3A5C 16
	mDisplayFrame 0x6 0x8

	mGetTiles 0x3A6C 16
	mDisplayFrame 0x6 0x9

	mGetTiles 0x3A5C 16
	mDisplayFrame 0x6 0x8

	mGetTiles 0x3A48 20
	mDisplayFrame 0x1E 0x7

	mGetTiles 0x3A7C 20
	mDisplayFrame 0xA 0xA

	mGetTiles 0x3A90 20
	mDisplayFrame 0xA 0xB

	mGetTiles 0x3AA4 24
	mDisplayFrame 0x6 0xC

anim_0100__v0_l1: @ 80E0218
	mGetTiles 0x3ABC 28
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x6 0xD

	mGetTiles 0x3AD8 28
	mDisplayFrame 0x6 0xE

	mGetTiles 0x3AF4 28
	mDisplayFrame 0x6 0xF

	mGetTiles 0x3B10 28
	mDisplayFrame 0x6 0x10

	mGetTiles 0x3B2C 28
	mDisplayFrame 0x6 0x11

	mGetTiles 0x3B48 28
	mDisplayFrame 0x6 0x12

	mGetTiles 0x3B64 28
	mDisplayFrame 0x6 0x13

	mGetTiles 0x3B80 28
	mDisplayFrame 0x6 0x14

	mGetTiles 0x3ABC 28
	mDisplayFrame 0x6 0xD

	mGetTiles 0x3B9C 28
	mDisplayFrame 0x6 0x15

	mGetTiles 0x3BB8 28
	mDisplayFrame 0x6 0x16

	mGetTiles 0x3BD4 28
	mDisplayFrame 0x6 0x17

	mGetTiles 0x3B2C 28
	mDisplayFrame 0x6 0x11

	mGetTiles 0x3B48 28
	mDisplayFrame 0x6 0x12

	mGetTiles 0x3B64 28
	mDisplayFrame 0x6 0x13

	mGetTiles 0x3BF0 28
	mDisplayFrame 0x6 0x18

anim_0100__v0_l2: @ 80E0364
	mJumpBack anim_0100__v0_l1

anim_0100:
	.4byte anim_0100__v0_l0


anim_0101__v0_l0: @ 80E0370
	mGetPalette 2 16 0x10
	mGetTiles 0x3C0C 20
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x2 0x0

	mGetTiles 0x3C20 25
	mDisplayFrame 0x2 0x1

anim_0101__v0_l1: @ 80E03B0
	mGetTiles 0x3C39 25
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0xA 0x2

	mGetTiles 0x3C52 25
	mDisplayFrame 0xA 0x3

	mGetTiles 0x3C6B 25
	mDisplayFrame 0xA 0x4

	mGetTiles 0x3C84 25
	mDisplayFrame 0xA 0x5

anim_0101__v0_l2: @ 80E040C
	mJumpBack anim_0101__v0_l1

anim_0101__v1_l0: @ 80E0414
	mGetPalette 2 16 0x10
	mGetTiles 0x3C20 25
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x2 0x1

	mGetTiles 0x3C0C 20
	mDisplayFrame 0x2 0x0

	mEnd 

anim_0101:
	.4byte anim_0101__v0_l0
	.4byte anim_0101__v1_l0


anim_0102__v0_l0: @ 80E0460
	mGetPalette 2 16 0x10
	mGetTiles 0x3C9D 20
	mAddHitbox 0 0xFA 0xFC 0x06 0x10
	mDisplayFrame 0x1 0x0

	mGetTiles 0x3CB1 24
	mDisplayFrame 0x1 0x1

anim_0102__v0_l1: @ 80E04A0
	mGetTiles 0x3CC9 18
	mDisplayFrame 0x6 0x2

	mGetTiles 0x3CDB 18
	mDisplayFrame 0x6 0x3

	mGetTiles 0x3CED 18
	mDisplayFrame 0x6 0x4

	mGetTiles 0x3CFF 18
	mDisplayFrame 0x6 0x5

	mGetTiles 0x3D11 18
	mDisplayFrame 0x6 0x6

	mGetTiles 0x3D23 18
	mDisplayFrame 0x6 0x7

	mGetTiles 0x3D35 18
	mDisplayFrame 0x6 0x8

	mGetTiles 0x3D47 18
	mDisplayFrame 0x6 0x9

	mGetTiles 0x3CC9 18
	mDisplayFrame 0x6 0x2

	mGetTiles 0x3D59 18
	mDisplayFrame 0x6 0xA

	mGetTiles 0x3D6B 18
	mDisplayFrame 0x6 0xB

	mGetTiles 0x3D7D 18
	mDisplayFrame 0x6 0xC

	mGetTiles 0x3D11 18
	mDisplayFrame 0x6 0x6

	mGetTiles 0x3D23 18
	mDisplayFrame 0x6 0x7

	mGetTiles 0x3D35 18
	mDisplayFrame 0x6 0x8

	mGetTiles 0x3D47 18
	mDisplayFrame 0x6 0x9

anim_0102__v0_l2: @ 80E05E0
	mJumpBack anim_0102__v0_l1

anim_0102__v1_l0: @ 80E05E8
	mGetPalette 2 16 0x10
	mGetTiles 0x3CB1 24
	mAddHitbox 0 0xFA 0xFC 0x06 0x10
	mDisplayFrame 0x1 0x1

	mGetTiles 0x3C9D 20
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0102:
	.4byte anim_0102__v0_l0
	.4byte anim_0102__v1_l0


anim_0103__v0_l0: @ 80E0634
	mGetPalette 2 16 0x10
	mGetTiles 0x3D8F 64
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x3 0x0

	mGetTiles 0x3DCF 64
	mDisplayFrame 0x3 0x1

	mGetTiles 0x3E0F 64
	mDisplayFrame 0x3 0x2

	mGetTiles 0x3E4F 64
	mDisplayFrame 0x3 0x3

	mGetTiles 0x3E8F 64
	mDisplayFrame 0x3 0x4

	mGetTiles 0x3ECF 64
	mDisplayFrame 0x3 0x5

	mGetTiles 0x3F0F 64
	mDisplayFrame 0x3 0x6

	mGetTiles 0x3F4F 64
	mDisplayFrame 0x3 0x7

	mGetTiles 0x3D8F 64
	mDisplayFrame 0x3 0x0

	mGetTiles 0x3F8F 64
	mDisplayFrame 0x3 0x8

	mGetTiles 0x3FCF 64
	mDisplayFrame 0x3 0x9

	mGetTiles 0x400F 64
	mDisplayFrame 0x3 0xA

	mGetTiles 0x3E8F 64
	mDisplayFrame 0x3 0x4

	mGetTiles 0x3ECF 64
	mDisplayFrame 0x3 0x5

	mGetTiles 0x3F0F 64
	mDisplayFrame 0x3 0x6

	mGetTiles 0x3F4F 64
	mDisplayFrame 0x3 0x7

anim_0103__v0_l1: @ 80E078C
	mJumpBack anim_0103__v0_l0

anim_0103:
	.4byte anim_0103__v0_l0


anim_0104__v0_l0: @ 80E0798
	mGetPalette 2 16 0x10
	mGetTiles 0x404F 64
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x2 0x0

	mGetTiles 0x408F 64
	mDisplayFrame 0x2 0x1

	mGetTiles 0x40CF 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0x410F 64
	mDisplayFrame 0x2 0x3

	mGetTiles 0x414F 64
	mDisplayFrame 0x2 0x4

	mGetTiles 0x418F 64
	mDisplayFrame 0x2 0x5

	mGetTiles 0x41CF 64
	mDisplayFrame 0x2 0x6

	mGetTiles 0x420F 64
	mDisplayFrame 0x2 0x7

	mGetTiles 0x404F 64
	mDisplayFrame 0x2 0x0

	mGetTiles 0x424F 64
	mDisplayFrame 0x2 0x8

	mGetTiles 0x428F 64
	mDisplayFrame 0x2 0x9

	mGetTiles 0x42CF 64
	mDisplayFrame 0x2 0xA

	mGetTiles 0x414F 64
	mDisplayFrame 0x2 0x4

	mGetTiles 0x418F 64
	mDisplayFrame 0x2 0x5

	mGetTiles 0x41CF 64
	mDisplayFrame 0x2 0x6

	mGetTiles 0x420F 64
	mDisplayFrame 0x2 0x7

anim_0104__v0_l1: @ 80E08F0
	mJumpBack anim_0104__v0_l0

anim_0104:
	.4byte anim_0104__v0_l0


anim_0105__v0_l0: @ 80E08FC
	mGetPalette 2 16 0x10
	mGetTiles 0x430F 20
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x1 0x0

	mGetTiles 0x4323 20
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0105:
	.4byte anim_0105__v0_l0


anim_0106__v0_l0: @ 80E0944
	mGetPalette 2 16 0x10
	mGetTiles 0x4337 20
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x1 0x0

	mGetTiles 0x434B 20
	mDisplayFrame 0x1 0x1

	mGetTiles 0x435F 16
	mDisplayFrame 0x1 0x2

	mGetTiles 0x436F 24
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0106:
	.4byte anim_0106__v0_l0


anim_0107__v0_l0: @ 80E09B4
	mGetPalette 2 16 0x10
	mGetTiles 0x4387 16
	mAddHitbox 0 0xF8 0xF8 0x08 0x08
	mAddHitbox 1 0xF8 0xF8 0x08 0x08
	mDisplayFrame 0x2 0x0

	mGetTiles 0x4397 16
	mDisplayFrame 0x2 0x1

	mGetTiles 0x43A7 16
	mDisplayFrame 0x2 0x2

	mGetTiles 0x43B7 16
	mDisplayFrame 0x2 0x3

	mGetTiles 0x4387 16
	mDisplayFrame 0x2 0x0

	mGetTiles 0x4397 16
	mDisplayFrame 0x2 0x1

	mGetTiles 0x43A7 16
	mDisplayFrame 0x2 0x2

	mGetTiles 0x43B7 16
	mDisplayFrame 0x2 0x3

anim_0107__v0_l1: @ 80E0A78
	mJumpBack anim_0107__v0_l0

anim_0107__v1_l0: @ 80E0A80
	mGetPalette 2 16 0x10
	mGetTiles 0x43C7 16
	mDisplayFrame 0x2 0x4

	mGetTiles 0x43D7 16
	mDisplayFrame 0x2 0x5

	mGetTiles 0x43E7 16
	mDisplayFrame 0x2 0x6

	mGetTiles 0x43F7 16
	mDisplayFrame 0x2 0x7

	mGetTiles 0x4407 16
	mDisplayFrame 0x2 0x8

	mGetTiles 0x4417 16
	mDisplayFrame 0x2 0x9

	mGetTiles 0x4427 16
	mDisplayFrame 0x2 0xA

	mGetTiles 0x4437 16
	mDisplayFrame 0x2 0xB

anim_0107__v1_l1: @ 80E0B2C
	mJumpBack anim_0107__v1_l0

anim_0107:
	.4byte anim_0107__v0_l0
	.4byte anim_0107__v1_l0


anim_0108__v0_l0: @ 80E0B3C
	mGetPalette 2 16 0x10
	mGetTiles 0x4447 20
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x2 0x0

anim_0108__v0_l1: @ 80E0B68
	mGetTiles 0x445B 20
	mDisplayFrame 0x4 0x1

	mGetTiles 0x446F 20
	mDisplayFrame 0x4 0x2

anim_0108__v0_l2: @ 80E0B90
	mJumpBack anim_0108__v0_l1

anim_0108__v1_l0: @ 80E0B98
	mGetPalette 2 16 0x10
	mGetTiles 0x4483 20
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x4 0x3

	mEnd 

anim_0108:
	.4byte anim_0108__v0_l0
	.4byte anim_0108__v1_l0


anim_0109__v0_l0: @ 80E0BD0
	mGetPalette 2 16 0x10
	mGetTiles 0x4497 21
	mAddHitbox 0 0xFA 0xF4 0x06 0x0A
	mDisplayFrame 0x2 0x0

	mGetTiles 0x44AC 21
	mDisplayFrame 0x2 0x1

	mGetTiles 0x44C1 21
	mDisplayFrame 0x2 0x2

anim_0109__v0_l1: @ 80E0C24
	mJumpBack anim_0109__v0_l0

anim_0109__v1_l0: @ 80E0C2C
	mGetPalette 2 16 0x10
	mGetTiles 0x44D6 18
	mAddHitbox 0 0xFA 0xF4 0x06 0x0A
	mDisplayFrame 0x2 0x3

	mGetTiles 0x44E8 24
	mAddHitbox 0 0xFA 0xF2 0x06 0x08
	mDisplayFrame 0x3 0x4

	mGetTiles 0x4500 20
	mDisplayFrame 0x3 0x5

	mGetTiles 0x4514 20
	mDisplayFrame 0x4 0x6

	mGetTiles 0x4528 20
	mAddHitbox 0 0xFA 0xF0 0x06 0x06
	mDisplayFrame 0x4 0x7

	mGetTiles 0x453C 25
	mAddHitbox 0 0xFA 0xF2 0x06 0x06
	mDisplayFrame 0x4 0x8

	mEnd 

anim_0109__v2_l0: @ 80E0CE4
	mGetPalette 2 16 0x10
	mGetTiles 0x4555 28
	mAddHitbox 0 0xFA 0xF0 0x06 0x06
	mDisplayFrame 0x3 0x9

	mGetTiles 0x4571 28
	mDisplayFrame 0x3 0xA

	mGetTiles 0x458D 28
	mDisplayFrame 0x3 0xB

anim_0109__v2_l1: @ 80E0D38
	mJumpBack anim_0109__v2_l0

anim_0109__v3_l0: @ 80E0D40
	mGetPalette 2 16 0x10
	mGetTiles 0x45A9 20
	mDisplayFrame 0x2 0xC

	mGetTiles 0x45BD 24
	mDisplayFrame 0x1 0xD

	mGetTiles 0x45D5 18
	mDisplayFrame 0x1 0xE

	mGetTiles 0x45BD 24
	mDisplayFrame 0x1 0xD

	mEnd 

anim_0109:
	.4byte anim_0109__v0_l0
	.4byte anim_0109__v1_l0
	.4byte anim_0109__v2_l0
	.4byte anim_0109__v3_l0


anim_0110__v0_l0: @ 80E0DB0
	mGetPalette 2 16 0x10
	mGetTiles 0x45E7 25
	mAddHitbox 0 0xFA 0xF5 0x06 0x0B
	mDisplayFrame 0x4 0x0

	mGetTiles 0x4600 25
	mDisplayFrame 0x4 0x1

	mGetTiles 0x4619 24
	mDisplayFrame 0x4 0x2

	mGetTiles 0x4631 24
	mDisplayFrame 0x4 0x3

	mGetTiles 0x4649 20
	mDisplayFrame 0x4 0x4

	mGetTiles 0x465D 20
	mDisplayFrame 0x4 0x5

	mGetTiles 0x4671 20
	mDisplayFrame 0x4 0x6

	mGetTiles 0x4685 20
	mDisplayFrame 0x4 0x7

	mGetTiles 0x4699 20
	mDisplayFrame 0x4 0x8

	mGetTiles 0x46AD 20
	mDisplayFrame 0x4 0x9

	mGetTiles 0x46C1 25
	mDisplayFrame 0x4 0xA

	mEnd 

anim_0110:
	.4byte anim_0110__v0_l0


anim_0111__v0_l0: @ 80E0EAC
	mGetPalette 2 16 0x10
	mGetTiles 0x46DA 24
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x4 0x0

anim_0111__v0_l1: @ 80E0ED8
	mGetTiles 0x46F2 30
	mDisplayFrame 0x7 0x1

	mGetTiles 0x4710 30
	mDisplayFrame 0x7 0x2

	mGetTiles 0x472E 30
	mDisplayFrame 0x7 0x3

	mGetTiles 0x474C 24
	mDisplayFrame 0x7 0x4

	mGetTiles 0x4764 24
	mDisplayFrame 0x7 0x5

	mGetTiles 0x477C 24
	mDisplayFrame 0x7 0x6

	mGetTiles 0x4794 24
	mDisplayFrame 0x7 0x7

	mGetTiles 0x47AC 24
	mDisplayFrame 0x7 0x8

anim_0111__v0_l2: @ 80E0F78
	mJumpBack anim_0111__v0_l1

anim_0111__v1_l0: @ 80E0F80
	mGetPalette 2 16 0x10
	mGetTiles 0x46DA 24
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x4 0x0

	mEnd 

anim_0111:
	.4byte anim_0111__v0_l0
	.4byte anim_0111__v1_l0


anim_0112__v0_l0: @ 80E0FB8
	mGetPalette 2 16 0x10
	mGetTiles 0x47C4 20
	mAddHitbox 0 0xFD 0xF6 0x09 0x10
	mDisplayFrame 0x2 0x0

anim_0112__v0_l1: @ 80E0FE4
	mGetTiles 0x47D8 28
	mAddHitbox 0 0xFD 0xF6 0x09 0x10
	mDisplayFrame 0x2 0x1

	mGetTiles 0x47F4 30
	mDisplayFrame 0x2 0x2

	mGetTiles 0x4812 35
	mDisplayFrame 0x2 0x3

	mGetTiles 0x4835 28
	mDisplayFrame 0x2 0x4

	mGetTiles 0x4851 24
	mDisplayFrame 0x2 0x5

	mGetTiles 0x4869 24
	mDisplayFrame 0x2 0x6

	mGetTiles 0x4881 30
	mDisplayFrame 0x2 0x7

	mGetTiles 0x489F 28
	mDisplayFrame 0x2 0x8

anim_0112__v0_l2: @ 80E1090
	mJumpBack anim_0112__v0_l1

anim_0112__v1_l0: @ 80E1098
	mGetPalette 2 16 0x10
	mGetTiles 0x48BB 20
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x2 0x9

	mEnd 

anim_0112:
	.4byte anim_0112__v0_l0
	.4byte anim_0112__v1_l0


anim_0113__v0_l0: @ 80E10D0
	mGetPalette 2 16 0x10
	mGetTiles 0x48CF 30
	mAddHitbox 0 0xF3 0xF6 0xFF 0x10
	mDisplayFrame 0x4 0x0

	mGetTiles 0x48ED 36
	mDisplayFrame 0x4 0x1

	mGetTiles 0x4911 42
	mDisplayFrame 0x4 0x2

	mGetTiles 0x493B 24
	mDisplayFrame 0x4 0x3

	mGetTiles 0x4953 35
	mDisplayFrame 0x4 0x4

	mGetTiles 0x4976 35
	mDisplayFrame 0x4 0x5

	mGetTiles 0x4999 30
	mDisplayFrame 0x4 0x6

	mGetTiles 0x49B7 30
	mDisplayFrame 0x4 0x7

anim_0113__v0_l1: @ 80E1188
	mJumpBack anim_0113__v0_l0

anim_0113__v1_l0: @ 80E1190
	mGetPalette 2 16 0x10
	mGetTiles 0x49D5 24
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x1 0x8

	mEnd 

anim_0113:
	.4byte anim_0113__v0_l0
	.4byte anim_0113__v1_l0


anim_0116__v0_l0: @ 80E11C8
	mGetPalette 2 16 0x10
	mGetTiles 0x49ED 20
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mPlaySoundEffect 191
	mDisplayFrame 0x6 0x0

	mGetTiles 0x4A01 20
	mDisplayFrame 0x6 0x1

	mEnd 

anim_0116:
	.4byte anim_0116__v0_l0


anim_0117__v0_l0: @ 80E1218
	mGetPalette 2 16 0x10
	mGetTiles 0x4A15 24
	mAddHitbox 0 0xF8 0xF8 0x08 0x08
	mAddHitbox 1 0xF8 0xF8 0x08 0x08
	mDisplayFrame 0x2 0x0

	mGetTiles 0x4A2D 24
	mDisplayFrame 0x2 0x1

	mGetTiles 0x4A45 24
	mDisplayFrame 0x2 0x2

	mGetTiles 0x4A5D 28
	mDisplayFrame 0x2 0x3

	mGetTiles 0x4A79 24
	mDisplayFrame 0x2 0x4

	mGetTiles 0x4A91 24
	mDisplayFrame 0x2 0x5

	mGetTiles 0x4AA9 24
	mDisplayFrame 0x2 0x6

	mGetTiles 0x4AC1 28
	mDisplayFrame 0x2 0x7

anim_0117__v0_l1: @ 80E12DC
	mJumpBack anim_0117__v0_l0

anim_0117:
	.4byte anim_0117__v0_l0


anim_0118__v0_l0: @ 80E12E8
	mGetPalette 2 16 0x10
	mGetTiles 0x4ADD 20
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x3 0x0

	mGetTiles 0x4AF1 20
	mDisplayFrame 0x3 0x1

	mGetTiles 0x4B05 20
	mDisplayFrame 0x3 0x2

	mGetTiles 0x4B19 20
	mDisplayFrame 0x3 0x3

	mGetTiles 0x4B2D 20
	mDisplayFrame 0x3 0x4

	mEnd 

anim_0118:
	.4byte anim_0118__v0_l0


anim_0120__v0_l0: @ 80E136C
	mGetPalette 2 16 0x10
	mGetTiles 0x4B41 25
	mDisplayFrame 0x3 0x0

	mGetTiles 0x4B5A 20
	mDisplayFrame 0x3 0x1

	mGetTiles 0x4B41 25
	mDisplayFrame 0x3 0x0

	mGetTiles 0x4B6E 20
	mDisplayFrame 0x3 0x2

anim_0120__v0_l1: @ 80E13C8
	mGetTiles 0x4B82 20
	mDisplayFrame 0x3 0x3

	mGetTiles 0x4B96 15
	mDisplayFrame 0x3 0x4

anim_0120__v0_l2: @ 80E13F0
	mJumpBack anim_0120__v0_l1

anim_0120:
	.4byte anim_0120__v0_l0


anim_0121__v0_l0: @ 80E13FC
	mGetPalette 2 16 0x10
	mGetTiles 0x4BA5 24
	mDisplayFrame 0x3 0x0

	mGetTiles 0x4BBD 24
	mDisplayFrame 0x3 0x1

	mGetTiles 0x4BD5 24
	mDisplayFrame 0x3 0x2

	mGetTiles 0x4BED 24
	mDisplayFrame 0x3 0x3

anim_0121__v0_l1: @ 80E1458
	mGetTiles 0x4C05 24
	mDisplayFrame 0x3 0x4

	mGetTiles 0x4C1D 24
	mDisplayFrame 0x3 0x5

	mGetTiles 0x4C35 24
	mDisplayFrame 0x3 0x6

	mGetTiles 0x4C4D 24
	mDisplayFrame 0x3 0x7

	mGetTiles 0x4C65 24
	mDisplayFrame 0x3 0x8

	mGetTiles 0x4C7D 24
	mDisplayFrame 0x3 0x9

	mGetTiles 0x4C95 24
	mDisplayFrame 0x3 0xA

	mGetTiles 0x4CAD 24
	mDisplayFrame 0x3 0xB

anim_0121__v0_l2: @ 80E14F8
	mJumpBack anim_0121__v0_l1

anim_0121:
	.4byte anim_0121__v0_l0


anim_0122__v0_l0: @ 80E1504
	mGetPalette 2 16 0x10
	mGetTiles 0x4CC5 20
	mDisplayFrame 0x6 0x0

	mGetTiles 0x4CD9 30
	mDisplayFrame 0x8 0x1

	mGetTiles 0x4CF7 20
	mDisplayFrame 0x4 0x2

	mGetTiles 0x4D0B 12
	mDisplayFrame 0x4 0x3

	mGetTiles 0x4D17 16
	mDisplayFrame 0x6 0x4

	mGetTiles 0x4D27 25
	mDisplayFrame 0x8 0x5

	mGetTiles 0x4D40 24
	mDisplayFrame 0x4 0x6

	mGetTiles 0x4D58 12
	mDisplayFrame 0x4 0x7

	mGetTiles 0x4D64 16
	mDisplayFrame 0x4 0x8

	mGetTiles 0x4D74 20
	mDisplayFrame 0x4 0x9

	mGetTiles 0x4D88 20
	mDisplayFrame 0x4 0xA

	mGetTiles 0x4D9C 16
	mDisplayFrame 0x4 0xB

	mGetTiles 0x4DAC 20
	mDisplayFrame 0x4 0xC

	mGetTiles 0x4DC0 16
	mDisplayFrame 0x4 0xD

	mGetTiles 0x4DD0 20
	mDisplayFrame 0x4 0xE

	mGetTiles 0x4DE4 25
	mDisplayFrame 0x2 0xF

	mGetTiles 0x4DFD 15
	mDisplayFrame 0x4 0x10

	mGetTiles 0x4E0C 16
	mDisplayFrame 0x4 0x11

	mGetTiles 0x4E1C 20
	mDisplayFrame 0x6 0x12

	mGetTiles 0x4E30 20
	mDisplayFrame 0x6 0x13

	mGetTiles 0x4E44 20
	mDisplayFrame 0x6 0x14

anim_0122__v0_l1: @ 80E16B4
	mGetTiles 0x4E58 30
	mDisplayFrame 0x6 0x15

	mGetTiles 0x4E76 35
	mDisplayFrame 0x6 0x16

	mGetTiles 0x4E99 35
	mDisplayFrame 0x6 0x17

	mGetTiles 0x4EBC 30
	mDisplayFrame 0x6 0x18

	mGetTiles 0x4EDA 30
	mDisplayFrame 0x6 0x19

	mGetTiles 0x4EF8 35
	mDisplayFrame 0x6 0x1A

	mGetTiles 0x4F1B 30
	mDisplayFrame 0x6 0x1B

anim_0122__v0_l2: @ 80E1740
	mJumpBack anim_0122__v0_l1

anim_0122:
	.4byte anim_0122__v0_l0


anim_0123__v0_l0: @ 80E174C
	mGetPalette 2 16 0x10
	mGetTiles 0x4F39 35
	mDisplayFrame 0x4 0x0

	mGetTiles 0x4F5C 20
	mDisplayFrame 0xF 0x1

	mGetTiles 0x4F70 20
	mDisplayFrame 0x4 0x2

	mGetTiles 0x4F84 20
	mDisplayFrame 0x4 0x3

	mGetTiles 0x4F98 30
	mDisplayFrame 0x4 0x4

	mGetTiles 0x4FB6 25
	mDisplayFrame 0x4 0x5

	mGetTiles 0x4FCF 30
	mDisplayFrame 0x4 0x6

	mGetTiles 0x4FED 24
	mDisplayFrame 0x4 0x7

	mGetTiles 0x4F98 30
	mDisplayFrame 0x4 0x4

	mGetTiles 0x5005 25
	mDisplayFrame 0x4 0x8

	mGetTiles 0x501E 30
	mDisplayFrame 0x4 0x9

	mGetTiles 0x503C 24
	mDisplayFrame 0x4 0xA

	mGetTiles 0x4F98 30
	mDisplayFrame 0x4 0x4

	mGetTiles 0x4FB6 25
	mDisplayFrame 0x4 0x5

	mGetTiles 0x4FCF 30
	mDisplayFrame 0x4 0x6

	mGetTiles 0x4FED 24
	mDisplayFrame 0x4 0x7

	mGetTiles 0x4F98 30
	mDisplayFrame 0x4 0x4

	mGetTiles 0x5005 25
	mDisplayFrame 0x4 0x8

	mGetTiles 0x501E 30
	mDisplayFrame 0x4 0x9

	mGetTiles 0x503C 24
	mDisplayFrame 0x4 0xA

	mGetTiles 0x5054 20
	mDisplayFrame 0x4 0xB

	mGetTiles 0x5068 20
	mDisplayFrame 0x4 0xC

	mEnd 

anim_0123:
	.4byte anim_0123__v0_l0


anim_0124__v0_l0: @ 80E1918
	mGetPalette 2 16 0x80
	mGetTiles 0x507C 21
	mAddHitbox 0 0xFA 0xF2 0x06 0x08
	mDisplayFrame 0x3 0x0

	mGetTiles 0x5091 21
	mDisplayFrame 0x3 0x1

	mGetTiles 0x50A6 21
	mDisplayFrame 0x3 0x2

	mGetTiles 0x50BB 24
	mDisplayFrame 0x3 0x3

anim_0124__v0_l1: @ 80E1980
	mJumpBack anim_0124__v0_l0

anim_0124:
	.4byte anim_0124__v0_l0


anim_0125__v0_l0: @ 80E198C
	mGetPalette 2 16 0x80
	mGetTiles 0x50D3 35
	mDisplayFrame 0x14 0x0

	mGetTiles 0x50F6 30
	mDisplayFrame 0xA 0x1

	mGetTiles 0x5114 36
	mDisplayFrame 0x8 0x2

	mGetTiles 0x5138 35
	mDisplayFrame 0x7 0x3

	mGetTiles 0x515B 42
	mDisplayFrame 0x5 0x4

	mGetTiles 0x5185 42
	mDisplayFrame 0x3 0x5

anim_0125__v0_l1: @ 80E1A10
	mGetTiles 0x51AF 56
	mDisplayFrame 0x2 0x6

	mGetTiles 0x51E7 56
	mDisplayFrame 0x2 0x7

	mGetTiles 0x521F 56
	mDisplayFrame 0x2 0x8

anim_0125__v0_l2: @ 80E1A4C
	mJumpBack anim_0125__v0_l1

anim_0125:
	.4byte anim_0125__v0_l0


anim_0126__v0_l0: @ 80E1A58
	mGetPalette 2 16 0x10
	mGetTiles 0x5257 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x0

	mGetTiles 0x5297 64
	mDisplayFrame 0x2 0x1

anim_0126__v0_l1: @ 80E1A98
	mJumpBack anim_0126__v0_l0

anim_0126__v1_l0: @ 80E1AA0
	mGetPalette 2 16 0x10
	mGetTiles 0x52D7 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x2

	mGetTiles 0x5317 64
	mDisplayFrame 0x2 0x3

anim_0126__v1_l1: @ 80E1AE0
	mJumpBack anim_0126__v1_l0

anim_0126__v2_l0: @ 80E1AE8
	mGetPalette 2 16 0x10
	mGetTiles 0x5357 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x4

	mGetTiles 0x5397 64
	mDisplayFrame 0x2 0x5

anim_0126__v2_l1: @ 80E1B28
	mJumpBack anim_0126__v2_l0

anim_0126__v3_l0: @ 80E1B30
	mGetPalette 2 16 0x10
	mGetTiles 0x53D7 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x6

	mGetTiles 0x5417 64
	mDisplayFrame 0x2 0x7

anim_0126__v3_l1: @ 80E1B70
	mJumpBack anim_0126__v3_l0

anim_0126__v4_l0: @ 80E1B78
	mGetPalette 2 16 0x10
	mGetTiles 0x5457 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x8

	mGetTiles 0x5497 64
	mDisplayFrame 0x2 0x9

anim_0126__v4_l1: @ 80E1BB8
	mJumpBack anim_0126__v4_l0

anim_0126__v5_l0: @ 80E1BC0
	mGetPalette 2 16 0x10
	mGetTiles 0x54D7 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xA

	mGetTiles 0x5517 64
	mDisplayFrame 0x2 0xB

anim_0126__v5_l1: @ 80E1C00
	mJumpBack anim_0126__v5_l0

anim_0126__v6_l0: @ 80E1C08
	mGetPalette 2 16 0x10
	mGetTiles 0x5557 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xC

	mGetTiles 0x5597 64
	mDisplayFrame 0x2 0xD

anim_0126__v6_l1: @ 80E1C48
	mJumpBack anim_0126__v6_l0

anim_0126__v7_l0: @ 80E1C50
	mGetPalette 2 16 0x10
	mGetTiles 0x55D7 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xE

	mGetTiles 0x5617 64
	mDisplayFrame 0x2 0xF

anim_0126__v7_l1: @ 80E1C90
	mJumpBack anim_0126__v7_l0

anim_0126__v8_l0: @ 80E1C98
	mGetPalette 2 16 0x10
	mGetTiles 0x5657 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x10

	mGetTiles 0x5697 64
	mDisplayFrame 0x2 0x11

anim_0126__v8_l1: @ 80E1CD8
	mJumpBack anim_0126__v8_l0

anim_0126:
	.4byte anim_0126__v0_l0
	.4byte anim_0126__v1_l0
	.4byte anim_0126__v2_l0
	.4byte anim_0126__v3_l0
	.4byte anim_0126__v4_l0
	.4byte anim_0126__v5_l0
	.4byte anim_0126__v6_l0
	.4byte anim_0126__v7_l0
	.4byte anim_0126__v8_l0


anim_0127__v0_l0: @ 80E1D04
	mGetPalette 2 16 0x10
	mGetTiles 0x56D7 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x1 0x0

	mGetTiles 0x5717 64
	mDisplayFrame 0x1 0x1

anim_0127__v0_l1: @ 80E1D44
	mJumpBack anim_0127__v0_l0

anim_0127__v1_l0: @ 80E1D4C
	mGetPalette 2 16 0x10
	mGetTiles 0x5757 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x2

	mGetTiles 0x5797 64
	mDisplayFrame 0x2 0x3

anim_0127__v1_l1: @ 80E1D8C
	mJumpBack anim_0127__v1_l0

anim_0127__v2_l0: @ 80E1D94
	mGetPalette 2 16 0x10
	mGetTiles 0x57D7 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x4

	mGetTiles 0x5817 64
	mDisplayFrame 0x2 0x5

anim_0127__v2_l1: @ 80E1DD4
	mJumpBack anim_0127__v2_l0

anim_0127__v3_l0: @ 80E1DDC
	mGetPalette 2 16 0x10
	mGetTiles 0x5857 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x6

	mGetTiles 0x5897 64
	mDisplayFrame 0x2 0x7

anim_0127__v3_l1: @ 80E1E1C
	mJumpBack anim_0127__v3_l0

anim_0127__v4_l0: @ 80E1E24
	mGetPalette 2 16 0x10
	mGetTiles 0x58D7 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x8

	mGetTiles 0x5917 64
	mDisplayFrame 0x2 0x9

anim_0127__v4_l1: @ 80E1E64
	mJumpBack anim_0127__v4_l0

anim_0127__v5_l0: @ 80E1E6C
	mGetPalette 2 16 0x10
	mGetTiles 0x5957 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xA

	mGetTiles 0x5997 64
	mDisplayFrame 0x2 0xB

anim_0127__v5_l1: @ 80E1EAC
	mJumpBack anim_0127__v5_l0

anim_0127__v6_l0: @ 80E1EB4
	mGetPalette 2 16 0x10
	mGetTiles 0x59D7 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xC

	mGetTiles 0x5A17 64
	mDisplayFrame 0x2 0xD

anim_0127__v6_l1: @ 80E1EF4
	mJumpBack anim_0127__v6_l0

anim_0127__v7_l0: @ 80E1EFC
	mGetPalette 2 16 0x10
	mGetTiles 0x5A57 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xE

	mGetTiles 0x5A97 64
	mDisplayFrame 0x2 0xF

anim_0127__v7_l1: @ 80E1F3C
	mJumpBack anim_0127__v7_l0

anim_0127:
	.4byte anim_0127__v0_l0
	.4byte anim_0127__v1_l0
	.4byte anim_0127__v2_l0
	.4byte anim_0127__v3_l0
	.4byte anim_0127__v4_l0
	.4byte anim_0127__v5_l0
	.4byte anim_0127__v6_l0
	.4byte anim_0127__v7_l0


anim_0128__v0_l0: @ 80E1F64
	mGetPalette 2 16 0x10
	mGetTiles 0x5AD7 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x4 0x0

anim_0128__v0_l1: @ 80E1F90
	mGetTiles 0x5B17 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x1

	mGetTiles 0x5B57 64
	mDisplayFrame 0x2 0x2

anim_0128__v0_l2: @ 80E1FC4
	mJumpBack anim_0128__v0_l1

anim_0128__v1_l0: @ 80E1FCC
	mGetPalette 2 16 0x10
	mGetTiles 0x5AD7 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x4 0x0

	mEnd 

anim_0128:
	.4byte anim_0128__v0_l0
	.4byte anim_0128__v1_l0


anim_0129__v0_l0: @ 80E2004
	mGetPalette 2 16 0x10
	mGetTiles 0x5B97 64
	mAddHitbox 0 0xEC 0xEC 0x14 0x14
	mDisplayFrame 0x2 0x0

	mGetTiles 0x5BD7 64
	mDisplayFrame 0x2 0x1

	mGetTiles 0x5C17 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0x5C57 64
	mDisplayFrame 0x2 0x3

	mGetTiles 0x5C97 64
	mDisplayFrame 0x2 0x4

	mGetTiles 0x5CD7 64
	mDisplayFrame 0x2 0x5

	mGetTiles 0x5D17 64
	mDisplayFrame 0x2 0x6

	mGetTiles 0x5D57 64
	mDisplayFrame 0x2 0x7

	mGetTiles 0x5D97 64
	mDisplayFrame 0x2 0x8

	mGetTiles 0x5DD7 64
	mDisplayFrame 0x2 0x9

	mGetTiles 0x5E17 64
	mDisplayFrame 0x2 0xA

anim_0129__v0_l1: @ 80E20F8
	mJumpBack anim_0129__v0_l0

anim_0129:
	.4byte anim_0129__v0_l0


anim_0130__v0_l0: @ 80E2104
	mGetPalette 2 16 0x10
	mGetTiles 0x5E57 64
	mAddHitbox 0 0xF2 0xF2 0x0E 0x0E
	mDisplayFrame 0x5 0x0

	mGetTiles 0x5E97 64
	mDisplayFrame 0x2 0x1

	mGetTiles 0x5ED7 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0x5F17 64
	mDisplayFrame 0x2 0x3

	mGetTiles 0x5F57 64
	mDisplayFrame 0x2 0x4

	mGetTiles 0x5F97 64
	mDisplayFrame 0x2 0x5

	mGetTiles 0x5FD7 64
	mDisplayFrame 0x2 0x6

	mGetTiles 0x6017 64
	mDisplayFrame 0x2 0x7

	mGetTiles 0x6057 64
	mDisplayFrame 0x2 0x8

	mGetTiles 0x5E97 64
	mDisplayFrame 0x2 0x1

	mGetTiles 0x5ED7 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0x5F17 64
	mDisplayFrame 0x2 0x3

	mGetTiles 0x5F57 64
	mDisplayFrame 0x2 0x4

	mGetTiles 0x5F97 64
	mDisplayFrame 0x2 0x5

	mGetTiles 0x5FD7 64
	mDisplayFrame 0x2 0x6

	mGetTiles 0x6017 64
	mDisplayFrame 0x2 0x7

	mGetTiles 0x6057 64
	mDisplayFrame 0x2 0x8

	mGetTiles 0x5E57 64
	mAddHitbox 0 0x00 0x00 0x00 0x00
	mDisplayFrame 0x5 0x0

	mEnd 

anim_0130:
	.4byte anim_0130__v0_l0


anim_0131__v0_l0: @ 80E2298
	mGetPalette 2 16 0x10
	mGetTiles 0x6097 64
	mDisplayFrame 0x3 0x0

	mGetTiles 0x60D7 64
	mDisplayFrame 0x3 0x1

	mGetTiles 0x6117 64
	mDisplayFrame 0x3 0x2

	mGetTiles 0x6157 64
	mDisplayFrame 0x3 0x3

	mGetTiles 0x6197 64
	mDisplayFrame 0x3 0x4

	mGetTiles 0x61D7 64
	mDisplayFrame 0x3 0x5

	mGetTiles 0x6217 64
	mDisplayFrame 0x3 0x6

	mGetTiles 0x6257 64
	mDisplayFrame 0x3 0x7

anim_0131__v0_l1: @ 80E2344
	mJumpBack anim_0131__v0_l0

anim_0131:
	.4byte anim_0131__v0_l0


anim_0132__v0_l0: @ 80E2350
	mGetPalette 2 16 0x10
	mGetTiles 0x6297 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x6 0x0

anim_0132__v0_l1: @ 80E237C
	mGetTiles 0x62D7 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x4 0x1

	mGetTiles 0x6317 64
	mDisplayFrame 0x4 0x2

	mGetTiles 0x6357 64
	mDisplayFrame 0x4 0x3

	mGetTiles 0x6397 64
	mDisplayFrame 0x4 0x4

	mGetTiles 0x63D7 64
	mDisplayFrame 0x4 0x5

	mGetTiles 0x6417 64
	mDisplayFrame 0x4 0x6

	mGetTiles 0x6457 64
	mDisplayFrame 0x4 0x7

	mGetTiles 0x6497 64
	mDisplayFrame 0x4 0x8

	mGetTiles 0x64D7 64
	mDisplayFrame 0x4 0x9

	mGetTiles 0x6317 64
	mDisplayFrame 0x4 0x2

anim_0132__v0_l2: @ 80E2450
	mJumpBack anim_0132__v0_l1

anim_0132__v1_l0: @ 80E2458
	mGetPalette 2 16 0x10
	mGetTiles 0x6297 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x6 0x0

	mEnd 

anim_0132:
	.4byte anim_0132__v0_l0
	.4byte anim_0132__v1_l0


anim_0133__v0_l0: @ 80E2490
	mGetPalette 2 16 0x10
	mGetTiles 0x6517 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x0

	mGetTiles 0x6557 64
	mDisplayFrame 0x2 0x1

anim_0133__v0_l1: @ 80E24D0
	mJumpBack anim_0133__v0_l0

anim_0133__v1_l0: @ 80E24D8
	mGetPalette 2 16 0x10
	mGetTiles 0x6597 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0x65D7 64
	mDisplayFrame 0x2 0x3

	mGetTiles 0x6617 64
	mDisplayFrame 0x2 0x4

	mGetTiles 0x6657 64
	mDisplayFrame 0x2 0x5

	mGetTiles 0x6697 64
	mDisplayFrame 0x2 0x6

	mGetTiles 0x66D7 64
	mDisplayFrame 0x2 0x7

anim_0133__v1_l1: @ 80E255C
	mJumpBack anim_0133__v1_l0

anim_0133:
	.4byte anim_0133__v0_l0
	.4byte anim_0133__v1_l0


anim_0134__v0_l0: @ 80E256C
	mGetPalette 2 16 0x10
	mGetTiles 0x6717 16
	mDisplayFrame 0x3 0x0

	mGetTiles 0x6727 20
	mDisplayFrame 0x3 0x1

anim_0134__v0_l1: @ 80E25A0
	mJumpBack anim_0134__v0_l0

anim_0134__v1_l0: @ 80E25A8
	mGetPalette 2 16 0x10
	mGetTiles 0x673B 20
	mDisplayFrame 0x2 0x2

	mGetTiles 0x674F 24
	mDisplayFrame 0x2 0x3

	mGetTiles 0x6767 18
	mDisplayFrame 0x3 0x4

	mGetTiles 0x6779 20
	mDisplayFrame 0x3 0x5

	mGetTiles 0x678D 24
	mDisplayFrame 0x3 0x6

anim_0134__v1_l1: @ 80E2618
	mGetTiles 0x67A5 28
	mDisplayFrame 0x6 0x7

	mGetTiles 0x67C1 24
	mDisplayFrame 0x6 0x8

	mGetTiles 0x67D9 28
	mDisplayFrame 0x6 0x9

	mGetTiles 0x67F5 28
	mDisplayFrame 0x6 0xA

	mGetTiles 0x6811 28
	mDisplayFrame 0x6 0xB

	mGetTiles 0x682D 24
	mDisplayFrame 0x6 0xC

	mGetTiles 0x6845 28
	mDisplayFrame 0x6 0xD

	mGetTiles 0x6861 28
	mDisplayFrame 0x6 0xE

	mGetTiles 0x687D 28
	mDisplayFrame 0x6 0xF

	mGetTiles 0x6899 24
	mDisplayFrame 0x6 0x10

	mGetTiles 0x68B1 28
	mDisplayFrame 0x6 0x11

	mGetTiles 0x67F5 28
	mDisplayFrame 0x6 0xA

	mGetTiles 0x6811 28
	mDisplayFrame 0x6 0xB

	mGetTiles 0x682D 24
	mDisplayFrame 0x6 0xC

	mGetTiles 0x6845 28
	mDisplayFrame 0x6 0xD

	mGetTiles 0x6861 28
	mDisplayFrame 0x6 0xE

anim_0134__v1_l2: @ 80E2758
	mJumpBack anim_0134__v1_l1

anim_0134:
	.4byte anim_0134__v0_l0
	.4byte anim_0134__v1_l0


anim_0135__v0_l0: @ 80E2768
	mGetPalette 2 16 0x10
	mGetTiles 0x68CD 30
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x3 0x0

	mGetTiles 0x68EB 30
	mDisplayFrame 0x3 0x1

	mGetTiles 0x6909 30
	mDisplayFrame 0x3 0x2

	mGetTiles 0x6927 35
	mDisplayFrame 0x3 0x3

	mGetTiles 0x694A 30
	mDisplayFrame 0x3 0x4

	mGetTiles 0x6968 30
	mDisplayFrame 0x3 0x5

	mGetTiles 0x6986 30
	mDisplayFrame 0x3 0x6

	mGetTiles 0x69A4 35
	mDisplayFrame 0x3 0x7

anim_0135__v0_l1: @ 80E2820
	mJumpBack anim_0135__v0_l0

anim_0135__v1_l0: @ 80E2828
	mGetPalette 2 16 0x10
	mGetTiles 0x69C7 30
	mAddHitbox 0 0xFC 0xF8 0x08 0x14
	mDisplayFrame 0x3 0x8

	mGetTiles 0x69E5 30
	mDisplayFrame 0x3 0x9

	mGetTiles 0x6A03 28
	mDisplayFrame 0x3 0xA

	mGetTiles 0x6A1F 30
	mDisplayFrame 0x3 0xB

	mGetTiles 0x6A3D 30
	mDisplayFrame 0x3 0xC

	mGetTiles 0x6A5B 30
	mDisplayFrame 0x3 0xD

	mGetTiles 0x6A79 35
	mDisplayFrame 0x3 0xE

	mGetTiles 0x6A9C 30
	mDisplayFrame 0x3 0xF

anim_0135__v1_l1: @ 80E28E0
	mJumpBack anim_0135__v1_l0

anim_0135__v2_l0: @ 80E28E8
	mGetPalette 2 16 0x10
	mGetTiles 0x6ABA 30
	mAddHitbox 0 0xFC 0xF6 0x08 0x12
	mDisplayFrame 0x3 0x10

	mGetTiles 0x6AD8 30
	mDisplayFrame 0x3 0x11

	mGetTiles 0x6AF6 35
	mDisplayFrame 0x3 0x12

	mGetTiles 0x6B19 30
	mDisplayFrame 0x3 0x13

	mGetTiles 0x6B37 30
	mDisplayFrame 0x3 0x14

	mGetTiles 0x6B55 35
	mDisplayFrame 0x3 0x15

	mGetTiles 0x6B78 32
	mDisplayFrame 0x3 0x16

	mGetTiles 0x6B98 30
	mDisplayFrame 0x3 0x17

anim_0135__v2_l1: @ 80E29A0
	mJumpBack anim_0135__v2_l0

anim_0135:
	.4byte anim_0135__v0_l0
	.4byte anim_0135__v1_l0
	.4byte anim_0135__v2_l0


anim_0136__v0_l0: @ 80E29B4
	mGetPalette 2 16 0x10
	mGetTiles 0x6BB6 20
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x2 0x0

	mGetTiles 0x6BCA 24
	mDisplayFrame 0x2 0x1

	mGetTiles 0x6BE2 28
	mDisplayFrame 0x4 0x2

	mGetTiles 0x6BFE 24
	mDisplayFrame 0x1 0x3

	mGetTiles 0x6C16 28
	mDisplayFrame 0x1 0x4

anim_0136__v0_l1: @ 80E2A30
	mGetTiles 0x6C32 24
	mAddHitbox 0 0xF2 0xF6 0xFE 0x10
	mDisplayFrame 0x2 0x5

	mGetTiles 0x6C4A 24
	mDisplayFrame 0x2 0x6

	mGetTiles 0x6C62 24
	mDisplayFrame 0x2 0x7

anim_0136__v0_l2: @ 80E2A78
	mJumpBack anim_0136__v0_l1

anim_0136:
	.4byte anim_0136__v0_l0


anim_0137__v0_l0: @ 80E2A84
	mGetPalette 2 16 0x10
	mGetTiles 0x6C7A 28
	mAddHitbox 0 0xFA 0xF2 0x06 0x08
	mDisplayFrame 0x3 0x0

	mGetTiles 0x6C96 28
	mDisplayFrame 0x3 0x1

	mGetTiles 0x6CB2 28
	mDisplayFrame 0x3 0x2

	mGetTiles 0x6CCE 32
	mAddHitbox 0 0xFA 0xF2 0x06 0x08
	mDisplayFrame 0x2 0x3

	mGetTiles 0x6CEE 32
	mAddHitbox 0 0xFA 0xF2 0x06 0x08
	mDisplayFrame 0x2 0x4

	mEnd 

anim_0137:
	.4byte anim_0137__v0_l0


anim_0138__v0_l0: @ 80E2B20
	mGetPalette 2 16 0x10
	mGetTiles 0x6D0E 64
	mDisplayFrame 0x2 0x0

	mGetTiles 0x6D4E 64
	mDisplayFrame 0x2 0x1

	mGetTiles 0x6D8E 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0x6DCE 64
	mDisplayFrame 0x2 0x3

	mGetTiles 0x6D0E 64
	mDisplayFrame 0x2 0x0

	mGetTiles 0x6D4E 64
	mDisplayFrame 0x2 0x1

	mGetTiles 0x6D8E 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0x6DCE 64
	mDisplayFrame 0x2 0x3

anim_0138__v0_l1: @ 80E2BCC
	mJumpBack anim_0138__v0_l0

anim_0138__v1_l0: @ 80E2BD4
	mGetPalette 2 16 0x10
	mGetTiles 0x6E0E 64
	mDisplayFrame 0x2 0x4

	mGetTiles 0x6E4E 64
	mDisplayFrame 0x2 0x5

	mGetTiles 0x6E8E 64
	mDisplayFrame 0x2 0x6

	mGetTiles 0x6ECE 64
	mDisplayFrame 0x2 0x7

	mGetTiles 0x6F0E 64
	mDisplayFrame 0x2 0x8

	mGetTiles 0x6F4E 64
	mDisplayFrame 0x2 0x9

	mGetTiles 0x6F8E 64
	mDisplayFrame 0x2 0xA

	mGetTiles 0x6FCE 64
	mDisplayFrame 0x2 0xB

anim_0138__v1_l1: @ 80E2C80
	mJumpBack anim_0138__v1_l0

anim_0138:
	.4byte anim_0138__v0_l0
	.4byte anim_0138__v1_l0


anim_0139__v0_l0: @ 80E2C90
	mGetPalette 2 16 0x10
	mGetTiles 0x700E 24
	mAddHitbox 0 0xE0 0xEC 0xFC 0xFA
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x0

	mGetTiles 0x7026 20
	mAddHitbox 0 0xEC 0xEC 0xFE 0xFA
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x1

	mGetTiles 0x703A 20
	mAddHitbox 0 0xF4 0xEC 0x00 0xFA
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x2

	mGetTiles 0x704E 24
	mAddHitbox 0 0x02 0xEC 0x0E 0xFA
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x3

	mGetTiles 0x7066 24
	mAddHitbox 0 0x03 0xEC 0x15 0xFA
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x4

	mGetTiles 0x707E 24
	mAddHitbox 0 0x04 0xEC 0x20 0xFA
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x5

	mGetTiles 0x7096 20
	mAddHitbox 0 0x04 0xEC 0x16 0xFA
	mAnimCmd12 0x13
	mDisplayFrame 0x3 0x6

	mGetTiles 0x70AA 24
	mAddHitbox 0 0x01 0xEC 0x0D 0xFA
	mAnimCmd12 0x13
	mDisplayFrame 0x3 0x7

	mGetTiles 0x70C2 24
	mAddHitbox 0 0xF1 0xEC 0xFD 0xFA
	mAnimCmd12 0x13
	mDisplayFrame 0x3 0x8

	mGetTiles 0x70DA 24
	mAddHitbox 0 0xEB 0xEC 0xFD 0xFA
	mAnimCmd12 0x13
	mDisplayFrame 0x3 0x9

anim_0139__v0_l1: @ 80E2E2C
	mJumpBack anim_0139__v0_l0

anim_0139__v1_l0: @ 80E2E34
	mGetPalette 2 16 0x10
	mGetTiles 0x70F2 24
	mAddHitbox 0 0xF9 0x04 0x05 0x1E
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xA

	mGetTiles 0x710A 20
	mAddHitbox 0 0xF9 0x00 0x05 0x18
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xB

	mGetTiles 0x711E 20
	mAddHitbox 0 0xF9 0xFB 0x07 0x0B
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xC

	mGetTiles 0x7132 24
	mAddHitbox 0 0xFA 0xF7 0x06 0x05
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xD

	mGetTiles 0x714A 24
	mAddHitbox 0 0xFA 0xF1 0x06 0x01
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xE

	mGetTiles 0x7162 24
	mAddHitbox 0 0xFA 0xE3 0x06 0xFD
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xF

	mGetTiles 0x717A 20
	mAddHitbox 0 0xFA 0xE6 0x06 0xFE
	mAnimCmdSetSpritePriority 0x3
	mDisplayFrame 0x3 0x10

	mGetTiles 0x718E 24
	mAddHitbox 0 0xFA 0xF0 0x06 0x00
	mAnimCmdSetSpritePriority 0x3
	mDisplayFrame 0x3 0x11

	mGetTiles 0x71A6 24
	mAddHitbox 0 0xFA 0xFA 0x06 0x08
	mAnimCmdSetSpritePriority 0x3
	mDisplayFrame 0x3 0x12

	mGetTiles 0x71BE 24
	mAddHitbox 0 0xFA 0x02 0x06 0x12
	mAnimCmdSetSpritePriority 0x3
	mDisplayFrame 0x3 0x13

anim_0139__v1_l1: @ 80E2FD0
	mJumpBack anim_0139__v1_l0

anim_0139:
	.4byte anim_0139__v0_l0
	.4byte anim_0139__v1_l0


anim_0140__v0_l0: @ 80E2FE0
	mGetPalette 2 16 0x10
	mGetTiles 0x71D6 28
	mAddHitbox 0 0xFA 0xEE 0x06 0x04
	mDisplayFrame 0xA 0x0

	mGetTiles 0x71F2 28
	mDisplayFrame 0xA 0x1

	mGetTiles 0x720E 28
	mDisplayFrame 0xA 0x2

	mGetTiles 0x71F2 28
	mDisplayFrame 0xA 0x1

anim_0140__v0_l1: @ 80E3048
	mJumpBack anim_0140__v0_l0

anim_0140__v1_l0: @ 80E3050
	mGetPalette 2 16 0x10
	mGetTiles 0x722A 28
	mAddHitbox 0 0xFA 0xEE 0x06 0x04
	mDisplayFrame 0x5 0x3

	mGetTiles 0x7246 28
	mDisplayFrame 0x5 0x4

	mGetTiles 0x7262 28
	mDisplayFrame 0x5 0x5

	mGetTiles 0x7246 28
	mDisplayFrame 0x5 0x4

anim_0140__v1_l1: @ 80E30B8
	mJumpBack anim_0140__v1_l0

anim_0140:
	.4byte anim_0140__v0_l0
	.4byte anim_0140__v1_l0


anim_0141__v0_l0: @ 80E30C8
	mGetPalette 2 16 0x10
	mGetTiles 0x727E 24
	mAddHitbox 0 0xF6 0xFA 0x0A 0x0A
	mDisplayFrame 0x5 0x0

	mGetTiles 0x7296 24
	mDisplayFrame 0x5 0x1

	mGetTiles 0x72AE 20
	mDisplayFrame 0x5 0x2

	mGetTiles 0x72C2 24
	mDisplayFrame 0x5 0x3

	mGetTiles 0x72DA 24
	mDisplayFrame 0x5 0x4

	mGetTiles 0x72F2 24
	mDisplayFrame 0x5 0x5

	mGetTiles 0x730A 30
	mDisplayFrame 0x5 0x6

	mGetTiles 0x7328 24
	mDisplayFrame 0x5 0x7

anim_0141__v0_l1: @ 80E3180
	mJumpBack anim_0141__v0_l0

anim_0141:
	.4byte anim_0141__v0_l0


anim_0142__v0_l0: @ 80E318C
	mGetPalette 2 16 0x10
	mGetTiles 0x7340 28
	mDisplayFrame 0x8 0x0

	mGetTiles 0x735C 28
	mDisplayFrame 0x8 0x1

	mGetTiles 0x7378 28
	mDisplayFrame 0x8 0x2

	mGetTiles 0x735C 28
	mDisplayFrame 0x8 0x1

anim_0142__v0_l1: @ 80E31E8
	mJumpBack anim_0142__v0_l0

anim_0142:
	.4byte anim_0142__v0_l0


anim_0145__v0_l0: @ 80E31F4
	mGetPalette 2 16 0x10
	mGetTiles 0x7394 24
	mAddHitbox 0 0xFA 0xF4 0x06 0x0E
	mDisplayFrame 0x3 0x0

anim_0145__v0_l1: @ 80E3220
	mGetTiles 0x73AC 30
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x3 0x1

	mGetTiles 0x73CA 30
	mDisplayFrame 0x3 0x2

	mGetTiles 0x73E8 30
	mDisplayFrame 0x3 0x3

	mGetTiles 0x7406 30
	mDisplayFrame 0x3 0x4

	mGetTiles 0x7424 24
	mDisplayFrame 0x3 0x5

	mGetTiles 0x743C 30
	mDisplayFrame 0x3 0x6

	mGetTiles 0x745A 30
	mDisplayFrame 0x3 0x7

	mGetTiles 0x7478 30
	mDisplayFrame 0x3 0x8

anim_0145__v0_l2: @ 80E32CC
	mJumpBack anim_0145__v0_l1

anim_0145:
	.4byte anim_0145__v0_l0


anim_0146__v0_l0: @ 80E32D8
	mGetPalette 2 16 0x10
	mGetTiles 0x7496 20
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x1 0x0

	mGetTiles 0x74AA 20
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0146:
	.4byte anim_0146__v0_l0


anim_0147__v0_l0: @ 80E332C
	mGetPalette 2 16 0x10
	mGetTiles 0x74BE 35
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x6 0x0

anim_0147__v0_l1: @ 80E3358
	mGetTiles 0x74E1 35
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x6 0x1

	mGetTiles 0x7504 42
	mDisplayFrame 0x6 0x2

	mGetTiles 0x752E 42
	mDisplayFrame 0x6 0x3

	mGetTiles 0x7558 42
	mDisplayFrame 0x6 0x4

	mGetTiles 0x7582 30
	mDisplayFrame 0x6 0x5

	mGetTiles 0x75A0 42
	mDisplayFrame 0x6 0x6

	mGetTiles 0x75CA 42
	mDisplayFrame 0x6 0x7

	mGetTiles 0x75F4 35
	mDisplayFrame 0x6 0x8

anim_0147__v0_l2: @ 80E3404
	mJumpBack anim_0147__v0_l1

anim_0147:
	.4byte anim_0147__v0_l0


anim_0149__v0_l0: @ 80E3410
	mGetPalette 2 16 0x10
	mGetTiles 0x7617 20
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x3 0x0

	mGetTiles 0x762B 20
	mAddHitbox 0 0xF6 0xF6 0x02 0x10
	mDisplayFrame 0x3 0x1

	mGetTiles 0x763F 24
	mAddHitbox 0 0xF4 0xF6 0x00 0x10
	mPlaySoundEffect 121
	mDisplayFrame 0x3 0x2

	mGetTiles 0x7657 24
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mAddHitbox 1 0xEC 0xF6 0xFA 0x10
	mDisplayFrame 0x3 0x3

	mGetTiles 0x766F 28
	mAddHitbox 0 0xF2 0xF6 0xFE 0x10
	mAddHitbox 1 0xD0 0xF6 0xF4 0x10
	mDisplayFrame 0x3 0x4

	mGetTiles 0x768B 28
	mAddHitbox 0 0xF2 0xF6 0xFE 0x10
	mAddHitbox 1 0xD8 0xF6 0xF2 0x10
	mDisplayFrame 0x3 0x5

	mGetTiles 0x76A7 24
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x4 0x6

	mGetTiles 0x76BF 16
	mAddHitbox 0 0xF8 0xF6 0x04 0x10
	mDisplayFrame 0x4 0x7

	mGetTiles 0x76CF 20
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x4 0x8

	mEnd 

anim_0149:
	.4byte anim_0149__v0_l0


anim_0155__v0_l0: @ 80E3570
	mGetPalette 2 16 0x10
	mGetTiles 0x76E3 20
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mAddHitbox 1 0xEB 0xED 0x16 0xF5
	mDisplayFrame 0x2 0x0

	mGetTiles 0x76F7 20
	mDisplayFrame 0x2 0x1

	mGetTiles 0x770B 30
	mDisplayFrame 0x2 0x2

	mGetTiles 0x7729 25
	mDisplayFrame 0x2 0x3

	mGetTiles 0x7742 20
	mDisplayFrame 0x2 0x4

	mGetTiles 0x7756 20
	mDisplayFrame 0x2 0x5

	mGetTiles 0x776A 30
	mDisplayFrame 0x2 0x6

	mGetTiles 0x7788 25
	mDisplayFrame 0x2 0x7

	mGetTiles 0x76E3 20
	mDisplayFrame 0x2 0x0

	mGetTiles 0x76F7 20
	mDisplayFrame 0x2 0x1

	mGetTiles 0x770B 30
	mDisplayFrame 0x2 0x2

	mGetTiles 0x7729 25
	mDisplayFrame 0x2 0x3

	mGetTiles 0x77A1 20
	mDisplayFrame 0x2 0x8

	mGetTiles 0x77B5 20
	mDisplayFrame 0x2 0x9

	mGetTiles 0x77C9 30
	mDisplayFrame 0x2 0xA

	mGetTiles 0x7788 25
	mDisplayFrame 0x2 0x7

anim_0155__v0_l1: @ 80E36D4
	mJumpBack anim_0155__v0_l0

anim_0155:
	.4byte anim_0155__v0_l0


anim_0156__v0_l0: @ 80E36E0
	mGetPalette 2 16 0x10
	mGetTiles 0x77E7 25
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mAddHitbox 1 0xEF 0xED 0x11 0xF5
	mDisplayFrame 0x1 0x0

	mGetTiles 0x7800 25
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mAddHitbox 1 0xEF 0xED 0x11 0xF5
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0156:
	.4byte anim_0156__v0_l0


anim_0157__v0_l0: @ 80E374C
	mGetPalette 2 16 0x10
	mGetTiles 0x7819 20
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x6 0x0

	mGetTiles 0x782D 30
	mDisplayFrame 0x3 0x1

anim_0157__v0_l1: @ 80E378C
	mGetTiles 0x784B 30
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x6 0x2

	mGetTiles 0x7869 30
	mDisplayFrame 0x6 0x3

	mGetTiles 0x7887 30
	mDisplayFrame 0x6 0x4

	mGetTiles 0x78A5 30
	mDisplayFrame 0x6 0x5

	mGetTiles 0x78C3 30
	mDisplayFrame 0x6 0x6

	mGetTiles 0x78E1 30
	mDisplayFrame 0x6 0x7

	mGetTiles 0x78FF 30
	mDisplayFrame 0x6 0x8

	mGetTiles 0x791D 30
	mDisplayFrame 0x6 0x9

anim_0157__v0_l2: @ 80E3838
	mJumpBack anim_0157__v0_l1

anim_0157:
	.4byte anim_0157__v0_l0


anim_0158__v0_l0: @ 80E3844
	mGetPalette 2 16 0x10
	mGetTiles 0x793B 30
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x3 0x0

	mGetTiles 0x7959 20
	mAddHitbox 0 0xF6 0xF6 0x02 0x0A
	mDisplayFrame 0x3 0x1

anim_0158__v0_l1: @ 80E3890
	mGetTiles 0x796D 16
	mDisplayFrame 0x3 0x2

	mGetTiles 0x797D 20
	mDisplayFrame 0x3 0x3

anim_0158__v0_l2: @ 80E38B8
	mJumpBack anim_0158__v0_l1

anim_0158__v1_l0: @ 80E38C0
	mGetPalette 2 16 0x10
	mGetTiles 0x7991 20
	mAddHitbox 0 0xFA 0xFA 0x06 0x10
	mDisplayFrame 0x2 0x4

	mGetTiles 0x79A5 24
	mDisplayFrame 0x2 0x5

	mGetTiles 0x79BD 18
	mDisplayFrame 0x3 0x6

	mGetTiles 0x79A5 24
	mDisplayFrame 0x2 0x5

	mEnd 

anim_0158:
	.4byte anim_0158__v0_l0
	.4byte anim_0158__v1_l0


anim_0180__v0_l0: @ 80E3934
	mGetPalette 2 16 0x10
	mGetTiles 0x79CF 36
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x4 0x0

	mGetTiles 0x79F3 36
	mDisplayFrame 0x4 0x1

	mGetTiles 0x7A17 36
	mDisplayFrame 0x4 0x2

	mGetTiles 0x79F3 36
	mDisplayFrame 0x4 0x1

anim_0180__v0_l1: @ 80E399C
	mJumpBack anim_0180__v0_l0

anim_0180:
	.4byte anim_0180__v0_l0


anim_0181__v0_l0: @ 80E39A8
	mGetPalette 2 16 0x10
	mGetTiles 0x7A3B 25
	mAddHitbox 0 0xFA 0xF6 0x06 0x10
	mDisplayFrame 0x4 0x0

	mGetTiles 0x7A54 25
	mDisplayFrame 0x4 0x1

	mGetTiles 0x7A6D 25
	mDisplayFrame 0x4 0x2

	mGetTiles 0x7A54 25
	mDisplayFrame 0x4 0x1

anim_0181__v0_l1: @ 80E3A10
	mJumpBack anim_0181__v0_l0

anim_0181:
	.4byte anim_0181__v0_l0


anim_0182__v0_l0: @ 80E3A1C
	mGetPalette 2 16 0x10
	mGetTiles 0x7A86 25
	mAddHitbox 0 0xFA 0xF5 0x06 0x08
	mDisplayFrame 0x2 0x0

	mGetTiles 0x7A9F 25
	mDisplayFrame 0x2 0x1

	mGetTiles 0x7AB8 25
	mDisplayFrame 0x2 0x2

	mGetTiles 0x7A9F 25
	mDisplayFrame 0x2 0x1

anim_0182__v0_l1: @ 80E3A84
	mJumpBack anim_0182__v0_l0

anim_0182:
	.4byte anim_0182__v0_l0


anim_0184__v0_l0: @ 80E3A90
	mGetPalette 3 16 0x80
	mGetTiles 0x7AD1 21
	mDisplayFrame 0x3 0x0

	mGetTiles 0x7AE6 21
	mDisplayFrame 0x3 0x1

anim_0184__v0_l1: @ 80E3AC4
	mJumpBack anim_0184__v0_l0

anim_0184:
	.4byte anim_0184__v0_l0


anim_0185__v0_l0: @ 80E3AD0
	mGetPalette 3 16 0x80
	mGetTiles 0x7AFB 20
	mDisplayFrame 0x2 0x0

	mGetTiles 0x7B0F 24
	mDisplayFrame 0x2 0x1

	mEnd 

anim_0185__v1_l0: @ 80E3B08
	mGetPalette 3 16 0x80
	mGetTiles 0x7B27 18
	mDisplayFrame 0x2 0x2

anim_0185__v1_l1: @ 80E3B28
	mJumpBack anim_0185__v1_l0

anim_0185:
	.4byte anim_0185__v0_l0
	.4byte anim_0185__v1_l0


anim_0186__v0_l0: @ 80E3B38
	mGetPalette 3 16 0x80
	mGetTiles 0x7B39 24
	mDisplayFrame 0x3 0x0

	mGetTiles 0x7B51 24
	mDisplayFrame 0x3 0x1

	mGetTiles 0x7B69 24
	mDisplayFrame 0x3 0x2

	mGetTiles 0x7B81 24
	mDisplayFrame 0x3 0x3

	mGetTiles 0x7B99 24
	mDisplayFrame 0x3 0x4

	mGetTiles 0x7BB1 24
	mDisplayFrame 0x3 0x5

	mGetTiles 0x7BC9 24
	mDisplayFrame 0x3 0x6

	mGetTiles 0x7BE1 24
	mDisplayFrame 0x3 0x7

anim_0186__v0_l1: @ 80E3BE4
	mJumpBack anim_0186__v0_l0

anim_0186:
	.4byte anim_0186__v0_l0


anim_0187__v0_l0: @ 80E3BF0
	mGetPalette 3 16 0x80
	mGetTiles 0x7BF9 24
	mDisplayFrame 0x6 0x0

	mGetTiles 0x7C11 20
	mDisplayFrame 0x6 0x1

	mGetTiles 0x7C25 16
	mDisplayFrame 0x6 0x2

anim_0187__v0_l1: @ 80E3C38
	mGetTiles 0x7C35 16
	mDisplayFrame 0x3 0x3

	mGetTiles 0x7C45 16
	mDisplayFrame 0x3 0x4

anim_0187__v0_l2: @ 80E3C60
	mJumpBack anim_0187__v0_l1

anim_0187:
	.4byte anim_0187__v0_l0


anim_0188__v0_l0: @ 80E3C6C
	mGetPalette 3 16 0x80
	mGetTiles 0x7C55 30
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0188__v1_l0: @ 80E3C90
	mGetPalette 3 16 0x80
	mGetTiles 0x7C73 24
	mDisplayFrame 0x4 0x1

	mGetTiles 0x7C8B 24
	mDisplayFrame 0x4 0x2

	mGetTiles 0x7CA3 24
	mDisplayFrame 0x28 0x3

	mEnd 

anim_0188:
	.4byte anim_0188__v0_l0
	.4byte anim_0188__v1_l0


anim_0190__v0_l0: @ 80E3CE4
	mGetPalette 3 16 0x80
	mGetTiles 0x7CBB 9
	mDisplayFrame 0x3 0x0

	mGetTiles 0x7CC4 9
	mDisplayFrame 0x3 0x1

anim_0190__v0_l1: @ 80E3D18
	mJumpBack anim_0190__v0_l0

anim_0190:
	.4byte anim_0190__v0_l0


anim_0191__v0_l0: @ 80E3D24
	mGetPalette 3 16 0x80
	mGetTiles 0x7CCD 9
	mDisplayFrame 0xA 0x0

	mGetTiles 0x7CD6 9
	mDisplayFrame 0xA 0x1

	mGetTiles 0x7CDF 9
	mDisplayFrame 0xA 0x2

	mGetTiles 0x7CE8 6
	mDisplayFrame 0x10 0x3

	mGetTiles 0x7CDF 9
	mDisplayFrame 0xA 0x2

	mGetTiles 0x7CD6 9
	mDisplayFrame 0xA 0x1

	mGetTiles 0x7CCD 9
	mDisplayFrame 0xA 0x0

	mGetTiles 0x7CEE 9
	mDisplayFrame 0x10 0x4

anim_0191__v0_l1: @ 80E3DD0
	mJumpBack anim_0191__v0_l0

anim_0191__v1_l0: @ 80E3DD8
	mGetPalette 3 16 0x80
	mGetTiles 0x7CDF 9
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0191:
	.4byte anim_0191__v0_l0
	.4byte anim_0191__v1_l0


anim_0192__v0_l0: @ 80E3E04
	mGetPalette 4 16 0x10
	mGetTiles 0x7CF7 24
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0192__v1_l0: @ 80E3E34
	mGetPalette 4 16 0x10
	mGetTiles 0x7D0F 28
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0192__v2_l0: @ 80E3E64
	mGetPalette 4 16 0x10
	mGetTiles 0x7D2B 24
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0192__v3_l0: @ 80E3E94
	mGetPalette 4 16 0x10
	mGetTiles 0x7D43 28
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0192__v4_l0: @ 80E3EC4
	mGetPalette 4 16 0x10
	mGetTiles 0x7D5F 28
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0192__v5_l0: @ 80E3EF4
	mGetPalette 4 16 0x10
	mGetTiles 0x7D7B 24
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0192__v6_l0: @ 80E3F24
	mGetPalette 4 16 0x10
	mGetTiles 0x7D93 24
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0192__v7_l0: @ 80E3F54
	mGetPalette 4 16 0x10
	mGetTiles 0x7DAB 24
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x1 0x7

	mEnd 

anim_0192:
	.4byte anim_0192__v0_l0
	.4byte anim_0192__v1_l0
	.4byte anim_0192__v2_l0
	.4byte anim_0192__v3_l0
	.4byte anim_0192__v4_l0
	.4byte anim_0192__v5_l0
	.4byte anim_0192__v6_l0
	.4byte anim_0192__v7_l0


anim_0195__v0_l0: @ 80E3FA4
	mGetPalette 3 16 0x80
	mGetTiles 0x7DC3 64
	mDisplayFrame 0x2 0x0

	mGetTiles 0x7E03 64
	mDisplayFrame 0x2 0x1

	mGetTiles 0x7E43 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0x7E83 64
	mDisplayFrame 0x2 0x3

anim_0195__v0_l1: @ 80E4000
	mJumpBack anim_0195__v0_l0

anim_0195:
	.4byte anim_0195__v0_l0


anim_0196__v0_l0: @ 80E400C
	mGetPalette 2 16 0x10
	mGetTiles 0x7EC3 12
	mDisplayFrame 0x1 0x0

	mGetTiles 0x7ECF 12
	mDisplayFrame 0x1 0x1

	mGetTiles 0x7EC3 12
	mDisplayFrame 0x1 0x0

	mGetTiles 0x7EDB 15
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0196:
	.4byte anim_0196__v0_l0


anim_0197__v0_l0: @ 80E4070
	mGetPalette 2 16 0x10
	mGetTiles 0x7EEA 64
	mDisplayFrame 0x3 0x0

	mEnd 

anim_0197:
	.4byte anim_0197__v0_l0


anim_0198__v0_l0: @ 80E4098
	mGetPalette 2 16 0x10
	mGetTiles 0x7F2A 20
	mDisplayFrame 0x6 0x0

	mGetTiles 0x7F3E 25
	mDisplayFrame 0x4 0x1

	mGetTiles 0x7F57 25
	mDisplayFrame 0x4 0x2

	mGetTiles 0x7F70 25
	mDisplayFrame 0x4 0x3

	mEnd 

anim_0198:
	.4byte anim_0198__v0_l0


anim_0199__v0_l0: @ 80E40FC
	mGetPalette 5 16 0x20
	mGetTiles 0x7F89 20
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x5 0x0

	mGetTiles 0x7F9D 20
	mDisplayFrame 0x5 0x1

	mGetTiles 0x7FB1 20
	mDisplayFrame 0x5 0x2

	mGetTiles 0x7FC5 16
	mDisplayFrame 0x5 0x3

	mGetTiles 0x7FD5 20
	mDisplayFrame 0x5 0x4

	mGetTiles 0x7F89 20
	mDisplayFrame 0x5 0x0

	mGetTiles 0x7F9D 20
	mDisplayFrame 0x5 0x1

	mGetTiles 0x7FB1 20
	mDisplayFrame 0x5 0x2

	mGetTiles 0x7FC5 16
	mDisplayFrame 0x5 0x3

	mGetTiles 0x7FD5 20
	mDisplayFrame 0x5 0x4

	mGetTiles 0x7FE9 20
	mDisplayFrame 0x5 0x5

	mGetTiles 0x7F89 20
	mDisplayFrame 0x5 0x0

	mGetTiles 0x7F9D 20
	mDisplayFrame 0x5 0x1

	mGetTiles 0x7FFD 20
	mDisplayFrame 0x5 0x6

	mGetTiles 0x8011 16
	mDisplayFrame 0x5 0x7

	mGetTiles 0x8021 20
	mDisplayFrame 0x5 0x8

	mGetTiles 0x7FE9 20
	mDisplayFrame 0x5 0x5

	mGetTiles 0x7F89 20
	mDisplayFrame 0x5 0x0

	mGetTiles 0x7F9D 20
	mDisplayFrame 0x5 0x1

	mGetTiles 0x7FB1 20
	mDisplayFrame 0x5 0x2

	mGetTiles 0x7FC5 16
	mDisplayFrame 0x5 0x3

	mGetTiles 0x7FD5 20
	mAddHitbox 0 0xFA 0xF3 0x08 0x10
	mDisplayFrame 0x5 0x4

	mGetTiles 0x8035 20
	mDisplayFrame 0x5 0x9

	mGetTiles 0x8049 20
	mDisplayFrame 0xA 0xA

	mGetTiles 0x805D 20
	mDisplayFrame 0x5 0xB

	mGetTiles 0x8071 20
	mDisplayFrame 0x5 0xC

	mGetTiles 0x8085 20
	mDisplayFrame 0x5 0xD

	mGetTiles 0x8035 20
	mDisplayFrame 0x5 0x9

	mGetTiles 0x8049 20
	mDisplayFrame 0x5 0xA

	mGetTiles 0x805D 20
	mDisplayFrame 0x5 0xB

	mGetTiles 0x8071 20
	mDisplayFrame 0x5 0xC

	mGetTiles 0x8085 20
	mDisplayFrame 0xC 0xD

	mGetTiles 0x8035 20
	mDisplayFrame 0x6 0x9

	mGetTiles 0x7FE9 20
	mDisplayFrame 0x5 0x5

	mGetTiles 0x7F89 20
	mDisplayFrame 0x5 0x0

	mGetTiles 0x7F9D 20
	mDisplayFrame 0x5 0x1

	mGetTiles 0x7FB1 20
	mDisplayFrame 0x5 0x2

	mGetTiles 0x7FC5 16
	mDisplayFrame 0x5 0x3

	mGetTiles 0x7FD5 20
	mDisplayFrame 0x5 0x4

anim_0199__v0_l1: @ 80E442C
	mJumpBack anim_0199__v0_l0

anim_0199:
	.4byte anim_0199__v0_l0


anim_0200__v0_l0: @ 80E4438
	mGetPalette 5 16 0x20
	mGetTiles 0x8099 20
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0xA 0x0

	mGetTiles 0x80AD 15
	mDisplayFrame 0xA 0x1

	mGetTiles 0x80BC 24
	mDisplayFrame 0x14 0x2

	mGetTiles 0x80D4 15
	mDisplayFrame 0x1E 0x3

	mGetTiles 0x80E3 15
	mDisplayFrame 0x8 0x4

	mGetTiles 0x80D4 15
	mDisplayFrame 0x8 0x3

	mGetTiles 0x80E3 15
	mDisplayFrame 0x8 0x4

	mGetTiles 0x80D4 15
	mDisplayFrame 0x8 0x3

	mGetTiles 0x80E3 15
	mDisplayFrame 0x8 0x4

	mGetTiles 0x80D4 15
	mDisplayFrame 0x1E 0x3

	mGetTiles 0x80F2 15
	mDisplayFrame 0x4 0x5

	mGetTiles 0x8101 20
	mDisplayFrame 0xA 0x6

	mGetTiles 0x80F2 15
	mDisplayFrame 0x4 0x5

	mGetTiles 0x8115 15
	mDisplayFrame 0xA 0x7

	mGetTiles 0x80F2 15
	mDisplayFrame 0x3C 0x5

	mGetTiles 0x8124 15
	mDisplayFrame 0x6 0x8

	mGetTiles 0x8133 15
	mDisplayFrame 0x6 0x9

	mGetTiles 0x8142 15
	mDisplayFrame 0x4 0xA

	mGetTiles 0x8133 15
	mDisplayFrame 0x10 0x9

	mGetTiles 0x8124 15
	mDisplayFrame 0x6 0x8

	mGetTiles 0x80D4 15
	mDisplayFrame 0x8 0x3

	mGetTiles 0x8151 20
	mDisplayFrame 0xA 0xB

	mGetTiles 0x8165 20
	mDisplayFrame 0xA 0xC

	mGetTiles 0x8151 20
	mDisplayFrame 0xA 0xB

	mGetTiles 0x8165 20
	mDisplayFrame 0xA 0xC

	mGetTiles 0x8151 20
	mDisplayFrame 0x28 0xB

anim_0200__v0_l1: @ 80E4658
	mGetTiles 0x80D4 15
	mDisplayFrame 0x8 0x3

	mGetTiles 0x80E3 15
	mDisplayFrame 0x8 0x4

	mGetTiles 0x80D4 15
	mDisplayFrame 0x8 0x3

anim_0200__v0_l2: @ 80E4694
	mJumpBack anim_0200__v0_l1

anim_0200:
	.4byte anim_0200__v0_l0


anim_0201__v0_l0: @ 80E46A0
	mGetPalette 5 16 0x20
	mGetTiles 0x8179 20
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x2 0x0

	mGetTiles 0x818D 20
	mDisplayFrame 0x2 0x1

	mGetTiles 0x81A1 20
	mDisplayFrame 0x2 0x2

	mEnd 

anim_0201__v1_l0: @ 80E46F8
	mGetPalette 5 16 0x20
	mGetTiles 0x818D 20
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x1 0x1

	mGetTiles 0x8179 20
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0201:
	.4byte anim_0201__v0_l0
	.4byte anim_0201__v1_l0


anim_0202__v0_l0: @ 80E4744
	mGetPalette 5 16 0x20
	mGetTiles 0x81B5 16
	mAddHitbox 0 0xFA 0xFA 0x06 0x10
	mDisplayFrame 0x1 0x0

	mGetTiles 0x81C5 16
	mDisplayFrame 0x1 0x1

	mGetTiles 0x81D5 12
	mDisplayFrame 0x1 0x2

	mGetTiles 0x81E1 16
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0202__v1_l0: @ 80E47B0
	mGetPalette 5 16 0x20
	mGetTiles 0x81C5 16
	mAddHitbox 0 0xFA 0xFA 0x06 0x10
	mDisplayFrame 0x1 0x1

	mGetTiles 0x81B5 16
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0202:
	.4byte anim_0202__v0_l0
	.4byte anim_0202__v1_l0


anim_0203__v0_l0: @ 80E47FC
	mGetPalette 5 16 0x20
	mGetTiles 0x81F1 64
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x3 0x0

	mGetTiles 0x8231 64
	mDisplayFrame 0x3 0x1

	mGetTiles 0x8271 64
	mDisplayFrame 0x3 0x2

	mGetTiles 0x82B1 64
	mDisplayFrame 0x3 0x3

	mGetTiles 0x82F1 64
	mDisplayFrame 0x3 0x4

	mGetTiles 0x8331 64
	mDisplayFrame 0x3 0x5

	mGetTiles 0x8371 64
	mDisplayFrame 0x3 0x6

	mGetTiles 0x83B1 64
	mDisplayFrame 0x3 0x7

anim_0203__v0_l1: @ 80E48B4
	mJumpBack anim_0203__v0_l0

anim_0203:
	.4byte anim_0203__v0_l0


anim_0204__v0_l0: @ 80E48C0
	mGetPalette 5 16 0x20
	mGetTiles 0x83F1 64
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x2 0x0

	mGetTiles 0x8431 64
	mDisplayFrame 0x2 0x1

	mGetTiles 0x8471 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0x84B1 64
	mDisplayFrame 0x2 0x3

	mGetTiles 0x84F1 64
	mDisplayFrame 0x2 0x4

	mGetTiles 0x8531 64
	mDisplayFrame 0x2 0x5

	mGetTiles 0x8571 64
	mDisplayFrame 0x2 0x6

	mGetTiles 0x85B1 64
	mDisplayFrame 0x2 0x7

anim_0204__v0_l1: @ 80E4978
	mJumpBack anim_0204__v0_l0

anim_0204:
	.4byte anim_0204__v0_l0


anim_0205__v0_l0: @ 80E4984
	mGetPalette 5 16 0x20
	mGetTiles 0x85F1 20
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x1 0x0

	mGetTiles 0x8605 20
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0205:
	.4byte anim_0205__v0_l0


anim_0206__v0_l0: @ 80E49CC
	mGetPalette 5 16 0x20
	mGetTiles 0x8619 20
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x1 0x0

	mGetTiles 0x862D 30
	mDisplayFrame 0x1 0x1

	mGetTiles 0x864B 30
	mDisplayFrame 0x1 0x2

	mGetTiles 0x8669 25
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0206:
	.4byte anim_0206__v0_l0


anim_0207__v0_l0: @ 80E4A3C
	mGetPalette 5 16 0x20
	mGetTiles 0x8682 16
	mAddHitbox 0 0xF8 0xF8 0x08 0x08
	mAddHitbox 1 0xF8 0xF8 0x08 0x08
	mDisplayFrame 0x2 0x0

	mGetTiles 0x8692 16
	mDisplayFrame 0x2 0x1

	mGetTiles 0x86A2 16
	mDisplayFrame 0x2 0x2

	mGetTiles 0x86B2 16
	mDisplayFrame 0x2 0x3

anim_0207__v0_l1: @ 80E4AB0
	mJumpBack anim_0207__v0_l0

anim_0207:
	.4byte anim_0207__v0_l0


anim_0208__v0_l0: @ 80E4ABC
	mGetPalette 5 16 0x20
	mGetTiles 0x86C2 20
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x2 0x0

	mGetTiles 0x86D6 30
	mDisplayFrame 0x2 0x1

anim_0208__v0_l1: @ 80E4AFC
	mGetTiles 0x86F4 30
	mDisplayFrame 0x2 0x2

anim_0208__v0_l2: @ 80E4B10
	mJumpBack anim_0208__v0_l1

anim_0208__v1_l0: @ 80E4B18
	mGetPalette 5 16 0x20
	mGetTiles 0x8712 30
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x2 0x3

	mGetTiles 0x86C2 20
	mDisplayFrame 0x2 0x0

	mEnd 

anim_0208:
	.4byte anim_0208__v0_l0
	.4byte anim_0208__v1_l0


anim_0209__v0_l0: @ 80E4B64
	mGetPalette 5 16 0x20
	mGetTiles 0x8730 20
	mAddHitbox 0 0xFA 0xF0 0x06 0x0E
	mDisplayFrame 0x3 0x0

anim_0209__v0_l1: @ 80E4B90
	mGetTiles 0x8744 20
	mDisplayFrame 0x3 0x1

	mGetTiles 0x8758 20
	mDisplayFrame 0x3 0x2

	mGetTiles 0x876C 20
	mDisplayFrame 0x3 0x3

anim_0209__v0_l2: @ 80E4BCC
	mJumpBack anim_0209__v0_l1

anim_0209__v1_l0: @ 80E4BD4
	mGetPalette 5 16 0x20
	mGetTiles 0x8780 20
	mAddHitbox 0 0xFA 0xF0 0x06 0x0E
	mDisplayFrame 0x3 0x4

	mGetTiles 0x8794 20
	mDisplayFrame 0x3 0x5

	mGetTiles 0x87A8 20
	mDisplayFrame 0x3 0x6

	mGetTiles 0x87BC 25
	mDisplayFrame 0x3 0x7

	mGetTiles 0x87D5 30
	mDisplayFrame 0x3 0x8

	mGetTiles 0x87F3 30
	mDisplayFrame 0x3 0x9

	mEnd 

anim_0209__v2_l0: @ 80E4C68
	mGetPalette 5 16 0x20
	mGetTiles 0x8811 30
	mAddHitbox 0 0xFA 0xF0 0x06 0x0E
	mDisplayFrame 0x3 0xA

	mGetTiles 0x882F 30
	mDisplayFrame 0x3 0xB

	mGetTiles 0x884D 30
	mDisplayFrame 0x3 0xC

anim_0209__v2_l1: @ 80E4CBC
	mJumpBack anim_0209__v2_l0

anim_0209__v3_l0: @ 80E4CC4
	mGetPalette 5 16 0x20
	mGetTiles 0x886B 30
	mAddHitbox 0 0xFA 0xF0 0x06 0x0E
	mDisplayFrame 0x3 0xD

	mGetTiles 0x8889 16
	mAddHitbox 0 0xFA 0xFE 0x06 0x1C
	mDisplayFrame 0x1 0xE

	mGetTiles 0x8899 16
	mDisplayFrame 0x1 0xF

	mGetTiles 0x8889 16
	mDisplayFrame 0x1 0xE

	mEnd 

anim_0209:
	.4byte anim_0209__v0_l0
	.4byte anim_0209__v1_l0
	.4byte anim_0209__v2_l0
	.4byte anim_0209__v3_l0


anim_0210__v0_l0: @ 80E4D4C
	mGetPalette 5 16 0x20
	mGetTiles 0x88A9 20
	mAddHitbox 0 0xFA 0xF0 0x06 0x0E
	mDisplayFrame 0x4 0x0

	mGetTiles 0x88BD 20
	mDisplayFrame 0x4 0x1

	mGetTiles 0x88D1 20
	mDisplayFrame 0x4 0x2

	mGetTiles 0x88E5 25
	mDisplayFrame 0x4 0x3

	mGetTiles 0x88FE 25
	mDisplayFrame 0x4 0x4

	mGetTiles 0x8917 25
	mDisplayFrame 0x4 0x5

	mGetTiles 0x8930 20
	mDisplayFrame 0x4 0x6

	mGetTiles 0x8944 20
	mDisplayFrame 0x4 0x7

	mGetTiles 0x8958 25
	mDisplayFrame 0x4 0x8

	mGetTiles 0x8971 20
	mDisplayFrame 0x4 0x9

	mGetTiles 0x8985 25
	mDisplayFrame 0x4 0xA

	mEnd 

anim_0210:
	.4byte anim_0210__v0_l0


anim_0211__v0_l0: @ 80E4E48
	mGetPalette 5 16 0x20
	mGetTiles 0x899E 16
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x4 0x0

anim_0211__v0_l1: @ 80E4E74
	mGetTiles 0x89AE 16
	mDisplayFrame 0x6 0x1

	mGetTiles 0x89BE 16
	mDisplayFrame 0x6 0x2

	mGetTiles 0x89CE 16
	mDisplayFrame 0x6 0x3

	mGetTiles 0x89DE 16
	mDisplayFrame 0x6 0x4

	mGetTiles 0x89EE 16
	mDisplayFrame 0x6 0x5

	mGetTiles 0x89FE 16
	mDisplayFrame 0x6 0x6

	mGetTiles 0x8A0E 16
	mDisplayFrame 0x6 0x7

	mGetTiles 0x8A1E 16
	mDisplayFrame 0x6 0x8

anim_0211__v0_l2: @ 80E4F14
	mJumpBack anim_0211__v0_l1

anim_0211__v1_l0: @ 80E4F1C
	mGetPalette 5 16 0x20
	mGetTiles 0x899E 16
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x4 0x0

	mEnd 

anim_0211:
	.4byte anim_0211__v0_l0
	.4byte anim_0211__v1_l0


anim_0212__v0_l0: @ 80E4F54
	mGetPalette 5 16 0x20
	mGetTiles 0x8A2E 25
	mAddHitbox 0 0xF9 0xF2 0x05 0x10
	mDisplayFrame 0x2 0x0

anim_0212__v0_l1: @ 80E4F80
	mGetTiles 0x8A47 30
	mDisplayFrame 0x3 0x1

	mGetTiles 0x8A65 36
	mDisplayFrame 0x3 0x2

	mGetTiles 0x8A89 36
	mDisplayFrame 0x3 0x3

	mGetTiles 0x8AAD 30
	mDisplayFrame 0x3 0x4

	mGetTiles 0x8ACB 30
	mDisplayFrame 0x3 0x5

	mGetTiles 0x8AE9 30
	mDisplayFrame 0x3 0x6

anim_0212__v0_l2: @ 80E4FF8
	mJumpBack anim_0212__v0_l1

anim_0212__v1_l0: @ 80E5000
	mGetPalette 5 16 0x20
	mGetTiles 0x8B07 25
	mAddHitbox 0 0x02 0xF2 0x0E 0x10
	mDisplayFrame 0x2 0x7

	mEnd 

anim_0212:
	.4byte anim_0212__v0_l0
	.4byte anim_0212__v1_l0


anim_0213__v0_l0: @ 80E5038
	mGetPalette 5 16 0x20
	mGetTiles 0x8B20 25
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x2 0x0

anim_0213__v0_l1: @ 80E5064
	mGetTiles 0x8B39 30
	mDisplayFrame 0x4 0x1

	mGetTiles 0x8B57 30
	mDisplayFrame 0x4 0x2

	mGetTiles 0x8B75 25
	mDisplayFrame 0x4 0x3

	mGetTiles 0x8B8E 36
	mDisplayFrame 0x4 0x4

	mGetTiles 0x8BB2 36
	mDisplayFrame 0x4 0x5

	mGetTiles 0x8BD6 36
	mDisplayFrame 0x4 0x6

anim_0213__v0_l2: @ 80E50DC
	mJumpBack anim_0213__v0_l1

anim_0213__v1_l0: @ 80E50E4
	mGetPalette 5 16 0x20
	mGetTiles 0x8BFA 25
	mAddHitbox 0 0xFC 0xF2 0x08 0x10
	mDisplayFrame 0x2 0x7

	mEnd 

anim_0213:
	.4byte anim_0213__v0_l0
	.4byte anim_0213__v1_l0


anim_0216__v0_l0: @ 80E511C
	mGetPalette 5 16 0x20
	mGetTiles 0x8C13 30
	mAddHitbox 0 0xFA 0xF2 0x06 0x0E
	mPlaySoundEffect 191
	mDisplayFrame 0x6 0x0

	mGetTiles 0x8C31 30
	mDisplayFrame 0x6 0x1

	mEnd 

anim_0216:
	.4byte anim_0216__v0_l0


anim_0217__v0_l0: @ 80E516C
	mGetPalette 5 16 0x20
	mGetTiles 0x8C4F 16
	mAddHitbox 0 0xF8 0xF8 0x08 0x08
	mAddHitbox 1 0xF8 0xF8 0x08 0x08
	mDisplayFrame 0x2 0x0

	mGetTiles 0x8C5F 16
	mDisplayFrame 0x2 0x1

	mGetTiles 0x8C6F 16
	mDisplayFrame 0x2 0x2

	mGetTiles 0x8C7F 16
	mDisplayFrame 0x2 0x3

anim_0217__v0_l1: @ 80E51E0
	mJumpBack anim_0217__v0_l0

anim_0217__v1_l0: @ 80E51E8
	mGetPalette 5 16 0x20
	mGetTiles 0x8C8F 16
	mAddHitbox 0 0xF8 0xF8 0x08 0x08
	mAddHitbox 1 0xF8 0xF8 0x08 0x08
	mDisplayFrame 0x2 0x4

	mGetTiles 0x8C9F 16
	mDisplayFrame 0x2 0x5

	mGetTiles 0x8CAF 16
	mDisplayFrame 0x2 0x6

	mGetTiles 0x8CBF 16
	mDisplayFrame 0x2 0x7

	mEnd 

anim_0217:
	.4byte anim_0217__v0_l0
	.4byte anim_0217__v1_l0


anim_0218__v0_l0: @ 80E5268
	mGetPalette 5 16 0x20
	mGetTiles 0x8CCF 25
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x3 0x0

	mGetTiles 0x8CE8 20
	mDisplayFrame 0x3 0x1

	mGetTiles 0x8CFC 20
	mDisplayFrame 0x3 0x2

	mGetTiles 0x8D10 20
	mDisplayFrame 0x3 0x3

anim_0218__v0_l1: @ 80E52D0
	mGetTiles 0x8D24 15
	mDisplayFrame 0x3 0x4

anim_0218__v0_l2: @ 80E52E4
	mJumpBack anim_0218__v0_l1

anim_0218:
	.4byte anim_0218__v0_l0


anim_0220__v0_l0: @ 80E52F0
	mGetPalette 5 16 0x20
	mGetTiles 0x8D33 30
	mDisplayFrame 0x3 0x0

	mGetTiles 0x8D51 36
	mDisplayFrame 0x3 0x1

	mGetTiles 0x8D33 30
	mDisplayFrame 0x3 0x0

	mGetTiles 0x8D75 25
	mDisplayFrame 0x3 0x2

anim_0220__v0_l1: @ 80E534C
	mGetTiles 0x8D8E 20
	mDisplayFrame 0x3 0x3

	mGetTiles 0x8DA2 20
	mDisplayFrame 0x3 0x4

anim_0220__v0_l2: @ 80E5374
	mJumpBack anim_0220__v0_l1

anim_0220:
	.4byte anim_0220__v0_l0


anim_0221__v0_l0: @ 80E5380
	mGetPalette 5 16 0x20
	mGetTiles 0x8DB6 20
	mDisplayFrame 0x3 0x0

	mGetTiles 0x8DCA 20
	mDisplayFrame 0x3 0x1

	mGetTiles 0x8DDE 24
	mDisplayFrame 0x3 0x2

	mGetTiles 0x8DF6 25
	mDisplayFrame 0x3 0x3

	mGetTiles 0x8E0F 20
	mDisplayFrame 0x3 0x4

	mGetTiles 0x8E23 20
	mDisplayFrame 0x3 0x5

	mGetTiles 0x8E37 25
	mDisplayFrame 0x3 0x6

	mGetTiles 0x8E50 25
	mDisplayFrame 0x3 0x7

anim_0221__v0_l1: @ 80E542C
	mGetTiles 0x8E69 24
	mDisplayFrame 0x3 0x8

	mGetTiles 0x8E81 30
	mDisplayFrame 0x3 0x9

	mGetTiles 0x8E9F 30
	mDisplayFrame 0x3 0xA

	mGetTiles 0x8EBD 24
	mDisplayFrame 0x3 0xB

	mGetTiles 0x8ED5 24
	mDisplayFrame 0x3 0xC

	mGetTiles 0x8EED 24
	mDisplayFrame 0x3 0xD

	mGetTiles 0x8F05 30
	mDisplayFrame 0x3 0xE

	mGetTiles 0x8F23 30
	mDisplayFrame 0x3 0xF

anim_0221__v0_l2: @ 80E54CC
	mJumpBack anim_0221__v0_l1

anim_0221:
	.4byte anim_0221__v0_l0


anim_0222__v0_l0: @ 80E54D8
	mGetPalette 5 16 0x20
	mGetTiles 0x8F41 20
	mDisplayFrame 0x4 0x0

	mGetTiles 0x8F55 30
	mDisplayFrame 0x6 0x1

	mGetTiles 0x8F73 20
	mDisplayFrame 0x4 0x2

	mGetTiles 0x8F87 20
	mDisplayFrame 0x4 0x3

	mGetTiles 0x8F9B 20
	mDisplayFrame 0x4 0x4

	mGetTiles 0x8FAF 15
	mDisplayFrame 0x6 0x5

	mGetTiles 0x8FBE 20
	mDisplayFrame 0x10 0x6

	mGetTiles 0x8FD2 15
	mDisplayFrame 0x6 0x7

	mGetTiles 0x8FE1 20
	mDisplayFrame 0x6 0x8

	mGetTiles 0x8FF5 20
	mDisplayFrame 0x4 0x9

	mGetTiles 0x9009 20
	mDisplayFrame 0x4 0xA

	mGetTiles 0x901D 20
	mDisplayFrame 0x4 0xB

	mGetTiles 0x9031 25
	mDisplayFrame 0x4 0xC

	mGetTiles 0x904A 25
	mDisplayFrame 0x4 0xD

	mGetTiles 0x8FF5 20
	mDisplayFrame 0x4 0x9

	mGetTiles 0x9009 20
	mDisplayFrame 0x4 0xA

	mGetTiles 0x901D 20
	mDisplayFrame 0x4 0xB

	mGetTiles 0x9031 25
	mDisplayFrame 0x4 0xC

	mGetTiles 0x904A 25
	mDisplayFrame 0x4 0xD

	mGetTiles 0x8FF5 20
	mDisplayFrame 0xC 0x9

	mGetTiles 0x9063 20
	mDisplayFrame 0x3 0xE

	mGetTiles 0x9077 20
	mDisplayFrame 0x1E 0xF

	mEnd 

anim_0222:
	.4byte anim_0222__v0_l0


anim_0223__v0_l0: @ 80E56A4
	mGetPalette 5 16 0x20
	mGetTiles 0x908B 25
	mDisplayFrame 0x3 0x0

	mGetTiles 0x90A4 25
	mDisplayFrame 0x3 0x1

	mGetTiles 0x90BD 25
	mDisplayFrame 0x1 0x2

	mGetTiles 0x90D6 25
	mDisplayFrame 0x1A 0x3

	mGetTiles 0x908B 25
	mDisplayFrame 0x3 0x0

	mGetTiles 0x90EF 20
	mDisplayFrame 0xA 0x4

	mGetTiles 0x9103 20
	mDisplayFrame 0x1 0x5

	mGetTiles 0x9117 30
	mDisplayFrame 0x2 0x6

	mGetTiles 0x9135 30
	mDisplayFrame 0x2 0x7

	mGetTiles 0x9153 35
	mDisplayFrame 0x4 0x8

	mGetTiles 0x9117 30
	mDisplayFrame 0x2 0x6

	mGetTiles 0x9103 20
	mDisplayFrame 0x1 0x5

	mGetTiles 0x9176 20
	mDisplayFrame 0x6 0x9

	mGetTiles 0x918A 20
	mDisplayFrame 0x1 0xA

	mGetTiles 0x919E 20
	mDisplayFrame 0x2 0xB

	mGetTiles 0x91B2 35
	mDisplayFrame 0x4 0xC

	mGetTiles 0x91D5 35
	mDisplayFrame 0x2 0xD

	mGetTiles 0x919E 20
	mDisplayFrame 0x2 0xB

	mGetTiles 0x918A 20
	mDisplayFrame 0x2 0xA

	mGetTiles 0x90EF 20
	mDisplayFrame 0x2 0x4

	mEnd 

anim_0223:
	.4byte anim_0223__v0_l0


anim_0224__v0_l0: @ 80E5848
	mGetPalette 5 16 0x90
	mGetTiles 0x91F8 20
	mDisplayFrame 0x3 0x0

	mGetTiles 0x920C 20
	mDisplayFrame 0x3 0x1

	mGetTiles 0x9220 20
	mDisplayFrame 0x3 0x2

	mGetTiles 0x9234 20
	mDisplayFrame 0x3 0x3

anim_0224__v0_l1: @ 80E58A4
	mJumpBack anim_0224__v0_l0

anim_0224:
	.4byte anim_0224__v0_l0


anim_0225__v0_l0: @ 80E58B0
	mGetPalette 5 16 0x90
	mGetTiles 0x9248 30
	mDisplayFrame 0x14 0x0

	mGetTiles 0x9266 36
	mDisplayFrame 0xA 0x1

	mGetTiles 0x928A 42
	mDisplayFrame 0x8 0x2

	mGetTiles 0x92B4 42
	mDisplayFrame 0x7 0x3

	mGetTiles 0x92DE 42
	mDisplayFrame 0x5 0x4

	mGetTiles 0x9308 42
	mDisplayFrame 0x3 0x5

anim_0225__v0_l1: @ 80E5934
	mGetTiles 0x9332 42
	mDisplayFrame 0x2 0x6

	mGetTiles 0x935C 42
	mDisplayFrame 0x2 0x7

	mGetTiles 0x9386 42
	mDisplayFrame 0x2 0x8

anim_0225__v0_l2: @ 80E5970
	mJumpBack anim_0225__v0_l1

anim_0225:
	.4byte anim_0225__v0_l0


anim_0226__v0_l0: @ 80E597C
	mGetPalette 5 16 0x20
	mGetTiles 0x93B0 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x0

	mGetTiles 0x93F0 64
	mDisplayFrame 0x2 0x1

anim_0226__v0_l1: @ 80E59BC
	mJumpBack anim_0226__v0_l0

anim_0226__v1_l0: @ 80E59C4
	mGetPalette 5 16 0x20
	mGetTiles 0x9430 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x2

	mGetTiles 0x9470 64
	mDisplayFrame 0x2 0x3

anim_0226__v1_l1: @ 80E5A04
	mJumpBack anim_0226__v1_l0

anim_0226__v2_l0: @ 80E5A0C
	mGetPalette 5 16 0x20
	mGetTiles 0x94B0 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x4

	mGetTiles 0x94F0 64
	mDisplayFrame 0x2 0x5

anim_0226__v2_l1: @ 80E5A4C
	mJumpBack anim_0226__v2_l0

anim_0226__v3_l0: @ 80E5A54
	mGetPalette 5 16 0x20
	mGetTiles 0x9530 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x6

	mGetTiles 0x9570 64
	mDisplayFrame 0x2 0x7

anim_0226__v3_l1: @ 80E5A94
	mJumpBack anim_0226__v3_l0

anim_0226__v4_l0: @ 80E5A9C
	mGetPalette 5 16 0x20
	mGetTiles 0x95B0 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x8

	mGetTiles 0x95F0 64
	mDisplayFrame 0x2 0x9

anim_0226__v4_l1: @ 80E5ADC
	mJumpBack anim_0226__v4_l0

anim_0226__v5_l0: @ 80E5AE4
	mGetPalette 5 16 0x20
	mGetTiles 0x9630 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xA

	mGetTiles 0x9670 64
	mDisplayFrame 0x2 0xB

anim_0226__v5_l1: @ 80E5B24
	mJumpBack anim_0226__v5_l0

anim_0226__v6_l0: @ 80E5B2C
	mGetPalette 5 16 0x20
	mGetTiles 0x96B0 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xC

	mGetTiles 0x96F0 64
	mDisplayFrame 0x2 0xD

anim_0226__v6_l1: @ 80E5B6C
	mJumpBack anim_0226__v6_l0

anim_0226__v7_l0: @ 80E5B74
	mGetPalette 5 16 0x20
	mGetTiles 0x9730 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xE

	mGetTiles 0x9770 64
	mDisplayFrame 0x2 0xF

anim_0226__v7_l1: @ 80E5BB4
	mJumpBack anim_0226__v7_l0

anim_0226__v8_l0: @ 80E5BBC
	mGetPalette 5 16 0x20
	mGetTiles 0x97B0 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x10

	mGetTiles 0x97F0 64
	mDisplayFrame 0x2 0x11

anim_0226__v8_l1: @ 80E5BFC
	mJumpBack anim_0226__v8_l0

anim_0226:
	.4byte anim_0226__v0_l0
	.4byte anim_0226__v1_l0
	.4byte anim_0226__v2_l0
	.4byte anim_0226__v3_l0
	.4byte anim_0226__v4_l0
	.4byte anim_0226__v5_l0
	.4byte anim_0226__v6_l0
	.4byte anim_0226__v7_l0
	.4byte anim_0226__v8_l0


anim_0227__v0_l0: @ 80E5C28
	mGetPalette 5 16 0x20
	mGetTiles 0x9830 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x0

	mGetTiles 0x9870 64
	mDisplayFrame 0x2 0x1

anim_0227__v0_l1: @ 80E5C68
	mJumpBack anim_0227__v0_l0

anim_0227__v1_l0: @ 80E5C70
	mGetPalette 5 16 0x20
	mGetTiles 0x98B0 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x2

	mGetTiles 0x98F0 64
	mDisplayFrame 0x2 0x3

anim_0227__v1_l1: @ 80E5CB0
	mJumpBack anim_0227__v1_l0

anim_0227__v2_l0: @ 80E5CB8
	mGetPalette 5 16 0x20
	mGetTiles 0x9930 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x4

	mGetTiles 0x9970 64
	mDisplayFrame 0x2 0x5

anim_0227__v2_l1: @ 80E5CF8
	mJumpBack anim_0227__v2_l0

anim_0227__v3_l0: @ 80E5D00
	mGetPalette 5 16 0x20
	mGetTiles 0x99B0 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x6

	mGetTiles 0x99F0 64
	mDisplayFrame 0x2 0x7

anim_0227__v3_l1: @ 80E5D40
	mJumpBack anim_0227__v3_l0

anim_0227__v4_l0: @ 80E5D48
	mGetPalette 5 16 0x20
	mGetTiles 0x9A30 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x8

	mGetTiles 0x9A70 64
	mDisplayFrame 0x2 0x9

anim_0227__v4_l1: @ 80E5D88
	mJumpBack anim_0227__v4_l0

anim_0227__v5_l0: @ 80E5D90
	mGetPalette 5 16 0x20
	mGetTiles 0x9AB0 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xA

	mGetTiles 0x9AB0 64
	mDisplayFrame 0x2 0xA

anim_0227__v5_l1: @ 80E5DD0
	mJumpBack anim_0227__v5_l0

anim_0227__v6_l0: @ 80E5DD8
	mGetPalette 5 16 0x20
	mGetTiles 0x9AF0 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xB

	mGetTiles 0x9B30 64
	mDisplayFrame 0x2 0xC

anim_0227__v6_l1: @ 80E5E18
	mJumpBack anim_0227__v6_l0

anim_0227__v7_l0: @ 80E5E20
	mGetPalette 5 16 0x20
	mGetTiles 0x9B70 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xD

	mGetTiles 0x9BB0 64
	mDisplayFrame 0x2 0xE

anim_0227__v7_l1: @ 80E5E60
	mJumpBack anim_0227__v7_l0

anim_0227:
	.4byte anim_0227__v0_l0
	.4byte anim_0227__v1_l0
	.4byte anim_0227__v2_l0
	.4byte anim_0227__v3_l0
	.4byte anim_0227__v4_l0
	.4byte anim_0227__v5_l0
	.4byte anim_0227__v6_l0
	.4byte anim_0227__v7_l0


anim_0228__v0_l0: @ 80E5E88
	mGetPalette 5 16 0x20
	mGetTiles 0x9BF0 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x4 0x0

anim_0228__v0_l1: @ 80E5EB4
	mGetTiles 0x9C30 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x1

	mGetTiles 0x9C70 64
	mDisplayFrame 0x2 0x2

anim_0228__v0_l2: @ 80E5EE8
	mJumpBack anim_0228__v0_l1

anim_0228__v1_l0: @ 80E5EF0
	mGetPalette 5 16 0x20
	mGetTiles 0x9BF0 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x4 0x0

	mEnd 

anim_0228:
	.4byte anim_0228__v0_l0
	.4byte anim_0228__v1_l0


anim_0229__v0_l0: @ 80E5F28
	mGetPalette 5 16 0x20
	mGetTiles 0x9CB0 64
	mAddHitbox 0 0xEC 0xEC 0x14 0x14
	mDisplayFrame 0x2 0x0

	mGetTiles 0x9CF0 64
	mDisplayFrame 0x2 0x1

	mGetTiles 0x9D30 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0x9D70 64
	mDisplayFrame 0x2 0x3

	mGetTiles 0x9DB0 64
	mDisplayFrame 0x2 0x4

	mGetTiles 0x9DF0 64
	mDisplayFrame 0x2 0x5

	mGetTiles 0x9E30 64
	mDisplayFrame 0x2 0x6

	mGetTiles 0x9E70 64
	mDisplayFrame 0x2 0x7

	mGetTiles 0x9EB0 64
	mDisplayFrame 0x2 0x8

	mGetTiles 0x9EF0 64
	mDisplayFrame 0x2 0x9

	mGetTiles 0x9F30 64
	mDisplayFrame 0x2 0xA

anim_0229__v0_l1: @ 80E601C
	mJumpBack anim_0229__v0_l0

anim_0229:
	.4byte anim_0229__v0_l0


anim_0230__v0_l0: @ 80E6028
	mGetPalette 5 16 0x20
	mGetTiles 0x9F70 64
	mAddHitbox 0 0xF2 0xF2 0x0E 0x0E
	mDisplayFrame 0x3 0x0

	mGetTiles 0x9FB0 64
	mDisplayFrame 0x3 0x1

	mGetTiles 0x9FF0 64
	mDisplayFrame 0x3 0x2

	mGetTiles 0xA030 64
	mDisplayFrame 0x3 0x3

	mGetTiles 0xA070 64
	mDisplayFrame 0x3 0x4

	mGetTiles 0xA0B0 64
	mDisplayFrame 0x3 0x5

	mGetTiles 0xA0F0 64
	mDisplayFrame 0x3 0x6

	mGetTiles 0xA130 64
	mDisplayFrame 0x3 0x7

	mGetTiles 0xA170 64
	mDisplayFrame 0x3 0x8

	mGetTiles 0xA1B0 64
	mDisplayFrame 0x3 0x9

	mGetTiles 0xA1F0 64
	mDisplayFrame 0x3 0xA

	mGetTiles 0xA230 64
	mDisplayFrame 0x3 0xB

	mGetTiles 0xA270 64
	mDisplayFrame 0x3 0xC

	mGetTiles 0xA2B0 64
	mDisplayFrame 0x3 0xD

	mEnd 

anim_0230:
	.4byte anim_0230__v0_l0


anim_0231__v0_l0: @ 80E6160
	mGetPalette 5 16 0x20
	mGetTiles 0xA2F0 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x3 0x0

	mGetTiles 0xA330 64
	mDisplayFrame 0x3 0x1

	mGetTiles 0xA370 64
	mDisplayFrame 0x3 0x2

	mGetTiles 0xA3B0 64
	mDisplayFrame 0x3 0x3

	mGetTiles 0xA3F0 64
	mDisplayFrame 0x3 0x4

	mGetTiles 0xA430 64
	mDisplayFrame 0x3 0x5

	mGetTiles 0xA470 64
	mDisplayFrame 0x3 0x6

anim_0231__v0_l1: @ 80E6204
	mJumpBack anim_0231__v0_l0

anim_0231:
	.4byte anim_0231__v0_l0


anim_0232__v0_l0: @ 80E6210
	mGetPalette 5 16 0x20
	mGetTiles 0xA4B0 64
	mDisplayFrame 0x6 0x0

anim_0232__v0_l1: @ 80E6230
	mGetTiles 0xA4F0 64
	mDisplayFrame 0x3 0x1

	mGetTiles 0xA530 64
	mDisplayFrame 0x3 0x2

anim_0232__v0_l2: @ 80E6258
	mJumpBack anim_0232__v0_l1

anim_0232__v1_l0: @ 80E6260
	mGetPalette 5 16 0x20
	mGetTiles 0xA4B0 64
	mDisplayFrame 0x6 0x0

	mEnd 

anim_0232:
	.4byte anim_0232__v0_l0
	.4byte anim_0232__v1_l0


anim_0233__v0_l0: @ 80E628C
	mGetPalette 5 16 0x20
	mGetTiles 0xA570 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x0

	mGetTiles 0xA5B0 64
	mDisplayFrame 0x2 0x1

anim_0233__v0_l1: @ 80E62CC
	mJumpBack anim_0233__v0_l0

anim_0233__v1_l0: @ 80E62D4
	mGetPalette 5 16 0x20
	mGetTiles 0xA5F0 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0xA630 64
	mDisplayFrame 0x2 0x3

	mGetTiles 0xA670 64
	mDisplayFrame 0x2 0x4

	mGetTiles 0xA6B0 64
	mDisplayFrame 0x2 0x5

	mGetTiles 0xA6F0 64
	mDisplayFrame 0x2 0x6

	mGetTiles 0xA730 64
	mDisplayFrame 0x2 0x7

anim_0233__v1_l1: @ 80E6358
	mJumpBack anim_0233__v1_l0

anim_0233:
	.4byte anim_0233__v0_l0
	.4byte anim_0233__v1_l0


anim_0234__v0_l0: @ 80E6368
	mGetPalette 5 16 0x90
	mGetTiles 0xA770 16
	mDisplayFrame 0x1 0x0

	mGetTiles 0xA780 16
	mDisplayFrame 0x1 0x1

	mGetTiles 0xA790 16
	mDisplayFrame 0x10 0x2

	mGetTiles 0xA7A0 16
	mDisplayFrame 0x4 0x3

	mGetTiles 0xA7B0 16
	mDisplayFrame 0x4 0x4

	mGetTiles 0xA7C0 20
	mDisplayFrame 0x4 0x5

	mGetTiles 0xA7D4 20
	mDisplayFrame 0x4 0x6

	mGetTiles 0xA7E8 25
	mDisplayFrame 0x1E 0x7

	mEnd 

anim_0234:
	.4byte anim_0234__v0_l0


anim_0235__v0_l0: @ 80E641C
	mGetPalette 5 16 0x20
	mGetTiles 0xA801 16
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x3 0x0

	mGetTiles 0xA811 16
	mDisplayFrame 0x3 0x1

	mGetTiles 0xA821 20
	mDisplayFrame 0x3 0x2

	mGetTiles 0xA835 16
	mDisplayFrame 0x3 0x3

	mGetTiles 0xA845 16
	mDisplayFrame 0x3 0x4

	mGetTiles 0xA855 16
	mDisplayFrame 0x3 0x5

	mGetTiles 0xA865 16
	mDisplayFrame 0x3 0x6

	mGetTiles 0xA875 16
	mDisplayFrame 0x3 0x7

anim_0235__v0_l1: @ 80E64D4
	mJumpBack anim_0235__v0_l0

anim_0235__v1_l0: @ 80E64DC
	mGetPalette 5 16 0x20
	mGetTiles 0xA885 30
	mAddHitbox 0 0xFA 0xF0 0x06 0x10
	mDisplayFrame 0x3 0x8

	mGetTiles 0xA8A3 25
	mDisplayFrame 0x3 0x9

	mGetTiles 0xA8BC 20
	mDisplayFrame 0x3 0xA

	mGetTiles 0xA8D0 25
	mDisplayFrame 0x3 0xB

	mGetTiles 0xA8E9 30
	mDisplayFrame 0x3 0xC

	mGetTiles 0xA907 25
	mDisplayFrame 0x3 0xD

	mGetTiles 0xA920 30
	mDisplayFrame 0x3 0xE

	mGetTiles 0xA93E 25
	mDisplayFrame 0x3 0xF

anim_0235__v1_l1: @ 80E6594
	mJumpBack anim_0235__v1_l0

anim_0235__v2_l0: @ 80E659C
	mGetPalette 5 16 0x20
	mGetTiles 0xA957 30
	mAddHitbox 0 0xFA 0xF0 0x06 0x10
	mDisplayFrame 0x3 0x10

	mGetTiles 0xA975 25
	mDisplayFrame 0x3 0x11

	mGetTiles 0xA98E 30
	mDisplayFrame 0x3 0x12

	mGetTiles 0xA9AC 25
	mDisplayFrame 0x3 0x13

	mGetTiles 0xA9C5 30
	mDisplayFrame 0x3 0x14

	mGetTiles 0xA9E3 30
	mDisplayFrame 0x3 0x15

	mGetTiles 0xAA01 25
	mDisplayFrame 0x3 0x16

	mGetTiles 0xAA1A 30
	mDisplayFrame 0x3 0x17

anim_0235__v2_l1: @ 80E6654
	mJumpBack anim_0235__v2_l0

anim_0235:
	.4byte anim_0235__v0_l0
	.4byte anim_0235__v1_l0
	.4byte anim_0235__v2_l0


anim_0236__v0_l0: @ 80E6668
	mGetPalette 5 16 0x20
	mGetTiles 0xAA38 25
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x2 0x0

	mGetTiles 0xAA51 24
	mDisplayFrame 0x2 0x1

	mGetTiles 0xAA69 20
	mDisplayFrame 0x4 0x2

	mGetTiles 0xAA7D 25
	mDisplayFrame 0x1 0x3

	mGetTiles 0xAA96 25
	mDisplayFrame 0x1 0x4

	mGetTiles 0xAAAF 30
	mAddHitbox 0 0xF8 0xF2 0x04 0x10
	mDisplayFrame 0x2 0x5

	mGetTiles 0xAACD 30
	mDisplayFrame 0x2 0x6

	mGetTiles 0xAAEB 30
	mDisplayFrame 0x2 0x7

	mEnd 

anim_0236:
	.4byte anim_0236__v0_l0


anim_0237__v0_l0: @ 80E6734
	mGetPalette 5 16 0x20
	mGetTiles 0xAB09 30
	mAddHitbox 0 0xFA 0xEE 0x08 0x0E
	mDisplayFrame 0x3 0x0

	mGetTiles 0xAB27 30
	mDisplayFrame 0x3 0x1

	mGetTiles 0xAB45 30
	mDisplayFrame 0x3 0x2

	mGetTiles 0xAB63 24
	mDisplayFrame 0x2 0x3

	mGetTiles 0xAB7B 20
	mAddHitbox 0 0xFA 0xF0 0x06 0x0E
	mDisplayFrame 0x2 0x4

	mEnd 

anim_0237:
	.4byte anim_0237__v0_l0


anim_0238__v0_l0: @ 80E67C4
	mGetPalette 5 16 0x20
	mGetTiles 0xAB8F 64
	mDisplayFrame 0x2 0x0

	mGetTiles 0xABCF 64
	mDisplayFrame 0x2 0x1

	mGetTiles 0xAC0F 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0xAC4F 64
	mDisplayFrame 0x2 0x3

anim_0238__v0_l1: @ 80E6820
	mJumpBack anim_0238__v0_l0

anim_0238:
	.4byte anim_0238__v0_l0


anim_0239__v0_l0: @ 80E682C
	mGetPalette 5 16 0x20
	mGetTiles 0xAC8F 28
	mAddHitbox 0 0xE2 0xE8 0xFA 0xFA
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x0

	mGetTiles 0xACAB 20
	mAddHitbox 0 0xEA 0xE8 0xFC 0xFA
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x1

	mGetTiles 0xACBF 12
	mAddHitbox 0 0xFA 0xE8 0x02 0xFA
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x2

	mGetTiles 0xACCB 20
	mAddHitbox 0 0xFE 0xE8 0x06 0xFA
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x3

	mGetTiles 0xACDF 20
	mAddHitbox 0 0x08 0xE8 0x1A 0xFA
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x4

	mGetTiles 0xACF3 28
	mAddHitbox 0 0x06 0xE8 0x22 0xFA
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x5

	mGetTiles 0xAD0F 20
	mAddHitbox 0 0x08 0xE8 0x1A 0xFA
	mAnimCmd12 0x13
	mDisplayFrame 0x3 0x6

	mGetTiles 0xAD23 16
	mAddHitbox 0 0x02 0xE8 0x0A 0xFA
	mAnimCmd12 0x13
	mDisplayFrame 0x3 0x7

	mGetTiles 0xAD33 16
	mAddHitbox 0 0xF8 0xE8 0x00 0xFA
	mAnimCmd12 0x13
	mDisplayFrame 0x3 0x8

	mGetTiles 0xAD43 24
	mAddHitbox 0 0xEA 0xE8 0xFC 0xFA
	mAnimCmd12 0x13
	mDisplayFrame 0x3 0x9

anim_0239__v0_l1: @ 80E69C8
	mJumpBack anim_0239__v0_l0

anim_0239__v1_l0: @ 80E69D0
	mGetPalette 5 16 0x20
	mGetTiles 0xAD5B 28
	mAddHitbox 0 0xF8 0x01 0x08 0x23
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xA

	mGetTiles 0xAD77 20
	mAddHitbox 0 0xF8 0x01 0x08 0x17
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xB

	mGetTiles 0xAD8B 12
	mAddHitbox 0 0xF8 0xFD 0x08 0x09
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xC

	mGetTiles 0xAD97 20
	mAddHitbox 0 0xF8 0xF4 0x08 0x00
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xD

	mGetTiles 0xADAB 20
	mAddHitbox 0 0xF8 0xEC 0x08 0xFE
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xE

	mGetTiles 0xADBF 28
	mAddHitbox 0 0xF8 0xD8 0x08 0xFA
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xF

	mGetTiles 0xADDB 20
	mAddHitbox 0 0xF8 0xE8 0x08 0xFE
	mAnimCmdSetSpritePriority 0x3
	mDisplayFrame 0x3 0x10

	mGetTiles 0xADEF 16
	mAddHitbox 0 0xF8 0xF4 0x08 0x00
	mAnimCmdSetSpritePriority 0x3
	mDisplayFrame 0x3 0x11

	mGetTiles 0xADFF 16
	mAddHitbox 0 0xF8 0xFD 0x08 0x09
	mAnimCmdSetSpritePriority 0x3
	mDisplayFrame 0x3 0x12

	mGetTiles 0xAE0F 24
	mAddHitbox 0 0xF8 0x01 0x08 0x13
	mAnimCmdSetSpritePriority 0x3
	mDisplayFrame 0x3 0x13

anim_0239__v1_l1: @ 80E6B6C
	mJumpBack anim_0239__v1_l0

anim_0239:
	.4byte anim_0239__v0_l0
	.4byte anim_0239__v1_l0


anim_0240__v0_l0: @ 80E6B7C
	mGetPalette 5 16 0x20
	mGetTiles 0xAE27 24
	mAddHitbox 0 0xFA 0xED 0x06 0x07
	mDisplayFrame 0xA 0x0

	mGetTiles 0xAE3F 24
	mDisplayFrame 0xA 0x1

	mGetTiles 0xAE57 24
	mDisplayFrame 0xA 0x2

	mGetTiles 0xAE3F 24
	mDisplayFrame 0xA 0x1

anim_0240__v0_l1: @ 80E6BE4
	mJumpBack anim_0240__v0_l0

anim_0240__v1_l0: @ 80E6BEC
	mGetPalette 5 16 0x20
	mGetTiles 0xAE6F 24
	mAddHitbox 0 0xFA 0xED 0x06 0x07
	mDisplayFrame 0x5 0x3

	mGetTiles 0xAE87 24
	mDisplayFrame 0x5 0x4

	mGetTiles 0xAE9F 24
	mDisplayFrame 0x5 0x5

	mGetTiles 0xAE87 24
	mDisplayFrame 0x5 0x4

anim_0240__v1_l1: @ 80E6C54
	mJumpBack anim_0240__v1_l0

anim_0240:
	.4byte anim_0240__v0_l0
	.4byte anim_0240__v1_l0


anim_0241__v0_l0: @ 80E6C64
	mGetPalette 5 16 0x20
	mGetTiles 0xAEB7 36
	mAddHitbox 0 0xFA 0xF4 0x06 0x0A
	mDisplayFrame 0x5 0x0

	mGetTiles 0xAEDB 30
	mDisplayFrame 0x5 0x1

	mGetTiles 0xAEF9 20
	mDisplayFrame 0x5 0x2

	mGetTiles 0xAF0D 30
	mDisplayFrame 0x5 0x3

	mGetTiles 0xAF2B 36
	mDisplayFrame 0x5 0x4

	mGetTiles 0xAF4F 20
	mDisplayFrame 0x5 0x5

	mGetTiles 0xAF63 25
	mDisplayFrame 0x5 0x6

	mGetTiles 0xAF7C 20
	mDisplayFrame 0x5 0x7

anim_0241__v0_l1: @ 80E6D1C
	mJumpBack anim_0241__v0_l0

anim_0241:
	.4byte anim_0241__v0_l0


anim_0242__v0_l0: @ 80E6D28
	mGetPalette 5 16 0x20
	mGetTiles 0xAF90 30
	mDisplayFrame 0x8 0x0

	mGetTiles 0xAFAE 30
	mDisplayFrame 0x8 0x1

	mGetTiles 0xAFCC 30
	mDisplayFrame 0x8 0x2

	mGetTiles 0xAFAE 30
	mDisplayFrame 0x8 0x1

anim_0242__v0_l1: @ 80E6D84
	mJumpBack anim_0242__v0_l0

anim_0242:
	.4byte anim_0242__v0_l0


anim_0245__v0_l0: @ 80E6D90
	mGetPalette 5 16 0x20
	mGetTiles 0xAFEA 20
	mAddHitbox 0 0xFC 0xF8 0x12 0x06
	mDisplayFrame 0x6 0x0

	mGetTiles 0xAFFE 20
	mDisplayFrame 0x4 0x1

	mGetTiles 0xB012 20
	mDisplayFrame 0x4 0x2

	mGetTiles 0xB026 15
	mDisplayFrame 0x6 0x3

	mGetTiles 0xB035 20
	mDisplayFrame 0x6 0x4

	mGetTiles 0xB049 16
	mDisplayFrame 0x6 0x5

anim_0245__v0_l1: @ 80E6E20
	mJumpBack anim_0245__v0_l0

anim_0245:
	.4byte anim_0245__v0_l0


anim_0246__v0_l0: @ 80E6E2C
	mGetPalette 5 16 0x20
	mGetTiles 0xB059 24
	mAddHitbox 0 0xF4 0xF8 0x0A 0x06
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0246__v1_l0: @ 80E6E5C
	mGetPalette 5 16 0x20
	mGetTiles 0xB071 24
	mAddHitbox 0 0xF4 0xF8 0x0A 0x06
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0246__v2_l0: @ 80E6E8C
	mGetPalette 5 16 0x20
	mGetTiles 0xB089 24
	mAddHitbox 0 0xF4 0xF8 0x0A 0x06
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0246__v3_l0: @ 80E6EBC
	mGetPalette 5 16 0x20
	mGetTiles 0xB0A1 24
	mAddHitbox 0 0xF4 0xF8 0x0A 0x06
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0246:
	.4byte anim_0246__v0_l0
	.4byte anim_0246__v1_l0
	.4byte anim_0246__v2_l0
	.4byte anim_0246__v3_l0


anim_0249__v0_l0: @ 80E6EFC
	mGetPalette 5 16 0x20
	mGetTiles 0xB0B9 20
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x2 0x0

	mGetTiles 0xB0B9 20
	mDisplayFrame 0x2 0x0

	mGetTiles 0xB0CD 30
	mAddHitbox 0 0xF0 0xF2 0x02 0x10
	mAddHitbox 1 0xE0 0xF4 0xF2 0x10
	mPlaySoundEffect 126
	mDisplayFrame 0x2 0x1

	mGetTiles 0xB0EB 35
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mAddHitbox 1 0x00 0x00 0x00 0x00
	mDisplayFrame 0x4 0x2

	mGetTiles 0xB10E 30
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mAddHitbox 1 0x00 0x00 0x00 0x00
	mDisplayFrame 0x2 0x3

	mGetTiles 0xB0B9 20
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x2 0x0

	mEnd 

anim_0249__v1_l0: @ 80E6FEC
	mGetPalette 5 16 0x20
	mGetTiles 0xB12C 20
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x2 0x4

	mGetTiles 0xB140 20
	mDisplayFrame 0x2 0x5

	mGetTiles 0xB154 35
	mAddHitbox 0 0xEF 0xF2 0x06 0x10
	mAddHitbox 1 0xE0 0xF4 0xF2 0x10
	mDisplayFrame 0x2 0x6

	mGetTiles 0xB177 35
	mAddHitbox 0 0xEF 0xF2 0x06 0x10
	mAddHitbox 1 0x00 0x00 0x00 0x00
	mDisplayFrame 0x6 0x7

	mGetTiles 0xB140 20
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x2 0x5

	mGetTiles 0xB12C 20
	mDisplayFrame 0x2 0x4

	mEnd 

anim_0249:
	.4byte anim_0249__v0_l0
	.4byte anim_0249__v1_l0


anim_0250__v0_l0: @ 80E70C4
	mGetPalette 5 16 0x20
	mGetTiles 0xB19A 25
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x2 0x0

	mGetTiles 0xB1B3 25
	mDisplayFrame 0x2 0x1

	mEnd 

anim_0250__v1_l0: @ 80E7108
	mGetPalette 5 16 0x20
	mGetTiles 0xB1CC 28
	mAddHitbox 0 0xFA 0xEC 0x06 0x02
	mAddHitbox 1 0xF0 0xDD 0x00 0x10
	mDisplayFrame 0x6 0x2

	mGetTiles 0xB1E8 24
	mAddHitbox 0 0xFA 0xEC 0x06 0x02
	mAddHitbox 1 0x00 0x00 0x00 0x00
	mDisplayFrame 0x5 0x3

	mGetTiles 0xB200 30
	mDisplayFrame 0x4 0x4

	mGetTiles 0xB21E 30
	mDisplayFrame 0x3 0x5

anim_0250__v1_l1: @ 80E7194
	mGetTiles 0xB23C 30
	mDisplayFrame 0x2 0x6

	mGetTiles 0xB25A 30
	mDisplayFrame 0x2 0x7

	mGetTiles 0xB278 30
	mDisplayFrame 0x2 0x8

anim_0250__v1_l2: @ 80E71D0
	mJumpBack anim_0250__v1_l1

anim_0250__v2_l0: @ 80E71D8
	mGetPalette 5 16 0x20
	mGetTiles 0xB296 16
	mAddHitbox 0 0xFA 0xFA 0x06 0x10
	mDisplayFrame 0x1 0x9

	mGetTiles 0xB2A6 16
	mDisplayFrame 0x1 0xA

	mGetTiles 0xB296 16
	mDisplayFrame 0x1 0x9

	mEnd 

anim_0250__v3_l0: @ 80E7230
	mGetPalette 6 16 0x40
	mGetTiles 0xB2B6 6
	mDisplayFrame 0x2 0xB

	mGetTiles 0xB2BC 12
	mDisplayFrame 0x2 0xC

	mGetTiles 0xB2C8 20
	mDisplayFrame 0x2 0xD

	mGetTiles 0xB2DC 20
	mDisplayFrame 0x2 0xE

	mGetTiles 0xB2F0 24
	mDisplayFrame 0x3 0xF

	mGetTiles 0xB308 24
	mDisplayFrame 0x3 0x10

	mGetTiles 0xB320 24
	mDisplayFrame 0x3 0x11

	mGetTiles 0xB338 9
	mDisplayFrame 0x3 0x12

	mEnd 

anim_0250:
	.4byte anim_0250__v0_l0
	.4byte anim_0250__v1_l0
	.4byte anim_0250__v2_l0
	.4byte anim_0250__v3_l0


anim_0260__v0_l0: @ 80E72F0
	mGetPalette 5 16 0x20
	mGetTiles 0xB341 24
	mAddHitbox 0 0xFA 0xF8 0x10 0x06
	mAddHitbox 1 0xF4 0xF4 0x02 0x09
	mDisplayFrame 0x3 0x0

	mGetTiles 0xB359 24
	mDisplayFrame 0x3 0x1

anim_0260__v0_l1: @ 80E733C
	mJumpBack anim_0260__v0_l0

anim_0260:
	.4byte anim_0260__v0_l0


anim_0261__v0_l0: @ 80E7348
	mGetPalette 5 16 0x20
	mGetTiles 0xB371 24
	mAddHitbox 0 0xFA 0xF8 0x10 0x06
	mAddHitbox 1 0xF4 0xF4 0x02 0x09
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0261__v1_l0: @ 80E7384
	mGetPalette 5 16 0x20
	mGetTiles 0xB389 24
	mAddHitbox 0 0xF6 0xF8 0x0C 0x06
	mAddHitbox 1 0xF0 0xF4 0xFE 0x09
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0261__v2_l0: @ 80E73C0
	mGetPalette 5 16 0x20
	mGetTiles 0xB3A1 24
	mAddHitbox 0 0xF2 0xF8 0x08 0x06
	mAddHitbox 1 0x02 0xF4 0x10 0x09
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0261__v3_l0: @ 80E73FC
	mGetPalette 5 16 0x20
	mGetTiles 0xB3B9 24
	mAddHitbox 0 0xEE 0xF8 0x04 0x06
	mAddHitbox 1 0xFE 0xF4 0x0C 0x09
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0261:
	.4byte anim_0261__v0_l0
	.4byte anim_0261__v1_l0
	.4byte anim_0261__v2_l0
	.4byte anim_0261__v3_l0


anim_0262__v0_l0: @ 80E7448
	mGetPalette 5 16 0x20
	mGetTiles 0xB3D1 15
	mAddHitbox 0 0xFB 0xFA 0x15 0x07
	mAddHitbox 1 0xF5 0xF6 0x02 0x0A
	mDisplayFrame 0x2 0x0

	mGetTiles 0xB3E0 15
	mDisplayFrame 0x2 0x1

anim_0262__v0_l1: @ 80E7494
	mJumpBack anim_0262__v0_l0

anim_0262:
	.4byte anim_0262__v0_l0


anim_0263__v0_l0: @ 80E74A0
	mGetPalette 5 16 0x20
	mGetTiles 0xB3EF 20
	mAddHitbox 0 0xFA 0xF0 0x06 0x0E
	mDisplayFrame 0x3 0x0

	mGetTiles 0xB403 25
	mDisplayFrame 0x3 0x1

	mGetTiles 0xB41C 30
	mDisplayFrame 0x3 0x2

	mGetTiles 0xB43A 30
	mDisplayFrame 0x3 0x3

	mGetTiles 0xB458 30
	mDisplayFrame 0x3 0x4

	mGetTiles 0xB476 30
	mDisplayFrame 0x3 0x5

anim_0263__v0_l1: @ 80E7530
	mGetTiles 0xB494 30
	mDisplayFrame 0x3 0x6

anim_0263__v0_l2: @ 80E7544
	mJumpBack anim_0263__v0_l1

anim_0263__v1_l0: @ 80E754C
	mGetPalette 5 16 0x20
	mGetTiles 0xB4B2 30
	mAddHitbox 0 0xFA 0xF0 0x06 0x0E
	mDisplayFrame 0x3 0x7

	mGetTiles 0xB4D0 16
	mAddHitbox 0 0xFA 0xFA 0x06 0x10
	mDisplayFrame 0x1 0x8

	mGetTiles 0xB4E0 16
	mDisplayFrame 0x1 0x9

	mGetTiles 0xB4F0 16
	mDisplayFrame 0x6 0xA

	mGetTiles 0xB4E0 16
	mDisplayFrame 0x1 0x9

	mGetTiles 0xB4D0 16
	mDisplayFrame 0x1 0x8

	mEnd 

anim_0263:
	.4byte anim_0263__v0_l0
	.4byte anim_0263__v1_l0


anim_0264__v0_l0: @ 80E75F4
	mGetPalette 5 16 0x20
	mGetTiles 0xB500 30
	mAddHitbox 0 0xFE 0xF2 0x0A 0x0A
	mDisplayFrame 0x2 0x0

	mGetTiles 0xB51E 20
	mAddHitbox 0 0xFA 0xF6 0x0A 0x0F
	mDisplayFrame 0x2 0x1

	mGetTiles 0xB532 16
	mAddHitbox 0 0xF7 0xF7 0xF7 0xF7
	mDisplayFrame 0x2 0x2

	mEnd 

anim_0264:
	.4byte anim_0264__v0_l0


anim_0265__v0_l0: @ 80E7668
	mGetPalette 5 16 0x20
	mGetTiles 0xB542 20
	mAddHitbox 0 0xFA 0xF6 0x0A 0x0F
	mDisplayFrame 0x4 0x0

	mGetTiles 0xB556 24
	mPlaySoundEffect 125
	mDisplayFrame 0x4 0x1

	mGetTiles 0xB56E 20
	mDisplayFrame 0x4 0x2

	mGetTiles 0xB582 20
	mDisplayFrame 0x4 0x3

	mGetTiles 0xB596 24
	mPlaySoundEffect 125
	mDisplayFrame 0x4 0x4

	mGetTiles 0xB5AE 20
	mDisplayFrame 0x4 0x5

anim_0265__v0_l1: @ 80E7708
	mJumpBack anim_0265__v0_l0

anim_0265__v1_l0: @ 80E7710
	mGetPalette 5 16 0x20
	mGetTiles 0xB5AE 20
	mAddHitbox 0 0xFA 0xF6 0x0A 0x0F
	mDisplayFrame 0x4 0x5

	mGetTiles 0xB596 24
	mDisplayFrame 0x4 0x4

	mGetTiles 0xB582 20
	mPlaySoundEffect 125
	mDisplayFrame 0x4 0x3

	mGetTiles 0xB56E 20
	mDisplayFrame 0x4 0x2

	mGetTiles 0xB556 24
	mDisplayFrame 0x4 0x1

	mGetTiles 0xB542 20
	mPlaySoundEffect 125
	mDisplayFrame 0x4 0x0

anim_0265__v1_l1: @ 80E77B0
	mJumpBack anim_0265__v1_l0

anim_0265__v2_l0: @ 80E77B8
	mGetPalette 5 16 0x20
	mGetTiles 0xB5C2 16
	mAddHitbox 0 0xFA 0xF6 0x0A 0x0F
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0265__v3_l0: @ 80E77E8
	mGetPalette 5 16 0x20
	mGetTiles 0xB5D2 20
	mAddHitbox 0 0xF7 0xF8 0x07 0x0F
	mDisplayFrame 0x4 0x7

	mGetTiles 0xB5E6 18
	mAddHitbox 0 0xF1 0xF0 0x01 0x0A
	mDisplayFrame 0x4 0x8

	mGetTiles 0xB5F8 24
	mAddHitbox 0 0xEF 0xEC 0xF9 0x06
	mDisplayFrame 0x4 0x9

	mGetTiles 0xB610 24
	mDisplayFrame 0x4 0xA

	mGetTiles 0xB628 20
	mAddHitbox 0 0xED 0xEC 0xF9 0x00
	mDisplayFrame 0x4 0xB

	mEnd 

anim_0265__v4_l0: @ 80E788C
	mGetPalette 5 16 0x20
	mGetTiles 0xB63C 16
	mAddHitbox 0 0xFA 0xFA 0x06 0x10
	mDisplayFrame 0x4 0xC

	mGetTiles 0xB64C 16
	mDisplayFrame 0x4 0xD

	mEnd 

anim_0265:
	.4byte anim_0265__v0_l0
	.4byte anim_0265__v1_l0
	.4byte anim_0265__v2_l0
	.4byte anim_0265__v3_l0
	.4byte anim_0265__v4_l0


anim_0269__v0_l0: @ 80E78E4
	mGetPalette 5 16 0x20
	mGetTiles 0xB65C 30
	mAddHitbox 0 0xFA 0xEF 0x06 0x09
	mDisplayFrame 0x6 0x0

	mGetTiles 0xB67A 24
	mDisplayFrame 0x4 0x1

	mGetTiles 0xB692 24
	mDisplayFrame 0x4 0x2

	mGetTiles 0xB6AA 24
	mDisplayFrame 0x6 0x3

	mGetTiles 0xB6C2 24
	mDisplayFrame 0x6 0x4

	mGetTiles 0xB6DA 24
	mDisplayFrame 0x6 0x5

anim_0269__v0_l1: @ 80E7974
	mJumpBack anim_0269__v0_l0

anim_0269:
	.4byte anim_0269__v0_l0


anim_0270__v0_l0: @ 80E7980
	mGetPalette 5 16 0x20
	mGetTiles 0xB6F2 24
	mAddHitbox 0 0xFA 0xEF 0x06 0x09
	mDisplayFrame 0x2 0x0

	mGetTiles 0xB70A 24
	mDisplayFrame 0x2 0x1

	mEnd 

anim_0270:
	.4byte anim_0270__v0_l0


anim_0271__v0_l0: @ 80E79C8
	mGetPalette 5 16 0x20
	mGetTiles 0xB722 30
	mAddHitbox 0 0xFA 0xEF 0x06 0x09
	mDisplayFrame 0x6 0x0

	mGetTiles 0xB740 24
	mDisplayFrame 0x6 0x1

	mGetTiles 0xB758 24
	mDisplayFrame 0x6 0x2

	mGetTiles 0xB770 24
	mDisplayFrame 0x6 0x3

	mGetTiles 0xB788 24
	mDisplayFrame 0x6 0x4

	mGetTiles 0xB7A0 24
	mDisplayFrame 0x6 0x5

anim_0271__v0_l1: @ 80E7A58
	mJumpBack anim_0271__v0_l0

anim_0271:
	.4byte anim_0271__v0_l0


anim_0280__v0_l0: @ 80E7A64
	mGetPalette 5 16 0x20
	mGetTiles 0xB7B8 30
	mAddHitbox 0 0xFC 0xF2 0x08 0x10
	mDisplayFrame 0x4 0x0

	mGetTiles 0xB7D6 36
	mDisplayFrame 0x4 0x1

	mGetTiles 0xB7FA 36
	mDisplayFrame 0x4 0x2

	mGetTiles 0xB81E 25
	mDisplayFrame 0x4 0x3

anim_0280__v0_l1: @ 80E7ACC
	mJumpBack anim_0280__v0_l0

anim_0280:
	.4byte anim_0280__v0_l0


anim_0281__v0_l0: @ 80E7AD8
	mGetPalette 5 16 0x20
	mGetTiles 0xB837 30
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x4 0x0

	mGetTiles 0xB855 36
	mDisplayFrame 0x4 0x1

	mGetTiles 0xB879 36
	mDisplayFrame 0x4 0x2

	mGetTiles 0xB89D 24
	mDisplayFrame 0x4 0x3

anim_0281__v0_l1: @ 80E7B40
	mJumpBack anim_0281__v0_l0

anim_0281:
	.4byte anim_0281__v0_l0


anim_0282__v0_l0: @ 80E7B4C
	mGetPalette 5 16 0x20
	mGetTiles 0xB8B5 25
	mAddHitbox 0 0xFA 0xF0 0x06 0x02
	mDisplayFrame 0x2 0x0

	mGetTiles 0xB8CE 25
	mDisplayFrame 0x2 0x1

	mGetTiles 0xB8E7 25
	mDisplayFrame 0x2 0x2

	mGetTiles 0xB900 20
	mDisplayFrame 0x2 0x3

anim_0282__v0_l1: @ 80E7BB4
	mJumpBack anim_0282__v0_l0

anim_0282:
	.4byte anim_0282__v0_l0


anim_0284__v0_l0: @ 80E7BC0
	mGetPalette 5 16 0x90
	mGetTiles 0xB914 24
	mDisplayFrame 0x3 0x0

	mGetTiles 0xB92C 24
	mDisplayFrame 0x3 0x1

anim_0284__v0_l1: @ 80E7BF4
	mJumpBack anim_0284__v0_l0

anim_0284:
	.4byte anim_0284__v0_l0


anim_0285__v0_l0: @ 80E7C00
	mGetPalette 5 16 0x90
	mGetTiles 0xB944 16
	mDisplayFrame 0x2 0x0

	mGetTiles 0xB954 16
	mDisplayFrame 0x2 0x1

	mEnd 

anim_0285__v1_l0: @ 80E7C38
	mGetPalette 5 16 0x90
	mGetTiles 0xB964 16
	mDisplayFrame 0x2 0x2

	mEnd 

anim_0285:
	.4byte anim_0285__v0_l0
	.4byte anim_0285__v1_l0


anim_0286__v0_l0: @ 80E7C64
	mGetPalette 5 16 0x90
	mGetTiles 0xB974 15
	mDisplayFrame 0x3 0x0

	mGetTiles 0xB983 20
	mDisplayFrame 0x3 0x1

anim_0286__v0_l1: @ 80E7C98
	mJumpBack anim_0286__v0_l0

anim_0286:
	.4byte anim_0286__v0_l0


anim_0287__v0_l0: @ 80E7CA4
	mGetPalette 5 16 0x90
	mGetTiles 0xB997 20
	mDisplayFrame 0x6 0x0

	mGetTiles 0xB9AB 15
	mDisplayFrame 0x6 0x1

	mGetTiles 0xB9BA 20
	mDisplayFrame 0x6 0x2

anim_0287__v0_l1: @ 80E7CEC
	mGetTiles 0xB9CE 20
	mDisplayFrame 0x3 0x3

	mGetTiles 0xB9E2 20
	mDisplayFrame 0x3 0x4

anim_0287__v0_l2: @ 80E7D14
	mJumpBack anim_0287__v0_l1

anim_0287:
	.4byte anim_0287__v0_l0


anim_0288__v0_l0: @ 80E7D20
	mGetPalette 5 16 0x90
	mGetTiles 0xB9F6 20
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0288__v1_l0: @ 80E7D44
	mGetPalette 5 16 0x90
	mGetTiles 0xBA0A 20
	mDisplayFrame 0x6 0x1

	mGetTiles 0xBA1E 15
	mDisplayFrame 0x6 0x2

	mGetTiles 0xBA2D 15
	mDisplayFrame 0x28 0x3

	mEnd 

anim_0288:
	.4byte anim_0288__v0_l0
	.4byte anim_0288__v1_l0


anim_0292__v0_l0: @ 80E7D98
	mGetPalette 5 16 0x20
	mGetTiles 0xBA3C 25
	mAddHitbox 0 0xFA 0xF2 0x06 0x0E
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0292__v1_l0: @ 80E7DC8
	mGetPalette 5 16 0x20
	mGetTiles 0xBA55 16
	mAddHitbox 0 0xFA 0xF2 0x06 0x0E
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0292__v2_l0: @ 80E7DF8
	mGetPalette 5 16 0x20
	mGetTiles 0xBA65 16
	mAddHitbox 0 0xFA 0xF2 0x06 0x0E
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0292__v3_l0: @ 80E7E28
	mGetPalette 5 16 0x20
	mGetTiles 0xBA75 25
	mAddHitbox 0 0xFA 0xF2 0x06 0x0E
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0292__v4_l0: @ 80E7E58
	mGetPalette 5 16 0x20
	mGetTiles 0xBA8E 24
	mAddHitbox 0 0xFA 0xF2 0x06 0x0E
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0292__v5_l0: @ 80E7E88
	mGetPalette 5 16 0x20
	mGetTiles 0xBAA6 20
	mAddHitbox 0 0xFA 0xF2 0x06 0x0E
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0292__v6_l0: @ 80E7EB8
	mGetPalette 5 16 0x20
	mGetTiles 0xBABA 16
	mAddHitbox 0 0xFA 0xF2 0x06 0x0E
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0292__v7_l0: @ 80E7EE8
	mGetPalette 5 16 0x20
	mGetTiles 0xBACA 25
	mAddHitbox 0 0xFA 0xF2 0x06 0x0E
	mDisplayFrame 0x1 0x7

	mEnd 

anim_0292:
	.4byte anim_0292__v0_l0
	.4byte anim_0292__v1_l0
	.4byte anim_0292__v2_l0
	.4byte anim_0292__v3_l0
	.4byte anim_0292__v4_l0
	.4byte anim_0292__v5_l0
	.4byte anim_0292__v6_l0
	.4byte anim_0292__v7_l0


anim_0295__v0_l0: @ 80E7F38
	mGetPalette 5 16 0x90
	mGetTiles 0xBAE3 64
	mDisplayFrame 0x2 0x0

	mGetTiles 0xBB23 64
	mDisplayFrame 0x2 0x1

	mGetTiles 0xBB63 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0xBBA3 64
	mDisplayFrame 0x2 0x3

anim_0295__v0_l1: @ 80E7F94
	mJumpBack anim_0295__v0_l0

anim_0295:
	.4byte anim_0295__v0_l0


anim_0296__v0_l0: @ 80E7FA0
	mGetPalette 5 16 0x20
	mGetTiles 0xBBE3 8
	mDisplayFrame 0x1 0x0

	mGetTiles 0xBBEB 8
	mDisplayFrame 0x1 0x1

	mGetTiles 0xBBE3 8
	mDisplayFrame 0x1 0x0

	mGetTiles 0xBBF3 12
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0296:
	.4byte anim_0296__v0_l0


anim_0297__v0_l0: @ 80E8004
	mGetPalette 5 16 0x20
	mGetTiles 0xBBFF 64
	mDisplayFrame 0x3 0x0

	mEnd 

anim_0297:
	.4byte anim_0297__v0_l0


anim_0298__v0_l0: @ 80E802C
	mGetPalette 7 16 0x30
	mGetTiles 0xBC3F 20
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x6 0x0

	mGetTiles 0xBC53 20
	mDisplayFrame 0x6 0x1

	mGetTiles 0xBC67 20
	mDisplayFrame 0x6 0x2

	mGetTiles 0xBC7B 20
	mDisplayFrame 0x6 0x3

	mGetTiles 0xBC8F 20
	mDisplayFrame 0x6 0x4

	mGetTiles 0xBCA3 20
	mDisplayFrame 0x6 0x5

	mGetTiles 0xBCB7 20
	mDisplayFrame 0x6 0x6

	mGetTiles 0xBCCB 20
	mDisplayFrame 0x6 0x7

	mGetTiles 0xBC3F 20
	mDisplayFrame 0x6 0x0

	mGetTiles 0xBCDF 20
	mDisplayFrame 0x6 0x8

	mGetTiles 0xBCF3 20
	mDisplayFrame 0x6 0x9

	mGetTiles 0xBD07 20
	mDisplayFrame 0x6 0xA

	mGetTiles 0xBC8F 20
	mDisplayFrame 0x6 0x4

	mGetTiles 0xBCA3 20
	mDisplayFrame 0x6 0x5

	mGetTiles 0xBCB7 20
	mDisplayFrame 0x6 0x6

	mGetTiles 0xBCCB 20
	mDisplayFrame 0x6 0x7

anim_0298__v0_l1: @ 80E8184
	mJumpBack anim_0298__v0_l0

anim_0298:
	.4byte anim_0298__v0_l0


anim_0299__v0_l0: @ 80E8190
	mGetPalette 7 16 0x30
	mGetTiles 0xBD1B 30
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x14 0x0

	mGetTiles 0xBD39 20
	mDisplayFrame 0x4 0x1

	mGetTiles 0xBD4D 20
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x8 0x2

	mGetTiles 0xBD61 20
	mDisplayFrame 0x8 0x3

	mGetTiles 0xBD75 20
	mDisplayFrame 0x8 0x4

	mGetTiles 0xBD61 20
	mDisplayFrame 0x8 0x3

	mGetTiles 0xBD4D 20
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x8 0x2

	mGetTiles 0xBD61 20
	mDisplayFrame 0x8 0x3

	mGetTiles 0xBD75 20
	mDisplayFrame 0x8 0x4

	mGetTiles 0xBD61 20
	mDisplayFrame 0x8 0x3

	mGetTiles 0xBD4D 20
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x8 0x2

	mGetTiles 0xBD61 20
	mDisplayFrame 0x8 0x3

	mGetTiles 0xBD75 20
	mDisplayFrame 0x8 0x4

	mGetTiles 0xBD61 20
	mDisplayFrame 0x8 0x3

	mGetTiles 0xBD89 20
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x8 0x5

	mGetTiles 0xBD9D 20
	mDisplayFrame 0x8 0x6

	mGetTiles 0xBDB1 20
	mDisplayFrame 0x8 0x7

	mGetTiles 0xBD9D 20
	mDisplayFrame 0x3C 0x6

	mGetTiles 0xBDC5 16
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x4 0x8

	mGetTiles 0xBDD5 20
	mDisplayFrame 0x8 0x9

	mGetTiles 0xBDE9 16
	mDisplayFrame 0xA 0xA

	mGetTiles 0xBDF9 16
	mDisplayFrame 0x8 0xB

	mGetTiles 0xBE09 16
	mDisplayFrame 0x4 0xC

	mGetTiles 0xBE19 16
	mDisplayFrame 0x4 0xD

	mGetTiles 0xBE29 16
	mDisplayFrame 0x4 0xE

	mGetTiles 0xBE39 16
	mDisplayFrame 0x4 0xF

	mGetTiles 0xBE29 16
	mDisplayFrame 0x4 0xE

	mGetTiles 0xBE49 16
	mDisplayFrame 0x4 0x10

	mGetTiles 0xBE29 16
	mDisplayFrame 0x4 0xE

	mGetTiles 0xBE39 16
	mDisplayFrame 0x3C 0xF

	mGetTiles 0xBE59 20
	mDisplayFrame 0x8 0x11

	mGetTiles 0xBE6D 16
	mDisplayFrame 0x6 0x12

	mGetTiles 0xBE7D 20
	mDisplayFrame 0x6 0x13

	mGetTiles 0xBE91 20
	mDisplayFrame 0x6 0x14

	mGetTiles 0xBEA5 20
	mDisplayFrame 0x6 0x15

	mGetTiles 0xBEB9 16
	mDisplayFrame 0x3C 0x16

	mGetTiles 0xBEC9 16
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x2 0x17

	mGetTiles 0xBED9 20
	mDisplayFrame 0x5 0x18

	mGetTiles 0xBEED 20
	mDisplayFrame 0x5 0x19

	mGetTiles 0xBF01 20
	mDisplayFrame 0x5 0x1A

	mGetTiles 0xBEED 20
	mDisplayFrame 0x5 0x19

	mGetTiles 0xBF01 20
	mDisplayFrame 0x5 0x1A

	mGetTiles 0xBEED 20
	mDisplayFrame 0x5 0x19

	mGetTiles 0xBF01 20
	mDisplayFrame 0x1E 0x1A

	mGetTiles 0xBF15 16
	mDisplayFrame 0x2 0x1B

anim_0299__v0_l1: @ 80E8574
	mGetTiles 0xBF25 30
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x5 0x1C

	mGetTiles 0xBF43 30
	mDisplayFrame 0x4 0x1D

	mGetTiles 0xBF61 20
	mDisplayFrame 0x5 0x1E

	mGetTiles 0xBF43 30
	mDisplayFrame 0x4 0x1D

anim_0299__v0_l2: @ 80E85D0
	mJumpBack anim_0299__v0_l1

anim_0299:
	.4byte anim_0299__v0_l0


anim_0300__v0_l0: @ 80E85DC
	mGetPalette 7 16 0x30
	mGetTiles 0xBF75 20
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x2 0x0

	mGetTiles 0xBF89 15
	mDisplayFrame 0x2 0x1

anim_0300__v0_l1: @ 80E861C
	mGetTiles 0xBF98 15
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0xC 0x2

	mGetTiles 0xBFA7 15
	mDisplayFrame 0x4 0x3

	mGetTiles 0xBFB6 15
	mDisplayFrame 0x4 0x4

	mGetTiles 0xBFA7 15
	mDisplayFrame 0x4 0x3

anim_0300__v0_l2: @ 80E8678
	mJumpBack anim_0300__v0_l1

anim_0300__v1_l0: @ 80E8680
	mGetPalette 7 16 0x30
	mGetTiles 0xBF89 15
	mDisplayFrame 0x1 0x1

	mGetTiles 0xBF75 20
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0300:
	.4byte anim_0300__v0_l0
	.4byte anim_0300__v1_l0


anim_0301__v0_l0: @ 80E86CC
	mGetPalette 7 16 0x30
	mGetTiles 0xBFC5 16
	mAddHitbox 0 0xFA 0xFA 0x06 0x10
	mDisplayFrame 0x1 0x0

	mGetTiles 0xBFD5 16
	mDisplayFrame 0x1 0x1

	mGetTiles 0xBFE5 16
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0301__v1_l0: @ 80E8724
	mGetPalette 7 16 0x30
	mGetTiles 0xBFF5 16
	mAddHitbox 0 0xFA 0xFA 0x06 0x10
	mDisplayFrame 0x1 0x3

	mGetTiles 0xC005 16
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0301:
	.4byte anim_0301__v0_l0
	.4byte anim_0301__v1_l0


anim_0302__v0_l0: @ 80E8770
	mGetPalette 7 16 0x30
	mGetTiles 0xC015 64
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x3 0x0

	mGetTiles 0xC055 64
	mDisplayFrame 0x3 0x1

	mGetTiles 0xC095 64
	mDisplayFrame 0x3 0x2

	mGetTiles 0xC0D5 64
	mDisplayFrame 0x3 0x3

	mGetTiles 0xC115 64
	mDisplayFrame 0x3 0x4

	mGetTiles 0xC155 64
	mDisplayFrame 0x3 0x5

	mGetTiles 0xC195 64
	mDisplayFrame 0x3 0x6

	mGetTiles 0xC1D5 64
	mDisplayFrame 0x3 0x7

	mGetTiles 0xC015 64
	mDisplayFrame 0x3 0x0

	mGetTiles 0xC215 64
	mDisplayFrame 0x3 0x8

	mGetTiles 0xC255 64
	mDisplayFrame 0x3 0x9

	mGetTiles 0xC295 64
	mDisplayFrame 0x3 0xA

	mGetTiles 0xC115 64
	mDisplayFrame 0x3 0x4

	mGetTiles 0xC155 64
	mDisplayFrame 0x3 0x5

	mGetTiles 0xC195 64
	mDisplayFrame 0x3 0x6

	mGetTiles 0xC1D5 64
	mDisplayFrame 0x3 0x7

anim_0302__v0_l1: @ 80E88C8
	mJumpBack anim_0302__v0_l0

anim_0302:
	.4byte anim_0302__v0_l0


anim_0303__v0_l0: @ 80E88D4
	mGetPalette 7 16 0x30
	mGetTiles 0xC2D5 64
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x2 0x0

	mGetTiles 0xC315 64
	mDisplayFrame 0x2 0x1

	mGetTiles 0xC355 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0xC395 64
	mDisplayFrame 0x2 0x3

	mGetTiles 0xC3D5 64
	mDisplayFrame 0x2 0x4

	mGetTiles 0xC415 64
	mDisplayFrame 0x2 0x5

anim_0303__v0_l1: @ 80E8964
	mJumpBack anim_0303__v0_l0

anim_0303:
	.4byte anim_0303__v0_l0


anim_0304__v0_l0: @ 80E8970
	mGetPalette 7 16 0x30
	mGetTiles 0xC455 20
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x1 0x0

	mGetTiles 0xC469 20
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0304:
	.4byte anim_0304__v0_l0


anim_0305__v0_l0: @ 80E89B8
	mGetPalette 7 16 0x30
	mGetTiles 0xC47D 16
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x1 0x0

	mGetTiles 0xC48D 20
	mDisplayFrame 0x1 0x1

	mGetTiles 0xC4A1 20
	mDisplayFrame 0x1 0x2

	mGetTiles 0xC4B5 16
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0305:
	.4byte anim_0305__v0_l0


anim_0306__v0_l0: @ 80E8A28
	mGetPalette 7 16 0x30
	mGetTiles 0xC4C5 12
	mAddHitbox 0 0xF8 0xFA 0x08 0x0A
	mPlaySoundEffect 133
	mDisplayFrame 0x2 0x0

	mGetTiles 0xC4D1 16
	mDisplayFrame 0x2 0x1

	mGetTiles 0xC4E1 12
	mDisplayFrame 0x2 0x2

	mGetTiles 0xC4ED 16
	mDisplayFrame 0x2 0x3

anim_0306__v0_l1: @ 80E8A98
	mJumpBack anim_0306__v0_l0

anim_0306:
	.4byte anim_0306__v0_l0


anim_0307__v0_l0: @ 80E8AA4
	mGetPalette 7 16 0x30
	mGetTiles 0xC4FD 20
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x2 0x0

anim_0307__v0_l1: @ 80E8AD0
	mGetTiles 0xC511 20
	mDisplayFrame 0x2 0x1

	mGetTiles 0xC525 20
	mDisplayFrame 0x2 0x2

anim_0307__v0_l2: @ 80E8AF8
	mJumpBack anim_0307__v0_l1

anim_0307__v1_l0: @ 80E8B00
	mGetPalette 7 16 0x30
	mGetTiles 0xC539 16
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x2 0x3

	mEnd 

anim_0307:
	.4byte anim_0307__v0_l0
	.4byte anim_0307__v1_l0


anim_0308__v0_l0: @ 80E8B38
	mGetPalette 7 16 0x30
	mGetTiles 0xC549 24
	mAddHitbox 0 0xFA 0xEE 0x06 0x08
	mDisplayFrame 0x3 0x0

	mGetTiles 0xC561 24
	mDisplayFrame 0x3 0x1

	mGetTiles 0xC579 24
	mDisplayFrame 0x3 0x2

anim_0308__v0_l1: @ 80E8B8C
	mJumpBack anim_0308__v0_l0

anim_0308__v1_l0: @ 80E8B94
	mGetPalette 7 16 0x30
	mGetTiles 0xC591 20
	mAddHitbox 0 0xFA 0xEE 0x06 0x08
	mDisplayFrame 0x3 0x3

	mGetTiles 0xC5A5 20
	mDisplayFrame 0x3 0x4

	mGetTiles 0xC5B9 20
	mDisplayFrame 0x3 0x5

	mGetTiles 0xC5CD 20
	mDisplayFrame 0x4 0x6

	mGetTiles 0xC5E1 20
	mDisplayFrame 0x4 0x7

	mGetTiles 0xC5F5 20
	mDisplayFrame 0x4 0x8

	mEnd 

anim_0308__v2_l0: @ 80E8C28
	mGetPalette 7 16 0x30
	mGetTiles 0xC609 30
	mAddHitbox 0 0xFA 0xEE 0x06 0x08
	mDisplayFrame 0x3 0x9

	mGetTiles 0xC627 30
	mDisplayFrame 0x3 0xA

	mGetTiles 0xC645 30
	mDisplayFrame 0x3 0xB

anim_0308__v2_l1: @ 80E8C7C
	mJumpBack anim_0308__v2_l0

anim_0308__v3_l0: @ 80E8C84
	mGetPalette 7 16 0x30
	mGetTiles 0xC663 16
	mDisplayFrame 0x2 0xC

	mGetTiles 0xC673 16
	mDisplayFrame 0x1 0xD

	mGetTiles 0xC683 16
	mDisplayFrame 0x1 0xE

	mEnd 

anim_0308:
	.4byte anim_0308__v0_l0
	.4byte anim_0308__v1_l0
	.4byte anim_0308__v2_l0
	.4byte anim_0308__v3_l0


anim_0309__v0_l0: @ 80E8CE0
	mGetPalette 7 16 0x30
	mGetTiles 0xC693 20
	mAddHitbox 0 0xFA 0xF4 0x06 0x0E
	mDisplayFrame 0x4 0x0

	mGetTiles 0xC6A7 15
	mDisplayFrame 0x4 0x1

	mGetTiles 0xC6B6 12
	mDisplayFrame 0x4 0x2

	mGetTiles 0xC6C2 16
	mDisplayFrame 0x4 0x3

	mGetTiles 0xC6D2 16
	mDisplayFrame 0x4 0x4

	mGetTiles 0xC6E2 12
	mDisplayFrame 0x4 0x5

	mGetTiles 0xC6EE 16
	mDisplayFrame 0x4 0x6

	mGetTiles 0xC6FE 16
	mDisplayFrame 0x4 0x7

	mGetTiles 0xC70E 16
	mDisplayFrame 0x4 0x8

	mGetTiles 0xC71E 25
	mDisplayFrame 0x4 0x9

	mGetTiles 0xC737 20
	mDisplayFrame 0x4 0xA

	mEnd 

anim_0309:
	.4byte anim_0309__v0_l0


anim_0310__v0_l0: @ 80E8DDC
	mGetPalette 7 16 0x30
	mGetTiles 0xC74B 20
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x4 0x0

anim_0310__v0_l1: @ 80E8E08
	mGetTiles 0xC75F 20
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x7 0x1

	mGetTiles 0xC773 20
	mDisplayFrame 0x7 0x2

	mGetTiles 0xC787 20
	mDisplayFrame 0x7 0x3

	mGetTiles 0xC79B 16
	mDisplayFrame 0x7 0x4

	mGetTiles 0xC7AB 16
	mDisplayFrame 0x7 0x5

	mGetTiles 0xC7BB 16
	mDisplayFrame 0x7 0x6

	mGetTiles 0xC7CB 16
	mDisplayFrame 0x7 0x7

	mGetTiles 0xC7DB 16
	mDisplayFrame 0x7 0x8

anim_0310__v0_l2: @ 80E8EB4
	mJumpBack anim_0310__v0_l1

anim_0310__v1_l0: @ 80E8EBC
	mGetPalette 7 16 0x30
	mGetTiles 0xC74B 20
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x4 0x0

	mEnd 

anim_0310:
	.4byte anim_0310__v0_l0
	.4byte anim_0310__v1_l0


anim_0311__v0_l0: @ 80E8EF4
	mGetPalette 7 16 0x30
	mGetTiles 0xC7EB 20
	mAddHitbox 0 0xFD 0xF4 0x09 0x10
	mDisplayFrame 0x2 0x0

	mGetTiles 0xC7FF 16
	mDisplayFrame 0x2 0x1

	mGetTiles 0xC80F 16
	mDisplayFrame 0x2 0x2

anim_0311__v0_l1: @ 80E8F48
	mGetTiles 0xC81F 20
	mAddHitbox 0 0xFD 0xF4 0x09 0x10
	mDisplayFrame 0x5 0x3

	mGetTiles 0xC833 20
	mDisplayFrame 0x5 0x4

	mGetTiles 0xC847 20
	mDisplayFrame 0x5 0x5

	mGetTiles 0xC833 20
	mDisplayFrame 0x5 0x4

anim_0311__v0_l2: @ 80E8FA4
	mJumpBack anim_0311__v0_l1

anim_0311__v1_l0: @ 80E8FAC
	mGetPalette 7 16 0x30
	mGetTiles 0xC85B 16
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x2 0x6

	mGetTiles 0xC86B 16
	mDisplayFrame 0x2 0x7

	mGetTiles 0xC87B 20
	mAddHitbox 0 0xBB 0x06 0xBB 0x06
	mDisplayFrame 0x2 0x8

	mEnd 

anim_0311:
	.4byte anim_0311__v0_l0
	.4byte anim_0311__v1_l0


anim_0312__v0_l0: @ 80E9018
	mGetPalette 7 16 0x30
	mGetTiles 0xC88F 15
	mAddHitbox 0 0xFB 0xF4 0x07 0x10
	mDisplayFrame 0x1 0x0

	mGetTiles 0xC89E 15
	mAddHitbox 0 0xC1 0xD7 0xC1 0xD7
	mDisplayFrame 0x1 0x1

	mGetTiles 0xC8AD 15
	mDisplayFrame 0x2 0x2

anim_0312__v0_l1: @ 80E9078
	mGetTiles 0xC8BC 15
	mAddHitbox 0 0x00 0xF4 0x0C 0x10
	mDisplayFrame 0xF 0x3

	mGetTiles 0xC8CB 15
	mDisplayFrame 0x5 0x4

	mGetTiles 0xC8DA 15
	mDisplayFrame 0x5 0x5

	mGetTiles 0xC8CB 15
	mDisplayFrame 0x5 0x4

anim_0312__v0_l2: @ 80E90D4
	mJumpBack anim_0312__v0_l1

anim_0312__v1_l0: @ 80E90DC
	mGetPalette 7 16 0x30
	mGetTiles 0xC8E9 15
	mAddHitbox 0 0xFC 0xF4 0x08 0x10
	mDisplayFrame 0x2 0x6

	mGetTiles 0xC8F8 15
	mDisplayFrame 0x1 0x7

	mGetTiles 0xC907 15
	mDisplayFrame 0x1 0x8

	mEnd 

anim_0312:
	.4byte anim_0312__v0_l0
	.4byte anim_0312__v1_l0


anim_0315__v0_l0: @ 80E913C
	mGetPalette 7 16 0x30
	mGetTiles 0xC916 20
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mPlaySoundEffect 191
	mDisplayFrame 0x6 0x0

	mGetTiles 0xC92A 15
	mDisplayFrame 0x6 0x1

	mEnd 

anim_0315:
	.4byte anim_0315__v0_l0


anim_0317__v0_l0: @ 80E918C
	mGetPalette 7 16 0x30
	mGetTiles 0xC939 20
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x3 0x0

	mGetTiles 0xC94D 20
	mDisplayFrame 0x3 0x1

	mGetTiles 0xC961 16
	mDisplayFrame 0x3 0x2

	mGetTiles 0xC971 16
	mDisplayFrame 0x3 0x3

	mEnd 

anim_0317:
	.4byte anim_0317__v0_l0


anim_0319__v0_l0: @ 80E91FC
	mGetPalette 7 16 0x30
	mGetTiles 0xC981 20
	mDisplayFrame 0x3 0x0

	mGetTiles 0xC995 30
	mDisplayFrame 0x3 0x1

	mGetTiles 0xC9B3 30
	mDisplayFrame 0x2 0x2

anim_0319__v0_l1: @ 80E9244
	mGetTiles 0xC9D1 20
	mDisplayFrame 0x3 0x3

	mGetTiles 0xC9E5 20
	mDisplayFrame 0x3 0x4

anim_0319__v0_l2: @ 80E926C
	mJumpBack anim_0319__v0_l1

anim_0319:
	.4byte anim_0319__v0_l0


anim_0320__v0_l0: @ 80E9278
	mGetPalette 7 16 0x30
	mGetTiles 0xC9F9 20
	mDisplayFrame 0x3 0x0

	mGetTiles 0xCA0D 20
	mDisplayFrame 0x3 0x1

	mGetTiles 0xCA21 16
	mDisplayFrame 0x3 0x2

	mGetTiles 0xCA31 16
	mDisplayFrame 0x3 0x3

anim_0320__v0_l1: @ 80E92D4
	mGetTiles 0xCA41 16
	mDisplayFrame 0x3 0x4

	mGetTiles 0xCA51 20
	mDisplayFrame 0x3 0x5

	mGetTiles 0xCA65 16
	mDisplayFrame 0x3 0x6

	mGetTiles 0xCA75 16
	mDisplayFrame 0x3 0x7

	mGetTiles 0xCA85 16
	mDisplayFrame 0x3 0x8

	mGetTiles 0xCA95 20
	mDisplayFrame 0x3 0x9

	mGetTiles 0xCAA9 16
	mDisplayFrame 0x3 0xA

	mGetTiles 0xCAB9 16
	mDisplayFrame 0x3 0xB

	mGetTiles 0xCAC9 16
	mDisplayFrame 0x3 0xC

	mGetTiles 0xCAD9 20
	mDisplayFrame 0x3 0xD

	mGetTiles 0xCAED 16
	mDisplayFrame 0x3 0xE

	mGetTiles 0xCA75 16
	mDisplayFrame 0x3 0x7

	mGetTiles 0xCA85 16
	mDisplayFrame 0x3 0x8

	mGetTiles 0xCA95 20
	mDisplayFrame 0x3 0x9

	mGetTiles 0xCAA9 16
	mDisplayFrame 0x3 0xA

	mGetTiles 0xCAB9 16
	mDisplayFrame 0x3 0xB

anim_0320__v0_l2: @ 80E9414
	mJumpBack anim_0320__v0_l1

anim_0320:
	.4byte anim_0320__v0_l0


anim_0321__v0_l0: @ 80E9420
	mGetPalette 7 16 0x30
	mGetTiles 0xCAFD 15
	mDisplayFrame 0x3 0x0

	mGetTiles 0xCB0C 15
	mDisplayFrame 0x3 0x1

	mGetTiles 0xCB1B 20
	mDisplayFrame 0x4 0x2

	mGetTiles 0xCB2F 20
	mDisplayFrame 0x4 0x3

	mGetTiles 0xCB43 20
	mDisplayFrame 0x4 0x4

	mGetTiles 0xCB57 20
	mDisplayFrame 0x4 0x5

	mGetTiles 0xCB6B 20
	mDisplayFrame 0x4 0x6

	mGetTiles 0xCB7F 15
	mDisplayFrame 0x4 0x7

	mGetTiles 0xCB8E 20
	mDisplayFrame 0x4 0x8

	mGetTiles 0xCBA2 20
	mDisplayFrame 0x4 0x9

	mGetTiles 0xCBB6 20
	mDisplayFrame 0x4 0xA

	mGetTiles 0xCBCA 20
	mDisplayFrame 0x4 0xB

	mGetTiles 0xCBDE 20
	mDisplayFrame 0x4 0xC

	mGetTiles 0xCBF2 15
	mDisplayFrame 0x4 0xD

	mGetTiles 0xCB1B 20
	mDisplayFrame 0x4 0x2

	mGetTiles 0xCB2F 20
	mDisplayFrame 0x4 0x3

	mGetTiles 0xCB43 20
	mDisplayFrame 0x4 0x4

	mGetTiles 0xCB57 20
	mDisplayFrame 0x4 0x5

	mGetTiles 0xCB6B 20
	mDisplayFrame 0x4 0x6

	mGetTiles 0xCB7F 15
	mDisplayFrame 0x4 0x7

	mGetTiles 0xCB8E 20
	mDisplayFrame 0x4 0x8

	mGetTiles 0xCBA2 20
	mDisplayFrame 0x4 0x9

	mGetTiles 0xCBB6 20
	mDisplayFrame 0x4 0xA

	mGetTiles 0xCBCA 20
	mDisplayFrame 0x4 0xB

	mGetTiles 0xCBDE 20
	mDisplayFrame 0x4 0xC

	mGetTiles 0xCBF2 15
	mDisplayFrame 0x4 0xD

	mGetTiles 0xCC01 16
	mDisplayFrame 0x4 0xE

	mGetTiles 0xCC11 15
	mDisplayFrame 0x4 0xF

	mGetTiles 0xCC20 12
	mDisplayFrame 0x4 0x10

	mGetTiles 0xCC2C 15
	mDisplayFrame 0x4 0x11

	mGetTiles 0xCC3B 16
	mDisplayFrame 0x4 0x12

	mGetTiles 0xCC4B 20
	mDisplayFrame 0x4 0x13

	mGetTiles 0xCC5F 25
	mDisplayFrame 0x4 0x14

	mGetTiles 0xCC78 16
	mDisplayFrame 0x4 0x15

	mGetTiles 0xCC88 16
	mDisplayFrame 0x4 0x16

	mGetTiles 0xCC98 16
	mDisplayFrame 0x4 0x17

	mGetTiles 0xCCA8 12
	mDisplayFrame 0x4 0x18

	mGetTiles 0xCCB4 12
	mDisplayFrame 0x4 0x19

	mGetTiles 0xCCC0 12
	mDisplayFrame 0x8 0x1A

	mGetTiles 0xCCCC 20
	mDisplayFrame 0x3 0x1B

	mGetTiles 0xCCE0 20
	mDisplayFrame 0x3 0x1C

	mGetTiles 0xCCF4 16
	mDisplayFrame 0x1E 0x1D

	mEnd 

anim_0321:
	.4byte anim_0321__v0_l0


anim_0322__v0_l0: @ 80E977C
	mGetPalette 7 16 0x30
	mGetTiles 0xCD04 12
	mDisplayFrame 0x2 0x0

	mGetTiles 0xCD10 20
	mDisplayFrame 0x5 0x1

	mGetTiles 0xCD24 16
	mDisplayFrame 0x5 0x2

	mGetTiles 0xCD34 16
	mDisplayFrame 0x5 0x3

	mGetTiles 0xCD44 12
	mDisplayFrame 0x14 0x4

	mGetTiles 0xCD50 16
	mDisplayFrame 0x2 0x5

	mGetTiles 0xCD60 24
	mDisplayFrame 0x4 0x6

	mGetTiles 0xCD78 24
	mDisplayFrame 0x4 0x7

	mGetTiles 0xCD90 24
	mDisplayFrame 0x4 0x8

	mGetTiles 0xCD78 24
	mDisplayFrame 0x4 0x7

	mGetTiles 0xCD60 24
	mDisplayFrame 0x4 0x6

	mGetTiles 0xCD78 24
	mDisplayFrame 0x4 0x7

	mGetTiles 0xCD90 24
	mDisplayFrame 0x4 0x8

	mGetTiles 0xCD78 24
	mDisplayFrame 0x4 0x7

	mEnd 

anim_0322__v1_l0: @ 80E98A4
	mGetPalette 7 16 0x30
	mGetTiles 0xCDA8 25
	mDisplayFrame 0x2 0x9

	mEnd 

anim_0322:
	.4byte anim_0322__v0_l0
	.4byte anim_0322__v1_l0


anim_0323__v0_l0: @ 80E98D0
	mGetPalette 7 16 0x90
	mGetTiles 0xCDC1 24
	mDisplayFrame 0x3 0x0

	mGetTiles 0xCDD9 24
	mDisplayFrame 0x3 0x1

	mGetTiles 0xCDF1 24
	mDisplayFrame 0x3 0x2

	mGetTiles 0xCE09 24
	mDisplayFrame 0x3 0x3

anim_0323__v0_l1: @ 80E992C
	mJumpBack anim_0323__v0_l0

anim_0323:
	.4byte anim_0323__v0_l0


anim_0324__v0_l0: @ 80E9938
	mGetPalette 7 16 0xA0
	mGetTiles 0xCE21 24
	mDisplayFrame 0x14 0x0

	mGetTiles 0xCE39 36
	mDisplayFrame 0xA 0x1

	mGetTiles 0xCE5D 36
	mDisplayFrame 0x8 0x2

	mGetTiles 0xCE81 35
	mDisplayFrame 0x7 0x3

	mGetTiles 0xCEA4 42
	mDisplayFrame 0x5 0x4

	mGetTiles 0xCECE 30
	mDisplayFrame 0x3 0x5

anim_0324__v0_l1: @ 80E99BC
	mGetTiles 0xCEEC 30
	mDisplayFrame 0x2 0x6

	mGetTiles 0xCF0A 30
	mDisplayFrame 0x2 0x7

	mGetTiles 0xCF28 30
	mDisplayFrame 0x2 0x8

anim_0324__v0_l2: @ 80E99F8
	mJumpBack anim_0324__v0_l1

anim_0324:
	.4byte anim_0324__v0_l0


anim_0325__v0_l0: @ 80E9A04
	mGetPalette 7 16 0x30
	mGetTiles 0xCF46 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x0

	mGetTiles 0xCF86 64
	mDisplayFrame 0x2 0x1

anim_0325__v0_l1: @ 80E9A44
	mJumpBack anim_0325__v0_l0

anim_0325__v1_l0: @ 80E9A4C
	mGetPalette 7 16 0x30
	mGetTiles 0xCFC6 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x2

	mGetTiles 0xD006 64
	mDisplayFrame 0x2 0x3

anim_0325__v1_l1: @ 80E9A8C
	mJumpBack anim_0325__v1_l0

anim_0325__v2_l0: @ 80E9A94
	mGetPalette 7 16 0x30
	mGetTiles 0xD046 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x4

	mGetTiles 0xD086 64
	mDisplayFrame 0x2 0x5

anim_0325__v2_l1: @ 80E9AD4
	mJumpBack anim_0325__v2_l0

anim_0325__v3_l0: @ 80E9ADC
	mGetPalette 7 16 0x30
	mGetTiles 0xD0C6 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x6

	mGetTiles 0xD106 64
	mDisplayFrame 0x2 0x7

anim_0325__v3_l1: @ 80E9B1C
	mJumpBack anim_0325__v3_l0

anim_0325__v4_l0: @ 80E9B24
	mGetPalette 7 16 0x30
	mGetTiles 0xD146 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x8

	mGetTiles 0xD186 64
	mDisplayFrame 0x2 0x9

anim_0325__v4_l1: @ 80E9B64
	mJumpBack anim_0325__v4_l0

anim_0325__v5_l0: @ 80E9B6C
	mGetPalette 7 16 0x30
	mGetTiles 0xD1C6 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xA

	mGetTiles 0xD206 64
	mDisplayFrame 0x2 0xB

anim_0325__v5_l1: @ 80E9BAC
	mJumpBack anim_0325__v5_l0

anim_0325__v6_l0: @ 80E9BB4
	mGetPalette 7 16 0x30
	mGetTiles 0xD246 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xC

	mGetTiles 0xD286 64
	mDisplayFrame 0x2 0xD

anim_0325__v6_l1: @ 80E9BF4
	mJumpBack anim_0325__v6_l0

anim_0325__v7_l0: @ 80E9BFC
	mGetPalette 7 16 0x30
	mGetTiles 0xD2C6 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xE

	mGetTiles 0xD306 64
	mDisplayFrame 0x2 0xF

anim_0325__v7_l1: @ 80E9C3C
	mJumpBack anim_0325__v7_l0

anim_0325__v8_l0: @ 80E9C44
	mGetPalette 7 16 0x30
	mGetTiles 0xD346 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x10

	mGetTiles 0xD386 64
	mDisplayFrame 0x2 0x11

anim_0325__v8_l1: @ 80E9C84
	mJumpBack anim_0325__v8_l0

anim_0325:
	.4byte anim_0325__v0_l0
	.4byte anim_0325__v1_l0
	.4byte anim_0325__v2_l0
	.4byte anim_0325__v3_l0
	.4byte anim_0325__v4_l0
	.4byte anim_0325__v5_l0
	.4byte anim_0325__v6_l0
	.4byte anim_0325__v7_l0
	.4byte anim_0325__v8_l0


anim_0326__v0_l0: @ 80E9CB0
	mGetPalette 7 16 0x30
	mGetTiles 0xD3C6 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x0

	mGetTiles 0xD406 64
	mDisplayFrame 0x2 0x1

anim_0326__v0_l1: @ 80E9CF0
	mJumpBack anim_0326__v0_l0

anim_0326__v1_l0: @ 80E9CF8
	mGetPalette 7 16 0x30
	mGetTiles 0xD446 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x2

	mGetTiles 0xD486 64
	mDisplayFrame 0x2 0x3

anim_0326__v1_l1: @ 80E9D38
	mJumpBack anim_0326__v1_l0

anim_0326__v2_l0: @ 80E9D40
	mGetPalette 7 16 0x30
	mGetTiles 0xD4C6 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x4

	mGetTiles 0xD506 64
	mDisplayFrame 0x2 0x5

anim_0326__v2_l1: @ 80E9D80
	mJumpBack anim_0326__v2_l0

anim_0326__v3_l0: @ 80E9D88
	mGetPalette 7 16 0x30
	mGetTiles 0xD546 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x6

	mGetTiles 0xD586 64
	mDisplayFrame 0x2 0x7

anim_0326__v3_l1: @ 80E9DC8
	mJumpBack anim_0326__v3_l0

anim_0326__v4_l0: @ 80E9DD0
	mGetPalette 7 16 0x30
	mGetTiles 0xD5C6 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x8

	mGetTiles 0xD606 64
	mDisplayFrame 0x2 0x9

anim_0326__v4_l1: @ 80E9E10
	mJumpBack anim_0326__v4_l0

anim_0326__v5_l0: @ 80E9E18
	mGetPalette 7 16 0x30
	mGetTiles 0xD646 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xA

	mGetTiles 0xD686 64
	mDisplayFrame 0x2 0xB

anim_0326__v5_l1: @ 80E9E58
	mJumpBack anim_0326__v5_l0

anim_0326__v6_l0: @ 80E9E60
	mGetPalette 7 16 0x30
	mGetTiles 0xD6C6 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xC

	mGetTiles 0xD706 64
	mDisplayFrame 0x2 0xD

anim_0326__v6_l1: @ 80E9EA0
	mJumpBack anim_0326__v6_l0

anim_0326__v7_l0: @ 80E9EA8
	mGetPalette 7 16 0x30
	mGetTiles 0xD746 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0xE

	mGetTiles 0xD786 64
	mDisplayFrame 0x2 0xF

anim_0326__v7_l1: @ 80E9EE8
	mJumpBack anim_0326__v7_l0

anim_0326:
	.4byte anim_0326__v0_l0
	.4byte anim_0326__v1_l0
	.4byte anim_0326__v2_l0
	.4byte anim_0326__v3_l0
	.4byte anim_0326__v4_l0
	.4byte anim_0326__v5_l0
	.4byte anim_0326__v6_l0
	.4byte anim_0326__v7_l0


anim_0327__v0_l0: @ 80E9F10
	mGetPalette 7 16 0x30
	mGetTiles 0xD7C6 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x4 0x0

anim_0327__v0_l1: @ 80E9F3C
	mGetTiles 0xD806 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x1

	mGetTiles 0xD846 64
	mDisplayFrame 0x2 0x2

anim_0327__v0_l2: @ 80E9F70
	mJumpBack anim_0327__v0_l1

anim_0327__v1_l0: @ 80E9F78
	mGetPalette 7 16 0x30
	mGetTiles 0xD7C6 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x4 0x0

	mEnd 

anim_0327:
	.4byte anim_0327__v0_l0
	.4byte anim_0327__v1_l0


anim_0328__v0_l0: @ 80E9FB0
	mGetPalette 7 16 0x30
	mGetTiles 0xD886 64
	mAddHitbox 0 0xEC 0xEC 0x14 0x14
	mDisplayFrame 0x2 0x0

	mGetTiles 0xD8C6 64
	mDisplayFrame 0x2 0x1

	mGetTiles 0xD906 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0xD946 64
	mDisplayFrame 0x2 0x3

	mGetTiles 0xD986 64
	mDisplayFrame 0x2 0x4

	mGetTiles 0xD9C6 64
	mDisplayFrame 0x2 0x5

	mGetTiles 0xDA06 64
	mDisplayFrame 0x2 0x6

	mGetTiles 0xDA46 64
	mDisplayFrame 0x2 0x7

	mGetTiles 0xDA86 64
	mDisplayFrame 0x2 0x8

	mGetTiles 0xDAC6 64
	mDisplayFrame 0x2 0x9

	mGetTiles 0xDB06 64
	mDisplayFrame 0x2 0xA

anim_0328__v0_l1: @ 80EA0A4
	mJumpBack anim_0328__v0_l0

anim_0328:
	.4byte anim_0328__v0_l0


anim_0329__v0_l0: @ 80EA0B0
	mGetPalette 7 16 0x30
	mGetTiles 0xDB46 64
	mAddHitbox 0 0xF2 0xF2 0x0E 0x0E
	mDisplayFrame 0x1 0x0

	mGetTiles 0xDB86 64
	mDisplayFrame 0x2 0x1

	mGetTiles 0xDBC6 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0xDC06 64
	mDisplayFrame 0x2 0x3

	mGetTiles 0xDC46 64
	mDisplayFrame 0x2 0x4

	mGetTiles 0xDC86 64
	mDisplayFrame 0x2 0x5

	mGetTiles 0xDCC6 64
	mDisplayFrame 0x2 0x6

	mGetTiles 0xDD06 64
	mDisplayFrame 0x2 0x7

	mGetTiles 0xDD46 64
	mDisplayFrame 0x2 0x8

	mGetTiles 0xDD86 64
	mDisplayFrame 0x2 0x9

	mGetTiles 0xDDC6 64
	mDisplayFrame 0x2 0xA

	mGetTiles 0xDE06 64
	mDisplayFrame 0x2 0xB

	mGetTiles 0xDE46 64
	mDisplayFrame 0x2 0xC

	mGetTiles 0xDB86 64
	mDisplayFrame 0x2 0x1

	mGetTiles 0xDBC6 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0xDC06 64
	mDisplayFrame 0x2 0x3

	mGetTiles 0xDC46 64
	mDisplayFrame 0x2 0x4

	mGetTiles 0xDC86 64
	mDisplayFrame 0x2 0x5

	mGetTiles 0xDCC6 64
	mDisplayFrame 0x2 0x6

	mGetTiles 0xDD06 64
	mDisplayFrame 0x2 0x7

	mGetTiles 0xDD46 64
	mDisplayFrame 0x2 0x8

	mGetTiles 0xDD86 64
	mDisplayFrame 0x2 0x9

	mGetTiles 0xDE86 64
	mAddHitbox 0 0x00 0x00 0x00 0x00
	mDisplayFrame 0x1 0xD

	mEnd 

anim_0329:
	.4byte anim_0329__v0_l0


anim_0330__v0_l0: @ 80EA2A8
	mGetPalette 7 16 0x30
	mGetTiles 0xDEC6 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x3 0x0

	mGetTiles 0xDF06 64
	mDisplayFrame 0x3 0x1

	mGetTiles 0xDF46 64
	mDisplayFrame 0x3 0x2

	mGetTiles 0xDF86 64
	mDisplayFrame 0x3 0x3

	mGetTiles 0xDFC6 64
	mDisplayFrame 0x3 0x4

	mGetTiles 0xE006 64
	mDisplayFrame 0x3 0x5

	mGetTiles 0xE046 64
	mDisplayFrame 0x3 0x6

anim_0330__v0_l1: @ 80EA34C
	mJumpBack anim_0330__v0_l0

anim_0330:
	.4byte anim_0330__v0_l0


anim_0331__v0_l0: @ 80EA358
	mGetPalette 7 16 0x30
	mGetTiles 0xE086 64
	mDisplayFrame 0x6 0x0

	mGetTiles 0xE0C6 64
	mDisplayFrame 0x3 0x1

	mGetTiles 0xE106 64
	mDisplayFrame 0x8 0x2

	mGetTiles 0xE146 64
	mDisplayFrame 0x5 0x3

anim_0331__v0_l1: @ 80EA3B4
	mGetTiles 0xE186 64
	mDisplayFrame 0x3 0x4

	mGetTiles 0xE1C6 64
	mDisplayFrame 0x3 0x5

anim_0331__v0_l2: @ 80EA3DC
	mJumpBack anim_0331__v0_l1

anim_0331__v1_l0: @ 80EA3E4
	mGetPalette 7 16 0x30
	mGetTiles 0xE086 64
	mDisplayFrame 0x6 0x0

	mEnd 

anim_0331:
	.4byte anim_0331__v0_l0
	.4byte anim_0331__v1_l0


anim_0332__v0_l0: @ 80EA410
	mGetPalette 7 16 0x30
	mGetTiles 0xE206 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x0

	mGetTiles 0xE246 64
	mDisplayFrame 0x2 0x1

anim_0332__v0_l1: @ 80EA450
	mJumpBack anim_0332__v0_l0

anim_0332__v1_l0: @ 80EA458
	mGetPalette 7 16 0x30
	mGetTiles 0xE286 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0xE2C6 64
	mDisplayFrame 0x2 0x3

	mGetTiles 0xE306 64
	mDisplayFrame 0x2 0x4

	mGetTiles 0xE346 64
	mDisplayFrame 0x2 0x5

	mGetTiles 0xE386 64
	mDisplayFrame 0x2 0x6

	mGetTiles 0xE3C6 64
	mDisplayFrame 0x2 0x7

anim_0332__v1_l1: @ 80EA4DC
	mJumpBack anim_0332__v1_l0

anim_0332:
	.4byte anim_0332__v0_l0
	.4byte anim_0332__v1_l0


anim_0333__v0_l0: @ 80EA4EC
	mGetPalette 7 16 0xA0
	mGetTiles 0xE406 18
	mDisplayFrame 0x3 0x0

	mGetTiles 0xE418 18
	mDisplayFrame 0x3 0x1

anim_0333__v0_l1: @ 80EA520
	mJumpBack anim_0333__v0_l0

anim_0333__v1_l0: @ 80EA528
	mGetPalette 7 16 0xA0
	mGetTiles 0xE42A 15
	mDisplayFrame 0x3 0x2

	mGetTiles 0xE439 20
	mDisplayFrame 0x3 0x3

	mGetTiles 0xE44D 16
	mDisplayFrame 0x3 0x4

	mGetTiles 0xE45D 16
	mDisplayFrame 0xF 0x5

	mGetTiles 0xE46D 15
	mDisplayFrame 0x3 0x6

	mGetTiles 0xE47C 15
	mDisplayFrame 0x3 0x7

	mGetTiles 0xE48B 15
	mDisplayFrame 0x3 0x8

	mGetTiles 0xE49A 20
	mDisplayFrame 0x3 0x9

	mGetTiles 0xE4AE 20
	mDisplayFrame 0x3 0xA

anim_0333__v1_l1: @ 80EA5E8
	mGetTiles 0xE4C2 25
	mDisplayFrame 0x19 0xB

	mGetTiles 0xE4DB 25
	mDisplayFrame 0x6 0xC

	mGetTiles 0xE4F4 25
	mDisplayFrame 0x6 0xD

	mGetTiles 0xE4DB 25
	mDisplayFrame 0x6 0xC

anim_0333__v1_l2: @ 80EA638
	mJumpBack anim_0333__v1_l1

anim_0333:
	.4byte anim_0333__v0_l0
	.4byte anim_0333__v1_l0


anim_0334__v0_l0: @ 80EA648
	mGetPalette 7 16 0x30
	mGetTiles 0xE50D 16
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x3 0x0

	mGetTiles 0xE51D 16
	mDisplayFrame 0x3 0x1

	mGetTiles 0xE52D 16
	mDisplayFrame 0x3 0x2

	mGetTiles 0xE53D 16
	mDisplayFrame 0x3 0x3

	mGetTiles 0xE54D 16
	mDisplayFrame 0x3 0x4

	mGetTiles 0xE55D 16
	mDisplayFrame 0x3 0x5

	mGetTiles 0xE56D 16
	mDisplayFrame 0x3 0x6

	mGetTiles 0xE57D 16
	mDisplayFrame 0x3 0x7

anim_0334__v0_l1: @ 80EA700
	mJumpBack anim_0334__v0_l0

anim_0334__v1_l0: @ 80EA708
	mGetPalette 7 16 0x30
	mGetTiles 0xE58D 20
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x3 0x8

	mGetTiles 0xE5A1 20
	mDisplayFrame 0x3 0x9

	mGetTiles 0xE5B5 20
	mDisplayFrame 0x3 0xA

	mGetTiles 0xE5C9 20
	mDisplayFrame 0x3 0xB

	mGetTiles 0xE5DD 20
	mDisplayFrame 0x3 0xC

	mGetTiles 0xE5F1 20
	mDisplayFrame 0x3 0xD

	mGetTiles 0xE605 20
	mDisplayFrame 0x3 0xE

	mGetTiles 0xE619 20
	mDisplayFrame 0x3 0xF

anim_0334__v1_l1: @ 80EA7C0
	mJumpBack anim_0334__v1_l0

anim_0334__v2_l0: @ 80EA7C8
	mGetPalette 7 16 0x30
	mGetTiles 0xE62D 20
	mAddHitbox 0 0xFA 0xEE 0x06 0x0A
	mDisplayFrame 0x3 0x10

	mGetTiles 0xE641 20
	mDisplayFrame 0x3 0x11

	mGetTiles 0xE655 20
	mDisplayFrame 0x3 0x12

	mGetTiles 0xE669 20
	mDisplayFrame 0x3 0x13

	mGetTiles 0xE67D 20
	mDisplayFrame 0x3 0x14

	mGetTiles 0xE691 20
	mDisplayFrame 0x3 0x15

	mGetTiles 0xE6A5 20
	mDisplayFrame 0x3 0x16

	mGetTiles 0xE6B9 20
	mDisplayFrame 0x3 0x17

anim_0334__v2_l1: @ 80EA880
	mJumpBack anim_0334__v2_l0

anim_0334:
	.4byte anim_0334__v0_l0
	.4byte anim_0334__v1_l0
	.4byte anim_0334__v2_l0


anim_0335__v0_l0: @ 80EA894
	mGetPalette 7 16 0x30
	mGetTiles 0xE6CD 16
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x2 0x0

	mGetTiles 0xE6DD 16
	mDisplayFrame 0x2 0x1

	mGetTiles 0xE6ED 16
	mAddHitbox 0 0xB6 0x1D 0xB6 0x1D
	mDisplayFrame 0x4 0x2

	mGetTiles 0xE6FD 16
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x1 0x3

	mGetTiles 0xE70D 12
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x1 0x4

anim_0335__v0_l1: @ 80EA934
	mGetTiles 0xE719 20
	mAddHitbox 0 0xFC 0xF4 0x06 0x10
	mDisplayFrame 0x2 0x5

	mGetTiles 0xE72D 20
	mDisplayFrame 0x2 0x6

	mGetTiles 0xE741 20
	mAddHitbox 0 0xC7 0x1A 0xC7 0x1A
	mDisplayFrame 0x2 0x7

anim_0335__v0_l2: @ 80EA988
	mJumpBack anim_0335__v0_l1

anim_0335:
	.4byte anim_0335__v0_l0


anim_0336__v0_l0: @ 80EA994
	mGetPalette 7 16 0x30
	mGetTiles 0xE755 24
	mAddHitbox 0 0xFA 0xF2 0x04 0x0E
	mDisplayFrame 0x3 0x0

	mGetTiles 0xE76D 24
	mDisplayFrame 0x3 0x1

	mGetTiles 0xE785 24
	mDisplayFrame 0x3 0x2

	mGetTiles 0xE79D 20
	mAddHitbox 0 0xFA 0xF2 0x06 0x0C
	mDisplayFrame 0x2 0x3

	mGetTiles 0xE7B1 24
	mAddHitbox 0 0xFA 0xF2 0x06 0x0E
	mDisplayFrame 0x2 0x4

	mEnd 

anim_0336:
	.4byte anim_0336__v0_l0


anim_0337__v0_l0: @ 80EAA30
	mGetPalette 7 16 0x30
	mGetTiles 0xE7C9 64
	mDisplayFrame 0x2 0x0

	mGetTiles 0xE809 64
	mDisplayFrame 0x2 0x1

	mGetTiles 0xE849 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0xE889 64
	mDisplayFrame 0x2 0x3

anim_0337__v0_l1: @ 80EAA8C
	mJumpBack anim_0337__v0_l0

anim_0337:
	.4byte anim_0337__v0_l0


anim_0338__v0_l0: @ 80EAA98
	mGetPalette 7 16 0x30
	mGetTiles 0xE8C9 24
	mAddHitbox 0 0xE2 0xEC 0xFC 0xFC
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x0

	mGetTiles 0xE8E1 20
	mAddHitbox 0 0xEA 0xEC 0xFE 0xFC
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x1

	mGetTiles 0xE8F5 16
	mAddHitbox 0 0xFC 0xEC 0x02 0xFC
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x2

	mGetTiles 0xE905 16
	mAddHitbox 0 0x02 0xEC 0x08 0xFC
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x3

	mGetTiles 0xE915 16
	mAddHitbox 0 0x03 0xEC 0x17 0xFC
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x4

	mGetTiles 0xE925 20
	mAddHitbox 0 0x04 0xEC 0x1E 0xFC
	mAnimCmd12 0x10
	mDisplayFrame 0x3 0x5

	mGetTiles 0xE939 20
	mAddHitbox 0 0x04 0xEC 0x18 0xFC
	mAnimCmd12 0x13
	mDisplayFrame 0x3 0x6

	mGetTiles 0xE94D 12
	mAddHitbox 0 0x03 0xEC 0x09 0xFC
	mAnimCmd12 0x13
	mDisplayFrame 0x3 0x7

	mGetTiles 0xE959 16
	mAddHitbox 0 0xF8 0xEC 0xFE 0xFC
	mAnimCmd12 0x13
	mDisplayFrame 0x3 0x8

	mGetTiles 0xE969 20
	mAddHitbox 0 0xEA 0xEC 0xFE 0xFC
	mAnimCmd12 0x13
	mDisplayFrame 0x3 0x9

anim_0338__v0_l1: @ 80EAC34
	mJumpBack anim_0338__v0_l0

anim_0338__v1_l0: @ 80EAC3C
	mGetPalette 7 16 0x30
	mGetTiles 0xE97D 24
	mAddHitbox 0 0xF8 0x20 0x08 0x08
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xA

	mGetTiles 0xE995 20
	mAddHitbox 0 0xF8 0x17 0x08 0x09
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xB

	mGetTiles 0xE9A9 16
	mAddHitbox 0 0xF8 0x09 0x08 0xFD
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xC

	mGetTiles 0xE9B9 16
	mAddHitbox 0 0xF8 0x02 0x08 0xF6
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xD

	mGetTiles 0xE9C9 16
	mAddHitbox 0 0xF8 0x01 0x08 0xEF
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xE

	mGetTiles 0xE9D9 20
	mAddHitbox 0 0xF8 0xFC 0x08 0xE4
	mAnimCmdSetSpritePriority 0x2
	mDisplayFrame 0x3 0xF

	mGetTiles 0xE9ED 20
	mAddHitbox 0 0xF8 0xF8 0x08 0xEA
	mAnimCmdSetSpritePriority 0x3
	mDisplayFrame 0x3 0x10

	mGetTiles 0xEA01 12
	mAddHitbox 0 0xF8 0x02 0x08 0xF6
	mAnimCmdSetSpritePriority 0x3
	mDisplayFrame 0x3 0x11

	mGetTiles 0xEA0D 16
	mAddHitbox 0 0xF7 0x09 0x07 0xFD
	mAnimCmdSetSpritePriority 0x3
	mDisplayFrame 0x3 0x12

	mGetTiles 0xEA1D 20
	mAddHitbox 0 0xF8 0x14 0x08 0x02
	mAnimCmdSetSpritePriority 0x3
	mDisplayFrame 0x3 0x13

anim_0338__v1_l1: @ 80EADD8
	mJumpBack anim_0338__v1_l0

anim_0338:
	.4byte anim_0338__v0_l0
	.4byte anim_0338__v1_l0


anim_0339__v0_l0: @ 80EADE8
	mGetPalette 7 16 0x30
	mGetTiles 0xEA31 24
	mAddHitbox 0 0xFA 0xEE 0x06 0x08
	mDisplayFrame 0xA 0x0

	mGetTiles 0xEA49 24
	mDisplayFrame 0xA 0x1

	mGetTiles 0xEA61 24
	mDisplayFrame 0xA 0x2

	mGetTiles 0xEA49 24
	mDisplayFrame 0xA 0x1

anim_0339__v0_l1: @ 80EAE50
	mJumpBack anim_0339__v0_l0

anim_0339__v1_l0: @ 80EAE58
	mGetPalette 7 16 0x30
	mGetTiles 0xEA79 24
	mAddHitbox 0 0xFA 0xEE 0x06 0x08
	mDisplayFrame 0x5 0x3

	mGetTiles 0xEA91 24
	mDisplayFrame 0x5 0x4

	mGetTiles 0xEAA9 24
	mDisplayFrame 0x5 0x5

	mGetTiles 0xEA91 24
	mDisplayFrame 0x5 0x4

anim_0339__v1_l1: @ 80EAEC0
	mJumpBack anim_0339__v1_l0

anim_0339:
	.4byte anim_0339__v0_l0
	.4byte anim_0339__v1_l0


anim_0340__v0_l0: @ 80EAED0
	mGetPalette 7 16 0x30
	mGetTiles 0xEAC1 25
	mAddHitbox 0 0xFA 0xF4 0x06 0x08
	mDisplayFrame 0x5 0x0

	mGetTiles 0xEADA 20
	mDisplayFrame 0x5 0x1

	mGetTiles 0xEAEE 20
	mDisplayFrame 0x5 0x2

	mGetTiles 0xEB02 16
	mDisplayFrame 0x5 0x3

	mGetTiles 0xEB12 25
	mDisplayFrame 0x5 0x4

	mGetTiles 0xEB2B 20
	mDisplayFrame 0x5 0x5

	mGetTiles 0xEB3F 20
	mDisplayFrame 0x5 0x6

	mGetTiles 0xEB53 20
	mDisplayFrame 0x5 0x7

anim_0340__v0_l1: @ 80EAF88
	mJumpBack anim_0340__v0_l0

anim_0340:
	.4byte anim_0340__v0_l0


anim_0341__v0_l0: @ 80EAF94
	mGetPalette 7 16 0x30
	mGetTiles 0xEB67 24
	mDisplayFrame 0x8 0x0

	mGetTiles 0xEB7F 24
	mDisplayFrame 0x8 0x1

	mGetTiles 0xEB97 24
	mDisplayFrame 0x8 0x2

	mGetTiles 0xEB7F 24
	mDisplayFrame 0x8 0x1

anim_0341__v0_l1: @ 80EAFF0
	mJumpBack anim_0341__v0_l0

anim_0341:
	.4byte anim_0341__v0_l0


anim_0342__v0_l0: @ 80EAFFC
	mGetPalette 7 16 0x30
	mGetTiles 0xEBAF 25
	mAddHitbox 0 0xFA 0xFC 0x06 0x10
	mDisplayFrame 0x2 0x0

	mGetTiles 0xEBC8 25
	mDisplayFrame 0x2 0x1

anim_0342__v0_l1: @ 80EB03C
	mJumpBack anim_0342__v0_l0

anim_0342__v1_l0: @ 80EB044
	mGetPalette 7 16 0x30
	mGetTiles 0xEBE1 25
	mAddHitbox 0 0xFA 0xFE 0x06 0x10
	mDisplayFrame 0x2 0x2

	mGetTiles 0xEBFA 25
	mDisplayFrame 0x2 0x3

anim_0342__v1_l1: @ 80EB084
	mJumpBack anim_0342__v1_l0

anim_0342:
	.4byte anim_0342__v0_l0
	.4byte anim_0342__v1_l0


anim_0343__v0_l0: @ 80EB094
	mGetPalette 7 16 0x30
	mGetTiles 0xEC13 20
	mAddHitbox 0 0xFA 0xF0 0x06 0x06
	mDisplayFrame 0x2 0x0

	mGetTiles 0xEC27 20
	mAddHitbox 0 0xFA 0xEC 0x06 0x06
	mDisplayFrame 0x8 0x1

	mGetTiles 0xEC3B 20
	mDisplayFrame 0x1 0x2

	mGetTiles 0xEC4F 25
	mAddHitbox 0 0xFA 0xF2 0x06 0x0C
	mDisplayFrame 0x3 0x3

	mGetTiles 0xEC68 25
	mDisplayFrame 0x3 0x4

	mGetTiles 0xEC81 25
	mDisplayFrame 0x3 0x5

	mGetTiles 0xEC4F 25
	mAddHitbox 0 0xFA 0xF2 0x06 0x0C
	mDisplayFrame 0x3 0x3

	mGetTiles 0xEC68 25
	mDisplayFrame 0x3 0x4

	mGetTiles 0xEC81 25
	mDisplayFrame 0x3 0x5

	mGetTiles 0xEC4F 25
	mAddHitbox 0 0xFA 0xF2 0x06 0x0C
	mDisplayFrame 0x3 0x3

	mGetTiles 0xEC68 25
	mDisplayFrame 0x3 0x4

	mGetTiles 0xEC81 25
	mDisplayFrame 0x3 0x5

	mGetTiles 0xEC9A 20
	mAddHitbox 0 0xFA 0xF4 0x06 0x0E
	mDisplayFrame 0x1 0x6

anim_0343__v0_l1: @ 80EB1EC
	mGetTiles 0xECAE 30
	mAddHitbox 0 0xFA 0xF4 0x06 0x0E
	mDisplayFrame 0x3 0x7

	mGetTiles 0xECCC 30
	mDisplayFrame 0x3 0x8

	mGetTiles 0xECEA 30
	mDisplayFrame 0x3 0x9

anim_0343__v0_l2: @ 80EB234
	mJumpBack anim_0343__v0_l1

anim_0343:
	.4byte anim_0343__v0_l0


anim_0348__v0_l0: @ 80EB240
	mGetPalette 7 16 0x30
	mGetTiles 0xED08 20
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x1 0x0

	mGetTiles 0xED1C 24
	mAddHitbox 0 0x00 0xF4 0x0E 0x10
	mDisplayFrame 0x1 0x1

	mGetTiles 0xED34 20
	mAddHitbox 0 0x02 0xF4 0x0E 0x10
	mDisplayFrame 0x1 0x2

	mGetTiles 0xED48 35
	mAddHitbox 0 0x06 0xF4 0x12 0x10
	mDisplayFrame 0x1 0x3

	mGetTiles 0xED6B 35
	mDisplayFrame 0x2 0x4

	mGetTiles 0xED8E 30
	mDisplayFrame 0x3 0x5

	mGetTiles 0xEDAC 30
	mAddHitbox 0 0x02 0xF4 0x0E 0x10
	mDisplayFrame 0x1 0x6

	mGetTiles 0xEDCA 24
	mAddHitbox 0 0x00 0xF4 0x0C 0x10
	mAddHitbox 1 0xEC 0xDD 0x0A 0xFE
	mDisplayFrame 0x1 0x7

	mGetTiles 0xEDE2 42
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mAddHitbox 1 0xE0 0xE9 0x00 0x10
	mPlaySoundEffect 128
	mDisplayFrame 0x2 0x8

	mGetTiles 0xEE0C 35
	mDisplayFrame 0x2 0x9

	mGetTiles 0xEE2F 35
	mDisplayFrame 0x2 0xA

	mGetTiles 0xEE52 28
	mDisplayFrame 0x2 0xB

	mGetTiles 0xEE6E 16
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mAddHitbox 1 0x00 0x00 0x00 0x00
	mDisplayFrame 0x3 0xC

	mGetTiles 0xEE7E 20
	mDisplayFrame 0x3 0xD

	mGetTiles 0xEE92 16
	mDisplayFrame 0x3 0xE

	mEnd 

anim_0348:
	.4byte anim_0348__v0_l0


anim_0353__v0_l0: @ 80EB40C
	mGetPalette 7 16 0x30
	mGetTiles 0xEEA2 20
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x1 0x0

	mGetTiles 0xEEB6 20
	mDisplayFrame 0x1 0x1

	mGetTiles 0xEECA 25
	mDisplayFrame 0x1 0x2

	mGetTiles 0xEEE3 30
	mDisplayFrame 0x1 0x3

	mGetTiles 0xEF01 30
	mDisplayFrame 0x3 0x4

	mGetTiles 0xEF1F 36
	mDisplayFrame 0x4 0x5

	mGetTiles 0xEF43 36
	mDisplayFrame 0x2 0x6

	mGetTiles 0xEF67 35
	mDisplayFrame 0x1 0x7

	mGetTiles 0xEF8A 42
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mAddHitbox 1 0xE0 0xD6 0x00 0x00
	mDisplayFrame 0x1 0x8

	mGetTiles 0xEFB4 42
	mAddHitbox 0 0xF2 0xF4 0xFE 0x10
	mAddHitbox 1 0xD8 0xDE 0xF9 0x06
	mDisplayFrame 0x1 0x9

	mGetTiles 0xEFDE 42
	mAddHitbox 0 0xF2 0xF4 0xFE 0x10
	mAddHitbox 1 0xD4 0xE9 0xF5 0x10
	mPlaySoundEffect 128
	mDisplayFrame 0x1 0xA

	mGetTiles 0xF008 42
	mDisplayFrame 0x2 0xB

	mGetTiles 0xF032 42
	mDisplayFrame 0x2 0xC

	mGetTiles 0xF05C 28
	mDisplayFrame 0x2 0xD

	mGetTiles 0xF078 28
	mDisplayFrame 0x8 0xE

	mGetTiles 0xF094 16
	mAddHitbox 0 0xF8 0xF4 0x04 0x10
	mAddHitbox 1 0x00 0x00 0x00 0x00
	mDisplayFrame 0x3 0xF

	mGetTiles 0xF0A4 16
	mAddHitbox 0 0xFC 0xF4 0x08 0x10
	mDisplayFrame 0x3 0x10

	mGetTiles 0xF0B4 12
	mAddHitbox 0 0xFE 0xF4 0x0A 0x10
	mDisplayFrame 0x3 0x11

	mEnd 

anim_0353:
	.4byte anim_0353__v0_l0


anim_0373__v0_l0: @ 80EB614
	mGetPalette 7 16 0x30
	mGetTiles 0xF0C0 30
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x1 0x0

	mGetTiles 0xF0DE 24
	mDisplayFrame 0x1 0x1

	mGetTiles 0xF0F6 28
	mDisplayFrame 0x2 0x2

	mGetTiles 0xF112 20
	mAddHitbox 0 0xF7 0xED 0x08 0x0D
	mDisplayFrame 0x1 0x3

	mGetTiles 0xF126 25
	mAddHitbox 0 0xFA 0xF4 0x06 0x0E
	mDisplayFrame 0x2 0x4

	mGetTiles 0xF13F 18
	mDisplayFrame 0x2 0x5

	mGetTiles 0xF151 25
	mDisplayFrame 0x2 0x6

	mGetTiles 0xF16A 18
	mDisplayFrame 0x2 0x7

	mGetTiles 0xF17C 20
	mDisplayFrame 0x2 0x8

	mGetTiles 0xF190 15
	mDisplayFrame 0x2 0x9

	mGetTiles 0xF19F 25
	mDisplayFrame 0x2 0xA

	mGetTiles 0xF1B8 15
	mDisplayFrame 0x2 0xB

	mGetTiles 0xF126 25
	mAddHitbox 0 0xFA 0xF4 0x06 0x0E
	mDisplayFrame 0x2 0x4

	mGetTiles 0xF13F 18
	mDisplayFrame 0x2 0x5

	mGetTiles 0xF151 25
	mDisplayFrame 0x2 0x6

	mGetTiles 0xF16A 18
	mDisplayFrame 0x2 0x7

	mGetTiles 0xF17C 20
	mDisplayFrame 0x2 0x8

	mGetTiles 0xF190 15
	mDisplayFrame 0x2 0x9

anim_0373__v0_l1: @ 80EB7B8
	mGetTiles 0xF1C7 30
	mAddHitbox 0 0xFA 0xF4 0x06 0x0E
	mDisplayFrame 0x3 0xC

	mGetTiles 0xF1E5 30
	mDisplayFrame 0x3 0xD

	mGetTiles 0xF203 30
	mDisplayFrame 0x3 0xE

anim_0373__v0_l2: @ 80EB800
	mJumpBack anim_0373__v0_l1

anim_0373:
	.4byte anim_0373__v0_l0


anim_0374__v0_l0: @ 80EB80C
	mGetPalette 7 16 0x30
	mGetTiles 0xF221 16
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x1 0x0

	mGetTiles 0xF231 16
	mDisplayFrame 0x1 0x1

	mGetTiles 0xF241 16
	mDisplayFrame 0x2 0x2

anim_0374__v0_l1: @ 80EB860
	mGetTiles 0xF251 20
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x2 0x3

	mGetTiles 0xF265 20
	mDisplayFrame 0x2 0x4

	mGetTiles 0xF279 20
	mDisplayFrame 0x2 0x5

anim_0374__v0_l2: @ 80EB8A8
	mJumpBack anim_0374__v0_l1

anim_0374__v1_l0: @ 80EB8B0
	mGetPalette 7 16 0x30
	mGetTiles 0xF28D 20
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x1 0x6

anim_0374__v1_l1: @ 80EB8DC
	mGetTiles 0xF2A1 20
	mDisplayFrame 0x2 0x7

	mGetTiles 0xF2B5 20
	mDisplayFrame 0x2 0x8

anim_0374__v1_l2: @ 80EB904
	mJumpBack anim_0374__v1_l1

anim_0374__v2_l0: @ 80EB90C
	mGetPalette 7 16 0x30
	mGetTiles 0xF2C9 16
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x1 0x9

	mEnd 

anim_0374:
	.4byte anim_0374__v0_l0
	.4byte anim_0374__v1_l0
	.4byte anim_0374__v2_l0


anim_0375__v0_l0: @ 80EB948
	mGetPalette 7 16 0x30
	mGetTiles 0xF2D9 16
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x2 0x0

	mGetTiles 0xF2E9 20
	mAddHitbox 0 0xFA 0xF8 0x08 0x10
	mAddHitbox 1 0xF0 0xF2 0x00 0x10
	mDisplayFrame 0x2 0x1

	mGetTiles 0xF2FD 20
	mDisplayFrame 0x2 0x2

	mGetTiles 0xF311 20
	mAddHitbox 0 0xFA 0xFE 0x08 0x10
	mAddHitbox 1 0xF0 0xFE 0x00 0x10
	mDisplayFrame 0x2 0x3

anim_0375__v0_l1: @ 80EB9E0
	mGetTiles 0xF325 20
	mAddHitbox 1 0xF0 0xFE 0x00 0x10
	mDisplayFrame 0x3 0x4

	mGetTiles 0xF339 24
	mDisplayFrame 0x3 0x5

anim_0375__v0_l2: @ 80EBA14
	mJumpBack anim_0375__v0_l1

anim_0375__v1_l0: @ 80EBA1C
	mGetPalette 7 16 0x30
	mGetTiles 0xF351 18
	mAddHitbox 0 0xFA 0xFC 0x06 0x10
	mAddHitbox 1 0x00 0x00 0x00 0x00
	mDisplayFrame 0x6 0x6

	mGetTiles 0xF363 20
	mDisplayFrame 0x2 0x7

	mGetTiles 0xF377 20
	mDisplayFrame 0x2 0x8

	mGetTiles 0xF38B 15
	mAddHitbox 0 0xFA 0xFC 0x06 0x10
	mDisplayFrame 0x6 0x9

	mGetTiles 0xF39A 15
	mDisplayFrame 0x6 0xA

	mGetTiles 0xF38B 15
	mDisplayFrame 0x6 0x9

	mGetTiles 0xF39A 15
	mDisplayFrame 0x6 0xA

	mGetTiles 0xF38B 15
	mDisplayFrame 0x6 0x9

	mGetTiles 0xF3A9 15
	mAddHitbox 0 0xFA 0xFA 0x06 0x10
	mDisplayFrame 0x1 0xB

	mGetTiles 0xF3B8 16
	mDisplayFrame 0x1 0xC

	mEnd 

anim_0375:
	.4byte anim_0375__v0_l0
	.4byte anim_0375__v1_l0


anim_0376__v0_l0: @ 80EBB2C
	mGetPalette 7 16 0x30
	mGetTiles 0xF3C8 24
	mAddHitbox 0 0xFA 0xF4 0x06 0x0E
	mDisplayFrame 0x3 0x0

	mGetTiles 0xF3E0 35
	mDisplayFrame 0x4 0x1

	mGetTiles 0xF403 30
	mAddHitbox 0 0xFA 0xF4 0x06 0x0E
	mAddHitbox 1 0xE8 0xE5 0x15 0x0C
	mDisplayFrame 0x3 0x2

	mGetTiles 0xF421 30
	mAddHitbox 0 0xFA 0xF4 0x06 0x0E
	mAddHitbox 1 0xD9 0xE7 0x11 0x1C
	mDisplayFrame 0x3 0x3

	mGetTiles 0xF43F 42
	mAddHitbox 0 0xFA 0xF4 0x08 0x0E
	mAddHitbox 1 0xE3 0xE9 0x0E 0x21
	mDisplayFrame 0x3 0x4

	mGetTiles 0xF469 30
	mAddHitbox 0 0xFA 0xFC 0x06 0x16
	mAddHitbox 1 0x00 0x00 0x00 0x00
	mDisplayFrame 0x3 0x5

	mGetTiles 0xF487 20
	mDisplayFrame 0x3 0x6

	mGetTiles 0xF49B 20
	mDisplayFrame 0x3 0x7

	mGetTiles 0xF4AF 24
	mDisplayFrame 0x3 0x8

	mGetTiles 0xF4C7 16
	mDisplayFrame 0x3 0x9

	mGetTiles 0xF4D7 20
	mDisplayFrame 0x4 0xA

anim_0376__v0_l1: @ 80EBC80
	mGetTiles 0xF4EB 30
	mDisplayFrame 0x3 0xB

	mGetTiles 0xF509 30
	mDisplayFrame 0x3 0xC

	mGetTiles 0xF527 30
	mDisplayFrame 0x3 0xD

anim_0376__v0_l2: @ 80EBCBC
	mJumpBack anim_0376__v0_l1

anim_0376:
	.4byte anim_0376__v0_l0


anim_0377__v0_l0: @ 80EBCC8
	mGetPalette 7 16 0x30
	mGetTiles 0xF545 20
	mAddHitbox 0 0xFA 0xF4 0x06 0x0E
	mDisplayFrame 0x3 0x0

	mGetTiles 0xF559 20
	mDisplayFrame 0x4 0x1

	mGetTiles 0xF56D 20
	mDisplayFrame 0x3 0x2

anim_0377__v0_l1: @ 80EBD1C
	mGetTiles 0xF581 30
	mAddHitbox 0 0xFA 0xF4 0x06 0x0E
	mAddHitbox 1 0xE8 0xFA 0x18 0x0E
	mDisplayFrame 0x2 0x3

	mGetTiles 0xF59F 20
	mDisplayFrame 0x2 0x4

	mGetTiles 0xF5B3 30
	mDisplayFrame 0x2 0x5

	mGetTiles 0xF5D1 20
	mDisplayFrame 0x2 0x6

	mGetTiles 0xF5E5 16
	mDisplayFrame 0x2 0x7

	mGetTiles 0xF5F5 24
	mDisplayFrame 0x2 0x8

anim_0377__v0_l2: @ 80EBDAC
	mJumpBack anim_0377__v0_l1

anim_0377__v1_l0: @ 80EBDB4
	mGetPalette 7 16 0x30
	mGetTiles 0xF60D 20
	mAddHitbox 0 0xFA 0xF4 0x06 0x0E
	mAddHitbox 1 0x00 0x00 0x00 0x00
	mDisplayFrame 0x4 0x9

anim_0377__v1_l1: @ 80EBDEC
	mGetTiles 0xF621 30
	mDisplayFrame 0x3 0xA

	mGetTiles 0xF63F 30
	mDisplayFrame 0x3 0xB

	mGetTiles 0xF65D 30
	mDisplayFrame 0x3 0xC

anim_0377__v1_l2: @ 80EBE28
	mJumpBack anim_0377__v1_l1

anim_0377:
	.4byte anim_0377__v0_l0
	.4byte anim_0377__v1_l0


anim_0379__v0_l0: @ 80EBE38
	mGetPalette 7 16 0x30
	mGetTiles 0xF67B 24
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x3 0x0

	mGetTiles 0xF693 24
	mDisplayFrame 0x3 0x1

	mGetTiles 0xF6AB 24
	mDisplayFrame 0x3 0x2

	mGetTiles 0xF693 24
	mDisplayFrame 0x3 0x1

anim_0379__v0_l1: @ 80EBEA0
	mJumpBack anim_0379__v0_l0

anim_0379:
	.4byte anim_0379__v0_l0


anim_0380__v0_l0: @ 80EBEAC
	mGetPalette 7 16 0x30
	mGetTiles 0xF6C3 30
	mAddHitbox 0 0xFA 0xF4 0x06 0x10
	mDisplayFrame 0x3 0x0

	mGetTiles 0xF6E1 24
	mDisplayFrame 0x3 0x1

	mGetTiles 0xF6F9 24
	mDisplayFrame 0x3 0x2

	mGetTiles 0xF6E1 24
	mDisplayFrame 0x3 0x1

anim_0380__v0_l1: @ 80EBF14
	mJumpBack anim_0380__v0_l0

anim_0380:
	.4byte anim_0380__v0_l0


anim_0381__v0_l0: @ 80EBF20
	mGetPalette 7 16 0x30
	mGetTiles 0xF711 20
	mAddHitbox 0 0xFA 0xEE 0x06 0x08
	mDisplayFrame 0x3 0x0

	mGetTiles 0xF725 25
	mDisplayFrame 0x3 0x1

	mGetTiles 0xF73E 25
	mDisplayFrame 0x3 0x2

	mGetTiles 0xF725 25
	mDisplayFrame 0x3 0x1

anim_0381__v0_l1: @ 80EBF88
	mJumpBack anim_0381__v0_l0

anim_0381:
	.4byte anim_0381__v0_l0


anim_0383__v0_l0: @ 80EBF94
	mGetPalette 7 16 0xA0
	mGetTiles 0xF757 18
	mDisplayFrame 0x3 0x0

	mGetTiles 0xF769 18
	mDisplayFrame 0x3 0x1

anim_0383__v0_l1: @ 80EBFC8
	mJumpBack anim_0383__v0_l0

anim_0383:
	.4byte anim_0383__v0_l0


anim_0384__v0_l0: @ 80EBFD4
	mGetPalette 7 16 0xA0
	mGetTiles 0xF77B 16
	mDisplayFrame 0x2 0x0

	mGetTiles 0xF78B 16
	mDisplayFrame 0x2 0x1

	mEnd 

anim_0384__v1_l0: @ 80EC00C
	mGetPalette 7 16 0xA0
	mGetTiles 0xF79B 16
	mDisplayFrame 0x2 0x2

anim_0384__v1_l1: @ 80EC02C
	mJumpBack anim_0384__v1_l0

anim_0384:
	.4byte anim_0384__v0_l0
	.4byte anim_0384__v1_l0


anim_0385__v0_l0: @ 80EC03C
	mGetPalette 7 16 0xA0
	mGetTiles 0xF7AB 15
	mDisplayFrame 0x3 0x0

	mGetTiles 0xF7BA 15
	mDisplayFrame 0x3 0x1

anim_0385__v0_l1: @ 80EC070
	mJumpBack anim_0385__v0_l0

anim_0385:
	.4byte anim_0385__v0_l0


anim_0386__v0_l0: @ 80EC07C
	mGetPalette 7 16 0xA0
	mGetTiles 0xF7C9 25
	mDisplayFrame 0x8 0x0

anim_0386__v0_l1: @ 80EC09C
	mGetTiles 0xF7E2 25
	mDisplayFrame 0x3 0x1

	mGetTiles 0xF7FB 25
	mDisplayFrame 0x3 0x2

anim_0386__v0_l2: @ 80EC0C4
	mJumpBack anim_0386__v0_l1

anim_0386:
	.4byte anim_0386__v0_l0


anim_0387__v0_l0: @ 80EC0D0
	mGetPalette 7 16 0xA0
	mGetTiles 0xF814 20
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0387__v1_l0: @ 80EC0F4
	mGetPalette 7 16 0xA0
	mGetTiles 0xF828 20
	mDisplayFrame 0x4 0x1

	mGetTiles 0xF83C 20
	mDisplayFrame 0x4 0x2

	mGetTiles 0xF850 20
	mDisplayFrame 0x28 0x3

	mEnd 

anim_0387:
	.4byte anim_0387__v0_l0
	.4byte anim_0387__v1_l0


anim_0391__v0_l0: @ 80EC148
	mGetPalette 8 16 0x30
	mGetTiles 0xF864 16
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0391__v1_l0: @ 80EC178
	mGetPalette 8 16 0x30
	mGetTiles 0xF874 16
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0391__v2_l0: @ 80EC1A8
	mGetPalette 8 16 0x30
	mGetTiles 0xF884 16
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0391__v3_l0: @ 80EC1D8
	mGetPalette 8 16 0x30
	mGetTiles 0xF894 20
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0391__v4_l0: @ 80EC208
	mGetPalette 8 16 0x30
	mGetTiles 0xF8A8 20
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0391__v5_l0: @ 80EC238
	mGetPalette 8 16 0x30
	mGetTiles 0xF8BC 16
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0391__v6_l0: @ 80EC268
	mGetPalette 8 16 0x30
	mGetTiles 0xF8CC 16
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0391__v7_l0: @ 80EC298
	mGetPalette 8 16 0x30
	mGetTiles 0xF8DC 20
	mAddHitbox 0 0xFA 0xF6 0x06 0x0A
	mDisplayFrame 0x1 0x7

	mEnd 

anim_0391:
	.4byte anim_0391__v0_l0
	.4byte anim_0391__v1_l0
	.4byte anim_0391__v2_l0
	.4byte anim_0391__v3_l0
	.4byte anim_0391__v4_l0
	.4byte anim_0391__v5_l0
	.4byte anim_0391__v6_l0
	.4byte anim_0391__v7_l0


anim_0392__v0_l0: @ 80EC2E8
	mGetPalette 7 16 0x30
	mGetTiles 0xF8F0 16
	mAddHitbox 0 0xF8 0xF8 0x08 0x08
	mAddHitbox 1 0xF8 0xF8 0x08 0x08
	mDisplayFrame 0x3 0x0

	mGetTiles 0xF900 16
	mDisplayFrame 0x3 0x1

	mGetTiles 0xF910 16
	mDisplayFrame 0x3 0x2

	mGetTiles 0xF920 16
	mDisplayFrame 0x3 0x3

anim_0392__v0_l1: @ 80EC35C
	mJumpBack anim_0392__v0_l0

anim_0392:
	.4byte anim_0392__v0_l0


anim_0393__v0_l0: @ 80EC368
	mGetPalette 7 16 0x30
	mGetTiles 0xF930 16
	mAddHitbox 0 0xF8 0xF9 0x08 0x09
	mAddHitbox 1 0xF8 0xF9 0x08 0x09
	mDisplayFrame 0x3 0x0

	mGetTiles 0xF940 12
	mDisplayFrame 0x3 0x1

	mGetTiles 0xF94C 12
	mDisplayFrame 0x3 0x2

anim_0393__v0_l1: @ 80EC3C8
	mJumpBack anim_0393__v0_l0

anim_0393:
	.4byte anim_0393__v0_l0


anim_0394__v0_l0: @ 80EC3D4
	mGetPalette 7 16 0xA0
	mGetTiles 0xF958 64
	mDisplayFrame 0x2 0x0

	mGetTiles 0xF998 64
	mDisplayFrame 0x2 0x1

	mGetTiles 0xF9D8 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0xFA18 64
	mDisplayFrame 0x2 0x3

	mGetTiles 0xFA58 64
	mDisplayFrame 0x2 0x4

	mGetTiles 0xFA98 64
	mDisplayFrame 0x2 0x5

	mGetTiles 0xFAD8 64
	mDisplayFrame 0x2 0x6

	mGetTiles 0xFB18 64
	mDisplayFrame 0x2 0x7

	mGetTiles 0xFB58 64
	mDisplayFrame 0x2 0x8

	mGetTiles 0xFB98 64
	mDisplayFrame 0x2 0x9

anim_0394__v0_l1: @ 80EC4A8
	mJumpBack anim_0394__v0_l0

anim_0394:
	.4byte anim_0394__v0_l0


anim_0396__v0_l0: @ 80EC4B4
	mGetPalette 7 16 0x30
	mGetTiles 0xFBD8 64
	mDisplayFrame 0x2 0x0

	mEnd 

anim_0396:
	.4byte anim_0396__v0_l0


anim_0397__v0_l0: @ 80EC4DC
	mGetPalette 0 16 0x0
	mGetTiles 0xFC18 20
	mDisplayFrame 0x4 0x0

	mGetTiles 0xFC2C 20
	mDisplayFrame 0x4 0x1

	mGetTiles 0xFC40 20
	mDisplayFrame 0x4 0x2

	mEnd 

anim_0397:
	.4byte anim_0397__v0_l0


anim_0398__v0_l0: @ 80EC52C
	mGetPalette 0 16 0x0
	mGetTiles 0xFC54 16
	mDisplayFrame 0x4 0x0

	mGetTiles 0xFC64 16
	mDisplayFrame 0xA 0x1

	mGetTiles 0xFC74 16
	mDisplayFrame 0x2 0x2

	mGetTiles 0xFC54 16
	mDisplayFrame 0x4 0x0

	mGetTiles 0xFC84 20
	mDisplayFrame 0x3 0x3

	mGetTiles 0xFC98 20
	mDisplayFrame 0x3 0x4

	mGetTiles 0xFCAC 24
	mDisplayFrame 0x3 0x5

	mGetTiles 0xFCC4 24
	mDisplayFrame 0x3 0x6

	mGetPalette 9 16 0x0
	mGetTiles 0xFCDC 24
	mDisplayFrame 0x3 0x7

	mGetPalette 10 16 0x0
	mGetTiles 0xFCF4 24
	mDisplayFrame 0x3 0x8

anim_0398__v0_l1: @ 80EC618
	mGetPalette 11 16 0x0
	mGetTiles 0xFD0C 24
	mDisplayFrame 0x1 0x9

	mGetPalette 12 16 0x30
	mGetTiles 0xFD24 24
	mDisplayFrame 0x1 0xA

	mGetPalette 11 16 0x0
	mGetTiles 0xFD3C 24
	mDisplayFrame 0x1 0xB

	mGetPalette 12 16 0x30
	mGetTiles 0xFD54 24
	mDisplayFrame 0x1 0xC

anim_0398__v0_l2: @ 80EC698
	mJumpBack anim_0398__v0_l1

anim_0398__v1_l0: @ 80EC6A0
	mGetPalette 13 16 0x50
	mGetTiles 0xFD6C 36
	mDisplayFrame 0x3 0xD

	mGetTiles 0xFD90 56
	mDisplayFrame 0x3 0xE

anim_0398__v1_l1: @ 80EC6D4
	mJumpBack anim_0398__v1_l0

anim_0398:
	.4byte anim_0398__v0_l0
	.4byte anim_0398__v1_l0


anim_0399__v0_l0: @ 80EC6E4
	mGetPalette 11 16 0x0
	mGetTiles 0xFDC8 24
	mAddHitbox 0 0xF2 0xF6 0x0D 0x06
	mAddHitbox 1 0xF2 0xF6 0x0D 0x06
	mDisplayFrame 0x2 0x0

	mGetPalette 12 16 0x30
	mGetTiles 0xFDE0 24
	mDisplayFrame 0x2 0x1

	mGetPalette 11 16 0x0
	mGetTiles 0xFDF8 24
	mDisplayFrame 0x2 0x2

	mGetPalette 12 16 0x30
	mGetTiles 0xFE10 24
	mDisplayFrame 0x2 0x3

anim_0399__v0_l1: @ 80EC77C
	mJumpBack anim_0399__v0_l0

anim_0399__v1_l0: @ 80EC784
	mGetPalette 11 16 0x0
	mGetTiles 0xFE28 24
	mAddHitbox 0 0xF2 0xF6 0x0D 0x06
	mAddHitbox 1 0xEC 0xF1 0x03 0x0B
	mDisplayFrame 0x2 0x4

	mGetPalette 12 16 0x30
	mGetTiles 0xFE40 24
	mDisplayFrame 0x2 0x5

	mGetPalette 11 16 0x0
	mGetTiles 0xFE58 24
	mDisplayFrame 0x2 0x6

	mGetPalette 12 16 0x30
	mGetTiles 0xFE70 24
	mDisplayFrame 0x2 0x7

anim_0399__v1_l1: @ 80EC81C
	mJumpBack anim_0399__v1_l0

anim_0399__v2_l0: @ 80EC824
	mGetPalette 11 16 0x0
	mGetTiles 0xFE88 64
	mDisplayFrame 0x1 0x8

	mEnd 

anim_0399:
	.4byte anim_0399__v0_l0
	.4byte anim_0399__v1_l0
	.4byte anim_0399__v2_l0


anim_0400__v0_l0: @ 80EC854
	mGetPalette 14 16 0x20
	mGetTiles 0xFEC8 40
	mDisplayFrame 0x2 0x0

	mGetTiles 0xFEF0 40
	mDisplayFrame 0x2 0x1

	mGetTiles 0xFF18 40
	mDisplayFrame 0x2 0x2

	mGetTiles 0xFF40 40
	mDisplayFrame 0x2 0x3

anim_0400__v0_l1: @ 80EC8B0
	mJumpBack anim_0400__v0_l0

anim_0400__v1_l0: @ 80EC8B8
	mGetPalette 14 16 0x20
	mGetTiles 0xFF68 40
	mDisplayFrame 0x3 0x4

	mGetTiles 0xFF90 40
	mDisplayFrame 0x3 0x5

	mGetTiles 0xFFB8 40
	mDisplayFrame 0x3 0x6

	mEnd 

anim_0400:
	.4byte anim_0400__v0_l0
	.4byte anim_0400__v1_l0


anim_0401__v0_l0: @ 80EC90C
	mGetPalette 15 16 0xC0
	mGetTiles 0xFFE0 20
	mAddHitbox 0 0xF3 0xEA 0x0A 0x05
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0401__v1_l0: @ 80EC93C
	mGetPalette 15 16 0xC0
	mGetTiles 0xFFF4 20
	mAddHitbox 0 0xF3 0xEA 0x0A 0x06
	mDisplayFrame 0x8 0x1

	mGetTiles 0x10008 20
	mDisplayFrame 0x8 0x2

	mGetTiles 0xFFE0 20
	mDisplayFrame 0x8 0x0

anim_0401__v1_l1: @ 80EC990
	mJumpBack anim_0401__v1_l0

anim_0401__v2_l0: @ 80EC998
	mGetPalette 15 16 0xC0
	mGetTiles 0x1001C 20
	mAddHitbox 0 0xF8 0xEC 0x07 0x03
	mDisplayFrame 0x6 0x3

	mGetTiles 0x10030 20
	mAddHitbox 0 0xF7 0xEC 0x0B 0x00
	mDisplayFrame 0x8 0x4

	mGetTiles 0x10044 20
	mAddHitbox 0 0xF9 0xED 0x07 0x02
	mDisplayFrame 0x8 0x5

	mEnd 

anim_0401:
	.4byte anim_0401__v0_l0
	.4byte anim_0401__v1_l0
	.4byte anim_0401__v2_l0


anim_0402__v0_l0: @ 80ECA14
	mGetPalette 16 16 0x70
	mGetTiles 0x10058 16
	mAddHitbox 0 0xF6 0xF9 0x09 0x0A
	mDisplayFrame 0x4 0x0

	mGetTiles 0x10068 16
	mAddHitbox 0 0xF8 0xFB 0x07 0x09
	mDisplayFrame 0x4 0x1

	mGetTiles 0x10078 16
	mAddHitbox 0 0xFB 0xFB 0x06 0x06
	mDisplayFrame 0x4 0x2

	mGetTiles 0x10088 12
	mDisplayFrame 0x4 0x3

	mEnd 

anim_0402:
	.4byte anim_0402__v0_l0


anim_0403__v0_l0: @ 80ECA9C
	mGetPalette 17 16 0xC0
	mGetTiles 0x10094 20
	mAddHitbox 0 0xF6 0xE5 0x0C 0xFE
	mDisplayFrame 0x2 0x0

	mGetTiles 0x100A8 20
	mAddHitbox 0 0xF6 0xE5 0x0C 0xFE
	mDisplayFrame 0x2 0x1

anim_0403__v0_l1: @ 80ECAE8
	mJumpBack anim_0403__v0_l0

anim_0403__v1_l0: @ 80ECAF0
	mGetPalette 17 16 0xC0
	mGetTiles 0x100BC 20
	mAddHitbox 0 0xF7 0xE6 0x0A 0xFD
	mDisplayFrame 0x3 0x2

	mGetTiles 0x100D0 20
	mAddHitbox 0 0xF7 0xE6 0x0A 0xFD
	mDisplayFrame 0x4 0x3

anim_0403__v1_l1: @ 80ECB3C
	mJumpBack anim_0403__v1_l0

anim_0403__v2_l0: @ 80ECB44
	mGetPalette 17 16 0xC0
	mGetTiles 0x100E4 20
	mAddHitbox 0 0xFB 0xE2 0x07 0xFD
	mDisplayFrame 0x5 0x4

	mEnd 

anim_0403:
	.4byte anim_0403__v0_l0
	.4byte anim_0403__v1_l0
	.4byte anim_0403__v2_l0


anim_0404__v0_l0: @ 80ECB80
	mGetPalette 15 16 0xC0
	mGetTiles 0x100F8 24
	mAddHitbox 0 0xF3 0xEB 0x0D 0xFC
	mDisplayFrame 0x5 0x0

	mGetTiles 0x10110 30
	mAddHitbox 0 0xF3 0xEB 0x0D 0xFC
	mDisplayFrame 0x5 0x1

	mGetTiles 0x1012E 24
	mAddHitbox 0 0xF3 0xEB 0x0D 0xFC
	mDisplayFrame 0x5 0x2

	mGetTiles 0x10110 30
	mAddHitbox 0 0xF3 0xEB 0x0D 0xFC
	mDisplayFrame 0x5 0x1

anim_0404__v0_l1: @ 80ECC0C
	mJumpBack anim_0404__v0_l0

anim_0404__v1_l0: @ 80ECC14
	mGetPalette 15 16 0xC0
	mGetTiles 0x10146 30
	mAddHitbox 0 0xF3 0xEB 0x0D 0xFC
	mDisplayFrame 0xA 0x3

	mGetTiles 0x10164 30
	mAddHitbox 0 0xF3 0xEB 0x0D 0xFC
	mDisplayFrame 0xA 0x4

	mEnd 

anim_0404:
	.4byte anim_0404__v0_l0
	.4byte anim_0404__v1_l0


anim_0405__v0_l0: @ 80ECC6C
	mGetPalette 18 16 0xD0
	mGetTiles 0x10182 20
	mAddHitbox 0 0xF2 0xE6 0x0E 0x02
	mDisplayFrame 0x4 0x0

	mGetTiles 0x10196 20
	mDisplayFrame 0x4 0x1

	mGetTiles 0x101AA 20
	mDisplayFrame 0x4 0x2

anim_0405__v0_l1: @ 80ECCC0
	mJumpBack anim_0405__v0_l0

anim_0405__v1_l0: @ 80ECCC8
	mGetPalette 18 16 0xD0
	mGetTiles 0x10182 20
	mAddHitbox 0 0xF2 0xE6 0x0E 0x02
	mDisplayFrame 0x3 0x0

	mGetTiles 0x101BE 20
	mDisplayFrame 0x3 0x3

anim_0405__v1_l1: @ 80ECD08
	mJumpBack anim_0405__v1_l0

anim_0405__v2_l0: @ 80ECD10
	mGetPalette 18 16 0xD0
	mGetTiles 0x101D2 20
	mAddHitbox 0 0xF2 0xE6 0x0E 0x02
	mDisplayFrame 0xC 0x4

	mGetTiles 0x101E6 20
	mDisplayFrame 0xC 0x5

	mEnd 

anim_0405:
	.4byte anim_0405__v0_l0
	.4byte anim_0405__v1_l0
	.4byte anim_0405__v2_l0


anim_0406__v0_l0: @ 80ECD60
	mGetPalette 19 16 0xE0
	mGetTiles 0x101FA 16
	mAddHitbox 0 0xF8 0xED 0x06 0xFE
	mDisplayFrame 0x4 0x0

	mGetTiles 0x1020A 12
	mAddHitbox 0 0xF6 0xEE 0x08 0xFD
	mDisplayFrame 0x4 0x1

	mGetTiles 0x10216 20
	mAddHitbox 0 0xF6 0xE1 0x0C 0xF9
	mDisplayFrame 0x6 0x2

	mGetTiles 0x1022A 20
	mAddHitbox 0 0xF3 0xEA 0x0A 0xFB
	mDisplayFrame 0x14 0x3

	mGetTiles 0x1020A 12
	mAddHitbox 0 0xF5 0xEE 0x09 0xFE
	mDisplayFrame 0x4 0x1

	mEnd 

anim_0406__v1_l0: @ 80ECE10
	mGetPalette 19 16 0xE0
	mGetTiles 0x1023E 16
	mAddHitbox 0 0xF6 0xEB 0x07 0xFF
	mDisplayFrame 0x7 0x4

	mGetTiles 0x1024E 16
	mAddHitbox 0 0xF6 0xED 0x07 0xFE
	mDisplayFrame 0x7 0x5

anim_0406__v1_l1: @ 80ECE5C
	mJumpBack anim_0406__v1_l0

anim_0406:
	.4byte anim_0406__v0_l0
	.4byte anim_0406__v1_l0


anim_0407__v0_l0: @ 80ECE6C
	mGetTiles 0x1025E 64
	mGetPalette 20 16 0x90
	mAddHitbox 0 0xF1 0xE3 0x0E 0xFF
	mDisplayFrame 0x6 0x0

	mAddHitbox 0 0xF1 0xE3 0x0E 0xFF
	mDisplayFrame 0x6 0x1

	mAddHitbox 0 0xF1 0xE3 0x0E 0xFF
	mDisplayFrame 0x6 0x2

	mAddHitbox 0 0xF1 0xE3 0x0E 0xFF
	mDisplayFrame 0x6 0x3

	mEnd 

anim_0407:
	.4byte anim_0407__v0_l0


anim_0408__v0_l0: @ 80ECEDC
	mGetPalette 17 16 0xC0
	mGetTiles 0x1029E 4
	mAddHitbox 0 0xFC 0xFC 0x04 0x05
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0408:
	.4byte anim_0408__v0_l0


anim_0409__v0_l0: @ 80ECF10
	mGetPalette 17 16 0xC0
	mGetTiles 0x102A2 1
	mAddHitbox 0 0xFD 0xFD 0x03 0x03
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0409:
	.4byte anim_0409__v0_l0


anim_0410__v0_l0: @ 80ECF44
	mGetPalette 17 16 0xC0
	mGetTiles 0x102A3 4
	mAddHitbox 0 0xFD 0xFD 0x03 0x03
	mDisplayFrame 0x3 0x0

	mGetTiles 0x102A7 4
	mAddHitbox 0 0xFD 0xFD 0x03 0x03
	mDisplayFrame 0x3 0x1

anim_0410__v0_l1: @ 80ECF90
	mJumpBack anim_0410__v0_l0

anim_0410:
	.4byte anim_0410__v0_l0


anim_0411__v0_l0: @ 80ECF9C
	mGetPalette 21 16 0xE0
	mGetTiles 0x102AB 8
	mAddHitbox 0 0xFA 0xF2 0x06 0xFE
	mDisplayFrame 0x5 0x0

	mGetTiles 0x102B3 8
	mDisplayFrame 0x5 0x1

anim_0411__v0_l1: @ 80ECFDC
	mJumpBack anim_0411__v0_l0

anim_0411__v1_l0: @ 80ECFE4
	mGetPalette 21 16 0xE0
	mGetTiles 0x102BB 16
	mAddHitbox 0 0xF6 0xEE 0x0A 0x02
	mDisplayFrame 0x5 0x2

	mGetTiles 0x102CB 16
	mDisplayFrame 0x5 0x3

anim_0411__v1_l1: @ 80ED024
	mJumpBack anim_0411__v1_l0

anim_0411:
	.4byte anim_0411__v0_l0
	.4byte anim_0411__v1_l0


anim_0412__v0_l0: @ 80ED034
	mGetPalette 22 16 0xD0
	mGetTiles 0x102DB 4
	mAddHitbox 0 0xF8 0xFF 0x08 0x0D
	mDisplayFrame 0x1E 0x0

	mEnd 

anim_0412__v1_l0: @ 80ED064
	mGetPalette 22 16 0xD0
	mGetTiles 0x102DF 6
	mAddHitbox 0 0xF8 0x02 0x08 0x10
	mDisplayFrame 0x3 0x1

	mGetTiles 0x102E5 6
	mDisplayFrame 0x3 0x2

anim_0412__v1_l1: @ 80ED0A4
	mJumpBack anim_0412__v1_l0

anim_0412__v2_l0: @ 80ED0AC
	mGetPalette 22 16 0xD0
	mGetTiles 0x102EB 4
	mAddHitbox 0 0xF8 0xFF 0x08 0x0D
	mDisplayFrame 0x14 0x3

	mEnd 

anim_0412:
	.4byte anim_0412__v0_l0
	.4byte anim_0412__v1_l0
	.4byte anim_0412__v2_l0


anim_0413__v0_l0: @ 80ED0E8
	mGetPalette 23 16 0xC0
	mGetTiles 0x102EF 4
	mAddHitbox 0 0xFA 0xEA 0x06 0xFB
	mDisplayFrame 0x4 0x0

	mGetTiles 0x102F3 4
	mDisplayFrame 0x4 0x1

	mGetTiles 0x102F7 8
	mDisplayFrame 0x4 0x2

anim_0413__v0_l1: @ 80ED13C
	mJumpBack anim_0413__v0_l0

anim_0413__v1_l0: @ 80ED144
	mGetPalette 23 16 0xC0
	mGetTiles 0x102FF 6
	mDisplayFrame 0x5 0x3

	mGetTiles 0x10305 6
	mDisplayFrame 0x5 0x4

	mEnd 

anim_0413:
	.4byte anim_0413__v0_l0
	.4byte anim_0413__v1_l0


anim_0414__v0_l0: @ 80ED184
	mGetPalette 23 16 0xC0
	mGetTiles 0x1030B 1
	mAddHitbox 0 0xFD 0xFD 0x03 0x03
	mDisplayFrame 0x3 0x0

	mGetTiles 0x1030C 1
	mDisplayFrame 0x3 0x1

anim_0414__v0_l1: @ 80ED1C4
	mJumpBack anim_0414__v0_l0

anim_0414:
	.4byte anim_0414__v0_l0


anim_0415__v0_l0: @ 80ED1D0
	mGetPalette 24 16 0xD0
	mGetTiles 0x1030D 16
	mAddHitbox 0 0xF6 0xE6 0x0A 0x02
	mDisplayFrame 0x5 0x0

	mGetTiles 0x1031D 16
	mAddHitbox 0 0xF6 0xE6 0x0A 0x02
	mDisplayFrame 0x5 0x1

anim_0415__v0_l1: @ 80ED21C
	mJumpBack anim_0415__v0_l0

anim_0415__v1_l0: @ 80ED224
	mGetPalette 24 16 0xD0
	mGetTiles 0x1032D 20
	mAddHitbox 0 0xF6 0xE6 0x0A 0x02
	mDisplayFrame 0x5 0x2

	mGetTiles 0x10341 20
	mAddHitbox 0 0xF6 0xE6 0x0A 0x02
	mDisplayFrame 0xA 0x3

	mGetTiles 0x1032D 20
	mAddHitbox 0 0xF6 0xE6 0x0A 0x02
	mDisplayFrame 0x5 0x2

	mEnd 

anim_0415:
	.4byte anim_0415__v0_l0
	.4byte anim_0415__v1_l0


anim_0416__v0_l0: @ 80ED29C
	mGetPalette 25 16 0xD0
	mGetTiles 0x10355 1
	mAddHitbox 0 0xFA 0xFA 0x07 0x07
	mDisplayFrame 0x4 0x0

	mGetTiles 0x10356 4
	mAddHitbox 0 0xF0 0xF0 0x10 0x10
	mDisplayFrame 0x4 0x1

	mGetTiles 0x1035A 9
	mAddHitbox 0 0xF0 0xF0 0x10 0x10
	mDisplayFrame 0x4 0x2

	mGetTiles 0x10363 16
	mAddHitbox 0 0xE8 0xE8 0x18 0x18
	mDisplayFrame 0x4 0x3

	mGetTiles 0x10373 16
	mAddHitbox 0 0xE8 0xE8 0x18 0x18
	mDisplayFrame 0x4 0x4

	mEnd 

anim_0416:
	.4byte anim_0416__v0_l0


anim_0417__v0_l0: @ 80ED350
	mGetPalette 26 16 0xE0
	mGetTiles 0x10383 15
	mAddHitbox 0 0xEB 0xE3 0x15 0xF8
	mDisplayFrame 0x4 0x0

	mGetTiles 0x10392 15
	mDisplayFrame 0x4 0x1

	mGetTiles 0x103A1 15
	mDisplayFrame 0x4 0x2

anim_0417__v0_l1: @ 80ED3A4
	mJumpBack anim_0417__v0_l0

anim_0417__v1_l0: @ 80ED3AC
	mGetPalette 26 16 0xE0
	mGetTiles 0x103B0 12
	mAddHitbox 0 0xEB 0xE3 0x15 0xF8
	mDisplayFrame 0x4 0x3

	mGetTiles 0x103BC 12
	mDisplayFrame 0x4 0x4

	mGetTiles 0x103C8 15
	mDisplayFrame 0x4 0x5

	mEnd 

anim_0417:
	.4byte anim_0417__v0_l0
	.4byte anim_0417__v1_l0


anim_0418__v0_l0: @ 80ED40C
	mGetPalette 24 16 0xC0
	mGetTiles 0x103D7 36
	mAddHitbox 0 0xF6 0xD6 0x0A 0xEA
	mAddHitbox 1 0xF2 0xEA 0x0E 0x02
	mDisplayFrame 0x5 0x0

	mGetTiles 0x103FB 36
	mDisplayFrame 0x5 0x1

	mGetTiles 0x1041F 24
	mDisplayFrame 0x5 0x2

	mGetTiles 0x10437 36
	mDisplayFrame 0x5 0x3

anim_0418__v0_l1: @ 80ED480
	mJumpBack anim_0418__v0_l0

anim_0418:
	.4byte anim_0418__v0_l0


anim_0419__v0_l0: @ 80ED48C
	mGetPalette 24 16 0xD0
	mGetTiles 0x1045B 4
	mAddHitbox 0 0xFD 0xFD 0x03 0x03
	mDisplayFrame 0x4 0x0

	mGetTiles 0x1045F 4
	mAddHitbox 0 0xFD 0xFD 0x03 0x03
	mDisplayFrame 0x4 0x1

anim_0419__v0_l1: @ 80ED4D8
	mJumpBack anim_0419__v0_l0

anim_0419:
	.4byte anim_0419__v0_l0


anim_0420__v0_l0: @ 80ED4E4
	mGetPalette 26 16 0xE0
	mGetTiles 0x10463 4
	mAddHitbox 0 0xFA 0xFB 0x06 0x06
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0420:
	.4byte anim_0420__v0_l0


anim_0421__v0_l0: @ 80ED518
	mGetPalette 26 16 0xE0
	mGetTiles 0x10467 1
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0421:
	.4byte anim_0421__v0_l0


anim_0422__v0_l0: @ 80ED540
	mGetPalette 27 16 0xC0
	mGetTiles 0x10468 6
	mAddHitbox 0 0xFA 0xEC 0x06 0x01
	mDisplayFrame 0xA 0x0

	mGetTiles 0x1046E 6
	mAddHitbox 0 0xFA 0xED 0x06 0x01
	mDisplayFrame 0x3 0x1

	mGetTiles 0x10474 8
	mAddHitbox 0 0xFA 0xEC 0x06 0x01
	mDisplayFrame 0x6 0x2

	mEnd 

anim_0422__v1_l0: @ 80ED5B0
	mGetPalette 27 16 0xC0
	mGetTiles 0x10468 6
	mAddHitbox 0 0xFA 0xEC 0x06 0x01
	mDisplayFrame 0x6 0x0

	mGetTiles 0x1047C 8
	mAddHitbox 0 0xFA 0xEC 0x06 0x01
	mDisplayFrame 0x6 0x3

	mGetTiles 0x10468 6
	mAddHitbox 0 0xFA 0xEC 0x06 0x01
	mDisplayFrame 0x6 0x0

	mGetTiles 0x10484 8
	mAddHitbox 0 0xFA 0xEB 0x06 0x01
	mDisplayFrame 0x6 0x4

anim_0422__v1_l1: @ 80ED63C
	mJumpBack anim_0422__v1_l0

anim_0422:
	.4byte anim_0422__v0_l0
	.4byte anim_0422__v1_l0


anim_0423__v0_l0: @ 80ED64C
	mGetPalette 27 16 0xC0
	mGetTiles 0x1048C 6
	mAddHitbox 0 0xEC 0xFA 0x01 0x06
	mDisplayFrame 0xA 0x0

	mGetTiles 0x10492 6
	mAddHitbox 0 0xED 0xFA 0x01 0x06
	mDisplayFrame 0x3 0x1

	mGetTiles 0x10498 8
	mAddHitbox 0 0xEB 0xFA 0x01 0x06
	mDisplayFrame 0x6 0x2

	mEnd 

anim_0423__v1_l0: @ 80ED6BC
	mGetPalette 27 16 0xC0
	mGetTiles 0x1048C 6
	mAddHitbox 0 0xED 0xFA 0x01 0x06
	mDisplayFrame 0x5 0x0

	mGetTiles 0x104A0 8
	mAddHitbox 0 0xEB 0xFA 0x01 0x06
	mDisplayFrame 0x5 0x3

	mGetTiles 0x1048C 6
	mAddHitbox 0 0xEC 0xFA 0x01 0x06
	mDisplayFrame 0x5 0x0

	mGetTiles 0x104A8 8
	mAddHitbox 0 0xEB 0xFA 0x01 0x06
	mDisplayFrame 0x5 0x4

anim_0423__v1_l1: @ 80ED748
	mJumpBack anim_0423__v1_l0

anim_0423:
	.4byte anim_0423__v0_l0
	.4byte anim_0423__v1_l0


anim_0424__v0_l0: @ 80ED758
	mGetPalette 27 16 0xC0
	mGetTiles 0x104B0 10
	mAddHitbox 0 0xF2 0xFB 0x0E 0x03
	mDisplayFrame 0x4 0x0

	mGetTiles 0x104BA 10
	mDisplayFrame 0x4 0x1

	mGetTiles 0x104C4 10
	mDisplayFrame 0x4 0x2

anim_0424__v0_l1: @ 80ED7AC
	mJumpBack anim_0424__v0_l0

anim_0424:
	.4byte anim_0424__v0_l0


anim_0425__v0_l0: @ 80ED7B8
	mGetPalette 28 16 0xE0
	mGetTiles 0x104CE 6
	mAddHitbox 0 0xFA 0xF8 0x06 0x06
	mDisplayFrame 0x6 0x0

	mGetTiles 0x104D4 8
	mDisplayFrame 0x6 0x1

	mGetTiles 0x104DC 3
	mDisplayFrame 0x6 0x2

anim_0425__v0_l1: @ 80ED80C
	mJumpBack anim_0425__v0_l0

anim_0425__v1_l0: @ 80ED814
	mGetPalette 28 16 0xE0
	mGetTiles 0x104DF 15
	mAddHitbox 0 0xF0 0xF0 0x10 0x10
	mDisplayFrame 0x2 0x3

	mGetTiles 0x104EE 15
	mDisplayFrame 0x2 0x4

	mGetTiles 0x104FD 15
	mDisplayFrame 0x2 0x5

anim_0425__v1_l1: @ 80ED868
	mJumpBack anim_0425__v1_l0

anim_0425:
	.4byte anim_0425__v0_l0
	.4byte anim_0425__v1_l0


anim_0426__v0_l0: @ 80ED878
	mGetPalette 29 16 0xD0
	mGetTiles 0x1050C 8
	mAddHitbox 0 0xFB 0xE9 0x07 0x01
	mDisplayFrame 0x5 0x0

	mGetTiles 0x10514 6
	mDisplayFrame 0x5 0x1

	mGetTiles 0x1051A 8
	mDisplayFrame 0x5 0x2

	mGetTiles 0x10514 6
	mDisplayFrame 0x5 0x1

anim_0426__v0_l1: @ 80ED8E0
	mJumpBack anim_0426__v0_l0

anim_0426__v1_l0: @ 80ED8E8
	mGetPalette 29 16 0xD0
	mGetTiles 0x10522 6
	mAddHitbox 0 0xFA 0xE9 0x06 0x01
	mDisplayFrame 0xD 0x3

	mGetTiles 0x10528 6
	mDisplayFrame 0x5 0x4

	mEnd 

anim_0426:
	.4byte anim_0426__v0_l0
	.4byte anim_0426__v1_l0


anim_0427__v0_l0: @ 80ED934
	mGetPalette 27 16 0xC0
	mGetTiles 0x1052E 1
	mAddHitbox 0 0xFD 0xFD 0x03 0x03
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0427:
	.4byte anim_0427__v0_l0


anim_0428__v0_l0: @ 80ED968
	mGetPalette 29 16 0xD0
	mGetTiles 0x1052F 4
	mAddHitbox 0 0xFB 0xF6 0x05 0x01
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0428:
	.4byte anim_0428__v0_l0


anim_0429__v0_l0: @ 80ED99C
	mGetPalette 29 16 0xD0
	mGetTiles 0x10533 1
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0429__v1_l0: @ 80ED9C0
	mGetPalette 29 16 0xD0
	mGetTiles 0x10534 1
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0429:
	.4byte anim_0429__v0_l0
	.4byte anim_0429__v1_l0


anim_0430__v0_l0: @ 80ED9EC
	mGetPalette 30 16 0xE0
	mGetTiles 0x10535 18
	mAddHitbox 0 0xF4 0xF0 0x0C 0x02
	mDisplayFrame 0x5 0x0

	mGetTiles 0x10547 18
	mDisplayFrame 0x5 0x1

	mGetTiles 0x10535 18
	mDisplayFrame 0x5 0x0

	mGetTiles 0x10559 18
	mDisplayFrame 0x5 0x2

anim_0430__v0_l1: @ 80EDA54
	mJumpBack anim_0430__v0_l0

anim_0430__v1_l0: @ 80EDA5C
	mGetPalette 30 16 0xE0
	mGetTiles 0x1056B 18
	mAddHitbox 0 0xF4 0xF0 0x0C 0x02
	mDisplayFrame 0xD 0x3

	mGetTiles 0x1057D 21
	mDisplayFrame 0x2 0x4

	mGetTiles 0x10592 24
	mAddHitbox 0 0xF4 0xF0 0x0C 0x02
	mAddHitbox 1 0xDA 0xF0 0xF4 0x02
	mDisplayFrame 0xC 0x5

	mGetTiles 0x1057D 21
	mDisplayFrame 0x2 0x4

	mGetTiles 0x1056B 18
	mAddHitbox 0 0xF4 0xF0 0x0C 0x02
	mDisplayFrame 0x2 0x3

	mEnd 

anim_0430__v2_l0: @ 80EDB00
	mGetPalette 30 16 0xE0
	mGetTiles 0x105AA 18
	mAddHitbox 0 0xF4 0xF0 0x0C 0x02
	mDisplayFrame 0x7 0x6

	mGetTiles 0x105BC 18
	mAddHitbox 0 0xF2 0xF0 0x0C 0x02
	mDisplayFrame 0x7 0x7

	mEnd 

anim_0430:
	.4byte anim_0430__v0_l0
	.4byte anim_0430__v1_l0
	.4byte anim_0430__v2_l0


anim_0431__v0_l0: @ 80EDB5C
	mGetPalette 18 16 0xD0
	mGetTiles 0x105CE 4
	mAddHitbox 0 0xFA 0xFA 0x06 0x06
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0431__v1_l0: @ 80EDB8C
	mGetPalette 18 16 0xD0
	mGetTiles 0x105D2 4
	mAddHitbox 0 0xFA 0xFA 0x06 0x06
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0431__v2_l0: @ 80EDBBC
	mGetPalette 18 16 0xD0
	mGetTiles 0x105D6 4
	mAddHitbox 0 0xFB 0xFB 0x05 0x05
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0431:
	.4byte anim_0431__v0_l0
	.4byte anim_0431__v1_l0
	.4byte anim_0431__v2_l0


anim_0432__v0_l0: @ 80EDBF8
	mGetPalette 31 16 0xD0
	mGetTiles 0x105DA 16
	mAddHitbox 0 0xF6 0xE6 0x0A 0xFA
	mDisplayFrame 0x5 0x0

	mGetTiles 0x105EA 16
	mDisplayFrame 0x5 0x1

	mGetTiles 0x105FA 16
	mDisplayFrame 0x5 0x2

anim_0432__v0_l1: @ 80EDC4C
	mJumpBack anim_0432__v0_l0

anim_0432__v1_l0: @ 80EDC54
	mGetPalette 31 16 0xD0
	mGetTiles 0x1060A 20
	mAddHitbox 0 0xF6 0xE6 0x0A 0xFA
	mDisplayFrame 0x4 0x3

	mGetTiles 0x1061E 20
	mDisplayFrame 0x3 0x4

	mGetTiles 0x1060A 20
	mDisplayFrame 0x4 0x3

	mEnd 

anim_0432:
	.4byte anim_0432__v0_l0
	.4byte anim_0432__v1_l0


anim_0433__v0_l0: @ 80EDCB4
	mGetPalette 31 16 0xD0
	mGetTiles 0x10632 8
	mAddHitbox 0 0xF8 0xE8 0x08 0xFC
	mDisplayFrame 0x5 0x0

	mGetTiles 0x1063A 8
	mDisplayFrame 0x5 0x1

	mGetTiles 0x10642 8
	mDisplayFrame 0x5 0x2

anim_0433__v0_l1: @ 80EDD08
	mJumpBack anim_0433__v0_l0

anim_0433__v1_l0: @ 80EDD10
	mGetPalette 31 16 0xD0
	mGetTiles 0x10632 8
	mAddHitbox 0 0xF8 0xE8 0x08 0xFC
	mDisplayFrame 0x5 0x0

	mGetTiles 0x1064A 8
	mDisplayFrame 0x3 0x3

	mGetTiles 0x10652 8
	mDisplayFrame 0x3 0x4

	mEnd 

anim_0433:
	.4byte anim_0433__v0_l0
	.4byte anim_0433__v1_l0


anim_0434__v0_l0: @ 80EDD70
	mGetPalette 21 16 0xE0
	mGetTiles 0x1065A 4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0434__v1_l0: @ 80EDD94
	mGetPalette 21 16 0xE0
	mGetTiles 0x1065E 4
	mDisplayFrame 0x3 0x1

	mGetTiles 0x10662 12
	mDisplayFrame 0x3 0x2

	mGetTiles 0x1066E 16
	mAddHitbox 0 0xF9 0xEC 0x07 0x02
	mDisplayFrame 0x32 0x3

	mGetTiles 0x10662 12
	mAddHitbox 0 0xF9 0xF3 0x07 0x02
	mDisplayFrame 0xA 0x2

	mGetTiles 0x1065E 4
	mDisplayFrame 0x6 0x1

	mEnd 

anim_0434:
	.4byte anim_0434__v0_l0
	.4byte anim_0434__v1_l0


anim_0435__v0_l0: @ 80EDE28
	mGetPalette 31 16 0xD0
	mGetTiles 0x1067E 4
	mAddHitbox 0 0xFC 0xFC 0x04 0x04
	mDisplayFrame 0x3 0x0

	mGetTiles 0x10682 4
	mDisplayFrame 0x3 0x1

anim_0435__v0_l1: @ 80EDE68
	mJumpBack anim_0435__v0_l0

anim_0435:
	.4byte anim_0435__v0_l0


anim_0436__v0_l0: @ 80EDE74
	mGetPalette 31 16 0xD0
	mGetTiles 0x10686 4
	mAddHitbox 0 0xFC 0xFC 0x04 0x04
	mDisplayFrame 0x3 0x0

	mGetTiles 0x1068A 4
	mAddHitbox 0 0xFC 0xFC 0x04 0x04
	mDisplayFrame 0x1 0x1

anim_0436__v0_l1: @ 80EDEC0
	mJumpBack anim_0436__v0_l0

anim_0436:
	.4byte anim_0436__v0_l0


anim_0437__v0_l0: @ 80EDECC
	mGetPalette 32 16 0xF0
	mGetTiles 0x1068E 4
	mDisplayFrame 0x8 0x0

	mGetTiles 0x10692 4
	mDisplayFrame 0x8 0x1

	mGetTiles 0x10696 4
	mDisplayFrame 0x8 0x2

	mGetTiles 0x10692 4
	mDisplayFrame 0x8 0x1

anim_0437__v0_l1: @ 80EDF28
	mJumpBack anim_0437__v0_l0

anim_0437:
	.4byte anim_0437__v0_l0


anim_0438__v0_l0: @ 80EDF34
	mGetPalette 32 16 0xF0
	mGetTiles 0x1069A 4
	mDisplayFrame 0x8 0x0

	mGetTiles 0x1069E 4
	mDisplayFrame 0x8 0x1

	mGetTiles 0x106A2 4
	mDisplayFrame 0x8 0x2

	mGetTiles 0x1069E 4
	mDisplayFrame 0x8 0x1

anim_0438__v0_l1: @ 80EDF90
	mJumpBack anim_0438__v0_l0

anim_0438:
	.4byte anim_0438__v0_l0


anim_0439__v0_l0: @ 80EDF9C
	mGetPalette 32 16 0xF0
	mGetTiles 0x106A6 4
	mDisplayFrame 0x8 0x0

	mGetTiles 0x106AA 4
	mDisplayFrame 0x8 0x1

	mGetTiles 0x106AE 4
	mDisplayFrame 0x8 0x2

	mGetTiles 0x106AA 4
	mDisplayFrame 0x8 0x1

anim_0439__v0_l1: @ 80EDFF8
	mJumpBack anim_0439__v0_l0

anim_0439:
	.4byte anim_0439__v0_l0


anim_0440__v0_l0: @ 80EE004
	mGetPalette 32 16 0xF0
	mGetTiles 0x106B2 4
	mDisplayFrame 0x8 0x0

	mGetTiles 0x106B6 4
	mDisplayFrame 0x2 0x1

	mGetTiles 0x106BA 4
	mDisplayFrame 0xA 0x2

	mGetTiles 0x106B6 4
	mDisplayFrame 0x2 0x1

anim_0440__v0_l1: @ 80EE060
	mJumpBack anim_0440__v0_l0

anim_0440:
	.4byte anim_0440__v0_l0


anim_0441__v0_l0: @ 80EE06C
	mGetPalette 32 16 0xF0
	mGetTiles 0x106BE 4
	mDisplayFrame 0x8 0x0

	mGetTiles 0x106C2 4
	mDisplayFrame 0x8 0x1

	mGetTiles 0x106C6 4
	mDisplayFrame 0x8 0x2

	mGetTiles 0x106C2 4
	mDisplayFrame 0x8 0x1

anim_0441__v0_l1: @ 80EE0C8
	mJumpBack anim_0441__v0_l0

anim_0441:
	.4byte anim_0441__v0_l0


anim_0442__v0_l0: @ 80EE0D4
	mGetPalette 32 16 0xF0
	mGetTiles 0x106CA 4
	mDisplayFrame 0x3 0x0

	mGetTiles 0x106CE 4
	mDisplayFrame 0x3 0x1

	mGetTiles 0x106D2 4
	mDisplayFrame 0x3 0x2

anim_0442__v0_l1: @ 80EE11C
	mJumpBack anim_0442__v0_l0

anim_0442:
	.4byte anim_0442__v0_l0


anim_0443__v0_l0: @ 80EE128
	mGetPalette 32 16 0xF0
	mGetTiles 0x106D6 4
	mDisplayFrame 0x8 0x0

	mGetTiles 0x106DA 4
	mDisplayFrame 0x8 0x1

	mGetTiles 0x106DE 4
	mDisplayFrame 0x8 0x2

	mGetTiles 0x106DA 4
	mDisplayFrame 0x8 0x1

anim_0443__v0_l1: @ 80EE184
	mJumpBack anim_0443__v0_l0

anim_0443:
	.4byte anim_0443__v0_l0


anim_0444__v0_l0: @ 80EE190
	mGetPalette 32 16 0xF0
	mGetTiles 0x106E2 4
	mDisplayFrame 0x8 0x0

	mGetTiles 0x106E6 4
	mDisplayFrame 0x8 0x1

	mGetTiles 0x106EA 4
	mDisplayFrame 0x8 0x2

	mGetTiles 0x106E6 4
	mDisplayFrame 0x8 0x1

anim_0444__v0_l1: @ 80EE1EC
	mJumpBack anim_0444__v0_l0

anim_0444:
	.4byte anim_0444__v0_l0


anim_0445__v0_l0: @ 80EE1F8
	mGetPalette 32 16 0xF0
	mGetTiles 0x106EE 4
	mDisplayFrame 0x8 0x0

	mGetTiles 0x106F2 4
	mDisplayFrame 0x8 0x1

	mGetTiles 0x106F6 4
	mDisplayFrame 0x8 0x2

	mGetTiles 0x106F2 4
	mDisplayFrame 0x8 0x1

anim_0445__v0_l1: @ 80EE254
	mJumpBack anim_0445__v0_l0

anim_0445:
	.4byte anim_0445__v0_l0


anim_0446__v0_l0: @ 80EE260
	mGetPalette 32 16 0xF0
	mGetTiles 0x106FA 4
	mDisplayFrame 0x8 0x0

	mGetTiles 0x106FE 4
	mDisplayFrame 0x8 0x1

	mGetTiles 0x10702 4
	mDisplayFrame 0x8 0x2

	mGetTiles 0x106FE 4
	mDisplayFrame 0x8 0x1

anim_0446__v0_l1: @ 80EE2BC
	mJumpBack anim_0446__v0_l0

anim_0446:
	.4byte anim_0446__v0_l0


anim_0447__v0_l0: @ 80EE2C8
	mGetPalette 32 16 0xF0
	mGetTiles 0x10706 4
	mDisplayFrame 0x8 0x0

	mGetTiles 0x1070A 4
	mDisplayFrame 0x8 0x1

	mGetTiles 0x1070E 4
	mDisplayFrame 0x8 0x2

	mGetTiles 0x1070A 4
	mDisplayFrame 0x8 0x1

anim_0447__v0_l1: @ 80EE324
	mJumpBack anim_0447__v0_l0

anim_0447:
	.4byte anim_0447__v0_l0


anim_0448__v0_l0: @ 80EE330
	mGetPalette 32 16 0xF0
	mGetTiles 0x10712 4
	mDisplayFrame 0x3 0x0

	mGetTiles 0x10716 4
	mDisplayFrame 0x3 0x1

	mGetTiles 0x1071A 4
	mDisplayFrame 0x3 0x2

anim_0448__v0_l1: @ 80EE378
	mJumpBack anim_0448__v0_l0

anim_0448:
	.4byte anim_0448__v0_l0


anim_0449__v0_l0: @ 80EE384
	mGetPalette 32 16 0xF0
	mGetTiles 0x1071E 4
	mDisplayFrame 0x8 0x0

	mGetTiles 0x10722 4
	mDisplayFrame 0x8 0x1

	mGetTiles 0x10726 4
	mDisplayFrame 0x8 0x2

	mGetTiles 0x10722 4
	mDisplayFrame 0x8 0x1

anim_0449__v0_l1: @ 80EE3E0
	mJumpBack anim_0449__v0_l0

anim_0449:
	.4byte anim_0449__v0_l0


anim_0450__v0_l0: @ 80EE3EC
	mGetPalette 32 16 0xF0
	mGetTiles 0x1072A 4
	mDisplayFrame 0x6 0x0

	mGetTiles 0x1072E 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x10732 4
	mDisplayFrame 0x6 0x2

	mGetTiles 0x1072E 4
	mDisplayFrame 0x6 0x1

anim_0450__v0_l1: @ 80EE448
	mJumpBack anim_0450__v0_l0

anim_0450:
	.4byte anim_0450__v0_l0


anim_0451__v0_l0: @ 80EE454
	mGetPalette 32 16 0xF0
	mGetTiles 0x10736 4
	mDisplayFrame 0x8 0x0

	mGetTiles 0x1073A 4
	mDisplayFrame 0x8 0x1

	mGetTiles 0x1073E 4
	mDisplayFrame 0x8 0x2

	mGetTiles 0x1073A 4
	mDisplayFrame 0x8 0x1

anim_0451__v0_l1: @ 80EE4B0
	mJumpBack anim_0451__v0_l0

anim_0451:
	.4byte anim_0451__v0_l0


anim_0452__v0_l0: @ 80EE4BC
	mGetPalette 33 16 0x70
	mGetTiles 0x10742 12
	mAddHitbox 0 0xF9 0xD4 0x08 0x05
	mDisplayFrame 0x3 0x0

anim_0452__v0_l1: @ 80EE4E8
	mJumpBack anim_0452__v0_l0

anim_0452__v1_l0: @ 80EE4F0
	mGetPalette 33 16 0x70
	mGetTiles 0x1074E 18
	mPlaySoundEffect 169
	mDisplayFrame 0x2 0x1

	mGetTiles 0x10760 15
	mDisplayFrame 0x2 0x2

	mGetTiles 0x1076F 10
	mDisplayFrame 0x2 0x3

	mGetTiles 0x10779 15
	mDisplayFrame 0x2 0x4

	mGetTiles 0x10788 18
	mDisplayFrame 0x2 0x5

	mGetTiles 0x10742 12
	mDisplayFrame 0x2 0x0

	mEnd 

anim_0452__v2_l0: @ 80EE580
	mGetPalette 33 16 0x70
	mGetTiles 0x10742 12
	mDisplayFrame 0x3 0x0

	mGetTiles 0x1079A 12
	mDisplayFrame 0x3 0x6

anim_0452__v2_l1: @ 80EE5B4
	mJumpBack anim_0452__v2_l0

anim_0452:
	.4byte anim_0452__v0_l0
	.4byte anim_0452__v1_l0
	.4byte anim_0452__v2_l0


anim_0453__v0_l0: @ 80EE5C8
	mGetPalette 34 16 0x90
	mGetTiles 0x107A6 30
	mDisplayFrame 0x2 0x0

	mEnd 

anim_0453__v1_l0: @ 80EE5EC
	mGetPalette 34 16 0x90
	mGetTiles 0x107C4 20
	mDisplayFrame 0x2 0x1

	mGetTiles 0x107D8 20
	mDisplayFrame 0x2 0x2

	mGetTiles 0x107EC 30
	mDisplayFrame 0x2 0x3

	mGetTiles 0x1080A 20
	mDisplayFrame 0x2 0x4

	mGetTiles 0x1081E 20
	mDisplayFrame 0x2 0x5

	mGetTiles 0x107A6 30
	mDisplayFrame 0x2 0x0

anim_0453__v1_l1: @ 80EE670
	mJumpBack anim_0453__v1_l0

anim_0453__v2_l0: @ 80EE678
	mGetPalette 34 16 0x90
	mGetTiles 0x10832 36
	mDisplayFrame 0x2 0x6

	mEnd 

anim_0453:
	.4byte anim_0453__v0_l0
	.4byte anim_0453__v1_l0
	.4byte anim_0453__v2_l0


anim_0454__v0_l0: @ 80EE6A8
	mGetPalette 35 16 0x90
	mGetTiles 0x10856 4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0454__v1_l0: @ 80EE6CC
	mGetPalette 35 16 0x90
	mGetTiles 0x1085A 8
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0454__v2_l0: @ 80EE6F0
	mGetPalette 35 16 0x90
	mGetTiles 0x10862 16
	mAddHitbox 0 0xF0 0xEB 0x0F 0x03
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0454__v3_l0: @ 80EE720
	mGetPalette 35 16 0x90
	mGetTiles 0x10872 16
	mAddHitbox 0 0xFE 0xE2 0x16 0x01
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0454:
	.4byte anim_0454__v0_l0
	.4byte anim_0454__v1_l0
	.4byte anim_0454__v2_l0
	.4byte anim_0454__v3_l0


anim_0455__v0_l0: @ 80EE760
	mGetPalette 33 16 0x70
	mGetTiles 0x10882 12
	mAddHitbox 0 0xF4 0xEF 0x0C 0xFF
	mDisplayFrame 0x3 0x0

	mEnd 

anim_0455__v1_l0: @ 80EE790
	mGetPalette 33 16 0x70
	mGetTiles 0x1088E 12
	mAddHitbox 0 0xF3 0xED 0x0D 0xFF
	mDisplayFrame 0x1 0x1

	mGetTiles 0x1089A 16
	mAddHitbox 0 0xF3 0xE0 0x0D 0xFF
	mDisplayFrame 0x2 0x2

	mGetTiles 0x108AA 16
	mAddHitbox 0 0xF3 0xE4 0x0D 0xFF
	mDisplayFrame 0x1 0x3

	mGetTiles 0x108BA 16
	mAddHitbox 0 0xF3 0xE1 0x0D 0xFF
	mDisplayFrame 0x5 0x4

	mGetTiles 0x108AA 16
	mAddHitbox 0 0xF3 0xE4 0x0D 0xFF
	mDisplayFrame 0x3 0x3

	mEnd 

anim_0455__v2_l0: @ 80EE840
	mGetPalette 33 16 0x70
	mGetTiles 0x108CA 12
	mAddHitbox 0 0xFE 0xE3 0x10 0x00
	mDisplayFrame 0x3 0x5

	mEnd 

anim_0455__v3_l0: @ 80EE870
	mGetPalette 33 16 0x70
	mGetTiles 0x108D6 12
	mAddHitbox 0 0xFE 0xE3 0x0E 0x00
	mDisplayFrame 0x1 0x6

	mGetTiles 0x108E2 16
	mAddHitbox 0 0xFE 0xE3 0x1D 0x00
	mDisplayFrame 0x2 0x7

	mGetTiles 0x108F2 16
	mAddHitbox 0 0xFE 0xE3 0x19 0x00
	mDisplayFrame 0x1 0x8

	mGetTiles 0x10902 16
	mAddHitbox 0 0xFE 0xE3 0x1C 0x00
	mDisplayFrame 0x5 0x9

	mGetTiles 0x108F2 16
	mAddHitbox 0 0xFE 0xE3 0x19 0x00
	mDisplayFrame 0x3 0x8

	mEnd 

anim_0455__v4_l0: @ 80EE920
	mGetPalette 33 16 0x70
	mGetTiles 0x10912 9
	mAddHitbox 0 0x00 0xE5 0x14 0xFC
	mAddHitbox 1 0x09 0xE5 0x14 0xF0
	mDisplayFrame 0x3 0xA

	mEnd 

anim_0455__v5_l0: @ 80EE95C
	mGetPalette 33 16 0x70
	mGetTiles 0x1091B 9
	mAddHitbox 0 0x00 0xE6 0x13 0xFC
	mDisplayFrame 0x1 0xB

	mGetTiles 0x10924 16
	mAddHitbox 0 0x00 0xDD 0x1C 0xFC
	mDisplayFrame 0x2 0xC

	mGetTiles 0x10934 16
	mAddHitbox 0 0x00 0xE0 0x19 0xFC
	mDisplayFrame 0x1 0xD

	mGetTiles 0x10944 16
	mAddHitbox 0 0x00 0xDE 0x1B 0xFC
	mDisplayFrame 0x5 0xE

	mGetTiles 0x10934 16
	mAddHitbox 0 0x00 0xE0 0x19 0xFC
	mDisplayFrame 0x3 0xD

	mEnd 

anim_0455__v6_l0: @ 80EEA0C
	mGetPalette 33 16 0x70
	mGetTiles 0x10954 6
	mAddHitbox 0 0x00 0xE9 0x14 0xF7
	mAddHitbox 1 0x09 0xE9 0x14 0xF7
	mDisplayFrame 0x1 0xF

	mEnd 

anim_0455__v7_l0: @ 80EEA48
	mGetPalette 33 16 0x70
	mGetTiles 0x1095A 6
	mDisplayFrame 0x2 0x10

	mGetTiles 0x10960 12
	mDisplayFrame 0x1 0x11

	mGetTiles 0x1096C 12
	mDisplayFrame 0x5 0x12

	mGetTiles 0x10978 12
	mDisplayFrame 0x3 0x13

	mEnd 

anim_0455:
	.4byte anim_0455__v0_l0
	.4byte anim_0455__v1_l0
	.4byte anim_0455__v2_l0
	.4byte anim_0455__v3_l0
	.4byte anim_0455__v4_l0
	.4byte anim_0455__v5_l0
	.4byte anim_0455__v6_l0
	.4byte anim_0455__v7_l0


anim_0456__v0_l0: @ 80EEAC8
	mGetPalette 36 16 0x80
	mGetTiles 0x10984 2
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0456:
	.4byte anim_0456__v0_l0


anim_0457__v0_l0: @ 80EEAF0
	mGetPalette 35 16 0x90
	mGetTiles 0x10986 16
	mAddHitbox 0 0xF2 0xE2 0x0D 0xFE
	mDisplayFrame 0x4 0x0

	mGetTiles 0x10996 16
	mAddHitbox 0 0xF2 0xE2 0x0D 0xFE
	mDisplayFrame 0x4 0x1

	mGetTiles 0x109A6 16
	mAddHitbox 0 0xF2 0xE2 0x0D 0xFE
	mDisplayFrame 0x4 0x2

	mGetTiles 0x109B6 16
	mAddHitbox 0 0xF2 0xE2 0x0D 0xFE
	mDisplayFrame 0x4 0x3

anim_0457__v0_l1: @ 80EEB7C
	mJumpBack anim_0457__v0_l0

anim_0457:
	.4byte anim_0457__v0_l0


anim_0458__v0_l0: @ 80EEB88
	mGetPalette 35 16 0x90
	mGetTiles 0x109C6 24
	mAddHitbox 0 0xF0 0xE4 0x10 0xFE
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0458:
	.4byte anim_0458__v0_l0


anim_0459__v0_l0: @ 80EEBBC
	mGetTiles 0x109DE 1
	mGetPalette 35 16 0x90
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0459:
	.4byte anim_0459__v0_l0


anim_0460__v0_l0: @ 80EEBE4
	mGetTiles 0x109DF 4
	mGetPalette 35 16 0x90
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0460:
	.4byte anim_0460__v0_l0


anim_0461__v0_l0: @ 80EEC0C
	mGetPalette 37 16 0x70
	mGetTiles 0x109E3 18
	mAddHitbox 0 0xEC 0xF5 0x14 0x04
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0461__v1_l0: @ 80EEC3C
	mGetPalette 37 16 0x70
	mGetTiles 0x109F5 18
	mAddHitbox 0 0xEC 0xF5 0x14 0x04
	mDisplayFrame 0x2 0x1

	mGetTiles 0x10A07 24
	mDisplayFrame 0x3 0x2

	mGetTiles 0x10A1F 18
	mDisplayFrame 0x2 0x3

	mGetTiles 0x10A31 24
	mDisplayFrame 0x2 0x4

	mGetTiles 0x10A49 18
	mDisplayFrame 0x2 0x5

	mGetTiles 0x10A5B 18
	mDisplayFrame 0x2 0x6

	mEnd 

anim_0461:
	.4byte anim_0461__v0_l0
	.4byte anim_0461__v1_l0


anim_0462__v0_l0: @ 80EECD8
	mGetPalette 38 16 0xB0
	mGetTiles 0x10A6D 12
	mAddHitbox 0 0xF1 0xFB 0x0F 0x0B
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0462:
	.4byte anim_0462__v0_l0


anim_0463__v0_l0: @ 80EED0C
	mGetPalette 39 16 0xB0
	mGetTiles 0x10A79 18
	mAddHitbox 0 0xE8 0xFA 0x18 0xFC
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0463:
	.4byte anim_0463__v0_l0


anim_0464__v0_l0: @ 80EED40
	mGetPalette 33 16 0x70
	mGetTiles 0x10A8B 18
	mDisplayFrame 0x2 0x0

	mGetTiles 0x10A9D 18
	mDisplayFrame 0x2 0x1

	mGetTiles 0x10AAF 18
	mDisplayFrame 0x2 0x2

anim_0464__v0_l1: @ 80EED88
	mJumpBack anim_0464__v0_l0

anim_0464:
	.4byte anim_0464__v0_l0


anim_0465__v0_l0: @ 80EED94
	mGetPalette 39 16 0xB0
	mGetTiles 0x10AC1 1
	mAddHitbox 0 0xF4 0xF4 0x0C 0x0C
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0465__v1_l0: @ 80EEDC4
	mGetPalette 39 16 0xB0
	mGetTiles 0x10AC2 1
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0465__v2_l0: @ 80EEDE8
	mGetPalette 39 16 0xB0
	mGetTiles 0x10AC3 1
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0465__v3_l0: @ 80EEE0C
	mGetPalette 39 16 0xB0
	mGetTiles 0x10AC4 1
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0465__v4_l0: @ 80EEE30
	mGetPalette 39 16 0xB0
	mGetTiles 0x10AC5 1
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0465__v5_l0: @ 80EEE54
	mGetPalette 39 16 0xB0
	mGetTiles 0x10AC6 1
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0465__v6_l0: @ 80EEE78
	mGetPalette 39 16 0xB0
	mGetTiles 0x10AC7 1
	mAddHitbox 0 0xF4 0xF8 0x0C 0x0C
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0465__v7_l0: @ 80EEEA8
	mGetPalette 39 16 0xB0
	mGetTiles 0x10AC8 1
	mDisplayFrame 0x1 0x7

	mEnd 

anim_0465__v8_l0: @ 80EEECC
	mGetPalette 39 16 0xB0
	mGetTiles 0x10AC9 1
	mDisplayFrame 0x1 0x8

	mEnd 

anim_0465:
	.4byte anim_0465__v0_l0
	.4byte anim_0465__v1_l0
	.4byte anim_0465__v2_l0
	.4byte anim_0465__v3_l0
	.4byte anim_0465__v4_l0
	.4byte anim_0465__v5_l0
	.4byte anim_0465__v6_l0
	.4byte anim_0465__v7_l0
	.4byte anim_0465__v8_l0


anim_0466__v0_l0: @ 80EEF14
	mGetPalette 33 16 0x70
	mGetTiles 0x10ACA 4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0466:
	.4byte anim_0466__v0_l0


anim_0467__v0_l0: @ 80EEF3C
	mGetPalette 39 16 0xB0
	mGetTiles 0x10ACE 4
	mDisplayFrame 0x6 0x0

	mGetTiles 0x10AD2 16
	mDisplayFrame 0x6 0x1

	mGetTiles 0x10AE2 16
	mDisplayFrame 0x6 0x2

	mGetTiles 0x10AF2 12
	mDisplayFrame 0x7 0x3

	mGetTiles 0x10AFE 9
	mDisplayFrame 0x8 0x4

	mGetTiles 0x10B07 9
	mDisplayFrame 0x8 0x5

	mGetTiles 0x10B10 9
	mDisplayFrame 0xC 0x6

	mEnd 

anim_0467:
	.4byte anim_0467__v0_l0


anim_0468__v0_l0: @ 80EEFDC
	mGetPalette 33 16 0x70
	mGetTiles 0x10B19 8
	mAddHitbox 0 0x0A 0x05 0x17 0x08
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0468__v1_l0: @ 80EF00C
	mGetPalette 33 16 0x70
	mGetTiles 0x10B19 8
	mDisplayFrame 0x3 0x0

	mGetTiles 0x10B21 8
	mDisplayFrame 0x3 0x1

	mGetTiles 0x10B29 12
	mDisplayFrame 0x3 0x2

	mGetTiles 0x10B35 8
	mDisplayFrame 0x2 0x3

	mGetTiles 0x10B21 8
	mDisplayFrame 0x2 0x1

	mGetTiles 0x10B3D 8
	mDisplayFrame 0x4 0x4

	mGetTiles 0x10B21 8
	mDisplayFrame 0x3 0x1

	mGetTiles 0x10B3D 8
	mDisplayFrame 0x3 0x4

	mGetTiles 0x10B19 8
	mDisplayFrame 0x6 0x0

	mEnd 

anim_0468:
	.4byte anim_0468__v0_l0
	.4byte anim_0468__v1_l0


anim_0469__v0_l0: @ 80EF0D8
	mGetPalette 33 16 0x70
	mGetTiles 0x10B45 12
	mAddHitbox 0 0xF6 0xE8 0x0A 0x02
	mDisplayFrame 0x6 0x0

	mEnd 

anim_0469__v1_l0: @ 80EF108
	mGetPalette 33 16 0x70
	mGetTiles 0x10B51 12
	mDisplayFrame 0x2 0x1

	mGetTiles 0x10B5D 12
	mDisplayFrame 0x2 0x2

	mGetTiles 0x10B69 12
	mDisplayFrame 0x4 0x3

	mGetTiles 0x10B75 12
	mDisplayFrame 0x1 0x4

	mGetTiles 0x10B5D 12
	mDisplayFrame 0x4 0x2

	mGetTiles 0x10B81 12
	mDisplayFrame 0x4 0x5

	mGetTiles 0x10B5D 12
	mDisplayFrame 0x3 0x2

	mGetTiles 0x10B81 12
	mDisplayFrame 0x3 0x5

	mGetTiles 0x10B51 12
	mDisplayFrame 0x6 0x1

	mEnd 

anim_0469:
	.4byte anim_0469__v0_l0
	.4byte anim_0469__v1_l0


anim_0470__v0_l0: @ 80EF1D4
	mGetPalette 33 16 0x70
	mGetTiles 0x10B8D 12
	mAddHitbox 0 0x0A 0x05 0x17 0x08
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0470__v1_l0: @ 80EF204
	mGetPalette 33 16 0x70
	mGetTiles 0x10B8D 12
	mDisplayFrame 0x3 0x0

	mGetTiles 0x10B99 12
	mDisplayFrame 0x3 0x1

	mGetTiles 0x10BA5 12
	mDisplayFrame 0x3 0x2

	mGetTiles 0x10BB1 12
	mDisplayFrame 0x2 0x3

	mGetTiles 0x10B99 12
	mDisplayFrame 0x2 0x1

	mGetTiles 0x10BBD 12
	mDisplayFrame 0x4 0x4

	mGetTiles 0x10B99 12
	mDisplayFrame 0x3 0x1

	mGetTiles 0x10BBD 12
	mDisplayFrame 0x3 0x4

	mGetTiles 0x10B8D 12
	mDisplayFrame 0x6 0x0

	mEnd 

anim_0470:
	.4byte anim_0470__v0_l0
	.4byte anim_0470__v1_l0


anim_0471__v0_l0: @ 80EF2D0
	mGetPalette 40 16 0x70
	mGetTiles 0x10BC9 8
	mAddHitbox 0 0xF1 0xFA 0x07 0x00
	mDisplayFrame 0x2 0x0

	mGetTiles 0x10BD1 8
	mAddHitbox 0 0xF1 0xFA 0x07 0x00
	mDisplayFrame 0x2 0x1

	mGetTiles 0x10BD9 8
	mAddHitbox 0 0xF1 0xFA 0x07 0x00
	mDisplayFrame 0x2 0x2

anim_0471__v0_l1: @ 80EF33C
	mJumpBack anim_0471__v0_l0

anim_0471__v1_l0: @ 80EF344
	mGetPalette 40 16 0x70
	mGetTiles 0x10BE1 12
	mAddHitbox 0 0xF1 0xF7 0x06 0x02
	mDisplayFrame 0x2 0x3

	mGetTiles 0x10BED 12
	mAddHitbox 0 0xF1 0xF7 0x06 0x02
	mDisplayFrame 0x2 0x4

	mGetTiles 0x10BF9 12
	mAddHitbox 0 0xF1 0xF7 0x06 0x02
	mDisplayFrame 0x2 0x5

anim_0471__v1_l1: @ 80EF3B0
	mJumpBack anim_0471__v1_l0

anim_0471__v2_l0: @ 80EF3B8
	mGetPalette 40 16 0x70
	mGetTiles 0x10C05 12
	mAddHitbox 0 0xF2 0xFA 0x09 0x01
	mDisplayFrame 0x2 0x6

	mGetTiles 0x10C11 12
	mAddHitbox 0 0xF2 0xFA 0x09 0x01
	mDisplayFrame 0x2 0x7

	mGetTiles 0x10C1D 12
	mAddHitbox 0 0xF2 0xFA 0x09 0x01
	mDisplayFrame 0x2 0x8

anim_0471__v2_l1: @ 80EF424
	mJumpBack anim_0471__v2_l0

anim_0471:
	.4byte anim_0471__v0_l0
	.4byte anim_0471__v1_l0
	.4byte anim_0471__v2_l0


anim_0472__v0_l0: @ 80EF438
	mGetPalette 40 16 0x70
	mGetTiles 0x10C29 8
	mAddHitbox 0 0xF4 0xFA 0x00 0x0E
	mDisplayFrame 0x2 0x0

	mGetTiles 0x10C31 8
	mAddHitbox 0 0xF0 0xF8 0x00 0x08
	mDisplayFrame 0x2 0x1

	mGetTiles 0x10C39 8
	mAddHitbox 0 0xF0 0xF8 0x00 0x08
	mDisplayFrame 0x2 0x2

anim_0472__v0_l1: @ 80EF4A4
	mJumpBack anim_0472__v0_l0

anim_0472:
	.4byte anim_0472__v0_l0


anim_0473__v0_l0: @ 80EF4B0
	mGetPalette 33 16 0x70
	mGetTiles 0x10C41 49
	mDisplayFrame 0x2 0x0

	mGetTiles 0x10C72 49
	mDisplayFrame 0x2 0x1

	mGetTiles 0x10CA3 49
	mDisplayFrame 0x2 0x2

anim_0473__v0_l1: @ 80EF4F8
	mJumpBack anim_0473__v0_l0

anim_0473:
	.4byte anim_0473__v0_l0


anim_0474__v0_l0: @ 80EF504
	mGetPalette 33 16 0x70
	mGetTiles 0x10CD4 12
	mDisplayFrame 0x3 0x0

	mGetTiles 0x10CE0 18
	mDisplayFrame 0x3 0x1

	mGetTiles 0x10CF2 12
	mDisplayFrame 0x3 0x2

anim_0474__v0_l1: @ 80EF54C
	mJumpBack anim_0474__v0_l0

anim_0474:
	.4byte anim_0474__v0_l0


anim_0475__v0_l0: @ 80EF558
	mGetPalette 41 16 0x70
	mGetTiles 0x10CFE 36
	mAddHitbox 0 0x09 0xD9 0x27 0xF7
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0475:
	.4byte anim_0475__v0_l0


anim_0476__v0_l0: @ 80EF58C
	mGetPalette 41 16 0x70
	mGetTiles 0x10D22 12
	mAddHitbox 0 0xEC 0xFC 0x14 0x08
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0476:
	.4byte anim_0476__v0_l0


anim_0477__v0_l0: @ 80EF5C0
	mGetPalette 41 16 0x70
	mGetTiles 0x10D2E 12
	mAddHitbox 0 0xF8 0xEE 0x04 0x12
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0477:
	.4byte anim_0477__v0_l0


anim_0478__v0_l0: @ 80EF5F4
	mGetPalette 42 16 0x70
	mGetTiles 0x10D3A 18
	mAddHitbox 0 0xF8 0xF8 0x28 0x12
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0478__v1_l0: @ 80EF624
	mGetPalette 42 16 0x70
	mGetTiles 0x10D4C 24
	mDisplayFrame 0x5 0x1

	mGetTiles 0x10D64 18
	mDisplayFrame 0x5 0x2

	mEnd 

anim_0478__v2_l0: @ 80EF65C
	mGetPalette 42 16 0x70
	mGetTiles 0x10D76 18
	mAddHitbox 0 0xF8 0xF8 0x09 0x28
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0478__v3_l0: @ 80EF68C
	mGetPalette 42 16 0x70
	mGetTiles 0x10D88 30
	mDisplayFrame 0x5 0x4

	mGetTiles 0x10DA6 18
	mDisplayFrame 0x5 0x5

	mEnd 

anim_0478:
	.4byte anim_0478__v0_l0
	.4byte anim_0478__v1_l0
	.4byte anim_0478__v2_l0
	.4byte anim_0478__v3_l0


anim_0479__v0_l0: @ 80EF6D4
	mGetPalette 43 16 0x70
	mGetTiles 0x10DB8 18
	mAddHitbox 0 0xFA 0xF0 0x06 0x00
	mDisplayFrame 0x9 0x0

	mGetTiles 0x10DCA 18
	mDisplayFrame 0x9 0x1

	mGetTiles 0x10DDC 18
	mDisplayFrame 0x9 0x2

anim_0479__v0_l1: @ 80EF728
	mJumpBack anim_0479__v0_l0

anim_0479__v1_l0: @ 80EF730
	mGetPalette 43 16 0x70
	mGetTiles 0x10DEE 18
	mDisplayFrame 0x6 0x3

	mGetTiles 0x10E00 18
	mDisplayFrame 0x3 0x4

	mGetTiles 0x10E12 12
	mDisplayFrame 0x6 0x5

	mGetTiles 0x10E1E 12
	mDisplayFrame 0x6 0x6

	mGetTiles 0x10E2A 12
	mDisplayFrame 0x6 0x7

	mGetTiles 0x10E36 12
	mDisplayFrame 0x6 0x8

	mEnd 

anim_0479:
	.4byte anim_0479__v0_l0
	.4byte anim_0479__v1_l0


anim_0480__v0_l0: @ 80EF7C0
	mGetPalette 43 16 0x70
	mGetTiles 0x10E42 18
	mAddHitbox 0 0xFA 0xF0 0x06 0x00
	mDisplayFrame 0x9 0x0

	mGetTiles 0x10E54 18
	mDisplayFrame 0x9 0x1

	mGetTiles 0x10E66 18
	mDisplayFrame 0x9 0x2

anim_0480__v0_l1: @ 80EF814
	mJumpBack anim_0480__v0_l0

anim_0480__v1_l0: @ 80EF81C
	mGetPalette 43 16 0x70
	mGetTiles 0x10E78 18
	mDisplayFrame 0x6 0x3

	mGetTiles 0x10E8A 18
	mDisplayFrame 0x3 0x4

	mGetTiles 0x10E9C 12
	mDisplayFrame 0x6 0x5

	mGetTiles 0x10EA8 12
	mDisplayFrame 0x6 0x6

	mGetTiles 0x10EB4 12
	mDisplayFrame 0x6 0x7

	mGetTiles 0x10EC0 12
	mDisplayFrame 0x6 0x8

	mEnd 

anim_0480:
	.4byte anim_0480__v0_l0
	.4byte anim_0480__v1_l0


anim_0481__v0_l0: @ 80EF8AC
	mGetPalette 43 16 0x70
	mGetTiles 0x10ECC 18
	mAddHitbox 0 0xFA 0xF0 0x06 0x00
	mDisplayFrame 0x9 0x0

	mGetTiles 0x10EDE 18
	mDisplayFrame 0x9 0x1

	mGetTiles 0x10EF0 18
	mDisplayFrame 0x9 0x2

anim_0481__v0_l1: @ 80EF900
	mJumpBack anim_0481__v0_l0

anim_0481__v1_l0: @ 80EF908
	mGetPalette 43 16 0x70
	mGetTiles 0x10F02 18
	mDisplayFrame 0x6 0x3

	mGetTiles 0x10F14 18
	mDisplayFrame 0x3 0x4

	mGetTiles 0x10F26 12
	mDisplayFrame 0x6 0x5

	mGetTiles 0x10F32 12
	mDisplayFrame 0x6 0x6

	mGetTiles 0x10F3E 12
	mDisplayFrame 0x6 0x7

	mGetTiles 0x10F4A 12
	mDisplayFrame 0x6 0x8

	mEnd 

anim_0481:
	.4byte anim_0481__v0_l0
	.4byte anim_0481__v1_l0


anim_0482__v0_l0: @ 80EF998
	mGetPalette 44 16 0x70
	mGetTiles 0x10F56 1
	mDisplayFrame 0x5 0x0

	mGetTiles 0x10F57 4
	mDisplayFrame 0x2 0x1

	mGetTiles 0x10F5B 4
	mDisplayFrame 0x4 0x2

	mGetTiles 0x10F5F 9
	mDisplayFrame 0x6 0x3

	mGetTiles 0x10F68 9
	mDisplayFrame 0x7 0x4

	mEnd 

anim_0482:
	.4byte anim_0482__v0_l0


anim_0483__v0_l0: @ 80EFA10
	mGetPalette 45 16 0x70
	mGetTiles 0x10F71 1
	mDisplayFrame 0x5 0x0

	mGetTiles 0x10F72 1
	mDisplayFrame 0x2 0x1

	mGetTiles 0x10F73 4
	mDisplayFrame 0x4 0x2

	mGetTiles 0x10F77 4
	mDisplayFrame 0x6 0x3

	mGetTiles 0x10F7B 4
	mDisplayFrame 0x7 0x4

	mEnd 

anim_0483:
	.4byte anim_0483__v0_l0


anim_0484__v0_l0: @ 80EFA88
	mGetPalette 41 16 0x70
	mGetTiles 0x10F7F 30
	mAddHitbox 0 0xEA 0xF2 0x16 0x0F
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0484:
	.4byte anim_0484__v0_l0


anim_0485__v0_l0: @ 80EFABC
	mGetPalette 41 16 0x70
	mGetTiles 0x10F9D 16
	mAddHitbox 0 0xF5 0xF5 0x0B 0x0B
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0485:
	.4byte anim_0485__v0_l0


anim_0486__v0_l0: @ 80EFAF0
	mGetPalette 33 16 0x70
	mGetTiles 0x10FAD 60
	mAddHitbox 0 0xD0 0xEC 0x2F 0x12
	mDisplayFrame 0x3 0x0

	mGetTiles 0x10FE9 60
	mDisplayFrame 0x3 0x1

anim_0486__v0_l1: @ 80EFB30
	mJumpBack anim_0486__v0_l0

anim_0486:
	.4byte anim_0486__v0_l0


anim_0487__v0_l0: @ 80EFB3C
	mGetPalette 46 16 0x70
	mGetTiles 0x11025 60
	mAddHitbox 0 0xCF 0x0A 0x31 0x28
	mDisplayFrame 0x6 0x0

	mGetTiles 0x11061 60
	mDisplayFrame 0x6 0x1

anim_0487__v0_l1: @ 80EFB7C
	mJumpBack anim_0487__v0_l0

anim_0487:
	.4byte anim_0487__v0_l0


anim_0488__v0_l0: @ 80EFB88
	mGetPalette 47 16 0x70
	mGetTiles 0x1109D 16
	mAddHitbox 0 0xEE 0xD8 0x12 0x10
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0488:
	.4byte anim_0488__v0_l0


anim_0489__v0_l0: @ 80EFBBC
	mGetPalette 47 16 0x70
	mGetTiles 0x110AD 1
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0489:
	.4byte anim_0489__v0_l0


anim_0490__v0_l0: @ 80EFBE4
	mGetPalette 47 16 0x70
	mGetTiles 0x110AE 9
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0490:
	.4byte anim_0490__v0_l0


anim_0491__v0_l0: @ 80EFC18
	mGetPalette 47 16 0x70
	mGetTiles 0x110B7 30
	mAddHitbox 0 0xDC 0x00 0x24 0x0D
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0491:
	.4byte anim_0491__v0_l0


anim_0492__v0_l0: @ 80EFC4C
	mGetPalette 48 16 0x70
	mGetTiles 0x110D5 16
	mAddHitbox 0 0xF4 0xF5 0x0D 0x0C
	mDisplayFrame 0x5 0x0

	mGetTiles 0x110E5 16
	mDisplayFrame 0x14 0x1

	mGetTiles 0x110D5 16
	mDisplayFrame 0x5 0x0

	mGetTiles 0x110E5 16
	mDisplayFrame 0xC 0x1

	mGetTiles 0x110D5 16
	mDisplayFrame 0x5 0x0

	mGetTiles 0x110E5 16
	mDisplayFrame 0x8 0x1

	mGetTiles 0x110D5 16
	mDisplayFrame 0x2 0x0

	mGetTiles 0x110E5 16
	mDisplayFrame 0x1E 0x1

	mGetTiles 0x110F5 16
	mDisplayFrame 0x4 0x2

	mGetTiles 0x11105 16
	mDisplayFrame 0x4 0x3

	mGetTiles 0x11115 16
	mDisplayFrame 0x4 0x4

	mGetTiles 0x110D5 16
	mDisplayFrame 0x4 0x0

	mEnd 

anim_0492__v1_l0: @ 80EFD58
	mGetPalette 48 16 0x70
	mGetTiles 0x110E5 16
	mAddHitbox 0 0xF4 0xF5 0x0D 0x0C
	mDisplayFrame 0x6 0x1

	mGetTiles 0x11115 16
	mDisplayFrame 0x2 0x4

	mGetTiles 0x110D5 16
	mDisplayFrame 0x1E 0x0

	mGetTiles 0x110E5 16
	mDisplayFrame 0x6 0x1

	mGetTiles 0x110D5 16
	mDisplayFrame 0x2 0x0

	mGetTiles 0x110E5 16
	mDisplayFrame 0x6 0x1

	mGetTiles 0x110D5 16
	mDisplayFrame 0x2 0x0

	mGetTiles 0x11115 16
	mDisplayFrame 0x1 0x4

	mGetTiles 0x11105 16
	mDisplayFrame 0x1 0x3

	mGetTiles 0x110F5 16
	mDisplayFrame 0x1 0x2

	mGetTiles 0x110E5 16
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0492__v2_l0: @ 80EFE50
	mGetPalette 48 16 0x70
	mGetTiles 0x110D5 16
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0492__v3_l0: @ 80EFE74
	mGetPalette 48 16 0x70
	mGetTiles 0x110E5 16
	mAddHitbox 0 0xF4 0xF5 0x0D 0x0C
	mDisplayFrame 0x2 0x1

anim_0492__v3_l1: @ 80EFEA0
	mGetTiles 0x110F5 16
	mDisplayFrame 0x2 0x2

anim_0492__v3_l2: @ 80EFEB4
	mJumpBack anim_0492__v3_l1

anim_0492__v4_l0: @ 80EFEBC
	mGetPalette 48 16 0x70
	mGetTiles 0x11125 16
	mAddHitbox 0 0xF4 0xF5 0x0D 0x0C
	mDisplayFrame 0x5 0x5

	mGetTiles 0x11135 16
	mDisplayFrame 0x14 0x6

	mGetTiles 0x11125 16
	mDisplayFrame 0x5 0x5

	mGetTiles 0x11135 16
	mDisplayFrame 0xC 0x6

	mGetTiles 0x11125 16
	mDisplayFrame 0x5 0x5

	mGetTiles 0x11135 16
	mDisplayFrame 0x8 0x6

	mGetTiles 0x11125 16
	mDisplayFrame 0x2 0x5

	mGetTiles 0x11135 16
	mDisplayFrame 0x1E 0x6

	mGetTiles 0x11145 16
	mDisplayFrame 0x4 0x7

	mGetTiles 0x11155 16
	mDisplayFrame 0x4 0x8

	mGetTiles 0x11165 16
	mDisplayFrame 0x4 0x9

	mGetTiles 0x11125 16
	mDisplayFrame 0x4 0x5

	mEnd 

anim_0492__v5_l0: @ 80EFFC8
	mGetPalette 48 16 0x70
	mGetTiles 0x11135 16
	mDisplayFrame 0x6 0x6

	mGetTiles 0x11165 16
	mDisplayFrame 0x2 0x9

	mGetTiles 0x11125 16
	mDisplayFrame 0x1E 0x5

	mGetTiles 0x11135 16
	mDisplayFrame 0x6 0x6

	mGetTiles 0x11125 16
	mDisplayFrame 0x2 0x5

	mGetTiles 0x11135 16
	mDisplayFrame 0x6 0x6

	mGetTiles 0x11125 16
	mDisplayFrame 0x2 0x5

	mGetTiles 0x11165 16
	mDisplayFrame 0x1 0x9

	mGetTiles 0x11155 16
	mDisplayFrame 0x1 0x8

	mGetTiles 0x11145 16
	mDisplayFrame 0x1 0x7

	mGetTiles 0x11135 16
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0492__v6_l0: @ 80F00B4
	mGetPalette 48 16 0x70
	mGetTiles 0x11125 16
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0492__v7_l0: @ 80F00D8
	mGetTiles 0x11135 16
	mAddHitbox 0 0xF4 0xF5 0x0D 0x0C
	mDisplayFrame 0x2 0x6

anim_0492__v7_l1: @ 80F00F8
	mGetTiles 0x11145 16
	mDisplayFrame 0x2 0x7

anim_0492__v7_l2: @ 80F010C
	mJumpBack anim_0492__v7_l1

anim_0492__v8_l0: @ 80F0114
	mGetPalette 48 16 0x70
	mGetTiles 0x11175 16
	mAddHitbox 0 0xF4 0xF5 0x0D 0x0C
	mDisplayFrame 0x5 0xA

	mGetTiles 0x11185 16
	mDisplayFrame 0x14 0xB

	mGetTiles 0x11175 16
	mDisplayFrame 0x5 0xA

	mGetTiles 0x11185 16
	mDisplayFrame 0xC 0xB

	mGetTiles 0x11175 16
	mDisplayFrame 0x5 0xA

	mGetTiles 0x11185 16
	mDisplayFrame 0x8 0xB

	mGetTiles 0x11175 16
	mDisplayFrame 0x2 0xA

	mGetTiles 0x11185 16
	mDisplayFrame 0x1E 0xB

	mGetTiles 0x11195 16
	mDisplayFrame 0x4 0xC

	mGetTiles 0x111A5 16
	mDisplayFrame 0x4 0xD

	mGetTiles 0x111B5 16
	mDisplayFrame 0x4 0xE

	mGetTiles 0x11175 16
	mDisplayFrame 0x4 0xA

	mEnd 

anim_0492__v9_l0: @ 80F0220
	mGetPalette 48 16 0x70
	mGetTiles 0x11185 16
	mDisplayFrame 0x6 0xB

	mGetTiles 0x111B5 16
	mDisplayFrame 0x2 0xE

	mGetTiles 0x11175 16
	mDisplayFrame 0x1E 0xA

	mGetTiles 0x11185 16
	mDisplayFrame 0x6 0xB

	mGetTiles 0x11175 16
	mDisplayFrame 0x2 0xA

	mGetTiles 0x11185 16
	mDisplayFrame 0x6 0xB

	mGetTiles 0x11175 16
	mDisplayFrame 0x2 0xA

	mGetTiles 0x111B5 16
	mDisplayFrame 0x1 0xE

	mGetTiles 0x111A5 16
	mDisplayFrame 0x1 0xD

	mGetTiles 0x11195 16
	mDisplayFrame 0x1 0xC

	mGetTiles 0x11185 16
	mDisplayFrame 0x1 0xB

	mEnd 

anim_0492__v10_l0: @ 80F030C
	mGetPalette 48 16 0x70
	mGetTiles 0x11175 16
	mDisplayFrame 0x1 0xA

	mEnd 

anim_0492__v11_l0: @ 80F0330
	mGetPalette 48 16 0x70
	mGetTiles 0x11185 16
	mAddHitbox 0 0xF4 0xF5 0x0D 0x0C
	mDisplayFrame 0x2 0xB

anim_0492__v11_l1: @ 80F035C
	mGetTiles 0x11195 16
	mDisplayFrame 0x2 0xC

anim_0492__v11_l2: @ 80F0370
	mJumpBack anim_0492__v11_l1

anim_0492__v12_l0: @ 80F0378
	mGetPalette 48 16 0x70
	mGetTiles 0x111C5 16
	mAddHitbox 0 0xF4 0xF5 0x0D 0x0C
	mDisplayFrame 0x5 0xF

	mGetTiles 0x111D5 16
	mDisplayFrame 0x14 0x10

	mGetTiles 0x111C5 16
	mDisplayFrame 0x5 0xF

	mGetTiles 0x111D5 16
	mDisplayFrame 0xC 0x10

	mGetTiles 0x111C5 16
	mDisplayFrame 0x5 0xF

	mGetTiles 0x111D5 16
	mDisplayFrame 0x8 0x10

	mGetTiles 0x111C5 16
	mDisplayFrame 0x2 0xF

	mGetTiles 0x111D5 16
	mDisplayFrame 0x1E 0x10

	mGetTiles 0x111E5 16
	mDisplayFrame 0x4 0x11

	mGetTiles 0x111F5 16
	mDisplayFrame 0x4 0x12

	mGetTiles 0x11205 16
	mDisplayFrame 0x4 0x13

	mGetTiles 0x111C5 16
	mDisplayFrame 0x4 0xF

	mEnd 

anim_0492__v13_l0: @ 80F0484
	mGetPalette 48 16 0x70
	mGetTiles 0x111D5 16
	mDisplayFrame 0x6 0x10

	mGetTiles 0x11205 16
	mDisplayFrame 0x2 0x13

	mGetTiles 0x111C5 16
	mDisplayFrame 0x1E 0xF

	mGetTiles 0x111D5 16
	mDisplayFrame 0x6 0x10

	mGetTiles 0x111C5 16
	mDisplayFrame 0x2 0xF

	mGetTiles 0x111D5 16
	mDisplayFrame 0x6 0x10

	mGetTiles 0x111C5 16
	mDisplayFrame 0x2 0xF

	mGetTiles 0x11205 16
	mDisplayFrame 0x1 0x13

	mGetTiles 0x111F5 16
	mDisplayFrame 0x1 0x12

	mGetTiles 0x111E5 16
	mDisplayFrame 0x1 0x11

	mGetTiles 0x111D5 16
	mDisplayFrame 0x1 0x10

	mEnd 

anim_0492__v14_l0: @ 80F0570
	mGetPalette 48 16 0x70
	mGetTiles 0x111C5 16
	mDisplayFrame 0x1 0xF

	mEnd 

anim_0492__v15_l0: @ 80F0594
	mGetPalette 48 16 0x70
	mGetTiles 0x111D5 16
	mAddHitbox 0 0xF4 0xF5 0x0D 0x0C
	mDisplayFrame 0x2 0x10

anim_0492__v15_l1: @ 80F05C0
	mGetTiles 0x111E5 16
	mDisplayFrame 0x2 0x11

anim_0492__v15_l2: @ 80F05D4
	mJumpBack anim_0492__v15_l1

anim_0492__v16_l0: @ 80F05DC
	mGetPalette 48 16 0x70
	mGetTiles 0x11215 16
	mAddHitbox 0 0xF4 0xF5 0x0D 0x0C
	mDisplayFrame 0x5 0x14

	mGetTiles 0x11225 16
	mDisplayFrame 0x14 0x15

	mGetTiles 0x11215 16
	mDisplayFrame 0x5 0x14

	mGetTiles 0x11225 16
	mDisplayFrame 0xC 0x15

	mGetTiles 0x11215 16
	mDisplayFrame 0x5 0x14

	mGetTiles 0x11225 16
	mDisplayFrame 0x8 0x15

	mGetTiles 0x11215 16
	mDisplayFrame 0x2 0x14

	mGetTiles 0x11225 16
	mDisplayFrame 0x1E 0x15

	mGetTiles 0x11235 16
	mDisplayFrame 0x4 0x16

	mGetTiles 0x11245 16
	mDisplayFrame 0x4 0x17

	mGetTiles 0x11255 16
	mDisplayFrame 0x4 0x18

	mGetTiles 0x11215 16
	mDisplayFrame 0x4 0x14

	mEnd 

anim_0492__v17_l0: @ 80F06E8
	mGetPalette 48 16 0x70
	mGetTiles 0x11225 16
	mDisplayFrame 0x6 0x15

	mGetTiles 0x11255 16
	mDisplayFrame 0x2 0x18

	mGetTiles 0x11215 16
	mDisplayFrame 0x1E 0x14

	mGetTiles 0x11225 16
	mDisplayFrame 0x6 0x15

	mGetTiles 0x11215 16
	mDisplayFrame 0x2 0x14

	mGetTiles 0x11225 16
	mDisplayFrame 0x6 0x15

	mGetTiles 0x11215 16
	mDisplayFrame 0x2 0x14

	mGetTiles 0x11255 16
	mDisplayFrame 0x1 0x18

	mGetTiles 0x11245 16
	mDisplayFrame 0x1 0x17

	mGetTiles 0x11235 16
	mDisplayFrame 0x1 0x16

	mGetTiles 0x11225 16
	mDisplayFrame 0x1 0x15

	mEnd 

anim_0492__v18_l0: @ 80F07D4
	mGetPalette 48 16 0x70
	mGetTiles 0x11215 16
	mDisplayFrame 0x1 0x14

	mEnd 

anim_0492__v19_l0: @ 80F07F8
	mGetPalette 48 16 0x70
	mGetTiles 0x11225 16
	mAddHitbox 0 0xF4 0xF5 0x0D 0x0C
	mDisplayFrame 0x2 0x15

anim_0492__v19_l1: @ 80F0824
	mGetTiles 0x11235 16
	mDisplayFrame 0x2 0x16

anim_0492__v19_l2: @ 80F0838
	mJumpBack anim_0492__v19_l1

anim_0492__v20_l0: @ 80F0840
	mGetPalette 48 16 0x70
	mGetTiles 0x11265 16
	mAddHitbox 0 0xF4 0xF5 0x0D 0x0C
	mDisplayFrame 0x5 0x19

	mGetTiles 0x11275 16
	mDisplayFrame 0x14 0x1A

	mGetTiles 0x11265 16
	mDisplayFrame 0x5 0x19

	mGetTiles 0x11275 16
	mDisplayFrame 0xC 0x1A

	mGetTiles 0x11265 16
	mDisplayFrame 0x5 0x19

	mGetTiles 0x11275 16
	mDisplayFrame 0x8 0x1A

	mGetTiles 0x11265 16
	mDisplayFrame 0x2 0x19

	mGetTiles 0x11275 16
	mDisplayFrame 0x1E 0x1A

	mGetTiles 0x11285 16
	mDisplayFrame 0x4 0x1B

	mGetTiles 0x11295 16
	mDisplayFrame 0x4 0x1C

	mGetTiles 0x112A5 16
	mDisplayFrame 0x4 0x1D

	mGetTiles 0x11265 16
	mDisplayFrame 0x4 0x19

	mEnd 

anim_0492__v21_l0: @ 80F094C
	mGetPalette 48 16 0x70
	mGetTiles 0x11275 16
	mDisplayFrame 0x6 0x1A

	mGetTiles 0x112A5 16
	mDisplayFrame 0x2 0x1D

	mGetTiles 0x11265 16
	mDisplayFrame 0x1E 0x19

	mGetTiles 0x11275 16
	mDisplayFrame 0x6 0x1A

	mGetTiles 0x11265 16
	mDisplayFrame 0x2 0x19

	mGetTiles 0x11275 16
	mDisplayFrame 0x6 0x1A

	mGetTiles 0x11265 16
	mDisplayFrame 0x2 0x19

	mGetTiles 0x112A5 16
	mDisplayFrame 0x1 0x1D

	mGetTiles 0x11295 16
	mDisplayFrame 0x1 0x1C

	mGetTiles 0x11285 16
	mDisplayFrame 0x1 0x1B

	mGetTiles 0x11275 16
	mDisplayFrame 0x1 0x1A

	mEnd 

anim_0492__v22_l0: @ 80F0A38
	mGetPalette 48 16 0x70
	mGetTiles 0x11265 16
	mDisplayFrame 0x1 0x19

	mEnd 

anim_0492__v23_l0: @ 80F0A5C
	mGetPalette 48 16 0x70
	mGetTiles 0x11275 16
	mAddHitbox 0 0xF4 0xF5 0x0D 0x0C
	mDisplayFrame 0x2 0x1A

anim_0492__v23_l1: @ 80F0A88
	mGetTiles 0x11285 16
	mDisplayFrame 0x2 0x1B

anim_0492__v23_l2: @ 80F0A9C
	mJumpBack anim_0492__v23_l1

anim_0492__v24_l0: @ 80F0AA4
	mGetPalette 48 16 0x70
	mGetTiles 0x112B5 16
	mAddHitbox 0 0xF4 0xF5 0x0D 0x0C
	mDisplayFrame 0x5 0x1E

	mGetTiles 0x112C5 16
	mDisplayFrame 0x14 0x1F

	mGetTiles 0x112B5 16
	mDisplayFrame 0x5 0x1E

	mGetTiles 0x112C5 16
	mDisplayFrame 0xC 0x1F

	mGetTiles 0x112B5 16
	mDisplayFrame 0x5 0x1E

	mGetTiles 0x112C5 16
	mDisplayFrame 0x8 0x1F

	mGetTiles 0x112B5 16
	mDisplayFrame 0x2 0x1E

	mGetTiles 0x112C5 16
	mDisplayFrame 0x1E 0x1F

	mGetTiles 0x112D5 16
	mDisplayFrame 0x4 0x20

	mGetTiles 0x112E5 16
	mDisplayFrame 0x4 0x21

	mGetTiles 0x112F5 16
	mDisplayFrame 0x4 0x22

	mGetTiles 0x112B5 16
	mDisplayFrame 0x4 0x1E

	mEnd 

anim_0492__v25_l0: @ 80F0BB0
	mGetPalette 48 16 0x70
	mGetTiles 0x112C5 16
	mDisplayFrame 0x6 0x1F

	mGetTiles 0x112F5 16
	mDisplayFrame 0x2 0x22

	mGetTiles 0x112B5 16
	mDisplayFrame 0x1E 0x1E

	mGetTiles 0x112C5 16
	mDisplayFrame 0x6 0x1F

	mGetTiles 0x112B5 16
	mDisplayFrame 0x2 0x1E

	mGetTiles 0x112C5 16
	mDisplayFrame 0x6 0x1F

	mGetTiles 0x112B5 16
	mDisplayFrame 0x2 0x1E

	mGetTiles 0x112F5 16
	mDisplayFrame 0x1 0x22

	mGetTiles 0x112E5 16
	mDisplayFrame 0x1 0x21

	mGetTiles 0x112D5 16
	mDisplayFrame 0x1 0x20

	mGetTiles 0x112C5 16
	mDisplayFrame 0x1 0x1F

	mEnd 

anim_0492__v26_l0: @ 80F0C9C
	mGetPalette 48 16 0x70
	mGetTiles 0x112B5 16
	mDisplayFrame 0x1 0x1E

	mEnd 

anim_0492__v27_l0: @ 80F0CC0
	mGetPalette 48 16 0x70
	mGetTiles 0x112C5 16
	mAddHitbox 0 0xF4 0xF5 0x0D 0x0C
	mDisplayFrame 0x2 0x1F

anim_0492__v27_l1: @ 80F0CEC
	mGetTiles 0x112D5 16
	mDisplayFrame 0x2 0x20

anim_0492__v27_l2: @ 80F0D00
	mJumpBack anim_0492__v27_l1

anim_0492__v28_l0: @ 80F0D08
	mGetPalette 48 16 0x70
	mGetTiles 0x11305 16
	mAddHitbox 0 0xF4 0xF5 0x0D 0x0C
	mDisplayFrame 0x5 0x23

	mGetTiles 0x11315 16
	mDisplayFrame 0x14 0x24

	mGetTiles 0x11305 16
	mDisplayFrame 0x5 0x23

	mGetTiles 0x11315 16
	mDisplayFrame 0xC 0x24

	mGetTiles 0x11305 16
	mDisplayFrame 0x5 0x23

	mGetTiles 0x11315 16
	mDisplayFrame 0x8 0x24

	mGetTiles 0x11305 16
	mDisplayFrame 0x2 0x23

	mGetTiles 0x11315 16
	mDisplayFrame 0x1E 0x24

	mGetTiles 0x11325 16
	mDisplayFrame 0x4 0x25

	mGetTiles 0x11335 16
	mDisplayFrame 0x4 0x26

	mGetTiles 0x11345 16
	mDisplayFrame 0x4 0x27

	mGetTiles 0x11305 16
	mDisplayFrame 0x4 0x23

	mEnd 

anim_0492__v29_l0: @ 80F0E14
	mGetPalette 48 16 0x70
	mGetTiles 0x11315 16
	mDisplayFrame 0x6 0x24

	mGetTiles 0x11345 16
	mDisplayFrame 0x2 0x27

	mGetTiles 0x11305 16
	mDisplayFrame 0x1E 0x23

	mGetTiles 0x11315 16
	mDisplayFrame 0x6 0x24

	mGetTiles 0x11305 16
	mDisplayFrame 0x2 0x23

	mGetTiles 0x11315 16
	mDisplayFrame 0x6 0x24

	mGetTiles 0x11305 16
	mDisplayFrame 0x2 0x23

	mGetTiles 0x11345 16
	mDisplayFrame 0x1 0x27

	mGetTiles 0x11335 16
	mDisplayFrame 0x1 0x26

	mGetTiles 0x11325 16
	mDisplayFrame 0x1 0x25

	mGetTiles 0x11315 16
	mDisplayFrame 0x1 0x24

	mEnd 

anim_0492__v30_l0: @ 80F0F00
	mGetPalette 48 16 0x70
	mGetTiles 0x11305 16
	mDisplayFrame 0x1 0x23

	mEnd 

anim_0492__v31_l0: @ 80F0F24
	mGetPalette 48 16 0x70
	mGetTiles 0x11315 16
	mAddHitbox 0 0xF4 0xF5 0x0D 0x0C
	mDisplayFrame 0x2 0x24

anim_0492__v31_l1: @ 80F0F50
	mGetTiles 0x11325 16
	mDisplayFrame 0x2 0x25

anim_0492__v31_l2: @ 80F0F64
	mJumpBack anim_0492__v31_l1

anim_0492:
	.4byte anim_0492__v0_l0
	.4byte anim_0492__v1_l0
	.4byte anim_0492__v2_l0
	.4byte anim_0492__v3_l0
	.4byte anim_0492__v4_l0
	.4byte anim_0492__v5_l0
	.4byte anim_0492__v6_l0
	.4byte anim_0492__v7_l0
	.4byte anim_0492__v8_l0
	.4byte anim_0492__v9_l0
	.4byte anim_0492__v10_l0
	.4byte anim_0492__v11_l0
	.4byte anim_0492__v12_l0
	.4byte anim_0492__v13_l0
	.4byte anim_0492__v14_l0
	.4byte anim_0492__v15_l0
	.4byte anim_0492__v16_l0
	.4byte anim_0492__v17_l0
	.4byte anim_0492__v18_l0
	.4byte anim_0492__v19_l0
	.4byte anim_0492__v20_l0
	.4byte anim_0492__v21_l0
	.4byte anim_0492__v22_l0
	.4byte anim_0492__v23_l0
	.4byte anim_0492__v24_l0
	.4byte anim_0492__v25_l0
	.4byte anim_0492__v26_l0
	.4byte anim_0492__v27_l0
	.4byte anim_0492__v28_l0
	.4byte anim_0492__v29_l0
	.4byte anim_0492__v30_l0
	.4byte anim_0492__v31_l0


anim_0493__v0_l0: @ 80F0FEC
	mGetPalette 47 16 0x70
	mGetTiles 0x11355 20
	mAddHitbox 0 0xF0 0xEE 0x10 0x10
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0493:
	.4byte anim_0493__v0_l0


anim_0494__v0_l0: @ 80F1020
	mGetPalette 47 16 0x70
	mGetTiles 0x11369 36
	mAddHitbox 0 0xE8 0xE9 0x18 0x18
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0494:
	.4byte anim_0494__v0_l0


anim_0495__v0_l0: @ 80F1054
	mGetPalette 47 16 0x70
	mGetTiles 0x1138D 18
	mAddHitbox 0 0xE8 0xF6 0x18 0xFC
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0495:
	.4byte anim_0495__v0_l0


anim_0496__v0_l0: @ 80F1088
	mGetPalette 41 16 0x70
	mGetTiles 0x1139F 8
	mAddHitbox 0 0xF0 0x00 0x07 0x20
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0496__v1_l0: @ 80F10B8
	mGetPalette 41 16 0x70
	mGetTiles 0x113A7 8
	mAddHitbox 0 0xF0 0x00 0x07 0x20
	mDisplayFrame 0x1 0x1

	mGetTiles 0x113AF 8
	mDisplayFrame 0x1 0x2

	mGetTiles 0x113B7 8
	mDisplayFrame 0x1 0x3

	mGetTiles 0x113BF 8
	mDisplayFrame 0x1 0x4

	mGetTiles 0x113C7 8
	mDisplayFrame 0x1 0x5

	mGetTiles 0x1139F 8
	mDisplayFrame 0x1 0x0

	mGetTiles 0x113A7 8
	mDisplayFrame 0x1 0x1

	mGetTiles 0x113AF 8
	mDisplayFrame 0x1 0x2

	mGetTiles 0x113B7 8
	mDisplayFrame 0x1 0x3

	mGetTiles 0x113BF 8
	mDisplayFrame 0x2 0x4

	mGetTiles 0x113C7 8
	mDisplayFrame 0x2 0x5

	mGetTiles 0x1139F 8
	mDisplayFrame 0x2 0x0

	mGetTiles 0x113A7 8
	mDisplayFrame 0x2 0x1

	mGetTiles 0x113AF 8
	mDisplayFrame 0x2 0x2

	mGetTiles 0x113B7 8
	mDisplayFrame 0x2 0x3

	mGetTiles 0x113BF 8
	mDisplayFrame 0x3 0x4

	mGetTiles 0x113C7 8
	mDisplayFrame 0x3 0x5

	mGetTiles 0x1139F 8
	mDisplayFrame 0x3 0x0

	mGetTiles 0x113A7 8
	mDisplayFrame 0x3 0x1

	mGetTiles 0x113AF 8
	mDisplayFrame 0x3 0x2

	mGetTiles 0x113B7 8
	mDisplayFrame 0x4 0x3

	mGetTiles 0x113BF 8
	mDisplayFrame 0x4 0x4

	mGetTiles 0x113C7 8
	mDisplayFrame 0x4 0x5

	mGetTiles 0x1139F 8
	mDisplayFrame 0x4 0x0

	mGetTiles 0x113A7 8
	mDisplayFrame 0x5 0x1

	mGetTiles 0x113AF 8
	mDisplayFrame 0x5 0x2

	mGetTiles 0x113B7 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x113BF 8
	mDisplayFrame 0x6 0x4

	mGetTiles 0x113C7 8
	mDisplayFrame 0x6 0x5

	mGetTiles 0x1139F 8
	mDisplayFrame 0x7 0x0

	mGetTiles 0x113A7 8
	mDisplayFrame 0x8 0x1

	mGetTiles 0x113AF 8
	mDisplayFrame 0x9 0x2

	mGetTiles 0x113B7 8
	mDisplayFrame 0xA 0x3

	mGetTiles 0x113BF 8
	mDisplayFrame 0xB 0x4

	mGetTiles 0x113C7 8
	mDisplayFrame 0xC 0x5

anim_0496__v1_l1: @ 80F138C
	mJumpBack anim_0496__v1_l0

anim_0496:
	.4byte anim_0496__v0_l0
	.4byte anim_0496__v1_l0


anim_0497__v0_l0: @ 80F139C
	mGetPalette 41 16 0x70
	mGetTiles 0x113CF 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x1 0x0

	mGetTiles 0x113D7 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x1 0x1

	mGetTiles 0x113DF 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x1 0x2

	mGetTiles 0x113E7 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x1 0x3

	mGetTiles 0x113EF 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x1 0x4

	mGetTiles 0x113F7 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x1 0x5

	mGetTiles 0x113CF 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x1 0x0

	mGetTiles 0x113D7 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x1 0x1

	mGetTiles 0x113DF 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x1 0x2

	mGetTiles 0x113E7 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x2 0x3

	mGetTiles 0x113EF 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x2 0x4

	mGetTiles 0x113F7 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x2 0x5

	mGetTiles 0x113CF 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x2 0x0

	mGetTiles 0x113D7 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x2 0x1

	mGetTiles 0x113DF 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x2 0x2

	mGetTiles 0x113E7 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x3 0x3

	mGetTiles 0x113EF 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x3 0x4

	mGetTiles 0x113F7 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x3 0x5

	mGetTiles 0x113CF 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x3 0x0

	mGetTiles 0x113D7 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x3 0x1

	mGetTiles 0x113DF 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x4 0x2

	mGetTiles 0x113E7 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x4 0x3

	mGetTiles 0x113EF 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x4 0x4

	mGetTiles 0x113F7 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x4 0x5

	mGetTiles 0x113CF 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x5 0x0

	mGetTiles 0x113D7 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x5 0x1

	mGetTiles 0x113DF 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x5 0x2

	mGetTiles 0x113E7 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x6 0x3

	mGetTiles 0x113EF 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x6 0x4

	mGetTiles 0x113F7 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x7 0x5

	mGetTiles 0x113CF 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x8 0x0

	mGetTiles 0x113D7 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x9 0x1

	mGetTiles 0x113DF 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0xA 0x2

	mGetTiles 0x113E7 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0xB 0x3

	mGetTiles 0x113EF 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0xC 0x4

anim_0497__v0_l1: @ 80F1808
	mJumpBack anim_0497__v0_l0

anim_0497__v1_l0: @ 80F1810
	mGetPalette 41 16 0x70
	mGetTiles 0x113F7 8
	mAddHitbox 0 0x04 0xFA 0x1C 0x06
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0497:
	.4byte anim_0497__v0_l0
	.4byte anim_0497__v1_l0


anim_0498__v0_l0: @ 80F1848
	mGetPalette 49 16 0xB0
	mGetTiles 0x113FF 30
	mAddHitbox 0 0xF6 0x18 0x0A 0x2C
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0498__v1_l0: @ 80F1878
	mGetPalette 49 16 0xB0
	mGetTiles 0x1141D 30
	mDisplayFrame 0x2 0x1

	mGetTiles 0x1143B 30
	mDisplayFrame 0x2 0x2

	mEnd 

anim_0498__v2_l0: @ 80F18B0
	mGetPalette 49 16 0xB0
	mGetTiles 0x1141D 30
	mDisplayFrame 0x2 0x1

	mGetTiles 0x113FF 30
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0498__v3_l0: @ 80F18E8
	mGetPalette 49 16 0xB0
	mGetTiles 0x11459 3
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0498:
	.4byte anim_0498__v0_l0
	.4byte anim_0498__v1_l0
	.4byte anim_0498__v2_l0
	.4byte anim_0498__v3_l0


anim_0499__v0_l0: @ 80F191C
	mGetPalette 50 16 0xB0
	mGetTiles 0x1145C 12
	mAddHitbox 0 0xF1 0xF8 0x0F 0x09
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0499:
	.4byte anim_0499__v0_l0


anim_0501__v0_l0: @ 80F1950
	mGetPalette 51 16 0xB0
	mGetTiles 0x11468 12
	mAddHitbox 0 0xF5 0xF8 0x0B 0x00
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0501__v1_l0: @ 80F1980
	mGetPalette 51 16 0xB0
	mGetTiles 0x11474 8
	mAddHitbox 0 0xF5 0xF8 0x0B 0x00
	mDisplayFrame 0x6 0x1

	mGetTiles 0x1147C 16
	mAddHitbox 0 0xF5 0xF8 0x0B 0x00
	mDisplayFrame 0x6 0x2

	mGetTiles 0x1148C 16
	mAddHitbox 0 0xF5 0xF8 0x0B 0x00
	mDisplayFrame 0x6 0x3

	mGetTiles 0x1149C 16
	mAddHitbox 0 0xF5 0xF8 0x0B 0x00
	mDisplayFrame 0x6 0x4

	mGetTiles 0x114AC 16
	mAddHitbox 0 0xF5 0xF8 0x0B 0x00
	mDisplayFrame 0x6 0x5

	mEnd 

anim_0501__v2_l0: @ 80F1A30
	mGetPalette 51 16 0xB0
	mGetTiles 0x114BC 8
	mAddHitbox 0 0xF6 0xEB 0x0A 0xF9
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0501:
	.4byte anim_0501__v0_l0
	.4byte anim_0501__v1_l0
	.4byte anim_0501__v2_l0


anim_0502__v0_l0: @ 80F1A6C
	mGetPalette 49 16 0xB0
	mGetTiles 0x114C4 32
	mAddHitbox 0 0x00 0x04 0x40 0x17
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0502:
	.4byte anim_0502__v0_l0


anim_0503__v0_l0: @ 80F1AA0
	mGetPalette 52 16 0xB0
	mGetTiles 0x114E4 1
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0503__v1_l0: @ 80F1AC4
	mGetPalette 52 16 0xB0
	mGetTiles 0x114E5 1
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0503__v2_l0: @ 80F1AE8
	mGetPalette 52 16 0xB0
	mGetTiles 0x114E6 1
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0503:
	.4byte anim_0503__v0_l0
	.4byte anim_0503__v1_l0
	.4byte anim_0503__v2_l0


anim_0504__v0_l0: @ 80F1B18
	mGetPalette 52 16 0xB0
	mGetTiles 0x114E7 6
	mAddHitbox 0 0xF9 0x0C 0x07 0x2A
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0504__v1_l0: @ 80F1B48
	mGetPalette 52 16 0xB0
	mGetTiles 0x114ED 16
	mAddHitbox 0 0x90 0x7B 0x90 0x7B
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0504:
	.4byte anim_0504__v0_l0
	.4byte anim_0504__v1_l0


anim_0505__v0_l0: @ 80F1B80
	mGetPalette 52 16 0xB0
	mGetTiles 0x114FD 18
	mAddHitbox 0 0xE9 0xF2 0x17 0x02
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0505__v1_l0: @ 80F1BB0
	mGetPalette 52 16 0xB0
	mGetTiles 0x1150F 12
	mDisplayFrame 0x4 0x1

	mGetTiles 0x1151B 30
	mDisplayFrame 0x2 0x2

	mGetTiles 0x11539 12
	mDisplayFrame 0x1 0x3

	mGetTiles 0x11545 24
	mDisplayFrame 0x5 0x4

	mGetTiles 0x1155D 12
	mDisplayFrame 0x3 0x5

	mGetTiles 0x11569 18
	mDisplayFrame 0x3 0x6

	mEnd 

anim_0505:
	.4byte anim_0505__v0_l0
	.4byte anim_0505__v1_l0


anim_0506__v0_l0: @ 80F1C40
	mGetPalette 53 16 0x70
	mGetTiles 0x1157B 18
	mAddHitbox 0 0xE8 0xFB 0x18 0xFD
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0506:
	.4byte anim_0506__v0_l0


anim_0507__v0_l0: @ 80F1C74
	mGetPalette 49 16 0xB0
	mGetTiles 0x1158D 12
	mAddHitbox 0 0xF2 0xFB 0x0E 0x0E
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0507:
	.4byte anim_0507__v0_l0


anim_0508__v0_l0: @ 80F1CA8
	mGetPalette 49 16 0xB0
	mGetTiles 0x11599 36
	mAddHitbox 0 0xD4 0xFB 0x2C 0x08
	mDisplayFrame 0xA 0x0

	mGetTiles 0x115BD 36
	mDisplayFrame 0xA 0x1

	mGetTiles 0x115E1 36
	mDisplayFrame 0xA 0x2

	mGetTiles 0x11605 36
	mDisplayFrame 0xA 0x3

anim_0508__v0_l1: @ 80F1D10
	mJumpBack anim_0508__v0_l0

anim_0508__v1_l0: @ 80F1D18
	mGetPalette 49 16 0xB0
	mGetTiles 0x11605 36
	mAddHitbox 0 0xD4 0xFD 0x2C 0x08
	mDisplayFrame 0xA 0x3

	mGetTiles 0x115E1 36
	mDisplayFrame 0xA 0x2

	mGetTiles 0x115BD 36
	mDisplayFrame 0xA 0x1

	mGetTiles 0x11599 36
	mDisplayFrame 0xA 0x0

anim_0508__v1_l1: @ 80F1D80
	mJumpBack anim_0508__v1_l0

anim_0508:
	.4byte anim_0508__v0_l0
	.4byte anim_0508__v1_l0


anim_0509__v0_l0: @ 80F1D90
	mGetPalette 49 16 0xB0
	mGetTiles 0x11629 27
	mAddHitbox 0 0xE0 0xF9 0x20 0x06
	mDisplayFrame 0xA 0x0

	mGetTiles 0x11644 27
	mDisplayFrame 0xA 0x1

	mGetTiles 0x1165F 27
	mDisplayFrame 0xA 0x2

	mGetTiles 0x1167A 27
	mDisplayFrame 0xA 0x3

anim_0509__v0_l1: @ 80F1DF8
	mJumpBack anim_0509__v0_l0

anim_0509__v1_l0: @ 80F1E00
	mGetPalette 49 16 0xB0
	mGetTiles 0x1167A 27
	mAddHitbox 0 0xE0 0xF9 0x20 0x06
	mDisplayFrame 0xA 0x3

	mGetTiles 0x1165F 27
	mDisplayFrame 0xA 0x2

	mGetTiles 0x11644 27
	mDisplayFrame 0xA 0x1

	mGetTiles 0x11629 27
	mDisplayFrame 0xA 0x0

anim_0509__v1_l1: @ 80F1E68
	mJumpBack anim_0509__v1_l0

anim_0509:
	.4byte anim_0509__v0_l0
	.4byte anim_0509__v1_l0


anim_0510__v0_l0: @ 80F1E78
	mGetPalette 54 16 0xB0
	mGetTiles 0x11695 36
	mAddHitbox 0 0xF2 0xF2 0x0E 0x0E
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0510:
	.4byte anim_0510__v0_l0


anim_0511__v0_l0: @ 80F1EAC
	mGetPalette 55 16 0xB0
	mGetTiles 0x116B9 4
	mAddHitbox 0 0xF8 0xFD 0x08 0x08
	mDisplayFrame 0x7 0x0

	mGetTiles 0x116BD 4
	mDisplayFrame 0x7 0x1

	mGetTiles 0x116C1 4
	mDisplayFrame 0x7 0x2

anim_0511__v0_l1: @ 80F1F00
	mJumpBack anim_0511__v0_l0

anim_0511:
	.4byte anim_0511__v0_l0


anim_0512__v0_l0: @ 80F1F0C
	mGetPalette 56 16 0xB0
	mGetTiles 0x116C5 8
	mDisplayFrame 0x7 0x0

	mGetTiles 0x116CD 8
	mDisplayFrame 0x7 0x1

	mGetTiles 0x116D5 8
	mDisplayFrame 0x7 0x2

anim_0512__v0_l1: @ 80F1F54
	mJumpBack anim_0512__v0_l0

anim_0512:
	.4byte anim_0512__v0_l0


anim_0513__v0_l0: @ 80F1F60
	mGetPalette 49 16 0xB0
	mGetTiles 0x116DD 32
	mAddHitbox 0 0x00 0x03 0x40 0x20
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0513:
	.4byte anim_0513__v0_l0


anim_0514__v0_l0: @ 80F1F94
	mGetPalette 41 16 0x70
	mGetTiles 0x116FD 16
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0514__v1_l0: @ 80F1FB8
	mGetPalette 41 16 0x70
	mGetTiles 0x1170D 25
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0514:
	.4byte anim_0514__v0_l0
	.4byte anim_0514__v1_l0


anim_0515__v0_l0: @ 80F1FE4
	mGetPalette 57 16 0xB0
	mGetTiles 0x11726 54
	mAddHitbox 0 0xB8 0xF5 0x48 0x0A
	mDisplayFrame 0x4 0x0

	mGetTiles 0x1175C 54
	mDisplayFrame 0x4 0x1

	mGetTiles 0x11792 42
	mDisplayFrame 0x4 0x2

	mGetTiles 0x117BC 54
	mDisplayFrame 0x4 0x3

anim_0515__v0_l1: @ 80F204C
	mJumpBack anim_0515__v0_l0

anim_0515:
	.4byte anim_0515__v0_l0


anim_0516__v0_l0: @ 80F2058
	mGetPalette 35 16 0x90
	mGetTiles 0x117F2 30
	mAddHitbox 0 0xE8 0xF0 0x18 0x10
	mAddHitbox 1 0xEC 0xEA 0x14 0xF2
	mDisplayFrame 0x10 0x0

	mEnd 

anim_0516__v1_l0: @ 80F2094
	mGetPalette 35 16 0x90
	mGetTiles 0x11810 30
	mAddHitbox 0 0xE8 0xF2 0x18 0x10
	mDisplayFrame 0x10 0x1

	mGetTiles 0x1182E 24
	mDisplayFrame 0x10 0x2

	mGetTiles 0x11846 30
	mDisplayFrame 0x10 0x3

	mEnd 

anim_0516__v2_l0: @ 80F20EC
	mGetPalette 35 16 0x90
	mGetTiles 0x11864 30
	mAddHitbox 0 0xE8 0xF2 0x18 0x0F
	mAddHitbox 1 0xEB 0x0F 0x15 0x15
	mDisplayFrame 0x10 0x4

anim_0516__v2_l1: @ 80F2124
	mJumpBack anim_0516__v2_l0

anim_0516__v3_l0: @ 80F212C
	mGetPalette 35 16 0x90
	mGetTiles 0x11882 30
	mAddHitbox 0 0xE8 0xF2 0x18 0x10
	mDisplayFrame 0x10 0x5

	mGetTiles 0x118A0 24
	mDisplayFrame 0x10 0x6

	mGetTiles 0x118B8 30
	mDisplayFrame 0x10 0x7

	mEnd 

anim_0516:
	.4byte anim_0516__v0_l0
	.4byte anim_0516__v1_l0
	.4byte anim_0516__v2_l0
	.4byte anim_0516__v3_l0


anim_0517__v0_l0: @ 80F2194
	mGetPalette 49 16 0xB0
	mGetTiles 0x118D6 18
	mAddHitbox 0 0xE8 0xF8 0x18 0x08
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0517:
	.4byte anim_0517__v0_l0


anim_0518__v0_l0: @ 80F21C8
	mGetPalette 49 16 0xB0
	mGetTiles 0x118E8 36
	mAddHitbox 0 0xE8 0xEC 0x18 0x18
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0518:
	.4byte anim_0518__v0_l0


anim_0519__v0_l0: @ 80F21FC
	mGetPalette 49 16 0xB0
	mGetTiles 0x1190C 40
	mAddHitbox 0 0xD9 0xF2 0x27 0x10
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0519:
	.4byte anim_0519__v0_l0


anim_0520__v0_l0: @ 80F2230
	mGetPalette 50 16 0xB0
	mGetTiles 0x11934 8
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0520:
	.4byte anim_0520__v0_l0


anim_0521__v0_l0: @ 80F2258
	mGetPalette 58 16 0x70
	mGetTiles 0x1193C 20
	mAddHitbox 0 0xF1 0xF7 0x0F 0x14
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0521:
	.4byte anim_0521__v0_l0


anim_0522__v0_l0: @ 80F228C
	mGetPalette 59 16 0x70
	mGetTiles 0x11950 16
	mAddHitbox 0 0x00 0xF5 0x10 0x0C
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0522__v1_l0: @ 80F22BC
	mGetPalette 59 16 0x70
	mGetTiles 0x11960 8
	mDisplayFrame 0x3 0x1

	mGetTiles 0x11968 16
	mDisplayFrame 0x3 0x2

	mGetTiles 0x11978 12
	mDisplayFrame 0x4 0x3

	mGetTiles 0x11968 16
	mDisplayFrame 0x4 0x2

	mGetTiles 0x11978 12
	mDisplayFrame 0x5 0x3

	mGetTiles 0x11968 16
	mDisplayFrame 0x5 0x2

	mEnd 

anim_0522:
	.4byte anim_0522__v0_l0
	.4byte anim_0522__v1_l0


anim_0523__v0_l0: @ 80F234C
	mGetPalette 60 16 0xB0
	mGetTiles 0x11984 18
	mAddHitbox 0 0xE8 0xF7 0x18 0xF9
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0523:
	.4byte anim_0523__v0_l0


anim_0524__v0_l0: @ 80F2380
	mGetPalette 60 16 0xB0
	mGetTiles 0x11996 36
	mAddHitbox 0 0xE8 0xE9 0x18 0x18
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0524:
	.4byte anim_0524__v0_l0


anim_0525__v0_l0: @ 80F23B4
	mGetPalette 60 16 0xB0
	mGetTiles 0x119BA 18
	mAddHitbox 0 0xEA 0xEE 0x17 0xF4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0525:
	.4byte anim_0525__v0_l0


anim_0526__v0_l0: @ 80F23E8
	mGetPalette 61 16 0x70
	mGetTiles 0x119CC 24
	mAddHitbox 0 0xF3 0xF1 0x0D 0x1C
	mDisplayFrame 0x1 0x0

	mGetTiles 0x119E4 28
	mAddHitbox 0 0xF3 0xE4 0x0D 0x1C
	mDisplayFrame 0x2 0x1

	mGetTiles 0x11A00 28
	mAddHitbox 0 0xF3 0xE8 0x0D 0x1C
	mDisplayFrame 0x1 0x2

	mGetTiles 0x11A1C 28
	mAddHitbox 0 0xF3 0xE5 0x0D 0x1C
	mDisplayFrame 0x5 0x3

	mGetTiles 0x11A00 28
	mAddHitbox 0 0xF3 0xE8 0x0D 0x1C
	mDisplayFrame 0x3 0x2

	mEnd 

anim_0526__v1_l0: @ 80F2498
	mGetPalette 62 16 0x70
	mGetTiles 0x11A38 24
	mAddHitbox 0 0xF3 0xF3 0x0D 0x1C
	mDisplayFrame 0x3 0x4

	mEnd 

anim_0526:
	.4byte anim_0526__v0_l0
	.4byte anim_0526__v1_l0


anim_0527__v0_l0: @ 80F24D0
	mGetPalette 63 16 0xB0
	mGetTiles 0x11A50 32
	mAddHitbox 0 0x00 0x04 0x40 0x17
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0527:
	.4byte anim_0527__v0_l0


anim_0528__v0_l0: @ 80F2504
	mGetPalette 60 16 0xB0
	mGetTiles 0x11A70 30
	mAddHitbox 0 0xED 0xEE 0x13 0xFB
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0528:
	.4byte anim_0528__v0_l0


anim_0529__v0_l0: @ 80F2538
	mGetPalette 60 16 0xB0
	mGetTiles 0x11A8E 24
	mAddHitbox 0 0xE8 0xE2 0x18 0x00
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0529:
	.4byte anim_0529__v0_l0


anim_0530__v0_l0: @ 80F256C
	mGetPalette 62 16 0x70
	mGetTiles 0x11AA6 4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0530:
	.4byte anim_0530__v0_l0


anim_0531__v0_l0: @ 80F2594
	mGetPalette 64 16 0x70
	mGetTiles 0x11AAA 4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0531:
	.4byte anim_0531__v0_l0


anim_0532__v0_l0: @ 80F25BC
	mGetPalette 1 16 0x50
	mGetTiles 0x11AAE 1
	mAddHitbox 0 0xF7 0x05 0x09 0x07
	mDisplayFrame 0x14 0x0

	mGetTiles 0x11AAF 9
	mDisplayFrame 0x14 0x1

	mGetTiles 0x11AB8 9
	mDisplayFrame 0x14 0x2

	mGetTiles 0x11AC1 9
	mDisplayFrame 0x14 0x3

anim_0532__v0_l1: @ 80F2624
	mGetTiles 0x11ACA 9
	mDisplayFrame 0xC 0x4

	mGetTiles 0x11AD3 9
	mDisplayFrame 0xC 0x5

	mGetTiles 0x11ADC 9
	mDisplayFrame 0xC 0x6

anim_0532__v0_l2: @ 80F2660
	mJumpBack anim_0532__v0_l1

anim_0532:
	.4byte anim_0532__v0_l0


anim_0533__v0_l0: @ 80F266C
	mGetPalette 1 16 0x50
	mGetTiles 0x11AE5 4
	mDisplayFrame 0xC 0x0

	mGetTiles 0x11AE9 4
	mDisplayFrame 0xC 0x1

anim_0533__v0_l1: @ 80F26A0
	mJumpBack anim_0533__v0_l0

anim_0533:
	.4byte anim_0533__v0_l0


anim_0534__v0_l0: @ 80F26AC
	mGetPalette 49 16 0xB0
	mGetTiles 0x11AED 12
	mAddHitbox 0 0xF8 0xD0 0x08 0x00
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0534:
	.4byte anim_0534__v0_l0


anim_0535__v0_l0: @ 80F26E0
	mGetPalette 65 16 0xB0
	mGetTiles 0x11AF9 18
	mAddHitbox 0 0xE8 0xF8 0x18 0xFA
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0535:
	.4byte anim_0535__v0_l0


anim_0536__v0_l0: @ 80F2714
	mGetPalette 65 16 0xB0
	mGetTiles 0x11B0B 40
	mAddHitbox 0 0xF0 0xDB 0x10 0x28
	mDisplayFrame 0x4 0x0

	mEnd 

anim_0536:
	.4byte anim_0536__v0_l0


anim_0537__v0_l0: @ 80F2748
	mGetPalette 65 16 0xB0
	mGetTiles 0x11B33 40
	mAddHitbox 0 0xD8 0xF2 0x28 0x10
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0537:
	.4byte anim_0537__v0_l0


anim_0538__v0_l0: @ 80F277C
	mGetPalette 66 16 0xB0
	mGetTiles 0x11B5B 36
	mAddHitbox 0 0xE8 0xEC 0x18 0x18
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0538:
	.4byte anim_0538__v0_l0


anim_0539__v0_l0: @ 80F27B0
	mGetPalette 66 16 0xB0
	mGetTiles 0x11B7F 36
	mAddHitbox 0 0xE8 0xEC 0x18 0x17
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0539:
	.4byte anim_0539__v0_l0


anim_0540__v0_l0: @ 80F27E4
	mGetPalette 62 16 0x70
	mGetTiles 0x11BA3 24
	mAddHitbox 0 0xF3 0xF3 0x0D 0x1C
	mDisplayFrame 0x3 0x0

	mEnd 

anim_0540__v1_l0: @ 80F2814
	mGetPalette 62 16 0x70
	mGetTiles 0x11BBB 24
	mAddHitbox 0 0xF3 0xF1 0x0D 0x1C
	mDisplayFrame 0x1 0x1

	mGetTiles 0x11BD3 28
	mAddHitbox 0 0xF3 0xE4 0x0D 0x1C
	mDisplayFrame 0x2 0x2

	mGetTiles 0x11BEF 28
	mAddHitbox 0 0xF3 0xE8 0x0D 0x1C
	mDisplayFrame 0x1 0x3

	mGetTiles 0x11C0B 28
	mAddHitbox 0 0xF3 0xE5 0x0D 0x1C
	mDisplayFrame 0x5 0x4

	mGetTiles 0x11BEF 28
	mAddHitbox 0 0xF3 0xE8 0x0D 0x1C
	mDisplayFrame 0x3 0x3

	mEnd 

anim_0540:
	.4byte anim_0540__v0_l0
	.4byte anim_0540__v1_l0


anim_0541__v0_l0: @ 80F28CC
	mGetPalette 35 16 0x90
	mGetTiles 0x11C27 36
	mAddHitbox 0 0xEC 0xEC 0x14 0x14
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0541:
	.4byte anim_0541__v0_l0


anim_0542__v0_l0: @ 80F2900
	mGetPalette 67 16 0x60
	mGetTiles 0x11C4B 16
	mAddHitbox 0 0xF9 0xF3 0x0B 0x12
	mDisplayFrame 0x6 0x0

	mGetTiles 0x11C5B 16
	mDisplayFrame 0x6 0x1

	mGetTiles 0x11C6B 16
	mDisplayFrame 0x6 0x2

	mGetTiles 0x11C7B 16
	mDisplayFrame 0x6 0x3

anim_0542__v0_l1: @ 80F2968
	mJumpBack anim_0542__v0_l0

anim_0542__v1_l0: @ 80F2970
	mGetPalette 67 16 0x60
	mGetTiles 0x11C4B 16
	mAddHitbox 0 0xF9 0xF3 0x0B 0x12
	mDisplayFrame 0x6 0x0

	mGetTiles 0x11C7B 16
	mDisplayFrame 0x6 0x3

	mGetTiles 0x11C6B 16
	mDisplayFrame 0x6 0x2

	mGetTiles 0x11C5B 16
	mDisplayFrame 0x6 0x1

anim_0542__v1_l1: @ 80F29D8
	mJumpBack anim_0542__v1_l0

anim_0542:
	.4byte anim_0542__v0_l0
	.4byte anim_0542__v1_l0


anim_0543__v0_l0: @ 80F29E8
	mGetPalette 65 16 0xB0
	mGetTiles 0x11C8B 12
	mAddHitbox 0 0xF1 0xFA 0x0F 0x0C
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0543:
	.4byte anim_0543__v0_l0


anim_0544__v0_l0: @ 80F2A1C
	mGetPalette 65 16 0xB0
	mGetTiles 0x11C97 25
	mAddHitbox 0 0xEC 0xEE 0x14 0x01
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0544:
	.4byte anim_0544__v0_l0


anim_0545__v0_l0: @ 80F2A50
	mGetPalette 66 16 0xB0
	mGetTiles 0x11CB0 4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0545__v1_l0: @ 80F2A74
	mGetPalette 66 16 0xB0
	mGetTiles 0x11CB4 9
	mAddHitbox 0 0xFB 0xFE 0x09 0x0A
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0545:
	.4byte anim_0545__v0_l0
	.4byte anim_0545__v1_l0


anim_0546__v0_l0: @ 80F2AAC
	mGetPalette 68 16 0x60
	mGetTiles 0x11CBD 60
	mAddHitbox 0 0xD0 0xEC 0x30 0x14
	mDisplayFrame 0x1 0x0

	mGetTiles 0x11CF9 60
	mAddHitbox 0 0xD0 0xEC 0x30 0x14
	mDisplayFrame 0x1 0x1

anim_0546__v0_l1: @ 80F2AF8
	mJumpBack anim_0546__v0_l0

anim_0546:
	.4byte anim_0546__v0_l0


anim_0547__v0_l0: @ 80F2B04
	mGetPalette 67 16 0x60
	mGetTiles 0x11D35 24
	mAddHitbox 0 0xE8 0xE2 0x18 0x00
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0547:
	.4byte anim_0547__v0_l0


anim_0548__v0_l0: @ 80F2B38
	mGetPalette 67 16 0x60
	mGetTiles 0x11D4D 16
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0548:
	.4byte anim_0548__v0_l0


anim_0549__v0_l0: @ 80F2B60
	mGetPalette 67 16 0x60
	mGetTiles 0x11D5D 1
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0549:
	.4byte anim_0549__v0_l0


anim_0550__v0_l0: @ 80F2B88
	mGetPalette 65 16 0xB0
	mGetTiles 0x11D5E 40
	mAddHitbox 0 0xD8 0xF4 0x28 0x10
	mDisplayFrame 0x1 0x0

anim_0550__v0_l1: @ 80F2BB4
	mJumpBack anim_0550__v0_l0

anim_0550:
	.4byte anim_0550__v0_l0


anim_0551__v0_l0: @ 80F2BC0
	mGetPalette 65 16 0xB0
	mGetTiles 0x11D86 32
	mAddHitbox 0 0x00 0x04 0x40 0x17
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0551:
	.4byte anim_0551__v0_l0


anim_0552__v0_l0: @ 80F2BF4
	mGetPalette 68 16 0x60
	mGetTiles 0x11DA6 18
	mDisplayFrame 0x2 0x0

	mGetTiles 0x11DB8 18
	mDisplayFrame 0x2 0x1

	mGetTiles 0x11DCA 18
	mDisplayFrame 0x2 0x2

anim_0552__v0_l1: @ 80F2C3C
	mJumpBack anim_0552__v0_l0

anim_0552:
	.4byte anim_0552__v0_l0


anim_0553__v0_l0: @ 80F2C48
	mGetPalette 69 16 0xB0
	mGetTiles 0x11DDC 64
	mDisplayFrame 0x1 0x0

anim_0553__v0_l1: @ 80F2C68
	mJumpBack anim_0553__v0_l0

anim_0553:
	.4byte anim_0553__v0_l0


anim_0554__v0_l0: @ 80F2C74
	mGetPalette 60 16 0xB0
	mGetTiles 0x11E1C 1
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0554:
	.4byte anim_0554__v0_l0


anim_0555__v0_l0: @ 80F2C9C
	mGetPalette 60 16 0xB0
	mGetTiles 0x11E1D 25
	mAddHitbox 0 0xEE 0xDA 0x12 0x01
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0555:
	.4byte anim_0555__v0_l0


anim_0556__v0_l0: @ 80F2CD0
	mGetPalette 69 16 0xB0
	mGetTiles 0x11E36 64
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0556:
	.4byte anim_0556__v0_l0


anim_0557__v0_l0: @ 80F2CF8
	mGetPalette 60 16 0xB0
	mGetTiles 0x11E76 4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0557:
	.4byte anim_0557__v0_l0


anim_0558__v0_l0: @ 80F2D20
	mGetPalette 65 16 0xB0
	mGetTiles 0x11E7A 15
	mDisplayFrame 0x8 0x0

	mGetTiles 0x11E89 15
	mDisplayFrame 0x8 0x1

	mGetTiles 0x11E98 15
	mDisplayFrame 0x8 0x2

	mGetTiles 0x11EA7 15
	mDisplayFrame 0x8 0x3

anim_0558__v0_l1: @ 80F2D7C
	mJumpBack anim_0558__v0_l0

anim_0558:
	.4byte anim_0558__v0_l0


anim_0559__v0_l0: @ 80F2D88
	mGetPalette 70 16 0xB0
	mGetTiles 0x11EB6 32
	mAddHitbox 0 0x00 0x00 0x1F 0x40
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0559:
	.4byte anim_0559__v0_l0


anim_0560__v0_l0: @ 80F2DBC
	mGetPalette 71 16 0x70
	mGetTiles 0x11ED6 16
	mAddHitbox 0 0xF0 0xEF 0x10 0x08
	mAddHitbox 1 0xF0 0xEF 0x10 0x08
	mDisplayFrame 0x10 0x0

	mGetTiles 0x11EE6 12
	mAddHitbox 0 0xF0 0xEF 0x10 0x08
	mAddHitbox 1 0xF0 0xEF 0x10 0x08
	mDisplayFrame 0x10 0x1

	mEnd 

anim_0560:
	.4byte anim_0560__v0_l0


anim_0561__v0_l0: @ 80F2E28
	mGetPalette 71 16 0x70
	mGetTiles 0x11EF2 4
	mAddHitbox 0 0xF0 0x00 0x10 0x08
	mDisplayFrame 0x10 0x0

	mGetTiles 0x11EF6 4
	mAddHitbox 0 0xF0 0x00 0x10 0x08
	mDisplayFrame 0x10 0x1

	mGetTiles 0x11EFA 4
	mAddHitbox 0 0xF0 0x00 0x10 0x08
	mDisplayFrame 0x10 0x2

anim_0561__v0_l1: @ 80F2E94
	mJumpBack anim_0561__v0_l0

anim_0561:
	.4byte anim_0561__v0_l0


anim_0562__v0_l0: @ 80F2EA0
	mGetPalette 1 16 0x50
	mGetTiles 0x11EFE 18
	mAddHitbox 0 0xF0 0xF3 0xF0 0xF3
	mDisplayFrame 0x3 0x0

	mGetTiles 0x11F10 18
	mDisplayFrame 0x3 0x1

	mGetTiles 0x11F22 18
	mDisplayFrame 0x3 0x2

anim_0562__v0_l1: @ 80F2EF4
	mJumpBack anim_0562__v0_l0

anim_0562:
	.4byte anim_0562__v0_l0


anim_0563__v0_l0: @ 80F2F00
	mGetTiles 0x11F34 6
anim_0563__v0_l1: @ 80F2F0C
	mGetPalette 1 16 0x50
	mDisplayFrame 0xC 0x0

	mDisplayFrame 0xC 0x1

	mDisplayFrame 0xC 0x2

anim_0563__v0_l2: @ 80F2F30
	mJumpBack anim_0563__v0_l1

anim_0563:
	.4byte anim_0563__v0_l0


anim_0564__v0_l0: @ 80F2F3C
	mGetPalette 66 16 0xB0
	mGetTiles 0x11F3A 1
	mDisplayFrame 0x4 0x0

	mGetTiles 0x11F3B 1
	mDisplayFrame 0x4 0x1

	mGetTiles 0x11F3C 1
	mDisplayFrame 0x4 0x2

	mGetTiles 0x11F3D 1
	mDisplayFrame 0x4 0x3

	mGetTiles 0x11F3E 1
	mDisplayFrame 0x4 0x4

	mGetTiles 0x11F3F 1
	mDisplayFrame 0x4 0x5

	mGetTiles 0x11F40 1
	mDisplayFrame 0x4 0x6

	mGetTiles 0x11F41 1
	mDisplayFrame 0x4 0x7

anim_0564__v0_l1: @ 80F2FE8
	mJumpBack anim_0564__v0_l0

anim_0564:
	.4byte anim_0564__v0_l0


anim_0565__v0_l0: @ 80F2FF4
	mGetPalette 66 16 0xB0
	mGetTiles 0x11F42 2
	mDisplayFrame 0x6 0x0

	mGetTiles 0x11F44 2
	mDisplayFrame 0x6 0x1

	mGetTiles 0x11F46 2
	mDisplayFrame 0x6 0x2

	mGetTiles 0x11F48 2
	mDisplayFrame 0x6 0x3

	mGetTiles 0x11F4A 2
	mDisplayFrame 0x6 0x4

	mGetTiles 0x11F4C 2
	mDisplayFrame 0x6 0x5

	mGetTiles 0x11F4E 2
	mDisplayFrame 0x6 0x6

	mGetTiles 0x11F50 2
	mDisplayFrame 0x6 0x7

anim_0565__v0_l1: @ 80F30A0
	mJumpBack anim_0565__v0_l0

anim_0565:
	.4byte anim_0565__v0_l0


anim_0566__v0_l0: @ 80F30AC
	mGetPalette 66 16 0xB0
	mGetTiles 0x11F52 1
	mDisplayFrame 0x5 0x0

	mGetTiles 0x11F53 1
	mDisplayFrame 0x5 0x1

	mGetTiles 0x11F54 1
	mDisplayFrame 0x5 0x2

	mGetTiles 0x11F55 1
	mDisplayFrame 0x5 0x3

	mGetTiles 0x11F56 1
	mDisplayFrame 0x5 0x4

	mGetTiles 0x11F57 1
	mDisplayFrame 0x5 0x5

	mGetTiles 0x11F58 1
	mDisplayFrame 0x5 0x6

	mGetTiles 0x11F59 1
	mDisplayFrame 0x5 0x7

anim_0566__v0_l1: @ 80F3158
	mJumpBack anim_0566__v0_l0

anim_0566:
	.4byte anim_0566__v0_l0


anim_0567__v0_l0: @ 80F3164
	mGetPalette 72 16 0xB0
	mGetTiles 0x11F5A 20
	mAddHitbox 0 0xF5 0xF8 0x0B 0x00
	mAddHitbox 1 0xF5 0xDA 0x0B 0xF4
	mDisplayFrame 0x4 0x0

	mGetTiles 0x11F6E 24
	mAddHitbox 0 0xF5 0xF8 0x0B 0x00
	mAddHitbox 1 0xF5 0xDA 0x0B 0xF4
	mDisplayFrame 0x4 0x1

	mGetTiles 0x11F86 24
	mAddHitbox 0 0xF5 0xF8 0x0B 0x00
	mAddHitbox 1 0xF5 0xDA 0x0B 0xF4
	mDisplayFrame 0x4 0x2

	mGetTiles 0x11F9E 20
	mAddHitbox 0 0xF5 0xF8 0x0B 0x00
	mAddHitbox 1 0xF5 0xDA 0x0B 0xF4
	mDisplayFrame 0x4 0x3

	mGetTiles 0x11FB2 24
	mAddHitbox 0 0xF5 0xF8 0x0B 0x00
	mAddHitbox 1 0xF5 0xDA 0x0B 0xF4
	mDisplayFrame 0x4 0x4

	mGetTiles 0x11FCA 24
	mAddHitbox 0 0xF5 0xF8 0x0B 0x00
	mAddHitbox 1 0xF5 0xDA 0x0B 0xF4
	mDisplayFrame 0x4 0x5

anim_0567__v0_l1: @ 80F3278
	mJumpBack anim_0567__v0_l0

anim_0567__v1_l0: @ 80F3280
	mGetPalette 72 16 0xB0
	mGetTiles 0x11F5A 20
	mAddHitbox 0 0xF5 0xF8 0x0B 0x00
	mAddHitbox 1 0xF5 0xDA 0x0B 0xF4
	mDisplayFrame 0x4 0x0

	mGetTiles 0x11F6E 24
	mAddHitbox 0 0xF5 0xF8 0x0B 0x00
	mAddHitbox 1 0xF5 0xDA 0x0B 0xF4
	mDisplayFrame 0x4 0x1

	mGetTiles 0x11FE2 24
	mAddHitbox 0 0xF5 0xF8 0x0B 0x00
	mAddHitbox 1 0xF5 0xDA 0x0B 0xF4
	mDisplayFrame 0x4 0x6

	mGetTiles 0x11FFA 20
	mAddHitbox 0 0xF5 0xF8 0x0B 0x00
	mAddHitbox 1 0xF5 0xDA 0x0B 0xF4
	mDisplayFrame 0x4 0x7

	mGetTiles 0x1200E 24
	mAddHitbox 0 0xF5 0xF8 0x0B 0x00
	mAddHitbox 1 0x00 0x00 0x00 0x00
	mDisplayFrame 0x4 0x8

	mGetTiles 0x12026 24
	mAddHitbox 0 0xF5 0xF8 0x0B 0x00
	mAddHitbox 1 0x00 0x00 0x00 0x00
	mDisplayFrame 0x4 0x9

	mEnd 

anim_0567:
	.4byte anim_0567__v0_l0
	.4byte anim_0567__v1_l0


anim_0568__v0_l0: @ 80F33A0
	mGetPalette 68 16 0x60
	mGetTiles 0x1203E 12
	mDisplayFrame 0x3 0x0

	mGetTiles 0x1204A 18
	mDisplayFrame 0x3 0x1

	mGetTiles 0x1205C 12
	mDisplayFrame 0x3 0x2

anim_0568__v0_l1: @ 80F33E8
	mJumpBack anim_0568__v0_l0

anim_0568:
	.4byte anim_0568__v0_l0


anim_0569__v0_l0: @ 80F33F4
	mGetPalette 63 16 0xB0
	mGetTiles 0x12068 6
	mAddHitbox 0 0xF9 0x0C 0x07 0x2A
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0569:
	.4byte anim_0569__v0_l0


anim_0570__v0_l0: @ 80F3428
	mGetPalette 73 16 0x70
	mGetTiles 0x1206E 12
	mAddHitbox 0 0x04 0xF8 0x14 0x16
	mDisplayFrame 0x1 0x0

	mGetTiles 0x1207A 12
	mDisplayFrame 0x1 0x1

	mGetTiles 0x12086 12
	mDisplayFrame 0x1 0x2

anim_0570__v0_l1: @ 80F347C
	mJumpBack anim_0570__v0_l0

anim_0570:
	.4byte anim_0570__v0_l0


anim_0571__v0_l0: @ 80F3488
	mGetPalette 73 16 0x70
	mGetTiles 0x12092 12
	mAddHitbox 0 0x03 0x00 0x12 0x17
	mDisplayFrame 0x1 0x0

	mGetTiles 0x1209E 12
	mDisplayFrame 0x1 0x1

	mGetTiles 0x120AA 12
	mDisplayFrame 0x1 0x2

anim_0571__v0_l1: @ 80F34DC
	mJumpBack anim_0571__v0_l0

anim_0571:
	.4byte anim_0571__v0_l0


anim_0572__v0_l0: @ 80F34E8
	mGetPalette 33 16 0x70
	mGetTiles 0x120B6 20
	mDisplayFrame 0x1 0x0

	mGetTiles 0x120CA 16
	mDisplayFrame 0x2 0x1

	mGetTiles 0x120DA 24
	mDisplayFrame 0x1 0x2

	mGetTiles 0x120F2 24
	mDisplayFrame 0x5 0x3

	mGetTiles 0x1210A 24
	mDisplayFrame 0x3 0x4

	mEnd 

anim_0572__v1_l0: @ 80F355C
	mGetPalette 33 16 0x70
	mGetTiles 0x120B6 20
	mAddHitbox 0 0xF1 0xE0 0x0F 0x01
	mDisplayFrame 0x1 0x0

anim_0572__v1_l1: @ 80F3588
	mJumpBack anim_0572__v1_l0

anim_0572:
	.4byte anim_0572__v0_l0
	.4byte anim_0572__v1_l0


anim_0573__v0_l0: @ 80F3598
	mGetPalette 74 16 0xB0
	mGetTiles 0x12122 28
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0573:
	.4byte anim_0573__v0_l0


anim_0574__v0_l0: @ 80F35C0
	mGetPalette 75 16 0xD0
	mGetTiles 0x1213E 6
	mAddHitbox 0 0xF8 0xF3 0x08 0x08
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0574:
	.4byte anim_0574__v0_l0


anim_0575__v0_l0: @ 80F35F4
	mGetPalette 76 16 0xE0
	mGetTiles 0x12144 72
	mAddHitbox 0 0xE4 0xCB 0x1D 0x00
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0575__v1_l0: @ 80F3624
	mGetPalette 76 16 0xE0
	mGetTiles 0x1218C 72
	mAddHitbox 0 0xE4 0xCB 0x1D 0x00
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0575__v2_l0: @ 80F3654
	mGetPalette 76 16 0xE0
	mGetTiles 0x121D4 81
	mAddHitbox 0 0xF4 0xB7 0x0C 0xBF
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0575:
	.4byte anim_0575__v0_l0
	.4byte anim_0575__v1_l0
	.4byte anim_0575__v2_l0


anim_0576__v0_l0: @ 80F3690
	mGetPalette 76 16 0xE0
	mGetTiles 0x12225 6
	mAddHitbox 0 0xF3 0xB4 0x0D 0xC4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0576:
	.4byte anim_0576__v0_l0


anim_0577__v0_l0: @ 80F36C4
	mGetPalette 76 16 0xE0
	mGetTiles 0x1222B 64
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0577:
	.4byte anim_0577__v0_l0


anim_0578__v0_l0: @ 80F36EC
	mGetPalette 76 16 0xE0
	mGetTiles 0x1226B 64
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0578:
	.4byte anim_0578__v0_l0


anim_0579__v0_l0: @ 80F3714
	mGetPalette 74 16 0xB0
	mGetTiles 0x122AB 4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0579:
	.4byte anim_0579__v0_l0


anim_0580__v0_l0: @ 80F373C
	mGetPalette 74 16 0xB0
	mGetTiles 0x122AF 1
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0580:
	.4byte anim_0580__v0_l0


anim_0581__v0_l0: @ 80F3764
	mGetPalette 1 16 0x50
	mGetTiles 0x122B0 12
	mDisplayFrame 0xA 0x0

	mGetTiles 0x122BC 12
	mDisplayFrame 0xA 0x1

	mGetTiles 0x122C8 12
	mDisplayFrame 0xA 0x2

	mGetTiles 0x122D4 6
	mDisplayFrame 0xA 0x3

	mEnd 

anim_0581:
	.4byte anim_0581__v0_l0


anim_0582__v0_l0: @ 80F37C8
	mGetPalette 41 16 0x70
	mGetTiles 0x122DA 24
	mAddHitbox 0 0xF3 0xF4 0x0D 0x17
	mDisplayFrame 0x1 0x0

	mGetTiles 0x122F2 24
	mDisplayFrame 0x2 0x1

	mGetTiles 0x1230A 28
	mDisplayFrame 0x5 0x2

	mGetTiles 0x12326 28
	mDisplayFrame 0x3 0x3

	mGetTiles 0x12342 28
	mDisplayFrame 0x3 0x4

	mEnd 

anim_0582__v1_l0: @ 80F3848
	mGetPalette 41 16 0x70
	mGetTiles 0x122DA 24
	mAddHitbox 0 0xF3 0xF4 0x0D 0x18
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0582:
	.4byte anim_0582__v0_l0
	.4byte anim_0582__v1_l0


anim_0583__v0_l0: @ 80F3880
	mGetPalette 77 16 0x70
	mGetTiles 0x1235E 10
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0583:
	.4byte anim_0583__v0_l0


anim_0584__v0_l0: @ 80F38A8
	mGetPalette 78 16 0x70
	mGetTiles 0x12368 70
	mAddHitbox 0 0xED 0xE5 0x15 0x2E
	mDisplayFrame 0x4 0x0

	mGetTiles 0x123AE 70
	mDisplayFrame 0x4 0x1

	mGetTiles 0x123F4 70
	mDisplayFrame 0x4 0x2

	mGetTiles 0x1243A 70
	mDisplayFrame 0x4 0x3

anim_0584__v0_l1: @ 80F3910
	mJumpBack anim_0584__v0_l0

anim_0584:
	.4byte anim_0584__v0_l0


anim_0585__v0_l0: @ 80F391C
	mGetPalette 78 16 0x70
	mGetTiles 0x12480 70
	mAddHitbox 0 0xED 0xE5 0x15 0x2E
	mDisplayFrame 0x4 0x0

	mGetTiles 0x124C6 70
	mDisplayFrame 0x4 0x1

	mGetTiles 0x1250C 70
	mDisplayFrame 0x4 0x2

	mGetTiles 0x12552 70
	mDisplayFrame 0x4 0x3

anim_0585__v0_l1: @ 80F3984
	mJumpBack anim_0585__v0_l0

anim_0585:
	.4byte anim_0585__v0_l0


anim_0586__v0_l0: @ 80F3990
	mGetPalette 78 16 0x70
	mGetTiles 0x12598 70
	mAddHitbox 0 0xE6 0xED 0x2F 0x15
	mDisplayFrame 0x4 0x0

	mGetTiles 0x125DE 70
	mDisplayFrame 0x4 0x1

	mGetTiles 0x12624 70
	mDisplayFrame 0x4 0x2

	mGetTiles 0x1266A 70
	mDisplayFrame 0x4 0x3

anim_0586__v0_l1: @ 80F39F8
	mJumpBack anim_0586__v0_l0

anim_0586:
	.4byte anim_0586__v0_l0


anim_0587__v0_l0: @ 80F3A04
	mGetPalette 78 16 0x70
	mGetTiles 0x126B0 70
	mAddHitbox 0 0xE6 0xED 0x2F 0x15
	mDisplayFrame 0x4 0x0

	mGetTiles 0x126F6 70
	mDisplayFrame 0x4 0x1

	mGetTiles 0x1273C 70
	mDisplayFrame 0x4 0x2

	mGetTiles 0x12782 70
	mDisplayFrame 0x4 0x3

anim_0587__v0_l1: @ 80F3A6C
	mJumpBack anim_0587__v0_l0

anim_0587:
	.4byte anim_0587__v0_l0


anim_0588__v0_l0: @ 80F3A78
	mGetPalette 79 16 0xB0
	mGetTiles 0x127C8 70
	mAddHitbox 0 0xE5 0xEC 0x2E 0x14
	mDisplayFrame 0x23 0x0

	mGetTiles 0x1280E 70
	mDisplayFrame 0xA 0x1

	mGetTiles 0x12854 70
	mDisplayFrame 0xA 0x2

anim_0588__v0_l1: @ 80F3ACC
	mJumpBack anim_0588__v0_l0

anim_0588__v1_l0: @ 80F3AD4
	mGetPalette 79 16 0xB0
	mGetTiles 0x1289A 70
	mAddHitbox 0 0xE5 0xEC 0x2E 0x14
	mDisplayFrame 0x23 0x3

	mGetTiles 0x128E0 70
	mDisplayFrame 0xA 0x4

	mGetTiles 0x12926 70
	mDisplayFrame 0xA 0x5

anim_0588__v1_l1: @ 80F3B28
	mJumpBack anim_0588__v1_l0

anim_0588:
	.4byte anim_0588__v0_l0
	.4byte anim_0588__v1_l0


anim_0589__v0_l0: @ 80F3B38
	mGetPalette 79 16 0xB0
	mGetTiles 0x1296C 70
	mAddHitbox 0 0xEC 0xE4 0x14 0x2D
	mDisplayFrame 0x23 0x0

	mGetTiles 0x129B2 70
	mDisplayFrame 0xA 0x1

	mGetTiles 0x129F8 70
	mDisplayFrame 0xA 0x2

anim_0589__v0_l1: @ 80F3B8C
	mJumpBack anim_0589__v0_l0

anim_0589__v1_l0: @ 80F3B94
	mGetPalette 79 16 0xB0
	mGetTiles 0x12A3E 70
	mAddHitbox 0 0xEC 0xE4 0x14 0x2D
	mDisplayFrame 0x23 0x3

	mGetTiles 0x12A84 70
	mDisplayFrame 0xA 0x4

	mGetTiles 0x12ACA 70
	mDisplayFrame 0xA 0x5

anim_0589__v1_l1: @ 80F3BE8
	mJumpBack anim_0589__v1_l0

anim_0589:
	.4byte anim_0589__v0_l0
	.4byte anim_0589__v1_l0


anim_0590__v0_l0: @ 80F3BF8
	mGetPalette 80 16 0xB0
	mGetTiles 0x12B10 91
	mAddHitbox 0 0xCC 0xE4 0x33 0x24
	mDisplayFrame 0x8 0x0

	mGetTiles 0x12B6B 91
	mDisplayFrame 0x8 0x1

	mGetTiles 0x12BC6 91
	mDisplayFrame 0x8 0x2

	mGetTiles 0x12C21 91
	mDisplayFrame 0x8 0x3

anim_0590__v0_l1: @ 80F3C60
	mJumpBack anim_0590__v0_l0

anim_0590__v1_l0: @ 80F3C68
	mGetPalette 80 16 0xB0
	mGetTiles 0x12C7C 91
	mAddHitbox 0 0xCC 0xE4 0x33 0x24
	mDisplayFrame 0x8 0x4

	mGetTiles 0x12CD7 91
	mDisplayFrame 0x8 0x5

	mGetTiles 0x12D32 91
	mDisplayFrame 0x8 0x6

	mGetTiles 0x12D8D 91
	mDisplayFrame 0x8 0x7

anim_0590__v1_l1: @ 80F3CD0
	mJumpBack anim_0590__v1_l0

anim_0590:
	.4byte anim_0590__v0_l0
	.4byte anim_0590__v1_l0


anim_0591__v0_l0: @ 80F3CE0
	mGetPalette 80 16 0xB0
	mGetTiles 0x12DE8 77
	mAddHitbox 0 0xE5 0xD4 0x1B 0x2D
	mDisplayFrame 0x8 0x0

	mGetTiles 0x12E35 77
	mDisplayFrame 0x8 0x1

	mGetTiles 0x12E82 77
	mDisplayFrame 0x8 0x2

	mGetTiles 0x12ECF 77
	mDisplayFrame 0x8 0x3

anim_0591__v0_l1: @ 80F3D48
	mJumpBack anim_0591__v0_l0

anim_0591__v1_l0: @ 80F3D50
	mGetPalette 80 16 0xB0
	mGetTiles 0x12F1C 77
	mAddHitbox 0 0xE5 0xD4 0x1B 0x2D
	mDisplayFrame 0x8 0x4

	mGetTiles 0x12F69 77
	mDisplayFrame 0x8 0x5

	mGetTiles 0x12FB6 77
	mDisplayFrame 0x8 0x6

	mGetTiles 0x13003 77
	mDisplayFrame 0x8 0x7

anim_0591__v1_l1: @ 80F3DB8
	mJumpBack anim_0591__v1_l0

anim_0591:
	.4byte anim_0591__v0_l0
	.4byte anim_0591__v1_l0


anim_0592__v0_l0: @ 80F3DC8
	mGetPalette 81 16 0xB0
	mGetTiles 0x13050 16
	mAddHitbox 0 0xF0 0xF0 0x0C 0xF8
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0592:
	.4byte anim_0592__v0_l0


anim_0593__v0_l0: @ 80F3DFC
	mGetPalette 82 16 0x70
	mGetTiles 0x13060 28
	mAddHitbox 0 0x00 0xE2 0x38 0x00
	mDisplayFrame 0x8 0x0

	mGetTiles 0x1307C 28
	mDisplayFrame 0x8 0x1

anim_0593__v0_l1: @ 80F3E3C
	mJumpBack anim_0593__v0_l0

anim_0593__v1_l0: @ 80F3E44
	mGetPalette 83 16 0x70
	mGetTiles 0x13098 28
	mAddHitbox 0 0x00 0x00 0x1D 0x38
	mDisplayFrame 0x8 0x2

	mGetTiles 0x130B4 28
	mDisplayFrame 0x8 0x3

anim_0593__v1_l1: @ 80F3E84
	mJumpBack anim_0593__v1_l0

anim_0593:
	.4byte anim_0593__v0_l0
	.4byte anim_0593__v1_l0


anim_0594__v0_l0: @ 80F3E94
	mGetPalette 63 16 0xB0
	mGetTiles 0x130D0 32
	mAddHitbox 0 0x00 0x00 0x20 0x40
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0594:
	.4byte anim_0594__v0_l0


anim_0595__v0_l0: @ 80F3EC8
	mGetPalette 65 16 0xB0
	mGetTiles 0x130F0 32
	mAddHitbox 0 0x00 0x00 0x20 0x3F
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0595:
	.4byte anim_0595__v0_l0


anim_0596__v0_l0: @ 80F3EFC
	mGetPalette 84 16 0xB0
	mGetTiles 0x13110 32
	mAddHitbox 0 0x00 0x00 0x20 0x40
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0596:
	.4byte anim_0596__v0_l0


anim_0597__v0_l0: @ 80F3F30
	mGetPalette 85 16 0x70
	mGetTiles 0x13130 1
	mDisplayFrame 0xA 0x0

	mGetTiles 0x13131 1
	mDisplayFrame 0xA 0x1

	mGetTiles 0x13132 1
	mDisplayFrame 0xA 0x2

	mGetTiles 0x13133 1
	mDisplayFrame 0xA 0x3

anim_0597__v0_l1: @ 80F3F8C
	mJumpBack anim_0597__v0_l0

anim_0597:
	.4byte anim_0597__v0_l0


anim_0598__v0_l0: @ 80F3F98
	mGetPalette 86 16 0xB0
	mGetTiles 0x13134 18
	mAddHitbox 0 0xE8 0xF8 0x18 0x08
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0598:
	.4byte anim_0598__v0_l0


anim_0599__v0_l0: @ 80F3FCC
	mGetPalette 86 16 0xB0
	mGetTiles 0x13146 36
	mAddHitbox 0 0xE8 0xEC 0x18 0x18
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0599:
	.4byte anim_0599__v0_l0


anim_0600__v0_l0: @ 80F4000
	mGetPalette 86 16 0xB0
	mGetTiles 0x1316A 40
	mAddHitbox 0 0xD9 0xF2 0x27 0x10
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0600:
	.4byte anim_0600__v0_l0


anim_0601__v0_l0: @ 80F4034
	mGetPalette 86 16 0xB0
	mGetTiles 0x13192 12
	mAddHitbox 0 0xF2 0xF7 0x0E 0x0A
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0601:
	.4byte anim_0601__v0_l0


anim_0602__v0_l0: @ 80F4068
	mGetPalette 86 16 0xB0
	mGetTiles 0x1319E 32
	mAddHitbox 0 0x00 0x03 0x40 0x20
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0602:
	.4byte anim_0602__v0_l0


anim_0603__v0_l0: @ 80F409C
	mGetPalette 86 16 0xB0
	mGetTiles 0x131BE 27
	mAddHitbox 0 0xE0 0xF9 0x20 0x06
	mDisplayFrame 0xA 0x0

	mGetTiles 0x131D9 27
	mDisplayFrame 0xA 0x1

	mGetTiles 0x131F4 27
	mDisplayFrame 0xA 0x2

	mGetTiles 0x1320F 27
	mDisplayFrame 0xA 0x3

anim_0603__v0_l1: @ 80F4104
	mJumpBack anim_0603__v0_l0

anim_0603__v1_l0: @ 80F410C
	mGetPalette 86 16 0xB0
	mGetTiles 0x131BE 27
	mAddHitbox 0 0xE0 0xF9 0x20 0x06
	mDisplayFrame 0xA 0x0

	mGetTiles 0x1320F 27
	mDisplayFrame 0xA 0x3

	mGetTiles 0x131F4 27
	mDisplayFrame 0xA 0x2

	mGetTiles 0x131D9 27
	mDisplayFrame 0xA 0x1

anim_0603__v1_l1: @ 80F4174
	mJumpBack anim_0603__v1_l0

anim_0603:
	.4byte anim_0603__v0_l0
	.4byte anim_0603__v1_l0


anim_0604__v0_l0: @ 80F4184
	mGetPalette 86 16 0xB0
	mGetTiles 0x1322A 36
	mAddHitbox 0 0xD4 0xFB 0x2C 0x08
	mDisplayFrame 0xA 0x0

	mGetTiles 0x1324E 36
	mDisplayFrame 0xA 0x1

	mGetTiles 0x13272 36
	mDisplayFrame 0xA 0x2

	mGetTiles 0x13296 36
	mDisplayFrame 0xA 0x3

anim_0604__v0_l1: @ 80F41EC
	mJumpBack anim_0604__v0_l0

anim_0604__v1_l0: @ 80F41F4
	mGetPalette 86 16 0xB0
	mGetTiles 0x1322A 36
	mAddHitbox 0 0xD4 0xFB 0x2C 0x08
	mDisplayFrame 0xA 0x0

	mGetTiles 0x13296 36
	mDisplayFrame 0xA 0x3

	mGetTiles 0x13272 36
	mDisplayFrame 0xA 0x2

	mGetTiles 0x1324E 36
	mDisplayFrame 0xA 0x1

anim_0604__v1_l1: @ 80F425C
	mJumpBack anim_0604__v1_l0

anim_0604:
	.4byte anim_0604__v0_l0
	.4byte anim_0604__v1_l0


anim_0605__v0_l0: @ 80F426C
	mGetPalette 87 16 0xD0
	mGetTiles 0x132BA 18
	mAddHitbox 0 0xE8 0xF9 0x18 0xFB
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0605:
	.4byte anim_0605__v0_l0


anim_0606__v0_l0: @ 80F42A0
	mGetPalette 88 16 0x0
	mGetTiles 0x132CC 16
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0606:
	.4byte anim_0606__v0_l0


anim_0607__v0_l0: @ 80F42C8
	mGetPalette 89 16 0xA0
	mGetTiles 0x132DC 63
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0607__v1_l0: @ 80F42EC
	mGetPalette 89 16 0xA0
	mGetTiles 0x132DC 63
	mAddHitbox 0 0xE0 0xC8 0x1D 0x00
	mAddHitbox 1 0xF0 0xDC 0x10 0xF0
	mDisplayFrame 0x4 0x0

	mGetTiles 0x1331B 70
	mDisplayFrame 0x4 0x1

	mSetIdAndVariant 607 2
anim_0607__v2_l0: @ 80F4340
	mGetPalette 89 16 0xA0
	mGetTiles 0x13361 70
	mDisplayFrame 0x4 0x2

	mSetIdAndVariant 607 1
anim_0607:
	.4byte anim_0607__v0_l0
	.4byte anim_0607__v1_l0
	.4byte anim_0607__v2_l0


anim_0608__v0_l0: @ 80F4374
	mGetPalette 89 16 0xA0
	mGetTiles 0x133A7 4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0608:
	.4byte anim_0608__v0_l0


anim_0609__v0_l0: @ 80F439C
	mGetPalette 89 16 0xA0
	mGetTiles 0x133AB 64
	mAddHitbox 0 0xF0 0xF0 0x10 0x10
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0609:
	.4byte anim_0609__v0_l0


anim_0610__v0_l0: @ 80F43D0
	mGetPalette 90 16 0x80
	mGetTiles 0x133EB 8
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0610__v1_l0: @ 80F43F4
	mGetPalette 90 16 0x80
	mGetTiles 0x133F3 8
	mDisplayFrame 0x6 0x1

	mGetTiles 0x133FB 8
	mDisplayFrame 0x6 0x2

	mGetTiles 0x133F3 8
	mDisplayFrame 0x6 0x1

	mGetTiles 0x133FB 8
	mDisplayFrame 0x6 0x2

	mGetTiles 0x133F3 8
	mDisplayFrame 0x6 0x1

	mGetTiles 0x133FB 8
	mDisplayFrame 0x6 0x2

	mSetIdAndVariant 610 0
anim_0610__v2_l0: @ 80F4480
	mGetPalette 90 16 0x80
	mGetTiles 0x13403 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x1340B 8
	mDisplayFrame 0x3 0x4

	mGetTiles 0x13403 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x1340B 8
	mDisplayFrame 0x3 0x4

	mGetTiles 0x13403 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x1340B 8
	mDisplayFrame 0x3 0x4

	mSetIdAndVariant 610 0
anim_0610:
	.4byte anim_0610__v0_l0
	.4byte anim_0610__v1_l0
	.4byte anim_0610__v2_l0


anim_0611__v0_l0: @ 80F4518
	mGetTiles 0x13413 80
	mGetPalette 33 16 0x70
	mPlaySoundEffect 144
	mDisplayFrame 0x4 0x0

	mDisplayFrame 0x4 0x1

	mDisplayFrame 0x4 0x2

	mDisplayFrame 0x4 0x3

	mDisplayFrame 0x4 0x4

	mEnd 

anim_0611:
	.4byte anim_0611__v0_l0


anim_0612__v0_l0: @ 80F4568
	mGetPalette 89 16 0xA0
	mGetTiles 0x13463 56
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0612:
	.4byte anim_0612__v0_l0


anim_0613__v0_l0: @ 80F4590
	mGetPalette 89 16 0xA0
	mGetTiles 0x1349B 16
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0613:
	.4byte anim_0613__v0_l0


anim_0614__v0_l0: @ 80F45B8
	mGetPalette 89 16 0xA0
	mGetTiles 0x134AB 16
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0614:
	.4byte anim_0614__v0_l0


anim_0615__v0_l0: @ 80F45E0
	mGetPalette 89 16 0xA0
	mGetTiles 0x134BB 16
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0615:
	.4byte anim_0615__v0_l0


anim_0616__v0_l0: @ 80F4608
	mGetPalette 89 16 0xA0
	mGetTiles 0x134CB 16
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0616:
	.4byte anim_0616__v0_l0


anim_0617__v0_l0: @ 80F4630
	mGetPalette 91 16 0xA0
	mGetTiles 0x134DB 8
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0617:
	.4byte anim_0617__v0_l0


anim_0618__v0_l0: @ 80F4658
	mGetPalette 90 16 0x80
	mGetTiles 0x134E3 8
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0618__v1_l0: @ 80F467C
	mGetPalette 90 16 0x80
	mGetTiles 0x134EB 8
	mDisplayFrame 0x6 0x1

	mGetTiles 0x134F3 8
	mDisplayFrame 0x6 0x2

	mGetTiles 0x134EB 8
	mDisplayFrame 0x6 0x1

	mGetTiles 0x134F3 8
	mDisplayFrame 0x6 0x2

	mGetTiles 0x134EB 8
	mDisplayFrame 0x6 0x1

	mGetTiles 0x134F3 8
	mDisplayFrame 0x6 0x2

	mEnd 

anim_0618__v2_l0: @ 80F4704
	mGetPalette 90 16 0x80
	mGetTiles 0x134FB 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x13503 8
	mDisplayFrame 0x3 0x4

	mGetTiles 0x134FB 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x13503 8
	mDisplayFrame 0x3 0x4

	mGetTiles 0x134FB 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x13503 8
	mDisplayFrame 0x3 0x4

	mEnd 

anim_0618:
	.4byte anim_0618__v0_l0
	.4byte anim_0618__v1_l0
	.4byte anim_0618__v2_l0


anim_0619__v0_l0: @ 80F4798
	mGetPalette 91 16 0xA0
	mGetTiles 0x1350B 8
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0619:
	.4byte anim_0619__v0_l0


anim_0620__v0_l0: @ 80F47C0
	mGetPalette 91 16 0xA0
	mGetTiles 0x13513 54
	mAddHitbox 0 0xED 0xBF 0x14 0xE2
	mAddHitbox 1 0xF0 0xE2 0x10 0x02
	mAddHitbox 2 0x00 0x00 0x00 0x00
	mDisplayFrame 0x4 0x0

	mGetTiles 0x13549 54
	mAddHitbox 0 0xED 0xBF 0x14 0xE2
	mAddHitbox 1 0xF0 0xE2 0x10 0x02
	mAddHitbox 2 0xE8 0xBB 0xE8 0xBA
	mDisplayFrame 0x4 0x1

	mGetTiles 0x1357F 54
	mAddHitbox 0 0xED 0xBF 0x14 0xE2
	mAddHitbox 1 0xF0 0xE2 0x10 0x02
	mAddHitbox 2 0xE8 0xBC 0xE8 0xBA
	mDisplayFrame 0x4 0x2

	mGetTiles 0x13549 54
	mAddHitbox 0 0xED 0xBF 0x14 0xE2
	mAddHitbox 1 0xF0 0xE2 0x10 0x02
	mAddHitbox 2 0xE8 0xBB 0xE8 0xBA
	mDisplayFrame 0x4 0x1

anim_0620__v0_l1: @ 80F48AC
	mJumpBack anim_0620__v0_l0

anim_0620__v1_l0: @ 80F48B4
	mGetPalette 91 16 0xA0
	mGetTiles 0x135B5 54
	mAddHitbox 0 0xED 0xBC 0x14 0xDF
	mAddHitbox 1 0xF0 0xDD 0x10 0x02
	mAddHitbox 2 0xE8 0xB7 0xE8 0xBA
	mDisplayFrame 0x3 0x3

	mGetTiles 0x135EB 42
	mAddHitbox 0 0xED 0xCA 0x14 0xED
	mAddHitbox 1 0xF0 0xED 0x10 0x03
	mAddHitbox 2 0xE8 0xC7 0xE8 0xBA
	mDisplayFrame 0x3 0x4

	mGetTiles 0x13615 42
	mAddHitbox 0 0xED 0xD4 0x14 0xF7
	mAddHitbox 1 0xF0 0xF7 0x10 0x03
	mAddHitbox 2 0xE8 0xCE 0xE8 0xBA
	mDisplayFrame 0x3 0x5

	mGetTiles 0x135EB 42
	mAddHitbox 0 0xED 0xCA 0x14 0xED
	mAddHitbox 1 0xF0 0xEE 0x10 0x02
	mAddHitbox 2 0xE8 0xC7 0xE8 0xBA
	mDisplayFrame 0x3 0x4

	mGetTiles 0x135B5 54
	mAddHitbox 0 0xED 0xBC 0x14 0xDF
	mAddHitbox 1 0xF0 0xDD 0x10 0x02
	mAddHitbox 2 0xE8 0xB7 0xE8 0xBA
	mDisplayFrame 0x3 0x3

	mEnd 

anim_0620__v2_l0: @ 80F49DC
	mGetPalette 91 16 0xA0
	mGetTiles 0x135B5 54
	mAddHitbox 0 0xED 0xBC 0x14 0xDF
	mAddHitbox 1 0xF0 0xDD 0x10 0x02
	mAddHitbox 2 0xE8 0xB7 0xE8 0xBA
	mDisplayFrame 0x3 0x3

	mGetTiles 0x135EB 42
	mAddHitbox 0 0xED 0xCA 0x14 0xED
	mAddHitbox 1 0xF0 0xED 0x10 0x03
	mAddHitbox 2 0xE8 0xC7 0xE8 0xBA
	mDisplayFrame 0x3 0x4

	mGetTiles 0x13615 42
	mAddHitbox 0 0xED 0xD4 0x14 0xF7
	mAddHitbox 1 0xF0 0xF7 0x10 0x03
	mAddHitbox 2 0xE8 0xCE 0xE8 0xBA
	mDisplayFrame 0x6 0x5

	mGetTiles 0x135EB 42
	mAddHitbox 0 0xED 0xCA 0x14 0xED
	mAddHitbox 1 0xF0 0xED 0x10 0x03
	mAddHitbox 2 0xE8 0xC7 0xE8 0xBA
	mDisplayFrame 0x6 0x4

	mGetTiles 0x13615 42
	mAddHitbox 0 0xED 0xD4 0x14 0xF7
	mAddHitbox 1 0xF0 0xF7 0x10 0x03
	mAddHitbox 2 0xE8 0xCE 0xE8 0xBA
	mDisplayFrame 0x5 0x5

	mGetTiles 0x135EB 42
	mAddHitbox 0 0xED 0xCA 0x14 0xED
	mAddHitbox 1 0xF0 0xED 0x10 0x03
	mAddHitbox 2 0xE8 0xC7 0xE8 0xBA
	mDisplayFrame 0x5 0x4

	mGetTiles 0x13615 42
	mAddHitbox 0 0xED 0xD4 0x14 0xF7
	mAddHitbox 1 0xF0 0xF7 0x10 0x03
	mAddHitbox 2 0xE8 0xCE 0xE8 0xBA
	mDisplayFrame 0x4 0x5

	mGetTiles 0x135EB 42
	mAddHitbox 0 0xED 0xCA 0x14 0xED
	mAddHitbox 1 0xF0 0xED 0x10 0x03
	mAddHitbox 2 0xE8 0xC7 0xE8 0xBA
	mDisplayFrame 0x4 0x4

	mGetTiles 0x135B5 54
	mAddHitbox 0 0xED 0xBC 0x14 0xDF
	mAddHitbox 1 0xF0 0xDD 0x10 0x02
	mAddHitbox 2 0xE8 0xB7 0xE8 0xBA
	mDisplayFrame 0x3 0x3

	mEnd 

anim_0620:
	.4byte anim_0620__v0_l0
	.4byte anim_0620__v1_l0
	.4byte anim_0620__v2_l0


anim_0621__v0_l0: @ 80F4BF0
	mGetPalette 91 16 0xA0
	mGetTiles 0x1363F 30
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0621:
	.4byte anim_0621__v0_l0


anim_0622__v0_l0: @ 80F4C18
	mGetPalette 90 16 0x80
	mGetTiles 0x1365D 8
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0622__v1_l0: @ 80F4C3C
	mGetPalette 90 16 0x80
	mGetTiles 0x13665 8
	mDisplayFrame 0x6 0x1

	mGetTiles 0x1366D 8
	mDisplayFrame 0x6 0x2

	mGetTiles 0x13665 8
	mDisplayFrame 0x6 0x1

	mGetTiles 0x1366D 8
	mDisplayFrame 0x6 0x2

	mGetTiles 0x13665 8
	mDisplayFrame 0x6 0x1

	mGetTiles 0x1366D 8
	mDisplayFrame 0x6 0x2

	mEnd 

anim_0622__v2_l0: @ 80F4CC4
	mGetPalette 90 16 0x80
	mGetTiles 0x13675 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x1367D 8
	mDisplayFrame 0x3 0x4

	mGetTiles 0x13675 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x1367D 8
	mDisplayFrame 0x3 0x4

	mGetTiles 0x13675 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x1367D 8
	mDisplayFrame 0x3 0x4

	mEnd 

anim_0622:
	.4byte anim_0622__v0_l0
	.4byte anim_0622__v1_l0
	.4byte anim_0622__v2_l0


anim_0623__v0_l0: @ 80F4D58
	mGetPalette 92 16 0xA0
	mGetTiles 0x13685 16
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0623:
	.4byte anim_0623__v0_l0


anim_0624__v0_l0: @ 80F4D80
	mGetPalette 92 16 0xA0
	mGetTiles 0x13695 36
	mAddHitbox 0 0xEC 0xEC 0x14 0x16
	mDisplayFrame 0x5 0x0

	mGetTiles 0x136B9 36
	mDisplayFrame 0x5 0x1

	mGetTiles 0x136DD 36
	mDisplayFrame 0x5 0x2

	mGetTiles 0x13701 36
	mDisplayFrame 0x5 0x3

anim_0624__v0_l1: @ 80F4DE8
	mJumpBack anim_0624__v0_l0

anim_0624:
	.4byte anim_0624__v0_l0


anim_0625__v0_l0: @ 80F4DF4
	mGetPalette 93 16 0xB0
	mGetTiles 0x13725 36
	mAddHitbox 0 0xEC 0xEC 0x14 0x16
	mDisplayFrame 0x5 0x0

	mGetTiles 0x13749 36
	mDisplayFrame 0x5 0x1

anim_0625__v0_l1: @ 80F4E34
	mJumpBack anim_0625__v0_l0

anim_0625:
	.4byte anim_0625__v0_l0


anim_0626__v0_l0: @ 80F4E40
	mGetPalette 94 16 0xA0
	mGetTiles 0x1376D 48
	mAddHitbox 0 0xE9 0x10 0x17 0x3A
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0626:
	.4byte anim_0626__v0_l0


anim_0627__v0_l0: @ 80F4E74
	mGetPalette 95 16 0xA0
	mGetTiles 0x1379D 16
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0627__v1_l0: @ 80F4E98
	mGetPalette 95 16 0xA0
	mGetTiles 0x137AD 12
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0627:
	.4byte anim_0627__v0_l0
	.4byte anim_0627__v1_l0


anim_0628__v0_l0: @ 80F4EC4
	mGetPalette 94 16 0xA0
	mGetTiles 0x137B9 64
	mAddHitbox 0 0xE9 0x00 0x17 0x35
	mDisplayFrame 0x7 0x0

	mGetTiles 0x137F9 64
	mDisplayFrame 0x7 0x1

	mGetTiles 0x13839 64
	mDisplayFrame 0x7 0x2

	mGetTiles 0x13879 64
	mDisplayFrame 0x7 0x3

anim_0628__v0_l1: @ 80F4F2C
	mJumpBack anim_0628__v0_l0

anim_0628__v1_l0: @ 80F4F34
	mGetPalette 94 16 0xA0
	mGetTiles 0x138B9 64
	mAddHitbox 0 0xE9 0x00 0x17 0x35
	mDisplayFrame 0x5 0x4

	mGetTiles 0x138F9 64
	mDisplayFrame 0x5 0x5

anim_0628__v1_l1: @ 80F4F74
	mJumpBack anim_0628__v1_l0

anim_0628__v2_l0: @ 80F4F7C
	mGetPalette 94 16 0xA0
	mGetTiles 0x138B9 64
	mAddHitbox 0 0xE9 0x00 0x17 0x35
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0628:
	.4byte anim_0628__v0_l0
	.4byte anim_0628__v1_l0
	.4byte anim_0628__v2_l0


anim_0629__v0_l0: @ 80F4FB8
	mGetPalette 96 16 0x80
	mGetTiles 0x13939 8
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0629__v1_l0: @ 80F4FDC
	mGetPalette 96 16 0x80
	mGetTiles 0x13941 8
	mDisplayFrame 0x6 0x1

	mGetTiles 0x13949 8
	mDisplayFrame 0x6 0x2

	mGetTiles 0x13941 8
	mDisplayFrame 0x6 0x1

	mGetTiles 0x13949 8
	mDisplayFrame 0x6 0x2

	mGetTiles 0x13941 8
	mDisplayFrame 0x6 0x1

	mGetTiles 0x13949 8
	mDisplayFrame 0x6 0x2

	mEnd 

anim_0629__v2_l0: @ 80F5064
	mGetPalette 96 16 0x80
	mGetTiles 0x13951 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x13949 8
	mDisplayFrame 0x3 0x2

	mGetTiles 0x13951 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x13949 8
	mDisplayFrame 0x3 0x2

	mGetTiles 0x13951 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x13949 8
	mDisplayFrame 0x3 0x2

	mEnd 

anim_0629:
	.4byte anim_0629__v0_l0
	.4byte anim_0629__v1_l0
	.4byte anim_0629__v2_l0


anim_0630__v0_l0: @ 80F50F8
	mGetPalette 97 16 0xB0
	mGetTiles 0x13959 24
	mAddHitbox 0 0xF4 0xEF 0x0B 0x06
	mAddHitbox 1 0xFB 0x05 0x04 0x0F
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0630:
	.4byte anim_0630__v0_l0


anim_0631__v0_l0: @ 80F5138
	mGetPalette 98 16 0xA0
	mGetTiles 0x13971 16
	mDisplayFrame 0x3C 0x0

	mEnd 

anim_0631__v1_l0: @ 80F515C
	mGetPalette 98 16 0xA0
	mGetTiles 0x13981 20
	mDisplayFrame 0x4 0x1

	mGetTiles 0x13995 30
	mDisplayFrame 0x4 0x2

	mGetTiles 0x139B3 24
	mDisplayFrame 0x4 0x3

	mGetTiles 0x13995 30
	mDisplayFrame 0x3 0x2

	mGetTiles 0x13981 20
	mDisplayFrame 0x3 0x1

	mGetTiles 0x139CB 20
	mDisplayFrame 0x4 0x4

	mGetTiles 0x139DF 20
	mDisplayFrame 0x4 0x5

	mGetTiles 0x139F3 20
	mDisplayFrame 0x4 0x6

	mGetTiles 0x13A07 20
	mDisplayFrame 0xC 0x7

	mEnd 

anim_0631:
	.4byte anim_0631__v0_l0
	.4byte anim_0631__v1_l0


anim_0632__v0_l0: @ 80F5228
	mGetPalette 98 16 0xA0
	mGetTiles 0x13A1B 20
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x4 0x0

	mGetTiles 0x13A2F 20
	mDisplayFrame 0x4 0x1

	mGetTiles 0x13A43 20
	mDisplayFrame 0x4 0x2

	mGetTiles 0x13A57 20
	mDisplayFrame 0x4 0x3

	mGetTiles 0x13A6B 16
	mDisplayFrame 0x4 0x4

	mGetTiles 0x13A7B 20
	mDisplayFrame 0x4 0x5

anim_0632__v0_l1: @ 80F52B8
	mJumpBack anim_0632__v0_l0

anim_0632:
	.4byte anim_0632__v0_l0


anim_0633__v0_l0: @ 80F52C4
	mGetPalette 98 16 0xA0
	mGetTiles 0x13A8F 20
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x1 0x0

	mGetTiles 0x13AA3 20
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0633:
	.4byte anim_0633__v0_l0


anim_0634__v0_l0: @ 80F530C
	mGetPalette 98 16 0xA0
	mGetTiles 0x13AB7 25
	mDisplayFrame 0x3 0x0

	mGetTiles 0x13AD0 20
	mDisplayFrame 0x3 0x1

	mGetTiles 0x13AE4 20
	mDisplayFrame 0x3 0x2

	mGetTiles 0x13AF8 20
	mDisplayFrame 0x3 0x3

	mGetTiles 0x13B0C 15
	mDisplayFrame 0x3 0x4

	mEnd 

anim_0634:
	.4byte anim_0634__v0_l0


anim_0635__v0_l0: @ 80F5384
	mGetPalette 98 16 0xA0
	mGetTiles 0x13B1B 20
	mDisplayFrame 0x3 0x0

	mGetTiles 0x13B2F 15
	mDisplayFrame 0x3 0x1

	mGetTiles 0x13B3E 15
	mDisplayFrame 0x3 0x2

	mGetTiles 0x13B4D 20
	mDisplayFrame 0x3 0x3

	mGetTiles 0x13B61 20
	mDisplayFrame 0x3 0x4

	mGetTiles 0x13B75 16
	mDisplayFrame 0x3 0x5

	mEnd 

anim_0635:
	.4byte anim_0635__v0_l0


anim_0636__v0_l0: @ 80F5410
	mGetPalette 98 16 0xA0
	mGetTiles 0x13B85 16
	mAddHitbox 0 0xF8 0xF8 0x08 0x08
	mAddHitbox 1 0xF8 0xF8 0x08 0x08
	mDisplayFrame 0x2 0x0

	mGetTiles 0x13B95 16
	mDisplayFrame 0x2 0x1

	mGetTiles 0x13BA5 16
	mDisplayFrame 0x2 0x2

	mGetTiles 0x13BB5 16
	mDisplayFrame 0x2 0x3

anim_0636__v0_l1: @ 80F5484
	mJumpBack anim_0636__v0_l0

anim_0636:
	.4byte anim_0636__v0_l0


anim_0637__v0_l0: @ 80F5490
	mGetPalette 98 16 0xA0
	mGetTiles 0x13BC5 16
	mAddHitbox 0 0xF8 0xF8 0x08 0x08
	mAddHitbox 1 0xF8 0xF8 0x08 0x08
	mDisplayFrame 0x2 0x0

	mGetTiles 0x13BD5 16
	mDisplayFrame 0x2 0x1

	mGetTiles 0x13BE5 16
	mDisplayFrame 0x2 0x2

	mGetTiles 0x13BF5 16
	mDisplayFrame 0x2 0x3

anim_0637__v0_l1: @ 80F5504
	mJumpBack anim_0637__v0_l0

anim_0637__v1_l0: @ 80F550C
	mGetPalette 98 16 0xA0
	mGetTiles 0x13C05 16
	mAddHitbox 0 0xF8 0xF8 0x08 0x08
	mAddHitbox 1 0xF8 0xF8 0x08 0x08
	mDisplayFrame 0x2 0x4

	mGetTiles 0x13C15 16
	mDisplayFrame 0x2 0x5

	mGetTiles 0x13C25 16
	mDisplayFrame 0x2 0x6

	mGetTiles 0x13C35 16
	mDisplayFrame 0x2 0x7

anim_0637__v1_l1: @ 80F5580
	mJumpBack anim_0637__v1_l0

anim_0637:
	.4byte anim_0637__v0_l0
	.4byte anim_0637__v1_l0


anim_0638__v0_l0: @ 80F5590
	mGetPalette 98 16 0xA0
	mGetTiles 0x13C45 24
	mAddHitbox 0 0xF4 0xF8 0x0A 0x06
	mAddHitbox 1 0xE8 0xF6 0x00 0x0D
	mDisplayFrame 0x3 0x0

	mGetTiles 0x13C5D 24
	mDisplayFrame 0x3 0x1

anim_0638__v0_l1: @ 80F55DC
	mJumpBack anim_0638__v0_l0

anim_0638:
	.4byte anim_0638__v0_l0


anim_0639__v0_l0: @ 80F55E8
	mGetPalette 98 16 0xA0
	mGetTiles 0x13C75 24
	mAddHitbox 0 0xF4 0xF8 0x0A 0x06
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0639__v1_l0: @ 80F5618
	mGetPalette 98 16 0xA0
	mGetTiles 0x13C8D 24
	mAddHitbox 0 0xF4 0xF8 0x0A 0x06
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0639__v2_l0: @ 80F5648
	mGetPalette 98 16 0xA0
	mGetTiles 0x13CA5 24
	mAddHitbox 0 0xF4 0xF8 0x0A 0x06
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0639__v3_l0: @ 80F5678
	mGetPalette 98 16 0xA0
	mGetTiles 0x13CBD 24
	mAddHitbox 0 0xF4 0xF8 0x0A 0x06
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0639:
	.4byte anim_0639__v0_l0
	.4byte anim_0639__v1_l0
	.4byte anim_0639__v2_l0
	.4byte anim_0639__v3_l0


anim_0640__v0_l0: @ 80F56B8
	mGetPalette 98 16 0xA0
	mGetTiles 0x13CD5 20
	mAddHitbox 0 0xFA 0xF0 0x06 0x0E
	mDisplayFrame 0x3 0x0

	mGetTiles 0x13CE9 25
	mDisplayFrame 0x3 0x1

	mGetTiles 0x13D02 30
	mDisplayFrame 0x3 0x2

	mGetTiles 0x13D20 30
	mDisplayFrame 0x3 0x3

	mGetTiles 0x13D3E 30
	mDisplayFrame 0x3 0x4

	mGetTiles 0x13D5C 30
	mDisplayFrame 0x3 0x5

	mGetTiles 0x13D7A 30
	mDisplayFrame 0x3 0x6

	mEnd 

anim_0640__v1_l0: @ 80F5760
	mGetPalette 98 16 0xA0
	mGetTiles 0x13D98 30
	mAddHitbox 0 0xFA 0xF0 0x06 0x0E
	mDisplayFrame 0x3 0x7

	mGetTiles 0x13DB6 16
	mAddHitbox 0 0xFA 0xFA 0x06 0x10
	mDisplayFrame 0x1 0x8

	mGetTiles 0x13DC6 16
	mDisplayFrame 0x1 0x9

	mGetTiles 0x13DD6 16
	mDisplayFrame 0x6 0xA

	mGetTiles 0x13DC6 16
	mDisplayFrame 0x1 0x9

	mGetTiles 0x13DB6 16
	mDisplayFrame 0x1 0x8

	mEnd 

anim_0640:
	.4byte anim_0640__v0_l0
	.4byte anim_0640__v1_l0


anim_0641__v0_l0: @ 80F5808
	mGetPalette 98 16 0xA0
	mGetTiles 0x13DE6 15
	mAddHitbox 0 0xF5 0xFA 0x0F 0x07
	mDisplayFrame 0x2 0x0

	mGetTiles 0x13DF5 15
	mDisplayFrame 0x2 0x1

anim_0641__v0_l1: @ 80F5848
	mJumpBack anim_0641__v0_l0

anim_0641:
	.4byte anim_0641__v0_l0


anim_0642__v0_l0: @ 80F5854
	mGetPalette 98 16 0xA0
	mGetTiles 0x13E04 16
	mAddHitbox 0 0xF8 0xFA 0x08 0x10
	mPlaySoundEffect 132
	mDisplayFrame 0x1 0x0

	mGetTiles 0x13E14 16
	mDisplayFrame 0x1 0x1

	mGetTiles 0x13E24 12
	mDisplayFrame 0x1 0x2

	mGetTiles 0x13E30 16
	mDisplayFrame 0x1E 0x3

	mGetTiles 0x13E14 16
	mDisplayFrame 0x1 0x1

	mGetTiles 0x13E04 16
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0642:
	.4byte anim_0642__v0_l0


anim_0643__v0_l0: @ 80F58F4
	mGetPalette 98 16 0xA0
	mGetTiles 0x13E40 20
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x2 0x0

	mGetTiles 0x13E54 30
	mDisplayFrame 0x2 0x1

	mGetTiles 0x13E72 30
	mAddHitbox 0 0xF0 0xF2 0x00 0x10
	mAddHitbox 1 0xE0 0xF4 0xFC 0x10
	mPlaySoundEffect 126
	mDisplayFrame 0x2 0x2

	mGetTiles 0x13E90 35
	mAddHitbox 0 0xF0 0xF2 0x00 0x10
	mAddHitbox 1 0x00 0x00 0x00 0x00
	mDisplayFrame 0x4 0x3

	mGetTiles 0x13E54 30
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x2 0x1

	mGetTiles 0x13E40 20
	mDisplayFrame 0x2 0x0

	mEnd 

anim_0643__v1_l0: @ 80F59CC
	mGetPalette 98 16 0xA0
	mGetTiles 0x13EB3 20
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x2 0x4

	mGetTiles 0x13EC7 20
	mDisplayFrame 0x2 0x5

	mGetTiles 0x13EDB 35
	mAddHitbox 0 0xF0 0xF2 0x00 0x10
	mAddHitbox 1 0xE0 0xF4 0xFC 0x10
	mPlaySoundEffect 126
	mDisplayFrame 0x2 0x6

	mGetTiles 0x13EFE 35
	mAddHitbox 0 0xF0 0xF3 0x00 0x10
	mAddHitbox 1 0x00 0x00 0x00 0x00
	mDisplayFrame 0x6 0x7

	mGetTiles 0x13EC7 20
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x2 0x5

	mGetTiles 0x13EB3 20
	mDisplayFrame 0x2 0x4

	mEnd 

anim_0643:
	.4byte anim_0643__v0_l0
	.4byte anim_0643__v1_l0


anim_0644__v0_l0: @ 80F5AAC
	mGetPalette 99 16 0xB0
	mGetTiles 0x13F21 20
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x4 0x0

	mGetTiles 0x13F35 20
	mDisplayFrame 0x3 0x1

	mGetTiles 0x13F49 25
	mDisplayFrame 0x3 0x2

	mGetTiles 0x13F62 20
	mDisplayFrame 0x3 0x3

	mGetTiles 0x13F76 25
	mDisplayFrame 0x4 0x4

	mGetTiles 0x13F8F 25
	mDisplayFrame 0x4 0x5

anim_0644__v0_l1: @ 80F5B3C
	mJumpBack anim_0644__v0_l0

anim_0644:
	.4byte anim_0644__v0_l0


anim_0645__v0_l0: @ 80F5B48
	mGetPalette 100 16 0xB0
	mGetTiles 0x13FA8 20
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x1 0x0

	mGetTiles 0x13FBC 20
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0645:
	.4byte anim_0645__v0_l0


anim_0646__v0_l0: @ 80F5B90
	mGetPalette 100 16 0xB0
	mGetTiles 0x13FD0 25
	mDisplayFrame 0x3 0x0

	mGetTiles 0x13FE9 20
	mDisplayFrame 0x3 0x1

	mGetTiles 0x13FFD 20
	mDisplayFrame 0x3 0x2

	mGetTiles 0x14011 20
	mDisplayFrame 0x3 0x3

	mGetTiles 0x14025 15
	mDisplayFrame 0x3 0x4

	mEnd 

anim_0646:
	.4byte anim_0646__v0_l0


anim_0647__v0_l0: @ 80F5C08
	mGetPalette 100 16 0xB0
	mGetTiles 0x14034 20
	mDisplayFrame 0x3 0x0

	mGetTiles 0x14048 15
	mDisplayFrame 0x3 0x1

	mGetTiles 0x14057 15
	mDisplayFrame 0x3 0x2

	mGetTiles 0x14066 20
	mDisplayFrame 0x3 0x3

	mGetTiles 0x1407A 20
	mDisplayFrame 0x3 0x4

	mGetTiles 0x1408E 16
	mDisplayFrame 0x3 0x5

	mEnd 

anim_0647:
	.4byte anim_0647__v0_l0


anim_0648__v0_l0: @ 80F5C94
	mGetPalette 100 16 0xB0
	mGetTiles 0x1409E 16
	mAddHitbox 0 0xF8 0xF8 0x08 0x08
	mAddHitbox 1 0xF8 0xF8 0x08 0x08
	mDisplayFrame 0x2 0x0

	mGetTiles 0x140AE 16
	mDisplayFrame 0x2 0x1

	mGetTiles 0x140BE 16
	mDisplayFrame 0x2 0x2

	mGetTiles 0x140CE 16
	mDisplayFrame 0x2 0x3

anim_0648__v0_l1: @ 80F5D08
	mJumpBack anim_0648__v0_l0

anim_0648:
	.4byte anim_0648__v0_l0


anim_0649__v0_l0: @ 80F5D14
	mGetPalette 100 16 0xB0
	mGetTiles 0x140DE 16
	mAddHitbox 0 0xF8 0xF8 0x08 0x08
	mAddHitbox 1 0xF8 0xF8 0x08 0x08
	mDisplayFrame 0x2 0x0

	mGetTiles 0x140EE 16
	mDisplayFrame 0x2 0x1

	mGetTiles 0x140FE 16
	mDisplayFrame 0x2 0x2

	mGetTiles 0x1410E 16
	mDisplayFrame 0x2 0x3

anim_0649__v0_l1: @ 80F5D88
	mJumpBack anim_0649__v0_l0

anim_0649__v1_l0: @ 80F5D90
	mGetPalette 100 16 0xB0
	mGetTiles 0x1411E 16
	mAddHitbox 0 0xF8 0xF8 0x08 0x08
	mAddHitbox 1 0xF8 0xF8 0x08 0x08
	mDisplayFrame 0x2 0x4

	mGetTiles 0x1412E 16
	mDisplayFrame 0x2 0x5

	mGetTiles 0x1413E 16
	mDisplayFrame 0x2 0x6

	mGetTiles 0x1414E 16
	mDisplayFrame 0x2 0x7

anim_0649__v1_l1: @ 80F5E04
	mJumpBack anim_0649__v1_l0

anim_0649:
	.4byte anim_0649__v0_l0
	.4byte anim_0649__v1_l0


anim_0650__v0_l0: @ 80F5E14
	mGetPalette 100 16 0xB0
	mGetTiles 0x1415E 24
	mAddHitbox 0 0xF4 0xF8 0x0A 0x06
	mAddHitbox 1 0xE8 0xF6 0x00 0x0D
	mDisplayFrame 0x3 0x0

	mGetTiles 0x14176 24
	mDisplayFrame 0x3 0x1

anim_0650__v0_l1: @ 80F5E60
	mJumpBack anim_0650__v0_l0

anim_0650:
	.4byte anim_0650__v0_l0


anim_0651__v0_l0: @ 80F5E6C
	mGetPalette 100 16 0xB0
	mGetTiles 0x1418E 24
	mAddHitbox 0 0xF4 0xF8 0x0A 0x06
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0651__v1_l0: @ 80F5E9C
	mGetPalette 100 16 0xB0
	mGetTiles 0x141A6 24
	mAddHitbox 0 0xF4 0xF8 0x0A 0x06
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0651__v2_l0: @ 80F5ECC
	mGetPalette 100 16 0xB0
	mGetTiles 0x141BE 24
	mAddHitbox 0 0xF4 0xF8 0x0A 0x06
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0651__v3_l0: @ 80F5EFC
	mGetPalette 100 16 0xB0
	mGetTiles 0x141D6 24
	mAddHitbox 0 0xF4 0xF8 0x0A 0x06
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0651:
	.4byte anim_0651__v0_l0
	.4byte anim_0651__v1_l0
	.4byte anim_0651__v2_l0
	.4byte anim_0651__v3_l0


anim_0652__v0_l0: @ 80F5F3C
	mGetPalette 100 16 0xB0
	mGetTiles 0x141EE 20
	mAddHitbox 0 0xFA 0xF0 0x06 0x0E
	mDisplayFrame 0x3 0x0

	mGetTiles 0x14202 25
	mDisplayFrame 0x3 0x1

	mGetTiles 0x1421B 30
	mDisplayFrame 0x3 0x2

	mGetTiles 0x14239 30
	mDisplayFrame 0x3 0x3

	mGetTiles 0x14257 30
	mDisplayFrame 0x3 0x4

	mGetTiles 0x14275 30
	mDisplayFrame 0x3 0x5

	mGetTiles 0x14293 30
	mDisplayFrame 0x3 0x6

	mEnd 

anim_0652__v1_l0: @ 80F5FE4
	mGetPalette 100 16 0xB0
	mGetTiles 0x142B1 30
	mAddHitbox 0 0xFA 0xF0 0x06 0x0E
	mDisplayFrame 0x3 0x7

	mGetTiles 0x142CF 16
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x1 0x8

	mGetTiles 0x142DF 16
	mDisplayFrame 0x1 0x9

	mGetTiles 0x142EF 16
	mDisplayFrame 0x6 0xA

	mGetTiles 0x142DF 16
	mDisplayFrame 0x1 0x9

	mGetTiles 0x142CF 16
	mDisplayFrame 0x1 0x8

	mEnd 

anim_0652:
	.4byte anim_0652__v0_l0
	.4byte anim_0652__v1_l0


anim_0653__v0_l0: @ 80F608C
	mGetPalette 100 16 0xB0
	mGetTiles 0x142FF 15
	mAddHitbox 0 0xF5 0xFA 0x0F 0x07
	mDisplayFrame 0x2 0x0

	mGetTiles 0x1430E 15
	mDisplayFrame 0x2 0x1

anim_0653__v0_l1: @ 80F60CC
	mJumpBack anim_0653__v0_l0

anim_0653:
	.4byte anim_0653__v0_l0


anim_0654__v0_l0: @ 80F60D8
	mGetPalette 99 16 0xB0
	mGetTiles 0x1431D 16
	mAddHitbox 0 0xF8 0xFA 0x08 0x10
	mPlaySoundEffect 132
	mDisplayFrame 0x1 0x0

	mGetTiles 0x1432D 16
	mDisplayFrame 0x1 0x1

	mGetTiles 0x1433D 12
	mDisplayFrame 0x1 0x2

	mGetTiles 0x14349 16
	mDisplayFrame 0x1E 0x3

	mGetTiles 0x1432D 16
	mDisplayFrame 0x1 0x1

	mGetTiles 0x1431D 16
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0654:
	.4byte anim_0654__v0_l0


anim_0655__v0_l0: @ 80F6178
	mGetPalette 100 16 0xB0
	mGetTiles 0x14359 16
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0x4 0x0

	mGetTiles 0x14369 16
	mDisplayFrame 0x6 0x1

	mGetTiles 0x14379 24
	mDisplayFrame 0x12 0x2

	mEnd 

anim_0655__v1_l0: @ 80F61D0
	mGetPalette 100 16 0xB0
	mGetTiles 0x14391 25
	mAddHitbox 0 0xFA 0xF2 0x06 0x10
	mDisplayFrame 0xC 0x3

	mGetTiles 0x143AA 25
	mDisplayFrame 0x4 0x4

	mGetTiles 0x143C3 20
	mDisplayFrame 0x4 0x5

	mGetTiles 0x143D7 25
	mDisplayFrame 0x6 0x6

	mGetTiles 0x143F0 20
	mDisplayFrame 0xA 0x7

	mEnd 

anim_0655:
	.4byte anim_0655__v0_l0
	.4byte anim_0655__v1_l0


anim_0656__v0_l0: @ 80F6258
	mGetPalette 101 16 0xC0
	mGetTiles 0x14404 64
	mAddHitbox 0 0xEB 0xFB 0x08 0x05
	mDisplayFrame 0x2 0x0

	mGetTiles 0x14444 64
	mDisplayFrame 0x2 0x1

anim_0656__v0_l1: @ 80F6298
	mJumpBack anim_0656__v0_l0

anim_0656:
	.4byte anim_0656__v0_l0


anim_0657__v0_l0: @ 80F62A4
	mGetPalette 100 16 0xB0
	mGetTiles 0x14484 64
	mDisplayFrame 0x3 0x0

	mGetTiles 0x144C4 64
	mDisplayFrame 0x3 0x1

	mGetTiles 0x14504 64
	mDisplayFrame 0x3 0x2

	mGetTiles 0x14544 64
	mDisplayFrame 0x3 0x3

anim_0657__v0_l1: @ 80F6300
	mJumpBack anim_0657__v0_l0

anim_0657__v1_l0: @ 80F6308
	mGetPalette 100 16 0xB0
	mGetTiles 0x14584 15
	mDisplayFrame 0x3 0x4

	mGetTiles 0x14593 15
	mDisplayFrame 0x3 0x5

	mEnd 

anim_0657:
	.4byte anim_0657__v0_l0
	.4byte anim_0657__v1_l0


anim_0658__v0_l0: @ 80F6348
	mGetPalette 100 16 0xB0
	mGetTiles 0x145A2 16
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0658__v1_l0: @ 80F636C
	mGetPalette 100 16 0xB0
	mGetTiles 0x145B2 16
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0658__v2_l0: @ 80F6390
	mGetPalette 100 16 0xB0
	mGetTiles 0x145C2 16
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0658__v3_l0: @ 80F63B4
	mGetPalette 100 16 0xB0
	mGetTiles 0x145D2 16
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0658__v4_l0: @ 80F63D8
	mGetPalette 100 16 0xB0
	mGetTiles 0x145E2 16
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0658__v5_l0: @ 80F63FC
	mGetPalette 100 16 0xB0
	mGetTiles 0x145F2 16
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0658:
	.4byte anim_0658__v0_l0
	.4byte anim_0658__v1_l0
	.4byte anim_0658__v2_l0
	.4byte anim_0658__v3_l0
	.4byte anim_0658__v4_l0
	.4byte anim_0658__v5_l0


anim_0659__v0_l0: @ 80F6438
	mGetPalette 102 16 0xB0
	mGetTiles 0x14602 16
	mAddHitbox 0 0xF3 0xF3 0x0D 0x0D
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0659:
	.4byte anim_0659__v0_l0


anim_0660__v0_l0: @ 80F646C
	mGetPalette 103 16 0x80
	mGetTiles 0x14612 8
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0660__v1_l0: @ 80F6490
	mGetPalette 103 16 0x80
	mGetTiles 0x1461A 8
	mDisplayFrame 0x6 0x1

	mGetTiles 0x14622 8
	mDisplayFrame 0x6 0x2

	mGetTiles 0x1461A 8
	mDisplayFrame 0x6 0x1

	mGetTiles 0x14622 8
	mDisplayFrame 0x6 0x2

	mGetTiles 0x1461A 8
	mDisplayFrame 0x6 0x1

	mGetTiles 0x14622 8
	mDisplayFrame 0x6 0x2

	mEnd 

anim_0660__v2_l0: @ 80F6518
	mGetPalette 103 16 0x80
	mGetTiles 0x1462A 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x14632 8
	mDisplayFrame 0x3 0x4

	mGetTiles 0x1462A 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x14632 8
	mDisplayFrame 0x3 0x4

	mGetTiles 0x1462A 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x14632 8
	mDisplayFrame 0x3 0x4

	mEnd 

anim_0660__v3_l0: @ 80F65A0
	mGetPalette 103 16 0x80
	mGetTiles 0x1463A 8
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0660__v4_l0: @ 80F65C4
	mGetPalette 103 16 0x80
	mGetTiles 0x14642 8
	mDisplayFrame 0x6 0x6

	mGetTiles 0x1464A 8
	mDisplayFrame 0x6 0x7

	mGetTiles 0x14642 8
	mDisplayFrame 0x6 0x6

	mGetTiles 0x1464A 8
	mDisplayFrame 0x6 0x7

	mGetTiles 0x14642 8
	mDisplayFrame 0x6 0x6

	mGetTiles 0x1464A 8
	mDisplayFrame 0x6 0x7

	mEnd 

anim_0660__v5_l0: @ 80F664C
	mGetPalette 103 16 0x80
	mGetTiles 0x14652 8
	mDisplayFrame 0x5 0x8

	mGetTiles 0x1465A 8
	mDisplayFrame 0x3 0x9

	mGetTiles 0x14652 8
	mDisplayFrame 0x5 0x8

	mGetTiles 0x1465A 8
	mDisplayFrame 0x3 0x9

	mGetTiles 0x14652 8
	mDisplayFrame 0x5 0x8

	mGetTiles 0x1465A 8
	mDisplayFrame 0x3 0x9

	mEnd 

anim_0660:
	.4byte anim_0660__v0_l0
	.4byte anim_0660__v1_l0
	.4byte anim_0660__v2_l0
	.4byte anim_0660__v3_l0
	.4byte anim_0660__v4_l0
	.4byte anim_0660__v5_l0


anim_0661__v0_l0: @ 80F66EC
	mGetPalette 104 16 0xA0
	mGetTiles 0x14662 4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0661:
	.4byte anim_0661__v0_l0


anim_0662__v0_l0: @ 80F6714
	mGetPalette 104 16 0xA0
	mGetTiles 0x14666 48
	mAddHitbox 0 0x00 0x00 0x00 0x00
	mAddHitbox 1 0xE8 0xE8 0x18 0x18
	mDisplayFrame 0x4 0x0

	mGetTiles 0x14666 48
	mDisplayFrame 0x4 0x1

	mEnd 

anim_0662__v1_l0: @ 80F6764
	mGetPalette 104 16 0xA0
	mGetTiles 0x14696 48
	mAddHitbox 0 0x00 0x00 0x00 0x00
	mAddHitbox 1 0xE8 0xE8 0x18 0x18
	mDisplayFrame 0x4 0x2

	mGetTiles 0x14696 48
	mDisplayFrame 0x4 0x3

	mEnd 

anim_0662__v2_l0: @ 80F67B4
	mGetPalette 104 16 0xA0
	mGetTiles 0x146C6 48
	mAddHitbox 0 0xEE 0xE0 0x12 0xF4
	mAddHitbox 1 0xE8 0xE8 0x18 0x18
	mDisplayFrame 0x5 0x4

	mEnd 

anim_0662__v3_l0: @ 80F67F0
	mGetPalette 104 16 0xA0
	mGetTiles 0x146C6 48
	mAddHitbox 0 0x00 0x00 0x00 0x00
	mAddHitbox 1 0xE8 0xE8 0x18 0x18
	mDisplayFrame 0x5 0x5

	mEnd 

anim_0662:
	.4byte anim_0662__v0_l0
	.4byte anim_0662__v1_l0
	.4byte anim_0662__v2_l0
	.4byte anim_0662__v3_l0


anim_0663__v0_l0: @ 80F683C
	mGetPalette 104 16 0xA0
	mGetTiles 0x146F6 6
	mDisplayFrame 0x4 0x0

	mGetTiles 0x146FC 6
	mDisplayFrame 0x4 0x1

	mEnd 

anim_0663:
	.4byte anim_0663__v0_l0


anim_0664__v0_l0: @ 80F6878
	mGetPalette 102 16 0xB0
	mGetTiles 0x14702 4
	mAddHitbox 0 0xFD 0xFD 0x03 0x03
	mDisplayFrame 0x1 0x0

	mGetTiles 0x14706 4
	mDisplayFrame 0x1 0x1

anim_0664__v0_l1: @ 80F68B8
	mJumpBack anim_0664__v0_l0

anim_0664:
	.4byte anim_0664__v0_l0


anim_0665__v0_l0: @ 80F68C4
	mGetPalette 105 16 0xB0
	mGetTiles 0x1470A 64
	mAddHitbox 0 0xF0 0xE8 0x0C 0xFC
	mAddHitbox 1 0xF0 0xE8 0x0C 0x0C
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0665__v1_l0: @ 80F6900
	mGetPalette 105 16 0xB0
	mGetTiles 0x1474A 64
	mAddHitbox 0 0xF0 0xE8 0x0C 0xFC
	mAddHitbox 1 0xF0 0xE8 0x0C 0x0C
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0665:
	.4byte anim_0665__v0_l0
	.4byte anim_0665__v1_l0


anim_0666__v0_l0: @ 80F6944
	mGetPalette 106 16 0xA0
	mGetTiles 0x80000000 72
	mAddHitbox 0 0x00 0x00 0x00 0x00
	mAddHitbox 1 0xE8 0xE4 0x18 0x2C
	mDisplayFrame 0x4 0x0

	mGetTiles 0x80000048 72
	mDisplayFrame 0x4 0x1

anim_0666__v0_l1: @ 80F6990
	mJumpBack anim_0666__v0_l0

anim_0666:
	.4byte anim_0666__v0_l0


anim_0667__v0_l0: @ 80F699C
	mGetPalette 106 16 0xA0
	mGetTiles 0x1478A 16
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0667__v1_l0: @ 80F69C0
	mGetPalette 106 16 0xA0
	mGetTiles 0x1479A 16
	mDisplayFrame 0x1 0x1

anim_0667__v1_l1: @ 80F69E0
	mJumpBack anim_0667__v1_l0

anim_0667__v2_l0: @ 80F69E8
	mGetPalette 106 16 0xA0
	mGetTiles 0x147AA 16
	mAddHitbox 1 0xF5 0x00 0x0B 0x09
	mDisplayFrame 0x4 0x2

	mGetTiles 0x147BA 16
	mDisplayFrame 0x4 0x3

anim_0667__v2_l1: @ 80F6A28
	mJumpBack anim_0667__v2_l0

anim_0667__v3_l0: @ 80F6A30
	mGetTiles 0x147CA 16
	mAddHitbox 1 0xF2 0x00 0x07 0x09
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0667:
	.4byte anim_0667__v0_l0
	.4byte anim_0667__v1_l0
	.4byte anim_0667__v2_l0
	.4byte anim_0667__v3_l0


anim_0668__v0_l0: @ 80F6A64
	mGetPalette 106 16 0xA0
	mGetTiles 0x147DA 64
	mDisplayFrame 0x4 0x0

	mGetTiles 0x1481A 64
	mDisplayFrame 0x4 0x1

anim_0668__v0_l1: @ 80F6A98
	mJumpBack anim_0668__v0_l0

anim_0668__v1_l0: @ 80F6AA0
	mGetPalette 106 16 0xA0
	mGetTiles 0x1485A 64
	mDisplayFrame 0x4 0x2

	mGetTiles 0x1489A 64
	mDisplayFrame 0x4 0x3

anim_0668__v1_l1: @ 80F6AD4
	mJumpBack anim_0668__v1_l0

anim_0668:
	.4byte anim_0668__v0_l0
	.4byte anim_0668__v1_l0


anim_0669__v0_l0: @ 80F6AE4
	mGetPalette 106 16 0xA0
	mGetTiles 0x148DA 9
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0669:
	.4byte anim_0669__v0_l0


anim_0670__v0_l0: @ 80F6B0C
	mGetPalette 106 16 0xA0
	mGetTiles 0x148E3 3
	mAddHitbox 0 0x00 0xF8 0x08 0x08
	mAddHitbox 1 0x00 0xF8 0x08 0x08
	mDisplayFrame 0x4 0x0

	mGetTiles 0x148E6 3
	mDisplayFrame 0x4 0x1

	mEnd 

anim_0670__v1_l0: @ 80F6B5C
	mGetPalette 106 16 0xA0
	mGetTiles 0x148E9 8
	mDisplayFrame 0x4 0x2

	mGetTiles 0x148F1 8
	mDisplayFrame 0x4 0x3

anim_0670__v1_l1: @ 80F6B90
	mJumpBack anim_0670__v1_l0

anim_0670__v2_l0: @ 80F6B98
	mGetPalette 106 16 0xA0
	mGetTiles 0x148E3 3
	mAddHitbox 0 0x00 0xF8 0x08 0x08
	mAddHitbox 1 0x00 0xF8 0x08 0x08
	mDisplayFrame 0x3 0x0

	mGetTiles 0x148E6 3
	mDisplayFrame 0x3 0x1

	mGetTiles 0x148F9 6
	mDisplayFrame 0x3 0x4

	mGetTiles 0x148FF 6
	mDisplayFrame 0x3 0x5

	mGetTiles 0x14905 8
	mDisplayFrame 0x3 0x6

	mGetTiles 0x1490D 8
	mDisplayFrame 0x3 0x7

	mGetTiles 0x148F9 6
	mDisplayFrame 0x3 0x4

	mGetTiles 0x148FF 6
	mDisplayFrame 0x3 0x5

anim_0670__v2_l1: @ 80F6C5C
	mJumpBack anim_0670__v2_l0

anim_0670__v3_l0: @ 80F6C64
	mGetPalette 106 16 0xA0
	mGetTiles 0x148F9 6
	mDisplayFrame 0x4 0x4

	mGetTiles 0x148FF 6
	mDisplayFrame 0x4 0x5

	mGetTiles 0x14905 8
	mDisplayFrame 0x4 0x6

	mGetTiles 0x1490D 8
	mDisplayFrame 0x4 0x7

	mEnd 

anim_0670:
	.4byte anim_0670__v0_l0
	.4byte anim_0670__v1_l0
	.4byte anim_0670__v2_l0
	.4byte anim_0670__v3_l0


anim_0671__v0_l0: @ 80F6CD4
	mGetPalette 106 16 0xA0
	mGetTiles 0x14915 4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0671:
	.4byte anim_0671__v0_l0


anim_0672__v0_l0: @ 80F6CFC
	mGetPalette 106 16 0xC0
	mGetTiles 0x14919 4
	mAddHitbox 0 0xF9 0xF2 0x07 0x03
	mAddHitbox 1 0xF9 0xF2 0x07 0x03
	mPlaySoundEffect 162
	mDisplayFrame 0x3 0x0

	mGetTiles 0x1491D 12
	mAddHitbox 0 0xF9 0xD2 0x07 0x02
	mAddHitbox 1 0xF9 0xD2 0x07 0x02
	mDisplayFrame 0x3 0x1

	mGetTiles 0x14929 24
	mAddHitbox 0 0xF9 0xA4 0x07 0x03
	mAddHitbox 1 0xF9 0xA4 0x07 0x03
	mDisplayFrame 0x3 0x2

	mGetTiles 0x14941 24
	mAddHitbox 0 0xFA 0xA4 0x06 0xE2
	mAddHitbox 1 0xFA 0xA4 0x06 0xE2
	mDisplayFrame 0x3 0x3

	mGetTiles 0x14959 22
	mDisplayFrame 0x3 0x4

	mEnd 

anim_0672:
	.4byte anim_0672__v0_l0


anim_0673__v0_l0: @ 80F6DDC
	mGetPalette 105 16 0xB0
	mGetTiles 0x1496F 64
	mAddHitbox 0 0x00 0x00 0x00 0x00
	mAddHitbox 1 0xF9 0xF9 0x07 0x07
	mDisplayFrame 0x3 0x0

	mGetTiles 0x149AF 64
	mDisplayFrame 0x3 0x1

	mGetTiles 0x1496F 64
	mDisplayFrame 0x3 0x2

anim_0673__v0_l1: @ 80F6E3C
	mJumpBack anim_0673__v0_l0

anim_0673:
	.4byte anim_0673__v0_l0


anim_0674__v0_l0: @ 80F6E48
	mGetPalette 105 16 0xB0
	mGetTiles 0x149EF 4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0674:
	.4byte anim_0674__v0_l0


anim_0675__v0_l0: @ 80F6E70
	mGetPalette 106 16 0xC0
	mGetTiles 0x149F3 4
	mAddHitbox 0 0xFB 0xFB 0x05 0x05
	mAddHitbox 1 0xFB 0xFB 0x05 0x05
	mDisplayFrame 0x3 0x0

	mGetTiles 0x149F7 4
	mDisplayFrame 0x3 0x1

anim_0675__v0_l1: @ 80F6EBC
	mJumpBack anim_0675__v0_l0

anim_0675:
	.4byte anim_0675__v0_l0


anim_0676__v0_l0: @ 80F6EC8
	mGetPalette 107 16 0xF0
	mGetTiles 0x149FB 16
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mAddHitbox 1 0xF4 0xF4 0x0C 0x0C
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0676:
	.4byte anim_0676__v0_l0


anim_0677__v0_l0: @ 80F6F08
	mGetPalette 107 16 0xF0
	mGetTiles 0x14A0B 4
	mAddHitbox 0 0xFA 0xFA 0x06 0x06
	mAddHitbox 1 0xFA 0xFA 0x06 0x06
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0677:
	.4byte anim_0677__v0_l0


anim_0678__v0_l0: @ 80F6F48
	mGetPalette 107 16 0xF0
	mGetTiles 0x14A0F 1
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0678:
	.4byte anim_0678__v0_l0


anim_0679__v0_l0: @ 80F6F70
	mGetPalette 108 16 0xA0
	mGetTiles 0x14A10 16
	mAddHitbox 0 0xCF 0x02 0xE4 0x17
	mDisplayFrame 0x4 0x0

	mGetTiles 0x14A20 16
	mDisplayFrame 0x4 0x1

	mGetTiles 0x14A10 16
	mDisplayFrame 0x4 0x2

anim_0679__v0_l1: @ 80F6FC4
	mJumpBack anim_0679__v0_l0

anim_0679:
	.4byte anim_0679__v0_l0


anim_0680__v0_l0: @ 80F6FD0
	mGetPalette 90 16 0x80
	mGetTiles 0x14A30 8
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0680__v1_l0: @ 80F6FF4
	mGetPalette 90 16 0x80
	mGetTiles 0x14A38 8
	mDisplayFrame 0x6 0x1

	mGetTiles 0x14A40 8
	mDisplayFrame 0x6 0x2

	mGetTiles 0x14A38 8
	mDisplayFrame 0x6 0x1

	mGetTiles 0x14A40 8
	mDisplayFrame 0x6 0x2

	mGetTiles 0x14A38 8
	mDisplayFrame 0x6 0x1

	mGetTiles 0x14A40 8
	mDisplayFrame 0x6 0x2

	mEnd 

anim_0680__v2_l0: @ 80F707C
	mGetPalette 90 16 0x80
	mGetTiles 0x14A48 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x14A50 8
	mDisplayFrame 0x3 0x4

	mGetTiles 0x14A48 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x14A50 8
	mDisplayFrame 0x3 0x4

	mGetTiles 0x14A48 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x14A50 8
	mDisplayFrame 0x3 0x4

	mEnd 

anim_0680:
	.4byte anim_0680__v0_l0
	.4byte anim_0680__v1_l0
	.4byte anim_0680__v2_l0


anim_0681__v0_l0: @ 80F7110
	mGetPalette 108 16 0xA0
	mGetTiles 0x14A58 16
	mDisplayFrame 0x4 0x0

	mGetTiles 0x14A68 16
	mDisplayFrame 0x4 0x1

anim_0681__v0_l1: @ 80F7144
	mJumpBack anim_0681__v0_l0

anim_0681__v1_l0: @ 80F714C
	mGetPalette 108 16 0xA0
	mGetTiles 0x14A78 16
	mDisplayFrame 0x4 0x2

	mGetTiles 0x14A88 16
	mDisplayFrame 0x4 0x3

anim_0681__v1_l1: @ 80F7180
	mJumpBack anim_0681__v1_l0

anim_0681__v2_l0: @ 80F7188
	mGetPalette 108 16 0xA0
	mGetTiles 0x14A98 16
	mDisplayFrame 0x4 0x4

	mGetTiles 0x14AA8 16
	mDisplayFrame 0x4 0x5

anim_0681__v2_l1: @ 80F71BC
	mJumpBack anim_0681__v2_l0

anim_0681__v3_l0: @ 80F71C4
	mGetPalette 108 16 0xA0
	mGetTiles 0x14AB8 16
	mDisplayFrame 0x4 0x6

	mGetTiles 0x14AC8 16
	mDisplayFrame 0x4 0x7

anim_0681__v3_l1: @ 80F71F8
	mJumpBack anim_0681__v3_l0

anim_0681:
	.4byte anim_0681__v0_l0
	.4byte anim_0681__v1_l0
	.4byte anim_0681__v2_l0
	.4byte anim_0681__v3_l0


anim_0682__v0_l0: @ 80F7210
	mGetPalette 108 16 0xA0
	mGetTiles 0x14AD8 54
	mAddHitbox 0 0xE4 0xF2 0x1A 0x18
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0682:
	.4byte anim_0682__v0_l0


anim_0683__v0_l0: @ 80F7244
	mGetPalette 109 16 0xB0
	mGetTiles 0x14B0E 4
	mDisplayFrame 0x3 0x0

	mGetTiles 0x14B12 2
	mDisplayFrame 0x3 0x1

anim_0683__v0_l1: @ 80F7278
	mJumpBack anim_0683__v0_l0

anim_0683__v1_l0: @ 80F7280
	mGetPalette 109 16 0xB0
	mGetTiles 0x14B14 2
	mDisplayFrame 0x6 0x2

	mGetTiles 0x14B16 2
	mDisplayFrame 0x6 0x3

anim_0683__v1_l1: @ 80F72B4
	mJumpBack anim_0683__v1_l0

anim_0683__v2_l0: @ 80F72BC
	mGetPalette 109 16 0xA0
	mGetTiles 0x14B18 4
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0683:
	.4byte anim_0683__v0_l0
	.4byte anim_0683__v1_l0
	.4byte anim_0683__v2_l0


anim_0684__v0_l0: @ 80F72EC
	mGetPalette 109 16 0xB0
	mGetTiles 0x14B1C 30
	mAddHitbox 0 0xEC 0xEE 0x16 0x12
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0684:
	.4byte anim_0684__v0_l0


anim_0685__v0_l0: @ 80F7320
	mGetPalette 110 16 0x90
	mGetTiles 0x14B3A 16
	mAddHitbox 0 0xF2 0xF2 0x0E 0x0E
	mDisplayFrame 0x2 0x0

	mGetTiles 0x14B4A 16
	mDisplayFrame 0x2 0x1

anim_0685__v0_l1: @ 80F7360
	mJumpBack anim_0685__v0_l0

anim_0685:
	.4byte anim_0685__v0_l0


anim_0686__v0_l0: @ 80F736C
	mGetPalette 90 16 0x80
	mGetTiles 0x14B5A 8
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0686__v1_l0: @ 80F7390
	mGetPalette 90 16 0x80
	mGetTiles 0x14B62 8
	mDisplayFrame 0x6 0x1

	mGetTiles 0x14B6A 8
	mDisplayFrame 0x6 0x2

	mGetTiles 0x14B62 8
	mDisplayFrame 0x6 0x1

	mGetTiles 0x14B6A 8
	mDisplayFrame 0x6 0x2

	mGetTiles 0x14B62 8
	mDisplayFrame 0x6 0x1

	mGetTiles 0x14B6A 8
	mDisplayFrame 0x6 0x2

	mEnd 

anim_0686__v2_l0: @ 80F7418
	mGetPalette 90 16 0x80
	mGetTiles 0x14B72 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x14B7A 8
	mDisplayFrame 0x3 0x4

	mGetTiles 0x14B72 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x14B7A 8
	mDisplayFrame 0x3 0x4

	mGetTiles 0x14B72 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x14B7A 8
	mDisplayFrame 0x3 0x4

	mEnd 

anim_0686:
	.4byte anim_0686__v0_l0
	.4byte anim_0686__v1_l0
	.4byte anim_0686__v2_l0


anim_0687__v0_l0: @ 80F74AC
	mGetPalette 111 16 0xF0
	mGetTiles 0x14B82 42
	mAddHitbox 0 0xEE 0xE5 0x11 0xF2
	mAddHitbox 1 0xEA 0xF0 0x18 0x1F
	mDisplayFrame 0x5 0x0

	mGetTiles 0x14BAC 42
	mDisplayFrame 0x5 0x1

anim_0687__v0_l1: @ 80F74F8
	mJumpBack anim_0687__v0_l0

anim_0687:
	.4byte anim_0687__v0_l0


anim_0688__v0_l0: @ 80F7504
	mGetPalette 112 16 0xE0
	mGetTiles 0x14BD6 12
	mAddHitbox 0 0xE4 0xF4 0x1C 0x0C
	mDisplayFrame 0x4 0x0

	mGetTiles 0x14BE2 12
	mDisplayFrame 0x4 0x1

	mGetTiles 0x14BEE 12
	mDisplayFrame 0x4 0x2

	mGetTiles 0x14BFA 12
	mDisplayFrame 0x4 0x3

	mGetTiles 0x14C06 12
	mDisplayFrame 0x4 0x4

	mGetTiles 0x14C12 12
	mDisplayFrame 0x4 0x5

	mGetTiles 0x14C1E 12
	mDisplayFrame 0x4 0x6

	mGetTiles 0x14C2A 12
	mDisplayFrame 0x4 0x7

	mGetTiles 0x14C36 12
	mDisplayFrame 0x4 0x8

	mGetTiles 0x14C42 12
	mDisplayFrame 0x4 0x9

	mGetTiles 0x14C4E 12
	mDisplayFrame 0x4 0xA

	mGetTiles 0x14C5A 12
	mDisplayFrame 0x4 0xB

anim_0688__v0_l1: @ 80F760C
	mJumpBack anim_0688__v0_l0

anim_0688__v1_l0: @ 80F7614
	mGetPalette 112 16 0xE0
	mGetTiles 0x14C66 12
	mDisplayFrame 0x4 0xC

	mGetTiles 0x14C72 12
	mDisplayFrame 0x4 0xD

	mGetTiles 0x14C7E 12
	mDisplayFrame 0x4 0xE

	mGetTiles 0x14C8A 12
	mDisplayFrame 0x4 0xF

	mGetTiles 0x14C96 12
	mDisplayFrame 0x4 0x10

	mGetTiles 0x14CA2 12
	mDisplayFrame 0x4 0x11

	mGetTiles 0x14CAE 12
	mDisplayFrame 0x4 0x12

	mGetTiles 0x14CBA 12
	mDisplayFrame 0x4 0x13

	mGetTiles 0x14CC6 12
	mDisplayFrame 0x4 0x14

	mGetTiles 0x14CD2 12
	mDisplayFrame 0x4 0x15

	mGetTiles 0x14CDE 12
	mDisplayFrame 0x4 0x16

	mGetTiles 0x14CEA 12
	mDisplayFrame 0x4 0x17

anim_0688__v1_l1: @ 80F7710
	mJumpBack anim_0688__v1_l0

anim_0688__v2_l0: @ 80F7718
	mGetPalette 112 16 0xE0
	mGetTiles 0x14CF6 12
	mAddHitbox 0 0xE4 0xF4 0x1C 0x0C
	mDisplayFrame 0x4 0x18

	mEnd 

anim_0688__v3_l0: @ 80F7748
	mGetPalette 112 16 0xE0
	mGetTiles 0x14C8A 12
	mDisplayFrame 0x4 0xF

	mEnd 

anim_0688__v4_l0: @ 80F776C
	mGetPalette 112 16 0xE0
	mGetTiles 0x14D02 12
	mAddHitbox 0 0xE4 0xF4 0x1C 0x0C
	mDisplayFrame 0x4 0x19

	mEnd 

anim_0688__v5_l0: @ 80F779C
	mGetPalette 112 16 0xE0
	mGetTiles 0x14CBA 12
	mDisplayFrame 0x4 0x13

	mEnd 

anim_0688__v6_l0: @ 80F77C0
	mGetPalette 112 16 0xE0
	mGetTiles 0x14D0E 12
	mAddHitbox 0 0xE4 0xF4 0x1C 0x0C
	mDisplayFrame 0x4 0x1A

	mEnd 

anim_0688__v7_l0: @ 80F77F0
	mGetPalette 112 16 0xE0
	mGetTiles 0x14CEA 12
	mDisplayFrame 0x4 0x17

	mEnd 

anim_0688__v8_l0: @ 80F7814
	mGetPalette 112 16 0xE0
	mGetTiles 0x14C06 12
	mAddHitbox 0 0xE4 0xF4 0x1C 0x0C
	mDisplayFrame 0x4 0x4

	mGetTiles 0x14C12 12
	mDisplayFrame 0x4 0x5

	mGetTiles 0x14C1E 12
	mDisplayFrame 0x4 0x6

	mGetTiles 0x14C2A 12
	mDisplayFrame 0x4 0x7

	mEnd 

anim_0688__v9_l0: @ 80F7880
	mGetPalette 112 16 0xE0
	mGetTiles 0x14BD6 12
	mAddHitbox 0 0xE4 0xF4 0x1C 0x0C
	mDisplayFrame 0x4 0x0

	mGetTiles 0x14BE2 12
	mDisplayFrame 0x4 0x1

	mGetTiles 0x14BEE 12
	mDisplayFrame 0x4 0x2

	mGetTiles 0x14BFA 12
	mDisplayFrame 0x4 0x3

	mEnd 

anim_0688__v10_l0: @ 80F78EC
	mGetPalette 112 16 0xE0
	mGetTiles 0x14C36 12
	mAddHitbox 0 0xE4 0xF4 0x1C 0x0C
	mDisplayFrame 0x4 0x8

	mGetTiles 0x14C42 12
	mDisplayFrame 0x4 0x9

	mGetTiles 0x14C4E 12
	mDisplayFrame 0x4 0xA

	mGetTiles 0x14C5A 12
	mDisplayFrame 0x4 0xB

	mEnd 

anim_0688__v11_l0: @ 80F7958
	mGetPalette 112 16 0xE0
	mGetTiles 0x14C96 12
	mDisplayFrame 0x4 0x10

	mGetTiles 0x14CA2 12
	mDisplayFrame 0x4 0x11

	mGetTiles 0x14CAE 12
	mDisplayFrame 0x4 0x12

	mGetTiles 0x14CBA 12
	mDisplayFrame 0x4 0x13

	mEnd 

anim_0688__v12_l0: @ 80F79B8
	mGetPalette 112 16 0xE0
	mGetTiles 0x14C66 12
	mDisplayFrame 0x4 0xC

	mGetTiles 0x14C72 12
	mDisplayFrame 0x4 0xD

	mGetTiles 0x14C7E 12
	mDisplayFrame 0x4 0xE

	mGetTiles 0x14C8A 12
	mDisplayFrame 0x4 0xF

	mEnd 

anim_0688__v13_l0: @ 80F7A18
	mGetPalette 112 16 0xE0
	mGetTiles 0x14CC6 12
	mDisplayFrame 0x4 0x14

	mGetTiles 0x14CD2 12
	mDisplayFrame 0x4 0x15

	mGetTiles 0x14CDE 12
	mDisplayFrame 0x4 0x16

	mGetTiles 0x14CEA 12
	mDisplayFrame 0x4 0x17

	mEnd 

anim_0688__v14_l0: @ 80F7A78
	mGetPalette 112 16 0xE0
	mGetTiles 0x14C2A 12
	mDisplayFrame 0x4 0x7

	mEnd 

anim_0688__v15_l0: @ 80F7A9C
	mGetPalette 112 16 0xE0
	mGetTiles 0x14BFA 12
	mDisplayFrame 0x4 0x3

	mEnd 

anim_0688__v16_l0: @ 80F7AC0
	mGetPalette 112 16 0xE0
	mGetTiles 0x14C5A 12
	mDisplayFrame 0x4 0xB

	mEnd 

anim_0688__v17_l0: @ 80F7AE4
	mGetPalette 112 16 0xE0
	mGetTiles 0x14CBA 12
	mDisplayFrame 0x4 0x13

	mEnd 

anim_0688__v18_l0: @ 80F7B08
	mGetPalette 112 16 0xE0
	mGetTiles 0x14C8A 12
	mDisplayFrame 0x4 0xF

	mEnd 

anim_0688__v19_l0: @ 80F7B2C
	mGetPalette 112 16 0xE0
	mGetTiles 0x14CEA 12
	mDisplayFrame 0x4 0x17

	mEnd 

anim_0688:
	.4byte anim_0688__v0_l0
	.4byte anim_0688__v1_l0
	.4byte anim_0688__v2_l0
	.4byte anim_0688__v3_l0
	.4byte anim_0688__v4_l0
	.4byte anim_0688__v5_l0
	.4byte anim_0688__v6_l0
	.4byte anim_0688__v7_l0
	.4byte anim_0688__v8_l0
	.4byte anim_0688__v9_l0
	.4byte anim_0688__v10_l0
	.4byte anim_0688__v11_l0
	.4byte anim_0688__v12_l0
	.4byte anim_0688__v13_l0
	.4byte anim_0688__v14_l0
	.4byte anim_0688__v15_l0
	.4byte anim_0688__v16_l0
	.4byte anim_0688__v17_l0
	.4byte anim_0688__v18_l0
	.4byte anim_0688__v19_l0


anim_0689__v0_l0: @ 80F7BA0
	mGetPalette 113 16 0xE0
	mGetTiles 0x14D1A 64
	mAddHitbox 0 0xF6 0xF6 0x14 0x0A
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0689__v1_l0: @ 80F7BD0
	mGetPalette 113 16 0xE0
	mGetTiles 0x14D5A 64
	mAddHitbox 0 0xFA 0xFA 0x06 0x06
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0689__v2_l0: @ 80F7C00
	mGetPalette 113 16 0xE0
	mGetTiles 0x14D9A 64
	mDisplayFrame 0x5 0x2

	mGetTiles 0x14DDA 64
	mDisplayFrame 0x5 0x3

	mEnd 

anim_0689:
	.4byte anim_0689__v0_l0
	.4byte anim_0689__v1_l0
	.4byte anim_0689__v2_l0


anim_0690__v0_l0: @ 80F7C44
	mGetPalette 113 16 0xE0
	mGetTiles 0x14E1A 4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0690__v1_l0: @ 80F7C68
	mGetPalette 113 16 0xE0
	mGetTiles 0x14E1E 4
	mAddHitbox 0 0xF9 0xF9 0x07 0x07
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0690:
	.4byte anim_0690__v0_l0
	.4byte anim_0690__v1_l0


anim_0691__v0_l0: @ 80F7CA0
	mGetPalette 90 16 0x80
	mGetTiles 0x14E22 8
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0691__v1_l0: @ 80F7CC4
	mGetPalette 90 16 0x80
	mGetTiles 0x14E22 8
	mDisplayFrame 0xF 0x0

	mGetPalette 90 16 0x80
	mGetTiles 0x14E2A 12
	mDisplayFrame 0x4 0x1

	mGetTiles 0x14E36 12
	mDisplayFrame 0x8 0x2

	mGetTiles 0x14E2A 12
	mDisplayFrame 0x4 0x1

	mGetTiles 0x14E36 12
	mDisplayFrame 0x8 0x2

	mGetTiles 0x14E2A 12
	mDisplayFrame 0x4 0x1

	mGetTiles 0x14E36 12
	mDisplayFrame 0x8 0x2

	mGetTiles 0x14E2A 12
	mDisplayFrame 0x4 0x1

	mGetTiles 0x14E36 12
	mDisplayFrame 0x8 0x2

	mGetTiles 0x14E2A 12
	mDisplayFrame 0x4 0x1

	mGetTiles 0x14E36 12
	mDisplayFrame 0x8 0x2

	mEnd 

anim_0691__v2_l0: @ 80F7DBC
	mGetPalette 90 16 0x80
	mGetTiles 0x14E42 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x14E4A 8
	mDisplayFrame 0x3 0x4

	mGetTiles 0x14E42 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x14E4A 8
	mDisplayFrame 0x3 0x4

	mGetTiles 0x14E42 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x14E4A 8
	mDisplayFrame 0x3 0x4

	mEnd 

anim_0691__v3_l0: @ 80F7E44
	mGetPalette 90 16 0x80
	mGetTiles 0x14E52 8
	mDisplayFrame 0x6 0x5

	mGetTiles 0x14E5A 8
	mDisplayFrame 0x6 0x6

	mGetTiles 0x14E52 8
	mDisplayFrame 0x6 0x5

	mGetTiles 0x14E5A 8
	mDisplayFrame 0x6 0x6

	mGetTiles 0x14E52 8
	mDisplayFrame 0x6 0x5

	mGetTiles 0x14E5A 8
	mDisplayFrame 0x6 0x6

	mEnd 

anim_0691:
	.4byte anim_0691__v0_l0
	.4byte anim_0691__v1_l0
	.4byte anim_0691__v2_l0
	.4byte anim_0691__v3_l0


anim_0692__v0_l0: @ 80F7EDC
	mGetPalette 113 16 0xE0
	mGetTiles 0x14E62 16
	mAddHitbox 0 0xF3 0xF3 0x0D 0x0D
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0692:
	.4byte anim_0692__v0_l0


anim_0693__v0_l0: @ 80F7F10
	mGetPalette 114 16 0xC0
	mGetTiles 0x14E72 30
	mDisplayFrame 0x3 0x0

	mGetTiles 0x14E90 30
	mDisplayFrame 0x2 0x1

anim_0693__v0_l1: @ 80F7F44
	mJumpBack anim_0693__v0_l0

anim_0693__v1_l0: @ 80F7F4C
	mGetPalette 114 16 0xC0
	mGetTiles 0x14EAE 30
	mDisplayFrame 0x3 0x2

	mGetTiles 0x14ECC 30
	mDisplayFrame 0x2 0x3

	mGetTiles 0x14EAE 30
	mDisplayFrame 0x3 0x4

	mGetTiles 0x14ECC 30
	mDisplayFrame 0x2 0x5

	mEnd 

anim_0693:
	.4byte anim_0693__v0_l0
	.4byte anim_0693__v1_l0


anim_0694__v0_l0: @ 80F7FB4
	mGetPalette 90 16 0x80
	mGetTiles 0x14EEA 8
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0694__v1_l0: @ 80F7FD8
	mGetPalette 90 16 0x80
	mGetTiles 0x14EF2 8
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0694__v2_l0: @ 80F7FFC
	mGetPalette 90 16 0x80
	mGetTiles 0x14EFA 12
	mDisplayFrame 0x2D 0x2

	mGetTiles 0x14EEA 8
	mDisplayFrame 0x8 0x0

	mGetTiles 0x14F06 12
	mDisplayFrame 0x6 0x3

	mGetTiles 0x14F12 12
	mDisplayFrame 0x8 0x4

	mGetTiles 0x14F06 12
	mDisplayFrame 0x6 0x3

	mGetTiles 0x14F12 12
	mDisplayFrame 0x8 0x4

	mGetTiles 0x14F06 12
	mDisplayFrame 0x6 0x3

	mGetTiles 0x14F12 12
	mDisplayFrame 0x8 0x4

	mEnd 

anim_0694__v3_l0: @ 80F80AC
	mGetPalette 90 16 0x80
	mGetTiles 0x14F1E 12
	mDisplayFrame 0x7 0x5

	mGetTiles 0x14F12 12
	mDisplayFrame 0x6 0x4

anim_0694__v3_l1: @ 80F80E0
	mJumpBack anim_0694__v3_l0

anim_0694__v4_l0: @ 80F80E8
	mGetPalette 90 16 0x80
	mGetTiles 0x14F2A 12
	mDisplayFrame 0x7 0x6

	mGetTiles 0x14F36 12
	mDisplayFrame 0x7 0x7

anim_0694__v4_l1: @ 80F811C
	mJumpBack anim_0694__v4_l0

anim_0694__v5_l0: @ 80F8124
	mGetPalette 90 16 0x80
	mGetTiles 0x14F42 12
	mDisplayFrame 0x7 0x8

	mGetTiles 0x14F4E 12
	mDisplayFrame 0x7 0x9

anim_0694__v5_l1: @ 80F8158
	mJumpBack anim_0694__v5_l0

anim_0694__v6_l0: @ 80F8160
	mGetPalette 90 16 0x80
	mGetTiles 0x14F5A 8
	mDisplayFrame 0x6 0xA

	mGetTiles 0x14F62 12
	mDisplayFrame 0x5 0xB

anim_0694__v6_l1: @ 80F8194
	mJumpBack anim_0694__v6_l0

anim_0694__v7_l0: @ 80F819C
	mGetPalette 90 16 0x80
	mGetTiles 0x14F6E 8
	mDisplayFrame 0x5 0xC

	mGetTiles 0x14F76 12
	mDisplayFrame 0x6 0xD

	mEnd 

anim_0694__v8_l0: @ 80F81D4
	mGetPalette 90 16 0x80
	mGetTiles 0x14F82 8
	mDisplayFrame 0x6 0xE

	mGetTiles 0x14F8A 12
	mDisplayFrame 0x5 0xF

anim_0694__v8_l1: @ 80F8208
	mJumpBack anim_0694__v8_l0

anim_0694__v9_l0: @ 80F8210
	mGetPalette 90 16 0x80
	mGetTiles 0x14EF2 8
	mDisplayFrame 0x5 0x1

	mGetTiles 0x14F96 8
	mDisplayFrame 0x5 0x10

	mEnd 

anim_0694:
	.4byte anim_0694__v0_l0
	.4byte anim_0694__v1_l0
	.4byte anim_0694__v2_l0
	.4byte anim_0694__v3_l0
	.4byte anim_0694__v4_l0
	.4byte anim_0694__v5_l0
	.4byte anim_0694__v6_l0
	.4byte anim_0694__v7_l0
	.4byte anim_0694__v8_l0
	.4byte anim_0694__v9_l0


anim_0695__v0_l0: @ 80F8270
	mGetPalette 115 16 0xD0
	mGetTiles 0x14F9E 4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0695__v1_l0: @ 80F8294
	mGetPalette 115 16 0xD0
	mGetTiles 0x14FA2 4
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0695:
	.4byte anim_0695__v0_l0
	.4byte anim_0695__v1_l0


anim_0696__v0_l0: @ 80F82C0
	mGetPalette 115 16 0xD0
	mGetTiles 0x14FA6 16
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0696__v1_l0: @ 80F82E4
	mGetPalette 115 16 0xD0
	mGetTiles 0x14FB6 12
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0696:
	.4byte anim_0696__v0_l0
	.4byte anim_0696__v1_l0


anim_0697__v0_l0: @ 80F8310
	mGetPalette 115 16 0xD0
	mGetTiles 0x14FC2 1
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0697__v1_l0: @ 80F8334
	mGetPalette 115 16 0xD0
	mGetTiles 0x14FC3 1
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0697:
	.4byte anim_0697__v0_l0
	.4byte anim_0697__v1_l0


anim_0698__v0_l0: @ 80F8360
	mGetPalette 116 16 0xC0
	mGetTiles 0x14FC4 8
	mDisplayFrame 0x4 0x0

	mSetIdAndVariant 698 1
anim_0698__v1_l0: @ 80F8388
	mGetPalette 116 16 0xC0
	mGetTiles 0x14FCC 16
	mDisplayFrame 0x4 0x1

	mGetTiles 0x14FDC 16
	mDisplayFrame 0x4 0x2

anim_0698__v1_l1: @ 80F83BC
	mJumpBack anim_0698__v1_l0

anim_0698__v2_l0: @ 80F83C4
	mGetPalette 116 16 0xC0
	mGetTiles 0x14FEC 12
	mDisplayFrame 0x4 0x3

	mEnd 

anim_0698:
	.4byte anim_0698__v0_l0
	.4byte anim_0698__v1_l0
	.4byte anim_0698__v2_l0


anim_0699__v0_l0: @ 80F83F4
	mGetPalette 116 16 0xC0
	mGetTiles 0x14FF8 12
	mDisplayFrame 0x5 0x0

	mGetTiles 0x15004 12
	mDisplayFrame 0x5 0x1

	mGetTiles 0x15010 12
	mDisplayFrame 0x5 0x2

	mGetTiles 0x1501C 12
	mDisplayFrame 0x5 0x3

	mGetTiles 0x15010 12
	mDisplayFrame 0x5 0x2

	mGetTiles 0x15004 12
	mDisplayFrame 0x5 0x1

anim_0699__v0_l1: @ 80F8478
	mJumpBack anim_0699__v0_l0

anim_0699:
	.4byte anim_0699__v0_l0


anim_0700__v0_l0: @ 80F8484
	mGetPalette 116 16 0xC0
	mGetTiles 0x15028 8
	mDisplayFrame 0x1 0x0

	mGetTiles 0x15028 8
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0700:
	.4byte anim_0700__v0_l0


anim_0701__v0_l0: @ 80F84C0
	mGetPalette 116 16 0xC0
	mGetTiles 0x15030 8
	mDisplayFrame 0x1 0x0

	mGetTiles 0x15038 8
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0701:
	.4byte anim_0701__v0_l0


anim_0702__v0_l0: @ 80F84FC
	mGetPalette 116 16 0xC0
	mGetTiles 0x15040 8
	mDisplayFrame 0x5 0x0

	mGetTiles 0x15048 8
	mDisplayFrame 0x5 0x1

	mGetTiles 0x15050 8
	mDisplayFrame 0x5 0x2

	mGetTiles 0x15048 8
	mDisplayFrame 0x5 0x1

	mGetTiles 0x15040 8
	mDisplayFrame 0x5 0x0

	mGetTiles 0x15058 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x15060 8
	mDisplayFrame 0x5 0x4

	mGetTiles 0x15058 8
	mDisplayFrame 0x5 0x3

	mGetTiles 0x15040 8
	mDisplayFrame 0x5 0x0

	mGetTiles 0x15048 8
	mDisplayFrame 0x5 0x1

	mGetTiles 0x15050 8
	mDisplayFrame 0x5 0x2

	mGetTiles 0x15048 8
	mDisplayFrame 0x5 0x1

	mGetTiles 0x15040 8
	mDisplayFrame 0x5 0x0

	mGetTiles 0x15048 8
	mDisplayFrame 0x5 0x1

	mGetTiles 0x15050 8
	mDisplayFrame 0x5 0x2

	mGetTiles 0x15048 8
	mDisplayFrame 0x5 0x1

anim_0702__v0_l1: @ 80F8648
	mJumpBack anim_0702__v0_l0

anim_0702:
	.4byte anim_0702__v0_l0


anim_0703__v0_l0: @ 80F8654
	mGetPalette 116 16 0xC0
	mGetTiles 0x15068 8
	mDisplayFrame 0xC 0x0

	mGetTiles 0x15070 8
	mDisplayFrame 0xC 0x1

	mGetTiles 0x15078 12
	mDisplayFrame 0xC 0x2

	mGetTiles 0x15084 8
	mDisplayFrame 0xC 0x3

	mGetTiles 0x1508C 8
	mDisplayFrame 0xC 0x4

	mGetTiles 0x15084 8
	mDisplayFrame 0xC 0x3

	mGetTiles 0x15078 12
	mDisplayFrame 0xC 0x2

	mGetTiles 0x15070 8
	mDisplayFrame 0xC 0x1

anim_0703__v0_l1: @ 80F8700
	mJumpBack anim_0703__v0_l0

anim_0703:
	.4byte anim_0703__v0_l0


anim_0704__v0_l0: @ 80F870C
	mGetPalette 116 16 0xC0
	mGetTiles 0x15094 12
	mAddHitbox 0 0xF8 0xFB 0x08 0x0F
	mDisplayFrame 0x2D 0x0

	mGetTiles 0x150A0 12
	mDisplayFrame 0x6 0x1

	mGetTiles 0x150AC 12
	mDisplayFrame 0x8 0x2

	mGetTiles 0x150B8 12
	mDisplayFrame 0x8 0x3

	mGetTiles 0x150C4 12
	mDisplayFrame 0x8 0x4

	mGetTiles 0x150B8 12
	mDisplayFrame 0x8 0x3

	mGetTiles 0x150C4 12
	mDisplayFrame 0x8 0x4

	mGetTiles 0x150B8 12
	mDisplayFrame 0x8 0x3

	mGetTiles 0x150C4 12
	mDisplayFrame 0x8 0x4

	mGetTiles 0x150B8 12
	mDisplayFrame 0x8 0x3

	mGetTiles 0x150C4 12
	mDisplayFrame 0x8 0x4

	mGetTiles 0x150AC 12
	mDisplayFrame 0x6 0x2

	mGetTiles 0x150A0 12
	mDisplayFrame 0x5 0x1

anim_0704__v0_l1: @ 80F8828
	mJumpBack anim_0704__v0_l0

anim_0704:
	.4byte anim_0704__v0_l0


anim_0705__v0_l0: @ 80F8834
	mGetTiles 0x150D0 16
	mGetPalette 33 16 0x70
	mAddHitbox 0 0xF3 0xE8 0x0D 0x04
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0705:
	.4byte anim_0705__v0_l0


anim_0706__v0_l0: @ 80F8868
	mGetPalette 0 16 0x0
	mGetTiles 0x150E0 4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0706__v1_l0: @ 80F888C
	mGetPalette 2 16 0x10
	mGetTiles 0x150E4 4
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0706__v2_l0: @ 80F88B0
	mGetPalette 5 16 0x20
	mGetTiles 0x150E8 4
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0706__v3_l0: @ 80F88D4
	mGetPalette 7 16 0x30
	mGetTiles 0x150EC 4
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0706__v4_l0: @ 80F88F8
	mGetPalette 1 16 0x50
	mGetTiles 0x150F0 4
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0706__v5_l0: @ 80F891C
	mGetPalette 117 16 0xA0
	mGetTiles 0x150F4 4
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0706__v6_l0: @ 80F8940
	mGetPalette 117 16 0xA0
	mGetTiles 0x150F8 4
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0706__v7_l0: @ 80F8964
	mGetPalette 117 16 0xA0
	mGetTiles 0x150FC 4
	mDisplayFrame 0x1 0x7

	mEnd 

anim_0706__v8_l0: @ 80F8988
	mGetPalette 68 16 0x60
	mGetTiles 0x15100 4
	mDisplayFrame 0x1 0x8

	mEnd 

anim_0706__v9_l0: @ 80F89AC
	mGetPalette 68 16 0x60
	mGetTiles 0x15104 4
	mDisplayFrame 0x1 0x9

	mEnd 

anim_0706__v10_l0: @ 80F89D0
	mGetPalette 68 16 0x60
	mGetTiles 0x15108 4
	mDisplayFrame 0x1 0xA

	mEnd 

anim_0706__v11_l0: @ 80F89F4
	mGetPalette 68 16 0x60
	mGetTiles 0x1510C 4
	mDisplayFrame 0x1 0xB

	mEnd 

anim_0706__v12_l0: @ 80F8A18
	mGetPalette 117 16 0xA0
	mGetTiles 0x15110 4
	mDisplayFrame 0x1 0xC

	mEnd 

anim_0706__v13_l0: @ 80F8A3C
	mGetPalette 117 16 0xA0
	mGetTiles 0x15114 4
	mDisplayFrame 0x1 0xD

	mEnd 

anim_0706__v14_l0: @ 80F8A60
	mGetPalette 117 16 0xA0
	mGetTiles 0x15118 4
	mDisplayFrame 0x1 0xE

	mEnd 

anim_0706__v15_l0: @ 80F8A84
	mGetPalette 1 16 0x50
	mGetTiles 0x1511C 4
	mDisplayFrame 0x1 0xF

	mEnd 

anim_0706__v16_l0: @ 80F8AA8
	mGetPalette 117 16 0xA0
	mGetTiles 0x15120 4
	mDisplayFrame 0x1 0x10

	mEnd 

anim_0706:
	.4byte anim_0706__v0_l0
	.4byte anim_0706__v1_l0
	.4byte anim_0706__v2_l0
	.4byte anim_0706__v3_l0
	.4byte anim_0706__v4_l0
	.4byte anim_0706__v5_l0
	.4byte anim_0706__v6_l0
	.4byte anim_0706__v7_l0
	.4byte anim_0706__v8_l0
	.4byte anim_0706__v9_l0
	.4byte anim_0706__v10_l0
	.4byte anim_0706__v11_l0
	.4byte anim_0706__v12_l0
	.4byte anim_0706__v13_l0
	.4byte anim_0706__v14_l0
	.4byte anim_0706__v15_l0
	.4byte anim_0706__v16_l0


anim_0707__v0_l0: @ 80F8B10
	mGetTiles 0x15124 16
anim_0707__v0_l1: @ 80F8B1C
	mGetPalette 68 16 0x60
	mDisplayFrame 0x8 0x0

	mDisplayFrame 0x8 0x1

	mDisplayFrame 0x8 0x2

	mDisplayFrame 0x8 0x3

anim_0707__v0_l2: @ 80F8B48
	mJumpBack anim_0707__v0_l1

anim_0707:
	.4byte anim_0707__v0_l0


anim_0708__v0_l0: @ 80F8B54
	mGetTiles 0x15134 16
	mGetPalette 68 16 0x60
	mPlaySoundEffect 117
	mDisplayFrame 0x8 0x0

	mDisplayFrame 0x8 0x1

	mDisplayFrame 0x8 0x2

	mDisplayFrame 0x8 0x3

	mEnd 

anim_0708:
	.4byte anim_0708__v0_l0


anim_0709__v0_l0: @ 80F8B9C
	mGetPalette 68 16 0x60
	mGetTiles 0x15144 2
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0709__v1_l0: @ 80F8BC0
	mGetPalette 68 16 0x60
	mGetTiles 0x15146 2
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0709__v2_l0: @ 80F8BE4
	mGetPalette 68 16 0x60
	mGetTiles 0x15148 2
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0709__v3_l0: @ 80F8C08
	mGetPalette 68 16 0x60
	mGetTiles 0x1514A 2
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0709__v4_l0: @ 80F8C2C
	mGetPalette 68 16 0x60
	mGetTiles 0x1514C 2
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0709:
	.4byte anim_0709__v0_l0
	.4byte anim_0709__v1_l0
	.4byte anim_0709__v2_l0
	.4byte anim_0709__v3_l0
	.4byte anim_0709__v4_l0


anim_0710__v0_l0: @ 80F8C64
	mGetPalette 118 16 0x0
	mDisplayFrame 0x15 0xFFFFFFFF

	mGetTiles 0x1514E 4
	mDisplayFrame 0x2 0x0

	mGetTiles 0x15152 4
	mDisplayFrame 0x14 0x1

anim_0710__v0_l1: @ 80F8CA0
	mGetTiles 0x15156 4
	mDisplayFrame 0x6 0x2

	mGetTiles 0x1515A 4
	mDisplayFrame 0x6 0x3

	mGetTiles 0x1515E 4
	mDisplayFrame 0x6 0x4

	mGetTiles 0x15162 4
	mDisplayFrame 0x3 0x5

	mGetTiles 0x15166 4
	mDisplayFrame 0x3 0x6

	mGetTiles 0x1516A 4
	mDisplayFrame 0x3 0x7

	mGetTiles 0x1516E 4
	mDisplayFrame 0x3 0x8

	mGetTiles 0x15172 4
	mDisplayFrame 0x3 0x9

	mGetTiles 0x1515A 4
	mDisplayFrame 0x3 0x3

anim_0710__v0_l2: @ 80F8D54
	mJumpBack anim_0710__v0_l1

anim_0710__v1_l0: @ 80F8D5C
	mGetPalette 119 16 0x0
	mDisplayFrame 0x15 0xFFFFFFFF

	mGetTiles 0x1514E 4
	mDisplayFrame 0x2 0x0

	mGetTiles 0x15152 4
	mDisplayFrame 0x14 0x1

anim_0710__v1_l1: @ 80F8D98
	mGetTiles 0x15156 4
	mDisplayFrame 0x6 0x2

	mGetTiles 0x1515A 4
	mDisplayFrame 0x6 0x3

	mGetTiles 0x1515E 4
	mDisplayFrame 0x6 0x4

	mGetTiles 0x15162 4
	mDisplayFrame 0x3 0x5

	mGetTiles 0x15166 4
	mDisplayFrame 0x3 0x6

	mGetTiles 0x1516A 4
	mDisplayFrame 0x3 0x7

	mGetTiles 0x1516E 4
	mDisplayFrame 0x3 0x8

	mGetTiles 0x15172 4
	mDisplayFrame 0x3 0x9

	mGetTiles 0x1515A 4
	mDisplayFrame 0x3 0x3

anim_0710__v1_l2: @ 80F8E4C
	mJumpBack anim_0710__v1_l1

anim_0710__v2_l0: @ 80F8E54
	mGetPalette 120 16 0x0
	mDisplayFrame 0x15 0xFFFFFFFF

	mGetTiles 0x1514E 4
	mDisplayFrame 0x2 0x0

	mGetTiles 0x15152 4
	mDisplayFrame 0x14 0x1

anim_0710__v2_l1: @ 80F8E90
	mGetTiles 0x15156 4
	mDisplayFrame 0x6 0x2

	mGetTiles 0x1515A 4
	mDisplayFrame 0x6 0x3

	mGetTiles 0x1515E 4
	mDisplayFrame 0x6 0x4

	mGetTiles 0x15162 4
	mDisplayFrame 0x3 0x5

	mGetTiles 0x15166 4
	mDisplayFrame 0x3 0x6

	mGetTiles 0x1516A 4
	mDisplayFrame 0x3 0x7

	mGetTiles 0x1516E 4
	mDisplayFrame 0x3 0x8

	mGetTiles 0x15172 4
	mDisplayFrame 0x3 0x9

	mGetTiles 0x1515A 4
	mDisplayFrame 0x3 0x3

anim_0710__v2_l2: @ 80F8F44
	mJumpBack anim_0710__v2_l1

anim_0710__v3_l0: @ 80F8F4C
	mGetPalette 121 16 0x0
	mDisplayFrame 0x15 0xFFFFFFFF

	mGetTiles 0x1514E 4
	mDisplayFrame 0x2 0x0

	mGetTiles 0x15152 4
	mDisplayFrame 0x14 0x1

anim_0710__v3_l1: @ 80F8F88
	mGetTiles 0x15156 4
	mDisplayFrame 0x6 0x2

	mGetTiles 0x1515A 4
	mDisplayFrame 0x6 0x3

	mGetTiles 0x1515E 4
	mDisplayFrame 0x6 0x4

	mGetTiles 0x15162 4
	mDisplayFrame 0x3 0x5

	mGetTiles 0x15166 4
	mDisplayFrame 0x3 0x6

	mGetTiles 0x1516A 4
	mDisplayFrame 0x3 0x7

	mGetTiles 0x1516E 4
	mDisplayFrame 0x3 0x8

	mGetTiles 0x15172 4
	mDisplayFrame 0x3 0x9

	mGetTiles 0x1515A 4
	mDisplayFrame 0x3 0x3

anim_0710__v3_l2: @ 80F903C
	mJumpBack anim_0710__v3_l1

anim_0710__v4_l0: @ 80F9044
	mGetPalette 122 16 0x0
	mDisplayFrame 0x15 0xFFFFFFFF

	mGetTiles 0x1514E 4
	mDisplayFrame 0x2 0x0

	mGetTiles 0x15152 4
	mDisplayFrame 0x14 0x1

anim_0710__v4_l1: @ 80F9080
	mGetTiles 0x15156 4
	mDisplayFrame 0x6 0x2

	mGetTiles 0x1515A 4
	mDisplayFrame 0x6 0x3

	mGetTiles 0x1515E 4
	mDisplayFrame 0x6 0x4

	mGetTiles 0x15162 4
	mDisplayFrame 0x3 0x5

	mGetTiles 0x15166 4
	mDisplayFrame 0x3 0x6

	mGetTiles 0x1516A 4
	mDisplayFrame 0x3 0x7

	mGetTiles 0x1516E 4
	mDisplayFrame 0x3 0x8

	mGetTiles 0x15172 4
	mDisplayFrame 0x3 0x9

	mGetTiles 0x1515A 4
	mDisplayFrame 0x3 0x3

anim_0710__v4_l2: @ 80F9134
	mJumpBack anim_0710__v4_l1

anim_0710__v5_l0: @ 80F913C
	mGetPalette 123 16 0x0
	mDisplayFrame 0x15 0xFFFFFFFF

	mGetTiles 0x1514E 4
	mDisplayFrame 0x2 0x0

	mGetTiles 0x15152 4
	mDisplayFrame 0x14 0x1

anim_0710__v5_l1: @ 80F9178
	mGetTiles 0x15156 4
	mDisplayFrame 0x6 0x2

	mGetTiles 0x1515A 4
	mDisplayFrame 0x6 0x3

	mGetTiles 0x1515E 4
	mDisplayFrame 0x6 0x4

	mGetTiles 0x15162 4
	mDisplayFrame 0x3 0x5

	mGetTiles 0x15166 4
	mDisplayFrame 0x3 0x6

	mGetTiles 0x1516A 4
	mDisplayFrame 0x3 0x7

	mGetTiles 0x1516E 4
	mDisplayFrame 0x3 0x8

	mGetTiles 0x15172 4
	mDisplayFrame 0x3 0x9

	mGetTiles 0x1515A 4
	mDisplayFrame 0x3 0x3

anim_0710__v5_l2: @ 80F922C
	mJumpBack anim_0710__v5_l1

anim_0710__v6_l0: @ 80F9234
	mGetPalette 124 16 0x0
	mDisplayFrame 0x15 0xFFFFFFFF

	mGetTiles 0x1514E 4
	mDisplayFrame 0x2 0x0

	mGetTiles 0x15152 4
	mDisplayFrame 0x14 0x1

anim_0710__v6_l1: @ 80F9270
	mGetTiles 0x15156 4
	mDisplayFrame 0x6 0x2

	mGetTiles 0x1515A 4
	mDisplayFrame 0x6 0x3

	mGetTiles 0x1515E 4
	mDisplayFrame 0x6 0x4

	mGetTiles 0x15162 4
	mDisplayFrame 0x3 0x5

	mGetTiles 0x15166 4
	mDisplayFrame 0x3 0x6

	mGetTiles 0x1516A 4
	mDisplayFrame 0x3 0x7

	mGetTiles 0x1516E 4
	mDisplayFrame 0x3 0x8

	mGetTiles 0x15172 4
	mDisplayFrame 0x3 0x9

	mGetTiles 0x1515A 4
	mDisplayFrame 0x3 0x3

anim_0710__v6_l2: @ 80F9324
	mJumpBack anim_0710__v6_l1

anim_0710:
	.4byte anim_0710__v0_l0
	.4byte anim_0710__v1_l0
	.4byte anim_0710__v2_l0
	.4byte anim_0710__v3_l0
	.4byte anim_0710__v4_l0
	.4byte anim_0710__v5_l0
	.4byte anim_0710__v6_l0


anim_0711__v0_l0: @ 80F9348
	mGetPalette 118 16 0x0
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetTiles 0x15176 2
	mDisplayFrame 0x3 0x0

anim_0711__v0_l1: @ 80F9370
	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

anim_0711__v0_l2: @ 80F94B0
	mJumpBack anim_0711__v0_l1

anim_0711__v1_l0: @ 80F94B8
	mGetPalette 119 16 0x0
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetTiles 0x15176 2
	mDisplayFrame 0x3 0x0

anim_0711__v1_l1: @ 80F94E0
	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

anim_0711__v1_l2: @ 80F9620
	mJumpBack anim_0711__v1_l1

anim_0711__v2_l0: @ 80F9628
	mGetPalette 120 16 0x0
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetTiles 0x15176 2
	mDisplayFrame 0x0 0x0

anim_0711__v2_l1: @ 80F9650
	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

anim_0711__v2_l2: @ 80F9790
	mJumpBack anim_0711__v2_l1

anim_0711__v3_l0: @ 80F9798
	mGetPalette 121 16 0x0
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetTiles 0x15176 2
	mDisplayFrame 0x3 0x0

anim_0711__v3_l1: @ 80F97C0
	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

anim_0711__v3_l2: @ 80F9900
	mJumpBack anim_0711__v3_l1

anim_0711__v4_l0: @ 80F9908
	mGetPalette 122 16 0x0
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetTiles 0x15176 2
	mDisplayFrame 0x3 0x0

anim_0711__v4_l1: @ 80F9930
	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

anim_0711__v4_l2: @ 80F9A70
	mJumpBack anim_0711__v4_l1

anim_0711__v5_l0: @ 80F9A78
	mGetPalette 123 16 0x0
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetTiles 0x15176 2
	mDisplayFrame 0x3 0x0

anim_0711__v5_l1: @ 80F9AA0
	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

anim_0711__v5_l2: @ 80F9BE0
	mJumpBack anim_0711__v5_l1

anim_0711__v6_l0: @ 80F9BE8
	mGetPalette 124 16 0x0
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetTiles 0x15176 2
	mDisplayFrame 0x3 0x0

anim_0711__v6_l1: @ 80F9C10
	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

	mGetTiles 0x15178 4
	mDisplayFrame 0x6 0x1

anim_0711__v6_l2: @ 80F9D50
	mJumpBack anim_0711__v6_l1

anim_0711:
	.4byte anim_0711__v0_l0
	.4byte anim_0711__v1_l0
	.4byte anim_0711__v2_l0
	.4byte anim_0711__v3_l0
	.4byte anim_0711__v4_l0
	.4byte anim_0711__v5_l0
	.4byte anim_0711__v6_l0


anim_0712__v0_l0: @ 80F9D74
	mGetPalette 118 16 0x0
	mDisplayFrame 0x22 0xFFFFFFFF

	mGetTiles 0x1517C 4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0712__v1_l0: @ 80F9DA0
	mGetPalette 119 16 0x0
	mDisplayFrame 0x22 0xFFFFFFFF

	mGetTiles 0x1517C 4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0712__v2_l0: @ 80F9DCC
	mGetPalette 120 16 0x0
	mDisplayFrame 0x22 0xFFFFFFFF

	mGetTiles 0x1517C 4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0712__v3_l0: @ 80F9DF8
	mGetPalette 121 16 0x0
	mDisplayFrame 0x22 0xFFFFFFFF

	mGetTiles 0x1517C 4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0712__v4_l0: @ 80F9E24
	mGetPalette 122 16 0x0
	mDisplayFrame 0x22 0xFFFFFFFF

	mGetTiles 0x1517C 4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0712__v5_l0: @ 80F9E50
	mGetPalette 123 16 0x0
	mDisplayFrame 0x22 0xFFFFFFFF

	mGetTiles 0x1517C 4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0712__v6_l0: @ 80F9E7C
	mGetPalette 124 16 0x0
	mDisplayFrame 0x22 0xFFFFFFFF

	mGetTiles 0x1517C 4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0712:
	.4byte anim_0712__v0_l0
	.4byte anim_0712__v1_l0
	.4byte anim_0712__v2_l0
	.4byte anim_0712__v3_l0
	.4byte anim_0712__v4_l0
	.4byte anim_0712__v5_l0
	.4byte anim_0712__v6_l0


anim_0713__v0_l0: @ 80F9EC4
	mGetPalette 118 16 0x0
	mDisplayFrame 0x1E 0xFFFFFFFF

	mGetTiles 0x15180 2
	mDisplayFrame 0x3 0x0

	mGetTiles 0x15182 4
	mDisplayFrame 0x3 0x1

	mGetTiles 0x15186 2
	mDisplayFrame 0x3 0x2

anim_0713__v0_l1: @ 80F9F14
	mGetTiles 0x15188 4
	mDisplayFrame 0x19 0x3

	mGetTiles 0x15188 4
	mDisplayFrame 0x6 0x3

	mGetTiles 0x15188 4
	mDisplayFrame 0x6 0x3

	mGetTiles 0x15188 4
	mDisplayFrame 0x6 0x3

anim_0713__v0_l2: @ 80F9F64
	mJumpBack anim_0713__v0_l1

anim_0713__v1_l0: @ 80F9F6C
	mGetPalette 119 16 0x0
	mDisplayFrame 0x1E 0xFFFFFFFF

	mGetTiles 0x15180 2
	mDisplayFrame 0x3 0x0

	mGetTiles 0x15182 4
	mDisplayFrame 0x3 0x1

	mGetTiles 0x15186 2
	mDisplayFrame 0x3 0x2

anim_0713__v1_l1: @ 80F9FBC
	mGetTiles 0x15188 4
	mDisplayFrame 0x19 0x3

	mGetTiles 0x15188 4
	mDisplayFrame 0x6 0x3

	mGetTiles 0x15188 4
	mDisplayFrame 0x6 0x3

	mGetTiles 0x15188 4
	mDisplayFrame 0x6 0x3

anim_0713__v1_l2: @ 80FA00C
	mJumpBack anim_0713__v1_l1

anim_0713__v2_l0: @ 80FA014
	mGetPalette 120 16 0x0
	mDisplayFrame 0x1E 0xFFFFFFFF

	mGetTiles 0x15180 2
	mDisplayFrame 0x3 0x0

	mGetTiles 0x15182 4
	mDisplayFrame 0x3 0x1

	mGetTiles 0x15186 2
	mDisplayFrame 0x3 0x2

anim_0713__v2_l1: @ 80FA064
	mGetTiles 0x15188 4
	mDisplayFrame 0x19 0x3

	mGetTiles 0x15188 4
	mDisplayFrame 0x6 0x3

	mGetTiles 0x15188 4
	mDisplayFrame 0x6 0x3

	mGetTiles 0x15188 4
	mDisplayFrame 0x6 0x3

anim_0713__v2_l2: @ 80FA0B4
	mJumpBack anim_0713__v2_l1

anim_0713__v3_l0: @ 80FA0BC
	mGetPalette 121 16 0x0
	mDisplayFrame 0x1E 0xFFFFFFFF

	mGetTiles 0x15180 2
	mDisplayFrame 0x3 0x0

	mGetTiles 0x15182 4
	mDisplayFrame 0x3 0x1

	mGetTiles 0x15186 2
	mDisplayFrame 0x3 0x2

anim_0713__v3_l1: @ 80FA10C
	mGetTiles 0x15188 4
	mDisplayFrame 0x19 0x3

	mGetTiles 0x15188 4
	mDisplayFrame 0x6 0x3

	mGetTiles 0x15188 4
	mDisplayFrame 0x6 0x3

	mGetTiles 0x15188 4
	mDisplayFrame 0x6 0x3

anim_0713__v3_l2: @ 80FA15C
	mJumpBack anim_0713__v3_l1

anim_0713__v4_l0: @ 80FA164
	mGetPalette 122 16 0x0
	mDisplayFrame 0x1E 0xFFFFFFFF

	mGetTiles 0x15180 2
	mDisplayFrame 0x3 0x0

	mGetTiles 0x15182 4
	mDisplayFrame 0x3 0x1

	mGetTiles 0x15186 2
	mDisplayFrame 0x3 0x2

anim_0713__v4_l1: @ 80FA1B4
	mGetTiles 0x15188 4
	mDisplayFrame 0x19 0x3

	mGetTiles 0x15188 4
	mDisplayFrame 0x6 0x3

	mGetTiles 0x15188 4
	mDisplayFrame 0x6 0x3

	mGetTiles 0x15188 4
	mDisplayFrame 0x6 0x3

anim_0713__v4_l2: @ 80FA204
	mJumpBack anim_0713__v4_l1

anim_0713__v5_l0: @ 80FA20C
	mGetPalette 123 16 0x0
	mDisplayFrame 0x1E 0xFFFFFFFF

	mGetTiles 0x15180 2
	mDisplayFrame 0x3 0x0

	mGetTiles 0x15182 4
	mDisplayFrame 0x3 0x1

	mGetTiles 0x15186 2
	mDisplayFrame 0x3 0x2

anim_0713__v5_l1: @ 80FA25C
	mGetTiles 0x15188 4
	mDisplayFrame 0x19 0x3

	mGetTiles 0x15188 4
	mDisplayFrame 0x6 0x3

	mGetTiles 0x15188 4
	mDisplayFrame 0x6 0x3

	mGetTiles 0x15188 4
	mDisplayFrame 0x6 0x3

anim_0713__v5_l2: @ 80FA2AC
	mJumpBack anim_0713__v5_l1

anim_0713__v6_l0: @ 80FA2B4
	mGetPalette 124 16 0x0
	mDisplayFrame 0x1E 0xFFFFFFFF

	mGetTiles 0x15180 2
	mDisplayFrame 0x3 0x0

	mGetTiles 0x15182 4
	mDisplayFrame 0x3 0x1

	mGetTiles 0x15186 2
	mDisplayFrame 0x3 0x2

anim_0713__v6_l1: @ 80FA304
	mGetTiles 0x15188 4
	mDisplayFrame 0x19 0x3

	mGetTiles 0x15188 4
	mDisplayFrame 0x6 0x3

	mGetTiles 0x15188 4
	mDisplayFrame 0x6 0x3

	mGetTiles 0x15188 4
	mDisplayFrame 0x6 0x3

anim_0713__v6_l2: @ 80FA354
	mJumpBack anim_0713__v6_l1

anim_0713:
	.4byte anim_0713__v0_l0
	.4byte anim_0713__v1_l0
	.4byte anim_0713__v2_l0
	.4byte anim_0713__v3_l0
	.4byte anim_0713__v4_l0
	.4byte anim_0713__v5_l0
	.4byte anim_0713__v6_l0


anim_0714__v0_l0: @ 80FA378
	mGetPalette 88 16 0x0
	mGetTiles 0x1518C 12
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0714:
	.4byte anim_0714__v0_l0


anim_0715__v0_l0: @ 80FA3A0
	mGetPalette 68 16 0x60
	mGetTiles 0x15198 64
	mAddHitbox 0 0x47 0x45 0x47 0x46
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0715__v1_l0: @ 80FA3D0
	mGetPalette 68 16 0x60
	mGetTiles 0x151D8 64
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0715__v2_l0: @ 80FA3F4
	mGetPalette 68 16 0x60
	mGetTiles 0x15218 64
	mAddHitbox 0 0x00 0xFF 0x00 0xFF
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0715__v3_l0: @ 80FA424
	mGetPalette 68 16 0x60
	mGetTiles 0x15258 64
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0715__v4_l0: @ 80FA448
	mGetPalette 68 16 0x60
	mGetTiles 0x15298 14
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0715:
	.4byte anim_0715__v0_l0
	.4byte anim_0715__v1_l0
	.4byte anim_0715__v2_l0
	.4byte anim_0715__v3_l0
	.4byte anim_0715__v4_l0


anim_0716__v0_l0: @ 80FA480
	mGetPalette 125 16 0x0
	mGetTiles 0x152A6 42
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0716:
	.4byte anim_0716__v0_l0


anim_0717__v0_l0: @ 80FA4A8
	mGetPalette 126 16 0x0
	mGetTiles 0x152D0 56
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0717__v1_l0: @ 80FA4CC
	mGetPalette 126 16 0x0
	mGetTiles 0x15308 56
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0717__v2_l0: @ 80FA4F0
	mGetPalette 126 16 0x0
	mGetTiles 0x15340 56
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0717:
	.4byte anim_0717__v0_l0
	.4byte anim_0717__v1_l0
	.4byte anim_0717__v2_l0


anim_0718__v0_l0: @ 80FA520
	mGetPalette 68 16 0x60
	mGetTiles 0x15378 20
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0718:
	.4byte anim_0718__v0_l0


anim_0719__v0_l0: @ 80FA548
	mGetPalette 68 16 0x60
	mGetTiles 0x1538C 16
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0719__v1_l0: @ 80FA56C
	mGetPalette 68 16 0x60
	mGetTiles 0x1539C 16
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0719__v2_l0: @ 80FA590
	mGetPalette 68 16 0x60
	mGetTiles 0x153AC 16
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0719__v3_l0: @ 80FA5B4
	mGetPalette 68 16 0x60
	mGetTiles 0x153BC 16
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0719:
	.4byte anim_0719__v0_l0
	.4byte anim_0719__v1_l0
	.4byte anim_0719__v2_l0
	.4byte anim_0719__v3_l0


anim_0720__v0_l0: @ 80FA5E8
	mGetPalette 68 16 0x60
	mGetTiles 0x153CC 48
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0720:
	.4byte anim_0720__v0_l0


anim_0721__v0_l0: @ 80FA610
	mGetPalette 68 16 0x60
	mGetTiles 0x153FC 3
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0721:
	.4byte anim_0721__v0_l0


anim_0722__v0_l0: @ 80FA638
	mGetPalette 127 16 0x70
	mGetTiles 0x153FF 80
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0722__v1_l0: @ 80FA65C
	mGetPalette 127 16 0x70
	mGetTiles 0x1544F 80
	mDisplayFrame 0x8 0x1

	mGetTiles 0x1549F 80
	mDisplayFrame 0x3 0x2

	mGetTiles 0x154EF 80
	mDisplayFrame 0xF 0x3

	mEnd 

anim_0722__v2_l0: @ 80FA6A8
	mGetPalette 128 16 0x80
	mGetTiles 0x1553F 72
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0722__v3_l0: @ 80FA6CC
	mGetPalette 128 16 0x80
	mGetTiles 0x15587 81
	mDisplayFrame 0x4 0x5

	mGetTiles 0x155D8 81
	mDisplayFrame 0x4 0x6

	mGetTiles 0x15629 81
	mDisplayFrame 0x3 0x7

	mGetTiles 0x1567A 72
	mDisplayFrame 0xF 0x8

	mEnd 

anim_0722__v4_l0: @ 80FA72C
	mGetPalette 129 16 0x90
	mGetTiles 0x156C2 70
	mDisplayFrame 0x1 0x9

	mEnd 

anim_0722__v5_l0: @ 80FA750
	mGetPalette 129 16 0x90
	mGetTiles 0x15708 90
	mDisplayFrame 0x4 0xA

	mGetTiles 0x15762 90
	mDisplayFrame 0x4 0xB

	mGetTiles 0x157BC 90
	mDisplayFrame 0x2 0xC

	mGetTiles 0x15816 80
	mDisplayFrame 0xF 0xD

	mEnd 

anim_0722__v6_l0: @ 80FA7B0
	mGetPalette 130 16 0xA0
	mGetTiles 0x15866 63
	mDisplayFrame 0x1 0xE

	mEnd 

anim_0722__v7_l0: @ 80FA7D4
	mGetPalette 130 16 0xA0
	mGetTiles 0x158A5 63
	mDisplayFrame 0x3 0xF

	mGetTiles 0x158E4 63
	mDisplayFrame 0x3 0x10

	mGetTiles 0x15923 70
	mDisplayFrame 0x3 0x11

	mGetTiles 0x15969 70
	mDisplayFrame 0x6 0x12

	mGetTiles 0x159AF 70
	mDisplayFrame 0x4 0x13

	mGetTiles 0x159F5 70
	mDisplayFrame 0x2 0x14

	mGetTiles 0x15A3B 80
	mDisplayFrame 0xF 0x15

	mEnd 

anim_0722:
	.4byte anim_0722__v0_l0
	.4byte anim_0722__v1_l0
	.4byte anim_0722__v2_l0
	.4byte anim_0722__v3_l0
	.4byte anim_0722__v4_l0
	.4byte anim_0722__v5_l0
	.4byte anim_0722__v6_l0
	.4byte anim_0722__v7_l0


anim_0723__v0_l0: @ 80FA890
	mGetPalette 131 16 0x0
	mGetTiles 0x15A8B 600
	mDisplayFrame 0x2 0x0

	mEnd 

anim_0723__v1_l0: @ 80FA8B4
	mGetPalette 132 16 0x0
	mGetTiles 0x15CE3 600
	mDisplayFrame 0x2 0x1

	mEnd 

anim_0723__v2_l0: @ 80FA8D8
	mGetPalette 133 16 0x0
	mGetTiles 0x15F3B 600
	mDisplayFrame 0x2 0x2

	mEnd 

anim_0723__v3_l0: @ 80FA8FC
	mGetPalette 132 16 0x0
	mGetTiles 0x16193 600
	mDisplayFrame 0x2 0x3

	mEnd 

anim_0723:
	.4byte anim_0723__v0_l0
	.4byte anim_0723__v1_l0
	.4byte anim_0723__v2_l0
	.4byte anim_0723__v3_l0


anim_0724__v0_l0: @ 80FA930
	mGetPalette 134 16 0x30
	mDisplayFrame 0x1 0xFFFFFFFF

anim_0724__v0_l1: @ 80FA944
	mJumpBack anim_0724__v0_l0

anim_0724__v1_l0: @ 80FA94C
	mGetPalette 135 16 0x20
	mGetTiles 0x163EB 28
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0724__v2_l0: @ 80FA970
	mGetPalette 135 16 0x20
	mGetTiles 0x16407 30
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0724__v3_l0: @ 80FA994
	mGetPalette 135 16 0x20
	mGetTiles 0x16425 28
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0724__v4_l0: @ 80FA9B8
	mGetPalette 135 16 0x20
	mGetTiles 0x16441 30
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0724__v5_l0: @ 80FA9DC
	mGetPalette 135 16 0x20
	mGetTiles 0x1645F 28
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0724__v6_l0: @ 80FAA00
	mGetPalette 135 16 0x20
	mGetTiles 0x1647B 30
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0724__v7_l0: @ 80FAA24
	mGetPalette 135 16 0x20
	mGetTiles 0x16499 28
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0724__v8_l0: @ 80FAA48
	mGetPalette 135 16 0x20
	mGetTiles 0x164B5 30
	mDisplayFrame 0x1 0x7

	mEnd 

anim_0724__v9_l0: @ 80FAA6C
	mGetPalette 135 16 0x20
	mGetTiles 0x164D3 28
	mDisplayFrame 0x1 0x8

	mEnd 

anim_0724__v10_l0: @ 80FAA90
	mGetPalette 135 16 0x20
	mGetTiles 0x164EF 30
	mDisplayFrame 0x1 0x9

	mEnd 

anim_0724__v11_l0: @ 80FAAB4
	mGetPalette 135 16 0x20
	mGetTiles 0x1650D 28
	mDisplayFrame 0x1 0xA

	mEnd 

anim_0724__v12_l0: @ 80FAAD8
	mGetPalette 135 16 0x20
	mGetTiles 0x16529 30
	mDisplayFrame 0x1 0xB

	mEnd 

anim_0724__v13_l0: @ 80FAAFC
	mGetPalette 135 16 0x20
	mGetTiles 0x16547 28
	mDisplayFrame 0x1 0xC

	mEnd 

anim_0724__v14_l0: @ 80FAB20
	mGetPalette 135 16 0x20
	mGetTiles 0x16563 28
	mDisplayFrame 0x1 0xD

	mEnd 

anim_0724__v15_l0: @ 80FAB44
	mGetPalette 135 16 0x20
	mGetTiles 0x1657F 26
	mDisplayFrame 0x1 0xE

	mEnd 

anim_0724__v16_l0: @ 80FAB68
	mGetPalette 135 16 0x20
	mGetTiles 0x16599 26
	mDisplayFrame 0x1 0xF

	mEnd 

anim_0724__v17_l0: @ 80FAB8C
	mGetPalette 135 16 0x20
	mGetTiles 0x165B3 26
	mDisplayFrame 0x1 0x10

	mEnd 

anim_0724__v18_l0: @ 80FABB0
	mGetPalette 135 16 0x20
	mGetTiles 0x165CD 26
	mDisplayFrame 0x1 0x11

	mEnd 

anim_0724:
	.4byte anim_0724__v0_l0
	.4byte anim_0724__v1_l0
	.4byte anim_0724__v2_l0
	.4byte anim_0724__v3_l0
	.4byte anim_0724__v4_l0
	.4byte anim_0724__v5_l0
	.4byte anim_0724__v6_l0
	.4byte anim_0724__v7_l0
	.4byte anim_0724__v8_l0
	.4byte anim_0724__v9_l0
	.4byte anim_0724__v10_l0
	.4byte anim_0724__v11_l0
	.4byte anim_0724__v12_l0
	.4byte anim_0724__v13_l0
	.4byte anim_0724__v14_l0
	.4byte anim_0724__v15_l0
	.4byte anim_0724__v16_l0
	.4byte anim_0724__v17_l0
	.4byte anim_0724__v18_l0


anim_0725__v0_l0: @ 80FAC20
	mGetPalette 136 16 0x70
	mGetTiles 0x165E7 36
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0725:
	.4byte anim_0725__v0_l0


anim_0726__v0_l0: @ 80FAC48
	mGetPalette 137 16 0x80
	mGetTiles 0x1660B 36
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0726:
	.4byte anim_0726__v0_l0


anim_0727__v0_l0: @ 80FAC70
	mGetPalette 138 16 0x90
	mGetTiles 0x1662F 36
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0727:
	.4byte anim_0727__v0_l0


anim_0728__v0_l0: @ 80FAC98
	mGetPalette 139 16 0xE0
	mGetTiles 0x16653 18
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0728:
	.4byte anim_0728__v0_l0


anim_0729__v0_l0: @ 80FACC0
	mGetPalette 140 16 0xD0
	mGetTiles 0x16665 18
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0729:
	.4byte anim_0729__v0_l0


anim_0730__v0_l0: @ 80FACE8
	mGetPalette 117 16 0xB0
	mGetTiles 0x16677 16
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0730:
	.4byte anim_0730__v0_l0


anim_0731__v0_l0: @ 80FAD10
	mGetPalette 141 16 0x20
	mGetTiles 0x16687 4
	mDisplayFrame 0x4 0x0

	mGetTiles 0x1668B 4
	mDisplayFrame 0x4 0x1

	mGetTiles 0x1668F 4
	mDisplayFrame 0x4 0x2

	mGetTiles 0x16693 4
	mDisplayFrame 0x4 0x3

anim_0731__v0_l1: @ 80FAD6C
	mJumpBack anim_0731__v0_l0

anim_0731:
	.4byte anim_0731__v0_l0


anim_0732__v0_l0: @ 80FAD78
	mGetPalette 1 16 0xE0
	mGetTiles 0x16697 16
	mDisplayFrame 0x2 0x0

	mGetTiles 0x166A7 16
	mDisplayFrame 0x2 0x1

	mGetTiles 0x166B7 16
	mDisplayFrame 0x2 0x2

	mGetTiles 0x166C7 16
	mDisplayFrame 0x2 0x3

anim_0732__v0_l1: @ 80FADD4
	mJumpBack anim_0732__v0_l0

anim_0732:
	.4byte anim_0732__v0_l0


anim_0733__v0_l0: @ 80FADE0
	mGetPalette 142 16 0xE0
	mGetTiles 0x166D7 192
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0733__v1_l0: @ 80FAE04
	mGetPalette 142 16 0xE0
	mGetTiles 0x16797 192
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0733:
	.4byte anim_0733__v0_l0
	.4byte anim_0733__v1_l0


anim_0734__v0_l0: @ 80FAE30
	mGetPalette 143 16 0xE0
	mGetTiles 0x16857 192
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0734__v1_l0: @ 80FAE54
	mGetPalette 144 16 0xE0
	mGetTiles 0x16917 192
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0734:
	.4byte anim_0734__v0_l0
	.4byte anim_0734__v1_l0


anim_0735__v0_l0: @ 80FAE80
	mGetPalette 145 16 0x60
	mGetTiles 0x169D7 64
	mDisplayFrame 0x2 0x0

	mGetTiles 0x16A17 32
	mDisplayFrame 0x2 0x1

anim_0735__v0_l1: @ 80FAEB4
	mJumpBack anim_0735__v0_l0

anim_0735:
	.4byte anim_0735__v0_l0


anim_0736__v0_l0: @ 80FAEC0
	mGetPalette 145 16 0x60
	mGetTiles 0x16A37 120
	mDisplayFrame 0x2 0x0

	mGetTiles 0x16AAF 120
	mDisplayFrame 0x2 0x1

anim_0736__v0_l1: @ 80FAEF4
	mJumpBack anim_0736__v0_l0

anim_0736:
	.4byte anim_0736__v0_l0


anim_0737__v0_l0: @ 80FAF00
	mGetPalette 146 256 0x0
	mGetTiles 0x80000090 192
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0737__v1_l0: @ 80FAF24
	mGetPalette 146 256 0x0
	mGetTiles 0x80000150 192
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0737__v2_l0: @ 80FAF48
	mGetPalette 146 256 0x0
	mGetTiles 0x80000210 192
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0737__v3_l0: @ 80FAF6C
	mGetPalette 146 256 0x0
	mGetTiles 0x800002D0 192
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0737:
	.4byte anim_0737__v0_l0
	.4byte anim_0737__v1_l0
	.4byte anim_0737__v2_l0
	.4byte anim_0737__v3_l0


anim_0738__v0_l0: @ 80FAFA0
	mGetPalette 146 64 0x0
	mGetTiles 0x80000390 225
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0738__v1_l0: @ 80FAFC4
	mGetPalette 146 64 0x0
	mGetTiles 0x80000471 182
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0738__v2_l0: @ 80FAFE8
	mGetPalette 146 64 0x0
	mGetTiles 0x80000527 192
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0738__v3_l0: @ 80FB00C
	mGetPalette 146 64 0x0
	mGetTiles 0x800005E7 196
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0738:
	.4byte anim_0738__v0_l0
	.4byte anim_0738__v1_l0
	.4byte anim_0738__v2_l0
	.4byte anim_0738__v3_l0


anim_0739__v0_l0: @ 80FB040
	mGetPalette 162 16 0x70
	mGetTiles 0x16B27 72
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0739__v1_l0: @ 80FB064
	mGetPalette 163 16 0x80
	mGetTiles 0x16B6F 20
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0739:
	.4byte anim_0739__v0_l0
	.4byte anim_0739__v1_l0


anim_0740__v0_l0: @ 80FB090
	mGetPalette 164 16 0x0
	mGetTiles 0x16B83 56
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0740__v1_l0: @ 80FB0B4
	mGetPalette 164 16 0x0
	mGetTiles 0x16BBB 78
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0740__v2_l0: @ 80FB0D8
	mGetPalette 164 16 0x0
	mGetTiles 0x16C09 60
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0740__v3_l0: @ 80FB0FC
	mGetPalette 164 16 0x0
	mGetTiles 0x16C45 96
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0740:
	.4byte anim_0740__v0_l0
	.4byte anim_0740__v1_l0
	.4byte anim_0740__v2_l0
	.4byte anim_0740__v3_l0


anim_0741__v0_l0: @ 80FB130
	mGetPalette 165 16 0x30
	mGetTiles 0x16CA5 63
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0741__v1_l0: @ 80FB154
	mGetPalette 165 16 0x30
	mGetTiles 0x16CE4 63
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0741:
	.4byte anim_0741__v0_l0
	.4byte anim_0741__v1_l0


anim_0742__v0_l0: @ 80FB180
	mGetPalette 166 16 0xA0
	mGetTiles 0x16D23 36
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0742:
	.4byte anim_0742__v0_l0


anim_0743__v0_l0: @ 80FB1A8
	mGetPalette 167 16 0xB0
	mGetTiles 0x16D47 36
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0743:
	.4byte anim_0743__v0_l0


anim_0744__v0_l0: @ 80FB1D0
	mGetPalette 168 16 0xC0
	mGetTiles 0x16D6B 36
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0744:
	.4byte anim_0744__v0_l0


anim_0745__v0_l0: @ 80FB1F8
	mGetPalette 169 16 0xF0
	mGetTiles 0x16D8F 6
	mDisplayFrame 0xA 0x0

	mGetTiles 0x16D95 6
	mDisplayFrame 0xA 0x1

	mGetTiles 0x16D9B 6
	mDisplayFrame 0xA 0x2

	mGetTiles 0x16DA1 6
	mDisplayFrame 0xA 0x3

	mGetTiles 0x16DA7 6
	mDisplayFrame 0xA 0x4

anim_0745__v0_l1: @ 80FB268
	mJumpBack anim_0745__v0_l0

anim_0745:
	.4byte anim_0745__v0_l0


anim_0746__v0_l0: @ 80FB274
	mGetPalette 6 16 0x40
	mGetTiles 0x16DAD 8
	mDisplayFrame 0x2 0x0

	mGetTiles 0x16DB5 12
	mDisplayFrame 0x2 0x1

	mGetTiles 0x16DC1 12
	mDisplayFrame 0x2 0x2

	mGetTiles 0x16DCD 12
	mDisplayFrame 0x2 0x3

	mGetTiles 0x16DD9 12
	mDisplayFrame 0x2 0x4

	mGetTiles 0x16DE5 12
	mDisplayFrame 0x2 0x5

	mGetTiles 0x16DF1 12
	mDisplayFrame 0x2 0x6

	mGetTiles 0x16DFD 8
	mDisplayFrame 0x2 0x7

anim_0746__v0_l1: @ 80FB320
	mJumpBack anim_0746__v0_l0

anim_0746:
	.4byte anim_0746__v0_l0


anim_0747__v0_l0: @ 80FB32C
	mGetPalette 6 16 0x40
	mGetTiles 0x16E05 20
	mDisplayFrame 0x2 0x0

	mGetTiles 0x16E19 20
	mDisplayFrame 0x2 0x1

	mGetTiles 0x16E2D 16
	mDisplayFrame 0x2 0x2

	mGetTiles 0x16E3D 20
	mDisplayFrame 0x2 0x3

anim_0747__v0_l1: @ 80FB388
	mJumpBack anim_0747__v0_l0

anim_0747:
	.4byte anim_0747__v0_l0


anim_0748__v0_l0: @ 80FB394
	mGetTiles 0x16E51 32
	mGetPalette 6 16 0x40
	mDisplayFrame 0x2 0x0

	mDisplayFrame 0x2 0x1

	mDisplayFrame 0x2 0x2

	mAddHitbox 0 0x41 0x27 0x41 0x27
	mDisplayFrame 0x2 0x3

	mDisplayFrame 0x2 0x4

	mDisplayFrame 0x2 0x5

	mDisplayFrame 0x2 0x6

	mDisplayFrame 0x2 0x7

	mEnd 

anim_0748:
	.4byte anim_0748__v0_l0


anim_0749__v0_l0: @ 80FB400
	mGetPalette 170 16 0x70
	mGetTiles 0x16E71 16
	mDisplayFrame 0x1 0x0

	mGetTiles 0x16E81 4
	mDisplayFrame 0x1 0x1

	mGetTiles 0x16E85 6
	mDisplayFrame 0x1 0x2

	mGetTiles 0x16E8B 9
	mDisplayFrame 0x1 0x3

	mGetTiles 0x16E94 12
	mDisplayFrame 0x1 0x4

	mGetTiles 0x16EA0 16
	mDisplayFrame 0x1 0x5

	mGetTiles 0x16EB0 16
	mDisplayFrame 0x1 0x6

	mGetTiles 0x16EC0 16
	mDisplayFrame 0x1 0x7

anim_0749__v0_l1: @ 80FB4AC
	mJumpBack anim_0749__v0_l0

anim_0749:
	.4byte anim_0749__v0_l0


anim_0750__v0_l0: @ 80FB4B8
	mGetPalette 1 16 0x50
	mGetTiles 0x16ED0 36
	mDisplayFrame 0x3 0x0

	mGetTiles 0x16EF4 36
	mDisplayFrame 0x3 0x1

	mGetTiles 0x16F18 36
	mDisplayFrame 0x3 0x2

	mGetTiles 0x16F3C 36
	mDisplayFrame 0x3 0x3

	mGetTiles 0x16F60 36
	mDisplayFrame 0x3 0x4

	mGetTiles 0x16F84 36
	mDisplayFrame 0x3 0x5

anim_0750__v0_l1: @ 80FB53C
	mJumpBack anim_0750__v0_l0

anim_0750:
	.4byte anim_0750__v0_l0


anim_0751__v0_l0: @ 80FB548
	mGetPalette 1 16 0x50
	mGetTiles 0x16FA8 36
	mDisplayFrame 0x3 0x0

	mGetTiles 0x16FCC 36
	mDisplayFrame 0x3 0x1

	mGetTiles 0x16FA8 36
	mDisplayFrame 0x3 0x0

	mGetTiles 0x16FCC 36
	mDisplayFrame 0x3 0x1

	mGetTiles 0x16FF0 36
	mDisplayFrame 0x3 0x2

	mGetTiles 0x17014 36
	mDisplayFrame 0x3 0x3

	mGetTiles 0x16FF0 36
	mDisplayFrame 0x3 0x2

	mGetTiles 0x17014 36
	mDisplayFrame 0x3 0x3

	mGetTiles 0x17038 36
	mDisplayFrame 0x3 0x4

	mGetTiles 0x1705C 36
	mDisplayFrame 0x3 0x5

	mGetTiles 0x17038 36
	mDisplayFrame 0x3 0x4

	mGetTiles 0x1705C 36
	mDisplayFrame 0x3 0x5

	mGetTiles 0x17080 36
	mDisplayFrame 0x3 0x6

	mGetTiles 0x170A4 36
	mDisplayFrame 0x3 0x7

	mGetTiles 0x17080 36
	mDisplayFrame 0x3 0x6

	mGetTiles 0x170A4 36
	mDisplayFrame 0x3 0x7

anim_0751__v0_l1: @ 80FB694
	mJumpBack anim_0751__v0_l0

anim_0751:
	.4byte anim_0751__v0_l0


anim_0752__v0_l0: @ 80FB6A0
	mGetPalette 1 16 0x50
	mGetTiles 0x170C8 36
	mDisplayFrame 0x2 0x0

	mGetTiles 0x170EC 36
	mDisplayFrame 0x2 0x1

	mGetTiles 0x17110 36
	mDisplayFrame 0x2 0x2

	mGetTiles 0x17134 36
	mDisplayFrame 0x2 0x3

	mGetTiles 0x17158 36
	mDisplayFrame 0x2 0x4

	mGetTiles 0x1717C 36
	mDisplayFrame 0x2 0x5

anim_0752__v0_l1: @ 80FB724
	mJumpBack anim_0752__v0_l0

anim_0752__v1_l0: @ 80FB72C
	mGetPalette 1 16 0x50
	mGetTiles 0x171A0 6
	mDisplayFrame 0x2 0x6

	mGetTiles 0x171A6 6
	mDisplayFrame 0x2 0x7

	mGetTiles 0x171AC 9
	mDisplayFrame 0x2 0x8

	mGetTiles 0x171B5 9
	mDisplayFrame 0x2 0x9

	mGetTiles 0x171BE 9
	mDisplayFrame 0x2 0xA

	mGetTiles 0x171C7 9
	mDisplayFrame 0x2 0xB

	mGetTiles 0x171D0 1
	mDisplayFrame 0x2 0xC

	mGetTiles 0x171D1 1
	mDisplayFrame 0x2 0xD

	mGetTiles 0x171D2 4
	mDisplayFrame 0x2 0xE

	mGetTiles 0x171D6 4
	mDisplayFrame 0x2 0xF

	mGetTiles 0x171DA 4
	mDisplayFrame 0x2 0x10

	mGetTiles 0x171DE 4
	mDisplayFrame 0x2 0x11

	mEnd 

anim_0752:
	.4byte anim_0752__v0_l0
	.4byte anim_0752__v1_l0


anim_0753__v0_l0: @ 80FB834
	mGetTiles 0x171E2 4
anim_0753__v0_l1: @ 80FB840
	mGetPalette 1 16 0x50
	mDisplayFrame 0xC 0x0

	mDisplayFrame 0xC 0x1

	mDisplayFrame 0xC 0x2

	mDisplayFrame 0xC 0x3

anim_0753__v0_l2: @ 80FB86C
	mJumpBack anim_0753__v0_l1

anim_0753:
	.4byte anim_0753__v0_l0


anim_0754__v0_l0: @ 80FB878
	mGetTiles 0x171E6 16
anim_0754__v0_l1: @ 80FB884
	mGetPalette 1 16 0x50
	mDisplayFrame 0xC 0x0

	mDisplayFrame 0xC 0x1

	mDisplayFrame 0xC 0x2

	mDisplayFrame 0xC 0x3

anim_0754__v0_l2: @ 80FB8B0
	mJumpBack anim_0754__v0_l1

anim_0754:
	.4byte anim_0754__v0_l0


anim_0755__v0_l0: @ 80FB8BC
	mGetPalette 68 16 0x60
	mGetTiles 0x171F6 9
	mDisplayFrame 0x3 0x0

	mGetTiles 0x171FF 12
	mDisplayFrame 0x3 0x1

	mGetTiles 0x1720B 12
	mDisplayFrame 0x3 0x2

	mGetTiles 0x17217 12
	mDisplayFrame 0x3 0x3

	mEnd 

anim_0755:
	.4byte anim_0755__v0_l0


anim_0756__v0_l0: @ 80FB920
	mGetPalette 1 16 0x50
	mGetTiles 0x17223 2
	mDisplayFrame 0x3 0x0

	mGetTiles 0x17225 8
	mDisplayFrame 0x3 0x1

	mGetTiles 0x1722D 10
	mDisplayFrame 0x3 0x2

	mGetTiles 0x17237 10
	mDisplayFrame 0x3 0x3

	mGetTiles 0x17241 4
	mDisplayFrame 0x3 0x4

	mEnd 

anim_0756:
	.4byte anim_0756__v0_l0


anim_0757__v0_l0: @ 80FB998
	mGetPalette 1 16 0x50
	mGetTiles 0x17245 2
	mDisplayFrame 0x3 0x0

	mGetTiles 0x17247 8
	mDisplayFrame 0x3 0x1

	mGetTiles 0x1724F 8
	mDisplayFrame 0x3 0x2

	mGetTiles 0x17257 5
	mDisplayFrame 0x3 0x3

	mGetTiles 0x1725C 5
	mDisplayFrame 0x3 0x4

	mEnd 

anim_0757:
	.4byte anim_0757__v0_l0


anim_0758__v0_l0: @ 80FBA10
	mGetPalette 1 16 0x50
	mGetTiles 0x17261 2
	mDisplayFrame 0x3 0x0

	mGetTiles 0x17263 8
	mDisplayFrame 0x3 0x1

	mGetTiles 0x1726B 8
	mDisplayFrame 0x3 0x2

	mGetTiles 0x17273 4
	mDisplayFrame 0x3 0x3

	mGetTiles 0x17277 4
	mDisplayFrame 0x3 0x4

	mEnd 

anim_0758:
	.4byte anim_0758__v0_l0


anim_0759__v0_l0: @ 80FBA88
	mGetPalette 171 16 0x40
	mGetTiles 0x1727B 4
	mDisplayFrame 0x3 0x0

	mGetTiles 0x1727F 4
	mDisplayFrame 0x3 0x1

	mGetTiles 0x17283 4
	mDisplayFrame 0x3 0x2

	mGetTiles 0x17287 4
	mDisplayFrame 0x3 0x3

	mGetTiles 0x1728B 2
	mDisplayFrame 0x3 0x4

	mEnd 

anim_0759:
	.4byte anim_0759__v0_l0


anim_0760__v0_l0: @ 80FBB00
	mGetPalette 171 16 0x40
	mGetTiles 0x1728D 2
	mDisplayFrame 0x3 0x0

	mGetTiles 0x1728F 4
	mDisplayFrame 0x3 0x1

	mGetTiles 0x17293 4
	mDisplayFrame 0x3 0x2

	mGetTiles 0x17297 4
	mDisplayFrame 0x3 0x3

	mGetTiles 0x1729B 2
	mDisplayFrame 0x3 0x4

	mEnd 

anim_0760:
	.4byte anim_0760__v0_l0


anim_0761__v0_l0: @ 80FBB78
	mGetPalette 171 16 0x40
	mGetTiles 0x1729D 2
	mDisplayFrame 0x3 0x0

	mGetTiles 0x1729F 4
	mDisplayFrame 0x3 0x1

	mGetTiles 0x172A3 4
	mDisplayFrame 0x3 0x2

	mGetTiles 0x172A7 4
	mDisplayFrame 0x3 0x3

	mGetTiles 0x172AB 2
	mDisplayFrame 0x3 0x4

	mEnd 

anim_0761:
	.4byte anim_0761__v0_l0


anim_0762__v0_l0: @ 80FBBF0
	mGetPalette 68 16 0x60
	mGetTiles 0x172AD 6
	mDisplayFrame 0x3 0x0

	mGetTiles 0x172B3 12
	mDisplayFrame 0x3 0x1

	mGetTiles 0x172BF 12
	mDisplayFrame 0x3 0x2

	mGetTiles 0x172CB 8
	mDisplayFrame 0x3 0x3

	mGetTiles 0x172D3 4
	mDisplayFrame 0x3 0x4

	mGetTiles 0x172D7 6
	mDisplayFrame 0x3 0x5

	mGetTiles 0x172DD 6
	mDisplayFrame 0x3 0x6

	mGetTiles 0x172E3 4
	mDisplayFrame 0x3 0x7

	mEnd 

anim_0762:
	.4byte anim_0762__v0_l0


anim_0763__v0_l0: @ 80FBCA4
	mGetPalette 68 16 0x60
	mGetTiles 0x172E7 9
	mDisplayFrame 0x3 0x0

	mGetTiles 0x172F0 16
	mDisplayFrame 0x3 0x1

	mGetTiles 0x17300 16
	mDisplayFrame 0x3 0x2

	mGetTiles 0x17310 16
	mDisplayFrame 0x3 0x3

	mGetTiles 0x17320 16
	mDisplayFrame 0x3 0x4

	mEnd 

anim_0763:
	.4byte anim_0763__v0_l0


anim_0764__v0_l0: @ 80FBD1C
	mGetPalette 172 16 0x40
	mGetTiles 0x17330 4
	mDisplayFrame 0x3 0x0

	mGetTiles 0x17334 4
	mDisplayFrame 0x3 0x1

	mGetTiles 0x17338 4
	mDisplayFrame 0x3 0x2

	mGetTiles 0x1733C 4
	mDisplayFrame 0x3 0x3

	mGetTiles 0x17340 4
	mDisplayFrame 0x3 0x4

	mGetTiles 0x17344 1
	mDisplayFrame 0x3 0x5

	mEnd 

anim_0764:
	.4byte anim_0764__v0_l0


anim_0765__v0_l0: @ 80FBDA8
	mGetPalette 6 16 0x40
	mGetTiles 0x17345 9
	mDisplayFrame 0x3 0x0

	mGetTiles 0x1734E 16
	mDisplayFrame 0x3 0x1

	mGetTiles 0x1735E 16
	mDisplayFrame 0x3 0x2

	mGetTiles 0x1736E 16
	mDisplayFrame 0x3 0x3

	mGetTiles 0x1737E 16
	mDisplayFrame 0x3 0x4

	mGetTiles 0x1738E 16
	mDisplayFrame 0x3 0x5

	mGetTiles 0x1739E 12
	mDisplayFrame 0x3 0x6

	mEnd 

anim_0765:
	.4byte anim_0765__v0_l0


anim_0766__v0_l0: @ 80FBE48
	mGetPalette 1 16 0x50
	mGetTiles 0x173AA 4
	mDisplayFrame 0x2 0x0

	mGetTiles 0x173AE 4
	mDisplayFrame 0x2 0x1

	mGetTiles 0x173B2 4
	mDisplayFrame 0x2 0x2

	mGetTiles 0x173B6 4
	mDisplayFrame 0x2 0x3

	mGetTiles 0x173BA 4
	mDisplayFrame 0x2 0x4

	mGetTiles 0x173BE 4
	mDisplayFrame 0x2 0x5

	mGetTiles 0x173C2 4
	mDisplayFrame 0x2 0x6

	mGetTiles 0x173AA 4
	mDisplayFrame 0x2 0x0

	mEnd 

anim_0766__v1_l0: @ 80FBEF8
	mGetPalette 1 16 0x50
	mGetTiles 0x173C6 1
	mDisplayFrame 0x2 0x7

	mGetTiles 0x173AA 4
	mDisplayFrame 0x2 0x0

	mGetTiles 0x173C7 4
	mDisplayFrame 0x2 0x8

	mGetTiles 0x173CB 4
	mDisplayFrame 0x2 0x9

	mGetTiles 0x173CF 4
	mDisplayFrame 0x2 0xA

	mGetTiles 0x173D3 4
	mDisplayFrame 0x2 0xB

	mGetTiles 0x173AA 4
	mDisplayFrame 0x2 0x0

	mGetTiles 0x173C6 1
	mDisplayFrame 0x2 0x7

	mEnd 

anim_0766:
	.4byte anim_0766__v0_l0
	.4byte anim_0766__v1_l0


anim_0767__v0_l0: @ 80FBFB0
	mGetPalette 88 16 0x0
	mGetTiles 0x173D7 4
	mDisplayFrame 0x3 0x0

	mGetTiles 0x173DB 4
	mDisplayFrame 0x3 0x1

	mGetTiles 0x173DF 4
	mDisplayFrame 0x3 0x2

	mGetTiles 0x173E3 4
	mDisplayFrame 0x3 0x3

	mGetTiles 0x173E7 4
	mDisplayFrame 0x3 0x4

	mGetTiles 0x173EB 4
	mDisplayFrame 0x3 0x5

	mGetTiles 0x173EF 4
	mDisplayFrame 0x3 0x6

	mGetTiles 0x173F3 4
	mDisplayFrame 0x3 0x7

anim_0767__v0_l1: @ 80FC05C
	mJumpBack anim_0767__v0_l0

anim_0767:
	.4byte anim_0767__v0_l0


anim_0768__v0_l0: @ 80FC068
	mGetPalette 68 16 0x60
	mGetTiles 0x173F7 30
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0768__v1_l0: @ 80FC08C
	mGetPalette 68 16 0x60
	mGetTiles 0x17415 14
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0768__v2_l0: @ 80FC0B0
	mGetPalette 68 16 0x60
	mGetTiles 0x17423 10
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0768__v3_l0: @ 80FC0D4
	mGetPalette 68 16 0x60
	mGetTiles 0x1742D 14
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0768__v4_l0: @ 80FC0F8
	mGetPalette 68 16 0x60
	mGetTiles 0x1743B 10
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0768__v5_l0: @ 80FC11C
	mGetPalette 68 16 0x60
	mGetTiles 0x17445 16
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0768__v6_l0: @ 80FC140
	mGetPalette 68 16 0x60
	mGetTiles 0x17455 16
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0768__v7_l0: @ 80FC164
	mGetPalette 68 16 0x60
	mGetTiles 0x17465 16
	mDisplayFrame 0x1 0x7

	mEnd 

anim_0768__v8_l0: @ 80FC188
	mGetPalette 68 16 0x60
	mGetTiles 0x17475 6
	mDisplayFrame 0x1 0x8

	mEnd 

anim_0768__v9_l0: @ 80FC1AC
	mGetPalette 68 16 0x60
	mGetTiles 0x1747B 8
	mDisplayFrame 0x1 0x9

	mEnd 

anim_0768__v10_l0: @ 80FC1D0
	mGetPalette 68 16 0x60
	mGetTiles 0x17483 14
	mDisplayFrame 0x1 0xA

	mEnd 

anim_0768__v11_l0: @ 80FC1F4
	mGetPalette 68 16 0x60
	mGetTiles 0x17491 28
	mDisplayFrame 0x1 0xB

	mEnd 

anim_0768__v12_l0: @ 80FC218
	mGetPalette 68 16 0x60
	mGetTiles 0x174AD 24
	mDisplayFrame 0x1 0xC

	mEnd 

anim_0768__v13_l0: @ 80FC23C
	mGetPalette 68 16 0x60
	mGetTiles 0x174C5 4
	mDisplayFrame 0x1 0xD

	mEnd 

anim_0768__v14_l0: @ 80FC260
	mGetPalette 68 16 0x60
	mGetTiles 0x174C9 6
	mDisplayFrame 0x1 0xE

	mEnd 

anim_0768__v15_l0: @ 80FC284
	mGetPalette 68 16 0x60
	mGetTiles 0x174CF 16
	mDisplayFrame 0x1 0xF

	mEnd 

anim_0768__v16_l0: @ 80FC2A8
	mGetPalette 68 16 0x60
	mGetTiles 0x174DF 12
	mDisplayFrame 0x1 0x10

	mEnd 

anim_0768__v17_l0: @ 80FC2CC
	mGetPalette 68 16 0x60
	mGetTiles 0x174EB 14
	mDisplayFrame 0x1 0x11

	mEnd 

anim_0768__v18_l0: @ 80FC2F0
	mGetPalette 68 16 0x60
	mGetTiles 0x174F9 18
	mDisplayFrame 0x1 0x12

	mEnd 

anim_0768__v19_l0: @ 80FC314
	mGetPalette 68 16 0x60
	mGetTiles 0x1750B 12
	mDisplayFrame 0x1 0x13

	mEnd 

anim_0768__v20_l0: @ 80FC338
	mGetPalette 68 16 0x60
	mGetTiles 0x17517 6
	mDisplayFrame 0x1 0x14

	mEnd 

anim_0768:
	.4byte anim_0768__v0_l0
	.4byte anim_0768__v1_l0
	.4byte anim_0768__v2_l0
	.4byte anim_0768__v3_l0
	.4byte anim_0768__v4_l0
	.4byte anim_0768__v5_l0
	.4byte anim_0768__v6_l0
	.4byte anim_0768__v7_l0
	.4byte anim_0768__v8_l0
	.4byte anim_0768__v9_l0
	.4byte anim_0768__v10_l0
	.4byte anim_0768__v11_l0
	.4byte anim_0768__v12_l0
	.4byte anim_0768__v13_l0
	.4byte anim_0768__v14_l0
	.4byte anim_0768__v15_l0
	.4byte anim_0768__v16_l0
	.4byte anim_0768__v17_l0
	.4byte anim_0768__v18_l0
	.4byte anim_0768__v19_l0
	.4byte anim_0768__v20_l0


anim_0769__v0_l0: @ 80FC3B0
	mGetPalette 173 16 0x0
	mGetTiles 0x1751D 80
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0769__v1_l0: @ 80FC3D4
	mGetPalette 174 16 0x40
	mGetTiles 0x1756D 90
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0769__v2_l0: @ 80FC3F8
	mGetPalette 175 16 0x50
	mGetTiles 0x175C7 100
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0769__v3_l0: @ 80FC41C
	mGetPalette 176 16 0x30
	mGetTiles 0x1762B 80
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0769:
	.4byte anim_0769__v0_l0
	.4byte anim_0769__v1_l0
	.4byte anim_0769__v2_l0
	.4byte anim_0769__v3_l0


anim_0770__v0_l0: @ 80FC450
	mGetPalette 177 16 0xD0
	mGetTiles 0x1767B 12
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0770__v1_l0: @ 80FC474
	mGetPalette 177 16 0xD0
	mGetTiles 0x17687 16
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0770__v2_l0: @ 80FC498
	mGetPalette 177 16 0xD0
	mGetTiles 0x17697 12
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0770__v3_l0: @ 80FC4BC
	mGetPalette 177 16 0xD0
	mGetTiles 0x176A3 8
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0770__v4_l0: @ 80FC4E0
	mGetPalette 177 16 0xD0
	mGetTiles 0x176AB 12
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0770__v5_l0: @ 80FC504
	mGetPalette 177 16 0xD0
	mGetTiles 0x176B7 30
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0770:
	.4byte anim_0770__v0_l0
	.4byte anim_0770__v1_l0
	.4byte anim_0770__v2_l0
	.4byte anim_0770__v3_l0
	.4byte anim_0770__v4_l0
	.4byte anim_0770__v5_l0


anim_0771__v0_l0: @ 80FC540
	mGetPalette 177 16 0xD0
	mGetTiles 0x176D5 12
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0771__v1_l0: @ 80FC564
	mGetPalette 177 16 0xD0
	mGetTiles 0x176E1 16
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0771__v2_l0: @ 80FC588
	mGetPalette 177 16 0xD0
	mGetTiles 0x176F1 8
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0771__v3_l0: @ 80FC5AC
	mGetPalette 177 16 0xD0
	mGetTiles 0x176F9 12
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0771__v4_l0: @ 80FC5D0
	mGetPalette 177 16 0xD0
	mGetTiles 0x17705 16
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0771__v5_l0: @ 80FC5F4
	mGetPalette 177 16 0xD0
	mGetTiles 0x17715 30
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0771:
	.4byte anim_0771__v0_l0
	.4byte anim_0771__v1_l0
	.4byte anim_0771__v2_l0
	.4byte anim_0771__v3_l0
	.4byte anim_0771__v4_l0
	.4byte anim_0771__v5_l0


anim_0772__v0_l0: @ 80FC630
	mGetPalette 177 16 0xD0
	mGetTiles 0x17733 8
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0772__v1_l0: @ 80FC654
	mGetPalette 177 16 0xD0
	mGetTiles 0x1773B 8
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0772__v2_l0: @ 80FC678
	mGetPalette 177 16 0xD0
	mGetTiles 0x17743 8
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0772__v3_l0: @ 80FC69C
	mGetPalette 177 16 0xD0
	mGetTiles 0x1774B 12
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0772__v4_l0: @ 80FC6C0
	mGetPalette 177 16 0xD0
	mGetTiles 0x17757 12
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0772__v5_l0: @ 80FC6E4
	mGetPalette 177 16 0xD0
	mGetTiles 0x17763 12
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0772__v6_l0: @ 80FC708
	mGetPalette 177 16 0xD0
	mGetTiles 0x1776F 8
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0772__v7_l0: @ 80FC72C
	mGetPalette 177 16 0xD0
	mGetTiles 0x17777 8
	mDisplayFrame 0x1 0x7

	mEnd 

anim_0772__v8_l0: @ 80FC750
	mGetPalette 177 16 0xD0
	mGetTiles 0x1777F 30
	mDisplayFrame 0x1 0x8

	mEnd 

anim_0772:
	.4byte anim_0772__v0_l0
	.4byte anim_0772__v1_l0
	.4byte anim_0772__v2_l0
	.4byte anim_0772__v3_l0
	.4byte anim_0772__v4_l0
	.4byte anim_0772__v5_l0
	.4byte anim_0772__v6_l0
	.4byte anim_0772__v7_l0
	.4byte anim_0772__v8_l0


anim_0773__v0_l0: @ 80FC798
	mGetPalette 177 16 0xD0
	mGetTiles 0x1779D 20
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0773__v1_l0: @ 80FC7BC
	mGetPalette 177 16 0xD0
	mGetTiles 0x177B1 20
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0773__v2_l0: @ 80FC7E0
	mGetPalette 177 16 0xD0
	mGetTiles 0x177C5 20
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0773__v3_l0: @ 80FC804
	mGetPalette 177 16 0xD0
	mGetTiles 0x177D9 30
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0773:
	.4byte anim_0773__v0_l0
	.4byte anim_0773__v1_l0
	.4byte anim_0773__v2_l0
	.4byte anim_0773__v3_l0


anim_0774__v0_l0: @ 80FC838
	mGetPalette 163 16 0x80
	mGetTiles 0x177F7 30
	mDisplayFrame 0x6 0x0

	mGetTiles 0x17815 30
	mDisplayFrame 0x6 0x1

	mGetTiles 0x17833 30
	mDisplayFrame 0x6 0x2

	mGetTiles 0x17851 30
	mDisplayFrame 0x6 0x3

anim_0774__v0_l1: @ 80FC894
	mJumpBack anim_0774__v0_l0

anim_0774:
	.4byte anim_0774__v0_l0


anim_0775__v0_l0: @ 80FC8A0
	mGetPalette 1 16 0x50
	mGetTiles 0x1786F 4
	mDisplayFrame 0x3 0x0

	mGetTiles 0x17873 4
	mDisplayFrame 0x3 0x1

	mGetTiles 0x17877 4
	mDisplayFrame 0x3 0x2

	mGetTiles 0x1787B 4
	mDisplayFrame 0x3 0x3

	mGetTiles 0x1787F 4
	mDisplayFrame 0x3 0x4

	mGetTiles 0x17883 4
	mDisplayFrame 0x3 0x5

	mGetTiles 0x17887 4
	mDisplayFrame 0x3 0x6

	mGetTiles 0x1786F 4
	mDisplayFrame 0x3 0x0

	mEnd 

anim_0775__v1_l0: @ 80FC950
	mGetPalette 1 16 0x50
	mGetTiles 0x1788B 1
	mDisplayFrame 0x3 0x7

	mGetTiles 0x1786F 4
	mDisplayFrame 0x3 0x0

	mGetTiles 0x1788C 4
	mDisplayFrame 0x3 0x8

	mGetTiles 0x17877 4
	mDisplayFrame 0x3 0x2

	mGetTiles 0x17890 4
	mDisplayFrame 0x3 0x9

	mGetTiles 0x17894 4
	mDisplayFrame 0x3 0xA

	mGetTiles 0x1786F 4
	mDisplayFrame 0x3 0x0

	mGetTiles 0x1788B 1
	mDisplayFrame 0x3 0x7

	mEnd 

anim_0775:
	.4byte anim_0775__v0_l0
	.4byte anim_0775__v1_l0


anim_0776__v0_l0: @ 80FCA08
	mGetPalette 157 16 0xB0
	mGetTiles 0x800006AB 15
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0776:
	.4byte anim_0776__v0_l0


anim_0777__v0_l0: @ 80FCA30
	mDisplayFrame 0xC 0xFFFFFFFF

	mGetPalette 1 16 0x50
	mGetTiles 0x17898 12
	mDisplayFrame 0x3 0x0

	mGetTiles 0x178A4 15
	mDisplayFrame 0x4 0x1

	mGetTiles 0x178B3 12
	mDisplayFrame 0x3 0x2

	mGetTiles 0x178BF 9
	mDisplayFrame 0x2 0x3

	mEnd 

anim_0777:
	.4byte anim_0777__v0_l0


anim_0778__v0_l0: @ 80FCA9C
	mGetPalette 68 16 0x60
	mGetTiles 0x178C8 46
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0778__v1_l0: @ 80FCAC0
	mGetPalette 178 16 0x40
	mGetTiles 0x178F6 20
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0778__v2_l0: @ 80FCAE4
	mGetPalette 179 16 0x30
	mGetTiles 0x1790A 16
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0778__v3_l0: @ 80FCB08
	mGetPalette 179 16 0x30
	mGetTiles 0x1791A 20
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0778__v4_l0: @ 80FCB2C
	mGetPalette 179 16 0x30
	mGetTiles 0x1792E 16
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0778__v5_l0: @ 80FCB50
	mGetPalette 179 16 0x30
	mGetTiles 0x1793E 32
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0778:
	.4byte anim_0778__v0_l0
	.4byte anim_0778__v1_l0
	.4byte anim_0778__v2_l0
	.4byte anim_0778__v3_l0
	.4byte anim_0778__v4_l0
	.4byte anim_0778__v5_l0


anim_0779__v0_l0: @ 80FCB8C
	mGetPalette 68 16 0x60
	mGetTiles 0x1795E 28
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0779__v1_l0: @ 80FCBB0
	mGetPalette 178 16 0x40
	mGetTiles 0x1797A 28
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0779__v2_l0: @ 80FCBD4
	mGetPalette 179 16 0x30
	mGetTiles 0x17996 8
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0779__v3_l0: @ 80FCBF8
	mGetPalette 179 16 0x30
	mGetTiles 0x1799E 28
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0779__v4_l0: @ 80FCC1C
	mGetPalette 179 16 0x30
	mGetTiles 0x179BA 20
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0779__v5_l0: @ 80FCC40
	mGetPalette 179 16 0x30
	mGetTiles 0x179CE 40
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0779:
	.4byte anim_0779__v0_l0
	.4byte anim_0779__v1_l0
	.4byte anim_0779__v2_l0
	.4byte anim_0779__v3_l0
	.4byte anim_0779__v4_l0
	.4byte anim_0779__v5_l0


anim_0780__v0_l0: @ 80FCC7C
	mGetPalette 179 16 0x30
	mGetTiles 0x179F6 90
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0780__v1_l0: @ 80FCCA0
	mGetPalette 179 16 0x30
	mGetTiles 0x17A50 90
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0780:
	.4byte anim_0780__v0_l0
	.4byte anim_0780__v1_l0


anim_0781__v0_l0: @ 80FCCCC
	mGetPalette 68 16 0x60
	mGetTiles 0x17AAA 4
	mDisplayFrame 0x3C 0x0

	mEnd 

anim_0781__v1_l0: @ 80FCCF0
	mGetPalette 68 16 0x60
	mGetTiles 0x17AAE 4
	mDisplayFrame 0x3C 0x1

	mEnd 

anim_0781__v2_l0: @ 80FCD14
	mGetPalette 68 16 0x60
	mGetTiles 0x17AB2 4
	mDisplayFrame 0x3C 0x2

	mEnd 

anim_0781__v3_l0: @ 80FCD38
	mGetPalette 68 16 0x60
	mGetTiles 0x17AB6 4
	mDisplayFrame 0x3C 0x3

	mEnd 

anim_0781__v4_l0: @ 80FCD5C
	mGetPalette 68 16 0x60
	mGetTiles 0x17ABA 4
	mDisplayFrame 0x3C 0x4

	mEnd 

anim_0781__v5_l0: @ 80FCD80
	mGetPalette 68 16 0x60
	mGetTiles 0x17ABE 4
	mDisplayFrame 0x3C 0x5

	mEnd 

anim_0781:
	.4byte anim_0781__v0_l0
	.4byte anim_0781__v1_l0
	.4byte anim_0781__v2_l0
	.4byte anim_0781__v3_l0
	.4byte anim_0781__v4_l0
	.4byte anim_0781__v5_l0


anim_0782__v0_l0: @ 80FCDBC
	mGetPalette 1 16 0x50
	mGetTiles 0x17AC2 4
	mDisplayFrame 0x8 0x0

	mGetTiles 0x17AC6 8
	mDisplayFrame 0x8 0x1

	mGetTiles 0x17ACE 8
	mDisplayFrame 0x8 0x2

	mGetTiles 0x17AD6 8
	mDisplayFrame 0x8 0x3

anim_0782__v0_l1: @ 80FCE18
	mJumpBack anim_0782__v0_l0

anim_0782:
	.4byte anim_0782__v0_l0


anim_0783__v0_l0: @ 80FCE24
	mGetPalette 179 16 0x0
	mGetTiles 0x17ADE 28
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0783:
	.4byte anim_0783__v0_l0


anim_0784__v0_l0: @ 80FCE4C
	mGetPalette 180 16 0x0
	mGetTiles 0x17AFA 100
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0784:
	.4byte anim_0784__v0_l0


anim_0785__v0_l0: @ 80FCE74
	mGetPalette 68 16 0xF0
	mGetTiles 0x17B5E 69
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0785__v1_l0: @ 80FCE98
	mGetPalette 68 16 0xF0
	mGetTiles 0x17BA3 39
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0785__v2_l0: @ 80FCEBC
	mGetPalette 68 16 0xF0
	mGetTiles 0x17BCA 51
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0785:
	.4byte anim_0785__v0_l0
	.4byte anim_0785__v1_l0
	.4byte anim_0785__v2_l0


anim_0786__v0_l0: @ 80FCEEC
	mGetPalette 179 16 0x0
	mGetTiles 0x17BFD 20
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0786:
	.4byte anim_0786__v0_l0


anim_0787__v0_l0: @ 80FCF14
	mGetPalette 180 16 0x0
	mGetTiles 0x17C11 46
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0787:
	.4byte anim_0787__v0_l0


anim_0788__v0_l0: @ 80FCF3C
	mGetPalette 32 16 0xD0
	mGetTiles 0x17C3F 4
	mDisplayFrame 0x3 0x0

	mGetTiles 0x17C43 4
	mDisplayFrame 0x3 0x1

	mGetTiles 0x17C47 4
	mDisplayFrame 0x3 0x2

anim_0788__v0_l1: @ 80FCF84
	mJumpBack anim_0788__v0_l0

anim_0788:
	.4byte anim_0788__v0_l0


anim_0789__v0_l0: @ 80FCF90
	mGetPalette 32 16 0xD0
	mGetTiles 0x17C4B 4
	mDisplayFrame 0x3 0x0

	mGetTiles 0x17C4F 4
	mDisplayFrame 0x3 0x1

	mGetTiles 0x17C53 4
	mDisplayFrame 0x3 0x2

anim_0789__v0_l1: @ 80FCFD8
	mJumpBack anim_0789__v0_l0

anim_0789:
	.4byte anim_0789__v0_l0


anim_0790__v0_l0: @ 80FCFE4
	mGetPalette 181 16 0xC0
	mGetTiles 0x17C57 10
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0790:
	.4byte anim_0790__v0_l0


anim_0791__v0_l0: @ 80FD00C
	mGetPalette 181 16 0xC0
	mGetTiles 0x17C61 21
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0791:
	.4byte anim_0791__v0_l0


anim_0792__v0_l0: @ 80FD034
	mGetPalette 182 16 0xC0
	mGetTiles 0x17C76 30
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0792:
	.4byte anim_0792__v0_l0


anim_0793__v0_l0: @ 80FD05C
	mGetPalette 181 16 0xC0
	mGetTiles 0x17C94 80
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0793:
	.4byte anim_0793__v0_l0


anim_0794__v0_l0: @ 80FD084
	mGetPalette 1 16 0x50
	mGetTiles 0x17CE4 8
	mAddHitbox 0 0x01 0xEE 0x01 0xEE
	mDisplayFrame 0x5 0x0

	mGetTiles 0x17CEC 8
	mAddHitbox 0 0x01 0xEE 0x01 0xEE
	mDisplayFrame 0x5 0x1

	mGetTiles 0x17CF4 8
	mAddHitbox 0 0x01 0xEE 0x01 0xEE
	mDisplayFrame 0x5 0x2

	mGetTiles 0x17CFC 8
	mAddHitbox 0 0x01 0xEE 0x01 0xEE
	mDisplayFrame 0x5 0x3

	mGetTiles 0x17D04 6
	mAddHitbox 0 0x01 0xEE 0x01 0xEE
	mDisplayFrame 0x5 0x4

	mGetTiles 0x17D0A 8
	mAddHitbox 0 0x01 0xEE 0x01 0xEE
	mDisplayFrame 0x5 0x5

anim_0794__v0_l1: @ 80FD150
	mJumpBack anim_0794__v0_l0

anim_0794:
	.4byte anim_0794__v0_l0


anim_0795__v0_l0: @ 80FD15C
	mGetTiles 0x17D12 16
anim_0795__v0_l1: @ 80FD168
	mGetPalette 68 16 0x60
	mAddHitbox 0 0xF4 0xF4 0x0C 0x0C
	mDisplayFrame 0x6 0x0

	mDisplayFrame 0x6 0x1

	mDisplayFrame 0x6 0x2

	mDisplayFrame 0x6 0x3

anim_0795__v0_l2: @ 80FD1A0
	mJumpBack anim_0795__v0_l1

anim_0795:
	.4byte anim_0795__v0_l0


anim_0796__v0_l0: @ 80FD1AC
	mGetTiles 0x17D22 16
	mGetPalette 68 16 0x60
	mDisplayFrame 0x4 0x0

	mDisplayFrame 0x4 0x1

	mDisplayFrame 0x4 0x2

	mDisplayFrame 0x4 0x3

	mEnd 

anim_0796:
	.4byte anim_0796__v0_l0


anim_0797__v0_l0: @ 80FD1EC
	mGetPalette 183 16 0x60
	mGetTiles 0x17D32 64
	mAddHitbox 0 0xF6 0xF6 0x0A 0x0A
	mDisplayFrame 0x2 0x0

	mGetTiles 0x17D72 64
	mDisplayFrame 0x2 0x1

	mGetTiles 0x17DB2 64
	mDisplayFrame 0x2 0x2

	mGetTiles 0x17DF2 64
	mDisplayFrame 0x2 0x3

	mGetTiles 0x17E32 64
	mDisplayFrame 0x2 0x4

	mGetTiles 0x17E72 64
	mDisplayFrame 0x2 0x5

	mGetTiles 0x17EB2 64
	mDisplayFrame 0x2 0x6

anim_0797__v0_l1: @ 80FD290
	mJumpBack anim_0797__v0_l0

anim_0797:
	.4byte anim_0797__v0_l0


anim_0798__v0_l0: @ 80FD29C
	mGetTiles 0x17EF2 24
	mGetPalette 68 16 0x60
	mDisplayFrame 0x2 0x0

	mDisplayFrame 0x2 0x1

	mDisplayFrame 0x2 0x2

	mDisplayFrame 0x2 0x3

	mDisplayFrame 0x2 0x4

	mDisplayFrame 0x2 0x5

	mEnd 

anim_0798:
	.4byte anim_0798__v0_l0


anim_0799__v0_l0: @ 80FD2EC
	mGetTiles 0x17F0A 64
anim_0799__v0_l1: @ 80FD2F8
	mGetPalette 33 16 0x70
	mAddHitbox 0 0xF7 0xF7 0x0A 0x0A
	mDisplayFrame 0x2 0x0

	mDisplayFrame 0x2 0x1

	mDisplayFrame 0x2 0x2

	mDisplayFrame 0x2 0x3

anim_0799__v0_l2: @ 80FD330
	mJumpBack anim_0799__v0_l1

anim_0799__v1_l0: @ 80FD338
	mGetTiles 0x17F4A 64
anim_0799__v1_l1: @ 80FD344
	mGetPalette 33 16 0x70
	mAddHitbox 0 0xF7 0xF7 0x0A 0x0A
	mDisplayFrame 0x2 0x4

	mDisplayFrame 0x2 0x5

	mDisplayFrame 0x2 0x6

	mDisplayFrame 0x2 0x7

anim_0799__v1_l2: @ 80FD37C
	mJumpBack anim_0799__v1_l1

anim_0799__v2_l0: @ 80FD384
	mGetTiles 0x17F8A 64
anim_0799__v2_l1: @ 80FD390
	mGetPalette 33 16 0x70
	mAddHitbox 0 0xF7 0xF7 0x0A 0x0A
	mDisplayFrame 0x2 0x8

	mDisplayFrame 0x2 0x9

	mDisplayFrame 0x2 0xA

	mDisplayFrame 0x2 0xB

anim_0799__v2_l2: @ 80FD3C8
	mJumpBack anim_0799__v2_l1

anim_0799__v3_l0: @ 80FD3D0
	mGetTiles 0x17FCA 64
anim_0799__v3_l1: @ 80FD3DC
	mGetPalette 33 16 0x70
	mAddHitbox 0 0xF7 0xF7 0x0A 0x0A
	mDisplayFrame 0x2 0xC

	mDisplayFrame 0x2 0xD

	mDisplayFrame 0x2 0xE

	mDisplayFrame 0x2 0xF

anim_0799__v3_l2: @ 80FD414
	mJumpBack anim_0799__v3_l1

anim_0799__v4_l0: @ 80FD41C
	mGetTiles 0x1800A 64
anim_0799__v4_l1: @ 80FD428
	mGetPalette 33 16 0x70
	mAddHitbox 0 0xF7 0xF7 0x0A 0x0A
	mDisplayFrame 0x2 0x10

	mDisplayFrame 0x2 0x11

	mDisplayFrame 0x2 0x12

	mDisplayFrame 0x2 0x13

anim_0799__v4_l2: @ 80FD460
	mJumpBack anim_0799__v4_l1

anim_0799__v5_l0: @ 80FD468
	mGetTiles 0x1804A 64
anim_0799__v5_l1: @ 80FD474
	mGetPalette 33 16 0x70
	mAddHitbox 0 0xF7 0xF7 0x0A 0x0A
	mDisplayFrame 0x2 0x14

	mDisplayFrame 0x2 0x15

	mDisplayFrame 0x2 0x16

	mDisplayFrame 0x2 0x17

anim_0799__v5_l2: @ 80FD4AC
	mJumpBack anim_0799__v5_l1

anim_0799:
	.4byte anim_0799__v0_l0
	.4byte anim_0799__v1_l0
	.4byte anim_0799__v2_l0
	.4byte anim_0799__v3_l0
	.4byte anim_0799__v4_l0
	.4byte anim_0799__v5_l0


anim_0800__v0_l0: @ 80FD4CC
	mGetTiles 0x1808A 160
anim_0800__v0_l1: @ 80FD4D8
	mGetPalette 116 16 0xF0
	mAddHitbox 0 0xF1 0xF1 0x0E 0x0F
	mDisplayFrame 0x3 0x0

	mDisplayFrame 0x3 0x1

	mDisplayFrame 0x3 0x2

	mDisplayFrame 0x3 0x3

	mDisplayFrame 0x3 0x4

	mDisplayFrame 0x3 0x5

	mDisplayFrame 0x3 0x6

	mDisplayFrame 0x3 0x7

	mDisplayFrame 0x3 0x8

	mDisplayFrame 0x3 0x9

anim_0800__v0_l2: @ 80FD540
	mJumpBack anim_0800__v0_l1

anim_0800:
	.4byte anim_0800__v0_l0


anim_0801__v0_l0: @ 80FD54C
	mGetTiles 0x1812A 32
anim_0801__v0_l1: @ 80FD558
	mGetPalette 33 16 0x70
	mAddHitbox 0 0xF9 0xF9 0x07 0x07
	mDisplayFrame 0x2 0x0

	mDisplayFrame 0x2 0x1

anim_0801__v0_l2: @ 80FD580
	mJumpBack anim_0801__v0_l1

anim_0801:
	.4byte anim_0801__v0_l0


anim_0802__v0_l0: @ 80FD58C
	mGetTiles 0x1814A 80
	mGetPalette 33 16 0x70
	mDisplayFrame 0x4 0x0

	mDisplayFrame 0x4 0x1

	mDisplayFrame 0x4 0x2

	mDisplayFrame 0x4 0x3

	mDisplayFrame 0x4 0x4

	mEnd 

anim_0802:
	.4byte anim_0802__v0_l0


anim_0805__v0_l0: @ 80FD5D4
	mGetPalette 0 16 0x70
	mGetTiles 0x1819A 9
	mDisplayFrame 0x3 0x0

	mGetTiles 0x181A3 9
	mDisplayFrame 0x3 0x1

anim_0805__v0_l1: @ 80FD608
	mJumpBack anim_0805__v0_l0

anim_0805__v1_l0: @ 80FD610
	mGetPalette 3 16 0x80
	mGetTiles 0x181AC 9
	mDisplayFrame 0x3 0x2

	mGetTiles 0x181B5 9
	mDisplayFrame 0x3 0x3

anim_0805__v1_l1: @ 80FD644
	mJumpBack anim_0805__v1_l0

anim_0805:
	.4byte anim_0805__v0_l0
	.4byte anim_0805__v1_l0


anim_0806__v0_l0: @ 80FD654
	mGetPalette 184 16 0x50
	mGetTiles 0x181BE 6
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0806__v1_l0: @ 80FD678
	mGetPalette 184 16 0x50
	mGetTiles 0x181C4 6
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0806__v2_l0: @ 80FD69C
	mGetPalette 184 16 0x60
	mGetTiles 0x181BE 6
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0806__v3_l0: @ 80FD6C0
	mGetPalette 184 16 0x60
	mGetTiles 0x181C4 6
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0806__v4_l0: @ 80FD6E4
	mGetPalette 184 16 0x70
	mGetTiles 0x181BE 6
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0806__v5_l0: @ 80FD708
	mGetPalette 184 16 0x70
	mGetTiles 0x181C4 6
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0806__v6_l0: @ 80FD72C
	mGetPalette 184 16 0x80
	mGetTiles 0x181BE 6
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0806__v7_l0: @ 80FD750
	mGetPalette 184 16 0x70
	mGetTiles 0x181CA 6
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0806:
	.4byte anim_0806__v0_l0
	.4byte anim_0806__v1_l0
	.4byte anim_0806__v2_l0
	.4byte anim_0806__v3_l0
	.4byte anim_0806__v4_l0
	.4byte anim_0806__v5_l0
	.4byte anim_0806__v6_l0
	.4byte anim_0806__v7_l0


anim_0807__v0_l0: @ 80FD794
	mGetPalette 185 16 0x20
	mGetTiles 0x181D0 20
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0807__v1_l0: @ 80FD7B8
	mGetPalette 185 16 0x20
	mGetTiles 0x181E4 22
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0807__v2_l0: @ 80FD7DC
	mGetPalette 185 16 0x20
	mGetTiles 0x181FA 22
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0807__v3_l0: @ 80FD800
	mGetPalette 185 16 0x20
	mGetTiles 0x18210 16
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0807__v4_l0: @ 80FD824
	mGetPalette 185 16 0x20
	mGetTiles 0x18220 4
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0807__v5_l0: @ 80FD848
	mGetPalette 185 16 0x20
	mGetTiles 0x18224 4
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0807__v6_l0: @ 80FD86C
	mGetPalette 185 16 0x20
	mGetTiles 0x18228 4
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0807__v7_l0: @ 80FD890
	mGetPalette 185 16 0x20
	mGetTiles 0x1822C 4
	mDisplayFrame 0x1 0x7

	mEnd 

anim_0807__v8_l0: @ 80FD8B4
	mGetPalette 185 16 0x20
	mGetTiles 0x18230 4
	mDisplayFrame 0x1 0x8

	mEnd 

anim_0807:
	.4byte anim_0807__v0_l0
	.4byte anim_0807__v1_l0
	.4byte anim_0807__v2_l0
	.4byte anim_0807__v3_l0
	.4byte anim_0807__v4_l0
	.4byte anim_0807__v5_l0
	.4byte anim_0807__v6_l0
	.4byte anim_0807__v7_l0
	.4byte anim_0807__v8_l0


anim_0808__v0_l0: @ 80FD8FC
	mGetPalette 186 16 0x60
	mGetTiles 0x18234 10
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0808__v1_l0: @ 80FD920
	mGetPalette 186 16 0x60
	mGetTiles 0x1823E 21
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0808__v2_l0: @ 80FD944
	mGetPalette 186 16 0x60
	mGetTiles 0x18253 51
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0808__v3_l0: @ 80FD968
	mGetPalette 186 16 0x60
	mGetTiles 0x18286 38
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0808__v4_l0: @ 80FD98C
	mGetPalette 186 16 0x60
	mGetTiles 0x182AC 84
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0808:
	.4byte anim_0808__v0_l0
	.4byte anim_0808__v1_l0
	.4byte anim_0808__v2_l0
	.4byte anim_0808__v3_l0
	.4byte anim_0808__v4_l0


anim_0809__v0_l0: @ 80FD9C4
	mGetPalette 187 16 0x60
	mGetTiles 0x18300 96
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0809:
	.4byte anim_0809__v0_l0


anim_0810__v0_l0: @ 80FD9EC
	mGetPalette 35 16 0x90
	mGetTiles 0x18360 40
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0810__v1_l0: @ 80FDA10
	mGetPalette 35 16 0x90
	mGetTiles 0x18388 64
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0810:
	.4byte anim_0810__v0_l0
	.4byte anim_0810__v1_l0


anim_0811__v0_l0: @ 80FDA3C
	mGetPalette 179 16 0x0
	mGetTiles 0x183C8 80
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0811:
	.4byte anim_0811__v0_l0


anim_0812__v0_l0: @ 80FDA64
	mGetPalette 188 16 0xC0
	mGetTiles 0x18418 38
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0812__v1_l0: @ 80FDA88
	mGetPalette 188 16 0xC0
	mGetTiles 0x1843E 30
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0812__v2_l0: @ 80FDAAC
	mGetPalette 188 16 0xC0
	mGetTiles 0x1845C 18
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0812:
	.4byte anim_0812__v0_l0
	.4byte anim_0812__v1_l0
	.4byte anim_0812__v2_l0


anim_0813__v0_l0: @ 80FDADC
	mGetPalette 189 16 0xB0
	mGetTiles 0x1846E 60
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0813__v1_l0: @ 80FDB00
	mGetPalette 189 16 0xB0
	mGetTiles 0x184AA 60
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0813:
	.4byte anim_0813__v0_l0
	.4byte anim_0813__v1_l0


anim_0814__v0_l0: @ 80FDB2C
	mGetPalette 190 16 0xF0
	mDisplayFrame 0x10 0xFFFFFFFF

	mGetPalette 191 16 0xF0
	mDisplayFrame 0x10 0xFFFFFFFF

	mGetPalette 192 16 0xF0
	mDisplayFrame 0x10 0xFFFFFFFF

	mGetPalette 193 16 0xF0
	mDisplayFrame 0x10 0xFFFFFFFF

anim_0814__v0_l1: @ 80FDB7C
	mJumpBack anim_0814__v0_l0

anim_0814:
	.4byte anim_0814__v0_l0


anim_0815__v0_l0: @ 80FDB88
	mGetPalette 194 16 0xA0
	mDisplayFrame 0x1 0xFFFFFFFF

	mGetPalette 195 16 0xA0
	mDisplayFrame 0x1 0xFFFFFFFF

	mGetPalette 196 16 0xA0
	mDisplayFrame 0x1 0xFFFFFFFF

	mGetPalette 197 16 0xA0
	mDisplayFrame 0x1 0xFFFFFFFF

	mGetPalette 198 16 0xA0
	mDisplayFrame 0x1 0xFFFFFFFF

	mGetPalette 199 16 0xA0
	mDisplayFrame 0x1 0xFFFFFFFF

	mGetPalette 200 16 0xA0
	mDisplayFrame 0x1 0xFFFFFFFF

	mGetPalette 201 16 0xA0
	mDisplayFrame 0x1 0xFFFFFFFF

anim_0815__v0_l1: @ 80FDC28
	mJumpBack anim_0815__v0_l0

anim_0815:
	.4byte anim_0815__v0_l0


anim_0816__v0_l0: @ 80FDC34
	mGetPalette 202 16 0x80
	mGetTiles 0x184E6 4
	mDisplayFrame 0x6 0x0

	mGetPalette 203 16 0x80
	mGetTiles 0x184E6 4
	mDisplayFrame 0x6 0x0

	mGetPalette 204 16 0x80
	mGetTiles 0x184E6 4
	mDisplayFrame 0x6 0x0

	mGetPalette 205 16 0x80
	mGetTiles 0x184E6 4
	mDisplayFrame 0x6 0x0

	mGetPalette 206 16 0x80
	mGetTiles 0x184E6 4
	mDisplayFrame 0x6 0x0

	mGetPalette 207 16 0x80
	mGetTiles 0x184E6 4
	mDisplayFrame 0x6 0x0

	mGetPalette 208 16 0x80
	mGetTiles 0x184E6 4
	mDisplayFrame 0x6 0x0

	mGetPalette 209 16 0x80
	mGetTiles 0x184E6 4
	mDisplayFrame 0x6 0x0

anim_0816__v0_l1: @ 80FDD34
	mJumpBack anim_0816__v0_l0

anim_0816:
	.4byte anim_0816__v0_l0


anim_0817__v0_l0: @ 80FDD40
	mGetPalette 210 16 0x30
	mGetTiles 0x184EA 4
	mDisplayFrame 0x5 0x0

	mGetPalette 211 16 0x30
	mGetTiles 0x184EA 4
	mDisplayFrame 0x5 0x0

	mGetPalette 212 16 0x30
	mGetTiles 0x184EA 4
	mDisplayFrame 0x5 0x0

	mGetPalette 213 16 0x30
	mGetTiles 0x184EA 4
	mDisplayFrame 0x5 0x0

anim_0817__v0_l1: @ 80FDDC0
	mJumpBack anim_0817__v0_l0

anim_0817:
	.4byte anim_0817__v0_l0


anim_0818__v0_l0: @ 80FDDCC
	mGetPalette 214 16 0x10
	mGetTiles 0x184EE 4
	mDisplayFrame 0x10 0x0

	mGetPalette 215 16 0x10
	mGetTiles 0x184EE 4
	mDisplayFrame 0x10 0x0

	mGetPalette 216 16 0x10
	mGetTiles 0x184EE 4
	mDisplayFrame 0x10 0x0

	mGetPalette 217 16 0x10
	mGetTiles 0x184EE 4
	mDisplayFrame 0x10 0x0

anim_0818__v0_l1: @ 80FDE4C
	mJumpBack anim_0818__v0_l0

anim_0818:
	.4byte anim_0818__v0_l0


anim_0819__v0_l0: @ 80FDE58
	mGetPalette 218 16 0x50
	mGetTiles 0x184F2 16
	mDisplayFrame 0x4 0x0

	mGetPalette 219 16 0x50
	mDisplayFrame 0x4 0x0

	mGetPalette 220 16 0x50
	mDisplayFrame 0x4 0x0

	mGetPalette 221 16 0x50
	mDisplayFrame 0x4 0x0

	mGetPalette 222 16 0x50
	mDisplayFrame 0x4 0x0

	mGetPalette 223 16 0x50
	mDisplayFrame 0x4 0x0

	mGetPalette 224 16 0x50
	mDisplayFrame 0x4 0x0

	mGetPalette 225 16 0x50
	mDisplayFrame 0x4 0x0

anim_0819__v0_l1: @ 80FDF04
	mJumpBack anim_0819__v0_l0

anim_0819:
	.4byte anim_0819__v0_l0


anim_0820__v0_l0: @ 80FDF10
	mGetPalette 226 16 0xC0
	mDisplayFrame 0x2 0xFFFFFFFF

	mGetPalette 227 16 0xC0
	mDisplayFrame 0x2 0xFFFFFFFF

	mGetPalette 228 16 0xC0
	mDisplayFrame 0x2 0xFFFFFFFF

	mGetPalette 229 16 0xC0
	mDisplayFrame 0x2 0xFFFFFFFF

	mGetPalette 230 16 0xC0
	mDisplayFrame 0x2 0xFFFFFFFF

	mGetPalette 231 16 0xC0
	mDisplayFrame 0x2 0xFFFFFFFF

	mGetPalette 232 16 0xC0
	mDisplayFrame 0x2 0xFFFFFFFF

	mGetPalette 233 16 0xC0
	mDisplayFrame 0x2 0xFFFFFFFF

anim_0820__v0_l1: @ 80FDFB0
	mJumpBack anim_0820__v0_l0

anim_0820__v1_l0: @ 80FDFB8
	mGetPalette 234 16 0xD0
	mGetTiles 0x18502 8
	mDisplayFrame 0x2 0x0

	mGetPalette 235 16 0xD0
	mDisplayFrame 0x2 0x0

	mGetPalette 236 16 0xD0
	mDisplayFrame 0x2 0x0

	mGetPalette 237 16 0xD0
	mDisplayFrame 0x2 0x0

	mGetPalette 238 16 0xD0
	mDisplayFrame 0x2 0x0

	mGetPalette 239 16 0xD0
	mDisplayFrame 0x2 0x0

	mGetPalette 240 16 0xD0
	mDisplayFrame 0x2 0x0

	mGetPalette 241 16 0xD0
	mDisplayFrame 0x2 0x0

anim_0820__v1_l1: @ 80FE064
	mJumpBack anim_0820__v1_l0

anim_0820:
	.4byte anim_0820__v0_l0
	.4byte anim_0820__v1_l0


anim_0821__v0_l0: @ 80FE074
	mGetPalette 242 16 0x0
	mDisplayFrame 0x64 0xFFFFFFFF

	mGetPalette 242 16 0x0
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 243 16 0x0
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 244 16 0x0
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 245 16 0x0
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 246 16 0x0
	mDisplayFrame 0x3 0xFFFFFFFF

anim_0821__v0_l1: @ 80FE0EC
	mJumpBack anim_0821__v0_l0

anim_0821:
	.4byte anim_0821__v0_l0


anim_0822__v0_l0: @ 80FE0F8
	mGetPalette 247 16 0x10
	mDisplayFrame 0x3C 0xFFFFFFFF

	mGetPalette 247 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 248 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 249 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 250 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 251 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

anim_0822__v0_l1: @ 80FE170
	mJumpBack anim_0822__v0_l0

anim_0822:
	.4byte anim_0822__v0_l0


anim_0823__v0_l0: @ 80FE17C
	mGetPalette 252 16 0xA0
	mDisplayFrame 0x1 0xFFFFFFFF

	mGetPalette 253 16 0xA0
	mDisplayFrame 0x1 0xFFFFFFFF

	mGetPalette 254 16 0xA0
	mDisplayFrame 0x1 0xFFFFFFFF

	mGetPalette 255 16 0xA0
	mDisplayFrame 0x1 0xFFFFFFFF

anim_0823__v0_l1: @ 80FE1CC
	mJumpBack anim_0823__v0_l0

anim_0823:
	.4byte anim_0823__v0_l0


anim_0824__v0_l0: @ 80FE1D8
	mGetPalette 256 16 0x60
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetPalette 257 16 0x60
	mDisplayFrame 0xA 0xFFFFFFFF

anim_0824__v0_l1: @ 80FE200
	mJumpBack anim_0824__v0_l0

anim_0824:
	.4byte anim_0824__v0_l0


anim_0825__v0_l0: @ 80FE20C
	mGetPalette 258 16 0x90
	mDisplayFrame 0x8 0xFFFFFFFF

	mGetPalette 259 16 0x90
	mDisplayFrame 0x8 0xFFFFFFFF

	mGetPalette 260 16 0x90
	mDisplayFrame 0x8 0xFFFFFFFF

anim_0825__v0_l1: @ 80FE248
	mJumpBack anim_0825__v0_l0

anim_0825:
	.4byte anim_0825__v0_l0


anim_0826__v0_l0: @ 80FE254
	mGetPalette 261 16 0x70
	mDisplayFrame 0x6 0xFFFFFFFF

	mGetPalette 262 16 0x70
	mDisplayFrame 0x6 0xFFFFFFFF

	mGetPalette 263 16 0x70
	mDisplayFrame 0x6 0xFFFFFFFF

	mGetPalette 264 16 0x70
	mDisplayFrame 0x6 0xFFFFFFFF

anim_0826__v0_l1: @ 80FE2A4
	mJumpBack anim_0826__v0_l0

anim_0826:
	.4byte anim_0826__v0_l0


anim_0827__v0_l0: @ 80FE2B0
	mGetPalette 265 16 0xE0
	mDisplayFrame 0x8 0xFFFFFFFF

	mGetPalette 266 16 0xE0
	mDisplayFrame 0x8 0xFFFFFFFF

	mGetPalette 267 16 0xE0
	mDisplayFrame 0x8 0xFFFFFFFF

	mGetPalette 268 16 0xE0
	mDisplayFrame 0x8 0xFFFFFFFF

	mGetPalette 269 16 0xE0
	mDisplayFrame 0x8 0xFFFFFFFF

	mGetPalette 270 16 0xE0
	mDisplayFrame 0x8 0xFFFFFFFF

	mGetPalette 271 16 0xE0
	mDisplayFrame 0x8 0xFFFFFFFF

anim_0827__v0_l1: @ 80FE33C
	mJumpBack anim_0827__v0_l0

anim_0827:
	.4byte anim_0827__v0_l0


anim_0828__v0_l0: @ 80FE348
	mGetPalette 272 16 0xA0
	mDisplayFrame 0x8 0xFFFFFFFF

	mGetPalette 273 16 0xA0
	mDisplayFrame 0x8 0xFFFFFFFF

	mGetPalette 274 16 0xA0
	mDisplayFrame 0x8 0xFFFFFFFF

anim_0828__v0_l1: @ 80FE384
	mJumpBack anim_0828__v0_l0

anim_0828:
	.4byte anim_0828__v0_l0


anim_0829__v0_l0: @ 80FE390
	mGetPalette 275 16 0x10
	mDisplayFrame 0x8 0xFFFFFFFF

	mGetPalette 276 16 0x10
	mDisplayFrame 0x8 0xFFFFFFFF

	mGetPalette 277 16 0x10
	mDisplayFrame 0x8 0xFFFFFFFF

anim_0829__v0_l1: @ 80FE3CC
	mJumpBack anim_0829__v0_l0

anim_0829:
	.4byte anim_0829__v0_l0


anim_0830__v0_l0: @ 80FE3D8
	mGetPalette 278 16 0x20
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 279 16 0x20
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 280 16 0x20
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 281 16 0x20
	mDisplayFrame 0x5 0xFFFFFFFF

anim_0830__v0_l1: @ 80FE428
	mJumpBack anim_0830__v0_l0

anim_0830:
	.4byte anim_0830__v0_l0


anim_0831__v0_l0: @ 80FE434
	mGetPalette 282 16 0xE0
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetPalette 283 16 0xE0
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetPalette 284 16 0xE0
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetPalette 285 16 0xE0
	mDisplayFrame 0xA 0xFFFFFFFF

anim_0831__v0_l1: @ 80FE484
	mJumpBack anim_0831__v0_l0

anim_0831:
	.4byte anim_0831__v0_l0


anim_0832__v0_l0: @ 80FE490
	mGetPalette 286 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 287 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 288 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 289 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 290 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 291 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 292 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

anim_0832__v0_l1: @ 80FE51C
	mJumpBack anim_0832__v0_l0

anim_0832__v1_l0: @ 80FE524
	mGetPalette 293 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 294 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 295 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 296 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 295 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 294 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

anim_0832__v1_l1: @ 80FE59C
	mJumpBack anim_0832__v1_l0

anim_0832:
	.4byte anim_0832__v0_l0
	.4byte anim_0832__v1_l0


anim_0833__v0_l0: @ 80FE5AC
	mGetPalette 297 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 298 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 299 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 300 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 301 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 302 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 303 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

anim_0833__v0_l1: @ 80FE638
	mJumpBack anim_0833__v0_l0

anim_0833__v1_l0: @ 80FE640
	mGetPalette 304 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 305 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 306 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 307 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 306 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 305 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

anim_0833__v1_l1: @ 80FE6B8
	mJumpBack anim_0833__v1_l0

anim_0833:
	.4byte anim_0833__v0_l0
	.4byte anim_0833__v1_l0


anim_0834__v0_l0: @ 80FE6C8
	mGetPalette 308 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 309 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 310 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 311 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 312 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 313 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 314 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

anim_0834__v0_l1: @ 80FE754
	mJumpBack anim_0834__v0_l0

anim_0834__v1_l0: @ 80FE75C
	mGetPalette 315 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 316 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 317 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 318 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 317 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 316 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

anim_0834__v1_l1: @ 80FE7D4
	mJumpBack anim_0834__v1_l0

anim_0834:
	.4byte anim_0834__v0_l0
	.4byte anim_0834__v1_l0


anim_0835__v0_l0: @ 80FE7E4
	mGetPalette 319 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 320 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 321 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 322 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 323 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 324 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 325 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

anim_0835__v0_l1: @ 80FE870
	mJumpBack anim_0835__v0_l0

anim_0835__v1_l0: @ 80FE878
	mGetPalette 326 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 327 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 328 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 329 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 328 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 327 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

anim_0835__v1_l1: @ 80FE8F0
	mJumpBack anim_0835__v1_l0

anim_0835:
	.4byte anim_0835__v0_l0
	.4byte anim_0835__v1_l0


anim_0836__v0_l0: @ 80FE900
	mGetPalette 330 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 331 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 332 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 333 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 334 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 335 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 336 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

anim_0836__v0_l1: @ 80FE98C
	mJumpBack anim_0836__v0_l0

anim_0836__v1_l0: @ 80FE994
	mGetPalette 337 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 338 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 339 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 340 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 339 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 338 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

anim_0836__v1_l1: @ 80FEA0C
	mJumpBack anim_0836__v1_l0

anim_0836:
	.4byte anim_0836__v0_l0
	.4byte anim_0836__v1_l0


anim_0837__v0_l0: @ 80FEA1C
	mGetPalette 341 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 342 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 343 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 344 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 345 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 346 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 347 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

anim_0837__v0_l1: @ 80FEAA8
	mJumpBack anim_0837__v0_l0

anim_0837__v1_l0: @ 80FEAB0
	mGetPalette 348 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 349 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 350 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 351 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 350 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 349 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

anim_0837__v1_l1: @ 80FEB28
	mJumpBack anim_0837__v1_l0

anim_0837:
	.4byte anim_0837__v0_l0
	.4byte anim_0837__v1_l0


anim_0838__v0_l0: @ 80FEB38
	mGetPalette 352 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 353 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 354 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 355 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 356 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 357 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 358 16 0x10
	mDisplayFrame 0x3 0xFFFFFFFF

anim_0838__v0_l1: @ 80FEBC4
	mJumpBack anim_0838__v0_l0

anim_0838__v1_l0: @ 80FEBCC
	mGetPalette 359 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 360 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 361 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 362 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 361 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

	mGetPalette 360 16 0x0
	mDisplayFrame 0x5 0xFFFFFFFF

anim_0838__v1_l1: @ 80FEC44
	mJumpBack anim_0838__v1_l0

anim_0838:
	.4byte anim_0838__v0_l0
	.4byte anim_0838__v1_l0


anim_0839__v0_l0: @ 80FEC54
	mGetPalette 363 16 0xD0
	mDisplayFrame 0x4 0xFFFFFFFF

	mGetPalette 364 16 0xD0
	mDisplayFrame 0x4 0xFFFFFFFF

	mGetPalette 365 16 0xD0
	mDisplayFrame 0x4 0xFFFFFFFF

	mGetPalette 366 16 0xD0
	mDisplayFrame 0x4 0xFFFFFFFF

	mGetPalette 367 16 0xD0
	mDisplayFrame 0x4 0xFFFFFFFF

anim_0839__v0_l1: @ 80FECB8
	mJumpBack anim_0839__v0_l0

anim_0839:
	.4byte anim_0839__v0_l0


anim_0840__v0_l0: @ 80FECC4
	mGetPalette 368 16 0xC0
	mDisplayFrame 0x7 0xFFFFFFFF

	mGetPalette 369 16 0xC0
	mDisplayFrame 0x7 0xFFFFFFFF

	mGetPalette 370 16 0xC0
	mDisplayFrame 0x7 0xFFFFFFFF

	mGetPalette 371 16 0xC0
	mDisplayFrame 0x7 0xFFFFFFFF

anim_0840__v0_l1: @ 80FED14
	mJumpBack anim_0840__v0_l0

anim_0840:
	.4byte anim_0840__v0_l0


anim_0841__v0_l0: @ 80FED20
	mGetPalette 372 16 0xA0
	mDisplayFrame 0x3 0xFFFFFFFF

	mGetPalette 373 16 0xA0
	mDisplayFrame 0x3 0xFFFFFFFF

anim_0841__v0_l1: @ 80FED48
	mJumpBack anim_0841__v0_l0

anim_0841:
	.4byte anim_0841__v0_l0


anim_0842__v0_l0: @ 80FED54
	mGetPalette 363 16 0xD0
	mDisplayFrame 0x6 0xFFFFFFFF

	mGetPalette 374 16 0xD0
	mDisplayFrame 0x6 0xFFFFFFFF

	mGetPalette 375 16 0xD0
	mDisplayFrame 0x6 0xFFFFFFFF

	mGetPalette 376 16 0xD0
	mDisplayFrame 0x6 0xFFFFFFFF

anim_0842__v0_l1: @ 80FEDA4
	mJumpBack anim_0842__v0_l0

anim_0842:
	.4byte anim_0842__v0_l0


anim_0843__v0_l0: @ 80FEDB0
	mGetPalette 377 16 0xB0
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetPalette 378 16 0xB0
	mDisplayFrame 0xA 0xFFFFFFFF

anim_0843__v0_l1: @ 80FEDD8
	mJumpBack anim_0843__v0_l0

anim_0843:
	.4byte anim_0843__v0_l0


anim_0844__v0_l0: @ 80FEDE4
	mGetPalette 379 16 0xC0
	mDisplayFrame 0x8 0xFFFFFFFF

	mGetPalette 380 16 0xC0
	mDisplayFrame 0x8 0xFFFFFFFF

	mGetPalette 381 16 0xC0
	mDisplayFrame 0x8 0xFFFFFFFF

	mGetPalette 382 16 0xC0
	mDisplayFrame 0x8 0xFFFFFFFF

anim_0844__v0_l1: @ 80FEE34
	mJumpBack anim_0844__v0_l0

anim_0844:
	.4byte anim_0844__v0_l0


anim_0845__v0_l0: @ 80FEE40
	mGetPalette 383 16 0xA0
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetPalette 384 16 0xA0
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetPalette 385 16 0xA0
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetPalette 386 16 0xA0
	mDisplayFrame 0xA 0xFFFFFFFF

anim_0845__v0_l1: @ 80FEE90
	mJumpBack anim_0845__v0_l0

anim_0845:
	.4byte anim_0845__v0_l0


anim_0846__v0_l0: @ 80FEE9C
	mGetPalette 387 16 0x40
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetPalette 388 16 0x40
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetPalette 389 16 0x40
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetPalette 390 16 0x40
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetPalette 391 16 0x40
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetPalette 392 16 0x40
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetPalette 393 16 0x40
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetPalette 394 16 0x40
	mDisplayFrame 0xA 0xFFFFFFFF

anim_0846__v0_l1: @ 80FEF3C
	mJumpBack anim_0846__v0_l0

anim_0846:
	.4byte anim_0846__v0_l0


anim_0847__v0_l0: @ 80FEF48
	mGetPalette 395 16 0x60
	mDisplayFrame 0x14 0xFFFFFFFF

	mGetPalette 396 16 0x60
	mDisplayFrame 0x14 0xFFFFFFFF

	mGetPalette 397 16 0x60
	mDisplayFrame 0x14 0xFFFFFFFF

	mGetPalette 398 16 0x60
	mDisplayFrame 0x14 0xFFFFFFFF

	mGetPalette 399 16 0x60
	mDisplayFrame 0x14 0xFFFFFFFF

	mGetPalette 400 16 0x60
	mDisplayFrame 0x14 0xFFFFFFFF

	mGetPalette 401 16 0x60
	mDisplayFrame 0x14 0xFFFFFFFF

anim_0847__v0_l1: @ 80FEFD4
	mJumpBack anim_0847__v0_l0

anim_0847:
	.4byte anim_0847__v0_l0


anim_0848__v0_l0: @ 80FEFE0
	mGetPalette 402 16 0x50
	mDisplayFrame 0x14 0xFFFFFFFF

	mGetPalette 403 16 0x50
	mDisplayFrame 0x14 0xFFFFFFFF

	mGetPalette 404 16 0x50
	mDisplayFrame 0x14 0xFFFFFFFF

	mGetPalette 405 16 0x50
	mDisplayFrame 0x14 0xFFFFFFFF

	mGetPalette 406 16 0x50
	mDisplayFrame 0x14 0xFFFFFFFF

	mGetPalette 407 16 0x50
	mDisplayFrame 0x14 0xFFFFFFFF

	mGetPalette 408 16 0x50
	mDisplayFrame 0x14 0xFFFFFFFF

	mGetPalette 409 16 0x50
	mDisplayFrame 0x14 0xFFFFFFFF

anim_0848__v0_l1: @ 80FF080
	mJumpBack anim_0848__v0_l0

anim_0848:
	.4byte anim_0848__v0_l0


anim_0849__v0_l0: @ 80FF08C
	mGetPalette 410 16 0xD0
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetPalette 411 16 0xD0
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetPalette 412 16 0xD0
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetPalette 413 16 0xD0
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetPalette 410 16 0xD0
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetPalette 414 16 0xD0
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetPalette 415 16 0xD0
	mDisplayFrame 0xA 0xFFFFFFFF

	mGetPalette 416 16 0xD0
	mDisplayFrame 0xA 0xFFFFFFFF

anim_0849__v0_l1: @ 80FF12C
	mJumpBack anim_0849__v0_l0

anim_0849:
	.4byte anim_0849__v0_l0


anim_0850__v0_l0: @ 80FF138
	mGetPalette 417 16 0xC0
	mDisplayFrame 0xE 0xFFFFFFFF

	mGetPalette 418 16 0xC0
	mDisplayFrame 0xE 0xFFFFFFFF

anim_0850__v0_l1: @ 80FF160
	mJumpBack anim_0850__v0_l0

anim_0850:
	.4byte anim_0850__v0_l0


anim_0851__v0_l0: @ 80FF16C
	mGetPalette 419 16 0xF0
	mDisplayFrame 0x6 0xFFFFFFFF

	mGetPalette 420 16 0xF0
	mDisplayFrame 0x6 0xFFFFFFFF

	mGetPalette 421 16 0xF0
	mDisplayFrame 0x6 0xFFFFFFFF

	mGetPalette 422 16 0xF0
	mDisplayFrame 0x6 0xFFFFFFFF

anim_0851__v0_l1: @ 80FF1BC
	mJumpBack anim_0851__v0_l0

anim_0851:
	.4byte anim_0851__v0_l0


anim_0852__v0_l0: @ 80FF1C8
	mGetPalette 423 256 0x0
	mDisplayFrame 0x1 0xFFFFFFFF

	mEnd 

anim_0852:
	.4byte anim_0852__v0_l0


anim_0853__v0_l0: @ 80FF1E4
	mGetPalette 439 16 0x50
	mGetTiles 0x1850A 63
	mDisplayFrame 0x5 0x0

	mGetTiles 0x18549 63
	mDisplayFrame 0x5 0x1

	mGetTiles 0x18588 63
	mDisplayFrame 0x5 0x2

	mGetTiles 0x185C7 72
	mDisplayFrame 0x5 0x3

	mGetTiles 0x1860F 63
	mDisplayFrame 0x5 0x4

	mGetTiles 0x1864E 63
	mDisplayFrame 0x5 0x5

	mGetTiles 0x1868D 54
	mDisplayFrame 0x5 0x6

	mGetTiles 0x1864E 63
	mDisplayFrame 0x5 0x5

anim_0853__v0_l1: @ 80FF290
	mJumpBack anim_0853__v0_l0

anim_0853:
	.4byte anim_0853__v0_l0


anim_0854__v0_l0: @ 80FF29C
	mGetPalette 439 16 0x50
	mGetTiles 0x186C3 36
	mDisplayFrame 0x5 0x0

	mGetTiles 0x186E7 54
	mDisplayFrame 0x5 0x1

	mGetTiles 0x1871D 54
	mDisplayFrame 0x5 0x2

	mGetTiles 0x18753 63
	mDisplayFrame 0x5 0x3

	mGetTiles 0x18792 54
	mDisplayFrame 0x5 0x4

	mGetTiles 0x187C8 54
	mDisplayFrame 0x5 0x5

	mGetTiles 0x187FE 36
	mDisplayFrame 0x5 0x6

	mGetTiles 0x18822 54
	mDisplayFrame 0x5 0x7

	mGetTiles 0x18858 63
	mDisplayFrame 0x5 0x8

	mGetTiles 0x18897 63
	mDisplayFrame 0x5 0x9

	mGetTiles 0x188D6 63
	mDisplayFrame 0x5 0xA

	mGetTiles 0x18915 54
	mDisplayFrame 0x5 0xB

	mGetTiles 0x186C3 36
	mDisplayFrame 0x5 0x0

	mGetTiles 0x1894B 54
	mDisplayFrame 0x5 0xC

	mGetTiles 0x18981 54
	mDisplayFrame 0x5 0xD

	mGetTiles 0x189B7 63
	mDisplayFrame 0x5 0xE

	mGetTiles 0x18792 54
	mDisplayFrame 0x5 0x4

	mGetTiles 0x187C8 54
	mDisplayFrame 0x5 0x5

	mGetTiles 0x187FE 36
	mDisplayFrame 0x5 0x6

	mGetTiles 0x18822 54
	mDisplayFrame 0x5 0x7

	mGetTiles 0x18858 63
	mDisplayFrame 0x5 0x8

	mGetTiles 0x18897 63
	mDisplayFrame 0x5 0x9

	mGetTiles 0x188D6 63
	mDisplayFrame 0x5 0xA

	mGetTiles 0x18915 54
	mDisplayFrame 0x5 0xB

anim_0854__v0_l1: @ 80FF488
	mJumpBack anim_0854__v0_l0

anim_0854:
	.4byte anim_0854__v0_l0


anim_0855__v0_l0: @ 80FF494
	mGetPalette 439 16 0x50
	mGetTiles 0x189F6 99
	mDisplayFrame 0x5 0x0

	mGetTiles 0x18A59 90
	mDisplayFrame 0x5 0x1

	mGetTiles 0x18AB3 90
	mDisplayFrame 0x5 0x2

	mGetTiles 0x18B0D 99
	mDisplayFrame 0x5 0x3

	mGetTiles 0x18B70 90
	mDisplayFrame 0x5 0x4

	mGetTiles 0x18BCA 99
	mDisplayFrame 0x5 0x5

	mGetTiles 0x18C2D 99
	mDisplayFrame 0x5 0x6

	mGetTiles 0x18C90 99
	mDisplayFrame 0x5 0x7

anim_0855__v0_l1: @ 80FF540
	mJumpBack anim_0855__v0_l0

anim_0855__v1_l0: @ 80FF548
	mGetPalette 439 16 0x50
	mGetTiles 0x18CF3 72
	mDisplayFrame 0x5 0x8

	mEnd 

anim_0855:
	.4byte anim_0855__v0_l0
	.4byte anim_0855__v1_l0


anim_0856__v0_l0: @ 80FF574
	mGetPalette 439 16 0x50
	mGetTiles 0x18D3B 32
	mDisplayFrame 0x6 0x0

	mGetTiles 0x18D5B 32
	mDisplayFrame 0x4 0x1

	mGetTiles 0x18D7B 48
	mDisplayFrame 0x4 0x2

	mGetTiles 0x18DAB 48
	mDisplayFrame 0x4 0x3

	mGetTiles 0x18DDB 48
	mDisplayFrame 0xC 0x4

	mEnd 

anim_0856:
	.4byte anim_0856__v0_l0


anim_0857__v0_l0: @ 80FF5EC
	mGetPalette 68 16 0x70
	mGetTiles 0x18E0B 4
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0857:
	.4byte anim_0857__v0_l0


anim_0858__v0_l0: @ 80FF614
	mGetPalette 68 16 0x20
	mGetTiles 0x18E0F 28
	mDisplayFrame 0x8 0x0

	mGetTiles 0x18E2B 28
	mDisplayFrame 0x8 0x1

	mGetTiles 0x18E47 28
	mDisplayFrame 0x8 0x2

	mGetTiles 0x18E63 28
	mDisplayFrame 0x8 0x3

anim_0858__v0_l1: @ 80FF670
	mJumpBack anim_0858__v0_l0

anim_0858:
	.4byte anim_0858__v0_l0


anim_0859__v0_l0: @ 80FF67C
	mGetPalette 440 16 0x20
	mGetTiles 0x18E7F 8
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0859:
	.4byte anim_0859__v0_l0


anim_0860__v0_l0: @ 80FF6A4
	mGetPalette 179 16 0x0
	mGetTiles 0x18E87 12
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0860:
	.4byte anim_0860__v0_l0


anim_0861__v0_l0: @ 80FF6CC
	mGetPalette 441 16 0x0
	mGetTiles 0x18E93 18
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0861__v1_l0: @ 80FF6F0
	mGetPalette 441 16 0x0
	mGetTiles 0x18EA5 10
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0861__v2_l0: @ 80FF714
	mGetPalette 441 16 0x0
	mGetTiles 0x18EAF 14
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0861__v3_l0: @ 80FF738
	mGetPalette 441 16 0x0
	mGetTiles 0x18EBD 26
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0861:
	.4byte anim_0861__v0_l0
	.4byte anim_0861__v1_l0
	.4byte anim_0861__v2_l0
	.4byte anim_0861__v3_l0


anim_0862__v0_l0: @ 80FF76C
	mGetPalette 442 16 0x0
	mGetTiles 0x18ED7 20
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0862__v1_l0: @ 80FF790
	mGetPalette 442 16 0x0
	mGetTiles 0x18EEB 20
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0862__v2_l0: @ 80FF7B4
	mGetPalette 442 16 0x0
	mGetTiles 0x18EFF 16
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0862__v3_l0: @ 80FF7D8
	mGetPalette 442 16 0x0
	mGetTiles 0x18F0F 32
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0862:
	.4byte anim_0862__v0_l0
	.4byte anim_0862__v1_l0
	.4byte anim_0862__v2_l0
	.4byte anim_0862__v3_l0


anim_0863__v0_l0: @ 80FF80C
	mGetPalette 179 16 0x0
	mGetTiles 0x18F2F 26
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0863__v1_l0: @ 80FF830
	mGetPalette 179 16 0x0
	mGetTiles 0x18F49 12
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0863__v2_l0: @ 80FF854
	mGetPalette 179 16 0x0
	mGetTiles 0x18F55 16
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0863__v3_l0: @ 80FF878
	mGetPalette 179 16 0x0
	mGetTiles 0x18F65 24
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0863__v4_l0: @ 80FF89C
	mGetPalette 179 16 0x0
	mGetTiles 0x18F7D 20
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0863__v5_l0: @ 80FF8C0
	mGetPalette 179 16 0x0
	mGetTiles 0x18F91 30
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0863__v6_l0: @ 80FF8E4
	mGetPalette 179 16 0x0
	mGetTiles 0x18FAF 36
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0863__v7_l0: @ 80FF908
	mGetPalette 179 16 0x0
	mGetTiles 0x18FD3 8
	mDisplayFrame 0x1 0x7

	mEnd 

anim_0863__v8_l0: @ 80FF92C
	mGetPalette 179 16 0x0
	mGetTiles 0x18FDB 6
	mDisplayFrame 0x1 0x8

	mEnd 

anim_0863__v9_l0: @ 80FF950
	mGetPalette 179 16 0x0
	mGetTiles 0x18FE1 8
	mDisplayFrame 0x1 0x9

	mEnd 

anim_0863__v10_l0: @ 80FF974
	mGetPalette 179 16 0x0
	mGetTiles 0x18FE9 16
	mDisplayFrame 0x1 0xA

	mEnd 

anim_0863__v11_l0: @ 80FF998
	mGetPalette 179 16 0x0
	mGetTiles 0x18FF9 16
	mDisplayFrame 0x1 0xB

	mEnd 

anim_0863__v12_l0: @ 80FF9BC
	mGetPalette 179 16 0x0
	mGetTiles 0x19009 10
	mDisplayFrame 0x1 0xC

	mEnd 

anim_0863__v13_l0: @ 80FF9E0
	mGetPalette 179 16 0x0
	mGetTiles 0x18FF9 16
	mDisplayFrame 0x1 0xB

	mEnd 

anim_0863__v14_l0: @ 80FFA04
	mGetPalette 179 16 0x0
	mGetTiles 0x19013 16
	mDisplayFrame 0x1 0xD

	mEnd 

anim_0863__v15_l0: @ 80FFA28
	mGetPalette 178 16 0x10
	mDisplayFrame 0x1 0xFFFFFFFF

	mEnd 

anim_0863:
	.4byte anim_0863__v0_l0
	.4byte anim_0863__v1_l0
	.4byte anim_0863__v2_l0
	.4byte anim_0863__v3_l0
	.4byte anim_0863__v4_l0
	.4byte anim_0863__v5_l0
	.4byte anim_0863__v6_l0
	.4byte anim_0863__v7_l0
	.4byte anim_0863__v8_l0
	.4byte anim_0863__v9_l0
	.4byte anim_0863__v10_l0
	.4byte anim_0863__v11_l0
	.4byte anim_0863__v12_l0
	.4byte anim_0863__v13_l0
	.4byte anim_0863__v14_l0
	.4byte anim_0863__v15_l0


anim_0864__v0_l0: @ 80FFA80
	mGetPalette 443 16 0x60
	mGetTiles 0x19023 22
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0864__v1_l0: @ 80FFAA4
	mGetPalette 443 16 0x0
	mGetTiles 0x19039 51
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0864__v2_l0: @ 80FFAC8
	mGetPalette 443 16 0xF0
	mGetTiles 0x1906C 26
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0864:
	.4byte anim_0864__v0_l0
	.4byte anim_0864__v1_l0
	.4byte anim_0864__v2_l0


anim_0865__v0_l0: @ 80FFAF8
	mGetPalette 444 16 0x0
	mGetTiles 0x19086 16
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0865__v1_l0: @ 80FFB1C
	mGetPalette 444 16 0x0
	mDisplayFrame 0x1 0xFFFFFFFF

	mEnd 

anim_0865__v2_l0: @ 80FFB34
	mGetPalette 444 16 0x0
	mGetTiles 0x19096 24
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0865:
	.4byte anim_0865__v0_l0
	.4byte anim_0865__v1_l0
	.4byte anim_0865__v2_l0


anim_0866__v0_l0: @ 80FFB64
	mGetPalette 179 16 0x0
	mGetTiles 0x190AE 22
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0866__v1_l0: @ 80FFB88
	mGetPalette 179 16 0x0
	mGetTiles 0x190C4 12
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0866__v2_l0: @ 80FFBAC
	mGetPalette 179 16 0x0
	mGetTiles 0x190D0 14
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0866__v3_l0: @ 80FFBD0
	mGetPalette 179 16 0x0
	mGetTiles 0x190DE 18
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0866__v4_l0: @ 80FFBF4
	mGetPalette 179 16 0x0
	mGetTiles 0x190F0 20
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0866__v5_l0: @ 80FFC18
	mGetPalette 179 16 0x0
	mGetTiles 0x19104 16
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0866__v6_l0: @ 80FFC3C
	mGetPalette 179 16 0x0
	mGetTiles 0x19114 16
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0866__v7_l0: @ 80FFC60
	mGetPalette 179 16 0x0
	mGetTiles 0x19124 8
	mDisplayFrame 0x1 0x7

	mEnd 

anim_0866__v8_l0: @ 80FFC84
	mGetPalette 179 16 0x0
	mGetTiles 0x1912C 6
	mDisplayFrame 0x1 0x8

	mEnd 

anim_0866__v9_l0: @ 80FFCA8
	mGetPalette 179 16 0x0
	mGetTiles 0x19132 6
	mDisplayFrame 0x1 0x9

	mEnd 

anim_0866__v10_l0: @ 80FFCCC
	mGetPalette 179 16 0x0
	mGetTiles 0x19138 12
	mDisplayFrame 0x1 0xA

	mEnd 

anim_0866__v11_l0: @ 80FFCF0
	mGetPalette 179 16 0x0
	mGetTiles 0x19144 8
	mDisplayFrame 0x1 0xB

	mEnd 

anim_0866__v12_l0: @ 80FFD14
	mGetPalette 179 16 0x0
	mGetTiles 0x1914C 12
	mDisplayFrame 0x1 0xC

	mEnd 

anim_0866__v13_l0: @ 80FFD38
	mGetPalette 179 16 0x0
	mGetTiles 0x19158 12
	mDisplayFrame 0x1 0xD

	mEnd 

anim_0866__v14_l0: @ 80FFD5C
	mGetPalette 179 16 0x0
	mGetTiles 0x19164 12
	mDisplayFrame 0x1 0xE

	mEnd 

anim_0866__v15_l0: @ 80FFD80
	mGetPalette 178 16 0x10
	mDisplayFrame 0x1 0xFFFFFFFF

	mEnd 

anim_0866:
	.4byte anim_0866__v0_l0
	.4byte anim_0866__v1_l0
	.4byte anim_0866__v2_l0
	.4byte anim_0866__v3_l0
	.4byte anim_0866__v4_l0
	.4byte anim_0866__v5_l0
	.4byte anim_0866__v6_l0
	.4byte anim_0866__v7_l0
	.4byte anim_0866__v8_l0
	.4byte anim_0866__v9_l0
	.4byte anim_0866__v10_l0
	.4byte anim_0866__v11_l0
	.4byte anim_0866__v12_l0
	.4byte anim_0866__v13_l0
	.4byte anim_0866__v14_l0
	.4byte anim_0866__v15_l0


anim_0867__v0_l0: @ 80FFDD8
	mGetPalette 445 16 0x30
	mGetTiles 0x19170 12
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0867:
	.4byte anim_0867__v0_l0


anim_0868__v0_l0: @ 80FFE00
	mGetPalette 179 16 0x20
	mGetTiles 0x1917C 18
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0868__v1_l0: @ 80FFE24
	mGetPalette 179 16 0x20
	mGetTiles 0x1918E 8
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0868__v2_l0: @ 80FFE48
	mGetPalette 179 16 0x20
	mGetTiles 0x19196 4
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0868:
	.4byte anim_0868__v0_l0
	.4byte anim_0868__v1_l0
	.4byte anim_0868__v2_l0


anim_0869__v0_l0: @ 80FFE78
	mGetPalette 446 16 0x0
	mGetTiles 0x1919A 18
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0869__v1_l0: @ 80FFE9C
	mGetPalette 446 16 0x0
	mGetTiles 0x191AC 8
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0869__v2_l0: @ 80FFEC0
	mGetPalette 446 16 0x0
	mGetTiles 0x191B4 14
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0869:
	.4byte anim_0869__v0_l0
	.4byte anim_0869__v1_l0
	.4byte anim_0869__v2_l0


anim_0870__v0_l0: @ 80FFEF0
	mGetPalette 68 16 0x20
	mGetTiles 0x191C2 8
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0870__v1_l0: @ 80FFF14
	mGetPalette 68 16 0x20
	mGetTiles 0x191CA 8
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0870__v2_l0: @ 80FFF38
	mGetPalette 68 16 0x80
	mGetTiles 0x191D2 1
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0870:
	.4byte anim_0870__v0_l0
	.4byte anim_0870__v1_l0
	.4byte anim_0870__v2_l0


anim_0871__v0_l0: @ 80FFF68
	mGetPalette 68 16 0x20
	mGetTiles 0x191D3 28
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0871:
	.4byte anim_0871__v0_l0


anim_0872__v0_l0: @ 80FFF90
	mGetPalette 447 16 0x0
	mGetTiles 0x191EF 8
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0872:
	.4byte anim_0872__v0_l0


anim_0873__v0_l0: @ 80FFFB8
	mGetPalette 68 16 0x20
	mGetTiles 0x191F7 18
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0873:
	.4byte anim_0873__v0_l0


anim_0874__v0_l0: @ 80FFFE0
	mGetPalette 448 16 0x70
	mGetTiles 0x19209 96
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0874:
	.4byte anim_0874__v0_l0


anim_0875__v0_l0: @ 8100008
	mGetPalette 449 16 0x60
	mGetTiles 0x19269 20
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0875:
	.4byte anim_0875__v0_l0


anim_0876__v0_l0: @ 8100030
	mGetPalette 450 16 0x70
	mGetTiles 0x1927D 64
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0876:
	.4byte anim_0876__v0_l0


anim_0877__v0_l0: @ 8100058
	mGetPalette 451 16 0x40
	mGetTiles 0x192BD 144
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0877__v1_l0: @ 810007C
	mGetPalette 451 16 0x40
	mGetTiles 0x1934D 144
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0877__v2_l0: @ 81000A0
	mGetPalette 451 16 0x40
	mGetTiles 0x193DD 144
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0877__v3_l0: @ 81000C4
	mGetPalette 451 16 0x40
	mGetTiles 0x1946D 144
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0877:
	.4byte anim_0877__v0_l0
	.4byte anim_0877__v1_l0
	.4byte anim_0877__v2_l0
	.4byte anim_0877__v3_l0


anim_0878__v0_l0: @ 81000F8
	mGetPalette 179 16 0x0
	mGetTiles 0x194FD 18
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0878__v1_l0: @ 810011C
	mGetPalette 179 16 0x0
	mGetTiles 0x1950F 16
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0878__v2_l0: @ 8100140
	mGetPalette 179 16 0x0
	mGetTiles 0x1951F 16
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0878:
	.4byte anim_0878__v0_l0
	.4byte anim_0878__v1_l0
	.4byte anim_0878__v2_l0


anim_0879__v0_l0: @ 8100170
	mGetPalette 179 16 0x0
	mGetTiles 0x1952F 115
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0879__v1_l0: @ 8100194
	mGetPalette 179 16 0x0
	mGetTiles 0x195A2 130
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0879__v2_l0: @ 81001B8
	mGetPalette 179 16 0x0
	mGetTiles 0x19624 120
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0879:
	.4byte anim_0879__v0_l0
	.4byte anim_0879__v1_l0
	.4byte anim_0879__v2_l0


anim_0880__v0_l0: @ 81001E8
	mGetPalette 179 16 0x0
	mGetTiles 0x1969C 40
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0880__v1_l0: @ 810020C
	mGetPalette 179 16 0x0
	mGetTiles 0x196C4 34
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0880__v2_l0: @ 8100230
	mGetPalette 179 16 0x0
	mGetTiles 0x196E6 42
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0880__v3_l0: @ 8100254
	mGetPalette 179 16 0x0
	mGetTiles 0x19710 36
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0880__v4_l0: @ 8100278
	mGetPalette 179 16 0x0
	mGetTiles 0x19734 36
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0880__v5_l0: @ 810029C
	mGetPalette 179 16 0x0
	mGetTiles 0x19758 34
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0880__v6_l0: @ 81002C0
	mGetPalette 179 16 0x0
	mGetTiles 0x1977A 36
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0880__v7_l0: @ 81002E4
	mGetPalette 179 16 0x0
	mGetTiles 0x1979E 16
	mDisplayFrame 0x1 0x7

	mEnd 

anim_0880__v8_l0: @ 8100308
	mGetPalette 179 16 0x0
	mGetTiles 0x197AE 30
	mDisplayFrame 0x1 0x8

	mEnd 

anim_0880__v9_l0: @ 810032C
	mGetPalette 179 16 0xF0
	mGetTiles 0x197CC 20
	mDisplayFrame 0x1 0x9

	mEnd 

anim_0880__v10_l0: @ 8100350
	mGetPalette 179 16 0xF0
	mGetTiles 0x197E0 38
	mDisplayFrame 0x1 0xA

	mEnd 

anim_0880__v11_l0: @ 8100374
	mGetPalette 179 16 0xF0
	mGetTiles 0x19806 24
	mDisplayFrame 0x1 0xB

	mEnd 

anim_0880__v12_l0: @ 8100398
	mGetPalette 179 16 0xF0
	mGetTiles 0x1981E 8
	mDisplayFrame 0x1 0xC

	mEnd 

anim_0880:
	.4byte anim_0880__v0_l0
	.4byte anim_0880__v1_l0
	.4byte anim_0880__v2_l0
	.4byte anim_0880__v3_l0
	.4byte anim_0880__v4_l0
	.4byte anim_0880__v5_l0
	.4byte anim_0880__v6_l0
	.4byte anim_0880__v7_l0
	.4byte anim_0880__v8_l0
	.4byte anim_0880__v9_l0
	.4byte anim_0880__v10_l0
	.4byte anim_0880__v11_l0
	.4byte anim_0880__v12_l0


anim_0881__v0_l0: @ 81003F0
	mGetPalette 135 16 0x20
	mGetTiles 0x19826 24
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0881__v1_l0: @ 8100414
	mGetPalette 135 16 0x20
	mGetTiles 0x1983E 21
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0881__v2_l0: @ 8100438
	mGetPalette 135 16 0x20
	mGetTiles 0x19853 16
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0881__v3_l0: @ 810045C
	mGetPalette 135 16 0x20
	mGetTiles 0x19863 16
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0881__v4_l0: @ 8100480
	mGetPalette 135 16 0x20
	mGetTiles 0x19873 16
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0881__v5_l0: @ 81004A4
	mGetPalette 135 16 0x20
	mGetTiles 0x19883 16
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0881__v6_l0: @ 81004C8
	mGetPalette 135 16 0x20
	mGetTiles 0x19893 16
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0881__v7_l0: @ 81004EC
	mGetPalette 135 16 0x20
	mGetTiles 0x198A3 16
	mDisplayFrame 0x1 0x7

	mEnd 

anim_0881__v8_l0: @ 8100510
	mGetPalette 452 16 0x40
	mGetTiles 0x198B3 20
	mDisplayFrame 0x1 0x8

	mEnd 

anim_0881__v9_l0: @ 8100534
	mGetPalette 452 16 0x40
	mGetTiles 0x198C7 20
	mDisplayFrame 0x1 0x9

	mEnd 

anim_0881__v10_l0: @ 8100558
	mGetPalette 452 16 0x40
	mGetTiles 0x198DB 18
	mDisplayFrame 0x1 0xA

	mEnd 

anim_0881__v11_l0: @ 810057C
	mGetPalette 452 16 0x40
	mGetTiles 0x198ED 20
	mDisplayFrame 0x1 0xB

	mEnd 

anim_0881:
	.4byte anim_0881__v0_l0
	.4byte anim_0881__v1_l0
	.4byte anim_0881__v2_l0
	.4byte anim_0881__v3_l0
	.4byte anim_0881__v4_l0
	.4byte anim_0881__v5_l0
	.4byte anim_0881__v6_l0
	.4byte anim_0881__v7_l0
	.4byte anim_0881__v8_l0
	.4byte anim_0881__v9_l0
	.4byte anim_0881__v10_l0
	.4byte anim_0881__v11_l0


anim_0882__v0_l0: @ 81005D0
	mGetPalette 453 16 0x0
	mGetTiles 0x19901 10
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0882__v1_l0: @ 81005F4
	mGetPalette 453 16 0x0
	mGetTiles 0x1990B 12
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0882:
	.4byte anim_0882__v0_l0
	.4byte anim_0882__v1_l0


anim_0883__v0_l0: @ 8100620
	mGetPalette 454 16 0x0
	mGetTiles 0x19917 30
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0883__v1_l0: @ 8100644
	mGetPalette 454 16 0x0
	mGetTiles 0x19935 32
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0883__v2_l0: @ 8100668
	mGetPalette 454 16 0x0
	mGetTiles 0x19955 30
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0883__v3_l0: @ 810068C
	mGetPalette 454 16 0x0
	mGetTiles 0x19973 30
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0883__v4_l0: @ 81006B0
	mGetPalette 454 16 0x0
	mGetTiles 0x19991 34
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0883__v5_l0: @ 81006D4
	mGetPalette 454 16 0x0
	mGetTiles 0x199B3 26
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0883__v6_l0: @ 81006F8
	mGetPalette 454 16 0x0
	mGetTiles 0x199CD 34
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0883__v7_l0: @ 810071C
	mGetPalette 454 16 0x0
	mGetTiles 0x199EF 12
	mDisplayFrame 0x1 0x7

	mEnd 

anim_0883__v8_l0: @ 8100740
	mGetPalette 454 16 0x0
	mGetTiles 0x199FB 22
	mDisplayFrame 0x1 0x8

	mEnd 

anim_0883__v9_l0: @ 8100764
	mGetPalette 454 16 0xF0
	mGetTiles 0x19A11 18
	mDisplayFrame 0x1 0x9

	mEnd 

anim_0883__v10_l0: @ 8100788
	mGetPalette 454 16 0xF0
	mGetTiles 0x19A23 18
	mDisplayFrame 0x1 0xA

	mEnd 

anim_0883__v11_l0: @ 81007AC
	mGetPalette 454 16 0xF0
	mGetTiles 0x19A35 18
	mDisplayFrame 0x1 0xB

	mEnd 

anim_0883__v12_l0: @ 81007D0
	mGetPalette 454 16 0xF0
	mGetTiles 0x19A47 10
	mDisplayFrame 0x1 0xC

	mEnd 

anim_0883:
	.4byte anim_0883__v0_l0
	.4byte anim_0883__v1_l0
	.4byte anim_0883__v2_l0
	.4byte anim_0883__v3_l0
	.4byte anim_0883__v4_l0
	.4byte anim_0883__v5_l0
	.4byte anim_0883__v6_l0
	.4byte anim_0883__v7_l0
	.4byte anim_0883__v8_l0
	.4byte anim_0883__v9_l0
	.4byte anim_0883__v10_l0
	.4byte anim_0883__v11_l0
	.4byte anim_0883__v12_l0


anim_0884__v0_l0: @ 8100828
	mGetPalette 179 16 0x0
	mGetTiles 0x19A51 10
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0884__v1_l0: @ 810084C
	mGetPalette 179 16 0x0
	mGetTiles 0x19A5B 10
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0884__v2_l0: @ 8100870
	mGetPalette 179 16 0x0
	mGetTiles 0x19A65 12
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0884__v3_l0: @ 8100894
	mGetPalette 68 16 0x60
	mGetTiles 0x19A71 8
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0884__v4_l0: @ 81008B8
	mGetPalette 68 16 0x60
	mGetTiles 0x19A79 24
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0884:
	.4byte anim_0884__v0_l0
	.4byte anim_0884__v1_l0
	.4byte anim_0884__v2_l0
	.4byte anim_0884__v3_l0
	.4byte anim_0884__v4_l0


anim_0885__v0_l0: @ 81008F0
	mGetPalette 455 16 0x0
	mGetTiles 0x19A91 18
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0885__v1_l0: @ 8100914
	mGetPalette 455 16 0x0
	mGetTiles 0x19AA3 18
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0885__v2_l0: @ 8100938
	mGetPalette 455 16 0x0
	mGetTiles 0x19AB5 22
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0885__v3_l0: @ 810095C
	mGetPalette 455 16 0x0
	mGetTiles 0x19ACB 18
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0885__v4_l0: @ 8100980
	mGetPalette 455 16 0x0
	mGetTiles 0x19ADD 26
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0885__v5_l0: @ 81009A4
	mGetPalette 455 16 0x0
	mGetTiles 0x19AF7 10
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0885__v6_l0: @ 81009C8
	mGetPalette 455 16 0x0
	mGetTiles 0x19B01 14
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0885__v7_l0: @ 81009EC
	mGetPalette 455 16 0x0
	mGetTiles 0x19B0F 10
	mDisplayFrame 0x1 0x7

	mEnd 

anim_0885__v8_l0: @ 8100A10
	mGetPalette 455 16 0x0
	mGetTiles 0x19B19 10
	mDisplayFrame 0x1 0x8

	mEnd 

anim_0885__v9_l0: @ 8100A34
	mGetPalette 455 16 0x0
	mGetTiles 0x19B23 10
	mDisplayFrame 0x1 0x9

	mEnd 

anim_0885__v10_l0: @ 8100A58
	mGetPalette 455 16 0x0
	mGetTiles 0x19B2D 10
	mDisplayFrame 0x1 0xA

	mEnd 

anim_0885:
	.4byte anim_0885__v0_l0
	.4byte anim_0885__v1_l0
	.4byte anim_0885__v2_l0
	.4byte anim_0885__v3_l0
	.4byte anim_0885__v4_l0
	.4byte anim_0885__v5_l0
	.4byte anim_0885__v6_l0
	.4byte anim_0885__v7_l0
	.4byte anim_0885__v8_l0
	.4byte anim_0885__v9_l0
	.4byte anim_0885__v10_l0


anim_0886__v0_l0: @ 8100AA8
	mGetPalette 456 16 0x90
	mGetTiles 0x19B37 35
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0886:
	.4byte anim_0886__v0_l0


anim_0887__v0_l0: @ 8100AD0
	mGetPalette 457 16 0x90
	mGetTiles 0x19B5A 40
	mDisplayFrame 0xF 0x0

	mGetTiles 0x19B82 40
	mDisplayFrame 0xF 0x1

	mGetTiles 0x19BAA 35
	mDisplayFrame 0xF 0x2

anim_0887__v0_l1: @ 8100B18
	mJumpBack anim_0887__v0_l0

anim_0887__v1_l0: @ 8100B20
	mGetPalette 457 16 0x90
	mGetTiles 0x19BCD 35
	mDisplayFrame 0xF 0x3

	mGetTiles 0x19BF0 35
	mDisplayFrame 0xF 0x4

	mGetTiles 0x19C13 35
	mDisplayFrame 0xF 0x5

anim_0887__v1_l1: @ 8100B68
	mJumpBack anim_0887__v1_l0

anim_0887__v2_l0: @ 8100B70
	mGetPalette 457 16 0x90
	mGetTiles 0x19C36 40
	mDisplayFrame 0xF 0x6

	mGetTiles 0x19C5E 40
	mDisplayFrame 0xF 0x7

	mGetTiles 0x19C86 40
	mDisplayFrame 0xF 0x8

anim_0887__v2_l1: @ 8100BB8
	mJumpBack anim_0887__v2_l0

anim_0887__v3_l0: @ 8100BC0
	mGetPalette 457 16 0x90
	mGetTiles 0x19CAE 30
	mDisplayFrame 0xF 0x9

	mGetTiles 0x19CCC 30
	mDisplayFrame 0x1E 0xA

	mGetTiles 0x19CAE 30
	mDisplayFrame 0xF 0x9

anim_0887__v3_l1: @ 8100C08
	mJumpBack anim_0887__v3_l0

anim_0887__v4_l0: @ 8100C10
	mGetPalette 457 16 0x90
	mGetTiles 0x19CEA 30
	mDisplayFrame 0x8 0xB

	mGetTiles 0x19D08 30
	mDisplayFrame 0x8 0xC

	mGetTiles 0x19CEA 30
	mDisplayFrame 0x8 0xB

anim_0887__v4_l1: @ 8100C58
	mJumpBack anim_0887__v4_l0

anim_0887__v5_l0: @ 8100C60
	mGetPalette 457 16 0x90
	mGetTiles 0x19D26 40
	mDisplayFrame 0xF 0xD

	mGetTiles 0x19D4E 40
	mDisplayFrame 0x1E 0xE

	mGetTiles 0x19D76 35
	mDisplayFrame 0xF 0xF

anim_0887__v5_l1: @ 8100CA8
	mJumpBack anim_0887__v5_l0

anim_0887__v6_l0: @ 8100CB0
	mGetPalette 457 16 0x90
	mGetTiles 0x19D99 30
	mDisplayFrame 0xF 0x10

	mGetTiles 0x19DB7 30
	mDisplayFrame 0x1E 0x11

	mGetTiles 0x19DD5 30
	mDisplayFrame 0xF 0x12

anim_0887__v6_l1: @ 8100CF8
	mJumpBack anim_0887__v6_l0

anim_0887:
	.4byte anim_0887__v0_l0
	.4byte anim_0887__v1_l0
	.4byte anim_0887__v2_l0
	.4byte anim_0887__v3_l0
	.4byte anim_0887__v4_l0
	.4byte anim_0887__v5_l0
	.4byte anim_0887__v6_l0


anim_0888__v0_l0: @ 8100D1C
	mGetPalette 456 16 0x90
	mGetTiles 0x19DF3 35
	mDisplayFrame 0x32 0x0

	mGetTiles 0x19E16 35
	mDisplayFrame 0x8 0x1

	mGetTiles 0x19E39 35
	mDisplayFrame 0x8 0x2

	mGetTiles 0x19E5C 35
	mDisplayFrame 0x8 0x3

	mGetTiles 0x19E7F 35
	mDisplayFrame 0x8 0x4

	mGetTiles 0x19EA2 35
	mDisplayFrame 0x8 0x5

	mGetTiles 0x19EC5 35
	mDisplayFrame 0x32 0x6

	mGetTiles 0x19EE8 35
	mDisplayFrame 0x8 0x7

	mGetTiles 0x19F0B 35
	mDisplayFrame 0x8 0x8

	mGetTiles 0x19F2E 35
	mDisplayFrame 0x8 0x9

	mGetTiles 0x19F51 35
	mDisplayFrame 0x8 0xA

	mGetTiles 0x19F74 35
	mDisplayFrame 0x8 0xB

anim_0888__v0_l1: @ 8100E18
	mJumpBack anim_0888__v0_l0

anim_0888__v1_l0: @ 8100E20
	mGetPalette 456 16 0x90
	mGetTiles 0x19E16 35
	mDisplayFrame 0x8 0x1

	mGetTiles 0x19E39 35
	mDisplayFrame 0x8 0x2

	mGetTiles 0x19E5C 35
	mDisplayFrame 0x8 0x3

	mGetTiles 0x19E7F 35
	mDisplayFrame 0x8 0x4

	mGetTiles 0x19EA2 35
	mDisplayFrame 0x8 0x5

	mGetTiles 0x19EC5 35
	mDisplayFrame 0x8 0x6

	mEnd 

anim_0888__v2_l0: @ 8100EA8
	mGetPalette 456 16 0x90
	mGetTiles 0x19EE8 35
	mDisplayFrame 0x8 0x7

	mGetTiles 0x19F0B 35
	mDisplayFrame 0x8 0x8

	mGetTiles 0x19F2E 35
	mDisplayFrame 0x8 0x9

	mGetTiles 0x19F51 35
	mDisplayFrame 0x8 0xA

	mGetTiles 0x19F74 35
	mDisplayFrame 0x8 0xB

	mGetTiles 0x19DF3 35
	mDisplayFrame 0x8 0x0

	mEnd 

anim_0888:
	.4byte anim_0888__v0_l0
	.4byte anim_0888__v1_l0
	.4byte anim_0888__v2_l0


anim_0889__v0_l0: @ 8100F3C
	mGetPalette 456 16 0x90
	mGetTiles 0x19F97 42
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0889:
	.4byte anim_0889__v0_l0


anim_0890__v0_l0: @ 8100F64
	mGetPalette 458 16 0x20
	mGetTiles 0x19FC1 24
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0890:
	.4byte anim_0890__v0_l0


anim_0891__v0_l0: @ 8100F8C
	mGetPalette 68 16 0x20
	mGetTiles 0x19FD9 40
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0891__v1_l0: @ 8100FB0
	mGetPalette 68 16 0x20
	mGetTiles 0x1A001 28
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0891__v2_l0: @ 8100FD4
	mGetPalette 68 16 0x20
	mGetTiles 0x1A01D 12
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0891__v3_l0: @ 8100FF8
	mGetPalette 68 16 0x20
	mGetTiles 0x1A029 8
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0891__v4_l0: @ 810101C
	mGetPalette 68 16 0x20
	mGetTiles 0x1A031 4
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0891__v5_l0: @ 8101040
	mGetPalette 68 16 0x20
	mGetTiles 0x1A035 4
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0891__v6_l0: @ 8101064
	mGetPalette 68 16 0x20
	mGetTiles 0x1A039 4
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0891__v7_l0: @ 8101088
	mGetPalette 68 16 0x20
	mGetTiles 0x1A03D 4
	mDisplayFrame 0x1 0x7

	mEnd 

anim_0891__v8_l0: @ 81010AC
	mGetPalette 68 16 0x20
	mGetTiles 0x1A041 12
	mDisplayFrame 0x1 0x8

	mEnd 

anim_0891__v9_l0: @ 81010D0
	mGetPalette 68 16 0x20
	mGetTiles 0x1A04D 10
	mDisplayFrame 0x1 0x9

	mEnd 

anim_0891:
	.4byte anim_0891__v0_l0
	.4byte anim_0891__v1_l0
	.4byte anim_0891__v2_l0
	.4byte anim_0891__v3_l0
	.4byte anim_0891__v4_l0
	.4byte anim_0891__v5_l0
	.4byte anim_0891__v6_l0
	.4byte anim_0891__v7_l0
	.4byte anim_0891__v8_l0
	.4byte anim_0891__v9_l0


anim_0892__v0_l0: @ 810111C
	mGetPalette 453 16 0x0
	mGetTiles 0x1A057 42
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0892__v1_l0: @ 8101140
	mGetPalette 453 16 0x0
	mGetTiles 0x1A081 42
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0892__v2_l0: @ 8101164
	mGetPalette 453 16 0x0
	mGetTiles 0x1A0AB 10
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0892__v3_l0: @ 8101188
	mGetPalette 453 16 0x0
	mGetTiles 0x1A0B5 12
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0892:
	.4byte anim_0892__v0_l0
	.4byte anim_0892__v1_l0
	.4byte anim_0892__v2_l0
	.4byte anim_0892__v3_l0


anim_0893__v0_l0: @ 81011BC
	mGetPalette 179 16 0x0
	mGetTiles 0x1A0C1 46
	mDisplayFrame 0x1 0x0

anim_0893__v0_l1: @ 81011DC
	mJumpBack anim_0893__v0_l0

anim_0893:
	.4byte anim_0893__v0_l0


anim_0894__v0_l0: @ 81011E8
	mGetPalette 68 16 0x20
	mGetTiles 0x1A0EF 18
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0894__v1_l0: @ 810120C
	mGetPalette 68 16 0x20
	mGetTiles 0x1A101 22
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0894__v2_l0: @ 8101230
	mGetPalette 68 16 0x20
	mGetTiles 0x1A117 26
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0894__v3_l0: @ 8101254
	mGetPalette 68 16 0x20
	mGetTiles 0x1A131 32
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0894__v4_l0: @ 8101278
	mGetPalette 68 16 0x20
	mGetTiles 0x1A151 15
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0894__v5_l0: @ 810129C
	mGetPalette 68 16 0x20
	mGetTiles 0x1A160 8
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0894__v6_l0: @ 81012C0
	mGetPalette 68 16 0x20
	mGetTiles 0x1A168 8
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0894__v7_l0: @ 81012E4
	mGetPalette 68 16 0x20
	mGetTiles 0x1A170 8
	mDisplayFrame 0x1 0x7

	mEnd 

anim_0894__v8_l0: @ 8101308
	mGetPalette 68 16 0x20
	mGetTiles 0x1A178 8
	mDisplayFrame 0x1 0x8

	mEnd 

anim_0894:
	.4byte anim_0894__v0_l0
	.4byte anim_0894__v1_l0
	.4byte anim_0894__v2_l0
	.4byte anim_0894__v3_l0
	.4byte anim_0894__v4_l0
	.4byte anim_0894__v5_l0
	.4byte anim_0894__v6_l0
	.4byte anim_0894__v7_l0
	.4byte anim_0894__v8_l0


anim_0895__v0_l0: @ 8101350
	mGetPalette 459 16 0x0
	mGetTiles 0x1A180 10
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0895__v1_l0: @ 8101374
	mGetPalette 459 16 0x0
	mGetTiles 0x1A18A 20
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0895:
	.4byte anim_0895__v0_l0
	.4byte anim_0895__v1_l0


anim_0896__v0_l0: @ 81013A0
	mGetPalette 460 16 0x90
	mGetTiles 0x1A19E 8
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0896__v1_l0: @ 81013C4
	mGetPalette 460 16 0x90
	mGetTiles 0x1A1A6 10
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0896__v2_l0: @ 81013E8
	mGetPalette 460 16 0x90
	mGetTiles 0x1A1B0 10
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0896__v3_l0: @ 810140C
	mGetPalette 460 16 0x90
	mGetTiles 0x1A1BA 4
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0896__v4_l0: @ 8101430
	mGetPalette 460 16 0x90
	mGetTiles 0x1A1BE 2
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0896__v5_l0: @ 8101454
	mGetPalette 460 16 0x90
	mGetTiles 0x1A1C0 4
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0896__v6_l0: @ 8101478
	mGetPalette 460 16 0x90
	mGetTiles 0x1A1C4 4
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0896__v7_l0: @ 810149C
	mGetPalette 460 16 0x90
	mGetTiles 0x1A1C8 4
	mDisplayFrame 0x1 0x7

	mEnd 

anim_0896__v8_l0: @ 81014C0
	mGetPalette 460 16 0x90
	mGetTiles 0x1A1CC 4
	mDisplayFrame 0x1 0x8

	mEnd 

anim_0896__v9_l0: @ 81014E4
	mGetPalette 460 16 0x90
	mGetTiles 0x1A1D0 4
	mDisplayFrame 0x1 0x9

	mEnd 

anim_0896__v10_l0: @ 8101508
	mGetPalette 460 16 0x90
	mGetTiles 0x1A1D4 4
	mDisplayFrame 0x1 0xA

	mEnd 

anim_0896__v11_l0: @ 810152C
	mGetPalette 460 16 0x90
	mGetTiles 0x1A1D8 4
	mDisplayFrame 0x1 0xB

	mEnd 

anim_0896__v12_l0: @ 8101550
	mGetPalette 460 16 0x90
	mGetTiles 0x1A1DC 4
	mDisplayFrame 0x1 0xC

	mEnd 

anim_0896__v13_l0: @ 8101574
	mGetPalette 460 16 0x90
	mGetTiles 0x1A1E0 14
	mDisplayFrame 0x1 0xD

	mEnd 

anim_0896:
	.4byte anim_0896__v0_l0
	.4byte anim_0896__v1_l0
	.4byte anim_0896__v2_l0
	.4byte anim_0896__v3_l0
	.4byte anim_0896__v4_l0
	.4byte anim_0896__v5_l0
	.4byte anim_0896__v6_l0
	.4byte anim_0896__v7_l0
	.4byte anim_0896__v8_l0
	.4byte anim_0896__v9_l0
	.4byte anim_0896__v10_l0
	.4byte anim_0896__v11_l0
	.4byte anim_0896__v12_l0
	.4byte anim_0896__v13_l0


anim_0897__v0_l0: @ 81015D0
	mGetPalette 461 16 0x0
	mGetTiles 0x1A1EE 38
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0897__v1_l0: @ 81015F4
	mGetPalette 461 16 0x0
	mGetTiles 0x1A214 40
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0897:
	.4byte anim_0897__v0_l0
	.4byte anim_0897__v1_l0


anim_0898__v0_l0: @ 8101620
	mGetPalette 88 16 0x0
	mGetTiles 0x1A23C 20
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0898__v1_l0: @ 8101644
	mGetPalette 2 16 0x10
	mGetTiles 0x1A250 24
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0898__v2_l0: @ 8101668
	mGetPalette 462 16 0x20
	mGetTiles 0x1A268 20
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0898__v3_l0: @ 810168C
	mGetPalette 7 16 0x30
	mGetTiles 0x1A27C 20
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0898:
	.4byte anim_0898__v0_l0
	.4byte anim_0898__v1_l0
	.4byte anim_0898__v2_l0
	.4byte anim_0898__v3_l0


anim_0899__v0_l0: @ 81016C0
	mGetPalette 453 16 0x0
	mGetTiles 0x1A290 22
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0899__v1_l0: @ 81016E4
	mGetPalette 453 16 0x0
	mGetTiles 0x1A2A6 18
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0899__v2_l0: @ 8101708
	mGetPalette 453 16 0x0
	mGetTiles 0x1A2B8 18
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0899__v3_l0: @ 810172C
	mGetPalette 453 16 0x0
	mGetTiles 0x1A2CA 16
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0899__v4_l0: @ 8101750
	mGetPalette 453 16 0x0
	mGetTiles 0x1A2DA 26
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0899__v5_l0: @ 8101774
	mGetPalette 453 16 0x0
	mGetTiles 0x1A2F4 14
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0899__v6_l0: @ 8101798
	mGetPalette 455 16 0x0
	mGetTiles 0x1A302 14
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0899__v7_l0: @ 81017BC
	mGetPalette 453 16 0x0
	mGetTiles 0x1A310 10
	mDisplayFrame 0x1 0x7

	mEnd 

anim_0899__v8_l0: @ 81017E0
	mGetPalette 453 16 0x0
	mGetTiles 0x1A31A 10
	mDisplayFrame 0x1 0x8

	mEnd 

anim_0899__v9_l0: @ 8101804
	mGetPalette 453 16 0x0
	mGetTiles 0x1A324 10
	mDisplayFrame 0x1 0x9

	mEnd 

anim_0899__v10_l0: @ 8101828
	mGetPalette 453 16 0x0
	mGetTiles 0x1A32E 10
	mDisplayFrame 0x1 0xA

	mEnd 

anim_0899:
	.4byte anim_0899__v0_l0
	.4byte anim_0899__v1_l0
	.4byte anim_0899__v2_l0
	.4byte anim_0899__v3_l0
	.4byte anim_0899__v4_l0
	.4byte anim_0899__v5_l0
	.4byte anim_0899__v6_l0
	.4byte anim_0899__v7_l0
	.4byte anim_0899__v8_l0
	.4byte anim_0899__v9_l0
	.4byte anim_0899__v10_l0


anim_0900__v0_l0: @ 8101878
	mGetPalette 460 16 0x90
	mGetTiles 0x1A338 6
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0900__v1_l0: @ 810189C
	mGetPalette 460 16 0x90
	mGetTiles 0x1A33E 6
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0900__v2_l0: @ 81018C0
	mGetPalette 460 16 0x90
	mGetTiles 0x1A344 14
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0900:
	.4byte anim_0900__v0_l0
	.4byte anim_0900__v1_l0
	.4byte anim_0900__v2_l0


anim_0901__v0_l0: @ 81018F0
	mGetPalette 461 16 0x0
	mGetTiles 0x1A352 34
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0901__v1_l0: @ 8101914
	mGetPalette 461 16 0x0
	mGetTiles 0x1A374 30
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0901:
	.4byte anim_0901__v0_l0
	.4byte anim_0901__v1_l0


anim_0902__v0_l0: @ 8101940
	mGetPalette 463 16 0x60
	mGetTiles 0x1A392 42
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0902__v1_l0: @ 8101964
	mGetPalette 463 16 0x60
	mGetTiles 0x1A3BC 44
	mDisplayFrame 0x1 0x1

anim_0902__v1_l1: @ 8101984
	mJumpBack anim_0902__v1_l0

anim_0902__v2_l0: @ 810198C
	mGetPalette 463 16 0x60
	mGetTiles 0x1A3E8 44
	mDisplayFrame 0x1 0x2

anim_0902__v2_l1: @ 81019AC
	mJumpBack anim_0902__v2_l0

anim_0902__v3_l0: @ 81019B4
	mGetPalette 463 16 0x60
	mGetTiles 0x1A414 40
	mDisplayFrame 0x1 0x3

anim_0902__v3_l1: @ 81019D4
	mJumpBack anim_0902__v3_l0

anim_0902:
	.4byte anim_0902__v0_l0
	.4byte anim_0902__v1_l0
	.4byte anim_0902__v2_l0
	.4byte anim_0902__v3_l0


anim_0903__v0_l0: @ 81019EC
	mGetPalette 68 16 0x60
	mGetTiles 0x1A43C 12
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0903__v1_l0: @ 8101A10
	mGetPalette 68 16 0x60
	mGetTiles 0x1A448 13
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0903__v2_l0: @ 8101A34
	mGetPalette 68 16 0x60
	mGetTiles 0x1A455 12
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0903__v3_l0: @ 8101A58
	mGetPalette 68 16 0x60
	mGetTiles 0x1A461 11
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0903:
	.4byte anim_0903__v0_l0
	.4byte anim_0903__v1_l0
	.4byte anim_0903__v2_l0
	.4byte anim_0903__v3_l0


anim_0904__v0_l0: @ 8101A8C
	mGetPalette 68 16 0x60
	mGetTiles 0x1A46C 8
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0904__v1_l0: @ 8101AB0
	mGetPalette 68 16 0x60
	mGetTiles 0x1A474 12
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0904__v2_l0: @ 8101AD4
	mGetPalette 68 16 0x60
	mGetTiles 0x1A480 12
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0904__v3_l0: @ 8101AF8
	mGetPalette 68 16 0x60
	mGetTiles 0x1A48C 8
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0904__v4_l0: @ 8101B1C
	mGetPalette 68 16 0x60
	mGetTiles 0x1A494 8
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0904__v5_l0: @ 8101B40
	mGetPalette 68 16 0x60
	mGetTiles 0x1A49C 8
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0904__v6_l0: @ 8101B64
	mGetPalette 68 16 0x60
	mGetTiles 0x1A4A4 8
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0904:
	.4byte anim_0904__v0_l0
	.4byte anim_0904__v1_l0
	.4byte anim_0904__v2_l0
	.4byte anim_0904__v3_l0
	.4byte anim_0904__v4_l0
	.4byte anim_0904__v5_l0
	.4byte anim_0904__v6_l0


anim_0905__v0_l0: @ 8101BA4
	mGetPalette 68 16 0x20
	mGetTiles 0x1A4AC 24
	mDisplayFrame 0x3C 0x0

	mDisplayFrame 0x3C 0xFFFFFFFF

anim_0905__v0_l1: @ 8101BCC
	mJumpBack anim_0905__v0_l0

anim_0905:
	.4byte anim_0905__v0_l0


anim_0906__v0_l0: @ 8101BD8
	mGetPalette 38 16 0xB0
	mGetTiles 0x1A4C4 32
	mAddHitbox 0 0x00 0x03 0x40 0x17
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0906:
	.4byte anim_0906__v0_l0


anim_0907__v0_l0: @ 8101C0C
	mGetPalette 68 16 0x60
	mGetTiles 0x1A4E4 2
	mDisplayFrame 0x1 0x0

	mEnd 

anim_0907__v1_l0: @ 8101C30
	mGetPalette 68 16 0x60
	mGetTiles 0x1A4E6 2
	mDisplayFrame 0x1 0x1

	mEnd 

anim_0907__v2_l0: @ 8101C54
	mGetPalette 68 16 0x60
	mGetTiles 0x1A4E8 2
	mDisplayFrame 0x1 0x2

	mEnd 

anim_0907__v3_l0: @ 8101C78
	mGetPalette 68 16 0x60
	mGetTiles 0x1A4EA 2
	mDisplayFrame 0x1 0x3

	mEnd 

anim_0907__v4_l0: @ 8101C9C
	mGetPalette 68 16 0x60
	mGetTiles 0x1A4EC 2
	mDisplayFrame 0x1 0x4

	mEnd 

anim_0907__v5_l0: @ 8101CC0
	mGetPalette 68 16 0x60
	mGetTiles 0x1A4EE 2
	mDisplayFrame 0x1 0x5

	mEnd 

anim_0907__v6_l0: @ 8101CE4
	mGetPalette 68 16 0x60
	mGetTiles 0x1A4F0 2
	mDisplayFrame 0x1 0x6

	mEnd 

anim_0907__v7_l0: @ 8101D08
	mGetPalette 68 16 0x60
	mGetTiles 0x1A4F2 2
	mDisplayFrame 0x1 0x7

	mEnd 

anim_0907__v8_l0: @ 8101D2C
	mGetPalette 68 16 0x60
	mGetTiles 0x1A4F4 2
	mDisplayFrame 0x1 0x8

	mEnd 

anim_0907__v9_l0: @ 8101D50
	mGetPalette 68 16 0x60
	mGetTiles 0x1A4F6 2
	mDisplayFrame 0x1 0x9

	mEnd 

anim_0907__v10_l0: @ 8101D74
	mGetPalette 68 16 0x60
	mGetTiles 0x1A4F8 2
	mDisplayFrame 0x1 0xA

	mEnd 

anim_0907__v11_l0: @ 8101D98
	mGetPalette 68 16 0x60
	mGetTiles 0x1A4FA 2
	mDisplayFrame 0x1 0xB

	mEnd 

anim_0907__v12_l0: @ 8101DBC
	mGetPalette 68 16 0x60
	mGetTiles 0x1A4FC 2
	mDisplayFrame 0x1 0xC

	mEnd 

anim_0907__v13_l0: @ 8101DE0
	mGetPalette 68 16 0x60
	mGetTiles 0x1A4FE 2
	mDisplayFrame 0x1 0xD

	mEnd 

anim_0907__v14_l0: @ 8101E04
	mGetPalette 68 16 0x60
	mGetTiles 0x1A500 2
	mDisplayFrame 0x1 0xE

	mEnd 

anim_0907__v15_l0: @ 8101E28
	mGetPalette 68 16 0x60
	mGetTiles 0x1A502 2
	mDisplayFrame 0x1 0xF

	mEnd 

anim_0907__v16_l0: @ 8101E4C
	mGetPalette 68 16 0x60
	mGetTiles 0x1A504 2
	mDisplayFrame 0x1 0x10

	mEnd 

anim_0907__v17_l0: @ 8101E70
	mGetPalette 68 16 0x60
	mGetTiles 0x1A506 2
	mDisplayFrame 0x1 0x11

	mEnd 

anim_0907__v18_l0: @ 8101E94
	mGetPalette 68 16 0x60
	mGetTiles 0x1A508 2
	mDisplayFrame 0x1 0x12

	mEnd 

anim_0907__v19_l0: @ 8101EB8
	mGetPalette 68 16 0x60
	mGetTiles 0x1A50A 2
	mDisplayFrame 0x1 0x13

	mEnd 

anim_0907__v20_l0: @ 8101EDC
	mGetPalette 68 16 0x60
	mGetTiles 0x1A50C 2
	mDisplayFrame 0x1 0x14

	mEnd 

anim_0907__v21_l0: @ 8101F00
	mGetPalette 68 16 0x60
	mGetTiles 0x1A50E 2
	mDisplayFrame 0x1 0x15

	mEnd 

anim_0907:
	.4byte anim_0907__v0_l0
	.4byte anim_0907__v1_l0
	.4byte anim_0907__v2_l0
	.4byte anim_0907__v3_l0
	.4byte anim_0907__v4_l0
	.4byte anim_0907__v5_l0
	.4byte anim_0907__v6_l0
	.4byte anim_0907__v7_l0
	.4byte anim_0907__v8_l0
	.4byte anim_0907__v9_l0
	.4byte anim_0907__v10_l0
	.4byte anim_0907__v11_l0
	.4byte anim_0907__v12_l0
	.4byte anim_0907__v13_l0
	.4byte anim_0907__v14_l0
	.4byte anim_0907__v15_l0
	.4byte anim_0907__v16_l0
	.4byte anim_0907__v17_l0
	.4byte anim_0907__v18_l0
	.4byte anim_0907__v19_l0
	.4byte anim_0907__v20_l0
	.4byte anim_0907__v21_l0



.align 2, 0
.global gAnimations
gAnimations:
	.4byte anim_0000
	.4byte anim_0001
	.4byte anim_0002
	.4byte anim_0003
	.4byte anim_0004
	.4byte anim_0005
	.4byte anim_0006
	.4byte anim_0007
	.4byte anim_0008
	.4byte anim_0009
	.4byte anim_0010
	.4byte anim_0011
	.4byte anim_0012
	.4byte anim_0013
	.4byte anim_0014
	.4byte 0
	.4byte 0
	.4byte anim_0017
	.4byte anim_0018
	.4byte anim_0019
	.4byte 0
	.4byte anim_0021
	.4byte anim_0022
	.4byte anim_0023
	.4byte anim_0024
	.4byte anim_0025
	.4byte anim_0026
	.4byte anim_0027
	.4byte anim_0028
	.4byte anim_0029
	.4byte anim_0030
	.4byte anim_0031
	.4byte anim_0032
	.4byte anim_0033
	.4byte anim_0034
	.4byte anim_0035
	.4byte anim_0036
	.4byte anim_0037
	.4byte anim_0038
	.4byte anim_0039
	.4byte anim_0040
	.4byte anim_0041
	.4byte anim_0042
	.4byte anim_0043
	.4byte anim_0044
	.4byte anim_0045
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte anim_0049
	.4byte anim_0050
	.4byte anim_0051
	.4byte anim_0052
	.4byte anim_0053
	.4byte 0
	.4byte anim_0055
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte anim_0081
	.4byte anim_0082
	.4byte anim_0083
	.4byte anim_0084
	.4byte anim_0085
	.4byte anim_0086
	.4byte anim_0087
	.4byte anim_0088
	.4byte anim_0089
	.4byte 0
	.4byte anim_0091
	.4byte 0
	.4byte anim_0093
	.4byte 0
	.4byte 0
	.4byte anim_0096
	.4byte anim_0097
	.4byte anim_0098
	.4byte anim_0099
	.4byte anim_0100
	.4byte anim_0101
	.4byte anim_0102
	.4byte anim_0103
	.4byte anim_0104
	.4byte anim_0105
	.4byte anim_0106
	.4byte anim_0107
	.4byte anim_0108
	.4byte anim_0109
	.4byte anim_0110
	.4byte anim_0111
	.4byte anim_0112
	.4byte anim_0113
	.4byte 0
	.4byte 0
	.4byte anim_0116
	.4byte anim_0117
	.4byte anim_0118
	.4byte 0
	.4byte anim_0120
	.4byte anim_0121
	.4byte anim_0122
	.4byte anim_0123
	.4byte anim_0124
	.4byte anim_0125
	.4byte anim_0126
	.4byte anim_0127
	.4byte anim_0128
	.4byte anim_0129
	.4byte anim_0130
	.4byte anim_0131
	.4byte anim_0132
	.4byte anim_0133
	.4byte anim_0134
	.4byte anim_0135
	.4byte anim_0136
	.4byte anim_0137
	.4byte anim_0138
	.4byte anim_0139
	.4byte anim_0140
	.4byte anim_0141
	.4byte anim_0142
	.4byte 0
	.4byte 0
	.4byte anim_0145
	.4byte anim_0146
	.4byte anim_0147
	.4byte 0
	.4byte anim_0149
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte anim_0155
	.4byte anim_0156
	.4byte anim_0157
	.4byte anim_0158
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte anim_0180
	.4byte anim_0181
	.4byte anim_0182
	.4byte 0
	.4byte anim_0184
	.4byte anim_0185
	.4byte anim_0186
	.4byte anim_0187
	.4byte anim_0188
	.4byte 0
	.4byte anim_0190
	.4byte anim_0191
	.4byte anim_0192
	.4byte 0
	.4byte 0
	.4byte anim_0195
	.4byte anim_0196
	.4byte anim_0197
	.4byte anim_0198
	.4byte anim_0199
	.4byte anim_0200
	.4byte anim_0201
	.4byte anim_0202
	.4byte anim_0203
	.4byte anim_0204
	.4byte anim_0205
	.4byte anim_0206
	.4byte anim_0207
	.4byte anim_0208
	.4byte anim_0209
	.4byte anim_0210
	.4byte anim_0211
	.4byte anim_0212
	.4byte anim_0213
	.4byte 0
	.4byte 0
	.4byte anim_0216
	.4byte anim_0217
	.4byte anim_0218
	.4byte 0
	.4byte anim_0220
	.4byte anim_0221
	.4byte anim_0222
	.4byte anim_0223
	.4byte anim_0224
	.4byte anim_0225
	.4byte anim_0226
	.4byte anim_0227
	.4byte anim_0228
	.4byte anim_0229
	.4byte anim_0230
	.4byte anim_0231
	.4byte anim_0232
	.4byte anim_0233
	.4byte anim_0234
	.4byte anim_0235
	.4byte anim_0236
	.4byte anim_0237
	.4byte anim_0238
	.4byte anim_0239
	.4byte anim_0240
	.4byte anim_0241
	.4byte anim_0242
	.4byte 0
	.4byte 0
	.4byte anim_0245
	.4byte anim_0246
	.4byte 0
	.4byte 0
	.4byte anim_0249
	.4byte anim_0250
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte anim_0260
	.4byte anim_0261
	.4byte anim_0262
	.4byte anim_0263
	.4byte anim_0264
	.4byte anim_0265
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte anim_0269
	.4byte anim_0270
	.4byte anim_0271
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte anim_0280
	.4byte anim_0281
	.4byte anim_0282
	.4byte 0
	.4byte anim_0284
	.4byte anim_0285
	.4byte anim_0286
	.4byte anim_0287
	.4byte anim_0288
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte anim_0292
	.4byte 0
	.4byte 0
	.4byte anim_0295
	.4byte anim_0296
	.4byte anim_0297
	.4byte anim_0298
	.4byte anim_0299
	.4byte anim_0300
	.4byte anim_0301
	.4byte anim_0302
	.4byte anim_0303
	.4byte anim_0304
	.4byte anim_0305
	.4byte anim_0306
	.4byte anim_0307
	.4byte anim_0308
	.4byte anim_0309
	.4byte anim_0310
	.4byte anim_0311
	.4byte anim_0312
	.4byte 0
	.4byte 0
	.4byte anim_0315
	.4byte anim_0306
	.4byte anim_0317
	.4byte 0
	.4byte anim_0319
	.4byte anim_0320
	.4byte anim_0321
	.4byte anim_0322
	.4byte anim_0323
	.4byte anim_0324
	.4byte anim_0325
	.4byte anim_0326
	.4byte anim_0327
	.4byte anim_0328
	.4byte anim_0329
	.4byte anim_0330
	.4byte anim_0331
	.4byte anim_0332
	.4byte anim_0333
	.4byte anim_0334
	.4byte anim_0335
	.4byte anim_0336
	.4byte anim_0337
	.4byte anim_0338
	.4byte anim_0339
	.4byte anim_0340
	.4byte anim_0341
	.4byte anim_0342
	.4byte anim_0343
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte anim_0348
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte anim_0353
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte anim_0373
	.4byte anim_0374
	.4byte anim_0375
	.4byte anim_0376
	.4byte anim_0377
	.4byte anim_0306
	.4byte anim_0379
	.4byte anim_0380
	.4byte anim_0381
	.4byte 0
	.4byte anim_0383
	.4byte anim_0384
	.4byte anim_0385
	.4byte anim_0386
	.4byte anim_0387
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte anim_0391
	.4byte anim_0392
	.4byte anim_0393
	.4byte anim_0394
	.4byte 0
	.4byte anim_0396
	.4byte anim_0397
	.4byte anim_0398
	.4byte anim_0399
	.4byte anim_0400
	.4byte anim_0401
	.4byte anim_0402
	.4byte anim_0403
	.4byte anim_0404
	.4byte anim_0405
	.4byte anim_0406
	.4byte anim_0407
	.4byte anim_0408
	.4byte anim_0409
	.4byte anim_0410
	.4byte anim_0411
	.4byte anim_0412
	.4byte anim_0413
	.4byte anim_0414
	.4byte anim_0415
	.4byte anim_0416
	.4byte anim_0417
	.4byte anim_0418
	.4byte anim_0419
	.4byte anim_0420
	.4byte anim_0421
	.4byte anim_0422
	.4byte anim_0423
	.4byte anim_0424
	.4byte anim_0425
	.4byte anim_0426
	.4byte anim_0427
	.4byte anim_0428
	.4byte anim_0429
	.4byte anim_0430
	.4byte anim_0431
	.4byte anim_0432
	.4byte anim_0433
	.4byte anim_0434
	.4byte anim_0435
	.4byte anim_0436
	.4byte anim_0437
	.4byte anim_0438
	.4byte anim_0439
	.4byte anim_0440
	.4byte anim_0441
	.4byte anim_0442
	.4byte anim_0443
	.4byte anim_0444
	.4byte anim_0445
	.4byte anim_0446
	.4byte anim_0447
	.4byte anim_0448
	.4byte anim_0449
	.4byte anim_0450
	.4byte anim_0451
	.4byte anim_0452
	.4byte anim_0453
	.4byte anim_0454
	.4byte anim_0455
	.4byte anim_0456
	.4byte anim_0457
	.4byte anim_0458
	.4byte anim_0459
	.4byte anim_0460
	.4byte anim_0461
	.4byte anim_0462
	.4byte anim_0463
	.4byte anim_0464
	.4byte anim_0465
	.4byte anim_0466
	.4byte anim_0467
	.4byte anim_0468
	.4byte anim_0469
	.4byte anim_0470
	.4byte anim_0471
	.4byte anim_0472
	.4byte anim_0473
	.4byte anim_0474
	.4byte anim_0475
	.4byte anim_0476
	.4byte anim_0477
	.4byte anim_0478
	.4byte anim_0479
	.4byte anim_0480
	.4byte anim_0481
	.4byte anim_0482
	.4byte anim_0483
	.4byte anim_0484
	.4byte anim_0485
	.4byte anim_0486
	.4byte anim_0487
	.4byte anim_0488
	.4byte anim_0489
	.4byte anim_0490
	.4byte anim_0491
	.4byte anim_0492
	.4byte anim_0493
	.4byte anim_0494
	.4byte anim_0495
	.4byte anim_0496
	.4byte anim_0497
	.4byte anim_0498
	.4byte anim_0499
	.4byte anim_0498
	.4byte anim_0501
	.4byte anim_0502
	.4byte anim_0503
	.4byte anim_0504
	.4byte anim_0505
	.4byte anim_0506
	.4byte anim_0507
	.4byte anim_0508
	.4byte anim_0509
	.4byte anim_0510
	.4byte anim_0511
	.4byte anim_0512
	.4byte anim_0513
	.4byte anim_0514
	.4byte anim_0515
	.4byte anim_0516
	.4byte anim_0517
	.4byte anim_0518
	.4byte anim_0519
	.4byte anim_0520
	.4byte anim_0521
	.4byte anim_0522
	.4byte anim_0523
	.4byte anim_0524
	.4byte anim_0525
	.4byte anim_0526
	.4byte anim_0527
	.4byte anim_0528
	.4byte anim_0529
	.4byte anim_0530
	.4byte anim_0531
	.4byte anim_0532
	.4byte anim_0533
	.4byte anim_0534
	.4byte anim_0535
	.4byte anim_0536
	.4byte anim_0537
	.4byte anim_0538
	.4byte anim_0539
	.4byte anim_0540
	.4byte anim_0541
	.4byte anim_0542
	.4byte anim_0543
	.4byte anim_0544
	.4byte anim_0545
	.4byte anim_0546
	.4byte anim_0547
	.4byte anim_0548
	.4byte anim_0549
	.4byte anim_0550
	.4byte anim_0551
	.4byte anim_0552
	.4byte anim_0553
	.4byte anim_0554
	.4byte anim_0555
	.4byte anim_0556
	.4byte anim_0557
	.4byte anim_0558
	.4byte anim_0559
	.4byte anim_0560
	.4byte anim_0561
	.4byte anim_0562
	.4byte anim_0563
	.4byte anim_0564
	.4byte anim_0565
	.4byte anim_0566
	.4byte anim_0567
	.4byte anim_0568
	.4byte anim_0569
	.4byte anim_0570
	.4byte anim_0571
	.4byte anim_0572
	.4byte anim_0573
	.4byte anim_0574
	.4byte anim_0575
	.4byte anim_0576
	.4byte anim_0577
	.4byte anim_0578
	.4byte anim_0579
	.4byte anim_0580
	.4byte anim_0581
	.4byte anim_0582
	.4byte anim_0583
	.4byte anim_0584
	.4byte anim_0585
	.4byte anim_0586
	.4byte anim_0587
	.4byte anim_0588
	.4byte anim_0589
	.4byte anim_0590
	.4byte anim_0591
	.4byte anim_0592
	.4byte anim_0593
	.4byte anim_0594
	.4byte anim_0595
	.4byte anim_0596
	.4byte anim_0597
	.4byte anim_0598
	.4byte anim_0599
	.4byte anim_0600
	.4byte anim_0601
	.4byte anim_0602
	.4byte anim_0603
	.4byte anim_0604
	.4byte anim_0605
	.4byte anim_0606
	.4byte anim_0607
	.4byte anim_0608
	.4byte anim_0609
	.4byte anim_0610
	.4byte anim_0611
	.4byte anim_0612
	.4byte anim_0613
	.4byte anim_0614
	.4byte anim_0615
	.4byte anim_0616
	.4byte anim_0617
	.4byte anim_0618
	.4byte anim_0619
	.4byte anim_0620
	.4byte anim_0621
	.4byte anim_0622
	.4byte anim_0623
	.4byte anim_0624
	.4byte anim_0625
	.4byte anim_0626
	.4byte anim_0627
	.4byte anim_0628
	.4byte anim_0629
	.4byte anim_0630
	.4byte anim_0631
	.4byte anim_0632
	.4byte anim_0633
	.4byte anim_0634
	.4byte anim_0635
	.4byte anim_0636
	.4byte anim_0637
	.4byte anim_0638
	.4byte anim_0639
	.4byte anim_0640
	.4byte anim_0641
	.4byte anim_0642
	.4byte anim_0643
	.4byte anim_0644
	.4byte anim_0645
	.4byte anim_0646
	.4byte anim_0647
	.4byte anim_0648
	.4byte anim_0649
	.4byte anim_0650
	.4byte anim_0651
	.4byte anim_0652
	.4byte anim_0653
	.4byte anim_0654
	.4byte anim_0655
	.4byte anim_0656
	.4byte anim_0657
	.4byte anim_0658
	.4byte anim_0659
	.4byte anim_0660
	.4byte anim_0661
	.4byte anim_0662
	.4byte anim_0663
	.4byte anim_0664
	.4byte anim_0665
	.4byte anim_0666
	.4byte anim_0667
	.4byte anim_0668
	.4byte anim_0669
	.4byte anim_0670
	.4byte anim_0671
	.4byte anim_0672
	.4byte anim_0673
	.4byte anim_0674
	.4byte anim_0675
	.4byte anim_0676
	.4byte anim_0677
	.4byte anim_0678
	.4byte anim_0679
	.4byte anim_0680
	.4byte anim_0681
	.4byte anim_0682
	.4byte anim_0683
	.4byte anim_0684
	.4byte anim_0685
	.4byte anim_0686
	.4byte anim_0687
	.4byte anim_0688
	.4byte anim_0689
	.4byte anim_0690
	.4byte anim_0691
	.4byte anim_0692
	.4byte anim_0693
	.4byte anim_0694
	.4byte anim_0695
	.4byte anim_0696
	.4byte anim_0697
	.4byte anim_0698
	.4byte anim_0699
	.4byte anim_0700
	.4byte anim_0701
	.4byte anim_0702
	.4byte anim_0703
	.4byte anim_0704
	.4byte anim_0705
	.4byte anim_0706
	.4byte anim_0707
	.4byte anim_0708
	.4byte anim_0709
	.4byte anim_0710
	.4byte anim_0711
	.4byte anim_0712
	.4byte anim_0713
	.4byte anim_0714
	.4byte anim_0715
	.4byte anim_0716
	.4byte anim_0717
	.4byte anim_0718
	.4byte anim_0719
	.4byte anim_0720
	.4byte anim_0721
	.4byte anim_0722
	.4byte anim_0723
	.4byte anim_0724
	.4byte anim_0725
	.4byte anim_0726
	.4byte anim_0727
	.4byte anim_0728
	.4byte anim_0729
	.4byte anim_0730
	.4byte anim_0731
	.4byte anim_0732
	.4byte anim_0733
	.4byte anim_0734
	.4byte anim_0735
	.4byte anim_0736
	.4byte anim_0737
	.4byte anim_0738
	.4byte anim_0739
	.4byte anim_0740
	.4byte anim_0741
	.4byte anim_0742
	.4byte anim_0743
	.4byte anim_0744
	.4byte anim_0745
	.4byte anim_0746
	.4byte anim_0747
	.4byte anim_0748
	.4byte anim_0749
	.4byte anim_0750
	.4byte anim_0751
	.4byte anim_0752
	.4byte anim_0753
	.4byte anim_0754
	.4byte anim_0755
	.4byte anim_0756
	.4byte anim_0757
	.4byte anim_0758
	.4byte anim_0759
	.4byte anim_0760
	.4byte anim_0761
	.4byte anim_0762
	.4byte anim_0763
	.4byte anim_0764
	.4byte anim_0765
	.4byte anim_0766
	.4byte anim_0767
	.4byte anim_0768
	.4byte anim_0769
	.4byte anim_0770
	.4byte anim_0771
	.4byte anim_0772
	.4byte anim_0773
	.4byte anim_0774
	.4byte anim_0775
	.4byte anim_0776
	.4byte anim_0777
	.4byte anim_0778
	.4byte anim_0779
	.4byte anim_0780
	.4byte anim_0781
	.4byte anim_0782
	.4byte anim_0783
	.4byte anim_0784
	.4byte anim_0785
	.4byte anim_0786
	.4byte anim_0787
	.4byte anim_0788
	.4byte anim_0789
	.4byte anim_0790
	.4byte anim_0791
	.4byte anim_0792
	.4byte anim_0793
	.4byte anim_0794
	.4byte anim_0795
	.4byte anim_0796
	.4byte anim_0797
	.4byte anim_0798
	.4byte anim_0799
	.4byte anim_0800
	.4byte anim_0801
	.4byte anim_0802
	.4byte anim_0736
	.4byte anim_0735
	.4byte anim_0805
	.4byte anim_0806
	.4byte anim_0807
	.4byte anim_0808
	.4byte anim_0809
	.4byte anim_0810
	.4byte anim_0811
	.4byte anim_0812
	.4byte anim_0813
	.4byte anim_0814
	.4byte anim_0815
	.4byte anim_0816
	.4byte anim_0817
	.4byte anim_0818
	.4byte anim_0819
	.4byte anim_0820
	.4byte anim_0821
	.4byte anim_0822
	.4byte anim_0823
	.4byte anim_0824
	.4byte anim_0825
	.4byte anim_0826
	.4byte anim_0827
	.4byte anim_0828
	.4byte anim_0829
	.4byte anim_0830
	.4byte anim_0831
	.4byte anim_0832
	.4byte anim_0833
	.4byte anim_0834
	.4byte anim_0835
	.4byte anim_0836
	.4byte anim_0837
	.4byte anim_0838
	.4byte anim_0839
	.4byte anim_0840
	.4byte anim_0841
	.4byte anim_0842
	.4byte anim_0843
	.4byte anim_0844
	.4byte anim_0845
	.4byte anim_0846
	.4byte anim_0847
	.4byte anim_0848
	.4byte anim_0849
	.4byte anim_0850
	.4byte anim_0851
	.4byte anim_0852
	.4byte anim_0853
	.4byte anim_0854
	.4byte anim_0855
	.4byte anim_0856
	.4byte anim_0857
	.4byte anim_0858
	.4byte anim_0859
	.4byte anim_0860
	.4byte anim_0861
	.4byte anim_0862
	.4byte anim_0863
	.4byte anim_0864
	.4byte anim_0865
	.4byte anim_0866
	.4byte anim_0867
	.4byte anim_0868
	.4byte anim_0869
	.4byte anim_0870
	.4byte anim_0871
	.4byte anim_0872
	.4byte anim_0873
	.4byte anim_0874
	.4byte anim_0875
	.4byte anim_0876
	.4byte anim_0877
	.4byte anim_0878
	.4byte anim_0879
	.4byte anim_0880
	.4byte anim_0881
	.4byte anim_0882
	.4byte anim_0883
	.4byte anim_0884
	.4byte anim_0885
	.4byte anim_0886
	.4byte anim_0887
	.4byte anim_0888
	.4byte anim_0889
	.4byte anim_0890
	.4byte anim_0891
	.4byte anim_0892
	.4byte anim_0893
	.4byte anim_0894
	.4byte anim_0895
	.4byte anim_0896
	.4byte anim_0897
	.4byte anim_0898
	.4byte anim_0899
	.4byte anim_0900
	.4byte anim_0901
	.4byte anim_0902
	.4byte anim_0903
	.4byte anim_0904
	.4byte anim_0905
	.4byte anim_0906
	.4byte anim_0907
.size gAnimations,.-gAnimations

