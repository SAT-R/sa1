#include "global.h"
#include "core.h"
#include "flags.h"
#include "trig.h"
#include "lib/m4a/m4a.h"
#include "constants/ui_graphics.h"
#include "game/entity.h"
#include "game/game_over.h"
#include "game/gTask_03006240.h"
#include "game/sa1_sa2_shared/spot_light_beam_task.h"
#include "game/stage/ui.h"
#include "game/title_screen.h"

#include "constants/animations.h"
#include "constants/songs.h"

typedef struct IntroSprite {
    Sprite s;
    u16 unk30;
    u8 unk32;
    s32 unk34;
    s32 qUnk38;
    s32 qUnk3C;
    s32 unk40;
} IntroSprite; /* 0x44 */

typedef struct Intro_C8 {
    Sprite sprites[3];
    u8 filler60[0x24];
    u16 unkB4;
    u8 fillerB6[0x12];
} Intro_C8; /* 0xC8 */

typedef struct Intro_54 {
    StrcUi_805423C strc0;
    struct Task *taskC;
    struct Task *beamTasks[2]; // -> SpotlightBeam
    struct Task *tasks18[NUM_CHARACTERS]; // -> Intro_C8
    u8 filler28[0x24];
    s16 unk4C;
    u8 unk4E;
    u16 unk50;
    u16 unk52;
} Intro_54; /* 0x54 */

void Task_IntroChaosEmeraldUpdate(void);
void sub_8063B8C(void);
void sub_8063C4C(void);
void sub_8063D0C(void);
void sub_8063DCC(void);
void sub_8063E8C(u16 arg0);
void Task_80640C8(void);
void sub_8064244(void);
void sub_80645E4(void);
void sub_80648D4(void);
void sub_8064BB4(void);
void sub_8064E84(void);
void IntroOpenTitlescreenSilent(void);
void IntroOpenTitlescreenPlayMusic(void);
void Task_8065058(void);
void Task_806515C(void);
void sub_8065258(void);
void sub_8065328(void);
void sub_8065444(void);
void sub_8065538(void);
void Task_806562C(void);
void sub_80656A4(void);
void sub_806571C(void);
void sub_8065794(void);
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

extern u16 gUnknown_086A5D34[256];
extern u8 gUnknown_086A5F34[0x2E00];
extern u8 gUnknown_086A8E34[1];

extern u8 gUnknown_086A9834[0x2840];
extern u8 gUnknown_086AC074[0x8C0];

extern u8 gUnknown_086B13F4[0x6C0];
extern u8 gUnknown_086AFFB4[0x1440];

extern u8 gUnknown_086ACB34[0x2840];
extern u8 gUnknown_086AF4F4[0x8C0];

s16 gUnknown_0868B27C[2];
s16 gUnknown_0868B280[2];
s16 gUnknown_0868B284[2];
s16 gUnknown_0868B288[2];
// TODO: This struct already appeared somewhere else. Merge them!
typedef struct LocalTileInfo {
    u32 anim;
    u32 variant;
    void *vram;
} LocalTileInfo;
extern LocalTileInfo gUnknown_0868B28C[6];
extern LocalTileInfo gUnknown_0868B2D4[6];
extern LocalTileInfo gUnknown_0868B31C[9];
extern LocalTileInfo gUnknown_0868B388[4];

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
    s->graphics.anim = SA1_ANIM_INTRO_EMERALD;
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
        s->y = -36;
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
    strc54->beamTasks[0] = NULL;
    strc54->beamTasks[1] = NULL;
    strc54->tasks18[CHARACTER_SONIC] = NULL;
    strc54->tasks18[CHARACTER_TAILS] = NULL;
    strc54->tasks18[CHARACTER_KNUCKLES] = NULL;
    strc54->tasks18[CHARACTER_AMY] = NULL;
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

