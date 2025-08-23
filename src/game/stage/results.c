#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/gTask_03006240.h"
#include "game/credits.h"
#include "game/save.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/stage/camera.h"
#include "game/stage/player.h"
#include "game/stage/stage.h"
#include "game/stage/ui.h"
#include "data/ui_graphics.h"

#include "constants/ui_graphics.h"
#include "constants/zones.h"

typedef struct VramPtrs {
    /* 0x00 */ void *vram0;
    /* 0x04 */ void *vram4;
} VramPtrs;

typedef struct StrcStgResults_34 {
    /* 0x00 */ GameOverB unk0;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ u16 unk1C;
    /* 0x1E */ u16 unk1E;
    /* 0x20 */ u8 unk20[0x4];
    /* 0x24 */ s32 unk24;
    /* 0x20 */ u8 filler28[0x8];
    /* 0x30 */ s32 unk30;
} StrcStgResults_34; /* 0x34 */

typedef struct StrcStgResults_38 {
    /* 0x00 */ u16 unk0;
    /* 0x02 */ u16 unk2;
    /* 0x04 */ u16 unk4;
    /* 0x06 */ u16 unk6;
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u8 unkA;
    /* 0x0C */ struct Task *taskC; // -> StrcStgResults_34 *
    /* 0x10 */ struct Task *task10; // -> StrcStgResults_34 *
    /* 0x14 */ struct Task *task14; // -> StrcStgResults_34 *
    /* 0x18 */ struct Task *task18; // -> StrcStgResults_34 *
    /* 0x1C */ VramPtrs unk1C;
    /* 0x24 */ s16 unk24;
    /* 0x28 */ s32 unk28;
    /* 0x2C */ s32 unk2C;
    /* 0x30 */ s32 unk30;
    /* 0x34 */ u16 unk34;
    /* 0x36 */ u8 unk36;
} StrcStgResults_38; /* 0x38 */

extern void sub_8069C94(TimeRecord record);

extern ALIGNED(4) u8 gUnknown_08688404[11];
extern ALIGNED(4) u8 gUnknown_0868840F[11];
extern ALIGNED(4) u8 gUnknown_0868841C[12];

void sub_8056FE4(VramPtrs *ptrs);

void Task_8057B74(void);
void Task_8057C3C(void);
void Task_8057D30(void);
void Task_805803C(void);

// StrcStgResults_38
void Task_8057888(void);
void TaskDestructor_8058344(struct Task *t);

void sub_8056FE4(VramPtrs *arg0)
{
    Strc_80528AC sp00;
    const void *var_r0;

    sp00.uiGfxID = UIGFX_STGRESULT_HEADLINE_BACK;
    sp00.unk2B = 8;
    sp00.tiles = gUiGraphics[UIGFX_STGRESULT_HEADLINE_BACK].tiles;
    sp00.palette = gUiGraphics[UIGFX_STGRESULT_HEADLINE_BACK].palette;
    sp00.tilesSize = (8 * 2) * TILE_SIZE_4BPP;
    sp00.unk24 = 32;
    sp00.unk28 = 6;
    sp00.vramC = (void *)BG_VRAM + 0x11000; // TODO: Create VRAM_RESERVED_ #define!
    sp00.unk2A = 13;
    sp00.unk0.unk4 = gUiGraphics[UIGFX_STGRESULT_HEADLINE_BACK].unk8;
    sp00.unk0.unk8 = gUiGraphics[UIGFX_STGRESULT_HEADLINE_BACK].unkC;
    sp00.unk0.unk9 = gUiGraphics[UIGFX_STGRESULT_HEADLINE_BACK].unk10;
    sp00.unk0.unkA = gUiGraphics[UIGFX_STGRESULT_HEADLINE_BACK].unk14;
    sp00.unk0.unkB = gUiGraphics[UIGFX_STGRESULT_HEADLINE_BACK].unk18;
    sub_80528AC(&sp00);

    sp00.uiGfxID = UIGFX_34;
    sp00.unk2B = 2;

    if (gCurrentLevel == LEVEL_INDEX(ZONE_7, ACT_THE_MOON)) {
        sp00.tiles = gUiGraphics[sp00.uiGfxID].tiles + 0x1E00;
    } else if (gCurrentLevel == LEVEL_INDEX(ZONE_7, ACT_X_ZONE)) {
        sp00.tiles = gUiGraphics[sp00.uiGfxID].tiles + 0x1400;
    } else if (gCurrentLevel & 0x1) {
        sp00.tiles = gUiGraphics[sp00.uiGfxID].tiles + 0xA00;
    } else {
        sp00.tiles = gUiGraphics[sp00.uiGfxID].tiles;
    }

    sp00.palette = gUiGraphics[sp00.uiGfxID].palette;
    sp00.unk24 = 32;
    sp00.unk28 = 12;
    sp00.tilesSize = 0xA00;
    sp00.vramC = (void *)arg0->vram0 + 0x600; // TODO: Create VRAM_RESERVED_ #define!
    sp00.unk2A = 0xD;
    sp00.unk0.unk4 = gUiGraphics[sp00.uiGfxID].unk8;
    sp00.unk0.unk8 = (gUiGraphics[sp00.uiGfxID].unkC);
    sp00.unk0.unk9 = (gUiGraphics[sp00.uiGfxID].unk10);
    sp00.unk0.unkA = (gUiGraphics[sp00.uiGfxID].unk14);
    sp00.unk0.unkB = (gUiGraphics[sp00.uiGfxID].unk18);
    sub_80528AC(&sp00);

    sp00.uiGfxID = gSelectedCharacter + UIGFX_STGRESULT_SONIC;
    sp00.unk2B = 2;
    sp00.tiles = gUiGraphics[sp00.uiGfxID].tiles;
    sp00.palette = gUiGraphics[sp00.uiGfxID].palette;
    sp00.tilesSize = (8 * 6) * TILE_SIZE_4BPP;
    sp00.unk24 = 12;
    sp00.unk28 = 12;
    sp00.vramC = (void *)arg0->vram0; // TODO: Create VRAM_RESERVED_ #define!
    sp00.unk2A = 0xD;
    sp00.unk0.unk4 = gUiGraphics[sp00.uiGfxID].unk8;
    sp00.unk0.unk8 = (gUiGraphics[sp00.uiGfxID].unkC);
    sp00.unk0.unk9 = (gUiGraphics[sp00.uiGfxID].unk10);
    sp00.unk0.unkA = (gUiGraphics[sp00.uiGfxID].unk14);
    sp00.unk0.unkB = (gUiGraphics[sp00.uiGfxID].unk18);
    sub_80528AC(&sp00);

    sp00.uiGfxID = UIGFX_ASCII_CHARS;
    sp00.unk2B = 4;
    sp00.tiles = gUiGraphics[sp00.uiGfxID].tiles + 0x9C0;
    sp00.palette = gUiGraphics[sp00.uiGfxID].palette;
    sp00.tilesSize = 2 * TILE_SIZE_4BPP;
    sp00.unk24 = 32;
    sp00.unk28 = 0x6;
    sp00.vramC = (void *)arg0->vram4 + 0x240; // TODO: Create VRAM_RESERVED_ #define!
    sp00.unk2A = 0xD;
    sp00.unk0.unk4 = gUiGraphics[sp00.uiGfxID].unk8;
    sp00.unk0.unk8 = (gUiGraphics[sp00.uiGfxID].unkC);
    sp00.unk0.unk9 = (gUiGraphics[sp00.uiGfxID].unk10);
    sp00.unk0.unkA = (gUiGraphics[sp00.uiGfxID].unk14);
    sp00.unk0.unkB = (gUiGraphics[sp00.uiGfxID].unk18);
    sub_80528AC(&sp00);

    sp00.tiles = gUiGraphics[sp00.uiGfxID].tiles + 0xB40;
    sp00.vramC = arg0->vram4 + 0x100;
    sp00.tilesSize = 6 * TILE_SIZE_4BPP;
    sub_80528AC(&sp00);

    sp00.tiles = gUiGraphics[sp00.uiGfxID].tiles + 0x880;
    sp00.vramC = arg0->vram4 + 0x1C0;
    sp00.tilesSize = 2 * TILE_SIZE_4BPP;
    sub_80528AC(&sp00);

    sp00.tiles = gUiGraphics[sp00.uiGfxID].tiles + 0x940;
    sp00.vramC = arg0->vram4 + 0x200;
    sub_80528AC(&sp00);

    sp00.tiles = gUiGraphics[sp00.uiGfxID].tiles + 0xA40;
    sp00.vramC = arg0->vram4 + 0x280;
    sub_80528AC(&sp00);

    sp00.tiles = gUiGraphics[sp00.uiGfxID].tiles + 0x1240;
    sp00.vramC = arg0->vram4 + 0x2C0;
    sub_80528AC(&sp00);

    sp00.tiles = gUiGraphics[sp00.uiGfxID].tiles + 0xC80;
    sp00.vramC = arg0->vram4 + 0;
    sp00.tilesSize = 8 * TILE_SIZE_4BPP;
    sub_80528AC(&sp00);
}

