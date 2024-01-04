	.section .rodata

    .global gIntrTableTemplate
gIntrTableTemplate:
    .4byte gMultiSioIntrFuncBuf, VBlankIntr, HBlankIntr, VCountIntr
    .4byte Timer0Intr, Timer1Intr, Timer2Intr, Dma0Intr
    .4byte Dma1Intr, Dma2Intr, Dma3Intr, KeypadIntr
    .4byte GamepakIntr, 0

    .global spriteUpdateFuncs
spriteUpdateFuncs:
    .4byte sub_800116C, sub_8002F84, sub_8002958, sub_8001AA4

    .global animCmdTable_BG
animCmdTable_BG:
    .4byte animCmd_GetTiles_BG, animCmd_GetPalette_BG, animCmd_JumpBack_BG, animCmd_End_BG
    .4byte animCmd_PlaySoundEffect_BG, animCmd_AddHitbox_BG, animCmd_TranslateSprite_BG, animCmd_8_BG
    .4byte animCmd_SetIdAndVariant_BG, animCmd_10_BG, animCmd_SetSpritePriority_BG, animCmd_SetOamOrder_BG

    .global gSineTable
gSineTable:
    .incbin "baserom.gba", 0x0009B6E8, 0xA00

@ SA2: sUnknown_080984A4
    .global gUnknown_0809C0E8
gUnknown_0809C0E8:
    .byte 0x01, 0x00, 0x02, 0x03, 0x06, 0x07, 0x05, 0x04

    .global animCmdTable
animCmdTable:
    .4byte animCmd_GetTiles, animCmd_GetPalette, animCmd_JumpBack, animCmd_End
    .4byte animCmd_PlaySoundEffect, animCmd_AddHitbox, animCmd_TranslateSprite, animCmd_8
    .4byte animCmd_SetIdAndVariant, animCmd_10, animCmd_SetSpritePriority, animCmd_SetOamOrder

    .global gOamShapesSizes
gOamShapesSizes:
    .incbin "baserom.gba", 0x0009C120, 0x18

    .global gUnknown_0809C138
gUnknown_0809C138:
    .incbin "baserom.gba", 0x0009C138, 0x38

    .global gMultiBootProgram_TinyChaoGarden
gMultiBootProgram_TinyChaoGarden:
    .incbin "baserom.gba", 0x0009C170, 0x1EDD4

    .global gSpritePosData_rings
gSpritePosData_rings:
    .incbin "baserom.gba", 0x000BAF44, 0x48

    .global gSpritePosData_interactables
gSpritePosData_interactables:
    .incbin "baserom.gba", 0x000BAF8C, 0x48

    .global gSpritePosData_itemboxes
gSpritePosData_itemboxes:
    .incbin "baserom.gba", 0x000BAFD4, 0x48

    .global gSpritePosData_enemies
gSpritePosData_enemies:
    .incbin "baserom.gba", 0x000BB01C, 0x48

    .global gSpriteInits_Interactables
gSpriteInits_Interactables:     @ 0x080BB064
    .4byte CreateEntity_Interactable000
    .4byte CreateEntity_Interactable001
    .4byte CreateEntity_Interactable002
    .4byte CreateEntity_Interactable003
    .4byte CreateEntity_Interactable003
    .4byte CreateEntity_Interactable005
    .4byte CreateEntity_Interactable006
    .4byte CreateEntity_Checkpoint
    .4byte CreateEntity_Interactable008
    .4byte CreateEntity_Interactable009
    .4byte CreateEntity_Interactable010
    .4byte CreateEntity_Interactable010
    .4byte CreateEntity_Interactable012
    .4byte CreateEntity_Interactable012
    .4byte CreateEntity_Interactable014
    .4byte CreateEntity_Interactable014
    .4byte CreateEntity_Interactable016
    .4byte CreateEntity_Toggle_PlayerLayer @ 017
    .4byte CreateEntity_Toggle_PlayerLayer @ 018
    .4byte CreateEntity_Interactable019
    .4byte CreateEntity_Interactable020
    .4byte CreateEntity_Interactable021
    .4byte CreateEntity_Interactable022
    .4byte CreateEntity_Interactable023
    .4byte CreateEntity_Interactable024
    .4byte CreateEntity_Interactable025
    .4byte CreateEntity_Interactable026
    .4byte CreateEntity_Interactable027
    .4byte CreateEntity_Interactable028
    .4byte CreateEntity_Interactable029
    .4byte CreateEntity_Interactable030
    .4byte CreateEntity_Interactable031
    .4byte CreateEntity_Interactable032
    .4byte CreateEntity_Interactable033
    .4byte CreateEntity_Interactable034
    .4byte CreateEntity_Interactable035
    .4byte CreateEntity_Interactable036
    .4byte CreateEntity_Interactable037
    .4byte CreateEntity_Interactable038
    .4byte CreateEntity_Interactable039
    .4byte CreateEntity_Interactable040
    .4byte CreateEntity_Interactable041
    .4byte CreateEntity_Interactable042
    .4byte CreateEntity_Interactable043
    .4byte CreateEntity_Interactable044
    .4byte CreateEntity_Interactable045
    .4byte CreateEntity_Interactable046
    .4byte CreateEntity_Interactable047
    .4byte CreateEntity_Interactable048
    .4byte CreateEntity_Interactable049
    .4byte CreateEntity_Interactable050
    .4byte CreateEntity_Interactable051
    .4byte CreateEntity_Interactable052
    .4byte CreateEntity_Interactable053
    .4byte CreateEntity_Interactable054
    .4byte CreateEntity_Interactable055
    .4byte CreateEntity_Interactable056
    .4byte CreateEntity_Interactable057
    .4byte CreateEntity_Interactable058
    .4byte CreateEntity_Interactable059
    .4byte CreateEntity_Interactable060
    .4byte CreateEntity_Interactable061
    .4byte CreateEntity_Interactable062
    .4byte CreateEntity_Interactable063
    .4byte CreateEntity_Interactable064
    .4byte CreateEntity_Interactable065
    .4byte CreateEntity_Interactable066
    .4byte CreateEntity_Interactable067
    .4byte CreateEntity_Interactable068
    .4byte CreateEntity_Interactable069
    .4byte CreateEntity_Interactable070
    .4byte CreateEntity_Interactable071
    .4byte CreateEntity_Interactable072
    .4byte CreateEntity_Interactable073
    .4byte CreateEntity_Interactable074
    .4byte CreateEntity_Interactable075 @ Hook-Rail
    .4byte CreateEntity_Interactable076
    .4byte CreateEntity_Interactable077
    .4byte CreateEntity_Interactable078
    .4byte CreateEntity_Interactable079
    .4byte CreateEntity_Interactable080
    .4byte CreateEntity_Interactable081
    .4byte CreateEntity_Interactable082
    .4byte CreateEntity_Interactable083
    .4byte CreateEntity_Interactable084
    .4byte CreateEntity_Interactable085
    .4byte CreateEntity_Interactable086
    .4byte CreateEntity_Interactable087
    .4byte CreateEntity_Interactable088
    .4byte CreateEntity_Interactable089
    .4byte CreateEntity_Interactable090
    .4byte CreateEntity_Interactable091
    .4byte CreateEntity_Interactable092
    .4byte CreateEntity_Interactable093
    .4byte CreateEntity_Interactable094
    .4byte CreateEntity_Interactable095
    .4byte CreateEntity_Interactable096
    .4byte CreateEntity_Interactable097
    .4byte CreateEntity_Interactable098
    .4byte CreateEntity_Interactable099
    .4byte CreateEntity_Interactable100
    .4byte CreateEntity_Interactable101
    .4byte CreateEntity_SpecialSpring
    .4byte CreateEntity_Interactable103
    .4byte CreateEntity_Interactable104
    .4byte CreateEntity_Interactable105
    .4byte CreateEntity_Interactable106
    .4byte CreateEntity_Interactable107
    .4byte CreateEntity_Interactable108
    .4byte CreateEntity_Interactable109
    .4byte CreateEntity_Interactable110
    .4byte CreateEntity_Interactable111
    .4byte CreateEntity_Interactable112
    .4byte CreateEntity_Interactable113
    .4byte CreateEntity_Interactable114
    .4byte CreateEntity_Interactable115

    .global gSpriteInits_Enemies
