#include "global.h"
#include "core.h"
#include "trig.h"
#include "lib/m4a/m4a.h"
#include "constants/ui_graphics.h"
#include "game/entity.h"
#include "game/game_over.h"
#include "game/gTask_03006240.h"
#include "game/stage/ui.h"

typedef struct IntroSprite {
    Sprite s;
    u16 unk30;
    u8 unk32;
    s32 unk34;
    s32 qUnk38;
    s32 qUnk3C;
    s32 unk40;
} IntroSprite; /* 0x44 */

typedef struct Intro_54 {
    StrcUi_805423C strc0;
    struct Task *taskC;
    s32 unk10;
    s32 unk14;
    s32 unk18;
    s32 unk1C;
    s32 unk20;
    s32 unk24;
    u8 filler28[0x24];
    s16 unk4C;
    u8 unk4E;
    s16 unk50;
    s16 unk52;
} Intro_54; /* 0x54 */

void Task_IntroChaosEmeraldUpdate(void);
void Task_8065058(void);
void Task_80640C8(void);
void TaskDestructor_8065810(struct Task *t);

extern u16 gUnknown_086B1AB4[16][16];
extern u8 gUnknown_086B1CB4[0x540];
extern u8 gUnknown_086B21F4[0x800];
extern u16 gUnknown_086B29F4[256];
extern u8 gUnknown_086B2BF4[0x1E00];
extern u8 gUnknown_086B49F4[0x800];
extern u16 gUnknown_086B51F4[16][16];
extern u8 gUnknown_086B53F4[0x1B80];

extern u8 gUnknown_086B6F74[0x800];
extern u16 gUnknown_086B7774[256];
extern u8 gUnknown_086B7974[0x1880];

extern u8 gUnknown_086B91F4[0x800];
extern u16 gUnknown_086B99F4[256];
extern u8 gUnknown_086B9BF4[0x1840];
extern u16 gUnknown_086B1B14[16];
extern u8 gUnknown_086BB434[0x800];

void CreateIntroAnimation(void)
{
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r6;
    s32 temp_r6_2;
    u16 temp_r2;
    u16 temp_r3;
    u16 temp_r5;
    u8 i;
    struct Task *t, *t2;
    Sprite *s;
    IntroSprite *emerald;
    IntroSprite *introSpr;
    Intro_54 *strc54;
    StrcUi_805423C *strc0;
    s32 qVal;

    TasksDestroyAll();
    PAUSE_BACKGROUNDS_QUEUE();
    SA2_LABEL(gUnknown_03005390) = 0;
    PAUSE_GRAPHICS_QUEUE();
    sub_80535FC();
    UiGfxStackInit();
    gDispCnt = 0x1040;
    gBgCntRegs[0] = 0x9D86;
    gBgCntRegs[1] = 0x1B8B;
    gBgCntRegs[2] = 0x9880;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    t = TaskCreate(Task_IntroChaosEmeraldUpdate, sizeof(IntroSprite), 0x2120U, 0U, NULL);
    emerald = TASK_DATA(t);
    s = &emerald->s;
    emerald->unk30 = 0;
    qVal = -Q(36);
    emerald->unk34 = 0;
    emerald->qUnk38 = qVal;
    emerald->qUnk3C = qVal;
    emerald->unk40 = 0x240;
    s->graphics.dest = OBJ_VRAM0 + 0x20;
    s->graphics.anim = 0x306;
    s->variant = 0;
    s->x = 0x78;
    s->y = 0xFFDC;
    s->oamFlags = 0xC0;
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation(s);

    for (i = 0; i < 8; i++) {
        s32 chunkOffset;
        t2 = TaskCreate(Task_8065058, sizeof(IntroSprite), (i * 2) | 0x6800, 0U, NULL);
        introSpr = TASK_DATA(t2);
        s = &introSpr->s;
        introSpr->unk30 = (0x2F - (i * 6));
        introSpr->unk32 = i;
        introSpr->unk34 = introSpr->unk30;
        introSpr->qUnk38 = qVal;
        introSpr->qUnk3C = qVal;
        introSpr->unk40 = 0x240;
        chunkOffset = (i * (4 * TILE_SIZE_4BPP));
        s->graphics.dest = (chunkOffset + OBJ_VRAM0 + (31 * TILE_SIZE_4BPP));
        s->graphics.anim = 0x307;
        s->variant = 0;
        s->x = (Div(SIN(i << 6), 650) + 120);
        s->y = 0xFFDC;
        s->oamFlags = 0;
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0x1000;
        UpdateSpriteAnimation(s);
    }

    t2 = TaskCreate(Task_80640C8, sizeof(Intro_54), 0x2100U, 0U, TaskDestructor_8065810);
    strc54 = TASK_DATA(t2);
    strc54->unk4C = 0;
    strc54->unk4E = 1;
    strc54->taskC = t;
    strc54->unk10 = 0;
    strc54->unk14 = 0;
    strc54->unk18 = 0;
    strc54->unk1C = 0;
    strc54->unk20 = 0;
    strc54->unk24 = 0;
    strc54->unk50 = 0;
    strc54->unk52 = 0;

    strc54->strc0.unk0 = 0;
    strc54->strc0.unk2 = 1;
    strc54->strc0.unk4 = 2;
    strc54->strc0.unk6 = 0;
    strc54->strc0.unk8 = 0x80;
    strc54->strc0.unkA = 1;
    sub_805423C(&strc54->strc0);
    m4aSongNumStart(1U);
}

void sub_8063B8C(void)
{
    Strc_80528AC gfx;
    s8 *temp_r6;
    s8 *temp_r7;

    UiGfxStackInit();

    gfx.uiGfxID = UIGFX_OPTIONS;
    gfx.unk2B = 0;
    gfx.tiles = &gUnknown_086B1CB4[0];
    gfx.tilesSize = sizeof(gUnknown_086B1CB4);
    gfx.palette = &gUnknown_086B1AB4[0][0];
    gfx.paletteSize = sizeof(gUnknown_086B1AB4);
    gfx.layout = &gUnknown_086B21F4[0];
    gfx.layoutSize = sizeof(gUnknown_086B21F4);
    gfx.unk28 = 0;
    gfx.unk29 = 1;
    gfx.unk2A = 0x15;
    sub_80528AC(&gfx);

    gfx.uiGfxID = UIGFX_OPTIONS;
    gfx.unk2B = 1;
    gfx.tiles = &gUnknown_086B2BF4[0];
    gfx.tilesSize = sizeof(gUnknown_086B2BF4);
    gfx.palette = &gUnknown_086B29F4[0];
    gfx.paletteSize = sizeof(gUnknown_086B29F4);
    gfx.layout = &gUnknown_086B49F4[0];
    gfx.layoutSize = sizeof(gUnknown_086B49F4);
    gfx.unk28 = 0;
    gfx.unk29 = 0;
    gfx.unk2A = 0x11;
    sub_80528AC(&gfx);
}

void sub_8063C4C(void)
{
    Strc_80528AC gfx;
    s8 *temp_r6;
    s8 *temp_r7;

    UiGfxStackInit();

    gfx.uiGfxID = UIGFX_OPTIONS;
    gfx.unk2B = 0;
    gfx.tiles = &gUnknown_086B1CB4[0];
    gfx.tilesSize = sizeof(gUnknown_086B1CB4);
    gfx.palette = &gUnknown_086B1AB4[1][0];
    gfx.paletteSize = sizeof(gUnknown_086B1AB4[1]);
    gfx.layout = &gUnknown_086B21F4[0];
    gfx.layoutSize = sizeof(gUnknown_086B21F4);
    gfx.unk28 = 0;
    gfx.unk29 = 1;
    gfx.unk2A = 0x14;
    sub_80528AC(&gfx);

    gfx.uiGfxID = UIGFX_OPTIONS;
    gfx.unk2B = 1;
    gfx.tiles = &gUnknown_086B53F4[0];
    gfx.tilesSize = sizeof(gUnknown_086B53F4);
    gfx.palette = &gUnknown_086B51F4[0][0];
    gfx.paletteSize = sizeof(gUnknown_086B51F4);
    gfx.layout = &gUnknown_086B6F74[0];
    gfx.layoutSize = sizeof(gUnknown_086B6F74);
    gfx.unk28 = 0;
    gfx.unk29 = 0;
    gfx.unk2A = 0x11;
    sub_80528AC(&gfx);
}

