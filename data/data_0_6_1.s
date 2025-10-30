.include "asm/macros/portable.inc" @; for mPtr / mAlignWord

	.section .rodata

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

    .global gCharacterCards @ ptrs 0x0868EB74 - 0x08699E74
gCharacterCards:              @ 0x0868B794
    .int gCharacterCards_Sonic_Tiles, 0x09C0, gCharacterCards_Sonic_Palette, gCharacterCards_Sonic_Layout, gUnknown_086969B4, 0x500, gUnknown_086967B4, gUnknown_08696BF4
    .int gCharacterCards_Tails_Tiles, 0x0680, gCharacterCards_Tails_Palette, gCharacterCards_Tails_Layout, gUnknown_0869A074, 0x500, gUnknown_08699E74, gUnknown_0869A2B4
    .int gCharacterCards_Knuckles_Tiles, 0x0800, gCharacterCards_Knuckles_Palette, gCharacterCards_Knuckles_Layout, gUnknown_0868FC34, 0x500, gUnknown_0868FA34, gUnknown_0868FE74
    .int gCharacterCards_Amy_Tiles, 0x04C0, gCharacterCards_Amy_Palette, gCharacterCards_Amy_Layout, gUnknown_08693034, 0x500, gUnknown_08692E34, gUnknown_08693274

    .global gUnknown_0868B814
gUnknown_0868B814:
    .incbin "baserom_sa1.gba", 0x0068B814, 0x24

    .global gUnknown_0868B838
gUnknown_0868B838:
    .incbin "baserom_sa1.gba", 0x0068B838, 0xC

    .global gUnknown_0868B844
gUnknown_0868B844:
    .incbin "baserom_sa1.gba", 0x0068B844, 0x90

    .global gUnknown_0868B8D4
gUnknown_0868B8D4:
    .incbin "baserom_sa1.gba", 0x0068B8D4, 0x20

    .global gUnknown_0868B8F4
gUnknown_0868B8F4:
    .incbin "baserom_sa1.gba", 0x0068B8F4, 0x7C0

    .global gUnknown_0868C0B4
gUnknown_0868C0B4:
    .incbin "baserom_sa1.gba", 0x0068C0B4, 0x500

    .global gUnknown_0868C5B4
gUnknown_0868C5B4:
    .incbin "baserom_sa1.gba", 0x0068C5B4, 0x20

    .global gUnknown_0868C5D4
gUnknown_0868C5D4:
    .incbin "baserom_sa1.gba", 0x0068C5D4, 0x940

    .global gUnknown_0868CF14
gUnknown_0868CF14:
    .incbin "baserom_sa1.gba", 0x0068CF14, 0x500

    .global gUnknown_0868D414
gUnknown_0868D414:
    .incbin "baserom_sa1.gba", 0x0068D414, 0x20

    .global gUnknown_0868D434
gUnknown_0868D434:
    .incbin "baserom_sa1.gba", 0x0068D434, 0x620

    .global gUnknown_0868DA54
gUnknown_0868DA54:
    .incbin "baserom_sa1.gba", 0x0068DA54, 0x580

    .global gUnknown_0868DFD4
gUnknown_0868DFD4:
    .incbin "baserom_sa1.gba", 0x0068DFD4, 0x20

    .global gUnknown_0868DFF4
gUnknown_0868DFF4:
    .incbin "baserom_sa1.gba", 0x0068DFF4, 0x600

    .global gUnknown_0868E5F4
gUnknown_0868E5F4:
    .incbin "baserom_sa1.gba", 0x0068E5F4, 0x580

    .global gCharacterCards_Knuckles_Palette
gCharacterCards_Knuckles_Palette:
    .incbin "baserom_sa1.gba", 0x0068EB74, 0x200

    .global gCharacterCards_Knuckles_Tiles
gCharacterCards_Knuckles_Tiles:
    .incbin "baserom_sa1.gba", 0x0068ED74, 0x7C0

    .global gCharacterCards_Knuckles_Layout
gCharacterCards_Knuckles_Layout:
    .incbin "baserom_sa1.gba", 0x0068F534, 0x500

    .global gUnknown_0868FA34
gUnknown_0868FA34:
    .incbin "baserom_sa1.gba", 0x0068FA34, 0x200

    .global gUnknown_0868FC34
gUnknown_0868FC34:
    .incbin "baserom_sa1.gba", 0x0068FC34, 0x240

    .global gUnknown_0868FE74