gSpriteInits_Enemies:   @ 80BB234
    .4byte CreateEntity_Kiki      @ 000 Kiki
    .4byte CreateEntity_Buzzer    @ 001 Buzzer
    .4byte CreateEntity_GamiGami  @ 002 GamiGami
    .4byte CreateEntity_Rhinotank @ 003 Rhinotank
    .4byte CreateEntity_KeroKero  @ 004 KeroKero
    .4byte CreateEntity_Senbon    @ 005 Senbon
    .4byte CreateEntity_Tentou    @ 006 Tentou
    .4byte CreateEntity_Enemy007  @ 007 Fireball
    .4byte CreateEntity_Enemy008  @ 008 Hanabii
    .4byte CreateEntity_Enemy009  @ 009 Slot
    .4byte CreateEntity_Enemy010  @ 010 Pierrot
    .4byte CreateEntity_Enemy011  @ 011 Leon
    .4byte CreateEntity_Enemy012  @ 012 Mirror
    .4byte CreateEntity_Enemy013  @ 013 Wamu
    .4byte CreateEntity_Enemy014  @ 014 Octo
    .4byte CreateEntity_Enemy015  @ 015 Mole
    .4byte CreateEntity_Enemy016  @ 016 Yukimaru
    .4byte CreateEntity_Enemy017  @ 017 Yukimaru (sideways)
    .4byte CreateEntity_Enemy018  @ 018 Drisame
    .4byte CreateEntity_Enemy019  @ 019 Kura
    .4byte CreateEntity_Enemy020  @ 020 Pen
    .4byte CreateEntity_Enemy021  @ 021 Boss 1 Intro
    .4byte CreateEntity_Enemy022  @ 022 Boss 1
    .4byte CreateEntity_Enemy023  @ 023 Boss 2 A
    .4byte CreateEntity_Enemy024  @ 024 Boss 2 B
    .4byte CreateEntity_Enemy025  @ 025 Boss 3
    .4byte CreateEntity_Enemy026  @ 026 Boss Robo-Knuckles
    .4byte CreateEntity_Enemy027  @ 027 Boss 4
    .4byte CreateEntity_Enemy028  @ 028 Boss Sonic 1
    .4byte CreateEntity_Enemy029  @ 029 Boss Sonic 2
    .4byte CreateEntity_Enemy030  @ 030 Final Boss
    .4byte CreateEntity_Enemy031  @ 031 Extra Boss(?)

    .global enemyDefeatScores
enemyDefeatScores: @ 0x080BB2B4
    .2byte 100, 200, 400, 800, 1000, 0

    .global gSpriteInits_InteractablesMultiplayer
gSpriteInits_InteractablesMultiplayer:
    .incbin "baserom.gba", 0x000BB2C0, 0x48

    .global gUnknown_080BB308
gUnknown_080BB308:
    .incbin "baserom.gba", 0x000BB308, 0x8

    .global gUnknown_080BB310
gUnknown_080BB310:
    .incbin "baserom.gba", 0x000BB310, 0x4

    .global gUnknown_080BB314
gUnknown_080BB314:
    .incbin "baserom.gba", 0x000BB314, 0xA

    .global gUnknown_080BB31E
gUnknown_080BB31E:
    .incbin "baserom.gba", 0x000BB31E, 0x5

    .global gUnknown_080BB323
gUnknown_080BB323:
    .incbin "baserom.gba", 0x000BB323, 0x4

    .global gUnknown_080BB327
gUnknown_080BB327:
    .incbin "baserom.gba", 0x000BB327, 0x5

    .global gUnknown_080BB32C
gUnknown_080BB32C:
    .incbin "baserom.gba", 0x000BB32C, 0x10

    .global gUnknown_080BB33C
gUnknown_080BB33C:
    .incbin "baserom.gba", 0x000BB33C, 0x4

    .global gUnknown_080BB340
gUnknown_080BB340:
    .incbin "baserom.gba", 0x000BB340, 0x8

    .global gUnknown_080BB348
gUnknown_080BB348:
    .incbin "baserom.gba", 0x000BB348, 0x4

    .global gUnknown_080BB34C
gUnknown_080BB34C:
    .incbin "baserom.gba", 0x000BB34C, 0x4

    .global gUnknown_080BB350
gUnknown_080BB350:
    .incbin "baserom.gba", 0x000BB350, 0x4

    .global gUnknown_080BB354
gUnknown_080BB354:
    .incbin "baserom.gba", 0x000BB354, 0x8

    .global gUnknown_080BB35C
gUnknown_080BB35C:
    .incbin "baserom.gba", 0x000BB35C, 0x4

    .global gUnknown_080BB360
gUnknown_080BB360:
    .incbin "baserom.gba", 0x000BB360, 0x4

    .global gUnknown_080BB364
gUnknown_080BB364:
    .incbin "baserom.gba", 0x000BB364, 0x8

    .global gUnknown_080BB36C
gUnknown_080BB36C:
    .incbin "baserom.gba", 0x000BB36C, 0x4

    .global gUnknown_080BB370
gUnknown_080BB370:
    .incbin "baserom.gba", 0x000BB370, 0x8

    .global gUnknown_080BB378
gUnknown_080BB378:
    .incbin "baserom.gba", 0x000BB378, 0x4

    .global gUnknown_080BB37C
gUnknown_080BB37C:
    .incbin "baserom.gba", 0x000BB37C, 0x2

    .global gUnknown_080BB37E
gUnknown_080BB37E:
    .incbin "baserom.gba", 0x000BB37E, 0x2

    .global gUnknown_080BB380
gUnknown_080BB380:
    .incbin "baserom.gba", 0x000BB380, 0x2

    .global gUnknown_080BB382
gUnknown_080BB382:
    .incbin "baserom.gba", 0x000BB382, 0x8

    .global gUnknown_080BB38A
gUnknown_080BB38A:
    .incbin "baserom.gba", 0x000BB38A, 0x4

    .global gUnknown_080BB38E
gUnknown_080BB38E:
    .incbin "baserom.gba", 0x000BB38E, 0x12

    .global gUnknown_080BB3A0
gUnknown_080BB3A0:
    .incbin "baserom.gba", 0x000BB3A0, 0x20

    .global gUnknown_080BB3C0
gUnknown_080BB3C0:
    .incbin "baserom.gba", 0x000BB3C0, 0x4

    .global gUnknown_080BB3C4
gUnknown_080BB3C4:
    .incbin "baserom.gba", 0x000BB3C4, 0x3

    .global gUnknown_080BB3C7
gUnknown_080BB3C7:
    .incbin "baserom.gba", 0x000BB3C7, 0x3

    .global gUnknown_080BB3CA
gUnknown_080BB3CA:
    .incbin "baserom.gba", 0x000BB3CA, 0x6

    .global gUnknown_080BB3D0
gUnknown_080BB3D0:
    .incbin "baserom.gba", 0x000BB3D0, 0xC

    .global gUnknown_080BB3DC
gUnknown_080BB3DC:
    .incbin "baserom.gba", 0x000BB3DC, 0x4

    .global gUnknown_080BB3E0
gUnknown_080BB3E0:
    .incbin "baserom.gba", 0x000BB3E0, 0x18

    .global gUnknown_080BB3F8
gUnknown_080BB3F8:
    .incbin "baserom.gba", 0x000BB3F8, 0x24

    .global gUnknown_080BB41C
gUnknown_080BB41C:
    .incbin "baserom.gba", 0x000BB41C, 0x10

    .global gUnknown_080BB42C
gUnknown_080BB42C:
    .incbin "baserom.gba", 0x000BB42C, 0x8

    .global gUnknown_080BB434
gUnknown_080BB434:
    .incbin "baserom.gba", 0x000BB434, 0x8

    .global gUnknown_080BB43C
gUnknown_080BB43C:
    .incbin "baserom.gba", 0x000BB43C, 0x20

    .global gUnknown_080BB45C
gUnknown_080BB45C:
    .incbin "baserom.gba", 0x000BB45C, 0x28

    .global gUnknown_080BB484
gUnknown_080BB484:
    .incbin "baserom.gba", 0x000BB484, 0x4

    .global gUnknown_080BB488
gUnknown_080BB488:
    .incbin "baserom.gba", 0x000BB488, 0x4

    .global gUnknown_080BB48C
gUnknown_080BB48C:
    .incbin "baserom.gba", 0x000BB48C, 0x4

    .global gUnknown_080BB490
