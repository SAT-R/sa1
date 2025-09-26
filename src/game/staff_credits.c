#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "data/ui_graphics.h"
#include "game/gTask_03006240.h"
#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"
#include "constants/vram_hardcoded.h"

extern const u8 gUnknown_0868483C[0x500];

typedef struct StaffCredits {
    /* 0x00 */ Sprite s;
    /* 0x30 */ Sprite s2;
    /* 0x60 */ u8 unk60[8];
    /* 0x68 */ s16 unk68;
    /* 0x6A */ s16 unk6A;
    /* 0x6C */ s16 unk6C;
    /* 0x6E */ s16 unk6E;
    /* 0x70 */ s16 unk70;
    /* 0x72 */ s16 unk72;
    /* 0x74 */ s16 unk74;
    /* 0x74 */ u8 unk76;
    /* 0x78 */ s32 unk78;
    /* 0x7C */ s32 unk7C;
} StaffCredits;

typedef struct Credits_18 {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    u8 unkA;
    struct Task *task1;
    struct Task *task2;
    s32 unk14;
} Credits_18;

void sub_805E1E8(void);
void sub_805E888(void); // -> StaffCredits
void sub_805E758(void); // -> StaffCredits
void sub_805E698(void); // -> Credits_18
void TaskDestructor_805E9B0(struct Task *t);

void sub_805E1E8(void)
{
    Strc_80528AC sp00;

    sp00.unk2B = 8;
    sp00.uiGfxID = 0x3B;
    sp00.unk2A = 13;
    sp00.tiles = gUiGraphics[sp00.uiGfxID].tiles;
    sp00.vramC = VRAM_RESERVED_STAFF_CREDITS_A;
    sp00.tilesSize = 1 * TILE_SIZE_4BPP;
    sp00.palette = gUiGraphics[sp00.uiGfxID].palette;
    sp00.paletteSize = 32;
    sp00.unk28 = 15;
    sp00.unk0.unk4 = gUiGraphics[sp00.uiGfxID].unk8;
    sp00.unk0.unk8 = gUiGraphics[sp00.uiGfxID].unkC;
    sp00.unk0.unk9 = gUiGraphics[sp00.uiGfxID].unk10;
    sp00.unk0.unkA = gUiGraphics[sp00.uiGfxID].unk14;
    sp00.unk0.unkB = gUiGraphics[sp00.uiGfxID].unk18;
    sub_80528AC(&sp00);

    sp00.unk2B = 7;
    sp00.uiGfxID = 0;
    sp00.unk2A = 13;
    sp00.tiles = gUiGraphics[sp00.uiGfxID].tiles;
    sp00.vramC = VRAM_RESERVED_STAFF_CREDITS_A;
    sp00.tilesSize = 236 * TILE_SIZE_4BPP;
    sp00.palette = gUiGraphics[60].palette;
    sp00.paletteSize = 32;
    sp00.unk28 = 14;
    sp00.unk0.unk4 = gUiGraphics[sp00.uiGfxID].unk8;
    sp00.unk0.unk8 = gUiGraphics[sp00.uiGfxID].unkC;
    sp00.unk0.unk9 = gUiGraphics[sp00.uiGfxID].unk10;
    sp00.unk0.unkA = gUiGraphics[sp00.uiGfxID].unk14;
    sp00.unk0.unkB = gUiGraphics[sp00.uiGfxID].unk18;
    sub_80528AC(&sp00);

    sp00.uiGfxID = UIGFX_CHAR_SELECT_BLACK_BOX_2;
    sp00.unk2B = 0;
    sp00.tiles = gUiGraphics[sp00.uiGfxID].tiles;
    sp00.palette = gUiGraphics[sp00.uiGfxID].palette;
    sp00.tilesSize = 1 * TILE_SIZE_4BPP;
    sp00.paletteSize = 32;
    sp00.unk28 = 0;
    sp00.unk29 = 1;
    sp00.layout = gUnknown_0868483C;
    sp00.layoutSize = 0;
    sp00.unk2A = 5;
    sp00.unk0.unk4 = gUiGraphics[sp00.uiGfxID].unk8;
    sp00.unk0.unk8 = gUiGraphics[sp00.uiGfxID].unkC;
    sp00.unk0.unk9 = gUiGraphics[sp00.uiGfxID].unk10;
    sp00.unk0.unkA = gUiGraphics[sp00.uiGfxID].unk14;
    sp00.unk0.unkB = gUiGraphics[sp00.uiGfxID].unk18;
    sub_80528AC(&sp00);
}

