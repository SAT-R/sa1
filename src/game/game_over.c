#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "malloc_vram.h"
#include "game/gTask_03006240.h"
#include "game/game_over.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/sa1_sa2_shared/camera.h"
#include "data/ui_graphics.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ Sprite s;
    /* 0x30 */ u8 filler30[0xC];
    /* 0x3C */ Sprite s2;
    /* 0x6C */ u8 filler6C[0xC];
    /* 0x78 */ u32 frames;
    /* 0x7C */ u32 lostLifeCause;
    /* 0x80 */ u8 unk80;
} GameOverScreen;

typedef struct GameOverC {
    /* 0x00 */ u16 unk0;
    /* 0x02 */ u16 unk2;
    /* 0x04 */ u16 unk4;
    /* 0x06 */ u16 unk6;
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u8 unkA;
    /* 0x0B */ u8 unkB;
    /* 0x0C */ void *unkC;
    /* 0x10 */ void *unk10;
    /* 0x14 */ void *unk14;
    /* 0x18 */ u32 unk18;
} GameOverC; /* 0x1C */

typedef struct GameOverD {
    /* 0x00 */ u8 filler0[0x18];
    /* 0x18 */ GameOverScreen *unk18;
    /* 0x1C */ GameOverB *unk1C;
    /* 0x1C */ GameOverC *unk20;
    /* 0x24 */ u32 unk24;
    /* 0x28 */ u16 unk28;
    /* 0x26 */ u8 filler2A[0x2];
    /* 0x2C */ void *vram2C;
    /* 0x30 */ void *vram30;
} GameOverD; /* 0x34 */

void Task_GameOverScreenInit(void);
void Task_8056100(void);
void Task_805618C(void);
void Task_8056218(void);
void Task_8056348(void);
void Task_80565C4(void);

void Task_8056CE0(void);
void Task_8056E24(void);
void Task_8056F54(void);
void Task_8056FA0(void);
void TaskDestructor_GameOverScreen(struct Task *t);
void TaskDestructor_8056F30(struct Task *t);

// NOTE: Not sure whether proc is part of game__stage__ui.s or game__game_over.s
//       It is only called in game_over, so it should be here?
//       But it also references gUiGraphics.
void sub_8055C50(Strc_8055C50 *param0)
{
    Strc_80528AC sp00;
    sub_8053674();

    sp00.uiGfxID = UIGFX_TIMER_DIGITS;
    sp00.unk2B = 4;
    sp00.tiles = gUiGraphics[UIGFX_TIMER_DIGITS].tiles;
    sp00.palette = gUiGraphics[UIGFX_TIMER_DIGITS].palette;
    sp00.unk18 = 0x500;
    sp00.unk24 = 32;
    sp00.unk28 = 6;
    sp00.vramC = param0->vram4;
    sp00.unk2A = 13;
    sp00.unk4 = gUiGraphics[UIGFX_TIMER_DIGITS].unk8;
    sp00.unk8 = gUiGraphics[UIGFX_TIMER_DIGITS].unkC;
    sp00.unk9 = gUiGraphics[UIGFX_TIMER_DIGITS].unk10;
    sp00.unkA = gUiGraphics[UIGFX_TIMER_DIGITS].unk14;
    sp00.unkB = gUiGraphics[UIGFX_TIMER_DIGITS].unk18;
    sub_80528AC(&sp00);

    sp00.uiGfxID = UIGFX_OK;
    sp00.unk2B = 5;
    sp00.tiles = gUiGraphics[UIGFX_OK].tiles;
    sp00.palette = gUiGraphics[UIGFX_OK].palette;
    sp00.unk18 = 0x200;
    sp00.unk24 = 32;
    sp00.unk28 = 6;
    sp00.vramC = param0->vram0;
    sp00.unk2A = 13;
    sp00.unk4 = gUiGraphics[UIGFX_OK].unk8;
    sp00.unk8 = gUiGraphics[UIGFX_OK].unkC;
    sp00.unk9 = gUiGraphics[UIGFX_OK].unk10;
    sp00.unkA = gUiGraphics[UIGFX_OK].unk14;
    sp00.unkB = gUiGraphics[UIGFX_OK].unk18;
    sub_80528AC(&sp00);

    sp00.uiGfxID = UIGFX_CHAR_SELECT_BLACK_BOX_2;
    sp00.unk2B = 14;
    sp00.tiles = gUiGraphics[UIGFX_CHAR_SELECT_BLACK_BOX_2].tiles;
    sp00.palette = gUiGraphics[UIGFX_CHAR_SELECT_BLACK_BOX_2].palette;
    sp00.unk18 = 0x200;
    sp00.unk24 = 32;
    sp00.unk28 = 6;
    sp00.vramC = param0->vram8;
    sp00.unk2A = 13;
    sp00.unk4 = gUiGraphics[UIGFX_CHAR_SELECT_BLACK_BOX_2].unk8;
    sp00.unk8 = gUiGraphics[UIGFX_CHAR_SELECT_BLACK_BOX_2].unkC;
    sp00.unk9 = gUiGraphics[UIGFX_CHAR_SELECT_BLACK_BOX_2].unk10;
    sp00.unkA = gUiGraphics[UIGFX_CHAR_SELECT_BLACK_BOX_2].unk14;
    sp00.unkB = gUiGraphics[UIGFX_CHAR_SELECT_BLACK_BOX_2].unk18;
    sub_80528AC(&sp00);
}

