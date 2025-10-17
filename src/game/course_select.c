#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "data/ui_graphics.h"
#include "game/course_select.h"
#include "game/gTask_03006240.h"
#include "game/stage/ui.h"

#include "constants/songs.h"
#include "constants/ui_graphics.h"

typedef struct CourseSelect_58 {
    Sprite s;
    Hitbox reserved;
    s16 unk38;
    s16 unk3A;
    s16 unk3C;
    s16 unk3E;
    s16 unk40;
    s16 unk42;
    s16 unk44;
    u8 unk46;
    s32 unk48;
    s32 unk4C;
    u8 unk50;
    u8 unk51;
    u8 unk52;
    u8 unk53;
    u8 unk54;
} CourseSelect_58;

typedef struct CourseSelect_E4 {
    StrcUi_805423C strc0;
    Sprite s;
    Sprite s2;
    Sprite s3;
    Sprite s4;
    struct Task *taskCC; // -> CourseSelect_58
    struct Task *taskD0; // -> CourseSelect_58
    s32 unkD4;
    s32 unkD8;
    u8 unkDC;
    u8 unkDD;
    u8 unkDE;
    u8 unkDF;
    u8 unkE0;
} CourseSelect_E4;

void sub_8060C88(void);
void sub_8061144(void);
void sub_8061480(void);
void Task_8061830(void);
void sub_80613D0(void);
void TaskDestructor_806182C(struct Task *t);

extern u16 gUnknown_086956F4[];
extern u8 gUnknown_086958F4[];
extern u8 gUnknown_086962B4[];
extern u8 gUnknown_086972F4[];
extern u8 gUnknown_08698BF4[];
extern u16 gUnknown_0868B0D4[][2];
extern u16 gUnknown_0868B0EC[][2];

void sub_8060C88(void)
{
    Strc_80528AC gfx;
    s8 *temp_r5;
    s8 *temp_r7;

    UiGfxStackInit();

    gfx.uiGfxID = UIGFX_OPTIONS;
    gfx.unk2B = 1;
    gfx.tiles = gUnknown_086972F4;
    gfx.tilesSize = 0x1900;
    gfx.layout = gUnknown_08698BF4;
    gfx.layoutSize = 0x500;
    gfx.unk29 = 0x1;
    gfx.unk2A = 0x11;
    gfx.unk0.unk4 = 0;
    gfx.unk0.unk8 = 0;
    gfx.unk0.unk9 = 0;
    gfx.unk0.unkA = 0;
    gfx.unk0.unkB = 0;
    sub_80528AC(&gfx);

    gfx.uiGfxID = UIGFX_OPTIONS;
    gfx.unk2B = 0;
    gfx.tiles = gUnknown_086958F4;
    gfx.tilesSize = 0x9C0;
    gfx.palette = gUnknown_086956F4;
    gfx.paletteSize = 0x200;
    gfx.layout = gUnknown_086962B4;
    gfx.layoutSize = 0x500;
    gfx.unk28 = 0;
    gfx.unk29 = 0;
    gfx.unk2A = 0x15;
    sub_80528AC(&gfx);

    gfx.uiGfxID = UIGFX_TIMER_DIGITS;
    gfx.unk2B = 2;
    gfx.tiles = gUiGraphics[UIGFX_TIMER_DIGITS].tiles;
    gfx.palette = gUiGraphics[UIGFX_TIMER_DIGITS].palette;
    gfx.tilesSize = 0x580;
    gfx.paletteSize = 0x20;
    gfx.unk28 = 2;
    gfx.vramC = (u8 *)OBJ_VRAM0 + 0x20;
    gfx.unk2A = 0xD;
    gfx.unk0.unk4 = gUiGraphics[UIGFX_TIMER_DIGITS].unk8;
    gfx.unk0.unk8 = gUiGraphics[UIGFX_TIMER_DIGITS].unkC;
    gfx.unk0.unk9 = gUiGraphics[UIGFX_TIMER_DIGITS].unk10;
    gfx.unk0.unkA = gUiGraphics[UIGFX_TIMER_DIGITS].unk14;
    gfx.unk0.unkB = gUiGraphics[UIGFX_TIMER_DIGITS].unk18;
    sub_80528AC(&gfx);
}