void sub_8063D0C(void)
{
    Strc_80528AC gfx;
    s8 *temp_r6;
    s8 *temp_r7;

    UiGfxStackInit();

    gfx.uiGfxID = UIGFX_OPTIONS;
    gfx.unk2B = 0;
    gfx.tiles = &gUnknown_086B1CB4[0];
    gfx.tilesSize = sizeof(gUnknown_086B1CB4);
    gfx.palette = &gUnknown_086B1AB4[2][0];
    gfx.paletteSize = sizeof(gUnknown_086B1AB4[2]);
    gfx.layout = &gUnknown_086B21F4[0];
    gfx.layoutSize = sizeof(gUnknown_086B21F4);
    gfx.unk28 = 0;
    gfx.unk29 = 1;
    gfx.unk2A = 0x14;
    sub_80528AC(&gfx);

    gfx.uiGfxID = UIGFX_OPTIONS;
    gfx.unk2B = 1;
    gfx.tiles = &gUnknown_086B7974[0];
    gfx.tilesSize = sizeof(gUnknown_086B7974);
    gfx.palette = &gUnknown_086B7774[0];
    gfx.paletteSize = sizeof(gUnknown_086B7774);
    gfx.layout = &gUnknown_086B91F4[0];
    gfx.layoutSize = sizeof(gUnknown_086B91F4);
    gfx.unk28 = 0;
    gfx.unk29 = 0;
    gfx.unk2A = 0x11;
    sub_80528AC(&gfx);
}

void sub_8063DCC(void)
{
    Strc_80528AC gfx;
    s8 *temp_r6;
    s8 *temp_r7;

    UiGfxStackInit();

    gfx.uiGfxID = UIGFX_OPTIONS;
    gfx.unk2B = 0;
    gfx.tiles = &gUnknown_086B1CB4[0];
    gfx.tilesSize = sizeof(gUnknown_086B1CB4);
    gfx.palette = &gUnknown_086B1B14[0];
    gfx.paletteSize = sizeof(gUnknown_086B1B14);
    gfx.layout = &gUnknown_086B21F4[0];
    gfx.layoutSize = sizeof(gUnknown_086B21F4);
    gfx.unk28 = 0;
    gfx.unk29 = 1;
    gfx.unk2A = 0x14;
    sub_80528AC(&gfx);

    gfx.uiGfxID = UIGFX_OPTIONS;
    gfx.unk2B = 1;
    gfx.tiles = &gUnknown_086B9BF4[0];
    gfx.tilesSize = sizeof(gUnknown_086B9BF4);
    gfx.palette = &gUnknown_086B99F4[0];
    gfx.paletteSize = sizeof(gUnknown_086B99F4);
    gfx.layout = &gUnknown_086BB434[0];
    gfx.layoutSize = sizeof(gUnknown_086BB434);
    gfx.unk28 = 0;
    gfx.unk29 = 0;
    gfx.unk2A = 0x11;
    sub_80528AC(&gfx);
}

#if 0
void sub_8063E8C(u16 arg0) {
    Strc_80528AC sp4;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r2;
    s32 temp_r4;
    s32 var_r1;
    s8 var_r0;
    u16 temp_r3;
    u16 temp_r6;
    u8 var_r7;

    temp_r3 = arg0;
    switch (temp_r3) {                              /* irregular */
    case 0x0:
        var_r7 = 0;
        do {
            temp_r6 = TaskCreate(sub_806515C, 0x44U, (var_r7 * 2) | 0x6801, 0U, NULL)->data;
            temp_r4 = temp_r6 + 0x03000000;
            temp_r4->unk30 = (u16) (var_r7 * 6);
            *(temp_r6 + 0x32) = var_r7;
            temp_r4->unk34 = (s32) temp_r4->unk30;
            temp_r4->unk38 = 0xFFFFDC00;
            temp_r4->unk3C = 0xFFFFDC00;
            temp_r4->unk40 = 0x240;
            temp_r2 = var_r7 << 7;
            temp_r4->unk4 = (s32) (temp_r2 + 0x06010BE0);
            temp_r4->unkA = 0x307;
            *(temp_r6 + 0x20) = 1;
            temp_r4->unk16 = (s16) (Div((s32) *(temp_r2 + gSineTable), 0x28A) + 0x78);
            temp_r4->unk18 = 0xFFDC;
            temp_r4->unk1A = 0x180;
            temp_r4->unk8 = 0;
            temp_r4->unk14 = 0;
            temp_r4->unk1C = 0;
            *(temp_r6 + 0x21) = 0xFF;
            *(temp_r6 + 0x22) = 0x10;
            *(temp_r6 + 0x25) = 0;
            temp_r4->unk28 = -1;
            temp_r4->unk10 = 0x1000;
            UpdateSpriteAnimation((Sprite *) temp_r4);
            var_r7 = (u8) (var_r7 + 1);
        } while ((u32) var_r7 <= 7U);
        return;
    case 0x1:
        gDispCnt = 0x1240;
        sp4.uiGfxID = 0x80;
        *(&subroutine_arg0 + 0x2F) = 0;
        sp4.tiles = &gUnknown_086A5F34;
        sp4.tilesSize = 0x2F00;
        sp4.palette = &gUnknown_086A5D34;
        sp4.paletteSize = 0x200;
        sp4.layout = &gUnknown_086A8E34;
        sp4.layoutSize = 0x800;
        sp4.unk28 = 0;
        (&sp4.unk28)[1] = (u8) temp_r3;
        var_r1 = &sp4.uiGfxID - 2;
        var_r0 = 0x15;
block_11:
        *var_r1 = var_r0;
        sub_80528AC(&sp4);
        return;
    case 0x2:
        gDispCnt = 0x1340;
        sp4.uiGfxID = 0x80;
        temp_r1 = &sp4.uiGfxID - 1;
        *temp_r1 = 1;
        sp4.tiles = &gUnknown_086A9834;
        sp4.tilesSize = 0x2840;
        sp4.layout = &gUnknown_086AC074;
        sp4.layoutSize = 0x8C0;
        sp4.unk28 = 0;
        (&sp4.unk28)[1] = 0;
        var_r1 = temp_r1 - 1;
block_10:
        var_r0 = 0x11;
        goto block_11;
    case 0x3:
        gDispCnt = 0x1740;
        sp4.uiGfxID = 0x80;
        *(&subroutine_arg0 + 0x2F) = 0;
        sp4.tiles = &gUnknown_086AFFB4;
        sp4.tilesSize = 0x1440;
        sp4.layout = &gUnknown_086B13F4;
        sp4.layoutSize = 0x6C0;
        sp4.unk28 = 0;
        temp_r1_2 = &sp4.uiGfxID - 3;
        *temp_r1_2 = 2;
        var_r1 = temp_r1_2 + 1;
        goto block_10;
    case 0x136:
        sp4.uiGfxID = 0x80;
        temp_r1_3 = &sp4.uiGfxID - 1;
        *temp_r1_3 = 1;
        sp4.tiles = &gUnknown_086ACB34;
        sp4.tilesSize = 0x2840;
        sp4.layout = &gUnknown_086AF4F4;
        sp4.layoutSize = 0x8C0;
        sp4.unk28 = 0;
        (&sp4.unk28)[1] = 0;
        *(temp_r1_3 - 1) = 0x11;
        sub_80528AC(&sp4);
        return;
    }
}

void Task_80640C8(void) {
    s32 sp0;
    s16 temp_r0_2;
    s16 temp_r0_4;
    s32 temp_r0;
    s32 temp_r2;
    s32 temp_r4;
    s32 temp_r5;
    s32 var_sb;
    u16 temp_r0_3;
    u16 temp_r3;
    u16 temp_r6;
    u16 var_sl;
    u32 var_r7;

    temp_r3 = gCurTask->data;
    temp_r0 = temp_r3 + 0x03000000;
    sp0 = temp_r0;
    temp_r2 = temp_r3 + 0x0300004C;
    (temp_r0->unkC->unk6 + 0x03000000)->unk30 = (u16) *temp_r2;
    if (0xB & gPressedKeys) {
        gCurTask->main = sub_8064FF8;
        return;
    }
    temp_r0_2 = (s16) *temp_r2;
    var_sb = temp_r2;
    if ((s32) temp_r0_2 > 0x97) {
        var_r7 = (u32) ((temp_r0_2 - 0x98) << 0xF) >> 0x10;
        if (var_r7 > 0x28U) {
            var_r7 = 0x28;
        }
        var_sl = 0;
        var_sb = temp_r3 + 0x4C;
        do {
            temp_r6 = (&gUnknown_086A5D34)[var_sl];
            temp_r5 = Div(var_r7 * (0x1F & temp_r6), 0x28) & 0x1F;
            temp_r4 = Div(var_r7 * ((u32) (temp_r6 & 0x3E0) >> 5), 0x28) & 0x1F;
            gBgPalette[var_sl] = temp_r5 | (temp_r4 << 5) | ((Div(var_r7 * ((u32) (temp_r6 & 0x7C00) >> 0xA), 0x28) & 0x1F) << 0xA);
            gFlags |= 1;
            temp_r0_3 = (u16) (var_sl + 1);
            var_sl = temp_r0_3;
        } while ((u32) temp_r0_3 <= 0x1FU);
    }
    if ((s32) *var_sb > 0xB5) {
        temp_r0_4 = (u16) gBgScrollRegs[0][1] + 2;
        gBgScrollRegs[0][1] = temp_r0_4;
        if ((s32) temp_r0_4 > 0x64) {
            gBgScrollRegs[0][1] = 0x64;
        }
        if ((s32) gBgScrollRegs[0][1] > 0x50) {
            gBgScrollRegs[2][1] = (u16) gBgScrollRegs[0][1] - 0x50;
        }
    }
    gBgScrollRegs[1][1] = (u16) gBgScrollRegs[1][1] + 0xA;
    sub_8063E8C((u16) *var_sb);
    if ((s32) *var_sb > 0x13F) {
        *var_sb = 0;
        gCurTask->main = sub_8064244;
    } else {
        sub_805423C((StrcUi_805423C *) sp0);
    }
    *var_sb = (s16) ((u16) *var_sb + 1);
}

