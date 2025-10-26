#include "global.h"
#include "core.h"
#include "flags.h"
#include "lib/m4a/m4a.h"
#include "game/credits.h"
#include "game/gTask_03006240.h"
#include "game/game_over.h"
#include "game/save.h"
#include "game/stage/results.h"
#include "game/stage/ui.h"
#include "data/ui_graphics.h"

#include "constants/animations.h"

typedef struct ExtraStageResults_64 {
    Sprite s;
    u8 filler30[0xC];
    s32 unk3C;
    s32 unk40;
    s32 unk44;
    s32 unk48;
    s32 unk4C;
    s32 unk50;
    s32 qUnk54;
    s32 qUnk58;
    s32 qUnk5C;
    s32 unk60;
} ExtraStageResults_64;

typedef struct ExtraStageResults_64_2 {
    Sprite s;
    u8 filler30[0xC];
    s16 unk3C;
    s32 unk40;
    s32 unk44;
    s32 unk48;
    s32 unk4C;
    s32 unk50;
    s32 qUnk54;
    s32 qUnk58;
    s32 qUnk5C;
    s32 unk60;
} ExtraStageResults_64_2;

typedef struct ExtraStageResults_164 {
    Sprite s;
    s32 unk3C;
    s32 unk40;
    s32 unk44;
    s32 unk48;
    s32 unk4C;
    u8 filler30[0x134];
} ExtraStageResults_164;

typedef struct ExtraStageResultsState {
    StrcUi_805423C strc0; // -> ExtraStageResults_64
    struct Task *taskC; // -> ExtraStageResults_64
    struct Task *task10; // -> ExtraStageResults_64
    struct Task *task14; // -> ExtraStageResults_64
    struct Task *task18; // -> ExtraStageResults_64
    struct Task *task1C; // -> ExtraStageResults_64
    struct Task *tasks20[3]; // -> ExtraStageResults_64
    struct Task *tasks2C[3]; // -> ExtraStageResults_64_2
    s32 unk38;
    s32 unk3C;
    u8 unk40;
    s32 unk44;
    s32 unk48;
    u8 filler4C[8];
} ExtraStageResultsState; /* 0x54 */

extern void Task_8066D64(void); // -> ExtraStageResults_164
void sub_80677C4(s32 i);
void Task_8067824(void);
void sub_8067928(void);
void Task_80679E4(void);
void Task_8067B9C(void);
void Task_8067C24(void);
void Task_8067E68(void);
void Task_8067F38(void);
void Task_8067F9C(void);
void Task_8068004(void);
void Task_806806C(void);
void Task_8068148(void);
void Task_8068214(void);
void Task_8068360(void);
void Task_nullsub_8068448(void);
void sub_806853C(void);
void Task_8068570(void);
void Task_80685C8(void);
void Task_8067B14(void);
void Task_806856C(void);
void Task_8068620(void);
void Task_8068624(void);
void Task_8068628(void);
void Task_806862C(void);

extern const u16 gUnknown_086C5B74[256];
extern const u8 gUnknown_086C5D74[0x1EC0];
extern const u8 gUnknown_086C7C34[0xA00];

extern const u16 gUnknown_086BF7B4[256];
extern const u8 gUnknown_086BF9B4[0x57C0];
extern const u8 gUnknown_086C5174[0xA00];

extern const u16 gUnknown_086C8634[256];
extern const u8 gUnknown_086C8834[0x3540];
extern const u8 gUnknown_086CBD74[0xA00];

extern const u16 gUnknown_086BBC34[256];
extern const u8 gUnknown_086BBE34[0x2980];
extern const u8 gUnknown_086BE7B4[0x1000];

