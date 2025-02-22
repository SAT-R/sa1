#include "global.h"
#include "core.h"
#include "trig.h"
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
    /* 0x20 */ GameOverC *unk20;
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
void Task_805648C(void);
void Task_80565C4(void);
void Task_8056970(void);
void Task_8056AC8(void);
void Task_8056CE0(void);
void Task_8056E24(void);
void Task_8056F54(void);
void Task_8056F80(void);
void Task_8056FA0(void);
void Task_8056FD0(void);
void TaskDestructor_GameOverScreen(struct Task *t);
void TaskDestructor_8056F30(struct Task *t);

// NOTE: param0[param1->byteCount (offset: 0xE)]
extern void sub_8052C84(u8 *param0, Strc_8052C84 *param1);
extern const u16 gUnknown_086883E4[10];
extern const u8 gUnknown_086883F8[];

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

void Task_8056218(void)
{
    GameOverScreen *screen = TASK_DATA(gCurTask);
    s16 frames = screen->frames;
    Sprite *s = &screen->s;
    Sprite *s2 = &screen->s2;
    SpriteTransform transform;

    screen->frames = ++frames;

    if (frames >= 217) {
        s16 r0;
        u16 r1;
        s2->frameFlags = SPRITE_FLAG(OBJ_MODE, 1) | SPRITE_FLAG(ROT_SCALE_ENABLE, 1) | SA2_LABEL(gUnknown_030054B8)++;
        s->frameFlags = SPRITE_FLAG(OBJ_MODE, 1) | SPRITE_FLAG(ROT_SCALE_ENABLE, 1) | SA2_LABEL(gUnknown_030054B8)++;

        r1 = frames - 248;
        r0 = (32 - (r1));

        transform.rotation = 0;
        transform.qScaleX = COS_24_8(r0 * 16);
        if (transform.qScaleX < Q(10. / 256.)) {
            transform.qScaleX = Q(10. / 256.);
        }

        transform.qScaleY = Q(1.0);
        transform.x = 127;
        transform.y = 60;
        TransformSprite(s, &transform);

        transform.rotation = 0;
        transform.qScaleX = COS_24_8(r0 * 16);
        if (transform.qScaleX < Q(10. / 256.)) {
            transform.qScaleX = Q(10. / 256.);
        }

        transform.qScaleY = Q(1.0);
        transform.x = transform.x; // LOL
        transform.y = 60;
        TransformSprite(s2, &transform);
    }

    if (frames >= 233) {
        if (frames >= 248) {
            gCurTask->main = Task_8056AC8;
        }
    } else {
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
        UpdateSpriteAnimation(s2);
        DisplaySprite(s2);
    }
}

// (96.84%) https://decomp.me/scratch/HKhxZ
NONMATCH("asm/non_matching/game/game_over__Task_8056348.inc", void Task_8056348(void))
{
    GameOverScreen *screen = TASK_DATA(gCurTask);
    s16 frames = screen->frames;
    Sprite *s = &screen->s;
    Sprite *s2 = &screen->s2;
    SpriteTransform transform;
    s32 qScaleX;
    s16 aaa;
    u32 r0;
    s32 r2;

    r0 = (u16)(frames - 120);
    r0 <<= 8;
#if 0
    // Matches more %, but logically wrong
    r0 *= 12;
    r2 = r0 << 4;
#else
    r2 = r0 << 12;
#endif

    s->frameFlags = SPRITE_FLAG(ROT_SCALE_ENABLE, 1) | SA2_LABEL(gUnknown_030054B8)++;
    s->frameFlags |= SPRITE_FLAG(OBJ_MODE, 1);

    transform.rotation = 0;
    transform.qScaleX = COS_24_8(r2 >> 16);
    if (transform.qScaleX < Q(10. / 256.)) {
        transform.qScaleX = Q(10. / 256.);
    }
    transform.qScaleY = Q(1.0);

    transform.x = 127;
    transform.y = 60;
    TransformSprite(s, &transform);

    s2->frameFlags = 0x20 | SA2_LABEL(gUnknown_030054B8)++;
    s2->frameFlags |= 0x80;
    transform.rotation = 0;
    transform.qScaleX = COS_24_8(r2 >> 16);

    if (transform.qScaleX < Q(10. / 256.)) {
        transform.qScaleX = Q(10. / 256.);
    }

    transform.qScaleY = Q(1.0);
    transform.x = transform.x;
    transform.y = 60;
    TransformSprite(s2, &transform);

    screen->frames = ++frames;

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
    UpdateSpriteAnimation(s2);
    DisplaySprite(s2);

    if (frames >= 136) {
        s->graphics.anim = SA1_ANIM_GAME_OVER;
        s->variant = 2;
        s2->graphics.anim = SA1_ANIM_GAME_OVER;
        s2->variant = 3;

        gCurTask->main = Task_805648C;
    }
}
END_NONMATCH