void sub_8064244(void) {
    StrcUi_805423C *temp_r6;
    s16 *temp_r3;
    s16 temp_r0_2;
    s16 temp_r1;
    s16 temp_r4;
    s16 temp_r5;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r3_2;
    s32 temp_r3_3;
    s32 temp_r4_2;
    s32 temp_r7;
    s32 temp_r7_2;
    s32 temp_r7_3;
    s32 temp_r7_4;
    s32 var_r0;
    struct Task *temp_r0_3;
    struct Task *temp_r0_4;
    struct Task *temp_r0_5;
    u16 temp_r0;
    u16 temp_r0_6;
    u16 temp_r2;
    u32 var_r4_2;
    u8 var_r4;

    temp_r0 = gCurTask->data;
    temp_r6 = temp_r0 + 0x03000000;
    temp_r3 = temp_r0 + 0x4C;
    temp_r4 = *temp_r3;
    temp_r5 = 0xB & gPressedKeys;
    if (temp_r5 != 0) {
        gCurTask->main = sub_8064FF8;
        return;
    }
    if ((u32) temp_r4 <= 0x5FU) {
        TasksDestroyInPriorityRange(0x6800U, (u16) (((u32) temp_r4 >> 2) + 0x6802));
    }
    if (temp_r4 == 0x3C) {
        temp_r6->unk0 = temp_r5;
        temp_r6->unk2 = 1;
        temp_r6->unk4 = 1;
        temp_r6->unk6 = temp_r5;
        temp_r6->unk8 = 0x40;
        temp_r6->unkA = 1;
        sub_80543A4(temp_r6);
    }
    gBgScrollRegs[1][1] = (u16) gBgScrollRegs[1][1] + 0xA;
    temp_r0_2 = (u16) *temp_r3 + 1;
    *temp_r3 = temp_r0_2;
    temp_r1 = temp_r0_2;
    if ((s32) temp_r1 <= 0x1F9) {
        if ((s32) temp_r1 <= 0xE0) {
            if ((u32) (temp_r4 - 0x1E) <= 0x59U) {
                sub_805423C(temp_r6);
            }
        } else {
            if (temp_r1 == 0xE1) {
                temp_r0_3 = CreateSpotlightBeamTask();
                temp_r6->unk10 = temp_r0_3;
                temp_r7 = temp_r0_3->data + 0x03000000;
                temp_r7->unk6 = 0x78;
                temp_r7->unk8 = 0xFA;
                temp_r7->unk0 = temp_r5;
                temp_r7->unk2 = temp_r5;
                temp_r7->unk4 = temp_r5;
                temp_r7->unkA = 2;
                temp_r7->unkB = 6;
                temp_r0_4 = CreateSpotlightBeamTask();
                temp_r6->unk14 = temp_r0_4;
                temp_r7_2 = temp_r0_4->data + 0x03000000;
                temp_r7_2->unk6 = 0x78;
                temp_r7_2->unk8 = 0xFA;
                temp_r7_2->unk0 = temp_r5;
                temp_r7_2->unk2 = temp_r5;
                temp_r7_2->unk4 = temp_r5;
                temp_r7_2->unkA = 3;
                temp_r7_2->unkB = 6;
                gDispCnt |= 0x6000;
                gWinRegs[4] = 0x1F1F;
                gWinRegs[5] = 0x3F;
                gBldRegs.bldCnt = 0x3FDF;
                gBldRegs.bldY = 8;
                return;
            }
            temp_r4_2 = *temp_r3 - 0xE1;
            temp_r7_3 = temp_r6->unk10->data + 0x03000000;
            temp_r7_3->unk0 = (s16) ((0x18 - Mod(temp_r4_2, 0x19)) * 6);
            if (((u32) temp_r4_2 <= 0x3FU) && (Mod(temp_r4_2, 6) == 0)) {
                temp_r7_3->unkB = (u8) (temp_r7_3->unkB + 1);
            }
            temp_r7_4 = temp_r6->unk14->data + 0x03000000;
            temp_r7_4->unk0 = (s16) (((0x18 - Mod(temp_r4_2, 0x19)) * 6) + 0x370);
            if (((u32) temp_r4_2 <= 0x3FU) && (Mod(temp_r4_2, 6) == 0)) {
                temp_r7_4->unkB = (u8) (temp_r7_4->unkB + 1);
            }
        }
    } else {
        TaskDestroy(temp_r6->unkC);
        temp_r6->unkC = (struct Task *) temp_r5;
        gBgScrollRegs[1][0] = temp_r5;
        gBgScrollRegs[1][1] = temp_r5;
        *(temp_r0 + 0x50) = 0x4000;
        *(temp_r0 + 0x52) = temp_r5;
        *temp_r3 = temp_r5;
        TaskDestroy(temp_r6->unk10);
        temp_r6->unk10 = (struct Task *) temp_r5;
        TaskDestroy(temp_r6->unk14);
        temp_r6->unk14 = (struct Task *) temp_r5;
        gBldRegs.bldCnt = (u16) temp_r5;
        gBldRegs.bldY = (u16) temp_r5;
        gDispCnt = 0x1340;
        gBgCntRegs->unk0 = 0x1D86;
        gBgCntRegs[1] = 0x1883;
        temp_r0_5 = TaskCreate(sub_8065258, 0xC8U, 0x2210U, 0U, (void (*)(struct Task *)) temp_r5);
        temp_r6->unk18 = temp_r0_5;
        temp_r0_6 = temp_r0_5->data;
        *(temp_r0_6 + 0xB4) = temp_r5;
        var_r4 = 0;
        do {
            temp_r3_2 = temp_r0_6 + 0x03000000 + (var_r4 * 0x30);
            if (var_r4 != 0) {
                var_r0 = 0x06014000;
            } else {
                var_r0 = 0x06011440;
            }
            temp_r3_2->unk4 = var_r0;
            temp_r3_2->unkA = 0x301;
            *(temp_r3_2 + 0x20) = 0;
            temp_r3_2->unk16 = 0xB4;
            temp_r3_2->unk18 = 0x82;
            temp_r3_2->unk1A = 0x3C0;
            temp_r3_2->unk8 = 0;
            temp_r3_2->unk14 = 0;
            temp_r3_2->unk1C = 0;
            temp_r1_2 = temp_r3_2 + 0x21;
            *temp_r1_2 = 0xFF;
            *(temp_r1_2 + 1) = 0x10;
            *(temp_r3_2 + 0x25) = 0;
            temp_r3_2->unk28 = -1;
            temp_r3_2->unk10 = 0x80;
            UpdateSpriteAnimation((Sprite *) temp_r3_2);
            var_r4 = (u8) (var_r4 + 1);
        } while ((u32) var_r4 <= 1U);
        var_r4_2 = 0;
        do {
            temp_r2 = TaskCreate(sub_806562C, 0x44U, 0x6820U, 0U, NULL)->data;
            temp_r3_3 = temp_r2 + 0x03000000;
            temp_r3_3->unk30 = 0;
            *(temp_r2 + 0x32) = 0;
            temp_r3_3->unk34 = var_r4_2;
            temp_r3_3->unk3C = (s32) (gUnknown_0868B27C + 0x118);
            temp_r1_3 = var_r4_2 * 0xC;
            temp_r3_3->unk4 = (s32) *(temp_r1_3 + (&gUnknown_0868B28C + 8));
            temp_r3_3->unkA = (s16) *(temp_r1_3 + &gUnknown_0868B28C);
            *(temp_r2 + 0x20) = (s8) *(temp_r1_3 + (&gUnknown_0868B28C + 4));
            temp_r3_3->unk16 = 0x118;
            temp_r3_3->unk18 = 0x46;
            temp_r3_3->unk1A = 0x180;
            temp_r3_3->unk8 = 0;
            temp_r3_3->unk14 = 0;
            temp_r3_3->unk1C = 0;
            *(temp_r2 + 0x21) = 0xFF;
            *(temp_r2 + 0x22) = 0x10;
            *(temp_r2 + 0x25) = 0;
            temp_r3_3->unk28 = -1;
            temp_r3_3->unk10 = 0x80;
            UpdateSpriteAnimation((Sprite *) temp_r3_3);
            var_r4_2 = (u32) (u8) (var_r4_2 + 1);
        } while (var_r4_2 <= 5U);
        gCurTask->main = sub_80645E4;
    }
}

