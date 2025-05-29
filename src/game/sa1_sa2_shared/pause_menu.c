#include "global.h"
#include "core.h"
#include "flags.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/save.h"
#include "game/time_attack/lobby.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ Sprite s;
    /* 0x30 */ Sprite s2;
    /* 0x60 */ u16 frames;
} PauseMenu;

void Task_PauseMenuUpdate(void);
void Task_PauseMenuInit(void);
void TaskDestructor_PauseMenu(struct Task *t);

void CreatePauseMenu(void)
{
    if (!(gStageFlags & STAGE_FLAG__DISABLE_PAUSE_MENU)) {
        // _0801A3AA

        struct Task *t = TaskCreate(Task_PauseMenuInit, sizeof(PauseMenu), -2, 4, TaskDestructor_PauseMenu);
        PauseMenu *pm = TASK_DATA(t);
        Sprite *s;

        pm->frames = 0;

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

void Task_PauseMenuUpdate(void)
{
    PauseMenu *pm = TASK_DATA(gCurTask);

    if (gPressedKeys & START_BUTTON) {
        gFlags &= ~FLAGS_PAUSE_GAME;
        m4aMPlayAllContinue();
        TaskDestroy(gCurTask);
        return;
    }

    if ((gGameMode == GAME_MODE_TIME_ATTACK) && (gPressedKeys & A_BUTTON)) {
        gFlags &= ~FLAGS_PAUSE_GAME;
        m4aSongNumStart(SE_SELECT);

        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        SA2_LABEL(gUnknown_03005390) = 0;
        PAUSE_GRAPHICS_QUEUE();

        CreateTimeAttackLobbyScreen();
    } else {
        if (gBldRegs.bldY > 0) {
            pm->s2.frameFlags |= SPRITE_FLAG(OBJ_MODE, 1);
            pm->s.frameFlags |= SPRITE_FLAG(OBJ_MODE, 1);
        } else {
            pm->s2.frameFlags &= ~SPRITE_FLAG_MASK_OBJ_MODE;
            pm->s.frameFlags &= ~SPRITE_FLAG_MASK_OBJ_MODE;
        }

        if (gGameMode == GAME_MODE_TIME_ATTACK) {
            if (++pm->frames >= GBA_FRAMES_PER_SECOND) {
                pm->frames = 0;

                if (pm->s2.graphics.anim == SA1_ANIM_PAUSE) {
                    pm->s2.graphics.anim = SA1_ANIM_PAUSE_TA;
                    pm->s2.variant = LOADED_SAVE->uiLanguage;
                } else {
                    pm->s2.graphics.anim = SA1_ANIM_PAUSE;
                    pm->s2.variant = 0;
                }

                UpdateSpriteAnimation(&pm->s2);
            }
        }

        DisplaySprite(&pm->s2);
        DisplaySprite(&pm->s);
    }
}

void Task_PauseMenuInit(void)
{
    u32 i;

    for (i = 0; i < 4; i++) {
        if (i != gSongTable[SE_PAUSE].ms) {
            MPlayStop(gMPlayTable[i].info);
        }
    }

    m4aSongNumStart(SE_PAUSE);

    gFlags |= FLAGS_PAUSE_GAME;

    gCurTask->main = Task_PauseMenuUpdate;
}

void TaskDestructor_PauseMenu(struct Task *t)
{
    PauseMenu *pm = TASK_DATA(t);
    VramFree(pm->s2.graphics.dest);
    VramFree(pm->s.graphics.dest);
}