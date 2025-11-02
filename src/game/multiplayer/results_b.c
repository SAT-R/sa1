#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/character_select.h"
#include "game/multiplayer/multipak_connection.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/save.h"

#include "constants/animations.h"
#include "constants/songs.h"
#include "constants/text.h"

typedef struct MPResultsB {
    /* 0x00 */ Background bg;
    /* 0x40 */ Background bg2;
    /* 0x80 */ Sprite s;
    /* 0xB0 */ Sprite s2;
    /* 0xE0 */ Sprite s3;
    /* 0x110 */ Sprite s4;
    /* 0x140 */ Sprite s5;
    /* 0x170 */ u8 filler170[0x90];
    /* 0x200 */ Sprite spr200;
    /* 0x230 */ s32 unk230;
    /* 0x234 */ u16 unk234;
    /* 0x236 */ u16 unk236;
    /* 0x238 */ u16 unk238;
    /* 0x23A */ u16 unk23A;
    /* 0x23C */ u16 unk23C;
    /* 0x23E */ u16 unk23E;
    /* 0x240 */ u16 unk240;
    /* 0x240 */ u16 unk242;
    /* 0x240 */ u16 unk244;
    /* 0x246 */ u8 unk246;
    /* 0x247 */ u8 unk247;
} MPResultsB; /* 0x248 */

void Task_8018ECC(void);

void sub_8018AE0()
{
    void *sp4;
    Background *bg;
    Sprite *s;
    void *temp_r0;

    MPResultsB *strc;

    sp4 = (void *)OBJ_VRAM0;
    gMultiplayerMissingHeartbeats[3] = 0;
    gMultiplayerMissingHeartbeats[2] = 0;
    gMultiplayerMissingHeartbeats[1] = 0;
    gMultiplayerMissingHeartbeats[0] = 0;
    gDispCnt = 0x1340;
    gBgCntRegs[0] = 0x1E03;
    gBgCntRegs[1] = 0x1F06;
    strc = TASK_DATA(TaskCreate(Task_8018ECC, sizeof(MPResultsB), 0x2000U, 0U, NULL));
    bg = &strc->bg;
    strc->unk234 = 0;
    strc->unk236 = 0;
    strc->unk238 = 0;
    strc->unk247 = 0;
    strc->unk246 = 1;
    strc->unk230 = 0;
    strc->unk23A = 0;
    strc->unk23C = 0;
    strc->unk23E = 0;
    strc->unk240 = 0;

    s = &strc->s;
    s->x = 0;
    s->y = 0x19;
    s->graphics.dest = sp4;
    s->oamFlags = 0x3C0;
    s->graphics.size = 0;
    s->graphics.anim = 0x37E;
    strc->s.variant = 2;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    strc->s.prevVariant = 0xFF;
    strc->s.animSpeed = 0x10;
    strc->s.palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    sp4 += 0x340;
    s = &strc->s2;
    s->x = 0;
    s->y = 0xE;
    s->graphics.dest = sp4;
    s->oamFlags = 0x400;
    s->graphics.size = 0;
    s->graphics.anim = 860;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    sp4 += 0x180;
    s = &strc->s3;
    s->x = 0x35;
    s->y = 0x58;
    s->graphics.dest = sp4;
    s->oamFlags = 0x400;
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_MP_OUTCOME_MESSAGES;
    s->variant = 2;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    sp4 += 0x180;
    s = &strc->s4;
    s->x = 0xB7;
    s->y = 0x58;
    s->graphics.dest = sp4;
    s->oamFlags = 0x400;
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_MP_OUTCOME_MESSAGES;
    s->variant = 3;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    sp4 += 0x100;
    s = &strc->s5;
    s->x = 25;
    s->y = 73;
    s->graphics.dest = sp4;
    s->oamFlags = 0x400;
    s->graphics.size = 0;
    s->graphics.anim = 858;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    sp4 += 0x380;
    s = &strc->spr200;
    s->x = 120;
    s->y = 80;
    s->graphics.dest = sp4;
    s->oamFlags = 0x80;
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_VS_MENU_WAIT;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    bg->graphics.dest = (void *)BG_VRAM;
    bg->graphics.anim = 0;
    bg->layoutVram = (u16 *)(BG_VRAM + 0xF000);
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->tilemapId = 81;
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->targetTilesX = 30;
    bg->targetTilesY = 20;
    bg->paletteOffset = 0;
    bg->flags = 0;
    DrawBackground(bg);

    bg = &strc->bg2;
    bg->graphics.dest = (void *)(BG_VRAM + 0x4000);
    bg->graphics.anim = 0;
    bg->layoutVram = (void *)(BG_VRAM + 0xF800);
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->tilemapId = 82;
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->targetTilesX = 32;
    bg->targetTilesY = 32;
    bg->paletteOffset = 0;
    bg->flags = 1;
    DrawBackground(bg);

    m4aSongNumStartOrChange(3U);

    gRepeatedKeys = 0;
    gPressedKeys = 0;
    gInput = 0;
    gWinRegs[5] = 0x3F;
    gBldRegs.bldCnt = 0x3F46;
    gBldRegs.bldAlpha = 0xA10;
    gWinRegs[2] = 0xA0;
}