void sub_80645E4(void) {
    s16 temp_r0;
    s16 temp_r1_3;
    s16 temp_r1_4;
    s16 temp_r5;
    s32 temp_r1_2;
    s32 temp_r1_5;
    s32 temp_r1_6;
    s32 temp_r1_7;
    s32 temp_r1_8;
    s32 temp_r2;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r4_3;
    s32 temp_r5_2;
    s32 temp_r6;
    s32 var_r0;
    struct Task *temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r1;
    u16 temp_r2_2;
    u32 var_r5_2;
    u8 var_r5;

    temp_r1 = gCurTask->data;
    temp_r4 = temp_r1 + 0x03000000;
    temp_r6 = temp_r1 + 0x4C;
    *(temp_r4->unk18->data + 0xB4) = (u16) *temp_r6;
    temp_r2 = temp_r1 + 0x50;
    *temp_r2 = (u16) (*temp_r2 - 0x20);
    temp_r1_2 = temp_r1 + 0x52;
    *temp_r1_2 = (u16) (*temp_r1_2 + 0x20);
    gBgScrollRegs[0][0] = (s16) ((u16) *temp_r2 >> 8);
    gBgScrollRegs[0][1] = (s16) ((u16) *temp_r1_2 >> 8);
    temp_r5 = 0xB & gPressedKeys;
    if (temp_r5 != 0) {
        gCurTask->main = sub_8064FF8;
        return;
    }
    temp_r1_3 = (s16) *temp_r6;
    if ((u32) temp_r1_3 <= 0x1DU) {
        if (temp_r1_3 == 1) {
            sub_8063B8C();
        }
        temp_r4->unk0 = temp_r5;
        temp_r4->unk2 = 1;
        temp_r4->unk4 = 2;
        temp_r4->unk6 = temp_r5;
        temp_r4->unk8 = temp_r5;
        temp_r4->unkA = 1;
        goto block_8;
    }
    if ((u32) temp_r1_3 <= 0x29U) {
        temp_r4->unk0 = temp_r5;
        temp_r4->unk2 = 1;
        temp_r4->unk4 = 8;
        temp_r4->unk6 = temp_r5;
        temp_r4->unk8 = 0x100;
        temp_r4->unkA = 1;
block_8:
        sub_80543A4((StrcUi_805423C *) temp_r4);
    } else if (((u32) temp_r1_3 <= 0x65U) || ((u32) temp_r1_3 <= 0xF1U)) {
        sub_805423C((StrcUi_805423C *) temp_r4);
    } else if ((u32) temp_r1_3 <= 0x169U) {
        sub_805423C((StrcUi_805423C *) temp_r4);
    }
    temp_r5_2 = temp_r1 + 0x0300004C;
    temp_r0 = *temp_r5_2 + 1;
    *temp_r5_2 = (u16) temp_r0;
    temp_r1_4 = temp_r0;
    if ((s32) temp_r1_4 <= 0x19D) {
        if ((s32) temp_r1_4 > 0x160) {
            if (temp_r1_4 == 0x161) {
                temp_r4->unk4 = 4;
                temp_r4->unk6 = 0;
                temp_r4->unk8 = 0x180;
            }
            sub_805423C((StrcUi_805423C *) temp_r4);
        }
        return;
    }
    TasksDestroyInPriorityRange(0x6820U, 0x6821U);
    TaskDestroy(temp_r4->unk18);
    temp_r4->unk18 = NULL;
    temp_r1_5 = temp_r1 + 0x03000050;
    *temp_r1_5 = 0xE000;
    *(temp_r1_5 + 2) = 0x6000;
    *temp_r5_2 = 0U;
    temp_r4->unk0 = 0;
    temp_r4->unk2 = 1;
    temp_r4->unk4 = 2;
    temp_r4->unk6 = 0;
    temp_r4->unk8 = 0;
    temp_r4->unkA = 1;
    sub_80543A4((StrcUi_805423C *) temp_r4);
    temp_r0_2 = TaskCreate(sub_8065328, 0xC8U, 0x2280U, 0U, NULL);
    temp_r4->unk1C = temp_r0_2;
    temp_r0_3 = temp_r0_2->data;
    *(temp_r0_3 + 0x030000B4) = 0;
    var_r5 = 0;
    do {
        temp_r4_2 = temp_r0_3 + 0x03000000 + (var_r5 * 0x30);
        if (var_r5 == 2) {
            var_r0 = 0x06013280;
        } else if (var_r5 == 1) {
            var_r0 = 0x06011980;
        } else {
            var_r0 = 0x06010400;
        }
        temp_r4_2->unk4 = var_r0;
        temp_r4_2->unkA = 0x301;
        temp_r1_6 = temp_r4_2 + 0x20;
        *temp_r1_6 = 1;
        temp_r4_2->unk16 = 0x30;
        temp_r4_2->unk18 = 0x6C;
        temp_r4_2->unk1A = 0x300;
        temp_r4_2->unk8 = 0;
        temp_r4_2->unk14 = 0;
        temp_r4_2->unk1C = 0;
        temp_r1_7 = temp_r1_6 + 1;
        *temp_r1_7 = 0xFF;
        *(temp_r1_7 + 1) = 0x10;
        *(temp_r4_2 + 0x25) = 0;
        temp_r4_2->unk28 = -1;
        temp_r4_2->unk10 = 0x80;
        if (var_r5 == 0) {
            UpdateSpriteAnimation((Sprite *) temp_r4_2);
            DisplaySprite((Sprite *) temp_r4_2);
        }
        var_r5 = (u8) (var_r5 + 1);
    } while ((u32) var_r5 <= 2U);
    var_r5_2 = 0;
    do {
        temp_r2_2 = TaskCreate(sub_80656A4, 0x44U, 0x6820U, 0U, NULL)->data;
        temp_r4_3 = temp_r2_2 + 0x03000000;
        temp_r4_3->unk30 = 0;
        *(temp_r2_2 + 0x32) = 0;
        temp_r4_3->unk34 = var_r5_2;
        temp_r4_3->unk3C = (s32) (gUnknown_0868B280 + 0x118);
        temp_r1_8 = var_r5_2 * 0xC;
        temp_r4_3->unk4 = (s32) *(temp_r1_8 + (&gUnknown_0868B2D4 + 8));
        temp_r4_3->unkA = (s16) *(temp_r1_8 + &gUnknown_0868B2D4);
        *(temp_r2_2 + 0x20) = (s8) *(temp_r1_8 + (&gUnknown_0868B2D4 + 4));
        temp_r4_3->unk16 = 0x118;
        temp_r4_3->unk18 = 0x46;
        temp_r4_3->unk1A = 0x180;
        temp_r4_3->unk8 = 0;
        temp_r4_3->unk14 = 0;
        temp_r4_3->unk1C = 0;
        *(temp_r2_2 + 0x21) = 0xFF;
        *(temp_r2_2 + 0x22) = 0x10;
        *(temp_r2_2 + 0x25) = 0;
        temp_r4_3->unk28 = -1;
        temp_r4_3->unk10 = 0x80;
        UpdateSpriteAnimation((Sprite *) temp_r4_3);
        DisplaySprite((Sprite *) temp_r4_3);
        var_r5_2 = (u32) (u8) (var_r5_2 + 1);
    } while (var_r5_2 <= 5U);
    gCurTask->main = sub_80648D4;
}

