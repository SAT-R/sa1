#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "data/ui_graphics.h"
#include "game/gTask_03006240.h"
#include "game/stage/ui.h"

typedef struct SoundTestState {
    StrcUi_805423C strc0;
    struct Task *taskC;
    struct Task *task10;
    struct Task *task14;
    struct Task *task18;
    struct Task *task1C;
    struct Task *task20;
    s32 unk24;
    u8 unk28;
    u8 unk29;
    u8 unk2A;
    u8 unk2B;
    u8 unk2C;
} SoundTestState; /* 0x30 */

typedef struct SoundTest114 {
    Sprite s;
    SpriteTransform transform;
    Sprite s2;
    SpriteTransform transform2;
    Sprite s3;
    SpriteTransform transform3;
    Sprite s4;
    SpriteTransform transform4;
    u8 fillerF0[0x8];
    s16 unkF8;
    s16 unkFA;
    s16 unkFC;
    s16 unkFE;
    s16 unk100;
    s16 unk102;
    s16 unk104;
    u8 unk106;
    s32 unk108;
    u8 unk10C;
    u8 unk10D;
    u16 unk10E;
    u8 unk110;
    u8 filler111[0x3];
} SoundTest114;

void *sub_805E9B4(void);
void Task_SoundTestInit(void);
void sub_805F950(void);
void sub_805FAD4(void);
void sub_805FDE4(void);
void sub_805FC88(void);
void sub_805FE48(void);
void Task_805FEAC(void);

extern u8 gUnknown_0868403C[0x800];

void *sub_805E9B4(void)
{
    Strc_80528AC gfx;

    UiGfxStackInit();

    gfx.uiGfxID = 0x3D;
    gfx.unk2B = 1;
    gfx.tiles = gUiGraphics[gfx.uiGfxID].tiles;
    gfx.palette = gUiGraphics[gfx.uiGfxID].palette;
    gfx.tilesSize = 0x800;
    gfx.paletteSize = 0x20;
    gfx.unk28 = 0;
    gfx.unk29 = 0;
    gfx.layout = gUnknown_0868403C;
    gfx.layoutSize = sizeof(gUnknown_0868403C);
    gfx.unk2A = 0x15;
    gfx.unk0.unk4 = gUiGraphics[gfx.uiGfxID].unk8;
    gfx.unk0.unk8 = gUiGraphics[gfx.uiGfxID].unkC;
    gfx.unk0.unk9 = gUiGraphics[gfx.uiGfxID].unk10;
    gfx.unk0.unkA = gUiGraphics[gfx.uiGfxID].unk14;
    gfx.unk0.unkB = gUiGraphics[gfx.uiGfxID].unk18;
    sub_80528AC(&gfx);

    gfx.uiGfxID = 0;
    gfx.unk2B = 0;
    gfx.tiles = gUiGraphics[0].tiles + 0x400;
    gfx.palette = gUiGraphics[0].palette;
    gfx.vramC = OBJ_VRAM0 + 0x3480;
    gfx.tilesSize = 0x280;
    gfx.paletteSize = 0x20;
    gfx.unk28 = 15;
    gfx.unk2A = 0xD;
    gfx.unk0.unk4 = gUiGraphics[0].unk8;
    gfx.unk0.unk8 = gUiGraphics[0].unkC;
    gfx.unk0.unk9 = gUiGraphics[0].unk10;
    gfx.unk0.unkA = gUiGraphics[0].unk14;
    gfx.unk0.unkB = gUiGraphics[0].unk18;
    sub_80528AC(&gfx);

    return gfx.vramC;
}

