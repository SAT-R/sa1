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
#include "game/stage/screen_shake.h"
#include "game/stage/terrain_collision.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"

typedef struct EggPress {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u8 filler3C[0x10];
    /* 0x4C */ Sprite s2;
    /* 0x7C */ u8 filler7C[0x18];
    /* 0x94 */ s32 unk94;
    /* 0x98 */ s32 unk98;
    /* 0x9C */ u8 filler9C[0x4];
    /* 0xA0 */ s32 unkA0;
    /* 0xA4 */ u8 fillerA4[0x4];
    /* 0xA8 */ u16 unkA8;
    /* 0xAA */ s16 unkAA;
    /* 0xAC */ u16 unkAC;
    /* 0xAE */ s8 unkAE;
    /* 0xAF */ s8 unkAF;
    /* 0xB0 */ u8 unkB0;
    /* 0xB0 */ u8 unkB1;
} EggPress;

extern s16 gUnknown_084ACDA0[];

void Task_EggPressMain(void);
void sub_802DC3C(void);
void Task_802DDCC(void);
void Task_802DEFC(void);
void TaskDestructor_EggPress(struct Task *t);

void sub_802D748(s16 arg0, s16 arg1)
{
    Sprite *s, *s2;
    EHit collPlayer;
    EHit collPartner;
    u8 *regionX;

    EggPress *boss = TASK_DATA(gCurTask);

    s = &boss->s;
    s->frameFlags &= ~SPRITE_FLAG_MASK_OBJ_MODE;

    if (PLAYER_IS_ALIVE) {
        gDispCnt &= ~DISPCNT_OBJWIN_ON;
        gWinRegs[WINREG_WINOUT] = 0;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
    }

    if (boss->unkAF == 0) {
        collPlayer = Coll_Player_Bosses_2_6(&boss->s, arg0, arg1, &gPlayer);
        if (gNumSingleplayerCharacters == NUM_SINGLEPLAYER_CHARS_MAX) {
            collPartner = Coll_Player_Bosses_2_6(&boss->s, arg0, arg1, &gPartner);
        } else {
            collPartner = HIT_NONE;
        }

        s2 = &boss->s2;
        if ((collPlayer == HIT_ENEMY) || (collPartner == HIT_ENEMY)) {
            boss->unkAE++;
            boss->unkAF = 0x20;

            if (boss->unkAE == 4) {
                boss->unkB0 = 1;
            }

            s2->variant = 2;
            s2->frameFlags &= ~0x4000;
            m4aSongNumStart(SE_BOSS_HIT);
        } else if ((collPlayer == HIT_PLAYER) || (collPartner == HIT_PLAYER)) {
            s2->variant = 1;
            s2->frameFlags &= ~0x4000;
        }
    }
}

// TODO: Work out matching without TASK_GET_MEMBER!
void sub_802D870(void)
{
    struct Task *t = gCurTask;
    Sprite *s = &TASK_GET_MEMBER(EggPress, t, Sprite, s);
    Sprite *s2 = &TASK_GET_MEMBER(EggPress, t, Sprite, s2);
    s8 *unkAF = &TASK_GET_MEMBER(EggPress, t, s8, unkAF);

    if (*unkAF != 0) {
        if ((--(*unkAF) > 0x10) && !((*unkAF) & 2) && PLAYER_IS_ALIVE) {
            s->frameFlags |= 0x100;
            gDispCnt |= 0x8000;
            gWinRegs[5] = 0x3F1F;
            gBldRegs.bldCnt = 0xBF;
            gBldRegs.bldY = 0x10;
        }
    }
    DisplaySprite(s);
    DisplaySprite(s2);
}

void sub_802D908(void)
{
    struct Task *t = gCurTask;
    Sprite *s = &TASK_GET_MEMBER(EggPress, t, Sprite, s);
    Sprite *s2 = &TASK_GET_MEMBER(EggPress, t, Sprite, s2);
    s16 var_r0;

    s2->x = s->x;
    s2->y = s->y;
    if (s->graphics.anim == SA1_ANIM_BOSS_2) {
        s8 index = s->dimensions->oamIndex;
        index /= 5;
        s2->y -= gUnknown_084ACDA0[index];
    } else {
        s2->y += 46;
    }
}

void CreateEntity_EggPress(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    Sprite *s;
    Sprite *s2;
    u16 temp_r4_2;
    struct Task *t;
    EggPress *boss;

    if (IS_MULTI_PLAYER) {
        SET_MAP_ENTITY_INITIALIZED(me);
        return;
    }

    t = TaskCreate(Task_EggPressMain, sizeof(EggPress), 0x2000U, 0U, TaskDestructor_EggPress);
    boss = TASK_DATA(t);

    s = &boss->s;
    boss->base.regionX = regionX;
    boss->base.regionY = regionY;
    boss->base.me = me;
    boss->base.meX = me->x;
    boss->base.id = id;

    boss->unkA8 = 0;
    boss->unkAC = 0;
    boss->unkAA = -8;
    boss->unkAF = 0;
    boss->unkB0 = 0;
    boss->unk94 = 0;
    boss->unkB1 = 0;

    if (gLoadedSaveGame.difficultyLevel != 0) {
        boss->unkAE = 2;
    } else {
        boss->unkAE = 0;
    }

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_BOSS_2);
    s->oamFlags = 0x540;
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_BOSS_2;
    s->variant = 1;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = 0xFF;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = 0x2000;

    s2 = &boss->s2;
    s2->x = TO_WORLD_POS(me->x, regionX);
    s2->y = TO_WORLD_POS(me->y, regionY);
    SET_MAP_ENTITY_INITIALIZED(me);

    s2->graphics.dest = ALLOC_TILES(SA1_ANIM_BOSS_2_EGGMAN);
    s2->oamFlags = 0x580;
    s2->graphics.size = 0;
    s2->graphics.anim = SA1_ANIM_BOSS_2_EGGMAN;
    s2->variant = 0;
    s2->animCursor = 0;
    s2->qAnimDelay = Q(0);
    s2->prevVariant = -1;
    s2->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s2->palId = 0;
    s2->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s2->frameFlags = 0x2000;
    sub_80171BC(s->y - 144, s->y + 16, (int)((float)s->x - 300.0f), s->x);

    gMusicManagerState.unk1 = 0x10;
}