void CreateExtraStageResults(void)
{
    struct Task *tasks[4];
    Strc_80528AC gfx;
    struct Task *task64_0;
    struct Task *task64_2;
    struct Task *task64_1;
    StrcUi_805423C *temp_r0_11;
    s16 var_r0;
    s16 var_r1;
    s8 *temp_r1_5;
    s8 *temp_r1_6;
    struct Task *task64_3;
    struct Task *task64_4;
    struct Task *temp_r2_6;
    ExtraStageResultsState *state;
    ExtraStageResults_64 *strc64;
    Sprite *s;
    u8 i, i2;

    i = 0;
    LOADED_SAVE->unlockedLevels[0] = 0xF;
    LOADED_SAVE->unk424 = 1;
    {
        u16 prevIME, prevIE, prevDispstat;

        m4aMPlayAllStop();
        m4aSoundVSyncOff();

        gFlags |= FLAGS_8000;

        prevIE = REG_IE;
        prevIME = REG_IME;
        prevDispstat = REG_DISPSTAT;

        REG_IE = 0;
        REG_IE;
        REG_IME = 0;
        REG_IME;
        REG_DISPSTAT = 0;
        REG_DISPSTAT;

        gFlags &= ~FLAGS_EXECUTE_HBLANK_COPY;

        SlowDmaStop(0);
        SlowDmaStop(1);
        SlowDmaStop(2);
        SlowDmaStop(3);

        WriteSaveGame();

        REG_IE = prevIE;
        REG_IE;
        REG_IME = prevIME;
        REG_IME;
        REG_DISPSTAT = prevDispstat;
        REG_DISPSTAT;

        m4aSoundVSyncOn();

        gFlags &= ~FLAGS_8000;
    }

    TasksDestroyAll();
    PAUSE_BACKGROUNDS_QUEUE();
    SA2_LABEL(gUnknown_03005390) = 0;
    PAUSE_GRAPHICS_QUEUE();

    sub_80535FC();
    UiGfxStackInit();
    gDispCnt = 0x1740;
    gBgCntRegs[0] = 0x8583;
    gBgCntRegs[1] = 0x9E86;
    gBgCntRegs[2] = 0x9B89;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    task64_0 = TaskCreate(Task_8068628, sizeof(ExtraStageResults_64), 0x2120U, 0U, NULL);
    strc64 = TASK_DATA(task64_0);
    s = &strc64->s;
    strc64->unk3C = 0;
    strc64->unk44 = 0xA000;
    strc64->qUnk54 = 0xFFFFE000;
    s->graphics.dest = OBJ_VRAM0 + 0x2560;
    s->graphics.anim = SA1_ANIM_FINAL_CUTSCENE_SPARKLE_B;
    s->variant = 0;
    s->x = 0xA000;
    s->y = -0x2000;
    s->oamFlags = SPRITE_OAM_ORDER(3);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;

    task64_1 = TaskCreate(Task_8068620, sizeof(ExtraStageResults_64), 0x2120U, 0U, NULL);
    strc64 = TASK_DATA(task64_1);
    s = &strc64->s;
    strc64->unk3C = 0;
    strc64->unk44 = 0x7800;
    strc64->qUnk54 = 0x5A00;
    s->graphics.dest = OBJ_VRAM0 + 0x440;
    s->graphics.anim = 0x325;
    s->variant = 1;
    s->x = (DISPLAY_WIDTH / 2);
    s->y = (DISPLAY_HEIGHT / 2);
    s->oamFlags = SPRITE_OAM_ORDER(3);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0;

    task64_2 = TaskCreate(Task_8068624, sizeof(ExtraStageResults_64), 0x2120U, 0U, NULL);
    strc64 = TASK_DATA(task64_2);
    s = &strc64->s;
    strc64->unk3C = 0;
    strc64->unk44 = 0x7800;
    strc64->qUnk54 = 0x5A00;
    s->graphics.dest = OBJ_VRAM0 + 0x560;
    s->graphics.anim = SA1_ANIM_FINAL_CUTSCENE_TORNADO_SIDE;
    s->variant = 0;
    s->x = (DISPLAY_WIDTH / 2);
    s->y = (DISPLAY_HEIGHT / 2);
    s->oamFlags = SPRITE_OAM_ORDER(6);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;

    task64_3 = TaskCreate(Task_806806C, sizeof(ExtraStageResults_64), 0x2120U, 0U, NULL);
    strc64 = TASK_DATA(task64_3);
    s = &strc64->s;
    strc64->unk3C = 0;
    strc64->unk44 = 0x69;
    strc64->qUnk54 = 0x11;
    strc64->unk48 = 0x2F;
    strc64->qUnk58 = 0x5F;
    strc64->unk4C = 0xD5;
    strc64->qUnk5C = 0x45;
    strc64->unk50 = 0xA8;
    strc64->unk60 = 0x5F;
    s->graphics.dest = OBJ_VRAM0 + 0x20;
    s->graphics.anim = 731;
    s->variant = 0;
    s->x = (DISPLAY_WIDTH / 2);
    s->y = (DISPLAY_HEIGHT / 2);
    s->oamFlags = SPRITE_OAM_ORDER(15);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;

    for (i2 = 0; i2 < ARRAY_COUNT(tasks); i2++) {
        struct Task *t = TaskCreate(Task_nullsub_8068448, sizeof(ExtraStageResults_64), 0x2120U, 0U, NULL);
        tasks[i2] = t;
        strc64 = TASK_DATA(t);
        s = &strc64->s;
        strc64->unk3C = 0;
        if (i2 == 0) {
            strc64->qUnk54 = 0x3200;
            strc64->unk44 = 0x5000;
            strc64->unk48 = 0x80;
            strc64->qUnk58 = 0;
            s->graphics.dest = OBJ_VRAM0 + 0x6060;
            s->graphics.anim = 0x316;
            s->variant = 0;
        } else if (i2 == 1) {
            strc64->qUnk54 = 0x6400;
            strc64->unk44 = 0x2800;
            strc64->unk48 = 0x40;
            strc64->qUnk58 = 0U;
            s->graphics.dest = OBJ_VRAM0 + 0x61A0;
            s->graphics.anim = 791;
            s->variant = 0;
        } else if (i2 == 2) {
            strc64->qUnk54 = 0x7800;
            strc64->unk44 = 0x7800;
            strc64->unk48 = 0x100;
            strc64->qUnk58 = 0U;
            s->graphics.dest = OBJ_VRAM0 + 0x6440;
            s->graphics.anim = 792;
            s->variant = 0;
        } else {
            strc64->qUnk54 = 0x1400;
            strc64->unk44 = 0xA000;
            strc64->unk48 = 0xC0;
            strc64->qUnk58 = 0U;
            s->graphics.dest = OBJ_VRAM0 + 0x70A0;
            s->graphics.anim = 793;
            s->variant = 0;
        }

        s->x = 180;
        s->y = 80;
        s->oamFlags = SPRITE_OAM_ORDER(12);
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0x1000;
    }

    task64_4 = TaskCreate(Task_8067F38, sizeof(ExtraStageResults_64), 0x2120U, 0U, NULL);
    strc64 = TASK_DATA(task64_4);
    s = &strc64->s;
    strc64->unk3C = 0;
    strc64->qUnk54 = 0;
    strc64->unk44 = 0;
    strc64->qUnk58 = 0;
    strc64->unk48 = 0;
    strc64->qUnk5C = 0;
    strc64->unk4C = 0;
    s->graphics.dest = OBJ_VRAM0 + 0xA0;
    if (LOADED_SAVE->uiLanguage != 0) {
        s->graphics.anim = 0x30F;
        s->variant = 0;
    } else {
        s->graphics.anim = 0x312;
        s->variant = 0;
    }
    s->x = 120;
    s->y = 80;
    s->oamFlags = SPRITE_OAM_ORDER(0);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x80;
    temp_r2_6 = TaskCreate(Task_8067824, sizeof(ExtraStageResultsState), 0x2100U, 0U, NULL);
    state = TASK_DATA(temp_r2_6);
    state->unk38 = 0;
    state->unk3C = 0x3C;
    state->unk40 = 1;
    state->taskC = task64_4;
    state->task14 = task64_0;
    state->task10 = task64_3;
    state->task18 = task64_2;
    state->task1C = task64_1;
    state->tasks20[0] = tasks[0];
    state->tasks20[1] = tasks[1];
    state->tasks20[2] = tasks[2];
    state->tasks20[3] = tasks[3];
    state->unk44 = 0;
    state->unk48 = 0;
    state->strc0.unk0 = 0;
    state->strc0.unk2 = 1;
    state->strc0.unk4 = 8;
    state->strc0.unk6 = 0;
    state->strc0.unk8 = 0x80;
    state->strc0.unkA = 1;
    sub_80543A4(&state->strc0);

    gfx.uiGfxID = 128;
    gfx.unk2B = 2;
    gfx.tiles = &gUnknown_086C5D74[0];
    gfx.tilesSize = sizeof(gUnknown_086C5D74);
    gfx.palette = &gUnknown_086C5B74[0];
    gfx.paletteSize = sizeof(gUnknown_086C5B74);
    gfx.layout = &gUnknown_086C7C34[0];
    gfx.layoutSize = sizeof(gUnknown_086C7C34);
    gfx.unk28 = 0;
    gfx.unk29 = 0;
    gfx.unk2A = 0x15;
    sub_80528AC(&gfx);

    gfx.uiGfxID = 128;
    gfx.unk2B = 0;
    gfx.tiles = &gUnknown_086BF9B4[0];
    gfx.tilesSize = sizeof(gUnknown_086BF9B4);
    gfx.palette = &gUnknown_086BF7B4[0];
    gfx.paletteSize = sizeof(gUnknown_086BF7B4);
    gfx.layout = &gUnknown_086C5174[0];
    gfx.layoutSize = sizeof(gUnknown_086C5174);
    gfx.unk28 = 0;
    gfx.unk29 = 2;
    gfx.unk2A = 0x15;
    sub_80528AC(&gfx);

    gfx.uiGfxID = 128;
    gfx.unk2B = 1;
    gfx.tiles = &gUnknown_086C8834[0];
    gfx.tilesSize = sizeof(gUnknown_086C8834);
    gfx.palette = &gUnknown_086C8634[0];
    gfx.paletteSize = sizeof(gUnknown_086C8634);
    gfx.layout = &gUnknown_086CBD74[0];
    gfx.layoutSize = sizeof(gUnknown_086CBD74);
    gfx.unk28 = 0;
    gfx.unk29 = 1;
    gfx.unk2A = 0x15;
    sub_80528AC(&gfx);
}