gUnknown_0868FE74:
    .incbin "baserom_sa1.gba", 0x0068FE74, 0x700

    .global gUnknown_08690574
gUnknown_08690574:
    .incbin "baserom_sa1.gba", 0x00690574, 0x1800

    .global gUnknown_08691D74
gUnknown_08691D74:
    .incbin "baserom_sa1.gba", 0x00691D74, 0x500

    .global gCharacterCards_Amy_Palette
gCharacterCards_Amy_Palette:
    .incbin "baserom_sa1.gba", 0x00692274, 0x200

    .global gCharacterCards_Amy_Tiles
gCharacterCards_Amy_Tiles:
    .incbin "baserom_sa1.gba", 0x00692474, 0x4C0

    .global gCharacterCards_Amy_Layout
gCharacterCards_Amy_Layout:
    .incbin "baserom_sa1.gba", 0x00692934, 0x500

    .global gUnknown_08692E34
gUnknown_08692E34:
    .incbin "baserom_sa1.gba", 0x00692E34, 0x200

    .global gUnknown_08693034
gUnknown_08693034:
    .incbin "baserom_sa1.gba", 0x00693034, 0x240

    .global gUnknown_08693274
gUnknown_08693274:
    .incbin "baserom_sa1.gba", 0x00693274, 0x700

    .global gUnknown_08693974
gUnknown_08693974:
    .incbin "baserom_sa1.gba", 0x00693974, 0x1880

    .global gUnknown_086951F4
gUnknown_086951F4:
    .incbin "baserom_sa1.gba", 0x006951F4, 0x500

    .global gCharacterCards_Sonic_Palette
gCharacterCards_Sonic_Palette:
    .incbin "baserom_sa1.gba", 0x006956F4, 0x200

    .global gCharacterCards_Sonic_Tiles
gCharacterCards_Sonic_Tiles:
    .incbin "baserom_sa1.gba", 0x006958F4, 0x9C0

    .global gCharacterCards_Sonic_Layout
gCharacterCards_Sonic_Layout:
    .incbin "baserom_sa1.gba", 0x006962B4, 0x500

    .global gUnknown_086967B4
gUnknown_086967B4:
    .incbin "baserom_sa1.gba", 0x006967B4, 0x200

    .global gUnknown_086969B4
gUnknown_086969B4:
    .incbin "baserom_sa1.gba", 0x006969B4, 0x240

    .global gUnknown_08696BF4
gUnknown_08696BF4:
    .incbin "baserom_sa1.gba", 0x00696BF4, 0x700

    .global gUnknown_086972F4
gUnknown_086972F4:
    .incbin "baserom_sa1.gba", 0x006972F4, 0x1900

    .global gUnknown_08698BF4
gUnknown_08698BF4:
    .incbin "baserom_sa1.gba", 0x00698BF4, 0x500

    .global gCharacterCards_Tails_Palette
gCharacterCards_Tails_Palette:
    .incbin "baserom_sa1.gba", 0x006990F4, 0x200

    .global gCharacterCards_Tails_Tiles
gCharacterCards_Tails_Tiles:
    .incbin "baserom_sa1.gba", 0x006992F4, 0x680

    .global gCharacterCards_Tails_Layout
gCharacterCards_Tails_Layout:
    .incbin "baserom_sa1.gba", 0x00699974, 0x500

    .global gUnknown_08699E74
gUnknown_08699E74:
    .incbin "baserom_sa1.gba", 0x00699E74, 0x200

    .global gUnknown_0869A074
gUnknown_0869A074:
    .incbin "baserom_sa1.gba", 0x0069A074, 0x240

    .global gUnknown_0869A2B4
gUnknown_0869A2B4:
    .incbin "baserom_sa1.gba", 0x0069A2B4, 0x700

    .global gUnknown_0869A9B4
gUnknown_0869A9B4:
    .incbin "baserom_sa1.gba", 0x0069A9B4, 0x1C40

    .global gUnknown_0869C5F4
gUnknown_0869C5F4:
    .incbin "baserom_sa1.gba", 0x0069C5F4, 0x500

    .global gUnknown_0869CAF4
gUnknown_0869CAF4:
    .incbin "baserom_sa1.gba", 0x0069CAF4, 0x200

    .global gUnknown_0869CCF4
gUnknown_0869CCF4:
    .incbin "baserom_sa1.gba", 0x0069CCF4, 0x1C40

    .global gUnknown_0869E934
gUnknown_0869E934:
    .incbin "baserom_sa1.gba", 0x0069E934, 0x500

    .global gUnknown_0869EE34
