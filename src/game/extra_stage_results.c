#include "global.h"
#include "core.h"
#include "flags.h"
#include "trig.h"
#include "lib/m4a/m4a.h"
#include "game/credits.h"
#include "game/gTask_03006240.h"
#include "game/game_over.h"
#include "game/save.h"
#include "game/stage/results.h"
#include "game/stage/ui.h"
#include "data/ui_graphics.h"

#include "constants/animations.h"

typedef struct CongratulationsAnim_48 {
    u8 filler0[0x14];
    struct Task *task14;
    u8 filler18[0x30];
} CongratulationsAnim_48;

typedef struct ExtraStageResults_64 {
    Sprite s;
    SpriteTransform transform;
    u32 unk3C;
    s32 unk40;
    // TODO: Could these be two 2x2 matrices?
    s32 qUnk44[4];
    s32 qUnk54[4];
} ExtraStageResults_64;

typedef struct ExtraStageResults_64_2 {
    Sprite s;
    SpriteTransform transform;
    u16 unk3C;
    s32 qUnk40;
    // TODO: Could these be two 2x2 matrices?
    s32 qUnk44[4];
    s32 qUnk54[4];
} ExtraStageResults_64_2;

typedef struct ExtraStageResults_164 {
    Sprite s;
    u8 filler30[0xC];
    u16 unk3C;
    s32 unk40;
    s32 unk44;
    s32 unk48;
    s32 unk4C;
    s16 unk50[15];
    u8 filler6E[0x68];
    s16 unkD6[15];
    u8 fillerF4[0x54];
    u16 unk148;
    u8 filler14A[0x12];
    s8 unk15C;
    u8 filler15E[0x7];
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
void Task_806853C(void);
void Task_8068570(void);
void Task_80685C8(void);
void Task_8067B14(void);
void Task_806856C(void);
void Task_8068620(void);
void Task_8068624(void);
void Task_8068628(void);
void Task_806862C(void);

extern const s8 gUnknown_0868B498[8][2];

extern const u16 gUnknown_0868B4A8[NUM_CHARACTERS][2];
extern const s16 gUnknown_0868B4B8[2];
extern const s16 gUnknown_0868B4BE[2];

extern const u16 gUnknown_086BBC34[256];
extern const u8 gUnknown_086BBE34[0x2980];
extern const u8 gUnknown_086BE7B4[0x1000];

extern const u16 gUnknown_086C5B74[256];
extern const u8 gUnknown_086C5D74[0x1EC0];
extern const u8 gUnknown_086C7C34[0xA00];

extern const u16 gUnknown_086BF7B4[256];
extern const u8 gUnknown_086BF9B4[0x57C0];
extern const u8 gUnknown_086C5174[0xA00];

extern const u16 gUnknown_086C8634[256];
extern const u8 gUnknown_086C8834[0x3540];
extern const u8 gUnknown_086CBD74[0xA00];

static inline void sub_80684F4__inline(s32 comp)
{
    ExtraStageResultsState *state = TASK_DATA(gCurTask);

    if (comp == 25) {
        UiGfxStackInit();
        sub_80538BC();
    } else if (comp == 30) {
        state->unk3C = CreateStageResults((u32)gRingCount, gCourseTime);
        return;
    }
}

void Task_8066BA4()
{
    s16 *temp_r4;
    s32 temp_r1;
    s32 temp_r2;
    u8 *temp_r5;
    u8 i;
    s32 modRes;

    ExtraStageResults_164 *strc164 = TASK_DATA(gCurTask);
    Sprite *s = &strc164->s;

    u16 unk3C = strc164->unk3C;

    if (++strc164->unk15C > 63) {
        strc164->unk15C = 0;
    }

    modRes = Mod(unk3C, 64);
    strc164->unk50[strc164->unk15C] = SIN(modRes * 8) >> 10;
    strc164->unkD6[strc164->unk15C] = SIN(modRes * 8) >> 10;
    UpdateSpriteAnimation(s);

    for (i = 0; i < 8; i++) {
        s32 index;
        s32 v;
        s->x = gUnknown_0868B498[i][0] + 0xBC;
        index = ((u8)strc164->unk15C + i * 8) & 0x3F;
        s->y = gUnknown_0868B498[i][1] + (DISPLAY_HEIGHT / 2) + strc164->unkD6[index];
        DisplaySprite(s);
    }
}

void Task_8066C78_164()
{
    u32 unk3C;
    s32 sp0;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r2;
    s32 var_r4;
    u16 *temp_r1;
    u16 temp_r0;
    u8 *temp_r5;
    u8 *var_r2;
    u8 *var_r3;
    u8 temp_r0_2;
    u8 var_r8;

    ExtraStageResults_164 *strc164 = TASK_DATA(gCurTask);
    Sprite *s = &strc164->s;

    unk3C = ++strc164->unk3C;
    s->prevVariant = -1;
    UpdateSpriteAnimation(s);
    for (var_r8 = 0; var_r8 < 15; var_r8++) {
        if ((unk3C + var_r8) & 0xF) {
            temp_r2 = var_r8 * 2;
            strc164->unkD6[var_r8] -= 0x10;
            var_r2 = &strc164->filler30[0xC];
        } else {
            s32 rnd2;
            temp_r0_3 = PseudoRandom32();
            strc164->unkD6[var_r8] = Mod(temp_r0_3, 40) + 0x8C;
            rnd2 = PseudoRandom32();
            strc164->unk50[var_r8] = Mod(rnd2, 0xDC) + 0x14;
            var_r3 = temp_r5;
        }
        s->x = strc164->unk50[var_r8];
        s->y = strc164->unkD6[var_r8];
        DisplaySprite(s);
    }
}

void Task_8066D64()
{
    u32 unk3C;

    ExtraStageResults_64_2 *strc64 = TASK_DATA(gCurTask);
    Sprite *s = &strc64->s;

    unk3C = strc64->unk3C;
    // TODO: Potential signedness bug?
    if (unk3C > gUnknown_0868B4BE[strc64->qUnk44[0]]) {
        unk3C -= gUnknown_0868B4BE[strc64->qUnk44[0]];
        unk3C *= 3;
        s->x = (DISPLAY_WIDTH / 2);
        s->y = 180 - unk3C;
        if (s->y < gUnknown_0868B4B8[strc64->qUnk44[0]]) {
            s->y = gUnknown_0868B4B8[strc64->qUnk44[0]];
        }
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void Task_nullsub_8066DC8_164(void) { ExtraStageResults_164 *strc164; }

void Task_nullsub_8066DCC(void) { }

void Task_8066DD0_164()
{
    ExtraStageResults_64_2 *strc64 = TASK_DATA(gCurTask);
    Sprite *s = &strc64->s;

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8066DF4()
{
    s32 temp_r0;
    s32 temp_r0_2;

    ExtraStageResults_64_2 *strc64 = TASK_DATA(gCurTask);
    Sprite *s = &strc64->s;
    u16 unk3C = strc64->unk3C;

    strc64->qUnk40 += strc64->qUnk44[0];

    s->x = I(strc64->qUnk40) - 20;

    strc64->qUnk44[1] += Q(8);
    s->y = (s16)((s32)strc64->qUnk44[1] >> 8);

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

// unused, inline?
void sub_8066E34(void)
{
    ExtraStageResults_64_2 *strc64 = TASK_DATA(gCurTask);
    Sprite *s = &strc64->s;

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8066E58_164(void) { }

// Literally identical to Task_8066F30()
void Task_8066E5C()
{
    s32 temp_r0;
    s32 temp_r0_2;

    ExtraStageResults_64_2 *strc64 = TASK_DATA(gCurTask);
    Sprite *s = &strc64->s;
    u16 unk3C = strc64->unk3C;

    strc64->qUnk40 -= strc64->qUnk44[0];
    if (strc64->qUnk40 < 0) {
        strc64->qUnk40 = 0;
    }

    s->x = I(strc64->qUnk40);

    if (unk3C > 20) {
        strc64->qUnk44[1] -= Q(8);
        if (strc64->qUnk44[1] < -Q(30)) {
            strc64->qUnk44[1] = -Q(30);
        }
        s->y = (s16)((s32)strc64->qUnk44[1] >> 8);
    }
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8066EBC()
{
    s32 temp_r0;
    s32 temp_r0_2;

    ExtraStageResults_64_2 *strc64 = TASK_DATA(gCurTask);
    Sprite *s = &strc64->s;
    u16 unk3C = strc64->unk3C;

    strc64->qUnk40 += strc64->qUnk44[0];
    if (strc64->qUnk40 < 0) {
        strc64->qUnk40 = 0;
    }

    s->x = I(strc64->qUnk40);

    strc64->qUnk44[1] += Q(8);

    if (strc64->qUnk44[1] < -Q(30)) {
        strc64->qUnk44[1] = -Q(30);
    }
    s->y = (s16)((s32)strc64->qUnk44[1] >> 8);

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8066F14_164(void)
{
    ExtraStageResults_164 *strc164 = TASK_DATA(gCurTask);
    Sprite *s = &strc164->s;

    UpdateSpriteAnimation(s);
}

void Task_8066F30()
{
    s32 temp_r0;
    s32 temp_r0_2;

    ExtraStageResults_64_2 *strc64 = TASK_DATA(gCurTask);
    Sprite *s = &strc64->s;
    u16 unk3C = strc64->unk3C;

    strc64->qUnk40 -= strc64->qUnk44[0];
    if (strc64->qUnk40 < 0) {
        strc64->qUnk40 = 0;
    }

    s->x = I(strc64->qUnk40);

    if (unk3C > 20) {
        strc64->qUnk44[1] -= Q(8);
        if (strc64->qUnk44[1] < -Q(30)) {
            strc64->qUnk44[1] = -Q(30);
        }
        s->y = (s16)((s32)strc64->qUnk44[1] >> 8);
    }
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8066F90()
{
    s32 temp_r0;
    s32 temp_r0_2;

    ExtraStageResults_64_2 *strc64 = TASK_DATA(gCurTask);
    Sprite *s = &strc64->s;

    strc64->qUnk40 += strc64->qUnk44[0];
    if (strc64->qUnk40 < 0) {
        strc64->qUnk40 = 0;
    }
    s->x = I(strc64->qUnk40);
    strc64->qUnk44[1] += Q(8);
    s->y = I(strc64->qUnk44[1]);
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8066FDC(void)
{
    ExtraStageResults_64_2 *strc64 = TASK_DATA(gCurTask);
    Sprite *s = &strc64->s;
    u16 unk3C = strc64->unk3C;

    strc64->qUnk44[1] += (SIN((unk3C & 0xFF) * 4) >> 8);
    s->y = I(strc64->qUnk44[1]);

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8067020_164(void)
{
    ExtraStageResults_164 *strc164 = TASK_DATA(gCurTask);
    Sprite *s = &strc164->s;

    if (Mod(strc164->unk3C, 2) == 0) {
        gBgScrollRegs[0][1]++;
    }
}

void Task_nullsub_8067050(void) { }

void Task_8067054(void)
{
    ExtraStageResults_64_2 *strc64 = TASK_DATA(gCurTask);
    Sprite *s = &strc64->s;

    s->prevVariant = -1;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8067084()
{
    ExtraStageResults_64_2 *strc64 = TASK_DATA(gCurTask);
    Sprite *s = &strc64->s;

    if (strc64->unk3C >= 360) {
        if (strc64->unk3C == 360) {
            s->graphics.anim = gUnknown_0868B4A8[gSelectedCharacter][0];
            s->variant = gUnknown_0868B4A8[gSelectedCharacter][1];
            s->prevVariant = -1;
        }
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

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
    strc64->qUnk44[0] = Q(160);
    strc64->qUnk54[0] = -Q(32);
    s->graphics.dest = OBJ_VRAM0 + 0x2560;
    s->graphics.anim = SA1_ANIM_FINAL_CUTSCENE_SPARKLE_B;
    s->variant = 0;
    s->x = Q(160); // NOTE: These shouldn't be Q()!
    s->y = -Q(32); // NOTE: These shouldn't be Q()!
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
    strc64->qUnk44[0] = Q(DISPLAY_WIDTH / 2);
    strc64->qUnk54[0] = Q((DISPLAY_HEIGHT / 2) + 10);
    s->graphics.dest = OBJ_VRAM0 + 0x440;
    s->graphics.anim = SA1_END_CUTSCENE_PILOT_FACE;
    s->variant = 1; // Tails
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
    strc64->qUnk44[0] = Q(DISPLAY_WIDTH / 2);
    strc64->qUnk54[0] = Q((DISPLAY_HEIGHT / 2) + 10);
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
    strc64->qUnk44[0] = 105;
    strc64->qUnk54[0] = 17;
    strc64->qUnk44[1] = 47;
    strc64->qUnk54[1] = 95;
    strc64->qUnk44[2] = 213;
    strc64->qUnk54[2] = 69;
    strc64->qUnk44[3] = 168;
    strc64->qUnk54[3] = 95;
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
            strc64->qUnk54[0] = 0x3200;
            strc64->qUnk44[0] = 0x5000;
            strc64->qUnk44[1] = 0x80;
            strc64->qUnk54[1] = 0;
            s->graphics.dest = OBJ_VRAM0 + 0x6060;
            s->graphics.anim = 0x316;
            s->variant = 0;
        } else if (i2 == 1) {
            strc64->qUnk54[0] = 0x6400;
            strc64->qUnk44[0] = 0x2800;
            strc64->qUnk44[1] = 0x40;
            strc64->qUnk54[1] = 0U;
            s->graphics.dest = OBJ_VRAM0 + 0x61A0;
            s->graphics.anim = 791;
            s->variant = 0;
        } else if (i2 == 2) {
            strc64->qUnk54[0] = 0x7800;
            strc64->qUnk44[0] = 0x7800;
            strc64->qUnk44[1] = 0x100;
            strc64->qUnk54[1] = 0U;
            s->graphics.dest = OBJ_VRAM0 + 0x6440;
            s->graphics.anim = 792;
            s->variant = 0;
        } else {
            strc64->qUnk54[0] = 0x1400;
            strc64->qUnk44[0] = 0xA000;
            strc64->qUnk44[1] = 0xC0;
            strc64->qUnk54[1] = 0U;
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
    strc64->qUnk54[0] = 0;
    strc64->qUnk44[0] = 0;
    strc64->qUnk54[1] = 0;
    strc64->qUnk44[1] = 0;
    strc64->qUnk54[2] = 0;
    strc64->qUnk44[2] = 0;
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

void Task_8067824(void)
{
    ExtraStageResultsState *state = TASK_DATA(gCurTask);
    ExtraStageResults_64 *strc64_0 = TASK_DATA(state->taskC);
    ExtraStageResults_64 *strc64_1 = TASK_DATA(state->task10);
    s32 v0;
    s32 v1;

    u32 temp_r6 = (state->unk38 + 1);
    sub_80684F4__inline(temp_r6);

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
        state->taskC->main = Task_806853C;
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
        strc64->qUnk54[0] += Q(85. / 256.);
        gBgScrollRegs[0][1] = I(strc64->qUnk54[0]);
        if (gBgScrollRegs[0][1] > 71) {
            gBgScrollRegs[0][1] = 71;
        }

        strc64->qUnk54[1] += Q(96. / 256.);
        gBgScrollRegs[1][1] = I(strc64->qUnk54[1]);
        if (gBgScrollRegs[1][1] > 80) {
            gBgScrollRegs[1][1] = 80;
        }

        strc64->qUnk54[2] += Q(0.75);
        gBgScrollRegs[2][1] = I(strc64->qUnk54[2]);
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

void Task_806806C()
{
    s32 temp_r4;
    u8 remainder;
    u8 whole;
    s32 unk3C;
    s32 *ptr;

    ExtraStageResults_64 *strc64 = TASK_DATA(gCurTask);
    Sprite *s;

    temp_r4 = strc64->unk3C;
    unk3C = strc64->unk3C;
    if (unk3C > (u32)strc64->unk40) {
        whole = Div(unk3C - strc64->unk40, 0x10);
        remainder = Mod(unk3C - strc64->unk40, 0x10);

        if (whole == 0 || whole == 2) {
            if (whole == 2) {
                whole = 3;
            }
            s = &strc64->s;
            if (remainder == 0) {
                s->prevVariant = -1;
            }
            s->x = strc64->qUnk44[whole];
            s->y = strc64->qUnk54[whole];
            UpdateSpriteAnimation(&strc64->s);
            DisplaySprite(&strc64->s);
        } else if (whole == 1) {
            s = &strc64->s;
            if (remainder == 0) {
                s->prevVariant = 0xFF;
            }

            ptr = &strc64->qUnk44[1];
            s->x = *ptr;
            ptr = &strc64->qUnk54[1];
            s->y = *ptr;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);

            ptr = &strc64->qUnk44[2];
            s->x = *ptr;
            ptr = &strc64->qUnk54[2];
            s->y = *ptr;
            DisplaySprite(s);
        }
    }
}

void Task_8068148(void)
{
    u32 angle;

    ExtraStageResults_64 *strc64 = TASK_DATA(gCurTask);
    Sprite *s = &strc64->s;

    angle = strc64->unk3C;
    if (angle == 0x78) {
        s->graphics.anim = 0xBF;
        s->variant = 0;
        s->prevVariant = 0xFF;
    } else if (angle == 0x1E0) {
        s->graphics.anim = 0xBF;
        s->variant = 1;
        s->prevVariant = -1;
    }
    if ((u32)angle <= 0x257U) {
        int index = (angle & 0xFF);
        strc64->qUnk54[0] += SIN(index * 4) >> 9;
    } else if (angle < 663) {
        strc64->qUnk54[0] += Div(SIN((angle - 600) * 4), 0x1A);
    } else {
        strc64->qUnk44[0] = 0x8C00;
    }
    s->x = I(strc64->qUnk44[0]);
    s->y = I(strc64->qUnk54[0]);
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8068214()
{
    s16 temp_r4;
    s32 temp_r2;
    u32 angle;
    s32 val;
    SpriteTransform *tf;

    ExtraStageResults_64 *strc64 = TASK_DATA(gCurTask);
    Sprite *s = &strc64->s;

    tf = &strc64->transform;
    angle = strc64->unk3C;
    if ((u32)angle <= 0x257U) {
        angle &= 0xFF;
        val = (SIN(angle * 4) >> 9);
        strc64->qUnk54[0] += val;
        s->x = I(strc64->qUnk44[0]);
        s->y = I(strc64->qUnk54[0]);
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    } else if ((u32)angle <= 0x296U) {
        val = Div(SIN((angle - 600) * 4), 0x1A);
        strc64->qUnk54[0] += val;
        s->x = I(strc64->qUnk44[0]);
        s->y = I(strc64->qUnk54[0]);
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    } else if ((u32)angle <= 0x2BBU) {
        strc64->qUnk44[0] = 0xB400;
        strc64->qUnk54[0] = 0xB400;
        if (angle == 0x2BB) {
            s->graphics.anim = 0x2DF;
            s->variant = 0;
            s->prevVariant = 0xFF;
            s->frameFlags = 0x106B;
            UpdateSpriteAnimation(s);
        }
    } else {
        temp_r4 = SIN((0x3BB - angle) * 4);
        strc64->qUnk54[0] += Div((s32)temp_r4, 36);
        strc64->qUnk44[0] += Div((s32)temp_r4, 18);
        temp_r2 = angle + 0xFFFFFD44;
        tf->rotation = (s16)(0x3FF & ~(temp_r2 * 2));
        tf->qScaleX = Q(1.5) - (temp_r2 * 3);
        tf->qScaleY = Q(1.5) - (temp_r2 * 3);
        tf->x = I(strc64->qUnk44[0]);
        tf->y = I(strc64->qUnk54[0]);
        s->x = I(strc64->qUnk44[0]);
        s->y = I(strc64->qUnk54[0]);
        TransformSprite(s, tf);
        DisplaySprite(s);
    }
}

void Task_8068360()
{
    ExtraStageResults_64 *strc64 = TASK_DATA(gCurTask);
    Sprite *s = &strc64->s;

    strc64->qUnk44[0] += strc64->qUnk44[1];
    if (strc64->qUnk44[0] > Q(272)) {
        strc64->qUnk44[0] = -Q(120);
    }
    if (strc64->qUnk44[0] < -Q(120)) {
        strc64->qUnk44[0] = Q(272);
    }

    strc64->qUnk54[0] += strc64->qUnk54[1];
    if (strc64->qUnk54[0] > Q(172)) {
        strc64->qUnk54[0] = -Q(16);
    }
    if (strc64->qUnk54[0] < -Q(16)) {
        strc64->qUnk54[0] = Q(172);
    }

    s->x = I(strc64->qUnk44[0]);
    s->y = I(strc64->qUnk54[0]);
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

// inline
void sub_80683D8()
{
    ExtraStageResults_64 *strc64 = TASK_DATA(gCurTask);
    Sprite *s = &strc64->s;

    strc64->qUnk44[0] += Q(8);
    strc64->qUnk54[0] += Q(8);
    strc64->qUnk44[0] += strc64->qUnk44[1];
    if (strc64->qUnk44[0] > Q(272)) {
        strc64->qUnk44[0] -= Q(300);
    }

    strc64->qUnk54[0] += strc64->qUnk54[1];
    if (strc64->qUnk54[0] > Q(172)) {
        strc64->qUnk54[0] -= Q(300);
    }

    s->x = I(strc64->qUnk44[0]);
    s->y = I(strc64->qUnk54[0]);
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_nullsub_8068448(void) { }

void sub_806844C()
{
    ExtraStageResults_64 *strc64 = TASK_DATA(gCurTask);
    Sprite *s = &strc64->s;

    strc64->qUnk54[0] += strc64->qUnk54[1];

    if (strc64->qUnk54[0] < -Q(16)) {
        strc64->qUnk54[0] = +Q(172);
        strc64->qUnk44[0] += strc64->qUnk44[1] * 200;

        if (strc64->qUnk44[0] > Q(272)) {
            strc64->qUnk44[0] -= Q(300);
        }
    }

    s->x = I(strc64->qUnk44[0]);
    s->y = I(strc64->qUnk54[0]);
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_80684B4()
{
    ExtraStageResults_64 *strc64 = TASK_DATA(gCurTask);
    Sprite *s = &strc64->s;

    if (strc64->qUnk54[0] >= -Q(16)) {
        strc64->qUnk54[0] += strc64->qUnk54[1];
        s->x = I(strc64->qUnk44[0]);
        s->y = I(strc64->qUnk54[0]);
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void sub_80684F4(s32 comp)
{
    ExtraStageResultsState *state = TASK_DATA(gCurTask);

    if (comp == 25) {
        UiGfxStackInit();
        sub_80538BC();
    } else if (comp == 30) {
        state->unk3C = CreateStageResults((u32)gRingCount, gCourseTime);
        return;
    }
}

void sub_8068538(void) { }

void Task_806853C(void)
{
    ExtraStageResults_64 *strc64 = TASK_DATA(gCurTask);
    Sprite *s = &strc64->s;

    if (strc64->unk3C < 600) {
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void Task_806856C(void) { }

void Task_8068570()
{
    ExtraStageResults_64 *strc64 = TASK_DATA(gCurTask);
    u32 temp_r3;

    if (strc64->unk3C == 0) {
        strc64->s.prevVariant = -1;
        strc64->s.graphics.dest = OBJ_VRAM0 + 0x26E0;
        strc64->s.graphics.anim = SA1_ANIM_FINAL_CUTSCENE_ART_A;
        strc64->s.variant = 0;
        strc64->s.x = (DISPLAY_WIDTH / 2);
        strc64->s.y = (DISPLAY_HEIGHT / 2);
        strc64->s.frameFlags = 0;
    }
    UpdateSpriteAnimation(&strc64->s);
    DisplaySprite(&strc64->s);
}

void Task_80685C8()
{
    ExtraStageResults_64 *strc64 = TASK_DATA(gCurTask);
    u32 temp_r3;

    if (strc64->unk3C == 0) {
        strc64->s.prevVariant = -1;
        strc64->s.graphics.dest = OBJ_VRAM0 + 0x26E0;
        strc64->s.graphics.anim = SA1_ANIM_FINAL_CUTSCENE_ART_A;
        strc64->s.variant = 1;
        strc64->s.x = (DISPLAY_WIDTH / 2);
        strc64->s.y = (DISPLAY_HEIGHT / 2);
        strc64->s.frameFlags = 0;
    }
    UpdateSpriteAnimation(&strc64->s);
    DisplaySprite(&strc64->s);
}

void Task_8068620(void) { }

void Task_8068624(void) { }

void Task_8068628(void) { }

void Task_806862C()
{
    s32 temp_r0;
    s32 temp_r0_2;

    ExtraStageResults_64 *strc64 = TASK_DATA(gCurTask);
    Sprite *s = &strc64->s;

    if (strc64->unk3C > 180) {
        strc64->qUnk44[0] -= Q(96. / 256.);
        if (strc64->qUnk44[0] < -Q(64)) {
            strc64->qUnk44[0] = -Q(64);
        }
        strc64->qUnk54[0] += 0x30;
        if (strc64->qUnk54[0] > Q(32)) {
            strc64->qUnk54[0] = Q(32);
        }

        s->x = I(strc64->qUnk44[0]);
        s->y = I(strc64->qUnk54[0]);
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}
