#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "data/ui_graphics.h"
#include "game/game_over.h"
#include "game/gTask_03006240.h"
#include "game/save.h"
#include "game/stage/ui.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"
#include "constants/text.h" // for UILANG_COUNT

typedef struct PlayerDataMenu {
    /* 0x00 */ Sprite s;
    /* 0x30 */ Sprite s2[4];
    /* 0xF0 */ StrcUi_805423C strcF0;
    /* 0xFC */ u8 fillerFC[0x8];
    /* 0x104 */ u16 unk104;
    /* 0x106 */ u16 unk106;
    /* 0x108 */ u16 unk108;
    /* 0x10A */ u16 unk10A;
    /* 0x10C */ u16 unk10C;
    /* 0x10E */ u16 unk10E;
    /* 0x110 */ u8 filler110[0x2];
    /* 0x112 */ u8 unk112;
    /* 0x114 */ u16 unk114;
    /* 0x116 */ u16 unk116;
    /* 0x118 */ u8 unk118;
    /* 0x119 */ u8 unk119;

    //    sp34 = &subroutine_arg0 + 0x2C;
} PlayerDataMenu; /* 0x11C */

extern AnimId sPlayerDataMenuAnims[UILANG_COUNT];
extern u8 sPlayerDataMenuVariants[3];
extern u8 sPlayerDataMenuYOffsets[3];
extern u8 sPlayerDataMenuTileCounts[3];
extern VoidFn gUnknown_080BB3D0[3];
extern AnimId gPressStartTiles[UILANG_COUNT];

extern const u8 gPalette_086CCD34[];
extern const u8 gTiles_086CCD54[];
extern const u8 gLayout_086CD8F4[];
extern const u8 gLayout_086CDDF4[];

void CreatePlayerDataMenu();
void Task_PlayerDataMenuInit(void);
void TaskDestructor_PlayerDataMenu(struct Task *t);

