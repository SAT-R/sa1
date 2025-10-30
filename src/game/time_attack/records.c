#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "data/ui_graphics.h"
#include "game/gTask_03006240.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/save.h"
#include "game/stage/ui.h"

#include "constants/animations.h"
#include "constants/characters.h"
#include "constants/songs.h"
#include "constants/text.h"
#include "constants/zones.h"

typedef struct CharacterCard {
    const u8 *tiles;
    s32 tilesSize;
    const u16 *palette;
    const u8 *layout;
} CharacterCard;
extern CharacterCard gCharacterCards[NUM_CHARACTERS][2];

typedef struct TimeAttackRecords {
    /* 0x00 */ Sprite s0;
    /* 0x30 */ Sprite s1;
    /* 0x60 */ Sprite s2;
    /* 0x90 */ Sprite s3;
    /* 0xC0 */ GameOverB overb;
    /* 0xD8 */ StrcUi_805423C strcD8;
    /* 0xE4 */ u8 fillerE4[0x18];
    /* 0xFC */ s8 unkFC[0x4];
    /* 0x100 */ s32 unk100;
    /* 0x100 */ s32 unk104;
    /* 0x100 */ s32 unk108;
    /* 0x100 */ s32 unk10C;
    /* 0x110 */ void *unk110;
} TimeAttackRecords; /* 0x114 */

void TimeAttackRecordsInitUI(u8 *vram);
void Task_806BBC0(void);
void sub_806BDC4(u8 arg0, struct Task *arg1);
void TaskDestructor_806BF38(struct Task *t);

extern u16 gUnknown_086CC774[16];
extern u8 gUnknown_086CC794[0xA0];
extern u8 gUnknown_086CC834[0x500];

extern u16 gUnknown_0868B814[NUM_TIME_ATTACK_ZONES][3];
extern u16 gUnknown_0868B838[ACTS_PER_ZONE][3];
extern u16 gUnknown_0868B844[UILANG_COUNT][12][3];

void TimeAttackRecordsInitUI(u8 *vram)
{
    Strc_80528AC gfx;

    gfx.uiGfxID = UIGFX_TIMER_DIGITS;
    gfx.unk2B = 1;
    gfx.tiles = gUiGraphics[gfx.uiGfxID].tiles;
    gfx.palette = gUiGraphics[gfx.uiGfxID].palette;
    gfx.tilesSize = 0x580;
    gfx.paletteSize = (16 * sizeof(u16));
    gfx.unk28 = 6;
    gfx.vramC = vram;
    gfx.unk2A = 0xD;
    gfx.unk0.unk4 = gUiGraphics[gfx.uiGfxID].unk8;
    gfx.unk0.unk8 = gUiGraphics[gfx.uiGfxID].unkC;
    gfx.unk0.unk9 = gUiGraphics[gfx.uiGfxID].unk10;
    gfx.unk0.unkA = gUiGraphics[gfx.uiGfxID].unk14;
    gfx.unk0.unkB = gUiGraphics[gfx.uiGfxID].unk18;
    sub_80528AC(&gfx);

    gfx.uiGfxID = UIGFX_OPTIONS;
    gfx.unk2B = 0;
    gfx.tiles = gCharacterCards[gSelectedCharacter][1].tiles;
    gfx.tilesSize = gCharacterCards[gSelectedCharacter][1].tilesSize;
    gfx.palette = gCharacterCards[gSelectedCharacter][1].palette;
    gfx.paletteSize = (256 * sizeof(u16));
    gfx.layout = gCharacterCards[gSelectedCharacter][1].layout;
    gfx.layoutSize = 0x600;
    gfx.unk28 = 0;
    gfx.unk29 = 1;
    gfx.unk2A = 0x11;
    sub_80528AC(&gfx);

    gfx.uiGfxID = UIGFX_OPTIONS;
    gfx.unk2B = 2;
    gfx.tiles = gCharacterCards[gSelectedCharacter][0].tiles;
    gfx.tilesSize = gCharacterCards[gSelectedCharacter][0].tilesSize;
    gfx.palette = gCharacterCards[gSelectedCharacter][0].palette;
    gfx.paletteSize = (256 * sizeof(u16));
    gfx.layout = gCharacterCards[gSelectedCharacter][0].layout;
    gfx.layoutSize = 0x600;
    gfx.unk28 = 0;
    gfx.unk29 = 0;
    gfx.unk2A = 0x15;
    sub_80528AC(&gfx);
}

