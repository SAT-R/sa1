#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "data/ui_graphics.h"
#include "game/game_over.h"
#include "game/gTask_03006240.h"
#include "game/save.h"
#include "game/stage/ui.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"
#include "constants/text.h" // for UILANG_COUNT

typedef struct OptionsMenu {
    /* 0x000 */ Sprite s0;
    /* 0x030 */ Sprite sprites30[8];
    /* 0x1B0 */ Sprite s1B0;
    /* 0x1E0 */ Sprite s1E0;
    /* 0x210 */ Sprite s210;
    /* 0x240 */ Sprite s240;
    /* 0x270 */ Sprite s270;
    /* 0x2A0 */ Sprite s2A0;
    /* 0x2D0 */ Sprite s2D0;
    /* 0x300 */ Sprite s300;
    /* 0x330 */ StrcUi_805423C unk330;
    /* 0x33C */ u16 unk33C;
    /* 0x33E */ u8 unk33E;
    /* 0x33F */ u8 unk33F;
    /* 0x340 */ u8 filler340[0x4];
} OptionsMenu; /* 0x344 */

void Task_OptionsMenuMain(void);
void TaskDestructor_OptionsMenu(struct Task *t);

extern u16 gUnknown_080BB36C[2];
extern u8 gUnknown_080BB370[8];
extern AnimId gUnknown_080BB378[2];
extern u8 gUnknown_080BB37C[2];
extern u8 gUnknown_080BB37E[2];
extern u8 gUnknown_080BB380[2];
extern u8 gUnknown_080BB382[8];
extern u8 gUnknown_080BB38A[4];
extern u8 gUnknown_080BB38E[0x12];

extern u16 gUnknown_086CC774[16];
extern u8 gUnknown_086CC794[0xA0];
extern u8 gUnknown_086CC834[0x500];

/* These functions get called when pressing A inside the options menu main screen */
extern void OptionsSelectPlayerData(void);
extern void OptionsSelectDifficulty(void);
extern void OptionsSelectTimeUp(void);
extern void OptionsSelectSoundTest(void);
extern void OptionsSelectLanguage(void);
extern void OptionsSelectButtonConfig(void);
extern void OptionsSelectDeleteGameData(void);
extern void OptionsSelectEnd(void);
const VoidFn sOptionsSelectFuncs[] = {
    OptionsSelectPlayerData, OptionsSelectDifficulty,   OptionsSelectTimeUp,         OptionsSelectSoundTest,
    OptionsSelectLanguage,   OptionsSelectButtonConfig, OptionsSelectDeleteGameData, OptionsSelectEnd,
};

