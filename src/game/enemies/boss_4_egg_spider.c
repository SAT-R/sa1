#include "global.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/player.h"
#include "game/entity.h"
#include "game/enemies/bosses_shared.h"
#include "game/nuts_and_bolts_task.h"
#include "game/save.h"
#include "game/stage/player_controls.h"
#include "game/stage/rings_scatter.h"
#include "game/stage/screen_shake.h"
#include "game/stage/terrain_collision.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/songs.h"
#include "game/stage/underwater_effects.h"

typedef struct EggSpider {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ Sprite s2;
    /* 0x6C */ s32 unk6C;
    /* 0x70 */ s32 unk70;
    /* 0x74 */ s32 unk74;
    /* 0x78 */ s32 unk78;
    /* 0x78 */ s32 unk7C;
    /* 0x80 */ s32 unk80;
    /* 0x84 */ u16 unk84;
    /* 0x86 */ s8 unk86;
    /* 0x86 */ s8 unk87;
    /* 0x88 */ u8 filler88[0x2];
    /* 0x8A */ u16 unk8A;
    /* 0x8A */ u8 unk8C;
} EggSpider; /* 0x90 */

void Task_EggSpiderInit(void);
void sub_80308A4(CamCoord worldX, CamCoord worldY);
void sub_80309CC(void);
void sub_8030EE4(void);
void sub_80311D4(void);
void sub_8031998(EggSpider *boss);
void TaskDestructor_8031CB4(struct Task *t);

extern s16 gUnknown_084ACEB4[];
extern s16 gUnknown_084ACED8[];
extern s16 gUnknown_084ACEC6[];

static inline void sub_8031CD0_inline(void)
{
    EggSpider *boss = TASK_DATA(gCurTask);
    Sprite *s2 = &boss->s2;

    if ((s2->variant != 0) && (s2->frameFlags & SPRITE_FLAG(ANIM_OVER, 1))) {
        s2->variant = 0U;
        s2->prevVariant = 0xFF;
    }
}

static inline void sub_8031D0C_inline()
{
    EggSpider *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;

    s2->x = s->x;
    s2->y = s->y;

    if (s->graphics.anim == SA1_ANIM_BOSS_4) {
        const SpriteOffset *dimensions = s->dimensions;

        s2->y -= gUnknown_084ACED8[(s8)dimensions->oamIndex];
    }
}

static inline void sub_8031D54_inline(CamCoord worldX, CamCoord worldY)
{
    EggSpider *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
}

void sub_80308A4(CamCoord worldX, CamCoord worldY)
{
    Sprite *s;
    Sprite *s2;
    EHit collPlayer;
    EHit collPartner;
    EggSpider *boss;

    boss = TASK_DATA(gCurTask);
    s = &boss->s;
    s->frameFlags &= ~0x180;

    if (PLAYER_IS_ALIVE) {
        gDispCnt &= 0x7FFF;
        gWinRegs[5] = 0;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
    }

    if (boss->unk87 == 0) {
        collPlayer = Coll_Player_Boss(s, worldX, worldY, &gPlayer);
        collPartner = 0;

        if (gNumSingleplayerCharacters == 2) {
            collPartner = Coll_Player_Boss(s, worldX, worldY, &gPartner);
        }

        s2 = &boss->s2;
        if ((collPlayer == 1) || (collPartner == 1)) {
            boss->unk86++;
            boss->unk87 = 120;
            s2->variant = 2;
            s2->frameFlags &= ~0x4000;
            m4aSongNumStart(SE_BOSS_HIT);
        } else if ((collPlayer == 2) || (collPartner == 2)) {
            s2->variant = 1;
            s2->frameFlags &= ~0x4000;
        }
    }
}

void sub_80309CC(void)
{
    EggSpider *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;

    if (boss->unk87 != 0 && --boss->unk87 > 0) {
        if (!(boss->unk87 & 2)) {
            if (PLAYER_IS_ALIVE) {
                s->frameFlags |= 0x100;
                gDispCnt |= DISPCNT_OBJWIN_ON;
                gWinRegs[WINREG_WINOUT] = WINOUT_WINOBJ_ALL | (WINOUT_WIN01_ALL & ~WINOUT_WIN01_CLR);
                gBldRegs.bldCnt = 0xBF;
                gBldRegs.bldY = 0x10;
            }
        }
    }

    DisplaySprite(s);
    DisplaySprite(s2);
}