gUnknown_080BB490:
    .incbin "baserom.gba", 0x000BB490, 0x4

    .global gUnknown_080BB494
gUnknown_080BB494:
    .incbin "baserom.gba", 0x000BB494, 0x3C

    .global gUnknown_080BB4D0
gUnknown_080BB4D0:
    .incbin "baserom.gba", 0x000BB4D0, 0x4

    .global gUnknown_080BB4D4
gUnknown_080BB4D4:
    .incbin "baserom.gba", 0x000BB4D4, 0x4

    .global gUnknown_080BB4D8
gUnknown_080BB4D8:
    .incbin "baserom.gba", 0x000BB4D8, 0x10

    .global gUnknown_080BB4E8
gUnknown_080BB4E8:
    .incbin "baserom.gba", 0x000BB4E8, 0x8

    .global gUnknown_080BB4F0
gUnknown_080BB4F0:
    .incbin "baserom.gba", 0x000BB4F0, 0x4

    .global gUnknown_080BB4F4
gUnknown_080BB4F4:
    .incbin "baserom.gba", 0x000BB4F4, 0x8

    .global gUnknown_080BB4FC
gUnknown_080BB4FC:
    .incbin "baserom.gba", 0x000BB4FC, 0x24

    .global gUnknown_080BB520
gUnknown_080BB520:
    .incbin "baserom.gba", 0x000BB520, 0x24

    .global gUnknown_080BB544
gUnknown_080BB544:
    .incbin "baserom.gba", 0x000BB544, 0x24

    .global gUnknown_080BB568
gUnknown_080BB568:
    .incbin "baserom.gba", 0x000BB568, 0x20C08

    .global gUnknown_080DC170
gUnknown_080DC170:
    .incbin "baserom.gba", 0x000DC170, 0x3AAE84

    .global gUnknown_08486FF4
gUnknown_08486FF4:
    .incbin "baserom.gba", 0x00486FF4, 0x40

    .global gUnknown_08487034
gUnknown_08487034:
    .incbin "baserom.gba", 0x00487034, 0x40

    .global gUnknown_08487074
gUnknown_08487074:
    .incbin "baserom.gba", 0x00487074, 0x40

    .global gUnknown_084870B4
gUnknown_084870B4:
    .incbin "baserom.gba", 0x004870B4, 0x40

    .global gUnknown_084870F4
gUnknown_084870F4:
    .incbin "baserom.gba", 0x004870F4, 0x40

    .global gUnknown_08487134
gUnknown_08487134:
    .incbin "baserom.gba", 0x00487134, 0xC

    .global gUnknown_08487140
gUnknown_08487140:
    .incbin "baserom.gba", 0x00487140, 0x1C

    .global gUnknown_0848715C
gUnknown_0848715C:
    .incbin "baserom.gba", 0x0048715C, 0x28

    .global gUnknown_08487184
gUnknown_08487184:
    .incbin "baserom.gba", 0x00487184, 0x40

    .global gUnknown_084871C4
gUnknown_084871C4:
    .incbin "baserom.gba", 0x004871C4, 0x40

    .global gUnknown_08487204
gUnknown_08487204:
    .incbin "baserom.gba", 0x00487204, 0x8

    .global gUnknown_0848720C
gUnknown_0848720C:
    .incbin "baserom.gba", 0x0048720C, 0x8

    .global gUnknown_08487214
gUnknown_08487214:
    .incbin "baserom.gba", 0x00487214, 0x18

    .global gUnknown_0848722C
gUnknown_0848722C:
    .incbin "baserom.gba", 0x0048722C, 0x60

    .global gUnknown_0848728C
gUnknown_0848728C:
    .incbin "baserom.gba", 0x0048728C, 0x2

    .global gUnknown_0848728E
gUnknown_0848728E:
    .incbin "baserom.gba", 0x0048728E, 0x36

    .global gUnknown_084872C4
gUnknown_084872C4:
    .incbin "baserom.gba", 0x004872C4, 0x1C

    .global gUnknown_084872E0
gUnknown_084872E0:
    .incbin "baserom.gba", 0x004872E0, 0x30

    .global gUnknown_08487310
gUnknown_08487310:
    .incbin "baserom.gba", 0x00487310, 0x20

    .global gUnknown_08487330
gUnknown_08487330:
    .incbin "baserom.gba", 0x00487330, 0x25A70

    .global gUnknown_084ACDA0
gUnknown_084ACDA0:
    .incbin "baserom.gba", 0x004ACDA0, 0xC

    .global gUnknown_084ACDAC
gUnknown_084ACDAC:
    .incbin "baserom.gba", 0x004ACDAC, 0x14

    .global gUnknown_084ACDC0
gUnknown_084ACDC0:
    .incbin "baserom.gba", 0x004ACDC0, 0x12

    .global gUnknown_084ACDD2
gUnknown_084ACDD2:
    .incbin "baserom.gba", 0x004ACDD2, 0x2

    .global gUnknown_084ACDD4
gUnknown_084ACDD4:
    .incbin "baserom.gba", 0x004ACDD4, 0x4

    .global gUnknown_084ACDD8
gUnknown_084ACDD8:
    .incbin "baserom.gba", 0x004ACDD8, 0x3A

    .global gUnknown_084ACE12
gUnknown_084ACE12:
    .incbin "baserom.gba", 0x004ACE12, 0x12

    .global gUnknown_084ACE24
gUnknown_084ACE24:
    .incbin "baserom.gba", 0x004ACE24, 0x80

    .global gUnknown_084ACEA4
gUnknown_084ACEA4:
    .incbin "baserom.gba", 0x004ACEA4, 0x10

    .global gUnknown_084ACEB4
gUnknown_084ACEB4:
    .incbin "baserom.gba", 0x004ACEB4, 0x12

    .global gUnknown_084ACEC6
gUnknown_084ACEC6:
    .incbin "baserom.gba", 0x004ACEC6, 0x12

    .global gUnknown_084ACED8
gUnknown_084ACED8:
    .incbin "baserom.gba", 0x004ACED8, 0xC

    .global gUnknown_084ACEE4
gUnknown_084ACEE4:
    .incbin "baserom.gba", 0x004ACEE4, 0x12

    .global gUnknown_084ACEF6
gUnknown_084ACEF6:
    .incbin "baserom.gba", 0x004ACEF6, 0x12

    .global gUnknown_084ACF08
gUnknown_084ACF08:
    .incbin "baserom.gba", 0x004ACF08, 0x14

    .global gUnknown_084ACF1C
gUnknown_084ACF1C:
    .incbin "baserom.gba", 0x004ACF1C, 0x8

    .global gUnknown_084ACF24
gUnknown_084ACF24:
    .incbin "baserom.gba", 0x004ACF24, 0x8

    .global gUnknown_084ACF2C
gUnknown_084ACF2C:
    .incbin "baserom.gba", 0x004ACF2C, 0x8

    .global gUnknown_084ACF34
gUnknown_084ACF34:
    .incbin "baserom.gba", 0x004ACF34, 0xAD4

    .global gUnknown_084ADA08
gUnknown_084ADA08:
    .incbin "baserom.gba", 0x004ADA08, 0x2

    .global gUnknown_084ADA0A
gUnknown_084ADA0A:
    .incbin "baserom.gba", 0x004ADA0A, 0x4

    .global gUnknown_084ADA0E
gUnknown_084ADA0E:
    .incbin "baserom.gba", 0x004ADA0E, 0x2

    .global gUnknown_084ADA10
gUnknown_084ADA10:
    .incbin "baserom.gba", 0x004ADA10, 0xA

    .global gUnknown_084ADA1A
gUnknown_084ADA1A:
    .incbin "baserom.gba", 0x004ADA1A, 0x4

    .global gUnknown_084ADA1E
gUnknown_084ADA1E:
    .incbin "baserom.gba", 0x004ADA1E, 0x6

    .global gUnknown_084ADA24
gUnknown_084ADA24:
    .incbin "baserom.gba", 0x004ADA24, 0xC0

    .global gUnknown_084ADAE4
gUnknown_084ADAE4:
    .incbin "baserom.gba", 0x004ADAE4, 0x24

    .global gUnknown_084ADB08
gUnknown_084ADB08:
    .incbin "baserom.gba", 0x004ADB08, 0x10

    .global gUnknown_084ADB18