gUnknown_0869EE34:
    .incbin "baserom_sa1.gba", 0x0069EE34, 0x200

    .global gUnknown_0869F034
gUnknown_0869F034:
    .incbin "baserom_sa1.gba", 0x0069F034, 0x20C0

    .global gUnknown_086A10F4
gUnknown_086A10F4:
    .incbin "baserom_sa1.gba", 0x006A10F4, 0x700

    .global gUnknown_086A17F4
gUnknown_086A17F4:
    .incbin "baserom_sa1.gba", 0x006A17F4, 0xD40

    .global gUnknown_086A2534
gUnknown_086A2534:
    .incbin "baserom_sa1.gba", 0x006A2534, 0x500

    .global gUnknown_086A2A34
gUnknown_086A2A34:
    .incbin "baserom_sa1.gba", 0x006A2A34, 0x200

    .global gUnknown_086A2C34
gUnknown_086A2C34:
    .incbin "baserom_sa1.gba", 0x006A2C34, 0x1180

    .global gUnknown_086A3DB4
gUnknown_086A3DB4:
    .incbin "baserom_sa1.gba", 0x006A3DB4, 0x1000

    .global gUnknown_086A4DB4
gUnknown_086A4DB4:
    .incbin "baserom_sa1.gba", 0x006A4DB4, 0x200

    .global gUnknown_086A4FB4
gUnknown_086A4FB4:
    .incbin "baserom_sa1.gba", 0x006A4FB4, 0x880

    .global gUnknown_086A5834
gUnknown_086A5834:
    .incbin "baserom_sa1.gba", 0x006A5834, 0x500

    .global gUnknown_086A5D34
gUnknown_086A5D34:
    .incbin "baserom_sa1.gba", 0x006A5D34, 0x200

    .global gUnknown_086A5F34
gUnknown_086A5F34:
    .incbin "baserom_sa1.gba", 0x006A5F34, 0x2F00

    .global gUnknown_086A8E34
gUnknown_086A8E34:
    .incbin "baserom_sa1.gba", 0x006A8E34, 0xA00

    .global gUnknown_086A9834
gUnknown_086A9834:
    .incbin "baserom_sa1.gba", 0x006A9834, 0x2840

    .global gUnknown_086AC074
gUnknown_086AC074:
    .incbin "baserom_sa1.gba", 0x006AC074, 0xAC0

    .global gUnknown_086ACB34
gUnknown_086ACB34:
    .incbin "baserom_sa1.gba", 0x006ACB34, 0x29C0

    .global gUnknown_086AF4F4
gUnknown_086AF4F4:
    .incbin "baserom_sa1.gba", 0x006AF4F4, 0xAC0

    .global gUnknown_086AFFB4
gUnknown_086AFFB4:
    .incbin "baserom_sa1.gba", 0x006AFFB4, 0x1440

    .global gUnknown_086B13F4
gUnknown_086B13F4:
    .incbin "baserom_sa1.gba", 0x006B13F4, 0x6C0

    .global gUnknown_086B1AB4
gUnknown_086B1AB4:
    .incbin "baserom_sa1.gba", 0x006B1AB4, 0x20

    .global gUnknown_086B1AD4
gUnknown_086B1AD4:
    .incbin "baserom_sa1.gba", 0x006B1AD4, 0x20

    .global gUnknown_086B1AF4
gUnknown_086B1AF4:
    .incbin "baserom_sa1.gba", 0x006B1AF4, 0x20

    .global gUnknown_086B1B14
gUnknown_086B1B14:
    .incbin "baserom_sa1.gba", 0x006B1B14, 0x1A0

    .global gUnknown_086B1CB4
gUnknown_086B1CB4:
    .incbin "baserom_sa1.gba", 0x006B1CB4, 0x540

    .global gUnknown_086B21F4
gUnknown_086B21F4:
    .incbin "baserom_sa1.gba", 0x006B21F4, 0x800

    .global gUnknown_086B29F4
gUnknown_086B29F4:
    .incbin "baserom_sa1.gba", 0x006B29F4, 0x200

    .global gUnknown_086B2BF4
gUnknown_086B2BF4:
    .incbin "baserom_sa1.gba", 0x006B2BF4, 0x1E00

    .global gUnknown_086B49F4
gUnknown_086B49F4:
    .incbin "baserom_sa1.gba", 0x006B49F4, 0x800

    .global gUnknown_086B51F4
gUnknown_086B51F4:
    .incbin "baserom_sa1.gba", 0x006B51F4, 0x200

    .global gUnknown_086B53F4
