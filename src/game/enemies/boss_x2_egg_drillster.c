#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/enemies/bosses_shared.h" // CreatePreBossCameraPan
#include "game/nuts_and_bolts_task.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/stage/terrain_collision.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"

/* Sonic 2 - Emerald Hill Boss */

typedef struct EggDrillster {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ Sprite s2;
    /* 0x6C */ s32 unk6C;
    /* 0x70 */ s32 unk70;
    /* 0x74 */ s32 unk74;
    /* 0x78 */ s32 unk78;
    /* 0x7C */ s16 worldX;
    /* 0x7E */ s16 worldY;
    /* 0x80 */ s16 unk80;
    /* 0x82 */ s16 unk82;
    /* 0x84 */ u16 unk84;
    /* 0x86 */ s8 unk86;
    /* 0x87 */ s8 unk87;
    /* 0x88 */ s16 unk88;
    /* 0x8A */ s16 unk8A;
    /* 0x8C */ u8 unk8C;
    /* 0x8C */ u8 unk8D;
    /* 0x8D */ char filler8E[2];
} EggDrillster; /* size = 0x90 */

void Task_EggDrillsterInit(void);
void Task_8035DD4(void);
void sub_80365AC(void);
void Task_8035F70(void);
void sub_8035AAC(void);
void TaskDestructor_EggDrillster(struct Task *t);
void Task_8035F70(void);

void sub_803596C(CamCoord worldX, CamCoord worldY);
void sub_8036478(CamCoord worldX, CamCoord worldY);
void sub_8036150(void);
void Task_803623C(void);

static inline void sub_8036DCC_inline()
{
    EggDrillster *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;

    s2->x = s->x;
    s2->y = s->y;
}

static inline void setPlayerPos_inline(CamCoord worldX, CamCoord worldY)
{
    EggDrillster *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
}

static inline void sub_8036D90_inline()
{
    EggDrillster *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;

    if ((s2->variant != 0) && (s2->frameFlags & 0x4000)) {
        s2->variant = 0;
        s2->prevVariant = -1;
    }
}

void sub_803596C(CamCoord worldX, CamCoord worldY)
{
    Sprite *s;
    Sprite *s2;
    enum EHit collPlayer;
    enum EHit collPartner;
    s16 temp_r6;
    s16 temp_r7;
    u16 temp_r3;
    u8 *temp_r1;

    EggDrillster *boss = TASK_DATA(gCurTask);
    s = &boss->s;
    s->frameFlags &= ~0x180;
    if (PLAYER_IS_ALIVE) {
        gDispCnt &= ~0x8000;
        gWinRegs[WINREG_WINOUT] = 0;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
    }

    if (boss->unk87 == 0) {
        collPlayer = Coll_Player_Boss(s, worldX, worldY, &gPlayer);
        collPartner = HIT_NONE;
        if (gNumSingleplayerCharacters == NUM_SINGLEPLAYER_CHARS_MAX) {
            collPartner = Coll_Player_Boss(s, worldX, worldY, &gPartner);
        }
        s2 = &boss->s2;
        if ((collPlayer == HIT_ENEMY) || (collPartner == HIT_ENEMY)) {
            boss->unk86++;
            boss->unk87 = 0x20;
            s2->variant = 2;
            s2->prevVariant = -1;
            s2->frameFlags &= ~0x4000;
            m4aSongNumStart(SE_BOSS_HIT);
            return;
        }
        if ((collPlayer == HIT_PLAYER) || (collPartner == HIT_PLAYER)) {
            s2->variant = 1;
            s2->prevVariant = -1;
            s2->frameFlags &= ~0x4000;
        }
    }
}

// NOTE: Same as sub_80343E0
void sub_8035AAC()
{
    EggDrillster *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;

    if (boss->unk87 != 0) {
        if ((--boss->unk87 > 0x10) && !(boss->unk87 & 2) && PLAYER_IS_ALIVE) {
            s->frameFlags |= 0x100;
            gDispCnt |= DISPCNT_OBJWIN_ON;
            gWinRegs[WINREG_WINOUT] = 0x3F1F;
            gBldRegs.bldCnt = 0xBF;
            gBldRegs.bldY = 0x10;
        }
    }
    DisplaySprite(s);
    DisplaySprite(s2);
}