void CreateGameOverScreen(LostLifeCause lostLifeCause)
{
    struct Task *t = NULL;
    struct Task *t2;
    GameOverScreen *screen;
    Sprite *s;
    Strc_8055C50 strc;

    if (gCurrentLevel == LEVEL_INDEX(ZONE_6, ACT_1)) {
        gCamera.SA2_LABEL(unk50) |= 0x2000;
    }

    gBldRegs.bldCnt = 0;
    gBldRegs.bldY = 0;
    gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, 0);
    gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, 0);
    gWinRegs[WINREG_WIN1H] = WIN_RANGE(0, 0);
    gWinRegs[WINREG_WIN1V] = WIN_RANGE(0, 0);

    t2 = TaskCreate(Task_GameOverScreenInit, sizeof(GameOverScreen), 0x2000, 0, TaskDestructor_GameOverScreen);
    screen = TASK_DATA(t2);

    screen->frames = 0;
    screen->lostLifeCause = lostLifeCause;
    screen->unk80 = 0;

    s = &screen->s;
    s->graphics.dest = ALLOC_TILES(SA1_ANIM_GAME_OVER);
    s->graphics.size = 0;
    s->frameFlags = 0x80;
    s->x = DISPLAY_WIDTH + 16;
    s->y = 0;
    s->oamFlags = 3;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;

    m4aSongNumStart(MUS_GAME_OVER);

    if ((lostLifeCause & 0x3) != 0) {
        s->graphics.anim = SA1_ANIM_GAME_OVER;
        s->variant = 0;
    } else if (lostLifeCause & 0x4) {
        s->graphics.anim = SA1_ANIM_GAME_OVER;
        s->variant = 2;
    }

    s = &screen->s2;
    s->graphics.dest = ALLOC_TILES(SA1_ANIM_GAME_OVER);
    s->graphics.size = 0;
    s->frameFlags = 0x80;
    s->x = 20;
    s->y = 120;
    s->oamFlags = 3;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;

    if ((lostLifeCause & 0x3) != 0) {
        s->graphics.anim = SA1_ANIM_GAME_OVER;
        s->variant = 1;
    } else if (lostLifeCause & 0x4) {
        s->graphics.anim = SA1_ANIM_GAME_OVER;
        s->variant = 3;
    }

    {
        GameOverB *overB;
        GameOverC *overC;
        GameOverD *overD;

        if ((lostLifeCause & 0x5) != 0) {
            t2 = TaskCreate(Task_8056F54, sizeof(GameOverB), 0x2000, 0, NULL);
            overB = TASK_DATA(t2);
            overB->unk18 = 0;
            overB->qUnkA = -Q(1);
            overB->unkC = 90;
            overB->unkE = 8;
            overB->unk10 = 14;
            overB->unk12 = 6;
            overB->unk16 = 1;
            overB->unk8 = 10;
            overB->vram1C = VramMalloc(16); // TODO: ALLOC_TILES()!

            t = TaskCreate(Task_8056CE0, sizeof(GameOverC), 0x2000, 0, TaskDestructor_8056F30);
            overC = TASK_DATA(t);
            overC->unk18 = 0;
            overC->unk0 = 0;
            overC->unk2 = 1;
            overC->unk4 = 1;
            overC->unk6 = 0;
            overC->unk8 = 64;
            overC->unkA = 1;

            t2 = TaskCreate(Task_8056FA0, sizeof(GameOverD), 0x2000, 0, NULL);
            overD = TASK_DATA(t2);
            overD->unk24 = 0;
            overD->unk28 = 9;
            overD->vram2C = VramMalloc(40); // TODO: ALLOC_TILES()!
            overD->vram30 = VramMalloc(16); // TODO: ALLOC_TILES()!
            overD->unk1C = overB;
            overD->unk18 = screen;
            overD->unk20 = overC;
            strc.vram8 = overB->vram1C;
            strc.vram0 = overD->vram30;
            strc.vram4 = overD->vram2C;
            overC->unk14 = strc.vram8;
            overC->unkC = strc.vram0;
            overC->unk10 = strc.vram4;
        } else if ((lostLifeCause & 0x2) != 0) {
            t = TaskCreate(Task_8056E24, sizeof(GameOverC), 0x2000, 0, TaskDestructor_8056F30);
            overC = TASK_DATA(t);
            overC->unk18 = 0;
            overC->unk0 = 0;
            overC->unk2 = 1;
            overC->unk4 = 1;
            overC->unk6 = 0;
            overC->unk8 = 96;
            overC->unkA = 1;
            strc.vram8 = VramMalloc(16); // TODO: ALLOC_TILES()!
            strc.vram0 = VramMalloc(16); // TODO: ALLOC_TILES()!
            strc.vram4 = VramMalloc(40); // TODO: ALLOC_TILES()!
            overC->unk14 = strc.vram8;
            overC->unkC = strc.vram0;
            overC->unk10 = strc.vram4;
        }
    }

    sub_8055C50(&strc);
}

