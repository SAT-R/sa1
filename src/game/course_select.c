#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "data/ui_graphics.h"
#include "game/gTask_03006240.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/save.h"
#include "game/stage/ui.h"

#include "constants/ui_graphics.h"

typedef struct CourseSelect_5C {
    StrcUi_805423C strc0;
    u8 fillerC[4];
    struct Task *task10;
    struct Task *task14;
    struct Task *task18;
    Sprite s;
    u32 unk4C;
    u16 unk50;
    u16 unk52;
    u8 unk54;
    u8 unk55;
    u8 unk56;
    u8 unk57;
    u8 unk58;
    u8 unk59;
} CourseSelect_5C;

typedef struct CourseSelect_54 {
    Sprite s;
    u8 filler30[0x18];
    u32 unk48;
    u16 unk4C;
    u8 unk4E;
    u8 unk4F;
    u8 unk50;
    u8 unk51;
} CourseSelect_54;

typedef struct CourseSelect_2DC {
    Sprite sprites[15];
    u32 unk2D0;
    u16 unk2D4;
    u8 unk2D6;
    u8 unk2D7;
    u8 unk2D8;
    u8 unk2D9;
    u8 unk2DA;
    u8 unk2DB;
} CourseSelect_2DC;

extern u8 gUnknown_086A17F4[];
extern u8 gUnknown_086A2534[];
extern u16 gUnknown_086A2A34[];
extern u8 gUnknown_086A2C34[];
extern u8 gUnknown_086A3DB4[];

extern u8 gUnknown_03005140;

typedef struct StaticTileInfo {
    void *vram;
    u32 anim;
    u32 variant;
} StaticTileInfo;
extern StaticTileInfo gUnknown_0868B10C[15];
extern StaticTileInfo gUnknown_0868B1C0[15];

void sub_8061894(void);
void Task_CourseSelectInit(void);
void sub_8062A80(void);
void sub_8062E18(void);
void sub_8062C28(void);
void sub_8062140(void);
void sub_8062B38(void);
void sub_8062CB4(void);
void TaskDestructor_CourseSelect(struct Task *t);

void sub_8061894(void)
{
    Strc_80528AC gfx;
    s8 *temp_r5;
    s8 *temp_r7;

    UiGfxStackInit();

    gfx.uiGfxID = UIGFX_OPTIONS;
    gfx.unk2B = 1;
    gfx.tiles = gUnknown_086A17F4;
    gfx.tilesSize = 0xE00;
    gfx.layout = gUnknown_086A2534;
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
    gfx.tiles = gUnknown_086A2C34;
    gfx.tilesSize = 0x1180;
    gfx.palette = gUnknown_086A2A34;
    gfx.paletteSize = 0x200;
    gfx.layout = gUnknown_086A3DB4;
    gfx.layoutSize = 0x1000;
    gfx.unk28 = 0;
    gfx.unk29 = 0;
    gfx.unk2A = 0x15;
    sub_80528AC(&gfx);
}