void sub_80648D4(void) {
    s16 temp_r0;
    s16 temp_r1_3;
    s16 temp_r1_4;
    s16 temp_r2_2;
    s32 temp_r1_2;
    s32 temp_r1_5;
    s32 temp_r1_6;
    s32 temp_r1_7;
    s32 temp_r1_8;
    s32 temp_r2;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r4_3;
    s32 temp_r5;
    s32 temp_r5_2;
    s32 var_r0;
    struct Task *temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r1;
    u16 temp_r2_3;
    u32 var_r5_2;
    u8 var_r5;

    temp_r1 = gCurTask->data;
    temp_r4 = temp_r1 + 0x03000000;
    temp_r5 = temp_r1 + 0x4C;
    *(temp_r4->unk1C->data + 0xB4) = (u16) *temp_r5;
    temp_r2 = temp_r1 + 0x50;
    *temp_r2 = (u16) (*temp_r2 + 0x20);
    temp_r1_2 = temp_r1 + 0x52;
    *temp_r1_2 = (u16) (*temp_r1_2 - 0x20);
    gBgScrollRegs[0][0] = (s16) ((u16) *temp_r2 >> 8);
    gBgScrollRegs[0][1] = (s16) ((u16) *temp_r1_2 >> 8);
    temp_r2_2 = 0xB & gPressedKeys;
    if (temp_r2_2 != 0) {
        gCurTask->main = sub_8064FF8;
        return;
    }
    temp_r1_3 = (s16) *temp_r5;
    if ((u32) temp_r1_3 <= 0x1DU) {
        if (temp_r1_3 == 1) {
            sub_8063C4C();
        }
        goto block_7;
    }
    if ((u32) temp_r1_3 <= 0x29U) {
        temp_r4->unk0 = temp_r2_2;
        temp_r4->unk2 = 1;
        temp_r4->unk4 = 8;
        temp_r4->unk6 = temp_r2_2;
        temp_r4->unk8 = 0x100;
        temp_r4->unkA = 1;
block_7:
        sub_80543A4((StrcUi_805423C *) temp_r4);
    } else if (((u32) temp_r1_3 <= 0x65U) || ((u32) temp_r1_3 <= 0xF1U)) {
        sub_805423C((StrcUi_805423C *) temp_r4);
    } else if ((u32) temp_r1_3 <= 0x169U) {
        sub_805423C((StrcUi_805423C *) temp_r4);
    }
    temp_r5_2 = temp_r1 + 0x0300004C;
    temp_r0 = *temp_r5_2 + 1;
    *temp_r5_2 = (u16) temp_r0;
    temp_r1_4 = temp_r0;
    if ((s32) temp_r1_4 <= 0x19D) {
        if ((s32) temp_r1_4 > 0x160) {
            if (temp_r1_4 == 0x161) {
                temp_r4->unk4 = 4;
                temp_r4->unk6 = 0;
                temp_r4->unk8 = 0x180;
            }
            sub_805423C((StrcUi_805423C *) temp_r4);
        }
        return;
    }
    TasksDestroyInPriorityRange(0x6820U, 0x6821U);
    temp_r1_5 = temp_r1 + 0x03000050;
    *temp_r1_5 = 0xE000;
    *(temp_r1_5 + 2) = 0x1000;
    TaskDestroy(temp_r4->unk1C);
    temp_r4->unk1C = NULL;
    *temp_r5_2 = 0U;
    temp_r4->unk0 = 0;
    temp_r4->unk2 = 1;
    temp_r4->unk4 = 2;
    temp_r4->unk6 = 0;
    temp_r4->unk8 = 0;
    temp_r4->unkA = 1;
    sub_80543A4((StrcUi_805423C *) temp_r4);
    temp_r0_2 = TaskCreate(sub_8065444, 0xC8U, 0x2230U, 0U, NULL);
    temp_r4->unk20 = temp_r0_2;
    temp_r0_3 = temp_r0_2->data;
    *(temp_r0_3 + 0x030000B4) = 0;
    var_r5 = 0;
    do {
        temp_r4_2 = temp_r0_3 + 0x03000000 + (var_r5 * 0x30);
        if (var_r5 == 2) {
            var_r0 = 0x06013280;
        } else if (var_r5 == 1) {
            var_r0 = 0x06011980;
        } else {
            var_r0 = 0x06010080;
        }
        temp_r4_2->unk4 = var_r0;
        temp_r4_2->unkA = 0x301;
        temp_r1_6 = temp_r4_2 + 0x20;
        *temp_r1_6 = 2;
        temp_r4_2->unk16 = 0x30;
        temp_r4_2->unk18 = 0x82;
        temp_r4_2->unk1A = 0x3C0;
        temp_r4_2->unk8 = 0;
        temp_r4_2->unk14 = 0;
        temp_r4_2->unk1C = 0;
        temp_r1_7 = temp_r1_6 + 1;
        *temp_r1_7 = 0xFF;
        *(temp_r1_7 + 1) = 0x10;
        *(temp_r4_2 + 0x25) = 0;
        temp_r4_2->unk28 = -1;
        temp_r4_2->unk10 = 0x80;
        if (var_r5 == 0) {
            UpdateSpriteAnimation((Sprite *) temp_r4_2);
            DisplaySprite((Sprite *) temp_r4_2);
        }
        var_r5 = (u8) (var_r5 + 1);
    } while ((u32) var_r5 <= 2U);
    var_r5_2 = 0;
    do {
        temp_r2_3 = TaskCreate(sub_806571C, 0x44U, 0x6820U, 0U, NULL)->data;
        temp_r4_3 = temp_r2_3 + 0x03000000;
        temp_r4_3->unk30 = 0;
        *(temp_r2_3 + 0x32) = 0;
        temp_r4_3->unk34 = var_r5_2;
        temp_r4_3->unk3C = (s32) (gUnknown_0868B284 + 0x118);
        temp_r1_8 = var_r5_2 * 0xC;
        temp_r4_3->unk4 = (s32) *(temp_r1_8 + (&gUnknown_0868B31C + 8));
        temp_r4_3->unkA = (s16) *(temp_r1_8 + &gUnknown_0868B31C);
        *(temp_r2_3 + 0x20) = (s8) *(temp_r1_8 + (&gUnknown_0868B31C + 4));
        temp_r4_3->unk16 = 0x118;
        temp_r4_3->unk18 = 0x46;
        temp_r4_3->unk1A = 0x180;
        temp_r4_3->unk8 = 0;
        temp_r4_3->unk14 = 0;
        temp_r4_3->unk1C = 0;
        *(temp_r2_3 + 0x21) = 0xFF;
        *(temp_r2_3 + 0x22) = 0x10;
        *(temp_r2_3 + 0x25) = 0;
        temp_r4_3->unk28 = -1;
        temp_r4_3->unk10 = 0x40080;
        UpdateSpriteAnimation((Sprite *) temp_r4_3);
        var_r5_2 = (u32) (u8) (var_r5_2 + 1);
    } while (var_r5_2 <= 8U);
    gCurTask->main = sub_8064BB4;
}