void CreateEntity_EggSpider(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    EggSpider *boss;
    Sprite *s2;
    Sprite *s;
    s32 temp_r0_3;
    s32 temp_r1_2;
    s32 temp_r4;
    u16 temp_r1_4;
    u8 *temp_r0;
    u8 *temp_r0_2;
    u8 *temp_r1_3;
    struct Task *t;

    if (IS_MULTI_PLAYER) {
        SET_MAP_ENTITY_INITIALIZED(me);
        return;
    }

    t = TaskCreate(Task_EggSpiderInit, sizeof(EggSpider), 0x2000U, 0U, TaskDestructor_8031CB4);
    TaskCreate(sub_804C40C, 0U, 0xFFFDU, 0U, NULL);

    boss = TASK_DATA(t);
    s = &boss->s;
    boss->base.regionX = regionX;
    boss->base.regionY = regionY;
    boss->base.me = me;
    boss->base.meX = me->x;
    boss->base.id = id;
    boss->unk84 = 120;
    boss->unk87 = 0;
    boss->unk8A = 0;
    boss->unk8C = 0;
    boss->unk6C = 0x3000;
    boss->unk70 = 0x1000;
    boss->unk74 = 0;
    boss->unk78 = 0;

    if (gLoadedSaveGame.difficultyLevel != DIFFICULTY_NORMAL) {
        boss->unk86 = 2;
    } else {
        boss->unk86 = 0;
    }

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    s->graphics.dest = VramMalloc(64);
    s->oamFlags = 0x580;
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_BOSS_4;
    s->variant = 2;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;

    s2 = &boss->s2;
    s2->x = TO_WORLD_POS(me->x, regionX);
    s2->y = TO_WORLD_POS(me->y, regionY);
    SET_MAP_ENTITY_INITIALIZED(me);

    s2->graphics.dest = VramMalloc(8U);
    s2->oamFlags = 0x540;
    s2->graphics.size = 0;
    s2->graphics.anim = 0x275;
    s2->variant = 0;
    s2->animCursor = 0;
    s2->qAnimDelay = 0;
    s2->prevVariant = -1;
    s2->animSpeed = 0x10;
    s2->palId = 0;
    s2->hitboxes[0].index = -1;
    s2->frameFlags = 0x2000;
    sub_80171BC(s->y, s->y + 192, s->x - 320, s->x);

    gPlayer.qSpeedGround = 0;
    gPlayer.moveState |= 0x200000;

    if ((gPlayer.character == CHARACTER_KNUCKLES) && ((gPlayer.anim == 269) || (gPlayer.anim == 207))) {
        gPlayer.heldInput = DPAD_DOWN;
    } else {
        gPlayer.heldInput = 0;
    }

    if (gRingsScatterTask != NULL) {
        RingsScatter *scatter = TASK_DATA(gRingsScatterTask);
        scatter->SA2_LABEL(unk2B6) |= 1;
    }
}

void Task_EggSpiderInit(void)
{
    Sprite *s;
    Sprite *s2;

    EggSpider *boss = TASK_DATA(gCurTask);
    MapEntity *me;
    CamCoord worldX, worldY;

    s = &boss->s;
    s2 = &boss->s2;
    me = boss->base.me;
    boss->unk6C += boss->unk74;
    boss->unk70 += boss->unk78;

    worldX = TO_WORLD_POS(boss->base.meX, boss->base.regionX) + I(boss->unk6C);
    worldY = TO_WORLD_POS(me->y, boss->base.regionY) + I(boss->unk70);

    sub_8031D54_inline(worldX, worldY);

    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);

    sub_8031D0C_inline();
    sub_80309CC();

    switch (boss->unk8C) {
        case 0: {
            if (--boss->unk84 == 0) {
                gMusicManagerState.unk1 = 0x10;
                s->variant = 0;
                boss->unk74 = -0x100;
                boss->unk8C++;
            }
            if ((gPlayer.anim == 0xD1) && (gPlayer.variant == 2)) {
                gPlayer.heldInput = 0;
                return;
            }
        } break;

        case 1: {
            if (boss->unk6C <= -Q(120)) {
                s->variant = 2;
                boss->unk6C = -0x7800;
                boss->unk74 = 0;
                boss->unk84 = 60;
                boss->unk8C++;
            }

            if (gCamera.shiftY != -0x60) {
                gCamera.shiftY--;
                return;
            }
        } break;

        case 2: {
            if (--boss->unk84 == 0) {
                s2->variant = 1;
                boss->unk8C++;
                return;
            }
        } break;

        case 3: {
            if (s2->frameFlags & 0x4000) {
                s2->variant = 0;
                boss->unk84 = 60;
                boss->unk8C++;
            }
        } break;

        case 4: {
            if (--boss->unk84 == 0) {
                gCamera.shiftY = 0;
                gPlayer.moveState &= 0xFFDFFFFF;
                gPlayer.heldInput |= gPlayerControls.jump | gPlayerControls.attack;
                boss->unk8C = 0;
                boss->unk84 = 30;
                gCurTask->main = sub_8030EE4;
            }
        } break;
    }
}