// (93.06%) https://decomp.me/scratch/mM5tB
NONMATCH("asm/non_matching/game/stage/results__CreateStageResults.inc", u32 CreateStageResults(u32 ringCount, u32 courseTime))
{
    s16 temp_r2_5;
    s16 var_r5_6;
    s32 temp_r0_11;
    s16 temp_r0_5;
    s16 temp_r2_3;
    StrcStgResults_38 *temp_r4;
    StrcStgResults_34 *temp_r7;
    StrcStgResults_34 *temp_r7_2;
    s32 var_r0;
    struct Task *temp_r5;
    struct Task *taskLast;
    struct Task *t1;
    struct Task *t2;
    struct Task *t0;
    s32 sp10;
    u32 sp14;
    u32 sp18;
    s32 sp1C;
    u16 temp_r1_2;
    u16 temp_r2;
    u32 score;
    u32 ringScore;
    s16 ringCount2 = ringCount;
    bool32 isInFinalStage;

    ringScore = 100 * ringCount;
    LOADED_SAVE->score += ringCount2;
    gStageFlags |= 0x20;
    if (gCurrentLevel == 0xA) {
        gCamera.sa2__unk50 |= 0x2000;
    }
    if (gGameMode == 1) {
        sub_8069C94(courseTime);
        return 0U;
    }

    isInFinalStage = 0;
    if ((gSelectedCharacter == CHARACTER_SONIC) && (gCurrentLevel >= LEVEL_INDEX(ZONE_7, ACT_X_ZONE)) && (LOADED_SAVE->unk1D == 0x7F)
        && (LOADED_SAVE->unk8[0] > 12) && (LOADED_SAVE->unk8[1] > 12) && (LOADED_SAVE->unk8[2] > 12) && (LOADED_SAVE->unk8[3] > 12)
        && ((LOADED_SAVE->unk8[0] != 0xF) || (gMultiplayerCurrentLevel != LEVEL_INDEX(ZONE_7, ACT_X_ZONE)))) {
        isInFinalStage = 1;
    }

    sp1C = isInFinalStage;
    if (isInFinalStage == 0) {
        temp_r2 = LOADED_SAVE->unk8[gPlayer.character];
        var_r0 = gCurrentLevel + 1;

        if (var_r0 < temp_r2) {
            var_r0 = temp_r2;
        }
        LOADED_SAVE->unk8[gPlayer.character] = var_r0;
    }

    if (gCurrentLevel == LEVEL_INDEX(ZONE_6, ACT_1)) {
        const s32 countDown = ZONE_TIME_TO_INT(3, 0);
        if (gCheckpointTime <= +countDown) {
            courseTime = 1;
        } else {
            courseTime = gCheckpointTime - countDown;
        }
    }
    if (gCurrentLevel == LEVEL_INDEX(ZONE_7, ACT_THE_MOON)) {
        m4aSongNumStart(0x24U);
    } else if (gCurrentLevel == LEVEL_INDEX(ZONE_7, ACT_X_ZONE)) {
        m4aSongNumStart(0x23U);
    } else if (gCurrentLevel & 0x1) {
        m4aSongNumStart(0x22U);
    } else {
        m4aSongNumStart(0x21U);
    }

    gMusicManagerState.unk0 = 0xFF;

    if (courseTime >= 21600) {
        score = 0;
    } else if (courseTime >= ZONE_TIME_TO_INT(5, 0)) {
        score = 500;
    } else if (courseTime >= ZONE_TIME_TO_INT(4, 0)) {
        score = 1000;
    } else if (courseTime >= ZONE_TIME_TO_INT(3, 0)) {
        score = 2000;
    } else if (courseTime >= ZONE_TIME_TO_INT(2, 0)) {
        score = 3000;
    } else if (courseTime >= ZONE_TIME_TO_INT(1, 30)) {
        score = 4000;
    } else if (courseTime >= ZONE_TIME_TO_INT(1, 0)) {
        score = 5000;
    } else if (courseTime >= ZONE_TIME_TO_INT(0, 50)) {
        score = 10000;
    } else if (courseTime >= ZONE_TIME_TO_INT(0, 30)) {
        score = 50000;
    } else {
        score = 80000;
    }

    if (ringScore > score) {
        sp10 = Div(ringScore, 100) + 75;
    } else {
        sp10 = Div(score, 100) + 75;
    }

    sp18 = ringScore;
    sp14 = score;
    UiGfxStackInit();

    t0 = TaskCreate(Task_8057B74, sizeof(StrcStgResults_34), 0x2120U, 0U, 0);
    temp_r7 = TASK_DATA(t0);
    temp_r7->unk1C = 0;
    temp_r7->unk30 = sp10;
    temp_r7->unk1E = 0;
    temp_r7->unk0.qUnkA = 0xF0;
    temp_r7->unk0.unkC = 0x7E;
    temp_r7->unk0.unkE = 8;
    temp_r7->unk0.unk10 = 8;
    temp_r7->unk0.unk12 = 6;
    temp_r7->unk0.unk16 = 1;
    temp_r7->unk0.unk8 = 0xA;

    t1 = TaskCreate(Task_8057C3C, sizeof(StrcStgResults_34), 0x2120U, 0U, 0);
    temp_r7 = TASK_DATA(t1);
    temp_r7->unk1C = 0;
    temp_r7->unk30 = sp10;
    temp_r7->unk1E = 0;
    temp_r7->unk0.qUnkA = 0x100;
    temp_r7->unk0.unkC = 0x80;
    temp_r7->unk0.unkE = 9;
    temp_r7->unk0.unk10 = 2;
    temp_r7->unk0.unk12 = 0xC;
    temp_r7->unk0.unk16 = 1;
    temp_r7->unk0.unk8 = 0;

    t2 = TaskCreate(Task_8057D30, sizeof(StrcStgResults_34), 0x2120U, 0U, 0);
    temp_r7 = TASK_DATA(t2);
    temp_r7->unk18 = ringScore;
    temp_r7->unk1C = 0;
    temp_r7->unk30 = sp10;
    temp_r7->unk1E = 0;
    temp_r7->unk0.qUnkA = 0x100;
    temp_r7->unk0.unkC = 0x66;
    temp_r7->unk0.unkE = 0x10;
    temp_r7->unk0.unk10 = 4;
    temp_r7->unk0.unk12 = 6;
    temp_r7->unk0.unk16 = 1;
    temp_r7->unk0.unk8 = 0;

    for (temp_r2_3 = 15; temp_r2_3 >= 0; temp_r2_3--) {
        temp_r0_11 = Div(ringScore, 10);
        temp_r7->unk20[temp_r2_3] = ((ringScore - (temp_r0_11 * 10)) + 0x20);
        ringScore = temp_r0_11;
    };

    for (var_r5_6 = 11; var_r5_6 < 15; var_r5_6++) {
        if (temp_r7->unk20[var_r5_6] == 0x20) {
            temp_r7->unk20[var_r5_6] = 0x2BU;
        } else {
            break;
        }
    }

    for (var_r5_6 = 0; var_r5_6 < 11; var_r5_6++) {
        temp_r7->unk20[var_r5_6] = gUnknown_08688404[var_r5_6];
    }

    taskLast = TaskCreate(Task_805803C, sizeof(StrcStgResults_34), 0x2120U, 0, 0);
    temp_r7 = TASK_DATA(taskLast);
    temp_r7->unk18 = score;
    temp_r7->unk1C = 0;
    temp_r7->unk30 = sp10;
    temp_r7->unk1E = 0;
    temp_r7->unk0.qUnkA = 0x100;
    temp_r7->unk0.unkC = 0x50;
    temp_r7->unk0.unkE = 0x10;
    temp_r7->unk0.unk10 = 4;
    temp_r7->unk0.unk12 = 6;
    temp_r7->unk0.unk16 = 1;
    temp_r7->unk0.unk8 = 0;

    for (var_r5_6 = 15; var_r5_6 >= 0; var_r5_6--) {
        temp_r0_11 = Div(score, 10);
        temp_r7->unk20[var_r5_6] = ((score - ((temp_r0_11 * 10))) + 0x20);
        score = temp_r0_11;
    };

    for (var_r5_6 = 11; var_r5_6 < 15; var_r5_6++) {
        if (temp_r7->unk20[var_r5_6] == 0x20) {
            temp_r7->unk20[var_r5_6] = 0x2BU;
        } else {
            break;
        }
    }

    for (var_r5_6 = 0; var_r5_6 < 11; var_r5_6++) {
        temp_r7->unk20[var_r5_6] = gUnknown_0868840F[var_r5_6];
    }

    // StrcStgResults_38
    temp_r5 = TaskCreate(Task_8057888, sizeof(StrcStgResults_38), 0x2100U, 0U, TaskDestructor_8058344);
    temp_r4 = TASK_DATA(temp_r5);
    temp_r4->unk24 = 0;
    temp_r4->unk2C = sp18;
    temp_r4->unk30 = sp14;
    temp_r4->unk34 = 0x2D;
    temp_r4->unk28 = sp10;
    temp_r4->task14 = t0;
    temp_r4->task18 = taskLast;
    temp_r4->task10 = t1;
    temp_r4->taskC = t2;
    temp_r4->unk0 = 0;
    temp_r4->unk2 = 0;
    temp_r4->unk4 = 1;
    temp_r4->unk6 = 0;
    temp_r4->unk8 = 0x100;
    temp_r4->unkA = 1;
    temp_r4->unk36 = sp1C;

    // TODO: ALLOC_TILES() instead of VramMalloc!
    temp_r4->unk1C.vram0 = VramMalloc(0x80U);
    temp_r4->unk1C.vram4 = VramMalloc(0x1EU);
    sub_8056FE4(&temp_r4->unk1C);

    return (sp10 + 285);
}
END_NONMATCH

