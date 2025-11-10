#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/game_over.h"
#include "game/gTask_03006240.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/special_stage/main.h"
#include "game/stage/ui.h"

#include "constants/characters.h"
#include "constants/ui_graphics.h"

#define FRAME_RELAY_A 90
#define FRAME_RELAY_B 150

typedef struct SpecialStageIntroC4 {
    Sprite s;
    u32 unk30;
    s32 qUnk34;
    s32 qUnk38;
    s32 qUnk3C;
    s32 qUnk40;
    s32 unk44[16];
    s32 unk84[16];
} SpecialStageIntroC4; /* 0xC4 */

typedef struct SpecialStageIntro20 {
    StrcUi_805423C strc0;
    struct Task *taskC; // SpecialStageIntroC4
    struct Task *task10; // SpecialStageIntroC4
    struct Task *task14; // SpecialStageIntroC4
    s16 unk18;
    u8 unk1A;
    s16 unk1C;
    s16 unk1E;
} SpecialStageIntro20;

void sub_80688E4(s32 someId);
void Task_SpecialStageIntroInit(void);
void Task_8068948(void);
void Task_8068A78(void);
void Task_8068B10();
void Task_8068BB0(void);
void Task_8068CD4(void);
void sub_8068D0C();

extern u16 gUnknown_0868B584[NUM_CHARACTERS][2];
extern u16 gUnknown_0868B594[NUM_CHARACTERS][2];
extern u16 gUnknown_086BBC34[256];
extern u8 gUnknown_086BBE34[0x2980];
extern u8 gUnknown_086BE7B4[0x1000];

void CreateSpecialStageIntro(void)
{
    struct Task *taskC;
    struct Task *task10;
    SpecialStageIntroC4 *temp_r0_3;
    SpecialStageIntro20 *temp_r0_6;
    SpecialStageIntroC4 *temp_r2;
    Sprite *s;
    u8 var_r5;

    TasksDestroyAll();
    PAUSE_BACKGROUNDS_QUEUE();
    SA2_LABEL(gUnknown_03005390) = 0;
    PAUSE_GRAPHICS_QUEUE();
    sub_80535FC();
    UiGfxStackInit();
    gDispCnt = 0x1140;
    gBgCntRegs[0] = 0x9D86;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0x128;
    task10 = TaskCreate(Task_SpecialStageIntroInit, sizeof(SpecialStageIntroC4), 0x2120U, 0U, NULL);
    temp_r2 = TASK_DATA(task10);
    s = &temp_r2->s;
    s->graphics.dest = OBJ_VRAM0 + 0x20;
    s->graphics.anim = gUnknown_0868B584[gSelectedCharacter][0];
    s->variant = gUnknown_0868B584[gSelectedCharacter][1];
    s->x = 120;
    s->y = 180;
    s->oamFlags = SPRITE_OAM_ORDER(6);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = 0xFF;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 1;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation(s);

    temp_r2->unk30 = 0;
    temp_r2->qUnk3C = -Q(1);
    temp_r2->qUnk40 = +Q(120);
    temp_r2->qUnk34 = -Q(3.8125);
    temp_r2->qUnk38 = +Q(180);

    taskC = TaskCreate(Task_8068BB0, sizeof(SpecialStageIntroC4), 0x2120U, 0U, NULL);
    temp_r2 = TASK_DATA(taskC);
    s = &temp_r2->s;

    temp_r2->unk30 = 0;
    temp_r2->qUnk34 = 0xF;
    temp_r2->qUnk38 = 0;
    temp_r2->qUnk3C = 0;
    temp_r2->qUnk40 = 0;

    for (var_r5 = 0; var_r5 < 16; var_r5++) {
        temp_r2->unk84[var_r5] = Mod(PseudoRandom32(), 40) - 20;
        temp_r2->unk44[var_r5] = Mod(PseudoRandom32(), 220) + 20;
    }

    s->graphics.dest = OBJ_VRAM0 + 0x820;
    s->graphics.anim = 776;
    s->variant = 0;
    s->x = 120;
    s->y = 80;
    s->oamFlags = 0;
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation(s);

    temp_r0_6 = TASK_DATA(TaskCreate(Task_8068948, sizeof(SpecialStageIntro20), 0x2100U, 0U, NULL));
    temp_r0_6->unk18 = 0;
    temp_r0_6->unk1A = 1;
    temp_r0_6->task10 = task10;
    temp_r0_6->taskC = taskC;
    temp_r0_6->unk1C = 0;
    temp_r0_6->unk1E = 0;
    temp_r0_6->strc0.unk0 = 0;
    temp_r0_6->strc0.unk2 = 1;
    temp_r0_6->strc0.unk4 = 2;
    temp_r0_6->strc0.unk6 = 0;
    temp_r0_6->strc0.unk8 = 0x150;
    temp_r0_6->strc0.unkA = 1;
    sub_80543A4(&temp_r0_6->strc0);

    m4aSongNumStart(0x29U);
}