void CreateSoundTest(void)
{
    Sprite *s;
    SpriteTransform *tf;
    StrcUi_805423C *strc0;
    struct Task *t;
    SoundTestState *state;
    SoundTest114 *temp_r1_2;
    SoundTest114 *temp_r4;
    u8 var_r1;

    for (var_r1 = 0; var_r1 < 10; var_r1++) {
        gKeysFirstRepeatIntervals[var_r1] = 0x14;
        gKeysContinuedRepeatIntervals[var_r1] = 8;
    }

    sub_80535FC();
    gDispCnt = 0x1140;
    gBgCntRegs[0] = 0x1E07;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;

    state = TASK_DATA(TaskCreate(Task_SoundTestInit, sizeof(SoundTestState), 0x2000U, 0U, NULL));
    strc0 = &state->strc0;
    state->unk24 = 0;
    state->unk28 = 0;
    state->unk29 = 0;
    state->unk2A = 0;
    state->unk2B = 0;
    state->unk2C = 0;
    strc0->unk0 = 0;
    strc0->unk2 = 1;
    strc0->unk4 = 2;
    strc0->unk6 = 0;
    strc0->unk8 = 0x100;
    strc0->unkA = 1;

    t = TaskCreate(sub_805F950, sizeof(SoundTest114), 0x2020U, 0U, NULL);
    temp_r1_2 = TASK_DATA(t);
    temp_r1_2->unk108 = 0;
    temp_r1_2->unk10C = 0;
    temp_r1_2->unk110 = 0;
    temp_r1_2->unk10D = 0;
    temp_r1_2->unk10E = 0x3C;
    state->task10 = t;

    s = &temp_r1_2->s;
    s->graphics.dest = (void *)OBJ_VRAM0 + 0x0020;
    s->graphics.anim = 0x357;
    s->variant = 0;
    s->graphics.size = 0;
    s->x = 180;
    s->y = 120;
    s->oamFlags = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    t = TaskCreate(sub_805FAD4, sizeof(SoundTest114), 0x2020U, 0U, NULL);
    temp_r4 = TASK_DATA(t);
    s = &temp_r4->s;
    temp_r4->unk108 = 0;
    temp_r4->unk10C = 0;
    temp_r4->unk10D = 0;
    temp_r4->unk10E = 0;
    temp_r4->unk110 = 0;
    state->task18 = t;

    tf = &temp_r4->transform;
    s->graphics.dest = (void *)OBJ_VRAM0 + 0x0C80;
    s->graphics.anim = 0x36C;
    s->variant = 0;
    s->graphics.size = 0;
    s->x = 0x4C;
    s->y = 0x5C;
    s->oamFlags = 0x480;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x3067;
    tf->rotation = 0xC8;
    tf->qScaleX = 0x101;
    tf->qScaleY = 0x101;
    tf->x = 0x4C;
    tf->y = 0x5C;
    TransformSprite(s, tf);
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &temp_r4->s2;
    tf = &temp_r4->transform2;
    s->graphics.dest = (void *)OBJ_VRAM0 + 0x0C80;
    s->graphics.anim = 0x36C;
    s->variant = 0;
    s->graphics.size = 0;
    s->x = 76;
    s->y = 92;
    s->oamFlags = 0x480;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x3068;
    tf->rotation = 0xC8;
    tf->qScaleX = 0x101;
    tf->qScaleY = 0x101;
    tf->x = 0x4C;
    tf->y = 0x5C;
    TransformSprite(s, tf);
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &temp_r4->s3;
    tf = &temp_r4->transform3;
    s->graphics.dest = (void *)OBJ_VRAM0 + 0x0C80;
    s->graphics.anim = 0x36C;
    s->variant = 0;
    s->graphics.size = 0;
    s->x = 0x4C;
    s->y = 0x5C;
    s->oamFlags = 0x480;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x3069;
    tf->rotation = 0xC8;
    tf->qScaleX = 0x101;
    tf->qScaleY = 0x101;
    tf->x = 0x4C;
    tf->y = 0x5C;
    TransformSprite(s, tf);
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &temp_r4->s4;
    tf = &temp_r4->transform4;
    s->graphics.dest = (void *)OBJ_VRAM0 + 0x0C80;
    s->graphics.anim = 0x36C;
    s->variant = 0;
    s->graphics.size = 0;
    s->x = 0x4C;
    s->y = 0x5C;
    s->oamFlags = 0x480;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x307B;
    tf->rotation = 0xC8;
    tf->qScaleX = 0x101;
    tf->qScaleY = 0x101;
    tf->x = 0x4C;
    tf->y = 0x5C;
    TransformSprite(s, tf);
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    t = TaskCreate(Task_805FEAC, sizeof(SoundTest114), 0x2020U, 0U, NULL);
    temp_r1_2 = TASK_DATA(t);
    s = &temp_r1_2->s;
    temp_r1_2->unk108 = 0;
    temp_r1_2->unk10C = 0;
    temp_r1_2->unk10D = 0;
    temp_r1_2->unk10E = 0;
    temp_r1_2->unk110 = 0;
    state->task20 = t;
    s->graphics.dest = (void *)OBJ_VRAM0 + 0x1C80;
    s->graphics.anim = 0x366;
    s->variant = 2;
    s->graphics.size = 0;
    s->x = 0x64;
    s->y = 0x5D;
    s->oamFlags = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    t = TaskCreate(sub_805FDE4, sizeof(SoundTest114), 0x2020U, 0U, NULL);
    temp_r1_2 = TASK_DATA(t);
    temp_r1_2->unk108 = 0;
    temp_r1_2->unk10C = 0;
    temp_r1_2->unk10D = 0;
    temp_r1_2->unk10E = 0;
    temp_r1_2->unk110 = 0;
    state->task14 = t;

    s = &temp_r1_2->s;
    s->graphics.dest = (void *)OBJ_VRAM0 + 0x2040;
    s->graphics.anim = 0x366;
    s->variant = 0;
    s->graphics.size = 0;
    s->x = 0x62;
    s->y = 0x88;
    s->oamFlags = 0x100;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    t = TaskCreate(sub_805FC88, sizeof(SoundTest114), 0x2040U, 0U, NULL);
    temp_r1_2 = TASK_DATA(t);
    temp_r1_2->unk108 = 0;
    temp_r1_2->unk10C = 0;
    temp_r1_2->unk10D = 0;
    temp_r1_2->unk10E = 0;
    temp_r1_2->unk110 = 0;
    state->taskC = t;

    temp_r1_2->unkFA = 0;
    temp_r1_2->unkFC = 0x52;
    temp_r1_2->unkFE = 1;
    temp_r1_2->unk100 = 0;
    temp_r1_2->unk102 = 0xF;
    temp_r1_2->unk106 = 1;
    temp_r1_2->unkF8 = 0x40;

    t = TaskCreate(sub_805FE48, sizeof(SoundTest114), 0x2020U, 0U, NULL);
    temp_r4 = TASK_DATA(t);
    s = &temp_r4->s;
    temp_r4->unk108 = 0;
    temp_r4->unk10C = 0;
    temp_r4->unk10D = 0;
    temp_r4->unk10E = 0;
    temp_r4->unk110 = 0;
    state->task1C = t;

    s->graphics.dest = (void *)OBJ_VRAM0 + 0x2600;
    s->graphics.anim = 0x36A;
    s->variant = 0;
    s->graphics.size = 0;
    s->x = 0;
    s->y = 0;
    s->oamFlags = 0x140;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    s = &temp_r4->s2;
    s->graphics.dest = (void *)OBJ_VRAM0 + 0x3200;
    s->graphics.anim = 0x369;
    s->variant = 0;
    s->graphics.size = 0;
    s->x = 26;
    s->y = 136;
    s->oamFlags = 0x140;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    s = &temp_r4->s3;
    s->graphics.dest = (void *)OBJ_VRAM0 + 0x1CC0;
    s->graphics.anim = 0x367;
    s->variant = 0;
    s->graphics.size = 0;
    s->x = 0x11;
    s->y = 0x18;
    s->oamFlags = 0x80;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    s = &temp_r4->s4;
    s->graphics.dest = (void *)OBJ_VRAM0 + 0x2380;
    s->graphics.anim = 0x36B;
    s->variant = 0;
    s->graphics.size = 0;
    s->x = 0xB4;
    s->y = 0x90;
    s->oamFlags = 0x100;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    m4aMPlayFadeOut(&gMPlayInfo_BGM, 1U);
    m4aMPlayFadeOut(&gMPlayInfo_SE1, 1U);
    m4aMPlayFadeOut(&gMPlayInfo_SE2, 1U);
    m4aMPlayFadeOut(&gMPlayInfo_SE3, 1U);

    sub_80543A4(&state->strc0);
    sub_805E9B4();
}