// TODO: Fix gotos.
// (100.00%) https://decomp.me/scratch/Srat8
void Task_8057888(void)
{
    u8 i;
    StrcStgResults_34 *taskC;
    StrcStgResults_34 *task10;
    StrcStgResults_34 *task14;
    StrcStgResults_34 *task18;
    u8 temp_r4;

    Player *p = &gPlayer;
    Camera *cam = &gCamera;
    StrcStgResults_38 *arg0;

    arg0 = TASK_DATA(gCurTask);

    task14 = TASK_DATA(arg0->task14);
    task18 = TASK_DATA(arg0->task18);
    task10 = TASK_DATA(arg0->task10);
    taskC = TASK_DATA(arg0->taskC);
    task14->unk1C = arg0->unk24;
    task18->unk1C = arg0->unk24;
    task10->unk1C = arg0->unk24;
    taskC->unk1C = arg0->unk24;

    if (arg0->unk24 < 135) {
        for (i = 0; i < 12; i++) {
            if (i != 0) {
                SA2_LABEL(sub_80047A0)(0U, 0x100, Div(i << 8, 12), i + 20);
            } else {
                SA2_LABEL(sub_80047A0)(0U, 0x100, 1, 20);
            }
        }
    }

    if (arg0->unk24 >= 0xB5) {
        if (arg0->unk2C == 0) {
            if (arg0->unk30 == 0) {
                goto blk_else;
            }
        } else {
            arg0->unk2C -= 100;
            INCREMENT_SCORE_A(100);
            taskC->unk18 = arg0->unk2C;
        }

        if (arg0->unk30 != 0) {
            arg0->unk30 -= 100;
            INCREMENT_SCORE_A(100);
            task18->unk18 = arg0->unk30;
        }

        if (arg0->unk2C == 0 && arg0->unk30 == 0) {
            if (!(gCurrentLevel & 0x1)) {
                p->moveState &= ~MOVESTATE_800000;
            }
            cam->SA2_LABEL(unk8) = 0;
            cam->SA2_LABEL(unkC) = 0;
            if (gSelectedCharacter == 0) {
                if ((arg0->unk36 == 0) && (gCurrentLevel >= LEVEL_INDEX(ZONE_7, ACT_X_ZONE))) {
                    arg0->unk34 = 0x87;
                } else {
                    arg0->unk34 = 0x2D;
                }

            } else if (IS_FINAL_STAGE(gCurrentLevel)) {
                arg0->unk34 = 0x87;
            } else {
                arg0->unk34 = 0x2D;
            }

            m4aSongNumStart(0x8D);
        } else if (Mod(gStageTime, 4) == 0) {
            m4aSongNumStart(0x8C);
        }
    }
    goto block_inc_return;

blk_else : {
    cam->sa2__unk8 = 0;
    cam->sa2__unkC = 0;

    if (((u32)I(p->qWorldX) - cam->x) + 0x40 > (DISPLAY_WIDTH + 128)) {
        gPlayer.qSpeedAirX = 0;
        gPlayer.qSpeedGround = 0;

        if (gNumSingleplayerCharacters == 2) {
            if ((I(gPartner.qWorldX) - cam->x) > (DISPLAY_WIDTH + 64)) {
                gPartner.moveState |= MOVESTATE_IA_OVERRIDE;
                gPartner.moveState |= MOVESTATE_IGNORE_INPUT;
                gPartner.heldInput = 0;
                gPartner.frameInput = 0;
                gPartner.qSpeedAirX = 0;
                gPartner.qSpeedGround = 0;
            }
        }
    }

    if (arg0->unk28 + DISPLAY_WIDTH < (u32)arg0->unk24) {
        if (!IS_FINAL_OR_EXTRA_STAGE(gCurrentLevel)) {
            sub_805423C((StrcUi_805423C *)arg0);
        }

        if ((arg0->unk34 == 0) || (--arg0->unk34 == 0)) {
            arg0->unk34 = 0;
            temp_r4 = arg0->unk36;

            TaskDestroy(arg0->taskC);
            TaskDestroy(arg0->task10);
            TaskDestroy(arg0->task14);
            TaskDestroy(arg0->task18);
            TaskDestroy(gCurTask);

            if (gSelectedCharacter == 0) {
                if (temp_r4 == 0) {
                    if (gCurrentLevel < LEVEL_INDEX(ZONE_7, ACT_X_ZONE)) {
                        GoToNextLevel();
                        return;
                    }
                    if (!IS_EXTRA_STAGE(gCurrentLevel)) {
                        CreateCongratulationsAnimation();
                    }
                }
                return;
            } else {
                if (IS_FINAL_STAGE(gCurrentLevel)) {
                    CreateCongratulationsAnimation();
                    return;
                } else {
                    GoToNextLevel();
                    return;
                }
            }
        }
    }
}

block_inc_return:
    arg0->unk24++;
}