void sub_8063E8C(u16 arg0)
{
    Strc_80528AC gfx;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 chunkOffset;
    s32 var_r1;
    s8 var_r0;
    u16 temp_r6;
    s32 qVal;
    u8 i;
    struct Task *t;
    IntroSprite *introSpr;
    Sprite *s;

    if (arg0 == 0) {
        for (i = 0; i < 8; i++) {
            t = TaskCreate(Task_806515C, sizeof(IntroSprite), (i * 2) | 0x6801, 0U, NULL);
            introSpr = TASK_DATA(t);
            introSpr->unk30 = (u16)(i * 6);
            introSpr->unk32 = i;
            qVal = -Q(36);
            introSpr->unk34 = (s32)introSpr->unk30;
            introSpr->qUnk38 = qVal;
            introSpr->qUnk3C = qVal;
            introSpr->unk40 = 0x240;

            s = &introSpr->s;
            chunkOffset = (i * (4 * TILE_SIZE_4BPP));
            s->graphics.dest = (OBJ_VRAM0 + 0xBE0 + chunkOffset);
            s->graphics.anim = SA1_ANIM_SUPER_SONIC_SPARKLE;
            s->variant = 1;
            s->x = (Div(SIN(i << 6), 650) + 120);
            s->y = -36;
            s->oamFlags = 0x180;
            s->graphics.size = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = -1;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->hitboxes[0].index = -1;
            s->frameFlags = 0x1000;
            UpdateSpriteAnimation((Sprite *)s);
        }
    } else if (arg0 == 1) {
        gDispCnt = 0x1240;
        gfx.uiGfxID = 0x80;
        gfx.unk2B = 0;
        gfx.tiles = &gUnknown_086A5F34[0];
        gfx.tilesSize = 0x2F00;
        gfx.palette = &gUnknown_086A5D34[0];
        gfx.paletteSize = 0x200;
        gfx.layout = &gUnknown_086A8E34[0];
        gfx.layoutSize = 0x800;
        gfx.unk28 = 0;
        gfx.unk29 = 1;
        gfx.unk2A = 0x15;
        sub_80528AC(&gfx);
    } else if (arg0 == 2) {
        gDispCnt = 0x1340;
        gfx.uiGfxID = 0x80;
        gfx.unk2B = 1;
        gfx.tiles = &gUnknown_086A9834[0];
        gfx.tilesSize = sizeof(gUnknown_086A9834);
        gfx.layout = &gUnknown_086AC074[0];
        gfx.layoutSize = sizeof(gUnknown_086AC074);
        gfx.unk28 = 0;
        gfx.unk29 = 0;
        gfx.unk2A = 0x11;
        sub_80528AC(&gfx);
    } else if (arg0 == 3) {
        gDispCnt = 0x1740;
        gfx.uiGfxID = 0x80;
        gfx.unk2B = 0;
        gfx.tiles = &gUnknown_086AFFB4[0];
        gfx.tilesSize = sizeof(gUnknown_086AFFB4);
        gfx.layout = &gUnknown_086B13F4[0];
        gfx.layoutSize = sizeof(gUnknown_086B13F4);
        gfx.unk28 = 0;
        gfx.unk29 = 2;
        gfx.unk2A = 0x11;
        sub_80528AC(&gfx);
    } else if (arg0 == 310) {
        gfx.uiGfxID = 0x80;
        gfx.unk2B = 1;
        gfx.tiles = &gUnknown_086ACB34[0];
        gfx.tilesSize = sizeof(gUnknown_086ACB34);
        gfx.layout = &gUnknown_086AF4F4[0];
        gfx.layoutSize = sizeof(gUnknown_086AF4F4);
        gfx.unk28 = 0;
        gfx.unk29 = 0;
        gfx.unk2A = 0x11;
        sub_80528AC(&gfx);
    }
}

static inline u32 maskColor(u32 c) { return Div(c, 40) & 0x1F; }

static inline u32 maskRedColor(u32 c)
{
#ifndef NON_MATCHING
    u32 result;
    asm("mov %0, #0x1F\n"
        "and %0, %1\n"
        : "=r"(result)
        : "r"(c));
    return result;
#else
    return (c % 32u);
#endif
}

// (99.14%)
NONMATCH("asm/non_matching/game/intro_anim__Task_80640C8.inc", void Task_80640C8())
{
    s16 *temp_r2;
    s16 temp_r0;
    s16 temp_r0_3;
    u32 r, g, b;
    u16 temp_r0_2;
    u16 temp_r6;
    u16 colorIndex;
    u32 unk4C;
    u32 var_r7;

    Intro_54 *strc54 = TASK_DATA(gCurTask);
    IntroSprite *introSpr = TASK_DATA(strc54->taskC);

    introSpr->unk30 = (u16)strc54->unk4C;
    if ((A_BUTTON | B_BUTTON | START_BUTTON) & gPressedKeys) {
        gCurTask->main = IntroOpenTitlescreenPlayMusic;
        return;
    }

    if (strc54->unk4C > 0x97) {
        var_r7 = (u32)((strc54->unk4C - 0x98) << 0xF) >> 0x10;
        if (var_r7 > 40) {
            var_r7 = 40;
        }

        for (colorIndex = 0; colorIndex < 32; colorIndex++) {
            u16 color = gUnknown_086A5D34[colorIndex];
            r = (maskRedColor(color) >> 0);
            g = ((color & RGB_GREEN) >> 5);
            b = ((color & RGB_BLUE) >> 10);

            {
                r = maskColor(r * var_r7);
                g = maskColor(g * var_r7);
                b = maskColor(b * var_r7);
                gBgPalette[colorIndex] = RGB16(r, g, b);
            }
            gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
        }
    }

    if (strc54->unk4C > 0xB5) {
        gBgScrollRegs[0][1] += 2;
        if (gBgScrollRegs[0][1] > 100) {
            gBgScrollRegs[0][1] = 100;
        }
        if (gBgScrollRegs[0][1] > 80) {
            gBgScrollRegs[2][1] = gBgScrollRegs[0][1] - 0x50;
        }
    }
    gBgScrollRegs[1][1] += 0xA;
    sub_8063E8C(strc54->unk4C);
    if (strc54->unk4C > 0x13F) {
        strc54->unk4C = 0;
        gCurTask->main = sub_8064244;
    } else {
        sub_805423C(&strc54->strc0);
    }
    strc54->unk4C++;
}
END_NONMATCH