void CreateEntity_EggDrillster(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    s32 sp4;
    Sprite *s;
    Sprite *s2;
    s16 *temp_r1_2;
    s16 *temp_r2_2;
    s32 temp_r4;
    s32 temp_r4_2;

    struct Task *t;
    EggDrillster *boss;

    if (gBossIndex != 0) {
        return;
    }
    if (IS_MULTI_PLAYER) {
        SET_MAP_ENTITY_INITIALIZED(me);
        return;
    }

    t = TaskCreate(Task_EggDrillsterInit, 0x90U, 0x2000U, 0U, TaskDestructor_EggDrillster);
    boss = TASK_DATA(t);
    boss->base.regionX = regionX;
    boss->base.regionY = regionY;
    boss->base.me = me;
    boss->base.meX = me->x;
    boss->base.id = id;
    boss->unk84 = 120;
    boss->unk86 = 0;
    boss->unk87 = 0;
    boss->unk8D = 0;
    boss->unk8C = 0;
    boss->unk6C = 0xC020;
    boss->unk70 = -0x2800;
    boss->unk74 = 0;
    boss->unk78 = 0;
    boss->unk88 = 0;
    boss->unk8A = 0;
    boss->worldX = TO_WORLD_POS(me->x, regionX);
    boss->worldY = TO_WORLD_POS(me->y, regionY);

    s = &boss->s;
    s->x = boss->worldX;
    s->y = boss->worldY;
    s->graphics.dest = ALLOC_TILES(SA1_ANIM_BOSS_X2_EGGDRILLSTER);
    s->oamFlags = SPRITE_OAM_ORDER(22);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_BOSS_X2_EGGDRILLSTER;
    s->variant = 0;
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
    s2->graphics.dest = ALLOC_TILES(SA1_ANIM_BOSS_X2_EGGMAN);
    s2->oamFlags = 0x540;
    s2->graphics.size = 0;
    s2->graphics.anim = SA1_ANIM_BOSS_X2_EGGMAN;
    s2->variant = 0;
    s2->animCursor = 0;
    s2->qAnimDelay = 0;
    s2->prevVariant = -1;
    s2->animSpeed = 0x10;
    s2->palId = 0;
    s2->hitboxes[0].index = -1;
    s2->frameFlags = 0x2000;
}

void Task_EggDrillsterInit(void)
{
    EggDrillster *boss;

    boss = TASK_DATA(gCurTask);

    switch (boss->unk8D) {
        case 0: {
            if (boss->worldX - (DISPLAY_WIDTH / 2) <= gCamera.x) {
                gCamera.minX = boss->worldX - (DISPLAY_WIDTH / 2) - 32;
                gCamera.maxX = boss->worldX + 152;
                boss->unk8D = 1;
            }
        } break;

        case 1: {
            if (boss->worldY - 224 <= gCamera.y) {
                CreatePreBossCameraPan((boss->worldY - DISPLAY_HEIGHT), boss->worldY);
                boss->unk8D = 2;
            }
        } break;
    }

    if (boss->unk8D == 2) {
        boss->unk8D = 0;
        boss->unk74 = -0x180;

        sub_80365AC();

        gCurTask->main = Task_8035DD4;
        gMusicManagerState.unk1 = 0x15;
    }
}