void sub_80677C4(s32 i)
{
    Strc_80528AC gfx;

    if (i == 1) {
        UiGfxStackInit();
        gfx.uiGfxID = 128;
        gfx.unk2B = 0;
        gfx.tiles = &gUnknown_086BBE34[0];
        gfx.tilesSize = sizeof(gUnknown_086BBE34);
        gfx.palette = &gUnknown_086BBC34[0];
        gfx.paletteSize = sizeof(gUnknown_086BBC34);
        gfx.layout = &gUnknown_086BE7B4[0];
        gfx.layoutSize = sizeof(gUnknown_086BE7B4);
        gfx.unk28 = 0;
        gfx.unk29 = 0;
        gfx.unk2A = 0x15;
        sub_80528AC(&gfx);
    }
}

// TODO: Fake-match
void Task_8067824(void)
{
#ifndef NON_MATCHING
    register TaskPtr offset asm("r2") = gCurTask->data;
    ExtraStageResultsState *state = (void *)(offset + IWRAM_START);
    register ExtraStageResultsState *state2 asm("r4");
#else
    ExtraStageResultsState *state = TASK_DATA(gCurTask);
    ExtraStageResultsState *state2;
#endif
    {
        s32 v0;
        s32 v1;

        ExtraStageResults_64 *strc64_0 = TASK_DATA(state->taskC);
        ExtraStageResults_64 *strc64_1 = TASK_DATA(state->task10);
        u32 temp_r6 = (state->unk38 + 1);
        state2 = state;

        if (temp_r6 == 0x19) {
            UiGfxStackInit();
            sub_80538BC();
        } else if (temp_r6 == 0x1E) {
            state2->unk3C = CreateStageResults(gRingCount, gCourseTime);
        }
        if (temp_r6 == state->unk3C) {
            m4aSongNumStart(0x27U);
        }

        v0 = Div(0x2000, 0x80);
        v1 = state->unk3C;
        v1 += 0x21C;
        if ((v0 + v1) < temp_r6) {
            temp_r6 = 0;
            state->unk38 = temp_r6;
            strc64_0->unk3C = temp_r6;
            TaskDestroy(state->task10);
            state->taskC->main = sub_806853C;
            gCurTask->main = sub_8067928;
        } else {
            s32 divRes2 = Div(0x2000, 0x80);
            s32 v0 = Div(0x2000, 0x80);
            s32 v1 = state->unk3C;
            v1 += 0x21C;
            if ((divRes2 + v1 - v0) == temp_r6) {
                state->strc0.unk0 = 0;
                state->strc0.unk2 = 1;
                state->strc0.unk4 = 1;
                state->strc0.unk6 = 0;
                state->strc0.unk8 = 0x80;
                state->strc0.unkA = 1;
            }

            sub_805423C(&state->strc0);
            state->unk38 = temp_r6;
            strc64_0->unk3C = temp_r6;
            strc64_1->unk3C = temp_r6;
            strc64_0->unk40 = state->unk3C;
            strc64_1->unk40 = state->unk3C;
        }
    }
}