void sub_8030EE4()
{
    s32 sp4;
    Sprite *s;
    Sprite *s2;
    s32 temp_r0_7;

    EggSpider *boss;
    MapEntity *me;
    CamCoord worldX, worldY;

    sp4 = 0;
    boss = TASK_DATA(gCurTask);
    s = &boss->s;
    s2 = &boss->s2;
    me = boss->base.me;
    boss->unk6C += boss->unk74;
    boss->unk70 += boss->unk78;
    worldX = TO_WORLD_POS(boss->base.meX, boss->base.regionX) + I(boss->unk6C);
    worldY = TO_WORLD_POS(me->y, boss->base.regionY) + I(boss->unk70);

    sub_80308A4(worldX, worldY);
    if (boss->unk86 > 7) {
        sub_80311D4();
        return;
    }

    sub_8031D54_inline(worldX, worldY);

    sub_8031CD0_inline();

    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);

    sub_8031D0C_inline();

    sub_80309CC();

    if (boss->unk8A != 0) {
        boss->unk8A--;
    }

    switch (boss->unk8C) {
        case 0: {
            if (--boss->unk84 != 0) {
                return;
            }
            s->variant = 0;
            temp_r0_7 = (u32)PseudoRandom32() % 9U;
            boss->unk80 = Q(gUnknown_084ACEC6[temp_r0_7]);
            if (boss->unk6C == boss->unk80) {
                boss->unk80 = Q(gUnknown_084ACEC6[((temp_r0_7 + 5) % 9)]);
            }
            if (boss->unk6C <= boss->unk80) {
                boss->unk74 = +0x100;
                boss->unk8C = 1;
            } else {
                boss->unk74 = -0x100;
                boss->unk8C = 1;
            }
        } break;

        case 1: {
            if (boss->unk74 > 0) {
                if (boss->unk6C > boss->unk80) {
                    sp4 = 1;
                }
            } else {
                if (boss->unk6C < boss->unk80) {
                    sp4 = (u8)-1;
                }
            }

            if (sp4 != 0) {
                boss->unk6C = boss->unk80;
                boss->unk74 = 0;
                boss->unk84 = 30;
                boss->unk8C = 2;
                s->variant = 2;
            }
        } break;

        case 2: {
            if (--boss->unk84 == 0) {
                if (boss->unk8A != 0) {
                    boss->unk84 = 30;
                    boss->unk8C = 0;
                } else {
                    boss->unk84 = 120;
                    boss->unk8C = 3;
                    s->variant = 1;

                    if (PLAYER_IS_ALIVE) {
                        CreateScreenShake(0x400U, 0U, 0x100U, 120, 0x80U);
                    }
                }
            }
        } break;

        case 3: {
            if (--boss->unk84 == 0) {
                boss->unk84 = 30;
                boss->unk8C = 0;
                boss->unk8A = 120;
                s->variant = 2;
            } else if (((boss->unk84 % gUnknown_084ACEB4[boss->unk86]) == 0) && PLAYER_IS_ALIVE) {
                sub_8031998(boss);
                m4aSongNumStart(0x91U);
            }
        } break;
    }
}

#if 01

#if 0
static inline void sub_8031CD0(void)
{
    sub_8031CD0_inline(void);
}

// TODO: Make inline match
void sub_8031D54(CamCoord worldX, CamCoord worldY)
{
    EggSpider *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
}

extern u16 gUnknown_084ACED8[];
void sub_8031D0C()
{
    sub_8031D0C_inline();
}
#endif

#endif