// (91.56%) https://decomp.me/scratch/Rl7oS
NONMATCH("asm/non_matching/game/game_over__Task_805648C.inc", void Task_805648C(void))
{
    GameOverScreen *screen = TASK_DATA(gCurTask);
    s16 frames = screen->frames;
    Sprite *s = &screen->s;
    Sprite *s2 = &screen->s2;
    SpriteTransform transform;

    {
        s32 r0_32;
        s16 r0;
        u16 r1;

        r1 = ((frames) - (136));
        r0 = (256 - r1);

        s->frameFlags = SPRITE_FLAG(ROT_SCALE_ENABLE, 1) | SA2_LABEL(gUnknown_030054B8)++;
        s->frameFlags |= SPRITE_FLAG(OBJ_MODE, 1);

        transform.rotation = 0;

        transform.qScaleX = COS_24_8(r0);
        transform.qScaleX = transform.qScaleX + 1;
        if (transform.qScaleX < Q(10. / 256.)) {
            transform.qScaleX = Q(10. / 256.);
        }

        transform.qScaleY = Q(1.0);
        transform.x = 127;
        transform.y = 60;
        TransformSprite(s, &transform);

        s2->frameFlags = SPRITE_FLAG(ROT_SCALE_ENABLE, 1) | SA2_LABEL(gUnknown_030054B8)++;
        s2->frameFlags |= SPRITE_FLAG(OBJ_MODE, 1);

        transform.rotation = 0;
        transform.qScaleX = COS_24_8(r0);
        transform.qScaleX = transform.qScaleX + 1;
        if (transform.qScaleX < Q(10. / 256.)) {
            transform.qScaleX = Q(10. / 256.);
        }

        transform.qScaleY = Q(1.0);
        transform.x = 128; // LOL
        transform.y = 60;
        TransformSprite(s2, &transform);
    }

    screen->frames = ++frames;

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
    UpdateSpriteAnimation(s2);
    DisplaySprite(s2);

    if (frames >= 152) {
        gCurTask->main = Task_80565C4;
    }
}
END_NONMATCH

void Task_80565C4(void)
{
    GameOverScreen *screen = TASK_DATA(gCurTask);
    s16 frames = screen->frames;
    Sprite *s = &screen->s;
    Sprite *s2 = &screen->s2;
    SpriteTransform transform;
    s32 qScaleX;
    s16 aaa;
    s16 r0;
    s16 r2;
    u16 r1;

    s->x = 128;
    s->y = 60;
    s->frameFlags = SPRITE_FLAG(OBJ_MODE, 1);

    s2->x = 128;
    s2->y = 60;
    s2->frameFlags = SPRITE_FLAG(OBJ_MODE, 1);

    screen->frames = ++frames;

    if (frames >= 1433) {
        s2->frameFlags = SPRITE_FLAG(OBJ_MODE, 1) | SPRITE_FLAG(ROT_SCALE_ENABLE, 1) | SA2_LABEL(gUnknown_030054B8)++;
        s->frameFlags = SPRITE_FLAG(OBJ_MODE, 1) | SPRITE_FLAG(ROT_SCALE_ENABLE, 1) | SA2_LABEL(gUnknown_030054B8)++;

        r1 = frames - 1464;

        r2 = 32 - r1;

        transform.rotation = 0;
        transform.qScaleX = COS_24_8(r2 * 16);
        if (transform.qScaleX < Q(10. / 256.)) {
            transform.qScaleX = Q(10. / 256.);
        }
        transform.qScaleY = Q(1.0);

        transform.x = 127;
        transform.y = 60;
        TransformSprite(s, &transform);

        transform.rotation = 0;
        transform.qScaleX = COS_24_8(r2 * 16);

        if (transform.qScaleX < Q(10. / 256.)) {
            transform.qScaleX = Q(10. / 256.);
        }

        transform.qScaleY = Q(1.0);
        transform.x = transform.x;
        transform.y = 60;
        TransformSprite(s2, &transform);
    }

    if (frames >= 1449) {
        if (frames >= 1464) {
            m4aMPlayAllStop();
            m4aSoundVSyncOff();

            gCurTask->main = Task_8056AC8;
        }

    } else {
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
        UpdateSpriteAnimation(s2);
        DisplaySprite(s2);
    }
}

void Task_8056714(void)
{
    GameOverB *overB = TASK_DATA(gCurTask);
    s16 unk18 = overB->unk18;
    overB->unk18 = unk18 += 1;
    overB->qUnkA += Q(12. / 256.);

    if (overB->qUnkA > 0) {
        overB->qUnkA = 0;
    }

    sub_80530CC(&gUnknown_086883F8[0], overB);

    if (unk18 >= 182) {
        gCurTask->main = Task_8056F80;
        overB->qUnkA = Q(0);
        overB->unk18 = 0;
    }
}