void sub_8064BB4(void) {
    s16 temp_r0;
    s16 temp_r1_3;
    s16 temp_r1_4;
    s16 temp_r2;
    s32 temp_r1_2;
    s32 temp_r1_5;
    s32 temp_r1_6;
    s32 temp_r1_7;
    s32 temp_r1_8;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r4_3;
    s32 temp_r5;
    s32 temp_r5_2;
    s32 var_r0;
    struct Task *temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r1;
    u16 temp_r2_2;
    u32 var_r5_2;
    u8 var_r5;

    temp_r1 = gCurTask->data;
    temp_r4 = temp_r1 + 0x03000000;
    temp_r5 = temp_r1 + 0x4C;
    *(temp_r4->unk20->data + 0xB4) = (u16) *temp_r5;
    temp_r1_2 = temp_r1 + 0x52;
    *temp_r1_2 = (u16) (*temp_r1_2 + 0x20);
    gBgScrollRegs[0][0] = (s16) ((u16) *(temp_r1 + 0x50) >> 8);
    gBgScrollRegs[0][1] = (s16) ((u16) *temp_r1_2 >> 8);
    temp_r2 = 0xB & gPressedKeys;
    if (temp_r2 != 0) {
        gCurTask->main = sub_8064FF8;
        return;
    }
    temp_r1_3 = (s16) *temp_r5;
    if ((u32) temp_r1_3 <= 0x1DU) {
        if (temp_r1_3 == 1) {
            sub_8063D0C();
        }
        goto block_7;
    }
    if ((u32) temp_r1_3 <= 0x29U) {
        temp_r4->unk0 = temp_r2;
        temp_r4->unk2 = 1;
        temp_r4->unk4 = 8;
        temp_r4->unk6 = temp_r2;
        temp_r4->unk8 = 0x100;
        temp_r4->unkA = 1;
block_7:
        sub_80543A4((StrcUi_805423C *) temp_r4);
    } else if (((u32) temp_r1_3 <= 0x65U) || ((u32) temp_r1_3 <= 0xF1U)) {
        sub_805423C((StrcUi_805423C *) temp_r4);
    } else if ((u32) temp_r1_3 <= 0x169U) {
        sub_805423C((StrcUi_805423C *) temp_r4);
    }
    temp_r5_2 = temp_r1 + 0x0300004C;
    temp_r0 = *temp_r5_2 + 1;
    *temp_r5_2 = (u16) temp_r0;
    temp_r1_4 = temp_r0;
    if ((s32) temp_r1_4 <= 0x19D) {
        if ((s32) temp_r1_4 > 0x160) {
            if (temp_r1_4 == 0x161) {
                temp_r4->unk4 = 4;
                temp_r4->unk6 = 0;
                temp_r4->unk8 = 0x180;
            }
            sub_805423C((StrcUi_805423C *) temp_r4);
        }
        return;
    }
    TasksDestroyInPriorityRange(0x6820U, 0x6821U);
    temp_r1_5 = temp_r1 + 0x03000050;
    *temp_r1_5 = 0x3000;
    *(temp_r1_5 + 2) = 0x5000;
    TaskDestroy(temp_r4->unk20);
    temp_r4->unk20 = NULL;
    *temp_r5_2 = 0U;
    temp_r4->unk0 = 0;
    temp_r4->unk2 = 1;
    temp_r4->unk4 = 2;
    temp_r4->unk6 = 0;
    temp_r4->unk8 = 0;
    temp_r4->unkA = 1;
    sub_80543A4((StrcUi_805423C *) temp_r4);
    temp_r0_2 = TaskCreate(sub_8065538, 0xC8U, 0x2230U, 0U, NULL);
    temp_r4->unk24 = temp_r0_2;
    temp_r0_3 = temp_r0_2->data;
    *(temp_r0_3 + 0x030000B4) = 0;
    var_r5 = 0;
    do {
        temp_r4_2 = temp_r0_3 + 0x03000000 + (var_r5 * 0x30);
        if (var_r5 != 0) {
            var_r0 = 0x06016400;
        } else {
            var_r0 = 0x06011440;
        }
        temp_r4_2->unk4 = var_r0;
        temp_r4_2->unkA = 0x301;
        temp_r1_6 = temp_r4_2 + 0x20;
        *temp_r1_6 = 3;
        temp_r4_2->unk16 = 0xB4;
        temp_r4_2->unk18 = 0x6C;
        temp_r4_2->unk1A = 0x180;
        temp_r4_2->unk8 = 0;
        temp_r4_2->unk14 = 0;
        temp_r4_2->unk1C = 0;
        temp_r1_7 = temp_r1_6 + 1;
        *temp_r1_7 = 0xFF;
        *(temp_r1_7 + 1) = 0x10;
        *(temp_r4_2 + 0x25) = 0;
        temp_r4_2->unk28 = -1;
        temp_r4_2->unk10 = 0x80;
        UpdateSpriteAnimation((Sprite *) temp_r4_2);
        if (var_r5 == 0) {
            DisplaySprite((Sprite *) temp_r4_2);
        }
        var_r5 = (u8) (var_r5 + 1);
    } while ((u32) var_r5 <= 1U);
    var_r5_2 = 0;
    do {
        temp_r2_2 = TaskCreate(sub_8065794, 0x44U, 0x6820U, 0U, NULL)->data;
        temp_r4_3 = temp_r2_2 + 0x03000000;
        temp_r4_3->unk30 = 0;
        *(temp_r2_2 + 0x32) = 0;
        temp_r4_3->unk34 = var_r5_2;
        temp_r4_3->unk3C = (s32) (gUnknown_0868B288 + 0x118);
        temp_r1_8 = var_r5_2 * 0xC;
        temp_r4_3->unk4 = (s32) *(temp_r1_8 + (&gUnknown_0868B388 + 8));
        temp_r4_3->unkA = (s16) *(temp_r1_8 + &gUnknown_0868B388);
        *(temp_r2_2 + 0x20) = (s8) *(temp_r1_8 + (&gUnknown_0868B388 + 4));
        temp_r4_3->unk16 = 0x118;
        temp_r4_3->unk18 = 0x46;
        temp_r4_3->unk1A = 0x180;
        temp_r4_3->unk8 = 0;
        temp_r4_3->unk14 = 0;
        temp_r4_3->unk1C = 0;
        *(temp_r2_2 + 0x21) = 0xFF;
        *(temp_r2_2 + 0x22) = 0x10;
        *(temp_r2_2 + 0x25) = 0;
        temp_r4_3->unk28 = -1;
        temp_r4_3->unk10 = 0x40080;
        UpdateSpriteAnimation((Sprite *) temp_r4_3);
        var_r5_2 = (u32) (u8) (var_r5_2 + 1);
    } while (var_r5_2 <= 3U);
    gCurTask->main = sub_8064E84;
}

void sub_8064E84(void) {
    s16 temp_r1_3;
    s16 temp_r1_4;
    s16 temp_r1_5;
    s16 temp_r2_2;
    s32 temp_r0;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r4;
    s32 temp_r5;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r4 = temp_r1 + 0x03000000;
    temp_r5 = temp_r1 + 0x4C;
    *(temp_r4->unk24->unk6 + 0xB4) = (u16) *temp_r5;
    temp_r2 = temp_r1 + 0x50;
    *temp_r2 = (u16) (*temp_r2 - 0x20);
    temp_r1_2 = temp_r1 + 0x52;
    *temp_r1_2 = (u16) (*temp_r1_2 - 0x20);
    gBgScrollRegs[0][0] = (s16) ((u16) *temp_r2 >> 8);
    gBgScrollRegs[0][1] = (s16) ((u16) *temp_r1_2 >> 8);
    temp_r2_2 = 0xB & gPressedKeys;
    if (temp_r2_2 != 0) {
        gCurTask->main = sub_8064FF8;
        return;
    }
    temp_r1_3 = (s16) *temp_r5;
    if ((u32) temp_r1_3 <= 0x1DU) {
        if (temp_r1_3 == 1) {
            sub_8063DCC();
        }
        goto block_7;
    }
    if ((u32) temp_r1_3 <= 0x29U) {
        temp_r4->unk0 = temp_r2_2;
        temp_r4->unk2 = 1;
        temp_r4->unk4 = 8;
        temp_r4->unk6 = temp_r2_2;
        temp_r4->unk8 = 0x100;
        temp_r4->unkA = 1;
block_7:
        sub_80543A4((StrcUi_805423C *) temp_r4);
    } else if (((u32) temp_r1_3 <= 0x65U) || ((u32) temp_r1_3 <= 0xF1U)) {
        sub_805423C((StrcUi_805423C *) temp_r4);
    } else if ((u32) temp_r1_3 <= 0x169U) {
        sub_805423C((StrcUi_805423C *) temp_r4);
    }
    temp_r0 = temp_r1 + 0x0300004C;
    temp_r1_4 = *temp_r0 + 1;
    *temp_r0 = (u16) temp_r1_4;
    temp_r1_5 = temp_r1_4;
    if ((s32) temp_r1_5 > 0x19D) {
        gCurTask->main = sub_8064FA0;
        sub_805423C((StrcUi_805423C *) temp_r4);
        return;
    }
    if ((s32) temp_r1_5 > 0x160) {
        if (temp_r1_5 == 0x161) {
            temp_r4->unk4 = 4;
            temp_r4->unk6 = 0;
            temp_r4->unk8 = 0x180;
        }
        sub_805423C((StrcUi_805423C *) temp_r4);
    }
}

void sub_8064FA0(void) {
    TasksDestroyInPriorityRange(0U, 0xFFFFU);
    gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
    sa2__gUnknown_03005390 = 0;
    gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
    CreateTitleScreen(0U);
}

void sub_8064FF8(void) {
    TasksDestroyInPriorityRange(0U, 0xFFFFU);
    gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
    sa2__gUnknown_03005390 = 0;
    gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
    m4aSongNumStop(1U);
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
    CreateTitleScreen(1U);
}

void Task_8065058(void) {
    s16 temp_r0;
    s16 temp_r7;
    s16 var_r0;
    s32 temp_r0_2;
    s32 temp_r6;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r6 = temp_r1 + 0x03000000;
    temp_r0 = temp_r6->unk30 + 1;
    temp_r6->unk30 = (u16) temp_r0;
    if ((u32) ((u32) ((temp_r0 << 0x10) + 0xFFA60000) >> 0x10) > 0x8FU) {
        temp_r6->unk3C = (s32) (temp_r6->unk3C + temp_r6->unk40);
    }
    if ((s32) temp_r0 <= 0x59) {
        temp_r0_2 = temp_r6->unk40 - 6;
        temp_r6->unk40 = temp_r0_2;
        if (temp_r0_2 < 0) {
            temp_r6->unk40 = 0;
        }
    }
    temp_r7 = (s16) (u16) temp_r0;
    if (temp_r7 == 0xE9) {
        temp_r6->unk40 = 0x140;
    }
    if ((s32) temp_r6->unk3C > 0xB400) {
        temp_r6->unk3C = 0xB400;
    }
    if (temp_r6->unk34 == 0) {
        *(temp_r1 + 0x03000021) = 0xFF;
        temp_r6->unk34 = 0x2F;
        temp_r6->unk38 = (s32) temp_r6->unk3C;
    }
    temp_r6->unk38 = (s32) (temp_r6->unk38 - Div((s32) gSineTable[(u8) (0x100 - (temp_r6->unk34 * 6))], 0x18));
    temp_r6->unk16 = (s16) (Div((s32) gSineTable[((temp_r6->unk34 * 0xC) + (temp_r7 << 5)) & 0x3FF], 0x28A) + 0x78);
    temp_r6->unk18 = (s16) ((s32) temp_r6->unk38 >> 8);
    temp_r6->unk34 = (s32) (temp_r6->unk34 - 1);
    if (1 & *(temp_r1 + 0x03000032)) {
        var_r0 = 0;
    } else {
        var_r0 = 0x180;
    }
    temp_r6->unk1A = var_r0;
    UpdateSpriteAnimation((Sprite *) temp_r6);
    DisplaySprite((Sprite *) temp_r6);
}