gUnknown_084ADB18:
    .incbin "baserom.gba", 0x004ADB18, 0x48

    .global gUnknown_084ADB60
gUnknown_084ADB60:
    .incbin "baserom.gba", 0x004ADB60, 0x100

    .global sStageBgInitProcedures
sStageBgInitProcedures: @ 0x084ADC60
    .4byte 0, 0     @ Zone 1
    .4byte 0, 0     @ Zone 2
    .4byte 0, 0     @ Zone 3
    .4byte CreateStageBg_Zone4, CreateStageBg_Zone4
    .4byte CreateStageBg_Zone5, CreateStageBg_Zone5
    .4byte 0, 0     @ Zone 6
    .4byte 0, CreateStageBg_Zone7_Act2  @ Zone 7
    .4byte 0, 0     @ Multiplayer 1, 2
    .4byte 0, 0     @ Multiplayer 3, 4

    .global sStageBgUpdateFuncs
sStageBgUpdateFuncs: @ 0x084ADCA8
    .4byte StageBgUpdate_Zone1Acts12, StageBgUpdate_Zone1Acts12
    .4byte StageBgUpdate_Zone2Act1, StageBgUpdate_Zone2Act2
    .4byte StageBgUpdate_Zone3Acts12, StageBgUpdate_Zone3Acts12
    .4byte StageBgUpdate_Zone4Acts12, StageBgUpdate_Zone4Acts12
    .4byte StageBgUpdate_Zone5Acts12, StageBgUpdate_Zone5Acts12
    .4byte StageBgUpdate_Zone6Act1, StageBgUpdate_Zone6Act2
    .4byte StageBgUpdate_Zone7Act1, StageBgUpdate_Zone7Act2
    .4byte StageBgUpdate_Zone1Acts12, StageBgUpdate_Zone2Act2
    .4byte StageBgUpdate_Zone3Acts12, StageBgUpdate_Zone6Act2

@ SA2: gUnknown_080D5A98 from camera.c
    .global gUnknown_084ADCF0
gUnknown_084ADCF0:
    .incbin "baserom.gba", 0x004ADCF0, 0x48

    .global gUnknown_084ADD38
gUnknown_084ADD38:
    .incbin "baserom.gba", 0x004ADD38, 0x8

    .global gTilemaps
gTilemaps:
    .incbin "baserom.gba", 0x004ADD40, 0x168

    .global gUnknown_084ADEA8
gUnknown_084ADEA8:
    .incbin "baserom.gba", 0x004ADEA8, 0x48

    .global gUnknown_084ADEF0
gUnknown_084ADEF0:
    .incbin "baserom.gba", 0x004ADEF0, 0x48

    .global gUnknown_084ADF38
gUnknown_084ADF38:
    .incbin "baserom.gba", 0x004ADF38, 0x40

    .global gUnknown_084ADF78
gUnknown_084ADF78:
    .incbin "baserom.gba", 0x004ADF78, 0x48

    .global gUnknown_084ADFC0
gUnknown_084ADFC0:
    .incbin "baserom.gba", 0x004ADFC0, 0x48

    .global gUnknown_084AE008
gUnknown_084AE008:
    .incbin "baserom.gba", 0x004AE008, 0x8

    .global gUnknown_084AE010
gUnknown_084AE010:
    .incbin "baserom.gba", 0x004AE010, 0x178

    .global gUnknown_084AE188
gUnknown_084AE188:
    .incbin "baserom.gba", 0x004AE188, 0x12

    .global gUnknown_084AE19A
gUnknown_084AE19A:
    .incbin "baserom.gba", 0x004AE19A, 0x12

    .global gUnknown_084AE1AC
gUnknown_084AE1AC:
    .incbin "baserom.gba", 0x004AE1AC, 0x4

    .global gUnknown_084AE1B0
gUnknown_084AE1B0:
    .incbin "baserom.gba", 0x004AE1B0, 0x14

    .global gUnknown_084AE1C4
gUnknown_084AE1C4:
    .incbin "baserom.gba", 0x004AE1C4, 0x384

    .global gUnknown_084AE548
gUnknown_084AE548:
    .incbin "baserom.gba", 0x004AE548, 0x18

    .global gUnknown_084AE560
gUnknown_084AE560:
    .incbin "baserom.gba", 0x004AE560, 0x1B0A94

    .global gUnknown_0865EFF4
gUnknown_0865EFF4:
    .incbin "baserom.gba", 0x0065EFF4, 0x78

    .global gUnknown_0865F06C
gUnknown_0865F06C:
    .incbin "baserom.gba", 0x0065F06C, 0x78

    .global gUnknown_0865F0E4
gUnknown_0865F0E4:
    .incbin "baserom.gba", 0x0065F0E4, 0x7A

    .global gUnknown_0865F15E
gUnknown_0865F15E:
    .incbin "baserom.gba", 0x0065F15E, 0x16

    .global gUnknown_0865F174
gUnknown_0865F174:
    .incbin "baserom.gba", 0x0065F174, 0x4

    .global gUnknown_0865F178
gUnknown_0865F178:
    .incbin "baserom.gba", 0x0065F178, 0x24E64

    .global gUnknown_08683FDC
gUnknown_08683FDC:
    .incbin "baserom.gba", 0x00683FDC, 0x40

    .global gUnknown_0868401C
gUnknown_0868401C:
    .incbin "baserom.gba", 0x0068401C, 0x20

    .global gUnknown_0868403C
gUnknown_0868403C:
    .incbin "baserom.gba", 0x0068403C, 0x800

    .global gUnknown_0868483C
gUnknown_0868483C:
    .incbin "baserom.gba", 0x0068483C, 0x500

    .global gUnknown_08684D3C
gUnknown_08684D3C:
    .incbin "baserom.gba", 0x00684D3C, 0x1000

    .global gUnknown_08685D3C
gUnknown_08685D3C:
    .incbin "baserom.gba", 0x00685D3C, 0x1E

    .global gUnknown_08685D5A
gUnknown_08685D5A:
    .incbin "baserom.gba", 0x00685D5A, 0x7E2

    .global gUnknown_0868653C
gUnknown_0868653C:
    .incbin "baserom.gba", 0x0068653C, 0x1600

    .global gUnknown_08687B3C
gUnknown_08687B3C:
    .incbin "baserom.gba", 0x00687B3C, 0x4

    .global gUnknown_08687B40
gUnknown_08687B40:
    .incbin "baserom.gba", 0x00687B40, 0x4

    .global gUnknown_08687B44
gUnknown_08687B44:
    .incbin "baserom.gba", 0x00687B44, 0x4

    .global gUnknown_08687B48
gUnknown_08687B48:
    .incbin "baserom.gba", 0x00687B48, 0x4

    .global gUnknown_08687B4C
gUnknown_08687B4C:
    .incbin "baserom.gba", 0x00687B4C, 0x4

    .global gUnknown_08687B50
gUnknown_08687B50:
    .incbin "baserom.gba", 0x00687B50, 0x4

    .global gUnknown_08687B54
gUnknown_08687B54:
    .incbin "baserom.gba", 0x00687B54, 0x198

    .global gUnknown_08687CEC
gUnknown_08687CEC:
    .incbin "baserom.gba", 0x00687CEC, 0x4

    .global gUnknown_08687CF0
gUnknown_08687CF0:
    .incbin "baserom.gba", 0x00687CF0, 0x4

    .global gUnknown_08687CF4
gUnknown_08687CF4:
    .incbin "baserom.gba", 0x00687CF4, 0x4

    .global gUnknown_08687CF8
gUnknown_08687CF8:
    .incbin "baserom.gba", 0x00687CF8, 0x20

    .global gUnknown_08687D18
gUnknown_08687D18:
    .incbin "baserom.gba", 0x00687D18, 0x4

    .global gUnknown_08687D1C
gUnknown_08687D1C:
    .incbin "baserom.gba", 0x00687D1C, 0x4

    .global gUnknown_08687D20
gUnknown_08687D20:
    .incbin "baserom.gba", 0x00687D20, 0x4

    .global gUnknown_08687D24
gUnknown_08687D24:
    .incbin "baserom.gba", 0x00687D24, 0x4

    .global gUnknown_08687D28
gUnknown_08687D28:
    .incbin "baserom.gba", 0x00687D28, 0x4

    .global gUnknown_08687D2C
gUnknown_08687D2C:
    .incbin "baserom.gba", 0x00687D2C, 0x4

    .global gUnknown_08687D30