gUnknown_086B53F4:
    .incbin "baserom_sa1.gba", 0x006B53F4, 0x1B80

    .global gUnknown_086B6F74
gUnknown_086B6F74:
    .incbin "baserom_sa1.gba", 0x006B6F74, 0x800

    .global gUnknown_086B7774
gUnknown_086B7774:
    .incbin "baserom_sa1.gba", 0x006B7774, 0x200

    .global gUnknown_086B7974
gUnknown_086B7974:
    .incbin "baserom_sa1.gba", 0x006B7974, 0x1880

    .global gUnknown_086B91F4
gUnknown_086B91F4:
    .incbin "baserom_sa1.gba", 0x006B91F4, 0x800

    .global gUnknown_086B99F4
gUnknown_086B99F4:
    .incbin "baserom_sa1.gba", 0x006B99F4, 0x200

    .global gUnknown_086B9BF4
gUnknown_086B9BF4:
    .incbin "baserom_sa1.gba", 0x006B9BF4, 0x1840

    .global gUnknown_086BB434
gUnknown_086BB434:
    .incbin "baserom_sa1.gba", 0x006BB434, 0x800

    .global gUnknown_086BBC34
gUnknown_086BBC34:
    .incbin "baserom_sa1.gba", 0x006BBC34, 0x200

    .global gUnknown_086BBE34
gUnknown_086BBE34:
    .incbin "baserom_sa1.gba", 0x006BBE34, 0x2980

    .global gUnknown_086BE7B4
gUnknown_086BE7B4:
    .incbin "baserom_sa1.gba", 0x006BE7B4, 0x1000

    .global gUnknown_086BF7B4
gUnknown_086BF7B4:
    .incbin "baserom_sa1.gba", 0x006BF7B4, 0x200

    .global gUnknown_086BF9B4
gUnknown_086BF9B4:
    .incbin "baserom_sa1.gba", 0x006BF9B4, 0x57C0

    .global gUnknown_086C5174
gUnknown_086C5174:
    .incbin "baserom_sa1.gba", 0x006C5174, 0xA00

    .global gUnknown_086C5B74
gUnknown_086C5B74:
    .incbin "baserom_sa1.gba", 0x006C5B74, 0x200

    .global gUnknown_086C5D74
gUnknown_086C5D74:
    .incbin "baserom_sa1.gba", 0x006C5D74, 0x1EC0

    .global gUnknown_086C7C34
gUnknown_086C7C34:
    .incbin "baserom_sa1.gba", 0x006C7C34, 0xA00

    .global gUnknown_086C8634
gUnknown_086C8634:
    .incbin "baserom_sa1.gba", 0x006C8634, 0x200

    .global gUnknown_086C8834
gUnknown_086C8834:
    .incbin "baserom_sa1.gba", 0x006C8834, 0x3540

    .global gUnknown_086CBD74
gUnknown_086CBD74:
    .incbin "baserom_sa1.gba", 0x006CBD74, 0xA00

    .global gUnknown_086CC774
gUnknown_086CC774:
    .incbin "baserom_sa1.gba", 0x006CC774, 0x20

    .global gUnknown_086CC794
gUnknown_086CC794:
    .incbin "baserom_sa1.gba", 0x006CC794, 0xA0

    .global gUnknown_086CC834
gUnknown_086CC834:
    .incbin "baserom_sa1.gba", 0x006CC834, 0x500

    .global gPalette_086CCD34
gPalette_086CCD34:
    .incbin "baserom_sa1.gba", 0x006CCD34, 0x20

    .global gTiles_086CCD54
gTiles_086CCD54:
    .incbin "baserom_sa1.gba", 0x006CCD54, 0xBA0

    .global gLayout_086CD8F4
gLayout_086CD8F4:
    .incbin "baserom_sa1.gba", 0x006CD8F4, 0x500

    .global gLayout_086CDDF4
gLayout_086CDDF4:
    .incbin "baserom_sa1.gba", 0x006CDDF4, 0x500

    .global gUnknown_086CE2F4
gUnknown_086CE2F4:
    .incbin "baserom_sa1.gba", 0x006CE2F4, 0x200

    .global gUnknown_086CE4F4
gUnknown_086CE4F4:
    .incbin "baserom_sa1.gba", 0x006CE4F4, 0x300

    .global gUnknown_086CE7F4
gUnknown_086CE7F4:
    .incbin "baserom_sa1.gba", 0x006CE7F4, 0x500