void sub_8064244()
{
    Sprite *s;
    s16 *temp_r3;
    s16 temp_r0;
    s16 temp_r1;
    u32 temp_r4;
    s32 temp_r0_4;
    s32 temp_r0_6;
    s32 temp_r1_3;
    s8 *temp_r1_2;
    u16 temp_r0_3;
    u16 temp_r0_5;
    u16 temp_r2;
    u16 temp_r7;
    u8 i;
    void *temp_r7_2;
    void *var_r0;
    struct Task *t;

    Intro_C8 *temp_r0_7;
    Intro_54 *strc54 = TASK_DATA(gCurTask);

    temp_r4 = strc54->unk4C;

    if ((A_BUTTON | B_BUTTON | START_BUTTON) & gPressedKeys) {
        gCurTask->main = IntroOpenTitlescreenPlayMusic;
        return;
    }

    if (temp_r4 < 0x60) {
        TasksDestroyInPriorityRange(0x6800U, ((temp_r4 >> 2) + 0x6802));
    }
    if (temp_r4 == 0x3C) {
        strc54->strc0.unk0 = 0;
        strc54->strc0.unk2 = 1;
        strc54->strc0.unk4 = 1;
        strc54->strc0.unk6 = 0;
        strc54->strc0.unk8 = 0x40;
        strc54->strc0.unkA = 1;
        sub_80543A4(&strc54->strc0);
    }
    gBgScrollRegs[1][1] += 10;
    if (++strc54->unk4C >= 506) {
        TaskDestroy(strc54->taskC);
        strc54->taskC = NULL;
        gBgScrollRegs[1][0] = 0;
        gBgScrollRegs[1][1] = 0;
        strc54->unk50 = 0x4000;
        strc54->unk52 = 0;
        strc54->unk4C = 0;
        TaskDestroy(strc54->beamTasks[0]);
        strc54->beamTasks[0] = NULL;
        TaskDestroy(strc54->beamTasks[1]);
        strc54->beamTasks[1] = NULL;
        gDispCnt = 0; // needed for matching
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
        gDispCnt = 0x1340;
        gBgCntRegs[0] = 0x1D86;
        gBgCntRegs[1] = 0x1883;
        t = TaskCreate(sub_8065258, sizeof(Intro_C8), 0x2210U, 0U, NULL);
        strc54->tasks18[CHARACTER_SONIC] = t;
        temp_r0_7 = TASK_DATA(t);
        temp_r0_7->unkB4 = 0;

        for (i = 0; i < 2; i++) {
            s = &temp_r0_7->sprites[i];
            if (i != 0) {
                s->graphics.dest = OBJ_VRAM0 + 0x4000;
            } else {
                s->graphics.dest = OBJ_VRAM0 + 0x1440;
            }
            s->graphics.anim = 0x301;
            s->variant = 0;
            s->x = 0xB4;
            s->y = 0x82;
            s->oamFlags = 0x3C0;
            s->graphics.size = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = -1;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->hitboxes[0].index = -1;
            s->frameFlags = 0x80;
            UpdateSpriteAnimation(s);
        }

        for (i = 0; i < 6; i++) {
            IntroSprite *introSpr;
            t = TaskCreate(Task_806562C, sizeof(IntroSprite), 0x6820U, 0U, NULL);
            introSpr = TASK_DATA(t);
            s = &introSpr->s;
            introSpr->unk30 = 0;
            introSpr->unk32 = 0;
            introSpr->unk34 = i;
            introSpr->qUnk3C = gUnknown_0868B27C[0] + 0x118;
            s->graphics.dest = gUnknown_0868B28C[i].vram;
            s->graphics.anim = gUnknown_0868B28C[i].anim;
            s->variant = gUnknown_0868B28C[i].variant;
            s->x = 280;
            s->y = 70;
            s->oamFlags = 0x180;
            s->graphics.size = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = 0xFF;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->hitboxes[0].index = -1;
            s->frameFlags = 0x80;
            UpdateSpriteAnimation(s);
        }
        gCurTask->main = sub_80645E4;
    } else {
        if ((s32)strc54->unk4C > 0xE0) {
            SpotlightBeam *beam;

            if (strc54->unk4C == 0xE1) {
                struct Task *tBeam = CreateSpotlightBeamTask();
                strc54->beamTasks[0] = tBeam;
                beam = TASK_DATA(tBeam);
                beam->unk6 = 120;
                beam->unk8 = 250;
                beam->unk0 = 0;
                beam->unk2 = 0;
                beam->unk4 = 0;
                beam->bg = 2;
                beam->unkB = 6;
                tBeam = CreateSpotlightBeamTask();
                strc54->beamTasks[1] = tBeam;
                beam = TASK_DATA(tBeam);
                beam->unk6 = 120;
                beam->unk8 = 250;
                beam->unk0 = 0;
                beam->unk2 = 0;
                beam->unk4 = 0;
                beam->bg = 3;
                beam->unkB = 6;
                gDispCnt |= 0x6000;
                gWinRegs[4] = 0x1F1F;
                gWinRegs[5] = 0x3F;
                gBldRegs.bldCnt = 0x3FDF;
                gBldRegs.bldY = 8;
                return;
            }
            temp_r4 = strc54->unk4C - 0xE1;
            beam = TASK_DATA(strc54->beamTasks[0]);
            beam->unk0 = (s16)((0x18 - Mod(temp_r4, 25)) * 6);
            if (((u32)temp_r4 <= 0x3FU) && (Mod(temp_r4, 6) == 0)) {
                beam->unkB++;
            }
            beam = TASK_DATA(strc54->beamTasks[1]);
            beam->unk0 = (s16)(((0x18 - Mod(temp_r4, 0x19)) * 6) + 0x370);
            if (((u32)temp_r4 <= 0x3FU) && (Mod(temp_r4, 6) == 0)) {
                beam->unkB++;
            }
        } else {
            if (temp_r4 >= 30 && temp_r4 < 120) {
                sub_805423C(&strc54->strc0);
            }
        }
    }
}