void sub_8067928()
{
    ExtraStageResults_64 *task;
    u32 var_r5;

    ExtraStageResultsState *state = TASK_DATA(gCurTask);

    task = TASK_DATA(state->taskC);
    var_r5 = state->unk38 + 1;
    if ((u32)(Div(0x2000, 0x80) + 600) < var_r5) {
        gDispCnt = 0x1140;
        gBgCntRegs[0] = 0x9B83;
        state->strc0.unk0 = 0;
        state->strc0.unk2 = 1;
        state->strc0.unk4 = 2;
        state->strc0.unk6 = 0;
        state->strc0.unk8 = 0x80;
        state->strc0.unkA = 1;
        sub_805423C(&state->strc0);
        var_r5 = 0;
        state->tasks20[0]->main = Task_8068360;
        state->tasks20[1]->main = Task_8068360;
        state->tasks20[2]->main = Task_8068360;
        state->tasks20[3]->main = Task_8068360;
        state->task14->main = Task_806862C;
        state->task18->main = Task_8068214;
        state->task1C->main = Task_8068148;
        state->taskC->main = Task_806856C;
        gCurTask->main = Task_80679E4;
    }

    state->unk38 = var_r5;
    task->unk3C = var_r5;
}

void Task_80679E4()
{
    ExtraStageResults_64 *sp0;
    ExtraStageResults_64 *sp4;
    ExtraStageResults_64 *temp_sb;
    ExtraStageResults_64 *temp_sl;
    u32 temp_r5;

    ExtraStageResultsState *state = TASK_DATA(gCurTask);

    temp_sb = TASK_DATA(state->taskC);
    sp0 = TASK_DATA(state->task1C);
    sp4 = TASK_DATA(state->task14);
    temp_sl = TASK_DATA(state->task18);
    temp_r5 = state->unk38 + 1;
    sub_80677C4(temp_r5);
    gBgScrollRegs[0][1] = 0x128;
    if (temp_r5 > 0x336U) {
        temp_r5 = 0;
        state->unk38 = 0;
        temp_sb->unk3C = 0U;
        TaskDestroy(state->tasks20[0]);
        TaskDestroy(state->tasks20[1]);
        TaskDestroy(state->tasks20[2]);
        TaskDestroy(state->tasks20[3]);
        TaskDestroy(state->task1C);
        TaskDestroy(state->task14);
        TaskDestroy(state->task18);
        state->taskC->main = Task_8068570;
        gCurTask->main = Task_8067B14;
        SA2_LABEL(gUnknown_03004D80)[0] = 0;
        SA2_LABEL(gUnknown_03002280)[0][0] = 0;
        SA2_LABEL(gUnknown_03002280)[0][1] = 0;
        SA2_LABEL(gUnknown_03002280)[0][2] = 0xFF;
        SA2_LABEL(gUnknown_03002280)[0][3] = 0x14;
        gBgScrollRegs[0][1] = 0;
        state->strc0.unk0 = 0;
        state->strc0.unk2 = 1;
        state->strc0.unk4 = 2;
        state->strc0.unk6 = 0;
        state->strc0.unk8 = 0x80;
        state->strc0.unkA = 1;
    } else {
        if ((0x336 - Div(0x2000, 0x80)) == temp_r5) {
            state->strc0.unk0 = 0;
            state->strc0.unk2 = 1;
            state->strc0.unk4 = 1;
            state->strc0.unk6 = 0;
            state->strc0.unk8 = 0x80;
            state->strc0.unkA = 1;
        }
        sub_805423C(&state->strc0);
        state->unk38 = (s32)temp_r5;
        temp_sb->unk3C = temp_r5;
        sp0->unk3C = temp_r5;
        sp4->unk3C = temp_r5;
        temp_sl->unk3C = temp_r5;
    }
}