// Similar to Task_8034718
void Task_8035DD4(void)
{
    CamCoord worldX;
    CamCoord worldY;

    EggDrillster *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;

    boss->unk6C += boss->unk74;
    boss->unk70 += boss->unk78;
    worldX = boss->worldX + I(boss->unk6C);
    worldY = boss->worldY + I(boss->unk70);
    boss->unk80 = worldX;
    boss->unk82 = worldY;

    setPlayerPos_inline(worldX, worldY);
    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);

    sub_8036DCC_inline();

    sub_8035AAC();

    switch (boss->unk8D) {
        case 0: {
            if (boss->unk6C <= Q(0)) {
                boss->unk6C = Q(0);
                boss->unk74 = Q(0);
                boss->unk78 = Q(0);
                boss->unk84 = 15;
                boss->unk8D++;
            }
        } break;

        case 1: {
            if (--boss->unk84 == 0) {
                s2->variant = 1;
                s2->prevVariant = -1;
                boss->unk8D++;
            }
        } break;

        case 2: {
            if (s2->frameFlags & 0x4000) {
                s2->variant = 0;
                s2->prevVariant = -1;
                boss->unk84 = 0xF;
                boss->unk8D++;
            }
        } break;

        case 3: {
            if (--boss->unk84 == 0) {
                boss->unk74 = -0x200;
                boss->unk8C = 0xFF;
                boss->unk8D = 0;
                gCurTask->main = Task_8035F70;
            }
        } break;
    }
}

void Task_8035F70()
{
    Sprite *s;
    Sprite *s2;
    CamCoord worldX, worldY;

    EggDrillster *boss = TASK_DATA(gCurTask);

    s = &boss->s;
    s2 = &boss->s2;
    boss->unk6C += boss->unk74;
    boss->unk70 += boss->unk78;
    worldX = (boss->worldX + I(boss->unk6C));
    worldY = (boss->worldY + I(boss->unk70));
    boss->unk80 = worldX;
    boss->unk82 = worldY;
    sub_803596C(worldX, worldY);
    if (boss->unk86 > 3) {
        sub_8036150();
        return;
    }
    setPlayerPos_inline(worldX, worldY);

    sub_8036D90_inline();
    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);
    sub_8036DCC_inline();
    sub_8035AAC();

    switch (boss->unk8D) {
        case 0:
            if (boss->unk6C <= -Q(192)) {
                boss->unk74 = 0;
                boss->unk84 = 0x1E;
                boss->unk8D++;
            }
            break;
        case 1:
            if (--boss->unk84 == 0) {
                boss->unk74 = 0x200;
                SPRITE_FLAG_SET(s, X_FLIP);
                SPRITE_FLAG_SET(s2, X_FLIP);
                boss->unk8D++;
            }
            break;
        case 2:
            if (boss->unk6C > 0xBFFF) {
                boss->unk74 = 0;
                boss->unk84 = 0x1E;
                boss->unk8D++;
            }
            break;
        case 3:
            if (--boss->unk84 == 0) {
                boss->unk74 = -0x200;
                SPRITE_FLAG_CLEAR(s, X_FLIP);
                SPRITE_FLAG_CLEAR(s2, X_FLIP);
                boss->unk8D = 0;
            }
            break;
    }
}

void sub_8036150(void)
{
    s32 temp_r0;
    s32 temp_r5;
    s32 temp_r6;
    u16 temp_r3;

    EggDrillster *boss = TASK_DATA(gCurTask);
    Sprite *s;

    s = &boss->s;
    boss->unk8D = 0;
    boss->unk74 = 0;
    boss->unk78 = 0;
    boss->s2.variant = 2;
    boss->s2.prevVariant = 0xFF;
    gCamera.minX = (s16)(u16)gCamera.x;
    gCamera.maxX = (u16)gCamera.x + 0xF0;
    m4aSongNumStart(0x90U);
    s->frameFlags &= 0xFFFFFE7F;
    if (PLAYER_IS_ALIVE) {
        gDispCnt &= 0x7FFF;
        gWinRegs[WINREG_WINOUT] = 0;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
    }
    temp_r6 = gLevelScore;
    temp_r0 = temp_r6 + 0x3E8;
    gLevelScore = temp_r0;
    temp_r5 = Div(temp_r0, 0xC350);
    if ((temp_r5 != Div(temp_r6, 0xC350)) && (gGameMode == 0)) {
        gNumLives = (u8)(gNumLives + 1);
    }

    Task_803623C();
    gCurTask->main = Task_803623C;
}