void sub_80645E4()
{
    Sprite *s;
    s16 *temp_r3;
    s16 temp_r0;
    s16 temp_r1;
    s16 temp_r4;
    s32 temp_r0_4;
    s32 temp_r0_6;
    s32 temp_r1_3;
    s8 *temp_r1_2;
    u16 temp_r0_3;
    u16 temp_r0_5;
    u16 temp_r2;
    u16 temp_r7;
    u8 i;
    void *temp_r7_2;
    void *var_r0;
    u32 unk4C;
    struct Task *t;

    Intro_C8 *strcC8;
    Intro_54 *strc54 = TASK_DATA(gCurTask);
    StrcUi_805423C *strc0;

    strcC8 = TASK_DATA(strc54->tasks18[CHARACTER_SONIC]);
    temp_r4 = strc54->unk4C;
    strcC8->unkB4 = temp_r4;
    strc54->unk50 -= 0x20;
    strc54->unk52 += 0x20;

    gBgScrollRegs[0][0] = I(strc54->unk50);
    gBgScrollRegs[0][1] = I(strc54->unk52);

    if ((A_BUTTON | B_BUTTON | START_BUTTON) & gPressedKeys) {
        gCurTask->main = IntroOpenTitlescreenPlayMusic;
        return;
    }

    unk4C = strc54->unk4C;
    if (unk4C < 30) {
        if (unk4C == 1) {
            sub_8063B8C();
        }
        strc54->strc0.unk0 = 0;
        strc54->strc0.unk2 = 1;
        strc54->strc0.unk4 = 2;
        strc54->strc0.unk6 = 0;
        strc54->strc0.unk8 = 0;
        strc54->strc0.unkA = 1;
        sub_80543A4(&strc54->strc0);
    } else if (unk4C >= 0 && unk4C < 42) {
        strc54->strc0.unk0 = 0;
        strc54->strc0.unk2 = 1;
        strc54->strc0.unk4 = 8;
        strc54->strc0.unk6 = 0;
        strc54->strc0.unk8 = 0x100;
        strc54->strc0.unkA = 1;
        sub_80543A4(&strc54->strc0);
    } else if (unk4C >= 0 && unk4C < 102) {
        sub_805423C(&strc54->strc0);
    } else if (unk4C >= 0 && unk4C < 242) {
        sub_805423C(&strc54->strc0);
    } else if (unk4C >= 0 && unk4C < 0x16A) {
        sub_805423C(&strc54->strc0);
    }
    if (++strc54->unk4C >= 414) {
        TasksDestroyInPriorityRange(0x6820, 0x6821);
        TaskDestroy(strc54->tasks18[CHARACTER_SONIC]);
        strc54->tasks18[CHARACTER_SONIC] = NULL;
        strc54->unk50 = 0xE000;
        strc54->unk52 = 0x6000;
        strc54->unk4C = 0;

        strc54->strc0.unk0 = 0;
        strc54->strc0.unk2 = 1;
        strc54->strc0.unk4 = 2;
        strc54->strc0.unk6 = 0;
        strc54->strc0.unk8 = 0;
        strc54->strc0.unkA = 1;
        sub_80543A4(&strc54->strc0);

        t = TaskCreate(sub_8065328, sizeof(Intro_C8), 0x2280U, 0U, NULL);
        strc54->tasks18[CHARACTER_TAILS] = t;
        strcC8 = TASK_DATA(t);
        strcC8->unkB4 = 0;

        for (i = 0; i < 3; i++) {
            s = &strcC8->sprites[i];
            if (i == 2) {
                s->graphics.dest = OBJ_VRAM0 + 0x3280;
            } else if (i == 1) {
                s->graphics.dest = OBJ_VRAM0 + 0x1980;
            } else {
                s->graphics.dest = OBJ_VRAM0 + 0x400;
            }
            s->graphics.anim = 0x301;
            s->variant = 1;
            s->x = 48;
            s->y = 108;
            s->oamFlags = 0x300;
            s->graphics.size = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = -1;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->hitboxes[0].index = -1;
            s->frameFlags = 0x80;

            if (i == 0) {
                UpdateSpriteAnimation(s);
                DisplaySprite(s);
            }
        }

        for (i = 0; i < 6; i++) {
            IntroSprite *introSpr;
            t = TaskCreate(sub_80656A4, sizeof(IntroSprite), 0x6820U, 0U, NULL);
            introSpr = TASK_DATA(t);
            s = &introSpr->s;
            introSpr->unk30 = 0;
            introSpr->unk32 = 0;
            introSpr->unk34 = i;
            introSpr->qUnk3C = gUnknown_0868B280[0] + 0x118;
            s->graphics.dest = gUnknown_0868B2D4[i].vram;
            s->graphics.anim = gUnknown_0868B2D4[i].anim;
            s->variant = gUnknown_0868B2D4[i].variant;
            s->x = 280;
            s->y = 70;
            s->oamFlags = 0x180;
            s->graphics.size = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = 0xFF;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->hitboxes[0].index = -1;
            s->frameFlags = 0x80;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        }
        gCurTask->main = sub_80648D4;
    } else {
        if (strc54->unk4C > 0x160) {
            if (strc54->unk4C == 0x161) {
                strc54->strc0.unk4 = 4;
                strc54->strc0.unk6 = 0;
                strc54->strc0.unk8 = 0x180;
            }
            sub_805423C(&strc54->strc0);
        }
    }
}

