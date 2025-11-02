#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/save.h"

#include "constants/songs.h"
#include "constants/text.h"

typedef struct MPResults {
    /* 0x00 */ Background bg;
    /* 0x40 */ Sprite s;
    /* 0x70 */ Sprite s2;
    /* 0xA0 */ u8 fillerA0[0x120];
    /* 0x1C0 */ Sprite spr1C0;
    /* 0x1F0 */ u8 filler1F0[0xC];
    /* 0x200 */ s32 unk1FC;
    /* 0x200 */ u16 unk200;
    /* 0x200 */ u8 unk202;
    /* 0x200 */ u8 unk203;
    /* 0x204 */ u8 filler204[0xF];
    /* 0x213 */ u8 unk213;
    /* 0x214 */ u8 filler214[0x8];
} MPResults; /* 0x21C */

void sub_801874C(void);
const AnimId gUnknown_080BB488[UILANG_COUNT] = { 895, 894 };
const u8 gUnknown_080BB48C[4] = { 0x38, 0x5C, 0x40, 0x68 };

void sub_8018538(void)
{
    MPResults *strc;
    Sprite *s;

    gMultiplayerMissingHeartbeats[3] = 0;
    gMultiplayerMissingHeartbeats[2] = 0;
    gMultiplayerMissingHeartbeats[1] = 0;
    gMultiplayerMissingHeartbeats[0] = 0;
    gDispCnt = 0x1141;
    gBgCntRegs[0] = 0x1E03;
    gBldRegs.bldCnt = 0;
    gBldRegs.bldY = 0;
    strc = TASK_DATA(TaskCreate(sub_801874C, sizeof(MPResults), 0x2000U, 0U, NULL));
    strc->unk200 = 0;
    strc->unk203 = 0;
    strc->unk1FC = 0;
    strc->unk213 = 0;

    s = &strc->s;
    s->x = 232;
    s->y = 64;
    s->graphics.dest = (void *)OBJ_VRAM0;
    s->oamFlags = 0x3C0;
    s->graphics.size = 0;
    s->graphics.anim = gUnknown_080BB488[LOADED_SAVE->uiLanguage];
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    s = &strc->s2;
    s->x = 0;
    s->y = 64;
    s->graphics.dest = (void *)OBJ_VRAM0 + 0x2C0;
    s->oamFlags = 0x400;
    s->graphics.size = 0;
    s->graphics.anim = 0x35C;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    s = &strc->spr1C0;
    s->x = (DISPLAY_WIDTH / 2);
    s->y = (DISPLAY_HEIGHT / 2);
    s->graphics.dest = strc->s2.graphics.dest + 0x180;
    s->oamFlags = 0x80;
    s->graphics.size = 0;
    s->graphics.anim = 0x389;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    strc->bg.graphics.dest = (void *)BG_VRAM;
    strc->bg.graphics.anim = 0;
    strc->bg.layoutVram = (u16 *)(BG_VRAM + 0xF000);
    strc->bg.unk18 = 0;
    strc->bg.unk1A = 0;
    strc->bg.tilemapId = LOADED_SAVE->uiLanguage + 0x54;
    strc->bg.unk1E = 0;
    strc->bg.unk20 = 0;
    strc->bg.unk22 = 0;
    strc->bg.unk24 = 0;
    strc->bg.targetTilesX = 30;
    strc->bg.targetTilesY = 20;
    strc->bg.paletteOffset = 0;
    strc->bg.flags = 0;
    DrawBackground(&strc->bg);
    m4aSongNumStartOrChange(MUS_006);
}