void Task_8057B74(void)
{
    s16 temp_r0;
    s16 temp_r1;
    StrcStgResults_34 *arg0 = TASK_DATA(gCurTask);

    temp_r1 = arg0->unk1C;
    if (temp_r1 > (u32)(arg0->unk30 + 0xE6)) {
        if ((gCurrentLevel & 0x1) || ((s32)(s8)(u8)gCurrentLevel > 0xB)) {
            if (arg0->unk0.qUnkA < -0x20) {
                arg0->unk0.qUnkA = arg0->unk0.qUnkA + 0x20;
                if (arg0->unk0.unkE != 0) {
                    arg0->unk0.unkE = arg0->unk0.unkE - 1;
                }
            }
            arg0->unk0.qUnkA = arg0->unk0.qUnkA - 0x1A;
        }
    } else if (temp_r1 >= 50) {
        arg0->unk0.unkE = 9;
        arg0->unk0.unkC = 26;
    } else if (temp_r1 >= 36) {
        arg0->unk0.unkC -= 6;
    } else if (temp_r1 >= 26) {
        arg0->unk0.qUnkA = -16;
    } else if (temp_r1 >= 16) {
        arg0->unk0.qUnkA -= 26;

        if (arg0->unk0.qUnkA < -16) {
            arg0->unk0.qUnkA = -16;
        }
    }
    if ((u32)(arg0->unk30 + DISPLAY_WIDTH) < arg0->unk1C) {
        sub_8052F78(&gUnknown_0868841C[0], &arg0->unk0);
    } else {
        sub_80530CC(&gUnknown_0868841C[0], &arg0->unk0);
    }
}