void sub_80688E4(s32 someId)
{
    UiGfxStackInit();

    if (someId == 1) {
        Strc_80528AC gfx;
        gfx.uiGfxID = UIGFX_OPTIONS;
        gfx.unk2B = 0;
        gfx.tiles = gUnknown_086BBE34;
        gfx.tilesSize = sizeof(gUnknown_086BBE34);
        gfx.palette = gUnknown_086BBC34;
        gfx.paletteSize = sizeof(gUnknown_086BBC34);
        gfx.layout = gUnknown_086BE7B4;
        gfx.layoutSize = sizeof(gUnknown_086BE7B4);
        gfx.unk28 = 0;
        gfx.unk29 = 0;
        gfx.unk2A = 0x15;
        sub_80528AC(&gfx);
    }
}

void Task_8068948()
{
    SpecialStageIntroC4 *temp_r2;
    SpecialStageIntroC4 *temp_r7;
    struct Task *t;
    Sprite *s;
    u32 temp_r5;

    SpecialStageIntro20 *strc20 = TASK_DATA(gCurTask);

    temp_r7 = TASK_DATA(strc20->task10);
    temp_r5 = strc20->unk18 + 1;
    sub_805423C(&strc20->strc0);
    sub_80688E4(temp_r5);
    if (temp_r5 > FRAME_RELAY_A) {
        temp_r5 = 0; // for matching

        strc20->unk18 = 0;
        temp_r7->unk30 = 0U;
        gBgScrollRegs[0][1] = 0;
        strc20->strc0.unk0 = 0;
        strc20->strc0.unk2 = 1;
        strc20->strc0.unk4 = 2;
        strc20->strc0.unk6 = 0;
        strc20->strc0.unk8 = 0x150;
        strc20->strc0.unkA = 1;
        t = TaskCreate(Task_8068CD4, sizeof(SpecialStageIntroC4), 0x2120U, 0U, NULL);
        strc20->task14 = t;
        temp_r2 = TASK_DATA(t);
        s = &temp_r2->s;
        s->graphics.dest = OBJ_VRAM0 + 0xC80;
        s->graphics.anim = 0x32B;
        s->variant = 0;
        s->x = 0x78;
        s->y = 0x78;
        s->oamFlags = 0;
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = Q(0);
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
        s->frameFlags = 0x1000;
        UpdateSpriteAnimation(s);
        TaskDestroy(strc20->taskC);
        strc20->task10->main = Task_8068B10;
        gCurTask->main = Task_8068A78;
        return;
    } else {
        if ((FRAME_RELAY_A - Div(0x2000, 0x150)) == temp_r5) {
            strc20->strc0.unk0 = 0;
            strc20->strc0.unk2 = 1;
            strc20->strc0.unk4 = 1;
            strc20->strc0.unk6 = 0;
            strc20->strc0.unk8 = 0x150;
            strc20->strc0.unkA = 1;
        }
        sub_805423C(&strc20->strc0);
        strc20->unk18 = temp_r5;
        temp_r7->unk30 = temp_r5;
    }
}