void CreateCourseSelect(u8 arg0)
{
    Strc_80528AC gfx;
    s32 sp34;
    struct Task *task0;
    struct Task *task1;
    u8 sp3C;
    s32 sp40;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r3;
    s32 temp_r3_2;
    CourseSelect_54 *strc54;
    CourseSelect_5C *strc5C;
    CourseSelect_2DC *strc2DC;
    CourseSelect_2DC *strc2DC_2;
    struct Task *temp_r0_2;
    struct Task *task2;
    struct Task *task3;
    Sprite *s;
    u8 i;

    sp34 = arg0;
    gMultiplayerMissingHeartbeats[3] = 0;
    gMultiplayerMissingHeartbeats[2] = 0;
    gMultiplayerMissingHeartbeats[1] = 0;
    gMultiplayerMissingHeartbeats[0] = 0;
    m4aSongNumStart(4U);
    sub_80535FC();
    UiGfxStackInit();

    if (arg0 == 1) {
        sp3C = 0xD;
    } else {
        if (IS_MULTI_PLAYER) {
            sp3C = gUnknown_03005140 + 2;
        } else {
            sp3C = LOADED_SAVE->unk8[gSelectedCharacter] + 2;
        }
        if (gSelectedCharacter == 0) {
            if (sp3C == 0) {
                sp3C = 1;
            }
            if (sp3C > 0xFU) {
                sp3C = 0xF;
            } else if (LOADED_SAVE->unk8[0] == 0xD) {
                sp3C = 0xE;
            }
        } else {
            if (sp3C == 0) {
                sp3C = 1;
            }
            if (sp3C > 0xEU) {
                sp3C = 0xE;
            }
        }
        if ((gGameMode != 0) && (sp3C > 0xDU)) {
            sp3C = 0xD;
        }
    }

    gDispCnt = 0x1340;
    gBgCntRegs[0] = 0x1D83;
    gBgCntRegs[1] = 0x1886;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    sub_8061894();

    task0 = TaskCreate(Task_CourseSelectInit, sizeof(CourseSelect_5C), 0x2000U, 0U, TaskDestructor_CourseSelect);
    strc5C = TASK_DATA(task0);
    strc5C->unk4C = 0;
    strc5C->unk57 = 0;
    strc5C->unk50 = 0x14;
    strc5C->unk52 = 0x14;
    strc5C->unk54 = 0;
    strc5C->unk55 = 1;
    strc5C->unk58 = sp3C;
    strc5C->unk59 = sp34;
    strc5C->strc0.unk0 = 0;
    strc5C->strc0.unk2 = 1;
    strc5C->strc0.unk4 = 2;
    strc5C->strc0.unk6 = 0;
    strc5C->strc0.unk8 = 0x200;
    strc5C->strc0.unkA = 1;

    task1 = TaskCreate(sub_8062E18, sizeof(CourseSelect_54), 0x2030U, 0U, NULL);
    strc54 = TASK_DATA(task1);
    strc54->unk48 = 0;
    strc54->unk4C = 0;
    strc54->unk4E = 0;
    strc54->unk4F = 0;
    strc54->unk51 = sp3C;
    s = &strc54->s;
    s->graphics.dest = OBJ_VRAM0 + 0x6400;
    s->graphics.anim = 0x2E9;
    s->variant = 0;
    s->oamFlags = 0;
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    strc5C->task18 = task1;
    s = &strc5C->s;
    s->x = 120;
    s->y = 80;
    s->graphics.dest = strc54->s.graphics.dest + 0xC0;
    s->oamFlags = 0x80;
    s->graphics.size = 0;
    s->graphics.anim = 905;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    task2 = TaskCreate(sub_8062A80, sizeof(CourseSelect_2DC), 0x2030U, 0U, NULL);
    strc2DC = TASK_DATA(task2);
    strc2DC->unk2D0 = 0;
    strc2DC->unk2D4 = 0;
    strc2DC->unk2D6 = 0;
    strc2DC->unk2D7 = 0;
    strc2DC->unk2DA = (u8)sp3C;
    strc2DC->unk2D9 = 0;
    strc2DC->unk2DB = (u8)sp34;
    for (i = 0; i < strc5C->unk58; i++) {
        {
            s = &strc2DC->sprites[i];
            temp_r1_2 = i * 0xC;
            s->graphics.dest = (void *)gUnknown_0868B10C[i].vram;
            s->graphics.anim = gUnknown_0868B10C[i].anim;
            s->variant = gUnknown_0868B10C[i].variant;
            s->oamFlags = 0x480;
            s->graphics.size = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = -1;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->hitboxes[0].index = -1;
            s->frameFlags = 0x2000;
            UpdateSpriteAnimation(s);
        }
    }

    for (; i < (s32)ARRAY_COUNT(strc2DC->sprites); i++) {
        s = &strc2DC->sprites[i];
        s->graphics.dest = NULL;
    }
    strc5C->task10 = task2;

    task2 = TaskCreate(sub_8062C28, sizeof(CourseSelect_2DC), 0x2030U, 0U, NULL);
    strc2DC_2 = TASK_DATA(task2);
    strc2DC_2->unk2D0 = 0;
    strc2DC_2->unk2D4 = 0;
    strc2DC_2->unk2D6 = 0;
    strc2DC_2->unk2D7 = 0;
    strc2DC_2->unk2DA = sp3C;

    for (i = 0; i < 8; i++) {
        s = &strc2DC_2->sprites[i];
        s->graphics.dest = gUnknown_0868B1C0[i].vram;
        s->graphics.anim = gUnknown_0868B1C0[i].anim;
        s->variant = gUnknown_0868B1C0[i].variant;
        s->oamFlags = 0x480;
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0x2000;
        UpdateSpriteAnimation(s);
    }

    for (; i < (s32)ARRAY_COUNT(strc2DC_2->sprites); i++) {
        s = &strc2DC_2->sprites[i];
        s->graphics.dest = NULL;
    }
    strc5C->task14 = task2;

    if (sp34 == 1) {
        gBgScrollRegs[0][1] = 0x14;
        gBgCntRegs[0] = 0x9D83;
        strc5C->unk4C = 0x3F;
        strc2DC->unk2D0 = 0x3F;
        strc2DC_2->unk2D0 = 0x3F;
        task0->main = sub_8062140;
        strc5C->task10->main = sub_8062B38;
        strc5C->task14->main = sub_8062CB4;

        gfx.uiGfxID = 62;
        gfx.unk2B = 0;
        gfx.tiles = gUiGraphics[62].tiles;
        gfx.palette = gUiGraphics[62].palette;
        gfx.tilesSize = 0x20;
        gfx.paletteSize = 0x20;
        gfx.unk28 = 3;
        gfx.vramC = OBJ_VRAM0 + 0x20;
        gfx.unk2A = 0xC;
        gfx.unk0.unk4 = gUiGraphics[62].unk8;
        gfx.unk0.unk8 = gUiGraphics[62].unkC;
        gfx.unk0.unk9 = gUiGraphics[62].unk10;
        gfx.unk0.unkA = gUiGraphics[62].unk14;
        gfx.unk0.unkB = gUiGraphics[62].unk18;
        sub_80528AC(&gfx);
    }
    sub_805423C(&strc5C->strc0);
}