#if 0
void Task_8057C3C(void) {
    s16 temp_r0;
    s16 temp_r0_2;
    s16 temp_r1;
    s16 temp_r2;
    s16 var_r0_2;
    s32 temp_r4;
    s32 var_r0;
    u16 temp_r3;

    memcpy(&subarg_0, &gUnknown_08688428, 0x19);
    temp_r4 = gCurTask->data + 0x03000000;
    temp_r1 = *(temp_r4 + 0x1C);
    if ((u32) temp_r1 > (u32) (temp_r4->unk30 + 0xE6)) {
        temp_r0 = temp_r4->unkA - 0x1C;
        temp_r4->unkA = (u16) temp_r0;
        if ((s32) temp_r0 < -0x1F) {
            if (*(temp_r4 + 0xE) != 0) {
                temp_r4->unkE = (u16) (temp_r4->unkE - 1);
            }
            var_r0 = temp_r4->unkA + 0x20;
            goto block_13;
        }
        goto block_14;
    }
    if ((s32) temp_r1 > 0x31) {
        temp_r4->unkC = 0x2CU;
        var_r0_2 = temp_r4->unkA - 2;
        temp_r4->unkA = (u16) var_r0_2;
        goto block_11;
    }
    if ((s32) temp_r1 > 0x23) {
        temp_r4->unkC = (u16) (temp_r4->unkC - 6);
        var_r0_2 = temp_r4->unkA - 2;
        temp_r4->unkA = (u16) var_r0_2;
        goto block_11;
    }
    if ((s32) temp_r1 > 0x19) {
        var_r0_2 = temp_r4->unkA - 2;
        temp_r4->unkA = (u16) var_r0_2;
        temp_r4->unkE = 9U;
block_11:
        if ((s32) var_r0_2 < -0x1F) {
            var_r0 = (s32) temp_r4->unkA + 0x1E;
block_13:
            temp_r4->unkA = (u16) var_r0;
            temp_r4->unk1E = (u16) Mod(temp_r4->unk1E + 1, 8);
        }
block_14:
        sub_80530CC(temp_r4->unk1E + sp, (GameOverB *) temp_r4);
        return;
    }
    if ((s32) temp_r1 > 0xF) {
        temp_r3 = temp_r4->unkA;
        temp_r0_2 = temp_r3 - 0x1C;
        temp_r4->unkA = (u16) temp_r0_2;
        temp_r2 = temp_r0_2;
        if ((s32) temp_r2 <= 0xEF) {
            temp_r4->unkE = (u16) (9 - ((s32) (temp_r0_2 << 0x10) >> 0x15));
            if ((s32) temp_r2 < -0x1F) {
                temp_r4->unkA = (u16) (temp_r3 + 4);
                temp_r4->unk1E = (u16) Mod(temp_r4->unk1E + 1, 8);
            }
            sub_80530CC(temp_r4->unk1E + sp, (GameOverB *) temp_r4);
        }
    }
}