void CreatePlayerDataMenu()
{
    Strc_80528AC sp4;
    s8 *sp34;
    s8 *sp38;
    s8 *sp3C;
    const UiGraphics *sp40;
    Sprite *s;
    Sprite *temp_r7_2;
    u8 *temp_r1;
    u8 *temp_r1_2;
    StrcUi_805423C *temp_r4;
    u8 *var_r0;
    u8 i;

    struct Task *t;
    PlayerDataMenu *menu;

    gDispCnt = 0x1140;
    gBgCntRegs[0] = 0x1B04;
    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    t = TaskCreate(Task_PlayerDataMenuInit, 0x11CU, 0x2000U, 0U, TaskDestructor_PlayerDataMenu);

    menu = TASK_DATA(t);
    s = &menu->s;
    s->x = 0;
    s->y = 0;
    s->graphics.dest = VramMalloc(22);
    s->oamFlags = SPRITE_OAM_ORDER(15);
    s->graphics.size = 0;
    s->graphics.anim = 857;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    for (i = 0; i < 3; i++) {
        s = &menu->s2[i];
        s->x = 25;
        s->y = sPlayerDataMenuYOffsets[i];
        s->graphics.dest = VramMalloc(sPlayerDataMenuTileCounts[i]);
        s->oamFlags = SPRITE_OAM_ORDER(15);
        s->graphics.size = 0;
        s->graphics.anim = sPlayerDataMenuAnims[gLoadedSaveGame.uiLanguage];
        s->variant = sPlayerDataMenuVariants[i];
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = 0xFF;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    menu->unk116 = 0;
    menu->unk118 = 0;
    menu->unk119 = 0;
    menu->unk114 = 0;

    sub_80535FC();

    UiGfxStackInit();

    sp4.uiGfxID = 128;
    sp4.unk2B = 0;
    sp4.tiles = (void *)&gTiles_086CCD54;
    sp4.tilesSize = 0xBA0;
    sp4.palette = (void *)&gPalette_086CCD34;
    sp4.paletteSize = 0x20;
    if (gLoadedSaveGame.uiLanguage == 0) {
        sp4.layout = &gLayout_086CDDF4[0];
        sp4.layoutSize = 0x500;
    } else {
        sp4.layout = &gLayout_086CD8F4[0];
        sp4.layoutSize = 0x500;
    }
    sp4.unk28 = 0;
    sp4.unk29 = 0;
    sp4.unk2A = 0x15;
    sub_80528AC(&sp4);

    sp4.uiGfxID = 0;
    sp4.unk2B = 1;
    sp4.tiles = gUiGraphics[sp4.uiGfxID].tiles;
    sp4.palette = gUiGraphics[sp4.uiGfxID].palette;
    sp4.vramC = VramMalloc(0xE0U);
    sp4.tilesSize = 0x1C00;
    sp4.paletteSize = 0x20;
    sp4.unk28 = 1;
    sp4.unk2A = 0xD;
    sp4.unk0.unk4 = gUiGraphics[sp4.uiGfxID].unk8;
    sp4.unk0.unk8 = gUiGraphics[sp4.uiGfxID].unkC;
    sp4.unk0.unk9 = gUiGraphics[sp4.uiGfxID].unk10;
    sp4.unk0.unkA = gUiGraphics[sp4.uiGfxID].unk14;
    sp4.unk0.unkB = gUiGraphics[sp4.uiGfxID].unk18;
    sub_80528AC(&sp4);

    s = &menu->s2[3];
    s->graphics.dest = sp4.vramC;
    sp4.uiGfxID = 60;
    sp4.unk2B = 2;
    sp4.tiles = gUiGraphics[sp4.uiGfxID].tiles;
    sp4.palette = gUiGraphics[sp4.uiGfxID].palette;
    sp4.vramC = s->graphics.dest;
    sp4.tilesSize = 0x20;
    sp4.paletteSize = 0x20;
    sp4.unk28 = 1;
    sp4.unk2A = 0xC;
    sp4.unk0.unk4 = gUiGraphics[sp4.uiGfxID].unk8;
    sp4.unk0.unk8 = gUiGraphics[sp4.uiGfxID].unkC;
    sp4.unk0.unk9 = gUiGraphics[sp4.uiGfxID].unk10;
    sp4.unk0.unkA = gUiGraphics[sp4.uiGfxID].unk14;
    sp4.unk0.unkB = gUiGraphics[sp4.uiGfxID].unk18;
    sub_80528AC(&sp4);

    menu->unk106 = 0x8C;
    menu->unk108 = 0x3D;
    menu->unk10A = 1;
    menu->unk10C = 1;
    menu->unk10E = 1;
    menu->unk112 = 1;
    menu->unk104 = 0;

    i = 0;
    temp_r4 = &menu->strcF0;
    for (i = 0; i < 6; i++) {
        if ((u8)(gLoadedSaveGame.playerName[i] - 0x20) > 105) {
            gLoadedSaveGame.playerName[i] = 0x20;
        }
    }

    temp_r4->unk0 = 0;
    temp_r4->unk2 = 1;
    temp_r4->unk4 = 2;
    temp_r4->unk6 = 0;
    temp_r4->unk8 = 0x100;
    temp_r4->unkA = 0x10;
    sub_805423C(temp_r4);
    m4aSongNumStart(MUS_PLAYER_DATA);
}

#if 0
void CreatePlayerDataMenu(PlayerDataMenu *menu) {
    Strc_80528AC sp4;
    s8 *sp34;
    s8 *sp38;
    s8 *sp3C;
    UiGraphics *sp40;
    Sprite *temp_r7;
    Sprite *temp_r7_2;
    u8 *temp_r1;
    u8 *temp_r1_2;
    u8 *temp_r4;
    u8 *var_r0;
    u8 var_r5;
    u8 var_r5_2;

    gDispCnt = 0x1140;
    var_r5 = 0;
    *gBgCntRegs = 0x1B04;
    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    TaskCreate(Task_PlayerDataMenuInit, 0x11CU, 0x2000U, 0U, TaskDestructor_PlayerDataMenu);
    menu->s.x = 0;
    menu->s.y = 0;
    menu->s.graphics.dest = VramMalloc(0x16U);
    menu->s.oamFlags = 0x3C0;
    menu->s.graphics.size = 0;
    menu->s.graphics.anim = 0x359;
    menu->s.variant = 0;
    menu->s.animCursor = 0;
    menu->s.qAnimDelay = 0;
    menu->s.prevVariant = 0xFF;
    menu->s.animSpeed = 0x10;
    menu->s.palId = 0;
    menu->s.frameFlags = 0;
    UpdateSpriteAnimation(&menu->s);
    sp34 = &subroutine_arg0 + 0x2C;
    sp38 = &subroutine_arg0 + 0x2D;
    sp3C = &subroutine_arg0 + 0x2E;
    do {
        temp_r7 = &menu->s2[var_r5];
        temp_r7->x = 0x19;
        temp_r7->y = (s16) *(var_r5 + &sPlayerDataMenuYOffsets);
        temp_r7->graphics.dest = VramMalloc((u32) *(var_r5 + &sPlayerDataMenuTileCounts));
        temp_r7->oamFlags = 0x3C0;
        temp_r7->graphics.size = 0;
        temp_r7->graphics.anim = *((gLoadedSaveGame.uiLanguage * 2) + &sPlayerDataMenuAnims);
        temp_r7->variant = *(var_r5 + &sPlayerDataMenuVariants);
        temp_r7->animCursor = 0;
        temp_r7->qAnimDelay = 0;
        temp_r1 = &temp_r7->prevVariant;
        *temp_r1 = 0xFF;
        temp_r1[1] = 0x10;
        temp_r7->palId = 0;
        temp_r7->frameFlags = 0;
        UpdateSpriteAnimation(temp_r7);
        var_r5 = (u8) (var_r5 + 1);
    } while ((u32) var_r5 <= 2U);
    menu->fillerF0[0x26] = 0;
    menu->fillerF0[0x28] = 0;
    menu->fillerF0[0x29] = 0;
    menu->fillerF0[0x24] = 0;
    sub_80535FC();
    UiGfxStackInit();
    sp4.uiGfxID = 0x80;
    sp4.unk2B = 0;
    sp4.tiles = &gTiles_086CCD54;
    sp4.tilesSize = 0xBA0;
    sp4.palette = &gUnknown_086CCD34;
    sp4.paletteSize = 0x20;
    if (gLoadedSaveGame.uiLanguage == 0) {
        var_r0 = &gUnknown_086CDDF4;
    } else {
        var_r0 = &gLayout_086CD8F4;
    }
    sp4.layout = var_r0;
    sp4.layoutSize = 0x500;
    *sp34 = 0;
    *sp38 = 0;
    *sp3C = 0x15;
    sub_80528AC(&sp4);
    sp4.uiGfxID = 0;
    sp4.unk2B = 1;
    sp4.tiles = gUiGraphics[sp4.uiGfxID].tiles;
    sp4.palette = *((sp4.uiGfxID * 0x1C) + &gUiGraphics->palette);
    sp40 = gUiGraphics;
    sp4.vramC = VramMalloc(0xE0U);
    sp4.tilesSize = 0x1C00;
    sp4.paletteSize = 0x20;
    *sp34 = 1;
    *sp3C = 0xD;
    sp4.unk0.unk4 = *((sp4.uiGfxID * 0x1C) + &gUiGraphics->unk8);
    sp4.unk0.unk8 = (u8) *((sp4.uiGfxID * 0x1C) + &gUiGraphics->unkC);
    sp4.unk0.unk9 = (u8) *((sp4.uiGfxID * 0x1C) + &gUiGraphics->unk10);
    sp4.unk0.unkA = (u8) *((sp4.uiGfxID * 0x1C) + &gUiGraphics->unk14);
    sp4.unk0.unkB = (u8) *((sp4.uiGfxID * 0x1C) + &gUiGraphics->unk18);
    sp40 = gUiGraphics;
    sub_80528AC(&sp4);
    temp_r7_2 = &menu->s2[3];
    temp_r7_2->graphics.dest = sp4.vramC;
    sp4.uiGfxID = 0x3C;
    sp4.unk2B = 2;
    sp4.tiles = sp40[sp4.uiGfxID].tiles;
    sp4.palette = *((sp4.uiGfxID * 0x1C) + &gUiGraphics->palette);
    sp4.vramC = temp_r7_2->graphics.dest;
    sp4.tilesSize = 0x20;
    sp4.paletteSize = 0x20;
    *sp34 = 1;
    *sp3C = 0xC;
    sp4.unk0.unk4 = *((sp4.uiGfxID * 0x1C) + &gUiGraphics->unk8);
    sp4.unk0.unk8 = (u8) *((sp4.uiGfxID * 0x1C) + &gUiGraphics->unkC);
    sp4.unk0.unk9 = (u8) *((sp4.uiGfxID * 0x1C) + &gUiGraphics->unk10);
    sp4.unk0.unkA = (u8) *((sp4.uiGfxID * 0x1C) + &gUiGraphics->unk14);
    sp4.unk0.unkB = (u8) *((sp4.uiGfxID * 0x1C) + &gUiGraphics->unk18);
    sub_80528AC(&sp4);
    menu->fillerF0[0x16] = 0x8C;
    menu->fillerF0[0x18] = 0x3D;
    menu->fillerF0[0x1A] = 1;
    menu->fillerF0[0x1C] = 1;
    menu->fillerF0[0x1E] = 1;
    menu->fillerF0[0x22] = 1;
    menu->fillerF0[0x14] = 0;
    var_r5_2 = 0;
    temp_r4 = menu->fillerF0;
    do {
        temp_r1_2 = &gLoadedSaveGame.playerName[var_r5_2];
        if ((u32) (u8) (*temp_r1_2 - 0x20) > 0x69U) {
            *temp_r1_2 = 0x20;
        }
        var_r5_2 = (u8) (var_r5_2 + 1);
    } while ((u32) var_r5_2 <= 5U);
    temp_r4->unk0 = 0;
    temp_r4->unk2 = 1;
    temp_r4->unk4 = 2;
    temp_r4->unk6 = 0;
    temp_r4->unk8 = 0x100;
    temp_r4->unkA = 0x10;
    sub_805423C((StrcUi_805423C *) temp_r4);
    m4aSongNumStart(0x30U);
}

void Task_PlayerDataMenuInit(void) {
    s16 temp_r7;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r5;
    u16 temp_r1_3;
    u16 temp_r4;
    u16 temp_r6;

    temp_r4 = gCurTask->data;
    temp_r5 = temp_r4 + 0xF0;
    if ((sub_805423C((StrcUi_805423C *) temp_r5) << 0x18) != 0) {
        temp_r7 = *(temp_r5 + 4);
        if (temp_r7 == 2) {
            temp_r6 = 0x40 & gRepeatedKeys;
            if (temp_r6 != 0) {
                m4aSongNumStart(0x6CU);
                temp_r1 = temp_r4 + 0x118;
                temp_r0 = *temp_r1 - 1;
                *temp_r1 = (u8) temp_r0;
                if ((u32) (u8) temp_r0 > 2U) {
                    *temp_r1 = (u8) temp_r7;
                }
            } else if (0x80 & gRepeatedKeys) {
                m4aSongNumStart(0x6CU);
                temp_r1_2 = temp_r4 + 0x118;
                temp_r0_2 = *temp_r1_2 + 1;
                *temp_r1_2 = (u8) temp_r0_2;
                if ((u32) (u8) temp_r0_2 > 2U) {
                    *temp_r1_2 = (u8) temp_r6;
                }
            }
            if (3 & gPressedKeys) {
                *(temp_r4 + 0x03000000 + 0x114) = gPressedKeys;
                temp_r5->unk4 = 1;
                temp_r5->unk6 = 0;
                if (1 & gPressedKeys) {
                    m4aSongNumStart(0x6AU);
                } else {
                    m4aSongNumStart(0x6BU);
                }
            }
            goto block_16;
        }
        temp_r1_3 = *(temp_r4 + 0x114);
        if (1 & temp_r1_3) {
            *(temp_r4 + 0x119) = 1;
            *((*(temp_r4 + 0x118) * 4) + &gUnknown_080BB3D0)();
            return;
        }
        if (2 & temp_r1_3) {
            PlayerDataSelectOK();
            return;
        }
        goto block_16;
    }
block_16:
    sub_8011C94();
}

void sub_8011C94(void) {
    s32 temp_r2;
    s32 temp_r5;
    s32 temp_r6;
    u16 temp_r1;
    u8 *temp_r1_2;
    u8 var_r4;
    u8 var_r4_2;

    temp_r1 = gCurTask->data;
    temp_r5 = temp_r1 + 0x03000000;
    temp_r5->unk16 = 9;
    temp_r5->unk18 = (s16) (*(*(temp_r1 + 0x118) + &sPlayerDataMenuYOffsets) + 0xFFFE);
    DisplaySprite((Sprite *) temp_r5);
    var_r4 = 0;
    do {
        temp_r2 = temp_r5 + ((var_r4 * 0x30) + 0x30);
        if (*(temp_r5 + 0x118) == var_r4) {
            temp_r2->unk16 = 0x1E;
            if (*(temp_r5 + 0x119) != 0) {
                *(temp_r2 + 0x25) = 1;
            } else {
                *(temp_r2 + 0x25) = 0;
            }
        } else {
            temp_r2->unk16 = 0x19;
        }
        temp_r2->unk18 = (s16) *(var_r4 + &sPlayerDataMenuYOffsets);
        DisplaySprite((Sprite *) temp_r2);
        var_r4 = (u8) (var_r4 + 1);
    } while ((u32) var_r4 <= 2U);
    var_r4_2 = 0;
    temp_r6 = temp_r5 + 0x108;
    do {
        *(temp_r5 + 0x106) = (s16) ((var_r4_2 * 8) + 0x9F);
        *temp_r6 = 0x3C;
        temp_r1_2 = &gLoadedSaveGame.playerName[var_r4_2];
        if ((u32) (u8) (*temp_r1_2 - 0x70) <= 0x19U) {
            *temp_r6 = 0x44;
        }
        sub_8052F78(temp_r1_2, (GameOverB *) (temp_r1 + 0x030000FC));
        var_r4_2 = (u8) (var_r4_2 + 1);
    } while ((u32) var_r4_2 <= 5U);
}

void PlayerDataSelectName(void) {
    TaskDestroy(gCurTask);
    CreatePlayerNameInputMenu();
}

void PlayerDataSelectVsRecord(void) {
    TaskDestroy(gCurTask);
    CreateVsRecord();
}

void PlayerDataSelectOK(void) {
    TaskDestroy(gCurTask);
    CreateOptionsMenu();
}

void TaskDestructor_PlayerDataMenu(struct Task *arg0) {
    u16 temp_r4;
    u8 var_r5;

    temp_r4 = arg0->data;
    VramFree((temp_r4 + 0x03000000)->unk4);
    var_r5 = 0;
    do {
        VramFree(*(temp_r4 + 0x34 + (var_r5 * 0x30)));
        var_r5 = (u8) (var_r5 + 1);
    } while ((u32) var_r5 <= 3U);
}

#endif