gUnknown_08687D30:
    .incbin "baserom.gba", 0x00687D30, 0x18C

    .global gUnknown_08687EBC
gUnknown_08687EBC:
    .incbin "baserom.gba", 0x00687EBC, 0x4

    .global gUnknown_08687EC0
gUnknown_08687EC0:
    .incbin "baserom.gba", 0x00687EC0, 0x4

    .global gUnknown_08687EC4
gUnknown_08687EC4:
    .incbin "baserom.gba", 0x00687EC4, 0x4

    .global gUnknown_08687EC8
gUnknown_08687EC8:
    .incbin "baserom.gba", 0x00687EC8, 0x4

    .global gUnknown_08687ECC
gUnknown_08687ECC:
    .incbin "baserom.gba", 0x00687ECC, 0x4

    .global gUnknown_08687ED0
gUnknown_08687ED0:
    .incbin "baserom.gba", 0x00687ED0, 0x4

    .global gUnknown_08687ED4
gUnknown_08687ED4:
    .incbin "baserom.gba", 0x00687ED4, 0x78

    .global gUnknown_08687F4C
gUnknown_08687F4C:
    .incbin "baserom.gba", 0x00687F4C, 0xF0

    .global gUnknown_0868803C
gUnknown_0868803C:
    .incbin "baserom.gba", 0x0068803C, 0x21C

    .global gUnknown_08688258
gUnknown_08688258:
    .incbin "baserom.gba", 0x00688258, 0x120

    .global gUnknown_08688378
gUnknown_08688378:
    .incbin "baserom.gba", 0x00688378, 0xE

    .global gUnknown_08688386
gUnknown_08688386:
    .incbin "baserom.gba", 0x00688386, 0xE

    .global gUnknown_08688394
gUnknown_08688394:
    .incbin "baserom.gba", 0x00688394, 0x4

    .global gUnknown_08688398
gUnknown_08688398:
    .incbin "baserom.gba", 0x00688398, 0x14

    .global gUnknown_086883AC
gUnknown_086883AC:
    .incbin "baserom.gba", 0x006883AC, 0x4

    .global gUnknown_086883B0
gUnknown_086883B0:
    .incbin "baserom.gba", 0x006883B0, 0x8

    .global gUnknown_086883B8
gUnknown_086883B8:
    .incbin "baserom.gba", 0x006883B8, 0xC

    .global gUnknown_086883C4
gUnknown_086883C4:
    .incbin "baserom.gba", 0x006883C4, 0x8

    .global gUnknown_086883CC
gUnknown_086883CC:
    .incbin "baserom.gba", 0x006883CC, 0x18

    .global gUnknown_086883E4
gUnknown_086883E4:
    .incbin "baserom.gba", 0x006883E4, 0x14

    .global gUnknown_086883F8
gUnknown_086883F8:
    .incbin "baserom.gba", 0x006883F8, 0xC

    .global gUnknown_08688404
gUnknown_08688404:
    .incbin "baserom.gba", 0x00688404, 0xB

    .global gUnknown_0868840F
gUnknown_0868840F:
    .incbin "baserom.gba", 0x0068840F, 0xD

    .global gUnknown_0868841C
gUnknown_0868841C:
    .incbin "baserom.gba", 0x0068841C, 0xC

    .global gUnknown_08688428
gUnknown_08688428:
    .incbin "baserom.gba", 0x00688428, 0x1C

    .global gUnknown_08688444
gUnknown_08688444:
    .incbin "baserom.gba", 0x00688444, 0x4E

    .global gUnknown_08688492
gUnknown_08688492:
    .incbin "baserom.gba", 0x00688492, 0xD6

    .global gUnknown_08688568
gUnknown_08688568:
    .incbin "baserom.gba", 0x00688568, 0x4

    .global gUnknown_0868856C
gUnknown_0868856C:
    .incbin "baserom.gba", 0x0068856C, 0x4

    .global gUnknown_08688570
gUnknown_08688570:
    .incbin "baserom.gba", 0x00688570, 0x8

    .global gUnknown_08688578
gUnknown_08688578:
    .incbin "baserom.gba", 0x00688578, 0x4

    .global gUnknown_0868857C
gUnknown_0868857C:
    .incbin "baserom.gba", 0x0068857C, 0x4

    .global gUnknown_08688580
gUnknown_08688580:
    .incbin "baserom.gba", 0x00688580, 0x1C

    .global gUnknown_0868859C
gUnknown_0868859C:
    .incbin "baserom.gba", 0x0068859C, 0xC

    .global gUnknown_086885A8
gUnknown_086885A8:
    .incbin "baserom.gba", 0x006885A8, 0x1C

    .global gUnknown_086885C4
gUnknown_086885C4:
    .incbin "baserom.gba", 0x006885C4, 0xA

    .global gUnknown_086885CE
gUnknown_086885CE:
    .incbin "baserom.gba", 0x006885CE, 0x20

    .global gUnknown_086885EE
gUnknown_086885EE:
    .incbin "baserom.gba", 0x006885EE, 0xE

    .global gUnknown_086885FC
gUnknown_086885FC:
    .incbin "baserom.gba", 0x006885FC, 0x4

    .global gUnknown_08688600
gUnknown_08688600:
    .incbin "baserom.gba", 0x00688600, 0x2

    .global gUnknown_08688602
gUnknown_08688602:
    .incbin "baserom.gba", 0x00688602, 0x6

    .global gUnknown_08688608
gUnknown_08688608:
    .incbin "baserom.gba", 0x00688608, 0x10

    .global gUnknown_08688618
gUnknown_08688618:
    .incbin "baserom.gba", 0x00688618, 0x14

    .global gUnknown_0868862C
gUnknown_0868862C:
    .incbin "baserom.gba", 0x0068862C, 0xC

    .global gUnknown_08688638
gUnknown_08688638:
    .incbin "baserom.gba", 0x00688638, 0x18

    .global gUnknown_08688650
gUnknown_08688650:
    .incbin "baserom.gba", 0x00688650, 0x8

    .global gUnknown_08688658
gUnknown_08688658:
    .incbin "baserom.gba", 0x00688658, 0xC

    .global gUnknown_08688664
gUnknown_08688664:
    .incbin "baserom.gba", 0x00688664, 0x20

    .global gUnknown_08688684
gUnknown_08688684:
    .incbin "baserom.gba", 0x00688684, 0x4

    .global gUnknown_08688688
gUnknown_08688688:
    .incbin "baserom.gba", 0x00688688, 0x4

    .global gUnknown_0868868C
gUnknown_0868868C:
    .incbin "baserom.gba", 0x0068868C, 0x4

    .global gUnknown_08688690
gUnknown_08688690:
    .incbin "baserom.gba", 0x00688690, 0x4

    .global gUnknown_08688694
gUnknown_08688694:
    .incbin "baserom.gba", 0x00688694, 0x4

    .global gUnknown_08688698
gUnknown_08688698:
    .incbin "baserom.gba", 0x00688698, 0x4

    .global gUnknown_0868869C
gUnknown_0868869C:
    .incbin "baserom.gba", 0x0068869C, 0x4

    .global gUnknown_086886A0
gUnknown_086886A0:
    .incbin "baserom.gba", 0x006886A0, 0x18

    .global gUnknown_086886B8
gUnknown_086886B8:
    .incbin "baserom.gba", 0x006886B8, 0x3

    .global gUnknown_086886BB
gUnknown_086886BB:
    .incbin "baserom.gba", 0x006886BB, 0x29BD

    .global gUnknown_0868B078
gUnknown_0868B078:
    .incbin "baserom.gba", 0x0068B078, 0x54

    .global gUnknown_0868B0CC
gUnknown_0868B0CC:
    .incbin "baserom.gba", 0x0068B0CC, 0x8

    .global gUnknown_0868B0D4
gUnknown_0868B0D4:
    .incbin "baserom.gba", 0x0068B0D4, 0x18

    .global gUnknown_0868B0EC
gUnknown_0868B0EC:
    .incbin "baserom.gba", 0x0068B0EC, 0x8

    .global gUnknown_0868B0F4
gUnknown_0868B0F4:
    .incbin "baserom.gba", 0x0068B0F4, 0x8

    .global gUnknown_0868B0FC
gUnknown_0868B0FC:
    .incbin "baserom.gba", 0x0068B0FC, 0x10

    .global gUnknown_0868B10C