void sub_8060DAC(u8 arg0)
{
    s32 temp_r0_2;
    struct Task *t;
    s32 temp_r0_4;
    Sprite *s;
    CourseSelect_E4 *strcE4;
    CourseSelect_58 *strc58;
    s32 index;

    sub_80535FC();
    gDispCnt = 0x1340;
    m4aSongNumStart(MUS_VS_RECORD);
    gBgCntRegs[0] = 0x1D83;
    gBgCntRegs[1] = 0x1886;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;

    sub_8060C88();

    strcE4 = TASK_DATA(TaskCreate(sub_8061144, sizeof(CourseSelect_E4), 0x2000U, 0U, TaskDestructor_806182C));
    strcE4->unkD4 = 0;
    strcE4->unkDE = 8;
    strcE4->unkD8 = 0;
    strcE4->strc0.unk0 = 0;
    strcE4->strc0.unk2 = 1;
    strcE4->strc0.unk4 = 2;
    strcE4->strc0.unk6 = 0;
    strcE4->strc0.unk8 = 0x100;
    strcE4->strc0.unkA = 8;
    strcE4->unkDC = 0;
    strcE4->unkDD = 0;
    strcE4->unkDF = 0;
    strcE4->unkE0 = arg0;

    s = &strcE4->s;
    s->graphics.dest = OBJ_VRAM0 + 0xC80;
    s->graphics.anim = gUnknown_0868B0D4[arg0 >> 1][0];
    s->variant = gUnknown_0868B0D4[arg0 >> 1][1];
    s->graphics.size = 0;
    s->x = 17;
    s->y = 24;
    s->oamFlags = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    s = &strcE4->s2;
    s->graphics.dest = OBJ_VRAM0 + 0x1900;
    s->graphics.anim = gUnknown_0868B0EC[arg0 & 1][0];
    s->variant = gUnknown_0868B0EC[arg0 & 1][1];
    s->graphics.size = 0;
    s->x = 85;
    s->y = 27;
    s->oamFlags = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    s = &strcE4->s3;
    s->graphics.dest = OBJ_VRAM0 + 0x2580;
    s->graphics.anim = 0x374;
    s->variant = 2;
    s->graphics.size = 0;
    s->x = 21;
    s->y = 81;
    s->oamFlags = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    s = &strcE4->s4;
    s->graphics.dest = OBJ_VRAM0 + 0x3200;
    s->graphics.anim = 0x359;
    s->variant = 0;
    s->graphics.size = 0;
    s->x = 20;
    s->y = 80;
    s->oamFlags = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    t = TaskCreate(sub_8061480, sizeof(CourseSelect_58), 0x2030U, 0U, NULL);
    strc58 = TASK_DATA(t);
    strc58->unk4C = 0;
    strc58->unk3A = 0;
    strc58->unk3C = 0;
    strc58->unk3E = 0;
    strc58->unk40 = 2;
    strc58->unk42 = 2;
    strc58->unk46 = 1;
    strc58->unk38 = 0;
    strc58->unk48 = 0;
    strc58->unk50 = 0;
    strc58->unk52 = 0;
    strc58->unk53 = 0;
    strc58->unk54 = arg0;
    strcE4->taskCC = t;

    t = TaskCreate(Task_8061830, sizeof(CourseSelect_58), 0x2080U, 0U, NULL);
    strc58 = TASK_DATA(t);
    strc58->unk4C = 0;
    strc58->unk48 = 0;
    strc58->unk50 = 0;
    strc58->unk52 = 0;
    strc58->unk53 = 0;
    strc58->unk54 = arg0;
    strcE4->taskD0 = t;

    s = &strc58->s;
    s->graphics.dest = OBJ_VRAM0 + 0x8E0;
    s->graphics.anim = 0x371;
    s->variant = 8;
    s->graphics.size = 0;
    s->x = 20;
    s->y = 61;
    s->oamFlags = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    sub_805423C(&strcE4->strc0);
    m4aSongNumStartOrContinue(MUS_VS_RECORD);
}