void Task_8067B14()
{
    ExtraStageResults_64 *sp0;
    ExtraStageResults_64 *sp4;
    ExtraStageResults_64 *temp_sb;
    ExtraStageResults_64 *temp_sl;
    u32 temp_r5;

    ExtraStageResultsState *state = TASK_DATA(gCurTask);

    temp_sb = TASK_DATA(state->taskC);
    sp0 = TASK_DATA(state->task1C);
    sp4 = TASK_DATA(state->task14);
    temp_sl = TASK_DATA(state->task18);
    temp_r5 = state->unk38 + 1;
    if (temp_r5 > 400) {
        temp_r5 = 0;
        state->unk38 = 0;
        temp_sb->unk3C = 0U;
        state->strc0.unk0 = 0;
        state->strc0.unk2 = 1;
        state->strc0.unk4 = 2;
        state->strc0.unk6 = 0;
        state->strc0.unk8 = 0x80;
        state->strc0.unkA = 1;
        state->taskC->main = Task_80685C8;
        gCurTask->main = Task_8067B9C;
    } else {
        if ((400 - Div(0x2000, 0x80)) == temp_r5) {
            state->strc0.unk0 = 0;
            state->strc0.unk2 = 1;
            state->strc0.unk4 = 1;
            state->strc0.unk6 = 0;
            state->strc0.unk8 = 0x80;
            state->strc0.unkA = 1;
        }

        sub_805423C(&state->strc0);
        state->unk38 = (s32)temp_r5;
        temp_sb->unk3C = temp_r5;
    }
}