gUnknown_0868B10C:
    .incbin "baserom.gba", 0x0068B10C, 0xB4

    .global gUnknown_0868B1C0
gUnknown_0868B1C0:
    .incbin "baserom.gba", 0x0068B1C0, 0x60

    .global gUnknown_0868B220
gUnknown_0868B220:
    .incbin "baserom.gba", 0x0068B220, 0x20

    .global gUnknown_0868B240
gUnknown_0868B240:
    .incbin "baserom.gba", 0x0068B240, 0x8

    .global gUnknown_0868B248
gUnknown_0868B248:
    .incbin "baserom.gba", 0x0068B248, 0x34

    .global gUnknown_0868B27C
gUnknown_0868B27C:
    .incbin "baserom.gba", 0x0068B27C, 0x4

    .global gUnknown_0868B280
gUnknown_0868B280:
    .incbin "baserom.gba", 0x0068B280, 0x4

    .global gUnknown_0868B284
gUnknown_0868B284:
    .incbin "baserom.gba", 0x0068B284, 0x4

    .global gUnknown_0868B288
gUnknown_0868B288:
    .incbin "baserom.gba", 0x0068B288, 0x4

    .global gUnknown_0868B28C
gUnknown_0868B28C:
    .incbin "baserom.gba", 0x0068B28C, 0x48

    .global gUnknown_0868B2D4
gUnknown_0868B2D4:
    .incbin "baserom.gba", 0x0068B2D4, 0x48

    .global gUnknown_0868B31C
gUnknown_0868B31C:
    .incbin "baserom.gba", 0x0068B31C, 0x6C

    .global gUnknown_0868B388
gUnknown_0868B388:
    .incbin "baserom.gba", 0x0068B388, 0x30

    .global gUnknown_0868B3B8
gUnknown_0868B3B8:
    .incbin "baserom.gba", 0x0068B3B8, 0x8

    .global gUnknown_0868B3C0
gUnknown_0868B3C0:
    .incbin "baserom.gba", 0x0068B3C0, 0x2

    .global gUnknown_0868B3C2
gUnknown_0868B3C2:
    .incbin "baserom.gba", 0x0068B3C2, 0x6

    .global gUnknown_0868B3C8
gUnknown_0868B3C8:
    .incbin "baserom.gba", 0x0068B3C8, 0x8

    .global gUnknown_0868B3D0
gUnknown_0868B3D0:
    .incbin "baserom.gba", 0x0068B3D0, 0x8

    .global gUnknown_0868B3D8
gUnknown_0868B3D8:
    .incbin "baserom.gba", 0x0068B3D8, 0x10

    .global gUnknown_0868B3E8
gUnknown_0868B3E8:
    .incbin "baserom.gba", 0x0068B3E8, 0x10

    .global gUnknown_0868B3F8
gUnknown_0868B3F8:
    .incbin "baserom.gba", 0x0068B3F8, 0x10

    .global gUnknown_0868B408
gUnknown_0868B408:
    .incbin "baserom.gba", 0x0068B408, 0x10

    .global gUnknown_0868B418
gUnknown_0868B418:
    .incbin "baserom.gba", 0x0068B418, 0x10

    .global gUnknown_0868B428
gUnknown_0868B428:
    .incbin "baserom.gba", 0x0068B428, 0x10

    .global gUnknown_0868B438
gUnknown_0868B438:
    .incbin "baserom.gba", 0x0068B438, 0x10

    .global gUnknown_0868B448
gUnknown_0868B448:
    .incbin "baserom.gba", 0x0068B448, 0x10

    .global gUnknown_0868B458
gUnknown_0868B458:
    .incbin "baserom.gba", 0x0068B458, 0x10

    .global gUnknown_0868B468
gUnknown_0868B468:
    .incbin "baserom.gba", 0x0068B468, 0x10

    .global gUnknown_0868B478
gUnknown_0868B478:
    .incbin "baserom.gba", 0x0068B478, 0x10

    .global gUnknown_0868B488
gUnknown_0868B488:
    .incbin "baserom.gba", 0x0068B488, 0x10

    .global gUnknown_0868B498
gUnknown_0868B498:
    .incbin "baserom.gba", 0x0068B498, 0x10

    .global gUnknown_0868B4A8
gUnknown_0868B4A8:
    .incbin "baserom.gba", 0x0068B4A8, 0x10

    .global gUnknown_0868B4B8
gUnknown_0868B4B8:
    .incbin "baserom.gba", 0x0068B4B8, 0x6

    .global gUnknown_0868B4BE
gUnknown_0868B4BE:
    .incbin "baserom.gba", 0x0068B4BE, 0xC6

    .global gUnknown_0868B584
gUnknown_0868B584:
    .incbin "baserom.gba", 0x0068B584, 0x10

    .global gUnknown_0868B594
gUnknown_0868B594:
    .incbin "baserom.gba", 0x0068B594, 0x10

    .global gUnknown_0868B5A4
gUnknown_0868B5A4:
    .incbin "baserom.gba", 0x0068B5A4, 0x10

    .global gUnknown_0868B5B4
gUnknown_0868B5B4:
    .incbin "baserom.gba", 0x0068B5B4, 0x10

    .global gUnknown_0868B5C4
gUnknown_0868B5C4:
    .incbin "baserom.gba", 0x0068B5C4, 0x70

    .global gUnknown_0868B634
gUnknown_0868B634:
    .incbin "baserom.gba", 0x0068B634, 0x10

    .global gUnknown_0868B644
gUnknown_0868B644:
    .incbin "baserom.gba", 0x0068B644, 0x10

    .global gUnknown_0868B654
gUnknown_0868B654:
    .incbin "baserom.gba", 0x0068B654, 0x4

    .global gUnknown_0868B658
gUnknown_0868B658:
    .incbin "baserom.gba", 0x0068B658, 0x4

    .global gUnknown_0868B65C
gUnknown_0868B65C:
    .incbin "baserom.gba", 0x0068B65C, 0x1C

    .global gUnknown_0868B678
gUnknown_0868B678:
    .incbin "baserom.gba", 0x0068B678, 0xC

    .global gUnknown_0868B684
gUnknown_0868B684:
    .incbin "baserom.gba", 0x0068B684, 0x10

    .global gUnknown_0868B694
gUnknown_0868B694:
    .incbin "baserom.gba", 0x0068B694, 0x8

    .global gUnknown_0868B69C
gUnknown_0868B69C:
    .incbin "baserom.gba", 0x0068B69C, 0x4

    .global gUnknown_0868B6A0
gUnknown_0868B6A0:
    .incbin "baserom.gba", 0x0068B6A0, 0x18

    .global gUnknown_0868B6B8
gUnknown_0868B6B8:
    .incbin "baserom.gba", 0x0068B6B8, 0xC

    .global gUnknown_0868B6C4
gUnknown_0868B6C4:
    .incbin "baserom.gba", 0x0068B6C4, 0x10

    .global gUnknown_0868B6D4
gUnknown_0868B6D4:
    .incbin "baserom.gba", 0x0068B6D4, 0x18

    .global gUnknown_0868B6EC
gUnknown_0868B6EC:
    .incbin "baserom.gba", 0x0068B6EC, 0x18

    .global gUnknown_0868B704
gUnknown_0868B704:
    .incbin "baserom.gba", 0x0068B704, 0xC

    .global gUnknown_0868B710
gUnknown_0868B710:
    .incbin "baserom.gba", 0x0068B710, 0xC

    .global gUnknown_0868B71C
gUnknown_0868B71C:
    .incbin "baserom.gba", 0x0068B71C, 0x6

    .global gUnknown_0868B722
gUnknown_0868B722:
    .incbin "baserom.gba", 0x0068B722, 0x6

    .global gUnknown_0868B728
gUnknown_0868B728:
    .incbin "baserom.gba", 0x0068B728, 0x1

    .global gUnknown_0868B729
gUnknown_0868B729:
    .incbin "baserom.gba", 0x0068B729, 0xB

    .global gUnknown_0868B734
gUnknown_0868B734:
    .incbin "baserom.gba", 0x0068B734, 0x1

    .global gUnknown_0868B735
gUnknown_0868B735:
    .incbin "baserom.gba", 0x0068B735, 0x23

    .global gUnknown_0868B758
gUnknown_0868B758:
    .incbin "baserom.gba", 0x0068B758, 0x8

    .global gUnknown_0868B760