void Task_8068A78()
{
    SpecialStageIntro20 *strc20 = TASK_DATA(gCurTask);
    SpecialStageIntroC4 *temp_r7;
    u32 temp_r5;

    temp_r7 = TASK_DATA(strc20->task10);
    temp_r5 = strc20->unk18 + 1;
    if (temp_r5 > FRAME_RELAY_B) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        SA2_LABEL(gUnknown_03005390) = 0;
        PAUSE_GRAPHICS_QUEUE();
        CreateSpecialStage();
        return;
    } else {
        if ((FRAME_RELAY_B - Div(0x2000, 0x150)) == temp_r5) {
            strc20->strc0.unk0 = 0;
            strc20->strc0.unk2 = 1;
            strc20->strc0.unk4 = 1;
            strc20->strc0.unk6 = 0;
            strc20->strc0.unk8 = 0x150;
            strc20->strc0.unkA = 1;
        }

        sub_805423C(&strc20->strc0);
        strc20->unk18 = (s16)temp_r5;
        temp_r7->unk30 = temp_r5;
    }
}

void Task_8068B10()
{
    SpecialStageIntroC4 *strcC4 = TASK_DATA(gCurTask);
    Sprite *s = &strcC4->s;
    u32 temp_r6 = strcC4->unk30;

    if (temp_r6 == 0) {
        s->graphics.anim = gUnknown_0868B594[gSelectedCharacter][0];
        s->variant = gUnknown_0868B594[gSelectedCharacter][1];
        s->prevVariant = -1;
        strcC4->qUnk34 += -Q(5);
        strcC4->qUnk38 = Q(180);
        strcC4->qUnk40 = Q(150);
    }

    if (temp_r6 > 40) {
        strcC4->qUnk40 += strcC4->qUnk3C;
        strcC4->qUnk34 += Q(0.25);
        strcC4->qUnk38 += strcC4->qUnk34;
        strcC4->s.x = I(strcC4->qUnk40);
        strcC4->s.y = I(strcC4->qUnk38);

        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void Task_8068BB0(void)
{
    s32 sp0;
    s32 *temp_r1;
    s32 *temp_r5;
    s32 *var_r2;
    s32 *var_r3;
    s32 temp_r0;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 var_r4;
    u8 temp_r0_2;
    u8 var_r8;

    SpecialStageIntroC4 *strcC4 = TASK_DATA(gCurTask);
    Sprite *s = &strcC4->s;

    temp_r0 = strcC4->unk30 + 1;
    strcC4->unk30++;
    sp0 = temp_r0;
    strcC4->s.prevVariant = -1;
    UpdateSpriteAnimation(&strcC4->s);

    for (var_r8 = 0; var_r8 < 16; var_r8++) {
        if ((sp0 + var_r8) & 0xF) {
            strcC4->unk84[var_r8] += 0x10;
        } else {
            strcC4->unk84[var_r8] = Mod(PseudoRandom32(), 0x28) - 0x14;
            strcC4->unk44[var_r8] = Mod(PseudoRandom32(), 0xDC) + 0x14;
        }

        s->x = strcC4->unk44[var_r8];
        s->y = strcC4->unk84[var_r8];
        DisplaySprite(s);
    }
}

void Task_SpecialStageIntroInit(void)
{
    SpecialStageIntroC4 *strcC4 = TASK_DATA(gCurTask);
    Sprite *s = &strcC4->s;
    u16 temp_r4;

    strcC4->qUnk38 -= Q(3.8125);
    s->x = I(strcC4->qUnk40);
    s->y = I(strcC4->qUnk38);

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8068CD4(void)
{
    SpecialStageIntroC4 *strcC4 = TASK_DATA(gCurTask);
    Sprite *s = &strcC4->s;

    if ((Div(++strcC4->unk30, 30) % 2u) == 0) {
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}