void Task_8067B9C()
{
    ExtraStageResults_64 *sp0;
    ExtraStageResults_64 *sp4;
    ExtraStageResults_64 *temp_sb;
    ExtraStageResults_64 *temp_sl;
    u32 temp_r5;

    ExtraStageResultsState *state = TASK_DATA(gCurTask);

    temp_sb = TASK_DATA(state->taskC);
    sp0 = TASK_DATA(state->task1C);
    sp4 = TASK_DATA(state->task14);
    temp_sl = TASK_DATA(state->task18);
    temp_r5 = state->unk38 + 1;
    if (temp_r5 > 400) {
        temp_r5 = 0;
        state->unk38 = 0;
        temp_sb->unk3C = 0U;
        state->strc0.unk0 = 0;
        state->strc0.unk2 = 1;
        state->strc0.unk4 = 2;
        state->strc0.unk6 = 0;
        state->strc0.unk8 = 0x80;
        state->strc0.unkA = 1;
        state->taskC->main = Task_8067F9C;
        gCurTask->main = Task_8067C24;
    } else {
        if ((400 - Div(0x2000, 0x80)) == temp_r5) {
            state->strc0.unk0 = 0;
            state->strc0.unk2 = 1;
            state->strc0.unk4 = 1;
            state->strc0.unk6 = 0;
            state->strc0.unk8 = 0x80;
            state->strc0.unkA = 1;
        }

        sub_805423C(&state->strc0);
        state->unk38 = (s32)temp_r5;
        temp_sb->unk3C = temp_r5;
    }
}