gUnknown_0868B760:
    .incbin "baserom.gba", 0x0068B760, 0xC

    .global gUnknown_0868B76C
gUnknown_0868B76C:
    .incbin "baserom.gba", 0x0068B76C, 0xC

    .global gUnknown_0868B778
gUnknown_0868B778:
    .incbin "baserom.gba", 0x0068B778, 0x6

    .global gUnknown_0868B77E
gUnknown_0868B77E:
    .incbin "baserom.gba", 0x0068B77E, 0x4

    .global gUnknown_0868B782
gUnknown_0868B782:
    .incbin "baserom.gba", 0x0068B782, 0x4

    .global gUnknown_0868B786
gUnknown_0868B786:
    .incbin "baserom.gba", 0x0068B786, 0x4

    .global gUnknown_0868B78A
gUnknown_0868B78A:
    .incbin "baserom.gba", 0x0068B78A, 0x1

    .global gUnknown_0868B78B
gUnknown_0868B78B:
    .incbin "baserom.gba", 0x0068B78B, 0x5

    .global gUnknown_0868B790
gUnknown_0868B790:
    .incbin "baserom.gba", 0x0068B790, 0x4

    .global gUnknown_0868B794
gUnknown_0868B794:
    .incbin "baserom.gba", 0x0068B794, 0x80

    .global gUnknown_0868B814
gUnknown_0868B814:
    .incbin "baserom.gba", 0x0068B814, 0x24

    .global gUnknown_0868B838
gUnknown_0868B838:
    .incbin "baserom.gba", 0x0068B838, 0xC

    .global gUnknown_0868B844
gUnknown_0868B844:
    .incbin "baserom.gba", 0x0068B844, 0x90

    .global gUnknown_0868B8D4
gUnknown_0868B8D4:
    .incbin "baserom.gba", 0x0068B8D4, 0x20

    .global gUnknown_0868B8F4
gUnknown_0868B8F4:
    .incbin "baserom.gba", 0x0068B8F4, 0x7C0

    .global gUnknown_0868C0B4
gUnknown_0868C0B4:
    .incbin "baserom.gba", 0x0068C0B4, 0x500

    .global gUnknown_0868C5B4
gUnknown_0868C5B4:
    .incbin "baserom.gba", 0x0068C5B4, 0x20

    .global gUnknown_0868C5D4
gUnknown_0868C5D4:
    .incbin "baserom.gba", 0x0068C5D4, 0x940

    .global gUnknown_0868CF14
gUnknown_0868CF14:
    .incbin "baserom.gba", 0x0068CF14, 0x500

    .global gUnknown_0868D414
gUnknown_0868D414:
    .incbin "baserom.gba", 0x0068D414, 0x20

    .global gUnknown_0868D434
gUnknown_0868D434:
    .incbin "baserom.gba", 0x0068D434, 0x620

    .global gUnknown_0868DA54
gUnknown_0868DA54:
    .incbin "baserom.gba", 0x0068DA54, 0x580

    .global gUnknown_0868DFD4
gUnknown_0868DFD4:
    .incbin "baserom.gba", 0x0068DFD4, 0x20

    .global gUnknown_0868DFF4
gUnknown_0868DFF4:
    .incbin "baserom.gba", 0x0068DFF4, 0x600

    .global gUnknown_0868E5F4
gUnknown_0868E5F4:
    .incbin "baserom.gba", 0x0068E5F4, 0x580

    .global gUnknown_0868EB74
gUnknown_0868EB74:
    .incbin "baserom.gba", 0x0068EB74, 0x200

    .global gUnknown_0868ED74
gUnknown_0868ED74:
    .incbin "baserom.gba", 0x0068ED74, 0x7C0

    .global gUnknown_0868F534
gUnknown_0868F534:
    .incbin "baserom.gba", 0x0068F534, 0x1040

    .global gUnknown_08690574
gUnknown_08690574:
    .incbin "baserom.gba", 0x00690574, 0x1800

    .global gUnknown_08691D74
gUnknown_08691D74:
    .incbin "baserom.gba", 0x00691D74, 0x500

    .global gUnknown_08692274
gUnknown_08692274:
    .incbin "baserom.gba", 0x00692274, 0x200

    .global gUnknown_08692474
gUnknown_08692474:
    .incbin "baserom.gba", 0x00692474, 0x4C0

    .global gUnknown_08692934
gUnknown_08692934:
    .incbin "baserom.gba", 0x00692934, 0x1040

    .global gUnknown_08693974
gUnknown_08693974:
    .incbin "baserom.gba", 0x00693974, 0x1880

    .global gUnknown_086951F4
gUnknown_086951F4:
    .incbin "baserom.gba", 0x006951F4, 0x500

    .global gUnknown_086956F4
gUnknown_086956F4:
    .incbin "baserom.gba", 0x006956F4, 0x200

    .global gUnknown_086958F4
gUnknown_086958F4:
    .incbin "baserom.gba", 0x006958F4, 0x9C0

    .global gUnknown_086962B4
gUnknown_086962B4:
    .incbin "baserom.gba", 0x006962B4, 0x1040

    .global gUnknown_086972F4
gUnknown_086972F4:
    .incbin "baserom.gba", 0x006972F4, 0x1900

    .global gUnknown_08698BF4
gUnknown_08698BF4:
    .incbin "baserom.gba", 0x00698BF4, 0x500

    .global gUnknown_086990F4
gUnknown_086990F4:
    .incbin "baserom.gba", 0x006990F4, 0x200

    .global gUnknown_086992F4
gUnknown_086992F4:
    .incbin "baserom.gba", 0x006992F4, 0x680

    .global gUnknown_08699974
gUnknown_08699974:
    .incbin "baserom.gba", 0x00699974, 0x1040

    .global gUnknown_0869A9B4
gUnknown_0869A9B4:
    .incbin "baserom.gba", 0x0069A9B4, 0x1C40

    .global gUnknown_0869C5F4
gUnknown_0869C5F4:
    .incbin "baserom.gba", 0x0069C5F4, 0x500

    .global gUnknown_0869CAF4
gUnknown_0869CAF4:
    .incbin "baserom.gba", 0x0069CAF4, 0x200

    .global gUnknown_0869CCF4
gUnknown_0869CCF4:
    .incbin "baserom.gba", 0x0069CCF4, 0x1C40

    .global gUnknown_0869E934
gUnknown_0869E934:
    .incbin "baserom.gba", 0x0069E934, 0x500

    .global gUnknown_0869EE34
gUnknown_0869EE34:
    .incbin "baserom.gba", 0x0069EE34, 0x200

    .global gUnknown_0869F034
gUnknown_0869F034:
    .incbin "baserom.gba", 0x0069F034, 0x20C0

    .global gUnknown_086A10F4
gUnknown_086A10F4:
    .incbin "baserom.gba", 0x006A10F4, 0x700

    .global gUnknown_086A17F4
gUnknown_086A17F4:
    .incbin "baserom.gba", 0x006A17F4, 0xD40

    .global gUnknown_086A2534
gUnknown_086A2534:
    .incbin "baserom.gba", 0x006A2534, 0x500

    .global gUnknown_086A2A34
gUnknown_086A2A34:
    .incbin "baserom.gba", 0x006A2A34, 0x200

    .global gUnknown_086A2C34
gUnknown_086A2C34:
    .incbin "baserom.gba", 0x006A2C34, 0x1180

    .global gUnknown_086A3DB4
gUnknown_086A3DB4:
    .incbin "baserom.gba", 0x006A3DB4, 0x1000

    .global gUnknown_086A4DB4
gUnknown_086A4DB4:
    .incbin "baserom.gba", 0x006A4DB4, 0x200

    .global gUnknown_086A4FB4
gUnknown_086A4FB4:
    .incbin "baserom.gba", 0x006A4FB4, 0x880

    .global gUnknown_086A5834
gUnknown_086A5834:
    .incbin "baserom.gba", 0x006A5834, 0x500

    .global gUnknown_086A5D34
gUnknown_086A5D34:
    .incbin "baserom.gba", 0x006A5D34, 0x200

    .global gUnknown_086A5F34
gUnknown_086A5F34:
    .incbin "baserom.gba", 0x006A5F34, 0x2F00

    .global gUnknown_086A8E34
