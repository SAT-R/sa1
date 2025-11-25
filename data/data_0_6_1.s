.include "asm/macros/portable.inc" @; for mPtr / mAlignWord

	mSectionRodata

    .align 2, 0
    .global gUnknown_0868B684
gUnknown_0868B684:
    .incbin "baserom_sa1.gba", 0x0068B684, 0x10

    .global gUnknown_0868B694
gUnknown_0868B694:
    .incbin "baserom_sa1.gba", 0x0068B694, 0x8

    .global gUnknown_0868B69C
gUnknown_0868B69C:
    .incbin "baserom_sa1.gba", 0x0068B69C, 0x4

    .global gUnknown_0868B6A0
gUnknown_0868B6A0:
    .incbin "baserom_sa1.gba", 0x0068B6A0, 0x18

    .global gUnknown_0868B6B8
gUnknown_0868B6B8:
    .incbin "baserom_sa1.gba", 0x0068B6B8, 0xC

    .global gUnknown_0868B6C4
gUnknown_0868B6C4:
    mPtr ApplyGameStageSettings
    mPtr sub_806A66C
    mPtr sub_806A680
    mPtr sub_806A68C

@ Edit Language Screen - Data Start
    .global gUnknown_0868B6D4
gUnknown_0868B6D4:
    .incbin "baserom_sa1.gba", 0x0068B6D4, 0x18

    .global gUnknown_0868B6EC
gUnknown_0868B6EC:
    .incbin "baserom_sa1.gba", 0x0068B6EC, 0x18

    .global gUnknown_0868B704
gUnknown_0868B704:
    .incbin "baserom_sa1.gba", 0x0068B704, 0xC

    .global gUnknown_0868B710
gUnknown_0868B710:
    .incbin "baserom_sa1.gba", 0x0068B710, 0xC

    .global gUnknown_0868B71C
gUnknown_0868B71C:
    .incbin "baserom_sa1.gba", 0x0068B71C, 0x6

    .global gUnknown_0868B722
gUnknown_0868B722:
    .incbin "baserom_sa1.gba", 0x0068B722, 0x6

    .global gUnknown_0868B728
gUnknown_0868B728:
    .incbin "baserom_sa1.gba", 0x0068B728, 0x1

    .global gUnknown_0868B729
gUnknown_0868B729:
    .incbin "baserom_sa1.gba", 0x0068B729, 0xB

    .global gUnknown_0868B734
gUnknown_0868B734:
    .incbin "baserom_sa1.gba", 0x0068B734, 0x24

    mAlignWord
    .global sLangScreenReturnProcs
sLangScreenReturnProcs:
    mPtr CreateOptionsMenu
    mPtr CreateSegaLogo

    .global gUnknown_0868B760
gUnknown_0868B760:
    .incbin "baserom_sa1.gba", 0x0068B760, 0xC

@ Edit Language Screen - Data End

    .global gUnknown_0868B76C
gUnknown_0868B76C:
    .incbin "baserom_sa1.gba", 0x0068B76C, 0xC

    .global gUnknown_0868B778
gUnknown_0868B778:
    .incbin "baserom_sa1.gba", 0x0068B778, 0x6

    .global gUnknown_0868B77E
gUnknown_0868B77E:
    .incbin "baserom_sa1.gba", 0x0068B77E, 0x4

    .global gUnknown_0868B782
gUnknown_0868B782:
    .incbin "baserom_sa1.gba", 0x0068B782, 0x4

    .global gUnknown_0868B786
gUnknown_0868B786:
    .incbin "baserom_sa1.gba", 0x0068B786, 0x4

    .global gUnknown_0868B78A
gUnknown_0868B78A:
    .incbin "baserom_sa1.gba", 0x0068B78A, 0x1

    .global gUnknown_0868B78B
gUnknown_0868B78B:
    .incbin "baserom_sa1.gba", 0x0068B78B, 0x5

    .global gUnknown_0868B790
gUnknown_0868B790:
    .incbin "baserom_sa1.gba", 0x0068B790, 0x4