void Task_GameOverScreenInit(void)
{
    GameOverScreen *screen = TASK_DATA(gCurTask);
    s16 frames = screen->frames;
    Sprite *s;
    Sprite *s2;

    screen->s.x = DISPLAY_WIDTH + 64;
    screen->s.y = 60;
    screen->s2.x = DISPLAY_WIDTH + 64;
    screen->s2.y = 60;

    screen->frames = ++frames;

    if (frames >= ZONE_TIME_TO_INT(0, 1)) {
        screen->s.frameFlags = 0;
        screen->s2.frameFlags = 0;
        gCurTask->main = Task_8056100;
    }

    s = &screen->s;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &screen->s2;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8056100(void)
{
    GameOverScreen *screen = TASK_DATA(gCurTask);
    s16 frames = screen->frames;
    s16 frames_2;
    Sprite *s;
    Sprite *s2;
    s16 x;
    s32 diff;

    frames_2 = frames - 60;

#ifndef NON_MATCHING
    {
        register s32 _184 asm("r1") = 184;
        asm("mul %0, %1, %2" : "=r"(diff) : "r"(_184), "r"(frames_2));
    }
#else
    diff = (184 * (frames_2));
#endif

    x = DISPLAY_WIDTH - (diff / 30);
    screen->s.x = x + 64;
    screen->s.y = 60;
    screen->s2.x = x + 64;
    screen->s2.y = 60;

    screen->frames = ++frames;

    if (frames >= ZONE_TIME_TO_INT(0, 1.5)) {
        gCurTask->main = Task_805618C;
    }

    s = &screen->s;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &screen->s2;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_805618C(void)
{
    GameOverScreen *screen = TASK_DATA(gCurTask);
    s16 frames = screen->frames;
    Sprite *s = &screen->s;
    Sprite *s2 = &screen->s2;

    s->x = 128;
    s->y = 60;
    s2->x = 128;
    s2->y = 60;

    screen->frames = ++frames;

    if (frames >= ZONE_TIME_TO_INT(0, 2)) {
        s->frameFlags = SPRITE_OAM_ORDER(2);
        s2->frameFlags = SPRITE_OAM_ORDER(2);

        if (screen->lostLifeCause & 0x1) {
            gCurTask->main = Task_8056348;
        } else if (screen->lostLifeCause & 0x2) {
            gCurTask->main = Task_8056218;
        } else {
            gCurTask->main = Task_80565C4;
        }
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    UpdateSpriteAnimation(s2);
    DisplaySprite(s2);
}

#if 0
void Task_8056218(void)
{
    GameOverScreen *screen = TASK_DATA(gCurTask);
    s16 frames = screen->frames;
    Sprite *s = &screen->s;
    Sprite *s2 = &screen->s2;
    
    screen->frames = ++frames;
    
}
#endif