void Task_8057D30(void) {
    s32 sp0;
    s16 temp_r0_10;
    s16 temp_r0_8;
    s16 temp_r4;
    s16 temp_r4_3;
    s16 var_r0;
    s16 var_r0_2;
    s32 temp_r0_11;
    s32 temp_r0_12;
    s32 temp_r0_15;
    s32 temp_r0_18;
    s32 temp_r0_19;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_7;
    s32 temp_r0_9;
    s32 temp_r1_2;
    s32 temp_r1_4;
    s32 temp_r2_2;
    s32 temp_r3;
    s32 temp_r3_3;
    s32 temp_r4_2;
    s32 temp_r5;
    s32 var_r7;
    s8 temp_r0_13;
    s8 temp_r0_16;
    s8 temp_r0_17;
    s8 temp_r0_20;
    s8 temp_r0_4;
    s8 temp_r0_5;
    s8 temp_r0_6;
    s8 temp_r2;
    s8 temp_r2_3;
    s8 temp_r3_2;
    s8 temp_r3_4;
    s8 var_r6;
    s8 var_r6_2;
    s8 var_r6_3;
    s8 var_r6_4;
    s8 var_r6_6;
    u16 temp_r0;
    u16 temp_r1;
    u16 temp_r1_3;
    u16 var_r1;
    u16 var_r7_2;
    u32 var_r6_5;
    u32 var_r6_7;
    u32 var_sl;
    u8 temp_r0_14;
    u8 var_sb;

    temp_r1 = gCurTask->data;
    temp_r5 = temp_r1 + 0x03000000;
    var_r7 = temp_r5->unk18;
    temp_r0 = temp_r5->unk1C;
    if ((u32) temp_r0 > 0x5AU) {
        var_r1 = (u16) (temp_r0 - 0x5A);
    } else {
        var_r1 = 0;
    }
    sp0 = var_r1 << 0x10;
    if ((u32) temp_r5->unk1C > 0x85U) {
        var_r6 = 0xF;
        temp_r0_2 = temp_r5 + 0x20;
        do {
            temp_r0_3 = Div(var_r7, 0xA);
            temp_r3_2 = var_r6;
            *(temp_r0_2 + temp_r3_2) = ((var_r7 - (temp_r0_3 * 0xA)) + 0x20);
            var_r7 = temp_r0_3;
            temp_r3 = temp_r3_2 - 1;
            var_r6 = temp_r3;
        } while ((s32) (temp_r3 << 0x18) >= 0);
        var_r6_2 = 0xB;
loop_7:
        temp_r2 = var_r6_2;
        temp_r1_2 = temp_r0_2 + temp_r2;
        if (*temp_r1_2 == 0x20) {
            *temp_r1_2 = 0x2BU;
            temp_r0_4 = temp_r2 + 1;
            var_r6_2 = temp_r0_4;
            if ((s32) temp_r0_4 <= 0xE) {
                goto loop_7;
            }
        }
        var_r6_3 = 0;
        do {
            temp_r0_6 = var_r6_3;
            *(temp_r0_2 + temp_r0_6) = *(temp_r0_6 + &gUnknown_08688404);
            temp_r0_5 = temp_r0_6 + 1;
            var_r6_3 = temp_r0_5;
        } while ((s32) temp_r0_5 <= 0xA);
    }
    temp_r1_3 = temp_r5->unk1C;
    temp_r2_2 = temp_r5->unk30;
    if ((u32) temp_r1_3 > (u32) (temp_r2_2 + 0xE6)) {
        var_r7_2 = ((temp_r1_3 - 0xE6) - temp_r2_2) * 0x1C;
    } else {
        var_r7_2 = 0;
    }
    temp_r0_7 = sp0 >> 0x10;
    if (temp_r0_7 > 0x96) {
        temp_r5->unk10 = 4;
        temp_r5->unk12 = 6;
        temp_r5->unkE = 0xA;
        temp_r4 = (s16) var_r7_2;
        temp_r0_8 = 0x32 - temp_r4;
        temp_r5->unkA = temp_r0_8;
        temp_r5->unkC = 0x66;
        temp_r3_3 = temp_r5 + 0x20;
        if ((s32) temp_r0_8 >= -0x50) {
            sub_80530CC((u8 *) temp_r3_3, (GameOverB *) temp_r5);
        }
        temp_r5->unk10 = 0;
        temp_r5->unk12 = 6;
        temp_r5->unkE = 1;
        var_r6_4 = 0xB;
        do {
            temp_r2_3 = var_r6_4;
            if (*(temp_r3_3 + temp_r2_3) != 0x2B) {
                temp_r0_10 = (temp_r2_3 * 8) - (temp_r4 - 0x32);
                temp_r5->unkA = temp_r0_10;
                if ((s32) temp_r0_10 >= -8) {
                    sub_80530CC((u8 *) (temp_r5 + (temp_r2_3 + 0x20)), (GameOverB *) temp_r5);
                }
            }
            temp_r0_9 = (var_r6_4 << 0x18) + 0x01000000;
            var_r6_4 = ((u32) temp_r0_9 >> 0x18);
        } while ((s32) (temp_r0_9 >> 0x18) <= 0xF);
        return;
    }
    if (temp_r0_7 > 0x2C) {
        temp_r5->unk10 = 4;
        temp_r5->unk12 = 6;
        temp_r5->unkE = 0xA;
        temp_r5->unkA = 0x32;
        temp_r5->unkC = 0x66;
        temp_r4_2 = temp_r1 + 0x03000020;
        sub_80530CC((u8 *) temp_r4_2, (GameOverB *) temp_r5);
        var_r6_5 = 0xB;
        if (*(temp_r1 + 0x0300002B) == 0x2B) {
loop_25:
            temp_r0_11 = (var_r6_5 << 0x18) + 0x01000000;
            var_r6_5 = (u32) temp_r0_11 >> 0x18;
            temp_r0_12 = temp_r0_11 >> 0x18;
            if (temp_r0_12 <= 0xE) {
                if (*(temp_r4_2 + temp_r0_12) == 0x2B) {
                    goto loop_25;
                }
            }
        }
        temp_r5->unk10 = 0;
        temp_r5->unk12 = 6;
        temp_r0_13 = var_r6_5;
        temp_r5->unkE = (s16) (0x10 - temp_r0_13);
        temp_r5->unkA = (s16) ((temp_r0_13 * 8) - ((s16) var_r7_2 - 0x32));
        sub_80530CC((u8 *) (temp_r5 + (temp_r0_13 + 0x20)), (GameOverB *) temp_r5);
        return;
    }
    temp_r0_14 = Div(temp_r0_7, 2);
    var_sb = temp_r0_14;
    if ((u32) temp_r0_14 > 0x10U) {
        var_sb = 0x10;
    }
    if (var_sb == 0) {
        return;
    }
    var_sl = 0;
    var_r6_6 = 0;
    temp_r1_4 = temp_r5 + 0x20;
    if ((s32) var_sb > 0) {
        do {
            temp_r3_4 = var_r6_6;
            if ((s32) temp_r3_4 <= 0xA) {
                var_r0 = 4;
            } else {
                var_r0 = 0;
            }
            temp_r5->unk10 = var_r0;
            temp_r5->unk12 = 6;
            temp_r4_3 = (s16) (u16) ((sp0 >> 0x10) - (temp_r3_4 * 2));
            if ((s32) temp_r4_3 > 0xC) {
                var_sl = (u32) ((var_sl << 0x18) + 0x01000000) >> 0x18;
            } else {
                temp_r0_16 = var_r6_6;
                if (((s32) temp_r0_16 <= 0xA) || (*(temp_r0_16 + temp_r1_4) != 0x2B)) {
                    temp_r5->unkE = 1;
                    temp_r5->unkC = (s16) (Div(0x100 - (temp_r4_3 * 0x15), 0x23) + 0x5E);
                    if (temp_r4_3 == 0xC) {
                        var_r0_2 = 0x1F;
                    } else {
                        var_r0_2 = temp_r4_3 + 0x14;
                    }
                    temp_r5->unk6 = var_r0_2;
                    temp_r0_17 = var_r6_6;
                    temp_r5->unkA = (s16) ((temp_r0_17 * 8) + 0x2E);
                    sub_8052E40(temp_r5 + (temp_r0_17 + 0x20), temp_r5);
                }
            }
            temp_r0_15 = (var_r6_6 << 0x18) + 0x01000000;
            var_r6_6 = ((u32) temp_r0_15 >> 0x18);
        } while ((s32) (temp_r0_15 >> 0x18) < (s32) var_sb);
    }
    if ((s32) var_sl > 0xB) {
        var_r6_7 = 0xB;
        if (*(temp_r1 + 0x0300002B) == 0x2B) {
loop_48:
            temp_r0_18 = (var_r6_7 << 0x18) + 0x01000000;
            var_r6_7 = (u32) temp_r0_18 >> 0x18;
            temp_r0_19 = temp_r0_18 >> 0x18;
            if (temp_r0_19 <= 0xE) {
                if (*(temp_r1_4 + temp_r0_19) == 0x2B) {
                    goto loop_48;
                }
            }
        }
        temp_r5->unk10 = 0;
        temp_r5->unk12 = 6;
        temp_r0_20 = var_r6_7;
        temp_r5->unkE = (s16) (var_sl - temp_r0_20);
        temp_r5->unkC = 0x66;
        temp_r5->unkA = (s16) ((temp_r0_20 * 8) + 0x32);
        sub_80530CC((u8 *) (temp_r5 + (temp_r0_20 + 0x20)), (GameOverB *) temp_r5);
        var_sl = 0xB;
    }
    temp_r5->unk10 = 4;
    temp_r5->unk12 = 6;
    temp_r5->unkE = (s16) var_sl;
    temp_r5->unkC = 0x66;
    temp_r5->unkA = 0x32;
    sub_80530CC((u8 *) temp_r1_4, (GameOverB *) temp_r5);
}