void CreateStaffCredits()
{
    s32 sp4;
    Sprite *s;
    s32 s_2;
    u16 s_3;
    u16 temp_r1;
    struct Task *t;
    struct Task *t1;
    struct Task *t2;
    struct Task *t3;
    StaffCredits *credits;
    Credits_18 *credits18;

    TasksDestroyInPriorityRange(1U, 0x1800U);
    TasksDestroyInPriorityRange(0x1801U, 0xFFFFU);
    sub_80535FC();
    UiGfxStackInit();
    gDispCnt = 0x1240;
    gBgCntRegs[1] = 0x1907;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    t1 = TaskCreate(sub_805E888, sizeof(StaffCredits), 0x6200U, 0U, NULL);
    credits = TASK_DATA(t1);
    s = &credits->s;

    credits->unk78 = 0x30;
    credits->unk7C = 0;

    s->graphics.dest = VRAM_RESERVED_STAFF_CREDITS_B;
    s->graphics.anim = SA1_ANIM_CREDITS_COMPANY_LOGOS;
    s->variant = 0;
    s->x = 0;
    s->y = 0;
    s->oamFlags = 0x480;
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &credits->s2;
    s->graphics.anim = SA1_ANIM_CREDITS_COPYRIGHT;
    s->variant = 1;
    s->graphics.dest = VRAM_RESERVED_STAFF_CREDITS_C;
    s->x = (DISPLAY_WIDTH / 2);
    s->y = 0;
    s->oamFlags = 0x480;
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    t2 = TaskCreate(sub_805E758, sizeof(StaffCredits), 0x6120U, 0U, NULL);
    credits = TASK_DATA(t2);
    credits->unk78 = 0x30;
    credits->unk7C = 0;
    credits->unk6A = -0x50;
    credits->unk6C = 0;
    credits->unk6E = 3;
    credits->unk68 = 0;
    credits->unk70 = 7;
    credits->unk76 = 1;
    credits->unk72 = 0xE;
    credits->unk74 = 5;

    t = TaskCreate(sub_805E698, sizeof(Credits_18), 0x6000U, 0U, TaskDestructor_805E9B0);
    credits18 = TASK_DATA(t);
    credits18->unk14 = 0x30;
    credits18->task1 = t1;
    credits18->task2 = t2;
    credits18->unk0 = 0;
    credits18->unk2 = 0;
    credits18->unk4 = 1;
    credits18->unk6 = 0;
    credits18->unk8 = 0x80;
    credits18->unkA = 8;

    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(1), 0x40);

    sa2__gUnknown_03004D80[1] = 1;
    sa2__gUnknown_03002280[1][0] = 0;
    sa2__gUnknown_03002280[1][1] = 0;
    sa2__gUnknown_03002280[1][2] = -1;
    sa2__gUnknown_03002280[1][3] = 0x14;

    gDispCnt |= 0x6000;
    gWinRegs[0] = 240;
    gWinRegs[2] = 0x24;
    gWinRegs[1] = 240;
    gWinRegs[3] = 0x84A0;
    gWinRegs[4] = 0x3F3F;
    gWinRegs[5] = 0x1F;
    gBldRegs.bldCnt = 0x1FDF;
    gBldRegs.bldAlpha = 0x10;
    gBldRegs.bldY = 0x10;

    sub_805E1E8();
    m4aSongNumStart(MUS_STAFF_CREDITS);
}
