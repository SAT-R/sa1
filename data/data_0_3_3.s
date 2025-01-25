.section .rodata

.align 2, 0
    .global gUnknown_084ADB18
gUnknown_084ADB18:
    .4byte sub_803DCCC, sub_803DD00
    .4byte sub_803DD78, sub_803DDBC, sub_803D888, sub_803D940
    .4byte sub_803DE00, sub_803DE44, sub_803DE88, sub_803DEA8
    .4byte sub_803D9F8, sub_803DEC8, sub_803DF58, sub_803DF64
    .4byte sub_803DF70, sub_803DFC0, sub_803DB2C, sub_803E004

    .global gStageCameraBgTemplates 
gStageCameraBgTemplates :
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
    .global sStageBgDimensions
sStageBgDimensions:
    .incbin "baserom.gba", 0x004ADCF0, 0x48

    .global gUnknown_084ADD38
gUnknown_084ADD38:
    .byte 0xE2, 0x01, 0x00, 0x09, 0xE3, 0x01, 0x00, 0x04