void Task_805803C(void) {
    u32 sp0;
    s32 sp4;
    s16 temp_r0_10;
    s16 temp_r0_8;
    s16 temp_r4;
    s16 temp_r4_3;
    s16 var_r0;
    s32 temp_r0_11;
    s32 temp_r0_12;
    s32 temp_r0_15;
    s32 temp_r0_17;
    s32 temp_r0_18;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_7;
    s32 temp_r1_2;
    s32 temp_r2_2;
    s32 temp_r3;
    s32 temp_r3_3;
    s32 temp_r4_2;
    s32 temp_r5;
    s32 var_r7;
    s8 temp_r0_13;
    s8 temp_r0_19;
    s8 temp_r0_4;
    s8 temp_r0_5;
    s8 temp_r0_6;
    s8 temp_r2;
    s8 temp_r2_3;
    s8 temp_r3_2;
    s8 temp_r3_4;
    s8 temp_r6;
    s8 var_r6;
    s8 var_r6_2;
    s8 var_r6_3;
    s8 var_r6_4;
    s8 var_r6_6;
    u16 temp_r0;
    u16 temp_r1;
    u16 temp_r1_3;
    u16 var_r1;
    u16 var_r7_2;
    u32 temp_r0_16;
    u32 temp_r0_9;
    u32 var_r6_5;
    u32 var_r6_7;
    u8 temp_r0_14;
    u8 var_sl;

    temp_r1 = gCurTask->data;
    temp_r5 = temp_r1 + 0x03000000;
    var_r7 = temp_r5->unk18;
    temp_r0 = temp_r5->unk1C;
    if ((u32) temp_r0 > 0x3CU) {
        var_r1 = (u16) (temp_r0 - 0x3C);
    } else {
        var_r1 = 0;
    }
    sp4 = var_r1 << 0x10;
    if ((u32) temp_r5->unk1C > 0x85U) {
        var_r6 = 0xF;
        temp_r0_2 = temp_r5 + 0x20;
        do {
            temp_r0_3 = Div(var_r7, 0xA);
            temp_r3_2 = var_r6;
            *(temp_r0_2 + temp_r3_2) = ((var_r7 - (temp_r0_3 * 0xA)) + 0x20);
            var_r7 = temp_r0_3;
            temp_r3 = temp_r3_2 - 1;
            var_r6 = temp_r3;
        } while ((s32) (temp_r3 << 0x18) >= 0);
        var_r6_2 = 0xB;
loop_7:
        temp_r2 = var_r6_2;
        temp_r1_2 = temp_r0_2 + temp_r2;
        if (*temp_r1_2 == 0x20) {
            *temp_r1_2 = 0x2BU;
            temp_r0_4 = temp_r2 + 1;
            var_r6_2 = temp_r0_4;
            if ((s32) temp_r0_4 <= 0xE) {
                goto loop_7;
            }
        }
        var_r6_3 = 0;
        do {
            temp_r0_6 = var_r6_3;
            *(temp_r0_2 + temp_r0_6) = *(temp_r0_6 + &gUnknown_0868840F);
            temp_r0_5 = temp_r0_6 + 1;
            var_r6_3 = temp_r0_5;
        } while ((s32) temp_r0_5 <= 0xA);
    }
    temp_r1_3 = temp_r5->unk1C;
    temp_r2_2 = temp_r5->unk30;
    if ((u32) temp_r1_3 > (u32) (temp_r2_2 + 0xE6)) {
        var_r7_2 = ((temp_r1_3 - 0xE6) - temp_r2_2) * 0x1C;
    } else {
        var_r7_2 = 0;
    }
    temp_r0_7 = sp4 >> 0x10;
    if (temp_r0_7 > 0xB4) {
        temp_r5->unk10 = 4;
        temp_r5->unk12 = 6;
        temp_r5->unkE = 0xA;
        temp_r4 = (s16) var_r7_2;
        temp_r0_8 = 0x32 - temp_r4;
        temp_r5->unkA = temp_r0_8;
        temp_r5->unkC = 0x50;
        temp_r3_3 = temp_r5 + 0x20;
        if ((s32) temp_r0_8 >= -0x50) {
            sub_80530CC((u8 *) temp_r3_3, (GameOverB *) temp_r5);
        }
        temp_r5->unk10 = 0;
        temp_r5->unk12 = 6;
        temp_r5->unkE = 1;
        var_r6_4 = 0xB;
        do {
            temp_r2_3 = var_r6_4;
            if (*(temp_r3_3 + temp_r2_3) != 0x2B) {
                temp_r0_10 = (temp_r2_3 * 8) - (temp_r4 - 0x32);
                temp_r5->unkA = temp_r0_10;
                if ((s32) temp_r0_10 >= -8) {
                    sub_80530CC((u8 *) (temp_r5 + (temp_r2_3 + 0x20)), (GameOverB *) temp_r5);
                }
            }
            temp_r0_9 = (var_r6_4 << 0x18) + 0x01000000;
            var_r6_4 = (temp_r0_9 >> 0x18);
        } while ((s32) ((s32) temp_r0_9 >> 0x18) <= 0xF);
        return;
    }
    if (temp_r0_7 > 0x2C) {
        temp_r5->unk10 = 4;
        temp_r5->unk12 = 6;
        temp_r5->unkE = 0xA;
        temp_r5->unkA = 0x32;
        temp_r5->unkC = 0x50;
        temp_r4_2 = temp_r1 + 0x03000020;
        sub_80530CC((u8 *) temp_r4_2, (GameOverB *) temp_r5);
        var_r6_5 = 0xB;
        if (*(temp_r1 + 0x0300002B) == 0x2B) {
loop_25:
            temp_r0_11 = (var_r6_5 << 0x18) + 0x01000000;
            var_r6_5 = (u32) temp_r0_11 >> 0x18;
            temp_r0_12 = temp_r0_11 >> 0x18;
            if (temp_r0_12 <= 0xE) {
                if (*(temp_r4_2 + temp_r0_12) == 0x2B) {
                    goto loop_25;
                }
            }
        }
        temp_r5->unk10 = 0;
        temp_r5->unk12 = 6;
        temp_r0_13 = var_r6_5;
        temp_r5->unkE = (s16) (0x10 - temp_r0_13);
        temp_r5->unkA = (s16) ((temp_r0_13 * 8) - ((s16) var_r7_2 - 0x32));
        sub_80530CC((u8 *) (temp_r5 + (temp_r0_13 + 0x20)), (GameOverB *) temp_r5);
        return;
    }
    temp_r0_14 = Div(temp_r0_7, 2);
    var_sl = temp_r0_14;
    if ((u32) temp_r0_14 > 0x10U) {
        var_sl = 0x10;
    }
    if (var_sl == 0) {
        return;
    }
    sp0 = 0;
    var_r6_6 = 0;
    temp_r0_15 = temp_r5 + 0x20;
    if ((s32) var_sl > 0) {
        do {
            temp_r3_4 = var_r6_6;
            if ((s32) temp_r3_4 <= 0xA) {
                var_r0 = 4;
            } else {
                var_r0 = 0;
            }
            temp_r5->unk10 = var_r0;
            temp_r5->unk12 = 6;
            temp_r4_3 = (s16) (u16) ((sp4 >> 0x10) - (temp_r3_4 * 2));
            if ((s32) temp_r4_3 > 0xB) {
                sp0 = (u32) ((sp0 << 0x18) + 0x01000000) >> 0x18;
            } else {
                temp_r6 = var_r6_6;
                if (((s32) temp_r6 <= 0xA) || (*(temp_r0_15 + temp_r6) != 0x2B)) {
                    temp_r5->unkE = 1;
                    temp_r5->unkC = (s16) (Div(0x100 - (temp_r4_3 * 0x15), 0x23) + 0x48);
                    temp_r5->unk6 = (s16) (temp_r4_3 + 0x14);
                    temp_r5->unkA = (s16) ((temp_r6 * 8) + 0x2E);
                    sub_8052E40(temp_r5 + (temp_r6 + 0x20), temp_r5);
                }
            }
            temp_r0_16 = (var_r6_6 << 0x18) + 0x01000000;
            var_r6_6 = (temp_r0_16 >> 0x18);
        } while ((s32) ((s32) temp_r0_16 >> 0x18) < (s32) var_sl);
    }
    if ((s32) sp0 > 0xB) {
        var_r6_7 = 0xB;
        if (*(temp_r1 + 0x0300002B) == 0x2B) {
loop_45:
            temp_r0_17 = (var_r6_7 << 0x18) + 0x01000000;
            var_r6_7 = (u32) temp_r0_17 >> 0x18;
            temp_r0_18 = temp_r0_17 >> 0x18;
            if (temp_r0_18 <= 0xE) {
                if (*(temp_r0_15 + temp_r0_18) == 0x2B) {
                    goto loop_45;
                }
            }
        }
        temp_r5->unk10 = 0;
        temp_r5->unk12 = 6;
        temp_r0_19 = var_r6_7;
        temp_r5->unkE = (s16) (sp0 - temp_r0_19);
        temp_r5->unkC = 0x50;
        temp_r5->unkA = (s16) ((temp_r0_19 * 8) + 0x32);
        sub_80530CC((u8 *) (temp_r5 + (temp_r0_19 + 0x20)), (GameOverB *) temp_r5);
        sp0 = 0xB;
    }
    temp_r5->unk10 = 4;
    temp_r5->unk12 = 6;
    temp_r5->unkE = (s16) sp0;
    temp_r5->unkC = 0x50;
    temp_r5->unkA = 0x32;
    sub_80530CC((u8 *) temp_r0_15, (GameOverB *) temp_r5);
}

void TaskDestructor_8058344(struct Task *t) {
    StrcStgResults_38 *results = TASK_DATA(t);

    VramFree(results->vram1C.unk0);
    VramFree(results->vram1C.unk4);
}
#endif