void CreateOptionsMenu()
{
    Strc_80528AC sp4;
    s8 *sp34;
    Sprite *s;
    StrcUi_805423C *temp_r0_4;
    s8 *temp_r0;
    s8 *temp_r2;
    s8 var_r0;
    u8 *temp_r0_2;
    u8 *temp_r0_3;
    u8 *temp_r1;
    u8 *temp_r1_2;
    u8 i;

    OptionsMenu *menu;

    gDispCnt = 0x1140;
    gBgCntRegs[0] = 0x1E03;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    sub_80535FC();
    UiGfxStackInit();
    gDispCnt &= 0x1FFF;
    gBldRegs.bldCnt = 0;
    gBldRegs.bldY = 0;

    menu = TASK_DATA(TaskCreate(Task_OptionsMenuMain, 0x344U, 0x2000U, 0U, TaskDestructor_OptionsMenu));
    menu->unk33F = 0;
    menu->unk33C = 0;
    menu->unk33E = 0;
    menu->filler340[0] = 1;

    s = &menu->s0;
    s->x = 0;
    s->y = 0;
    s->graphics.dest = VramMalloc(0x16U);
    s->oamFlags = SPRITE_OAM_ORDER(15);
    s->graphics.size = 0;
    s->graphics.anim = 0x359;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    for (i = 0; i < ARRAY_COUNT(menu->sprites30); i++) {
        s = &menu->sprites30[i];
        s->x = 25;
        s->y = 38 + (i * 0x10);
        s->graphics.dest = VramMalloc(gUnknown_080BB382[i]);
        s->oamFlags = SPRITE_OAM_ORDER(15);
        s->graphics.size = 0;
        s->graphics.anim = gUnknown_080BB36C[LOADED_SAVE->uiLanguage];
        s->variant = gUnknown_080BB370[i];
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    s = &menu->s1B0;
    s->x = 220;
    s->y = 54;
    s->graphics.dest = VramMalloc(0x10U);
    s->oamFlags = SPRITE_OAM_ORDER(15);
    s->graphics.size = 0;
    s->graphics.anim = gUnknown_080BB36C[LOADED_SAVE->uiLanguage];
    s->variant = gUnknown_080BB37C[LOADED_SAVE->difficultyLevel];
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant |= ~0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &menu->s1E0;
    s->x = 0xDC;
    s->y = 0x46;
    s->graphics.dest = VramMalloc(8U);
    s->oamFlags = SPRITE_OAM_ORDER(15);
    s->graphics.size = 0;
    s->graphics.anim = gUnknown_080BB36C[LOADED_SAVE->uiLanguage];
    s->variant = gUnknown_080BB37E[LOADED_SAVE->timeLimitDisabled];
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant |= ~0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &menu->s210;
    s->x = 220;
    s->y = 102;
    s->graphics.dest = VramMalloc(18);
    s->oamFlags = SPRITE_OAM_ORDER(15);
    s->graphics.size = 0;
    if (LOADED_SAVE->language > 1U) {
        s->graphics.anim = 878;
        s->variant = LOADED_SAVE->language - 2;
    } else {
        s->graphics.anim = gUnknown_080BB36C[LOADED_SAVE->uiLanguage];
        s->variant = 10;
    }
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &menu->s240;
    s->x = 0xDC;
    s->y = 0x76;
    s->graphics.dest = VramMalloc(0x10U);
    s->oamFlags = SPRITE_OAM_ORDER(15);
    s->graphics.size = 0;
    s->graphics.anim = gUnknown_080BB36C[LOADED_SAVE->uiLanguage];
    s->variant = gUnknown_080BB380[LOADED_SAVE->unk1C];
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &menu->s270;
    s->x = (DISPLAY_WIDTH / 2);
    s->y = (DISPLAY_HEIGHT / 2);
    s->graphics.dest = VramMalloc(0x90U);
    s->oamFlags = 0;
    s->graphics.size = 0;
    s->graphics.anim = 877;
    s->variant = gUnknown_080BB38A[LOADED_SAVE->uiLanguage];
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &menu->s2A0;
    s->x = 0;
    s->y = 7;
    s->graphics.dest = VramMalloc(12);
    s->oamFlags = 0x40;
    s->graphics.size = 0;
    s->graphics.anim = 867;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &menu->s2D0;
    s->x = 0;
    s->y = 17;
    s->graphics.dest = VramMalloc(0x16U);
    s->oamFlags = 0;
    s->graphics.size = 0;
    s->graphics.anim = gUnknown_080BB378[LOADED_SAVE->uiLanguage];
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &menu->s300;
    s->x = DISPLAY_WIDTH - 1;
    s->y = DISPLAY_HEIGHT - 1;
    s->graphics.dest = VramMalloc(1U);
    s->oamFlags = 0;
    s->graphics.size = 0;
    s->graphics.anim = 0x35F;
    s->variant = 0xF;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x80000;
    UpdateSpriteAnimation(s);

    sp4.uiGfxID = 128;
    sp4.unk2B = 1;
    sp4.tiles = &gUnknown_086CC794[0];
    sp4.tilesSize = sizeof(gUnknown_086CC794);
    sp4.palette = &gUnknown_086CC774[0];
    sp4.paletteSize = sizeof(gUnknown_086CC774);
    sp4.layout = &gUnknown_086CC834[0];
    sp4.layoutSize = sizeof(gUnknown_086CC834);
    sp4.unk28 = 0;
    sp4.unk29 = 0;
    sp4.unk2A = 0x15;
    sub_80528AC(&sp4);

    temp_r0_4 = &menu->unk330;
    temp_r0_4->unk0 = 0;
    temp_r0_4->unk2 = 1;
    temp_r0_4->unk4 = 2;
    temp_r0_4->unk6 = 0;
    temp_r0_4->unk8 = 0x100;
    temp_r0_4->unkA = 0x10;
    sub_805423C(temp_r0_4);

    m4aSongNumStart(MUS_OPTIONS);
}