void sub_80648D4()
{
    Sprite *s;
    s16 *temp_r3;
    s16 temp_r0;
    s16 temp_r1;
    s16 temp_r4;
    s32 temp_r0_4;
    s32 temp_r0_6;
    s32 temp_r1_3;
    s8 *temp_r1_2;
    u16 temp_r0_3;
    u16 temp_r0_5;
    u16 temp_r2;
    u16 temp_r7;
    u8 i;
    void *temp_r7_2;
    void *var_r0;
    u32 unk4C;
    struct Task *t;

    Intro_C8 *strcC8;
    Intro_54 *strc54 = TASK_DATA(gCurTask);
    StrcUi_805423C *strc0;

    strcC8 = TASK_DATA(strc54->tasks18[CHARACTER_TAILS]);
    temp_r4 = strc54->unk4C;
    strcC8->unkB4 = temp_r4;
    strc54->unk50 += 0x20;
    strc54->unk52 -= 0x20;

    gBgScrollRegs[0][0] = I(strc54->unk50);
    gBgScrollRegs[0][1] = I(strc54->unk52);

    if ((A_BUTTON | B_BUTTON | START_BUTTON) & gPressedKeys) {
        gCurTask->main = IntroOpenTitlescreenPlayMusic;
        return;
    }

    unk4C = strc54->unk4C;
    if (unk4C < 30) {
        if (unk4C == 1) {
            sub_8063C4C();
        }
        sub_80543A4(&strc54->strc0);
    } else if (unk4C >= 0 && unk4C < 42) {
        strc54->strc0.unk0 = 0;
        strc54->strc0.unk2 = 1;
        strc54->strc0.unk4 = 8;
        strc54->strc0.unk6 = 0;
        strc54->strc0.unk8 = 0x100;
        strc54->strc0.unkA = 1;
        sub_80543A4(&strc54->strc0);
    } else if (unk4C >= 0 && unk4C < 102) {
        sub_805423C(&strc54->strc0);
    } else if (unk4C >= 0 && unk4C < 242) {
        sub_805423C(&strc54->strc0);
    } else if (unk4C >= 0 && unk4C < 0x16A) {
        sub_805423C(&strc54->strc0);
    }
    if (++strc54->unk4C >= 414) {
        TasksDestroyInPriorityRange(0x6820, 0x6821);
        strc54->unk50 = 0xE000;
        strc54->unk52 = 0x1000;
        TaskDestroy(strc54->tasks18[CHARACTER_TAILS]);
        strc54->tasks18[CHARACTER_TAILS] = NULL;
        strc54->unk4C = 0;

        strc54->strc0.unk0 = 0;
        strc54->strc0.unk2 = 1;
        strc54->strc0.unk4 = 2;
        strc54->strc0.unk6 = 0;
        strc54->strc0.unk8 = 0;
        strc54->strc0.unkA = 1;
        sub_80543A4(&strc54->strc0);

        t = TaskCreate(sub_8065444, sizeof(Intro_C8), 0x2230U, 0U, NULL);
        strc54->tasks18[CHARACTER_KNUCKLES] = t;
        strcC8 = TASK_DATA(t);
        strcC8->unkB4 = 0;

        for (i = 0; i < 3; i++) {
            s = &strcC8->sprites[i];
            if (i == 2) {
                s->graphics.dest = OBJ_VRAM0 + 0x3280;
            } else if (i == 1) {
                s->graphics.dest = OBJ_VRAM0 + 0x1980;
            } else {
                s->graphics.dest = OBJ_VRAM0 + 0x80;
            }
            s->graphics.anim = 0x301;
            s->variant = 2;
            s->x = 48;
            s->y = 130;
            s->oamFlags = 0x3C0;
            s->graphics.size = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = -1;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->hitboxes[0].index = -1;
            s->frameFlags = 0x80;

            if (i == 0) {
                UpdateSpriteAnimation(s);
                DisplaySprite(s);
            }
        }

        for (i = 0; i < 9; i++) {
            IntroSprite *introSpr;
            t = TaskCreate(sub_806571C, sizeof(IntroSprite), 0x6820U, 0U, NULL);
            introSpr = TASK_DATA(t);
            s = &introSpr->s;
            introSpr->unk30 = 0;
            introSpr->unk32 = 0;
            introSpr->unk34 = i;
            introSpr->qUnk3C = gUnknown_0868B284[0] + 0x118;
            s->graphics.dest = gUnknown_0868B31C[i].vram;
            s->graphics.anim = gUnknown_0868B31C[i].anim;
            s->variant = gUnknown_0868B31C[i].variant;
            s->x = 280;
            s->y = 70;
            s->oamFlags = 0x180;
            s->graphics.size = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = 0xFF;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->hitboxes[0].index = -1;
            s->frameFlags = 0x40080;
            UpdateSpriteAnimation(s);
        }
        gCurTask->main = sub_8064BB4;
    } else {
        if (strc54->unk4C > 0x160) {
            if (strc54->unk4C == 0x161) {
                strc54->strc0.unk4 = 4;
                strc54->strc0.unk6 = 0;
                strc54->strc0.unk8 = 0x180;
            }
            sub_805423C(&strc54->strc0);
        }
    }
}

