#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/sa1_sa2_shared/globals.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    /* 0x00 */ Sprite s;
    /* 0x30 */ Sprite s2;
    /* 0x60 */ u16 unk60;
} PauseMenu;

void Task_PauseMenuInit(void);
void TaskDestructor_PauseMenu(struct Task *t);

void CreatePauseMenu(void)
{
    if (!(gStageFlags & STAGE_FLAG__DISABLE_PAUSE_MENU)) {
        // _0801A3AA

        struct Task *t = TaskCreate(Task_PauseMenuInit, sizeof(PauseMenu), -2, 4, TaskDestructor_PauseMenu);
        PauseMenu *pm = TASK_DATA(t);
        Sprite *s;

        pm->unk60 = 0;

        if (gGameMode == GAME_MODE_TIME_ATTACK) {
            // Time Attack
            s = &pm->s;
            s->graphics.dest = ALLOC_TILES(SA1_ANIM_PAUSE_BACKGROUND_TA);
            s->oamFlags = SPRITE_OAM_ORDER(1);
            s->graphics.size = 0;
            s->graphics.anim = SA1_ANIM_PAUSE_BACKGROUND_TA;
            s->variant = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = -1;
            s->animSpeed = SPRITE_ANIM_SPEED(1.0);
            s->palId = 0;
            s->x = (DISPLAY_WIDTH / 2);
            s->y = (DISPLAY_HEIGHT / 2);
            s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
            UpdateSpriteAnimation(s);

            // TODO: ALLOC_TILES max of SA1_ANIM_PAUSE_TA and SA1_ANIM_PAUSE.
            // NOTE: Defaults to SA1_ANIM_PAUSE, as switches to SA1_ANIM_PAUSE_TA every couple frames.
            s = &pm->s2;
            s->graphics.dest = ALLOC_TILES(SA1_ANIM_PAUSE_TA);
            s->oamFlags = SPRITE_OAM_ORDER(1);
            s->graphics.size = 0;
            s->graphics.anim = SA1_ANIM_PAUSE;
            s->variant = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = -1;
            s->animSpeed = SPRITE_ANIM_SPEED(1.0);
            s->palId = 0;
            s->x = (DISPLAY_WIDTH / 2);
            s->y = (DISPLAY_HEIGHT / 2);
            s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
            UpdateSpriteAnimation(s);
        } else {
            // Not Time Attack
            s = &pm->s;
            s->graphics.dest = ALLOC_TILES(SA1_ANIM_PAUSE_BACKGROUND);
            s->oamFlags = SPRITE_OAM_ORDER(1);
            s->graphics.size = 0;
            s->graphics.anim = SA1_ANIM_PAUSE_BACKGROUND;
            s->variant = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = -1;
            s->animSpeed = SPRITE_ANIM_SPEED(1.0);
            s->palId = 0;
            s->x = (DISPLAY_WIDTH / 2);
            s->y = (DISPLAY_HEIGHT / 2);
            s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
            UpdateSpriteAnimation(s);

            // TODO: ALLOC_TILES max of SA1_ANIM_PAUSE_TA and SA1_ANIM_PAUSE.
            s = &pm->s2;
            s->graphics.dest = ALLOC_TILES(SA1_ANIM_PAUSE);
            s->oamFlags = SPRITE_OAM_ORDER(1);
            s->graphics.size = 0;
            s->graphics.anim = SA1_ANIM_PAUSE;
            s->variant = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = -1;
            s->animSpeed = SPRITE_ANIM_SPEED(1.0);
            s->palId = 0;
            s->x = (DISPLAY_WIDTH / 2);
            s->y = (DISPLAY_HEIGHT / 2);
            s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
            UpdateSpriteAnimation(s);
        }
    }
}