void Task_EggPressMain(void)
{
    CamCoord worldX, worldY;
    MapEntity *me;
    Sprite *s;
    Sprite *s2;

    EggPress *boss = TASK_DATA(gCurTask);

    if (boss->unkAC++ > 120) {
        s = &boss->s;
        s2 = &boss->s2;
        me = boss->base.me;

        boss->unk94 = -Q(60);
        boss->unk98 = -Q(144);
        boss->unkA0 = 0;

        worldX = TO_WORLD_POS(boss->base.meX, boss->base.regionX) + I(boss->unk94);
        worldY = TO_WORLD_POS(me->y, boss->base.regionY) + I(boss->unk98);
        s->x = worldX - gCamera.x;
        s->y = worldY - gCamera.y;
        s2->x = s->x;
        s2->y = s->y;
        UpdateSpriteAnimation(s);
        UpdateSpriteAnimation(s2);
        DisplaySprite(s);
        DisplaySprite(s2);
        gCurTask->main = sub_802DC3C;
        gCurTask->main();
    }
}

void sub_802DC3C(void)
{
    MapEntity *me;
    Sprite *s;
    Sprite *s2;
    CamCoord worldX, worldY;

    EggPress *boss = TASK_DATA(gCurTask);

    s = &boss->s;
    s2 = &boss->s2;
    me = boss->base.me;

    if (boss->unk98 != 0) {
        boss->unkA0 += 0x20;
        boss->unk98 += boss->unkA0;

        if (boss->unk98 >= 0) {
            boss->unk98 = 0;
            s->graphics.anim = SA1_ANIM_BOSS_2;
            s->variant = 1;
            s->prevVariant = -1;
            UpdateSpriteAnimation(s);
            UpdateSpriteAnimation(s2);
            m4aSongNumStart(SE_IMPACT);
        }

        worldX = TO_WORLD_POS(boss->base.meX, boss->base.regionX) + I(boss->unk94);
        worldY = TO_WORLD_POS(me->y, boss->base.regionY) + I(boss->unk98);
        s->x = worldX - gCamera.x;
        s->y = worldY - gCamera.y;

        sub_802D908();
        DisplaySprite(s);
        DisplaySprite(s2);
    } else {
        UpdateSpriteAnimation(s);
        UpdateSpriteAnimation(s2);

        worldX = TO_WORLD_POS(boss->base.meX, boss->base.regionX) + I(boss->unk94);
        worldY = TO_WORLD_POS(me->y, boss->base.regionY) + I(boss->unk98);
        s->x = worldX - gCamera.x;
        s->y = worldY - gCamera.y;

        sub_802D908();
        DisplaySprite(s);
        DisplaySprite(s2);

        if (s->frameFlags & 0x4000) {
            gCurTask->main = Task_802DDCC;
            s->graphics.anim = SA1_ANIM_BOSS_2;
            boss->s.variant = 0;
            boss->s.prevVariant = 0xFF;
            boss->unkAC = 0x78;
        }
    }
}

void Task_802DDCC(void)
{
    MapEntity *me;
    Sprite *s;
    Sprite *s2;
    CamCoord worldX, worldY;

    EggPress *boss = TASK_DATA(gCurTask);

    s = &boss->s;
    s2 = &boss->s2;
    me = boss->base.me;

    if (boss->s2.variant == 0) {
        if (--boss->unkAC == 60) {
            boss->s2.variant = 1;
            boss->s2.prevVariant = 0xFF;
        }

        if (boss->unkAC == 0) {
            gCurTask->main = Task_802DEFC;
            boss->unkA0 = 0;
            s->graphics.anim = SA1_ANIM_BOSS_2;
            boss->s.variant = 1;
            boss->s.prevVariant = 0xFF;
            s2->graphics.anim = SA1_ANIM_BOSS_2_EGGMAN;
            boss->s2.variant = 0;
            boss->s2.prevVariant = -1;
        }
    } else if (s2->frameFlags & 0x4000) {
        boss->s2.variant = 0;
        boss->s2.prevVariant = -1;
    }

    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);

    worldX = TO_WORLD_POS(boss->base.meX, boss->base.regionX) + I(boss->unk94);
    worldY = TO_WORLD_POS(me->y, boss->base.regionY) + I(boss->unk98);
    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    sub_802D908();
    DisplaySprite(s);
    DisplaySprite(s2);
}