void sub_806515C(void) {
    s16 temp_r0;
    s16 temp_r7;
    s16 var_r0;
    s32 temp_r0_2;
    s32 temp_r6;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r6 = temp_r1 + 0x03000000;
    temp_r0 = temp_r6->unk30 + 1;
    temp_r6->unk30 = (u16) temp_r0;
    if ((u32) ((u32) ((temp_r0 << 0x10) + 0xFFA60000) >> 0x10) > 0x8FU) {
        temp_r6->unk3C = (s32) (temp_r6->unk3C + temp_r6->unk40);
    }
    if ((s32) temp_r0 <= 0x59) {
        temp_r0_2 = temp_r6->unk40 - 6;
        temp_r6->unk40 = temp_r0_2;
        if (temp_r0_2 < 0) {
            temp_r6->unk40 = 0;
        }
    }
    temp_r7 = (s16) (u16) temp_r0;
    if (temp_r7 == 0xE9) {
        temp_r6->unk40 = 0x140;
    }
    if ((s32) temp_r6->unk3C > 0xD400) {
        temp_r6->unk3C = 0xD400;
    }
    if (temp_r6->unk34 == 0) {
        *(temp_r1 + 0x03000021) = 0xFF;
        temp_r6->unk34 = 0x2F;
        temp_r6->unk38 = (s32) temp_r6->unk3C;
    }
    temp_r6->unk38 = (s32) (temp_r6->unk38 - Div((s32) *((temp_r6->unk34 * 0xC) + gSineTable), 0x18));
    temp_r6->unk16 = (s16) (0x78 - Div((s32) gSineTable[((temp_r6->unk34 * 0xC) + (temp_r7 << 5)) & 0x3FF], 0x28A));
    temp_r6->unk18 = (s16) ((s32) temp_r6->unk38 >> 8);
    temp_r6->unk34 = (s32) (temp_r6->unk34 - 1);
    if (1 & *(temp_r1 + 0x03000032)) {
        var_r0 = 0;
    } else {
        var_r0 = 0x180;
    }
    temp_r6->unk1A = var_r0;
    UpdateSpriteAnimation((Sprite *) temp_r6);
    DisplaySprite((Sprite *) temp_r6);
}

void sub_8065258(void) {
    s16 temp_r5;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r4;
    s32 temp_sl;
    u16 temp_r1;
    u8 var_r7;
    void *temp_r1_2;

    temp_r1 = gCurTask->data;
    temp_sl = temp_r1 + 0x03000000;
    var_r7 = 0;
    temp_r5 = *(temp_r1 + 0xB4);
    temp_r1_2 = &gUnknown_0868B3B8 + 2;
    do {
        temp_r4 = temp_sl + (var_r7 * 0x30);
        if (temp_r5 == 0x1E) {
            *(temp_r4 + 0x21) = 0xFF;
            temp_r1_3 = var_r7 * 8;
            temp_r4->unkA = (u16) *(temp_r1_3 + &gUnknown_0868B3B8);
            *(temp_r4 + 0x20) = (s8) *(temp_r1_3 + temp_r1_2);
            UpdateSpriteAnimation((Sprite *) temp_r4);
        }
        if ((s32) temp_r5 > 0) {
            if ((s32) temp_r5 > 0x161) {
                temp_r4->unk10 = 0;
                UpdateSpriteAnimation((Sprite *) temp_r4);
            } else if ((s32) temp_r5 > 0xBD) {
                if (temp_r5 == 0xBE) {
                    *(temp_r4 + 0x21) = 0xFF;
                    temp_r1_4 = ((var_r7 * 2) + 1) * 4;
                    temp_r4->unkA = (u16) *(temp_r1_4 + &gUnknown_0868B3B8);
                    *(temp_r4 + 0x20) = (s8) *(temp_r1_4 + temp_r1_2);
                }
                UpdateSpriteAnimation((Sprite *) temp_r4);
            }
            DisplaySprite((Sprite *) temp_r4);
        }
        var_r7 = (u8) (var_r7 + 1);
    } while ((u32) var_r7 < 1U);
}

void sub_8065328(void) {
    s32 sp0;
    s16 temp_r8;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r4;
    s32 temp_r5;
    s32 temp_sb;
    s32 var_r0;
    u16 temp_r0;
    u16 temp_r0_2;
    u8 var_r6;

    temp_r0 = gCurTask->data;
    sp0 = temp_r0 + 0x03000000;
    temp_r0_2 = *(temp_r0 + 0xB4);
    var_r6 = 0;
    temp_sb = temp_r0_2 << 0x10;
    temp_r8 = (s16) temp_r0_2;
    do {
        temp_r5 = sp0 + (var_r6 * 0x30);
        if (temp_r8 == 0x1E) {
            if (var_r6 == 2) {
                var_r0 = 0x06013280;
            } else if (var_r6 == 1) {
                var_r0 = 0x06011980;
            } else {
                var_r0 = 0x06010080;
            }
            temp_r5->unk4 = var_r0;
            *(temp_r5 + 0x21) = 0xFF;
            temp_r1 = var_r6 * 8;
            temp_r5->unkA = (u16) *(temp_r1 + &gUnknown_0868B3C0);
            *(temp_r5 + 0x20) = (s8) *(temp_r1 + &gUnknown_0868B3C2);
            UpdateSpriteAnimation((Sprite *) temp_r5);
        }
        temp_r4 = temp_sb >> 0x10;
        if (temp_r4 >= 0) {
            if (temp_r4 <= 0x1D) {
                UpdateSpriteAnimation((Sprite *) temp_r5);
            }
            if (temp_r4 > 0x161) {
                temp_r5->unk10 = 0;
                UpdateSpriteAnimation((Sprite *) temp_r5);
            } else if (temp_r4 > 0xBD) {
                if (temp_r4 == 0xBE) {
                    *(temp_r5 + 0x21) = 0xFF;
                    temp_r1_2 = ((var_r6 * 2) + 1) * 4;
                    temp_r5->unkA = (u16) *(temp_r1_2 + &gUnknown_0868B3C0);
                    *(temp_r5 + 0x20) = (s8) *(temp_r1_2 + &gUnknown_0868B3C2);
                }
                UpdateSpriteAnimation((Sprite *) temp_r5);
            }
            if (((s32) temp_r8 > 0x1D) || (var_r6 == 0)) {
                DisplaySprite((Sprite *) temp_r5);
            }
        }
        var_r6 = (u8) (var_r6 + 1);
    } while ((u32) var_r6 < 1U);
}

void sub_8065444(void) {
    s16 temp_r2_2;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r4;
    s32 temp_sl;
    s32 var_r0;
    u16 temp_r0;
    u16 temp_sb;
    u8 var_r5;
    void *temp_r2;

    temp_r0 = gCurTask->data;
    temp_sl = temp_r0 + 0x03000000;
    temp_sb = *(temp_r0 + 0xB4);
    var_r5 = 0;
    temp_r2 = &gUnknown_0868B3C8 + 2;
    do {
        temp_r4 = temp_sl + (var_r5 * 0x30);
        if (var_r5 == 2) {
            var_r0 = 0x06013280;
        } else if (var_r5 == 1) {
            var_r0 = 0x06011980;
        } else {
            var_r0 = 0x06010080;
        }
        temp_r4->unk4 = var_r0;
        temp_r2_2 = (s16) temp_sb;
        if (temp_r2_2 == 0x1E) {
            *(temp_r4 + 0x21) = 0xFF;
            temp_r1 = var_r5 * 8;
            temp_r4->unkA = (u16) *(temp_r1 + &gUnknown_0868B3C8);
            *(temp_r4 + 0x20) = (s8) *(temp_r1 + temp_r2);
        }
        if ((s32) temp_r2_2 >= 0) {
            if ((s32) temp_r2_2 > 0x161) {
                temp_r4->unk10 = 0;
                UpdateSpriteAnimation((Sprite *) temp_r4);
            } else if (((s32) temp_r2_2 > 0xEA) && (temp_r2_2 == 0xEB)) {
                *(temp_r4 + 0x21) = 0xFF;
                temp_r1_2 = ((var_r5 * 2) + 1) * 4;
                temp_r4->unkA = (u16) *(temp_r1_2 + &gUnknown_0868B3C8);
                *(temp_r4 + 0x20) = (s8) *(temp_r1_2 + temp_r2);
            }
            if (((s32) (s16) temp_sb > 0x1D) || (var_r5 == 0)) {
                UpdateSpriteAnimation((Sprite *) temp_r4);
                DisplaySprite((Sprite *) temp_r4);
            }
        }
        var_r5 = (u8) (var_r5 + 1);
    } while ((u32) var_r5 < 1U);
}