void CreateTimeAttackRecords()
{
    struct Task *sp4;
    GameOverB *temp_r4;
    Sprite *s;
    StrcUi_805423C *temp_r2;
    u8 var_r4;
    void *vram;

    TimeAttackRecords *recs;

    sub_80535FC();
    UiGfxStackInit();
    gDispCnt = 0x1340;
    gBgCntRegs[0] = 0x1E83;
    gBgCntRegs[1] = 0x1C86;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    vram = VramMalloc(44);
    TimeAttackRecordsInitUI(vram);
    sp4 = TaskCreate(Task_806BBC0, sizeof(TimeAttackRecords), 0x2000U, 0U, TaskDestructor_806BF38);
    recs = TASK_DATA(sp4);
    temp_r2 = &recs->strcD8;
    recs->unk104 = 0;
    recs->unk108 = 0;
    recs->unk10C = 0;
    recs->unk110 = vram;
    recs->unkFC[0] = 0x21;
    recs->unkFC[1] = 0x22;
    recs->unkFC[2] = 0x23;

    s = &recs->s0;
    s->graphics.dest = VramMalloc(gUnknown_0868B814[LEVEL_TO_ZONE(gCurrentLevel)][0]);
    s->graphics.anim = gUnknown_0868B814[LEVEL_TO_ZONE(gCurrentLevel)][1];
    s->variant = gUnknown_0868B814[LEVEL_TO_ZONE(gCurrentLevel)][2];
    s->x = 25;
    s->y = 24;
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->oamFlags = 0x480;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    s = &recs->s1;
    s->graphics.dest = VramMalloc(gUnknown_0868B838[ACT_INDEX(gCurrentLevel)][0]);
    s->graphics.anim = gUnknown_0868B838[ACT_INDEX(gCurrentLevel)][1];
    s->variant = gUnknown_0868B838[ACT_INDEX(gCurrentLevel)][2];
    s->x = 93;
    s->y = 27;
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->oamFlags = 0x480;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);
    s = &recs->s2;
    s->graphics.dest = VramMalloc(0xCU);
    s->graphics.anim = SA1_ANIM_MP_ACT_MSG_EN;
    s->variant = 2;
    s->x = 25;
    s->y = 80;
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->oamFlags = 0x480;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    s = &recs->s3;
    s->graphics.dest = VramMalloc(gUnknown_0868B844[LOADED_SAVE->uiLanguage][gCurrentLevel][0]);
    s->graphics.anim = gUnknown_0868B844[LOADED_SAVE->uiLanguage][gCurrentLevel][1];
    s->variant = gUnknown_0868B844[LOADED_SAVE->uiLanguage][gCurrentLevel][2];
    recs->unk100 = -Q(90);
    s->x = -90;
    s->y = 48;
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->oamFlags = 0x480;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    temp_r4 = &recs->overb;
    temp_r4->qUnkA = 0xF0;
    temp_r4->unkC = 0x8C;
    temp_r4->unkE = 8;
    temp_r4->unk10 = 1;
    temp_r4->unk12 = 6;
    temp_r4->unk16 = 1;
    temp_r4->unk8 = 0x18;

    for (var_r4 = 0; var_r4 < 3; var_r4++) {
        sub_806BDC4(var_r4, sp4);
    }

    temp_r2->unk0 = 0;
    temp_r2->unk2 = 1;
    temp_r2->unk4 = 2;
    temp_r2->unk6 = 0;
    temp_r2->unk8 = 0x100;
    temp_r2->unkA = 0x10;
    sub_805423C(temp_r2);

    m4aSongNumStartOrContinue(MUS_COURSE_SELECTION);
}
