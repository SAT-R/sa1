#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/multiplayer/mode_select.h"
#include "game/save.h"

#include "constants/songs.h"
#include "constants/text.h"

typedef struct ModeSelect {
    /* 0x00 */ Background bg;
    /* 0x40 */ Sprite s;
    /* 0x40 */ Sprite s2;
    /* 0xA0 */ u8 fillerA0[0x15C];
    /* 0x200 */ s32 unk1FC;
    /* 0x200 */ s16 unk200;
    /* 0x202 */ u8 unk202;
    /* 0x203 */ u8 unk203;
    /* 0x204 */ u8 filler204[0x4];
    /* 0x200 */ s16 unk208;
    /* 0x204 */ u8 filler20A[0x12];
} ModeSelect; /* 0x21C */

extern const AnimId gUnknown_080BB348[UILANG_COUNT];

void Task_MultiplayerModeSelectScreenInit(void);

extern void CreatePlayerNameInputMenu();

void CreateMultiplayerModeSelectScreen(void)
{
    Sprite *s;
    ModeSelect *modeSelect;
    Background *bg;

    if (gLoadedSaveGame.unk4 == 0) {
        m4aSongNumStartOrChange(MUS_CHARACTER_SELECTION);
        gGameMode = 2;
        CreatePlayerNameInputMenu();
        return;
    }
    gDispCnt = 0x1141;
    gBgCntRegs[0] = 0x1E03;
    modeSelect = TASK_DATA(TaskCreate(Task_MultiplayerModeSelectScreenInit, sizeof(ModeSelect), 0x2000U, 0U, NULL));
    modeSelect->unk200 = 0;
    modeSelect->unk203 = 0;
    modeSelect->unk1FC = 0;
    modeSelect->unk208 = 0x1000;

    gBldRegs.bldCnt = 0xFF;
    gBldRegs.bldY = 0x10;

    s = &modeSelect->s;
    s->x = 232;
    s->y = 64;
    s->graphics.dest = (void *)OBJ_VRAM0;
    s->oamFlags = SPRITE_OAM_ORDER(15);
    s->graphics.size = 0;
    s->graphics.anim = gUnknown_080BB348[LOADED_SAVE->uiLanguage];
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    s = &modeSelect->s2;
    s->x = 0;
    s->y = 64;
    s->graphics.dest = (void *)(OBJ_VRAM0 + 0x840);
    s->oamFlags = 0x400;
    s->graphics.size = 0;
    s->graphics.anim = 860;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    bg = &modeSelect->bg;
    bg->graphics.dest = (void *)BG_VRAM;
    bg->graphics.anim = 0;
    bg->layoutVram = (void *)(BG_VRAM + 0xF000);
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->tilemapId = (s16)(LOADED_SAVE->uiLanguage + 0x4C);
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->targetTilesX = 30;
    bg->targetTilesY = 20;
    bg->paletteOffset = 0;
    bg->flags = 0;
    DrawBackground(bg);

    m4aSongNumStartOrChange(MUS_CHARACTER_SELECTION);
}