void sub_8065538(void) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r2;
    s32 temp_r4;
    s32 temp_r5;
    u16 temp_r1;
    u8 var_r7;
    void *temp_r0;

    temp_r1 = gCurTask->data;
    sp0 = temp_r1 + 0x03000000;
    temp_r2 = *(temp_r1 + 0xB4) << 0x10;
    if (temp_r2 <= 0x019A0000) {
        var_r7 = 0;
        sp4 = temp_r2;
        sp8 = temp_r1 + 0xB4;
        temp_r0 = &gUnknown_0868B3D0 + 2;
        do {
            temp_r4 = sp0 + (var_r7 * 0x30);
            if (*sp8 == 0x161) {
                temp_r4->unk10 = 0;
            }
            temp_r5 = sp4 >> 0x10;
            if (temp_r5 == 0x1E) {
                *(temp_r4 + 0x21) = 0xFF;
                temp_r1_2 = var_r7 * 8;
                temp_r4->unkA = (u16) *(temp_r1_2 + &gUnknown_0868B3D0);
                *(temp_r4 + 0x20) = (s8) *(temp_r1_2 + temp_r0);
                UpdateSpriteAnimation((Sprite *) temp_r4);
            }
            if (temp_r5 >= 0) {
                if (temp_r5 > 0x161) {
                    temp_r4->unk10 = 0;
                    UpdateSpriteAnimation((Sprite *) temp_r4);
                } else if (temp_r5 > 0xA4) {
                    if (temp_r5 == 0xA5) {
                        *(temp_r4 + 0x21) = 0xFF;
                        temp_r1_3 = ((var_r7 * 2) + 1) * 4;
                        temp_r4->unkA = (u16) *(temp_r1_3 + &gUnknown_0868B3D0);
                        *(temp_r4 + 0x20) = (s8) *(temp_r1_3 + temp_r0);
                    }
                    UpdateSpriteAnimation((Sprite *) temp_r4);
                }
                DisplaySprite((Sprite *) temp_r4);
            }
            var_r7 = (u8) (var_r7 + 1);
        } while ((u32) var_r7 < 1U);
    }
}

void sub_806562C(void) {
    s16 temp_r0_2;
    s32 temp_r0;
    s32 temp_r0_3;
    s32 temp_r3;

    temp_r3 = gCurTask->data + 0x03000000;
    temp_r0 = temp_r3->unk30 + 1;
    temp_r3->unk30 = (u16) temp_r0;
    if ((temp_r0 << 0x10) == 0x01610000) {
        temp_r3->unk10 = 0;
    }
    temp_r0_2 = (s16) (u16) temp_r0;
    if (((s32) temp_r0_2 > 0x5A) && ((s32) (temp_r3->unk34 * 0xF) < (s32) (s16) (temp_r0_2 - 0x5A))) {
        temp_r0_3 = temp_r3->unk3C - 0x10;
        temp_r3->unk3C = temp_r0_3;
        if (temp_r0_3 < (s32) gUnknown_0868B27C.unk0) {
            temp_r3->unk3C = (s32) gUnknown_0868B27C.unk0;
        }
        temp_r3->unk16 = (s16) temp_r3->unk3C;
        temp_r3->unk18 = (u16) gUnknown_0868B27C.unk2;
        UpdateSpriteAnimation((Sprite *) temp_r3);
        DisplaySprite((Sprite *) temp_r3);
    }
}

void sub_80656A4(void) {
    s16 temp_r0_2;
    s32 temp_r0;
    s32 temp_r0_3;
    s32 temp_r3;

    temp_r3 = gCurTask->data + 0x03000000;
    temp_r0 = temp_r3->unk30 + 1;
    temp_r3->unk30 = (u16) temp_r0;
    if ((temp_r0 << 0x10) == 0x01610000) {
        temp_r3->unk10 = 0;
    }
    temp_r0_2 = (s16) (u16) temp_r0;
    if (((s32) temp_r0_2 > 0x5A) && ((s32) (temp_r3->unk34 * 0xF) < (s32) (s16) (temp_r0_2 - 0x5A))) {
        temp_r0_3 = temp_r3->unk3C - 0x10;
        temp_r3->unk3C = temp_r0_3;
        if (temp_r0_3 < (s32) gUnknown_0868B280.unk0) {
            temp_r3->unk3C = (s32) gUnknown_0868B280.unk0;
        }
        temp_r3->unk16 = (s16) temp_r3->unk3C;
        temp_r3->unk18 = (u16) gUnknown_0868B280.unk2;
        UpdateSpriteAnimation((Sprite *) temp_r3);
        DisplaySprite((Sprite *) temp_r3);
    }
}

void sub_806571C(void) {
    s16 temp_r0_2;
    s32 temp_r0;
    s32 temp_r0_3;
    s32 temp_r3;

    temp_r3 = gCurTask->data + 0x03000000;
    temp_r0 = temp_r3->unk30 + 1;
    temp_r3->unk30 = (u16) temp_r0;
    if ((temp_r0 << 0x10) == 0x01610000) {
        temp_r3->unk10 = 0;
    }
    temp_r0_2 = (s16) (u16) temp_r0;
    if (((s32) temp_r0_2 > 0x5A) && ((s32) (temp_r3->unk34 * 0xF) < (s32) (s16) (temp_r0_2 - 0x5A))) {
        temp_r0_3 = temp_r3->unk3C - 0x10;
        temp_r3->unk3C = temp_r0_3;
        if (temp_r0_3 < (s32) gUnknown_0868B284.unk0) {
            temp_r3->unk3C = (s32) gUnknown_0868B284.unk0;
        }
        temp_r3->unk16 = (s16) temp_r3->unk3C;
        temp_r3->unk18 = (u16) gUnknown_0868B284.unk2;
        UpdateSpriteAnimation((Sprite *) temp_r3);
        DisplaySprite((Sprite *) temp_r3);
    }
}

void sub_8065794(void) {
    s16 temp_r1;
    s16 temp_r2;
    s32 temp_r0;
    s32 temp_r3;

    temp_r3 = gCurTask->data + 0x03000000;
    temp_r1 = temp_r3->unk30 + 1;
    temp_r3->unk30 = (u16) temp_r1;
    temp_r2 = temp_r1;
    if ((s32) temp_r2 <= 0x19A) {
        if ((temp_r1 << 0x10) == 0x01610000) {
            temp_r3->unk10 = 0;
        }
        if (((s32) temp_r2 > 0x5A) && ((s32) (temp_r3->unk34 * 0xF) < (s32) (s16) (temp_r2 - 0x5A))) {
            temp_r0 = temp_r3->unk3C - 0x10;
            temp_r3->unk3C = temp_r0;
            if (temp_r0 < (s32) gUnknown_0868B288.unk0) {
                temp_r3->unk3C = (s32) gUnknown_0868B288.unk0;
            }
            temp_r3->unk16 = (s16) temp_r3->unk3C;
            temp_r3->unk18 = (u16) gUnknown_0868B288.unk2;
            UpdateSpriteAnimation((Sprite *) temp_r3);
            DisplaySprite((Sprite *) temp_r3);
        }
    }
}

void TaskDestructor_8065810(struct Task *arg0) {

}

void Task_IntroChaosEmeraldUpdate(void) {
    s16 temp_r3;
    s32 temp_r0;
    s32 temp_r4;

    temp_r4 = gCurTask->data + 0x03000000;
    temp_r3 = *(temp_r4 + 0x30);
    if ((u32) (u16) (temp_r3 - 0x5A) > 0x8FU) {
        temp_r4->unk3C = (s32) (temp_r4->unk3C + temp_r4->unk40);
    }
    if ((s32) temp_r3 <= 0x59) {
        temp_r0 = temp_r4->unk40 - 6;
        temp_r4->unk40 = temp_r0;
        if (temp_r0 < 0) {
            temp_r4->unk40 = 0;
        }
    }
    if (temp_r4->unk30 == 0xE9) {
        temp_r4->unk40 = 0x140;
    }
    if ((s32) temp_r4->unk3C > 0xB400) {
        temp_r4->unk3C = 0xB400;
    }
    temp_r4->unk18 = (s16) ((s32) temp_r4->unk3C >> 8);
    UpdateSpriteAnimation((Sprite *) temp_r4);
    DisplaySprite((Sprite *) temp_r4);
}
#endif