// (98.85%) https://decomp.me/scratch/Sz0mp
NONMATCH("asm/non_matching/game/game_over__Task_805676C.inc", void Task_805676C(void))
{
    GameOverD *overD = TASK_DATA(gCurTask);
    s16 unk24 = overD->unk24;
    Strc_8052C84 sp00;
    GameOverB *overB;
    u8 *ptrArr;
    u8 arr[1];
    s16 temp;
    u32 temp32;

    sp00.unkC = 0x5B;
    sp00.unk12 = 6;
    sp00.unk8 = 0;
    sp00.unk10 = 4;
    sp00.byteCount = ARRAY_COUNT(arr);
    sp00.unk16 = 1;

    temp = (unk24 / 120);
    temp32 = (41 - (u16)temp);
    ptrArr = &arr[0];
    *ptrArr = temp32;

    temp = (unk24 % 120);

    if (temp > 80) {
        temp -= 80;
        sp00.unkA = ((temp * 116) / 18) + 116;

        if (*ptrArr >= 32) {
            sp00.unk0 = 256;
            sp00.unk2 = 256;
            sp00.unk4 = 0;
            sp00.unk6 = SA2_LABEL(gUnknown_030054B8)++;
            sub_8052C84(&*ptrArr, &sp00);
        }
    } else if (temp > 20) {
        temp -= 20;
        sp00.unk0 = 497 - temp * 4;
        sp00.unk2 = sp00.unk0;
        sp00.unk4 = 0;
        sp00.unk6 = SA2_LABEL(gUnknown_030054B8)++;
        sp00.unkA = 104;
        sp00.unkC = 83;
        sub_8052C84(&*ptrArr, &sp00);
    } else {
        sp00.unkA = (temp * 116) / 20;

        if (*ptrArr >= 32) {
            sp00.unk0 = 256;
            sp00.unk2 = 256;
            sp00.unk4 = 0;
            sp00.unk6 = SA2_LABEL(gUnknown_030054B8)++;
            sub_8052C84(arr, &sp00);
        }
    }

    if (unk24 >= ZONE_TIME_TO_INT(0, 20)) {
        gCurTask->main = Task_8056FD0;
    }

    if (gPressedKeys & B_BUTTON) {
        s32 r3;

        temp = (unk24 / 120);
        temp++;
        unk24 = temp * 120;

        overB = overD->unk1C;
        r3 = 1200;
        overB->unk18 = r3 - ((10 - temp) * 120);
        overD->unk20->unk18 = 0x566 - ((10 - temp) * 120);
        overD->unk18->frames = overD->unk20->unk18;
    }

    if (gPressedKeys & A_BUTTON) {
        gCurTask->main = Task_8056970;
        overD->unk24 = 0;
        overD->unk18->unk80 = 1;
    } else {
        temp = unk24 + 1;
        overD->unk24 = temp;
    }

    if ((overD->unk24 % 120) == 60) {
        // TODO: Different way to remove volatile*?
        u16 songId = gUnknown_086883E4[((volatile GameOverD *)overD)->unk24 / 120];
        m4aSongNumStart(songId);
    }
}
END_NONMATCH

void Task_8056970(void)
{
    GameOverD *overD = TASK_DATA(gCurTask);
    s16 unk24 = overD->unk24;
    Strc_8052C84 sp00;
    GameOverB *overB;
    u8 *ptrArr;
    u8 arr[1];
    s16 temp;
    u32 temp32;

    sp00.unkC = 0x54;
    sp00.unk12 = 6;
    sp00.unk8 = 0;
    sp00.unk10 = 5;
    sp00.byteCount = ARRAY_COUNT(arr);
    sp00.unk16 = 1;

    ptrArr = &arr[0];
    *ptrArr = 32;

    temp = unk24;

    if (temp > 80) {
        temp -= 80;
        sp00.unkA = ((temp * 116) / 18) + 116;

        if (*ptrArr >= 32) {
            sp00.unk0 = 256;
            sp00.unk2 = 256;
            sp00.unk4 = 0;
            sp00.unk6 = SA2_LABEL(gUnknown_030054B8)++;
            sub_8052C84(&*ptrArr, &sp00);
        }
    } else if (temp > 20) {
        temp -= 20;
        sp00.unk0 = 497 - temp * 4;
        sp00.unk2 = sp00.unk0;
        sp00.unk4 = 0;
        sp00.unk6 = SA2_LABEL(gUnknown_030054B8)++;
        sp00.unkA = 88;
        sp00.unkC = 68;
        sub_8052C84(&*ptrArr, &sp00);
    } else {
        sp00.unkA = (temp * 116) / 20;

        if (*ptrArr >= 32) {
            sp00.unk0 = 256;
            sp00.unk2 = 256;
            sp00.unk4 = 0;
            sp00.unk6 = SA2_LABEL(gUnknown_030054B8)++;
            sub_8052C84(arr, &sp00);
        }
    }

    if (unk24 >= 0x78) {
        GameOverC *overC;
        gCurTask->main = Task_8056FD0;
        overD->unk20->unk18 = 1382;
        overD->unk18->frames = 1464;
    }

    temp = unk24 + 1;
    overD->unk24 = temp;
}