void sub_8064BB4()
{
    Sprite *s;
    s16 *temp_r3;
    s16 temp_r0;
    s16 temp_r1;
    s16 temp_r4;
    s32 temp_r0_4;
    s32 temp_r0_6;
    s32 temp_r1_3;
    s8 *temp_r1_2;
    u16 temp_r0_3;
    u16 temp_r0_5;
    u16 temp_r2;
    u16 temp_r7;
    u8 i;
    void *temp_r7_2;
    void *var_r0;
    u32 unk4C;
    struct Task *t;

    Intro_C8 *strcC8;
    Intro_54 *strc54 = TASK_DATA(gCurTask);
    StrcUi_805423C *strc0;

    strcC8 = TASK_DATA(strc54->tasks18[CHARACTER_KNUCKLES]);
    temp_r4 = strc54->unk4C;
    strcC8->unkB4 = temp_r4;
    strc54->unk50 += 0x00;
    strc54->unk52 += 0x20;

    gBgScrollRegs[0][0] = I(strc54->unk50);
    gBgScrollRegs[0][1] = I(strc54->unk52);

    if ((A_BUTTON | B_BUTTON | START_BUTTON) & gPressedKeys) {
        gCurTask->main = IntroOpenTitlescreenPlayMusic;
        return;
    }

    unk4C = strc54->unk4C;
    if (unk4C < 30) {
        if (unk4C == 1) {
            sub_8063D0C();
        }
        sub_80543A4(&strc54->strc0);
    } else if (unk4C >= 0 && unk4C < 42) {
        strc54->strc0.unk0 = 0;
        strc54->strc0.unk2 = 1;
        strc54->strc0.unk4 = 8;
        strc54->strc0.unk6 = 0;
        strc54->strc0.unk8 = 0x100;
        strc54->strc0.unkA = 1;
        sub_80543A4(&strc54->strc0);
    } else if (unk4C >= 0 && unk4C < 102) {
        sub_805423C(&strc54->strc0);
    } else if (unk4C >= 0 && unk4C < 242) {
        sub_805423C(&strc54->strc0);
    } else if (unk4C >= 0 && unk4C < 0x16A) {
        sub_805423C(&strc54->strc0);
    }
    if (++strc54->unk4C >= 414) {
        TasksDestroyInPriorityRange(0x6820, 0x6821);
        strc54->unk50 = 0x3000;
        strc54->unk52 = 0x5000;
        TaskDestroy(strc54->tasks18[CHARACTER_KNUCKLES]);
        strc54->tasks18[CHARACTER_KNUCKLES] = NULL;
        strc54->unk4C = 0;

        strc54->strc0.unk0 = 0;
        strc54->strc0.unk2 = 1;
        strc54->strc0.unk4 = 2;
        strc54->strc0.unk6 = 0;
        strc54->strc0.unk8 = 0;
        strc54->strc0.unkA = 1;
        sub_80543A4(&strc54->strc0);

        t = TaskCreate(sub_8065538, sizeof(Intro_C8), 0x2230U, 0U, NULL);
        strc54->tasks18[CHARACTER_AMY] = t;
        strcC8 = TASK_DATA(t);
        strcC8->unkB4 = 0;

        for (i = 0; i < 2; i++) {
            s = &strcC8->sprites[i];
            if (i != 0) {
                s->graphics.dest = OBJ_VRAM0 + 0x6400;
            } else {
                s->graphics.dest = OBJ_VRAM0 + 0x1440;
            }
            s->graphics.anim = 0x301;
            s->variant = 3;
            s->x = 180;
            s->y = 108;
            s->oamFlags = 0x180;
            s->graphics.size = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = -1;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->hitboxes[0].index = -1;
            s->frameFlags = 0x80;
            UpdateSpriteAnimation(s);

            if (i == 0) {
                DisplaySprite(s);
            }
        }

        for (i = 0; i < ARRAY_COUNT(gUnknown_0868B388); i++) {
            IntroSprite *introSpr;
            t = TaskCreate(sub_8065794, sizeof(IntroSprite), 0x6820U, 0U, NULL);
            introSpr = TASK_DATA(t);
            s = &introSpr->s;
            introSpr->unk30 = 0;
            introSpr->unk32 = 0;
            introSpr->unk34 = i;
            introSpr->qUnk3C = gUnknown_0868B288[0] + 0x118;
            s->graphics.dest = gUnknown_0868B388[i].vram;
            s->graphics.anim = gUnknown_0868B388[i].anim;
            s->variant = gUnknown_0868B388[i].variant;
            s->x = 280;
            s->y = 70;
            s->oamFlags = 0x180;
            s->graphics.size = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = 0xFF;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->hitboxes[0].index = -1;
            s->frameFlags = 0x40080;
            UpdateSpriteAnimation(s);
        }
        gCurTask->main = sub_8064E84;
    } else {
        if (strc54->unk4C > 0x160) {
            if (strc54->unk4C == 0x161) {
                strc54->strc0.unk4 = 4;
                strc54->strc0.unk6 = 0;
                strc54->strc0.unk8 = 0x180;
            }
            sub_805423C(&strc54->strc0);
        }
    }
}