// (87.95%) https://decomp.me/scratch/Bkzoh
NONMATCH("asm/non_matching/game/course_select__sub_8061144.inc", void sub_8061144())
{
    u32 var_r7 = 0;
    u8 sp0 = 0;
    s16 *temp_r2_6;
    s32 *temp_r0_3;
    s32 *temp_r2;
    u32 temp_r1;
    s32 temp_r2_5;
    s32 temp_sb;
    s8 temp_r1_2;
    CourseSelect_58 *temp_r0;
    CourseSelect_58 *temp_r0_2;
    u8 *temp_r2_2;
    u8 *temp_r2_3;
    u8 *temp_r2_4;
    u8 *temp_r3;
    u8 *var_r4;
    u8 temp_r0_4;
    u8 var_r1;
    u16 var_r3;
    u16 *var_r2;

    CourseSelect_E4 *strcE4 = TASK_DATA(gCurTask);

    temp_r0 = TASK_DATA(strcE4->taskCC);
    temp_r0_2 = TASK_DATA(strcE4->taskD0);
    temp_r2 = &strcE4->unkD8;
    temp_r0_3 = &strcE4->unkD4;
    temp_r1 = *temp_r2;

    temp_sb = *temp_r0_3 + 1;
    *temp_r0_3 = temp_sb;
    temp_r0->unk48 = temp_sb;
    temp_r0_2->unk48 = temp_sb;
    *temp_r2 = temp_r1;
    temp_r0->unk4C = temp_r1;
    temp_r0_2->unk4C = temp_r1;

    if (strcE4->unkDE == 0 && strcE4->unkDF == 0) {
        if (0x10 & gRepeatedKeys) {
            m4aSongNumStart(0x6CU);
            strcE4->unkDE = 2;
            temp_r2_2 = &strcE4->unkDC;
            strcE4->unkDD = strcE4->unkDC;
            strcE4->unkDC = (strcE4->unkDC + 1) & 3;
            m4aSongNumStart(0x6CU);
        } else if (0x20 & gRepeatedKeys) {
            m4aSongNumStart(0x6CU);
            strcE4->unkDE = 2;

            strcE4->unkDD = strcE4->unkDC;
            strcE4->unkDC = (strcE4->unkDC - 1) & 3;
            m4aSongNumStart(0x6CU);
        }

        if (2 & gPressedKeys) {
            m4aSongNumStart(0x6BU);
            strcE4->unkDF = 1;
            strcE4->strc0.unk4 = 1;
            strcE4->strc0.unk6 = 0x2000 - (u16)strcE4->strc0.unk6;
            m4aSongNumStart(0x6BU);
        }
    } else {
        temp_r0_4 = strcE4->unkDE;
        if (temp_r0_4 != 0) {
            strcE4->unkDE = (u8)(temp_r0_4 - 1);
        }
    }
    sub_805423C(&strcE4->strc0);
    temp_r0->unk52 = strcE4->unkDE;
    temp_r0_2->unk52 = strcE4->unkDE;
    temp_r3 = &strcE4->unkDD;
    temp_r0->unk51 = strcE4->unkDD;
    temp_r0->unk50 = strcE4->unkDC;
    temp_r0_2->unk51 = strcE4->unkDD;
    temp_r0_2->unk50 = strcE4->unkDC;
    if ((strcE4->unkDF != 0) && ((s32)strcE4->strc0.unk6 > 0x1800) && (strcE4->strc0.unk4 == 1)) {
        gFlags &= ~4;
        m4aSongNumStop(0xAU);
        gDispCnt &= 0x1FFF;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
        TaskDestroy(strcE4->taskCC);
        TaskDestroy(strcE4->taskD0);
        TaskDestroy(gCurTask);
        CreateCourseSelect(1U);
        return;
    }

    var_r3 = temp_sb;
    gFlags |= 4;
    gHBlankCopyTarget = (void *)&REG_BG0HOFS;
    gHBlankCopySize = 4;
    {
        var_r2 = gBgOffsetsHBlank;
        for (var_r7; var_r7 < DISPLAY_HEIGHT; var_r7++) {
            for (var_r1 = 0; var_r7 < DISPLAY_HEIGHT && var_r1 < 24; var_r1++) {
                *var_r2++ = (s16)(var_r3 & 0x1FF);
                *var_r2++ = 0;
                var_r7 = (u32)(u8)(var_r7 + 1);
            }
            temp_r1_2 = (s8)sp0;
            var_r3 = (0 - (var_r3 + temp_r1_2));
            sp0 = (0 - temp_r1_2);
        }
    }
    sub_80613D0();
}
END_NONMATCH