void Task_803623C()
{
    Collision *temp_r2_3;
    Sprite *s2;
    Sprite *temp_r1_3;
    Sprite *s;
    s16 *temp_r1_4;
    s16 *temp_r6_2;
    s16 *temp_r7;
    s16 temp_r0_6;
    s16 temp_r0_7;
    s32 temp_r0_2;
    s32 temp_r0_4;
    s32 res;
    s32 temp_r4_2;
    s32 temp_r6_4;

    EggDrillster *boss = TASK_DATA(gCurTask);
    CamCoord worldX, worldY;

    s = &boss->s;
    s2 = &boss->s2;
    if (boss->unk8D < 2) {
        if (boss->unk8D == 0) {
            boss->unk78 += 0x10;
        }

        boss->unk6C += boss->unk74;
        boss->unk70 += boss->unk78;
        worldX = (boss->worldX + I(boss->unk6C));
        worldY = (boss->worldY + I(boss->unk70));
        boss->unk80 = worldX;
        boss->unk82 = worldY;

        if (!(7 & boss->unk84)) {
            sub_8036478(worldX, worldY);
        }
        UpdateSpriteAnimation(s);
        UpdateSpriteAnimation(s2);

        setPlayerPos_inline(worldX, worldY);

        sub_8036DCC_inline();
        DisplaySprite(s);
        DisplaySprite(s2);
    }

    switch (boss->unk8D) {
        case 0:
            boss->unk84--;
            res = sa2__sub_801F100(worldY + 20, worldX, 1, 8, sa2__sub_801EC3C);
            if (res < 0) {
                boss->unk70 += Q(res);
                boss->unk78 = 0;
                boss->unk84 = DISPLAY_WIDTH;
                boss->unk8D++;
            }
            break;
        case 1:
            if (--boss->unk84 == 0) {
                CreatePostBossEggMobile(worldX, worldY);
                gMusicManagerState.unk1 = 0x35;
                sub_8017540(Q(worldX + 0x10), Q(worldY - 0x10));
                sub_8017540(Q(worldX - 0x10), Q(worldY - 0x10));
                sub_8017540(Q(worldX + 0x14), Q(worldY + 0x10));
                sub_8017540(Q(worldX - 0x14), Q(worldY + 0x10));
                boss->unk84 = DISPLAY_WIDTH;
                boss->unk8D++;
            }
            break;
        case 2:
            if (--boss->unk84 == 0) {
                gRefCollision = gCollisionTable[gCurrentLevel];
                gCamera.minY = 0;
                gCamera.maxY = gRefCollision->pxHeight;
                gCamera.maxX = gRefCollision->pxWidth;
                TaskDestroy(gCurTask);
            }
            break;
    }
}

void sub_8036478(CamCoord worldX, CamCoord worldY)
{
    struct Task *t;
    NutsAndBolts *bolts;
    Sprite *sprBolts;
    s32 rndIndex = PseudoRandom32() % ARRAY_COUNT(gUnknown_080BB41C);
    s32 rndTheta;
    s32 a0, a1;
    s32 rnd;
    t = CreateNutsAndBoltsTask(0x2000U, VramMalloc(gUnknown_080BB434[rndIndex]), gUnknown_080BB41C[rndIndex], gUnknown_080BB42C[rndIndex],
                               TaskDestructor_NutsAndBolts);
    bolts = TASK_DATA(t);
    sprBolts = &bolts->s;
    bolts->qUnk30 = Q(worldX);
    bolts->qUnk34 = Q(worldY + 16);
    sprBolts->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    sprBolts->oamFlags = SPRITE_OAM_ORDER(23);
    bolts->qUnk3E = Q(5. / 256.);
    bolts->qUnk40 = Q(32. / 256.);
    rndTheta = PseudoRandom32();
    bolts->qUnk3A = (-(SIN(rndTheta & 0x1FF) * 0x600)) >> 0xE;
    bolts->qUnk38 = (-(COS(rndTheta & 0x1FF) * 0x600)) >> 0xE;

    rnd = PseudoRandom32();
    sub_8017540(Q((worldX + (0x3F & rnd)) - 32), Q(worldY + 32 - ((rnd & 0x3F0000) >> 0x10)));
}