void sub_8064E84()
{
    Sprite *s;
    s16 *temp_r3;
    s16 temp_r0;
    s16 temp_r1;
    s16 temp_r4;
    s32 temp_r0_4;
    s32 temp_r0_6;
    s32 temp_r1_3;
    s8 *temp_r1_2;
    u16 temp_r0_3;
    u16 temp_r0_5;
    u16 temp_r2;
    u16 temp_r7;
    u8 i;
    void *temp_r7_2;
    void *var_r0;
    u32 unk4C;
    struct Task *t;

    Intro_C8 *strcC8;
    Intro_54 *strc54 = TASK_DATA(gCurTask);
    StrcUi_805423C *strc0;

    strcC8 = TASK_DATA(strc54->tasks18[CHARACTER_AMY]);
    temp_r4 = strc54->unk4C;
    strcC8->unkB4 = temp_r4;
    strc54->unk50 -= 0x20;
    strc54->unk52 -= 0x20;

    gBgScrollRegs[0][0] = I(strc54->unk50);
    gBgScrollRegs[0][1] = I(strc54->unk52);

    if ((A_BUTTON | B_BUTTON | START_BUTTON) & gPressedKeys) {
        gCurTask->main = IntroOpenTitlescreenPlayMusic;
        return;
    }

    unk4C = strc54->unk4C;
    if (unk4C < 30) {
        if (unk4C == 1) {
            sub_8063DCC();
        }
        sub_80543A4(&strc54->strc0);
    } else if (unk4C >= 0 && unk4C < 42) {
        strc54->strc0.unk0 = 0;
        strc54->strc0.unk2 = 1;
        strc54->strc0.unk4 = 8;
        strc54->strc0.unk6 = 0;
        strc54->strc0.unk8 = 0x100;
        strc54->strc0.unkA = 1;
        sub_80543A4(&strc54->strc0);
    } else if (unk4C >= 0 && unk4C < 102) {
        sub_805423C(&strc54->strc0);
    } else if (unk4C >= 0 && unk4C < 242) {
        sub_805423C(&strc54->strc0);
    } else if (unk4C >= 0 && unk4C < 0x16A) {
        sub_805423C(&strc54->strc0);
    }
    if (++strc54->unk4C >= 414) {
        gCurTask->main = IntroOpenTitlescreenSilent;
        sub_805423C(&strc54->strc0);
    } else {
        if (strc54->unk4C > 0x160) {
            if (strc54->unk4C == 0x161) {
                strc54->strc0.unk4 = 4;
                strc54->strc0.unk6 = 0;
                strc54->strc0.unk8 = 0x180;
            }
            sub_805423C(&strc54->strc0);
        }
    }
}