// (81.56%) https://decomp.me/scratch/L5YKY
NONMATCH("asm/non_matching/game/extra_stage_results__Task_8067C24.inc", void Task_8067C24())
{
    struct Task *tasks[3];
    u32 sp10;
    ExtraStageResults_64 *sp14;
    ExtraStageResults_164 *temp_r3_2;
    Sprite *s;
    s32 temp_r0;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r3;
    u16 var_r8_2;
    s8 *temp_r1_5;
    struct Task *temp_r0_5;
    u16 temp_r0_3;
    u16 temp_r0_4;
    u16 temp_r1;
    u16 temp_r1_2;
    u16 temp_r1_4;
    u16 var_r8;
    u32 temp_r0_2;
    u32 temp_r1_3;
    u32 temp_r2;
    u32 temp_r3;
    u32 temp_r4;
    u32 temp_r5;
    u32 temp_r6;
    u32 temp_r7;

    ExtraStageResultsState *state = TASK_DATA(gCurTask);

    sp14 = TASK_DATA(state->taskC);
    temp_r0 = state->unk38;
    sp10 = temp_r0 + 1;
    temp_r0_2 = temp_r0 - 0xB3;
    if (temp_r0_2 <= 0x80U) {
        temp_r7 = temp_r0_2 >> 4;
        for (var_r8 = 2; var_r8 < 16; var_r8++) {
            temp_r1 = gUiPaletteSoundTestBox3[var_r8];
            temp_r3 = 0x1F;
            temp_r3 &= temp_r1;
            temp_r5 = (u32)(0x3E0 & temp_r1) >> 5;
            temp_r4 = (u32)(0x7C00 & temp_r1) >> 0xA;
            temp_r1_2 = gUiPaletteSoundTestBox4[var_r8];
            temp_r2 = 0x1F & temp_r1_2;
            temp_r6 = (u32)(0x3E0 & temp_r1_2) >> 5;
            temp_r1_3 = (u32)(0x7C00 & temp_r1_2) >> 0xA;
            if (temp_r3 > temp_r2) {
                var_r3 = (temp_r3 - ((u32)(temp_r7 * (temp_r3 - temp_r2)) >> 3)) & 0x1F;
            } else {
                var_r3 = (temp_r3 + ((u32)(temp_r7 * (temp_r2 - temp_r3)) >> 3)) & 0x1F;
            }
            if (temp_r5 > temp_r6) {
                var_r0 = temp_r5 - ((u32)(temp_r7 * (temp_r5 - temp_r6)) >> 3);
            } else {
                var_r0 = temp_r5 + ((u32)(temp_r7 * (temp_r6 - temp_r5)) >> 3);
            }
            if (temp_r4 > temp_r1_3) {
                var_r0_2 = (temp_r4 - ((u32)(temp_r7 * (temp_r4 - temp_r1_3)) >> 3)) & 0x1F;
            } else {
                var_r0_2 = (temp_r4 + ((u32)(temp_r7 * (temp_r1_3 - temp_r4)) >> 3)) & 0x1F;
            }
            gObjPalette[14 * 16 + var_r8] = (var_r0_2 << 0xA) | (var_r3 | ((var_r0 & 0x1F) << 5));
        }

        gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
    }

    if (sp10 > 0x190U) {
        sp10 = 0;
        for (var_r8_2 = 0; var_r8_2 < 3; var_r8_2++) {
            temp_r0_5 = TaskCreate(Task_8066D64, sizeof(ExtraStageResults_164), 0x2120U, 0U, NULL);
            tasks[var_r8_2] = temp_r0_5;
            temp_r3_2 = TASK_DATA(temp_r0_5);
            s = &temp_r3_2->s;
            temp_r3_2->unk3C = 0;
            temp_r3_2->unk4C = 0xF;
            temp_r3_2->unk48 = 0;
            temp_r3_2->unk44 = var_r8_2;
            temp_r3_2->unk40 = 0;
            if (var_r8_2 == 0) {
                s->graphics.dest = OBJ_VRAM0 + 0x6060;
                s->graphics.anim = 0x311;
                s->variant = 0;
            } else if (var_r8_2 == 1) {
                s->graphics.dest = OBJ_VRAM0 + 0x6920;
                s->graphics.anim = 0x311;
                s->variant = 1;
            } else {
                s->graphics.dest = OBJ_VRAM0 + 0x6E20;
                s->graphics.anim = 0x311;
                s->variant = 2;
            }
            s->x = 0xB4;
            s->y = 0x50;
            s->oamFlags = 0;
            s->graphics.size = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = 0xFF;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->hitboxes[0].index = -1;
            s->frameFlags = 0x1000;
            UpdateSpriteAnimation(s);
            state->tasks20[var_r8_2] = tasks[var_r8_2];
        }
        state->taskC->main = Task_8068004;
        gCurTask->main = Task_8067E68;
    }
    sub_805423C(&state->strc0);
    state->unk38 = (s32)sp10;
    sp14->unk3C = sp10;
}
END_NONMATCH