gUnknown_086A8E34:
    .incbin "baserom.gba", 0x006A8E34, 0xA00

    .global gUnknown_086A9834
gUnknown_086A9834:
    .incbin "baserom.gba", 0x006A9834, 0x2840

    .global gUnknown_086AC074
gUnknown_086AC074:
    .incbin "baserom.gba", 0x006AC074, 0xAC0

    .global gUnknown_086ACB34
gUnknown_086ACB34:
    .incbin "baserom.gba", 0x006ACB34, 0x29C0

    .global gUnknown_086AF4F4
gUnknown_086AF4F4:
    .incbin "baserom.gba", 0x006AF4F4, 0xAC0

    .global gUnknown_086AFFB4
gUnknown_086AFFB4:
    .incbin "baserom.gba", 0x006AFFB4, 0x1440

    .global gUnknown_086B13F4
gUnknown_086B13F4:
    .incbin "baserom.gba", 0x006B13F4, 0x6C0

    .global gUnknown_086B1AB4
gUnknown_086B1AB4:
    .incbin "baserom.gba", 0x006B1AB4, 0x20

    .global gUnknown_086B1AD4
gUnknown_086B1AD4:
    .incbin "baserom.gba", 0x006B1AD4, 0x20

    .global gUnknown_086B1AF4
gUnknown_086B1AF4:
    .incbin "baserom.gba", 0x006B1AF4, 0x20

    .global gUnknown_086B1B14
gUnknown_086B1B14:
    .incbin "baserom.gba", 0x006B1B14, 0x1A0

    .global gUnknown_086B1CB4
gUnknown_086B1CB4:
    .incbin "baserom.gba", 0x006B1CB4, 0x540

    .global gUnknown_086B21F4
gUnknown_086B21F4:
    .incbin "baserom.gba", 0x006B21F4, 0x800

    .global gUnknown_086B29F4
gUnknown_086B29F4:
    .incbin "baserom.gba", 0x006B29F4, 0x200

    .global gUnknown_086B2BF4
gUnknown_086B2BF4:
    .incbin "baserom.gba", 0x006B2BF4, 0x1E00

    .global gUnknown_086B49F4
gUnknown_086B49F4:
    .incbin "baserom.gba", 0x006B49F4, 0x800

    .global gUnknown_086B51F4
gUnknown_086B51F4:
    .incbin "baserom.gba", 0x006B51F4, 0x200

    .global gUnknown_086B53F4
gUnknown_086B53F4:
    .incbin "baserom.gba", 0x006B53F4, 0x1B80

    .global gUnknown_086B6F74
gUnknown_086B6F74:
    .incbin "baserom.gba", 0x006B6F74, 0x800

    .global gUnknown_086B7774
gUnknown_086B7774:
    .incbin "baserom.gba", 0x006B7774, 0x200

    .global gUnknown_086B7974
gUnknown_086B7974:
    .incbin "baserom.gba", 0x006B7974, 0x1880

    .global gUnknown_086B91F4
gUnknown_086B91F4:
    .incbin "baserom.gba", 0x006B91F4, 0x800

    .global gUnknown_086B99F4
gUnknown_086B99F4:
    .incbin "baserom.gba", 0x006B99F4, 0x200

    .global gUnknown_086B9BF4
gUnknown_086B9BF4:
    .incbin "baserom.gba", 0x006B9BF4, 0x1840

    .global gUnknown_086BB434
gUnknown_086BB434:
    .incbin "baserom.gba", 0x006BB434, 0x800

    .global gUnknown_086BBC34
gUnknown_086BBC34:
    .incbin "baserom.gba", 0x006BBC34, 0x200

    .global gUnknown_086BBE34
gUnknown_086BBE34:
    .incbin "baserom.gba", 0x006BBE34, 0x2980

    .global gUnknown_086BE7B4
gUnknown_086BE7B4:
    .incbin "baserom.gba", 0x006BE7B4, 0x1000

    .global gUnknown_086BF7B4
gUnknown_086BF7B4:
    .incbin "baserom.gba", 0x006BF7B4, 0x200

    .global gUnknown_086BF9B4
gUnknown_086BF9B4:
    .incbin "baserom.gba", 0x006BF9B4, 0x57C0

    .global gUnknown_086C5174
gUnknown_086C5174:
    .incbin "baserom.gba", 0x006C5174, 0xA00

    .global gUnknown_086C5B74
gUnknown_086C5B74:
    .incbin "baserom.gba", 0x006C5B74, 0x200

    .global gUnknown_086C5D74
gUnknown_086C5D74:
    .incbin "baserom.gba", 0x006C5D74, 0x1EC0

    .global gUnknown_086C7C34
gUnknown_086C7C34:
    .incbin "baserom.gba", 0x006C7C34, 0xA00

    .global gUnknown_086C8634
gUnknown_086C8634:
    .incbin "baserom.gba", 0x006C8634, 0x200

    .global gUnknown_086C8834
gUnknown_086C8834:
    .incbin "baserom.gba", 0x006C8834, 0x3540

    .global gUnknown_086CBD74
gUnknown_086CBD74:
    .incbin "baserom.gba", 0x006CBD74, 0xA00

    .global gUnknown_086CC774
gUnknown_086CC774:
    .incbin "baserom.gba", 0x006CC774, 0x20

    .global gUnknown_086CC794
gUnknown_086CC794:
    .incbin "baserom.gba", 0x006CC794, 0xA0

    .global gUnknown_086CC834
gUnknown_086CC834:
    .incbin "baserom.gba", 0x006CC834, 0x500

    .global gUnknown_086CCD34
gUnknown_086CCD34:
    .incbin "baserom.gba", 0x006CCD34, 0x20

    .global gUnknown_086CCD54
gUnknown_086CCD54:
    .incbin "baserom.gba", 0x006CCD54, 0xBA0

    .global gUnknown_086CD8F4
gUnknown_086CD8F4:
    .incbin "baserom.gba", 0x006CD8F4, 0x500

    .global gUnknown_086CDDF4
gUnknown_086CDDF4:
    .incbin "baserom.gba", 0x006CDDF4, 0x500

    .global gUnknown_086CE2F4
gUnknown_086CE2F4:
    .incbin "baserom.gba", 0x006CE2F4, 0x200

    .global gUnknown_086CE4F4
gUnknown_086CE4F4:
    .incbin "baserom.gba", 0x006CE4F4, 0x300

    .global gUnknown_086CE7F4
gUnknown_086CE7F4:
    .incbin "baserom.gba", 0x006CE7F4, 0x500

    .global gUnknown_086CECF4
gUnknown_086CECF4:
    .incbin "baserom.gba", 0x006CECF4, 0x8

    .global gUnknown_086CECFC
gUnknown_086CECFC:
    .incbin "baserom.gba", 0x006CECFC, 0x8

    .global gUnknown_086CED04
gUnknown_086CED04:
    .incbin "baserom.gba", 0x006CED04, 0x24

    .global gUnknown_086CED28
gUnknown_086CED28:
    .incbin "baserom.gba", 0x006CED28, 0x24

    .global gUnknown_086CED4C
gUnknown_086CED4C:
    .incbin "baserom.gba", 0x006CED4C, 0x20

    .global gUnknown_086CED6C
gUnknown_086CED6C:
    .incbin "baserom.gba", 0x006CED6C, 0x24

    .global gUnknown_086CED90
gUnknown_086CED90:
    .incbin "baserom.gba", 0x006CED90, 0x8

    .global gUnknown_086CED98
gUnknown_086CED98:
    .incbin "baserom.gba", 0x006CED98, 0x24

    .global gUnknown_086CEDBC
gUnknown_086CEDBC:
    .incbin "baserom.gba", 0x006CEDBC, 0x4

    .global gUnknown_086CEDC0
gUnknown_086CEDC0:
    .incbin "baserom.gba", 0x006CEDC0, 0x6C

    .global gUnknown_086CEE2C
gUnknown_086CEE2C:
    .incbin "baserom.gba", 0x006CEE2C, 0x24

    .global gUnknown_086CEE50
gUnknown_086CEE50:
    .incbin "baserom.gba", 0x006CEE50, 0x10

    .global gUnknown_086CEE60
gUnknown_086CEE60:
    .incbin "baserom.gba", 0x006CEE60, 0x10
    
    .global gUnknown_086CEE70
gUnknown_086CEE70:
    .incbin "baserom.gba", 0x006CEE70, 0xC764