void IntroOpenTitlescreenSilent(void)
{
    TasksDestroyAll();

    PAUSE_BACKGROUNDS_QUEUE();
    SA2_LABEL(gUnknown_03005390) = 0;
    PAUSE_GRAPHICS_QUEUE();

    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;

    CreateTitleScreen(TITLESCREEN_PARAM__BOOT_SILENT);
}

void IntroOpenTitlescreenPlayMusic(void)
{
    TasksDestroyAll();
    PAUSE_BACKGROUNDS_QUEUE();
    SA2_LABEL(gUnknown_03005390) = 0;
    PAUSE_GRAPHICS_QUEUE();

    m4aSongNumStop(MUS_INTRO);

    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;

    CreateTitleScreen(TITLESCREEN_PARAM__PLAY_MUSIC);
}

void Task_8065058()
{
    s16 unk30;

    IntroSprite *introSpr = TASK_DATA(gCurTask);
    Sprite *s = &introSpr->s;

    unk30 = ++introSpr->unk30;
    if (unk30 < 90 || unk30 >= 234) {
        introSpr->qUnk3C += introSpr->unk40;
    }
    if (unk30 < 90) {
        introSpr->unk40 -= 6;
        if (introSpr->unk40 < 0) {
            introSpr->unk40 = 0;
        }
    }

    if (unk30 == 0xE9) {
        introSpr->unk40 = 0x140;
    }
    if (introSpr->qUnk3C > Q(180)) {
        introSpr->qUnk3C = Q(180);
    }
    if (introSpr->unk34 == 0) {
        s->prevVariant = -1;
        introSpr->unk34 = 0x2F;
        introSpr->qUnk38 = introSpr->qUnk3C;
    }
    introSpr->qUnk38 -= Div(SIN((0x100 - (introSpr->unk34 * 6)) % 256u), 24);
    s->x = Div(SIN(((introSpr->unk34 * 12) + (unk30 << 5)) & 0x3FF), 650) + 120;
    s->y = I(introSpr->qUnk38);
    introSpr->unk34 -= 1;
    if (1 & introSpr->unk32) {
        s->oamFlags = 0;
    } else {
        s->oamFlags = 0x180;
    }
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

#if 0
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