void Task_8067E68()
{
    ExtraStageResults_64_2 *tasks[3];
    ExtraStageResults_64 *temp_r8;
    s16 temp_r1;
    s32 temp_r7;
    u32 temp_r5;

    ExtraStageResultsState *state = TASK_DATA(gCurTask);

    temp_r8 = TASK_DATA(state->taskC);
    tasks[0] = TASK_DATA(state->tasks2C[0]);
    tasks[1] = TASK_DATA(state->tasks2C[1]);
    tasks[2] = TASK_DATA(state->tasks2C[2]);
    temp_r7 = state->unk38;
    temp_r5 = temp_r7 + 1;
    if (temp_r5 > 0x190U) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        sa2__gUnknown_03005390 = 0;
        PAUSE_GRAPHICS_QUEUE();
        CreateStaffCredits();
        return;
    } else {
        if ((0x190 - Div(0x2000, 0x80)) == temp_r5) {
            state->strc0.unk0 = 0;
            state->strc0.unk2 = 1;
            state->strc0.unk4 = 1;
            state->strc0.unk6 = 0;
            state->strc0.unk8 = 0x80;
            state->strc0.unkA = 1;
        }
        sub_805423C(&state->strc0);
        state->unk38 = (s32)temp_r5;
        temp_r8->unk3C = temp_r5;
        tasks[0]->unk3C = temp_r7 + 0x14B;
        tasks[1]->unk3C = temp_r7 + 0x14B;
        tasks[2]->unk3C = temp_r7 + 0x14B;
    }
}

void Task_8067F38()
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r0_5;
    s32 temp_r0_6;
    u32 unk3C;

    ExtraStageResults_64 *strc64 = TASK_DATA(gCurTask);

    unk3C = strc64->unk3C;
    if ((strc64->unk40 + 60) <= unk3C) {
        strc64->qUnk54 += Q(85. / 256.);
        gBgScrollRegs[0][1] = I(strc64->qUnk54);
        if (gBgScrollRegs[0][1] > 71) {
            gBgScrollRegs[0][1] = 71;
        }

        strc64->qUnk58 += Q(96. / 256.);
        gBgScrollRegs[1][1] = I(strc64->qUnk58);
        if (gBgScrollRegs[1][1] > 80) {
            gBgScrollRegs[1][1] = 80;
        }

        strc64->qUnk5C += Q(0.75);
        gBgScrollRegs[2][1] = I(strc64->qUnk5C);
        if (gBgScrollRegs[2][1] > 160) {
            gBgScrollRegs[2][1] = 160;
        }
    }
}

void Task_8067F9C()
{
    ExtraStageResults_64 *strc64 = TASK_DATA(gCurTask);

    if (strc64->unk3C == 0) {
        strc64->s.prevVariant = -1;
        strc64->s.graphics.dest = OBJ_VRAM0 + 0x26E0;
        strc64->s.graphics.anim = SA1_ANIM_FINAL_CUTSCENE_ART_B;
        strc64->s.variant = 0;
        strc64->s.x = (DISPLAY_WIDTH / 2);
        strc64->s.y = (DISPLAY_HEIGHT / 2);
        strc64->s.oamFlags = 0x3C0;
        strc64->s.frameFlags = 0x2000;
    }
    UpdateSpriteAnimation(&strc64->s);
    DisplaySprite(&strc64->s);
}

void Task_8068004()
{
    ExtraStageResults_64 *strc64 = TASK_DATA(gCurTask);

    if (strc64->unk3C == 0) {
        strc64->s.prevVariant = -1;
        strc64->s.graphics.dest = OBJ_VRAM0 + 0x26E0;
        strc64->s.graphics.anim = SA1_ANIM_FINAL_CUTSCENE_ART_B;
        strc64->s.variant = 1;
        strc64->s.x = (DISPLAY_WIDTH / 2);
        strc64->s.y = (DISPLAY_HEIGHT / 2);
        strc64->s.oamFlags = 0x3C0;
        strc64->s.frameFlags = 0x2000;
    }
    UpdateSpriteAnimation(&strc64->s);
    DisplaySprite(&strc64->s);
}
