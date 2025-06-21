#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/game_over.h"
#include "game/options_screen.h" // contains EditLanguageScreen
#include "game/save.h"
#include "game/stage/ui.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/tilemaps.h"

#define LANGSCRN_BG_SCREENBASE 30

extern const AnimId gUnknown_0868B6D4[NUM_LANGSCRN_SPRITES][2];
extern const AnimId gUnknown_0868B6EC[][NUM_LANGSCRN_SPRITES_TYPE_2][2];
extern const u8 gUnknown_0868B704[NUM_LANGSCRN_SPRITES][2];
extern const u8 gUnknown_0868B710[][NUM_LANGSCRN_SPRITES_TYPE_2][2];
extern const u8 gUnknown_0868B71C[NUM_LANGSCRN_SPRITES_TYPE_1];
extern const u8 gUnknown_0868B722[NUM_LANGSCRN_SPRITES_TYPE_2][3];
extern const u8 gUnknown_0868B728[NUM_LANGSCRN_SPRITES][2];
extern const u8 gUnknown_0868B734[][NUM_LANGSCRN_SPRITES_TYPE_2][2];
void Task_EditLanguageScreenInit(void);
void TaskDestructor_EditLanguageScreen(struct Task *t);

void CreateEditLanguageScreen(u8 param0)
{
    struct Task *t;
    EditLanguageScreen *screen;
    StrcUi_805423C *unk280;
    Background *bg;
    Sprite *s;
    u8 i;
    for (i = 0; i < 10; i++) {
        gKeysFirstRepeatIntervals[i] = 0x14;
        gKeysContinuedRepeatIntervals[i] = 0x8;
    }

    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_OBJ_1D_MAP;
    gBgCntRegs[0] = BGCNT_SCREENBASE(LANGSCRN_BG_SCREENBASE) | BGCNT_PRIORITY(3);
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;

    t = TaskCreate(Task_EditLanguageScreenInit, sizeof(EditLanguageScreen), 0x2000, 0, TaskDestructor_EditLanguageScreen);
    screen = TASK_DATA(t);

    unk280 = &screen->unk280;
    screen->unk28C = param0;
    screen->unk28D = LOADED_SAVE->language;
    screen->unk254 = 0;

    for (i = 0; i < NUM_LANGSCRN_SPRITES_TYPE_1; i++) {
        s = &screen->sprites[i];
        s->graphics.dest = VramMalloc(gUnknown_0868B71C[i]);

        s->graphics.anim = gUnknown_0868B6D4[i][(screen->unk28D == 0) ? 0 : 1];
        s->variant = gUnknown_0868B704[i][(screen->unk28D == 0) ? 0 : 1];

        s->x = gUnknown_0868B728[i][0];
        s->y = gUnknown_0868B728[i][1];

        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = Q(0);
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
        s->oamFlags = SPRITE_OAM_ORDER(18);
        s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
        UpdateSpriteAnimation(s);
    }

    for (; i < NUM_LANGSCRN_SPRITES_TYPE_1 + NUM_LANGSCRN_SPRITES_TYPE_2; i++) {
        s = &screen->sprites[i];
        s->graphics.dest = VramMalloc(gUnknown_0868B722[screen->unk28C][i - NUM_LANGSCRN_SPRITES_TYPE_1]);
        s->graphics.anim = gUnknown_0868B6EC[screen->unk28C][i - NUM_LANGSCRN_SPRITES_TYPE_1][(screen->unk28D != 0) ? 1 : 0];
        s->variant = gUnknown_0868B710[screen->unk28C][i - NUM_LANGSCRN_SPRITES_TYPE_1][(screen->unk28D != 0) ? 1 : 0];
        s->x = gUnknown_0868B734[screen->unk28C * 3][i - NUM_LANGSCRN_SPRITES_TYPE_1][0];
        s->y = gUnknown_0868B734[screen->unk28C * 3][i - NUM_LANGSCRN_SPRITES_TYPE_1][1];
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = Q(0);
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
        s->oamFlags = SPRITE_OAM_ORDER(18);
        s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
        UpdateSpriteAnimation(s);
    }

    s = &screen->sprites[NUM_LANGSCRN_SPRITES_TYPE_1 + NUM_LANGSCRN_SPRITES_TYPE_2];
    s->graphics.dest = ALLOC_TILES(SA1_ANIM_MENU_CURSOR);
    s->graphics.anim = SA1_ANIM_MENU_CURSOR;
    s->variant = 0;
    s->x = 33;
    s->y = 25;
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    UpdateSpriteAnimation(s);

    bg = &screen->bg;
    bg->graphics.dest = (void *)BG_VRAM;
    bg->graphics.anim = 0;
    bg->layoutVram = (void *)BG_SCREEN_ADDR(LANGSCRN_BG_SCREENBASE);
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->tilemapId = TM_TILEMAP_89;
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->targetTilesX = 30;
    bg->targetTilesY = 20;
    bg->paletteOffset = 0;
    bg->flags = 0;
    DrawBackground(bg);

    unk280->unk0 = 0;
    unk280->unk2 = 1;
    unk280->unk4 = 2;
    unk280->unk6 = 0;
    unk280->unk8 = 0x100;
    unk280->unkA = 0x10;
    sub_805423C(unk280);
}
