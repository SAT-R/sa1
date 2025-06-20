#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/game_over.h"
#include "game/save.h"

#define NUM_LANGSCRN_SPRITES 6

typedef struct {
    /* 0x000 */ StrcUi_805423C unk0;
    /* 0x00C */ u8 fillerC[0x34];
    /* 0x040 */ Sprite sprites[NUM_LANGSCRN_SPRITES];
    /* 0x160 */ u8 filler160[0xB0];
    /* 0x210 */ u8 filler210[0x44];
    /* 0x254 */ s32 unk254;
    /* 0x258 */ u8 filler258[0x34];
    /* 0x28C */ u8 unk28C;
    /* 0x28D */ s8 unk28D;
} EditLanguageScreen; /* 0x290 */

extern const u8 gUnknown_0868B71C[NUM_LANGSCRN_SPRITES];
extern const AnimId gUnknown_0868B6D4[NUM_LANGSCRN_SPRITES][2];
extern const u8 gUnknown_0868B704[NUM_LANGSCRN_SPRITES][2];
extern const u8 gUnknown_0868B728[NUM_LANGSCRN_SPRITES][2];

void Task_EditLanguageScreenInit(void);
void TaskDestructor_EditLanguageScreen(struct Task *t);

#if 0
void CreateEditLanguageScreen(u8 param0)
{
    struct Task *t;
    EditLanguageScreen *screen;
    u8 i;
    for (i = 0; i < 10; i++) {
        gKeysFirstRepeatIntervals[i] = 0x14;
        gKeysContinuedRepeatIntervals[i] = 0x8;
    }

    t = TaskCreate(Task_EditLanguageScreenInit, sizeof(EditLanguageScreen), 0x2000, 0, TaskDestructor_EditLanguageScreen);
    screen = TASK_DATA(t);

	screen->unk28C = param0;
    screen->unk28D = LOADED_SAVE->language;
    screen->unk254 = 0;

	for (i = 0; i < NUM_LANGSCRN_SPRITES; i++) {
        Sprite *s = &screen->sprites[i];
        s->graphics.dest = VramMalloc(gUnknown_0868B71C[i]);

        s->graphics.anim = gUnknown_0868B6D4[i][(i == 0) ? 0 : 1];
        s->variant = gUnknown_0868B704[i][(i == 0) ? 0 : 1];

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
        s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
        UpdateSpriteAnimation(s);
    }
}
#endif