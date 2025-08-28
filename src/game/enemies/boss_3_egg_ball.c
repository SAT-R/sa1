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
#include "constants/char_states.h"
#include "constants/songs.h"

typedef struct EggBall {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ Sprite s2;
    /* 0x6C */ struct Task *strc6C; // -> EggBall_44
    /* 0x70 */ s32 qUnk70;
    /* 0x74 */ s32 qUnk74;
    /* 0x78 */ s32 qUnk78;
    /* 0x7C */ s32 qUnk7C;
    /* 0x80 */ u8 filler80[0x4];
    /* 0x84 */ s16 unk84;
    /* 0x86 */ s16 unk86;
    /* 0x88 */ u16 unk88;
    /* 0x8A */ s8 unk8A;
    /* 0x8B */ s8 unk8B;
    /* 0x8C */ u8 unk8C;
    /* 0x8D */ u8 unk8D;
    /* 0x8E */ u8 unk8E;
    /* 0x90 */ s16 qUnk90;
    /* 0x94 */ void *vram94;
    /* 0x98 */ void *vram98;
} EggBall;

typedef struct EggBall_44 {
    /* 0x00 */ Sprite s;
    /* 0x30 */ s32 qUnk30;
    /* 0x34 */ s32 qUnk34;
    /* 0x38 */ s32 unk38;
    /* 0x3C */ s32 unk3C;
    /* 0x40 */ u8 filler40[0x2];
    /* 0x42 */ u8 unk42;
} EggBall_44;

typedef struct EggBall_4C {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    s16 unk3C;
    s16 unk3E;
    /* 0x40 */ u8 filler40[4];
    u8 unk44;
    u8 unk45;
    EggBall *boss;
} EggBall_4C;

void Task_803053C(void);
void Task_EggBallMain(void);
void sub_802EF94(CamCoord worldX, CamCoord worldY);
void Task_802F0D0(void);
void Task_802F56C(void);
void Task_802F644(void);
void Task_802F804(void);
void Task_802F9F8(void);
void Task_802FE88(void);
void sub_802FB2C(void);
void Task_802FC14(void);
void Task_8030120(void);
void Task_803020C(void);
void Task_8030364(void);
void TaskDestructor_EggBall(struct Task *t);
void TaskDestructor_8030740(struct Task *t);
void TaskDestructor_8030754(struct Task *t);

extern u16 gUnknown_084ACDD2[8][2][2];
extern s32 gUnknown_084ACE24[8][4];
extern u8 gUnknown_084ACEA4[2][2];
extern s16 gUnknown_084ACDC0[9];

static inline void sub_8030814_inline()
{
    EggBall *boss = TASK_DATA(gCurTask);
    Sprite *s2 = &boss->s2;

    if ((s2->variant != 0) && (s2->frameFlags & 0x4000)) {
        s2->variant = 0;
        s2->prevVariant = -1;
    }
}

static inline void sub_8030850_inline()
{
    EggBall *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;

    s2->x = s->x;
    s2->y = s->y;
}

static inline void sub_8030870_inline(CamCoord worldX, CamCoord worldY)
{
    EggBall *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
}

void sub_802EF94(CamCoord worldX, CamCoord worldY)
{
    Sprite *s;
    Sprite *s2;
    s16 regionX;
    s16 temp_r7;
    EHit collPlayer;
    EHit collPartner;
    u16 temp_r3;
    u8 *temp_r1;
    u8 *temp_r3_2;

    EggBall *boss = TASK_DATA(gCurTask);

    s = &boss->s;
    s->frameFlags &= ~SPRITE_FLAG_MASK_OBJ_MODE;

    if (PLAYER_IS_ALIVE) {
        gDispCnt &= ~DISPCNT_OBJWIN_ON;
        gWinRegs[WINREG_WINOUT] = 0;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
    }

    if (boss->unk8B == 0) {
        collPlayer = Coll_Player_Boss(s, worldX, worldY, &gPlayer);
        collPartner = 0;
        if (gNumSingleplayerCharacters == NUM_SINGLEPLAYER_CHARS_MAX) {
            collPartner = Coll_Player_Boss(s, worldX, worldY, &gPartner);
        }

        s2 = &boss->s2;
        if ((collPlayer == 1) || (collPartner == 1)) {
            boss->unk8A++;
            boss->unk8B = 32;

            if (boss->unk8A == 4) {
                boss->unk8C = 1;
            }

            boss->s2.variant = 2;
            s2->frameFlags &= ~SPRITE_FLAG_MASK_ANIM_OVER;
            m4aSongNumStart(SE_BOSS_HIT);
        } else if ((collPlayer == 2) || (collPartner == 2)) {
            boss->s2.variant = 1;
            s2->frameFlags &= ~SPRITE_FLAG_MASK_ANIM_OVER;
        }
    }
}

void Task_802F0D0(void)
{
    EggBall *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;

    if (boss->unk8B != 0) {
        if ((--boss->unk8B > 16) && !(boss->unk8B & 2) && PLAYER_IS_ALIVE) {
            s->frameFlags |= SPRITE_FLAG(OBJ_MODE, 2);
            gDispCnt |= DISPCNT_OBJWIN_ON;
            gWinRegs[WINREG_WINOUT] = WINOUT_WINOBJ_ALL | (WINOUT_WIN01_ALL & ~WINOUT_WIN01_CLR);
            gBldRegs.bldCnt = 0xBF;
            gBldRegs.bldY = 0x10;
        }
    }

    DisplaySprite(s);
    DisplaySprite(s2);
}

void CreateEntity_EggBall(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t;
    EggBall *boss;
    SpriteBase *base;
    Sprite *s0;
    Sprite *s;
    Sprite *s2;
    u8 i;
    u16 unk3C, unk3E;

    if (IS_MULTI_PLAYER) {
        SET_MAP_ENTITY_INITIALIZED(me);
        return;
    }

    gPseudoRandom = gFrameCount;
    t = TaskCreate(Task_EggBallMain, sizeof(EggBall), 0x2100U, 0U, TaskDestructor_EggBall);
    boss = TASK_DATA(t);
    s0 = &boss->s;
    boss->base.regionX = regionX;
    boss->base.regionY = regionY;
    boss->base.me = me;
    boss->base.meX = me->x;
    boss->base.id = id;
    boss->unk84 = 0;
    boss->unk88 = 0;
    boss->unk86 = -8;
    boss->unk8B = 0;
    boss->unk8C = 0;
    boss->qUnk70 = 0;
    boss->unk8D = 0;
    boss->unk8E = 0;

    if (gLoadedSaveGame.difficultyLevel != DIFFICULTY_NORMAL) {
        boss->unk8A = 2;
    } else {
        boss->unk8A = 0;
    }

    s = s0;
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);
    s->graphics.dest = ALLOC_TILES(SA1_ANIM_BOSS_3_MOBILE);
    s->oamFlags = SPRITE_OAM_ORDER(21);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_BOSS_3_MOBILE;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;

    s = &boss->s2;
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);
    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_BOSS_3_EGGMAN);
    s->oamFlags = SPRITE_OAM_ORDER(22);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_BOSS_3_EGGMAN;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;

    for (i = 0; i < 8; i++) {
        EggBall_4C *strc;
        Sprite *s;
        t = TaskCreate(Task_803053C, sizeof(EggBall_4C), 0x2200U, 0U, TaskDestructor_8030754);
        strc = TASK_DATA(t);
        strc->unk44 = i;
        strc->unk45 = 90;
        strc->unk3C = unk3C = gUnknown_084ACDD2[i][0][0];
        strc->unk3E = unk3E = gUnknown_084ACDD2[i][0][1];
        strc->base.regionX = boss->base.regionX;
        strc->base.regionY = boss->base.regionY;
        strc->base.me = boss->base.me;
        strc->base.meX = boss->base.meX;
        strc->base.id = boss->base.id;
        strc->boss = boss;

        s = &strc->s;
        s->x = TO_WORLD_POS(me->x, regionX) + unk3C;
        s->y = TO_WORLD_POS(me->y, regionY) + unk3E;

        if ((i & -3) == 0) {
            void *vram = ALLOC_TILES(SA1_ANIM_EGG_BALL_PIPES);
            s->graphics.dest = vram;
            if (i == 0) {
                boss->vram94 = vram;
            } else {
                boss->vram98 = vram;
            }
        } else {
            if (!(2 & i)) {
                s->graphics.dest = boss->vram94;
            } else {
                s->graphics.dest = boss->vram98;
            }
        }

        if (2 & i) {
            s->oamFlags = 0x480;
        } else {
            s->oamFlags = 0x380;
        }

        s->graphics.size = 0;
        s->graphics.anim = SA1_ANIM_EGG_BALL_PIPES;
        s->variant = gUnknown_084ACDD2[i][1][0];
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = (s16)gUnknown_084ACDD2[i][1][1] | 0x2000;
    }

    sub_80171BC(s0->y - 184, s0->y + 0x10, s0->x - 280, s0->x);
    gMusicManagerState.unk1 = 0x10;
}

void Task_EggBallMain(void)
{
    EggBall *boss = TASK_DATA(gCurTask);

    if (boss->unk88++ > 120) {
        Sprite *s = &boss->s;
        Sprite *s2 = &boss->s2;
        MapEntity *me = boss->base.me;
        CamCoord worldX, worldY;

        boss->qUnk70 = -Q(85);
        boss->qUnk74 = 0;
        boss->qUnk7C = -Q(1);

        worldX = TO_WORLD_POS(boss->base.meX, boss->base.regionX) + I(boss->qUnk70);
        worldY = TO_WORLD_POS(me->y, boss->base.regionY);

        s->x = worldX - gCamera.x;
        s->y = worldY - gCamera.y;
        s2->x = s->x;
        s2->y = s->y;

        UpdateSpriteAnimation(s);
        UpdateSpriteAnimation(s2);
        DisplaySprite(s);
        DisplaySprite(s2);

        boss->unk88 = 60;
        gCurTask->main = Task_802F56C;
        gCurTask->main();
    }
}

void Task_802F56C(void)
{
    struct Task *t = gCurTask;
    EggBall *boss = TASK_DATA(t);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;
    MapEntity *me = boss->base.me;

    if (boss->qUnk74 <= -Q(80)) {
        if (--boss->unk88 == 0) {
            s2->variant = 1;
            boss->unk88 = 60;
            gCurTask->main = Task_802F644;
        }
    } else {
        boss->qUnk74 -= Q(1);
    }

    {
        CamCoord worldX, worldY;

        worldX = TO_WORLD_POS(boss->base.meX, boss->base.regionX) + I(boss->qUnk70);
        worldY = TO_WORLD_POS(me->y, boss->base.regionY) + I(boss->qUnk74);

        s->x = worldX - gCamera.x;
        s->y = worldY - gCamera.y;
        sub_8030850_inline();

        UpdateSpriteAnimation(s);
        UpdateSpriteAnimation(s2);
        DisplaySprite(s);
        DisplaySprite(s2);
    }
}

void Task_802F644()
{
    MapEntity *me;
    Sprite *s;
    Sprite *s2;
    struct Task *t;
    CamCoord worldX, worldY;

    EggBall *boss = TASK_DATA(gCurTask);

    s = &boss->s;
    s2 = &boss->s2;
    me = boss->base.me;

    if (boss->s2.variant == 0) {
        if (boss->unk88 == 0) {
            boss->qUnk74 -= Q(1);
            if (boss->qUnk74 <= -Q(208)) {
                EggBall_44 *strc44;
                Sprite *spr44;

                boss->unk88 = 60;
                gCurTask->main = Task_802F804;

                t = TaskCreate(Task_8030120, sizeof(EggBall_44), 0x2800U, 0U, TaskDestructor_8030740);
                strc44 = TASK_DATA(t);
                spr44 = &strc44->s;

                strc44->qUnk30 = boss->qUnk70;
                strc44->qUnk34 = boss->qUnk74;
                strc44->unk38 = 0;
                strc44->unk3C = 0;
                strc44->unk42 = 0;
                boss->strc6C = t;

                spr44->x = 0;
                spr44->y = 0;
                spr44->graphics.dest = ALLOC_TILES(SA1_ANIM_BOSS_3_SPIKE_BALL);
                spr44->oamFlags = SPRITE_OAM_ORDER(23);
                spr44->graphics.size = 0;
                spr44->graphics.anim = SA1_ANIM_BOSS_3_SPIKE_BALL;
                spr44->variant = 0;
                spr44->animCursor = 0;
                spr44->qAnimDelay = 0;
                spr44->prevVariant = -1;
                spr44->animSpeed = SPRITE_ANIM_SPEED(1.0);
                spr44->palId = 0;
                spr44->hitboxes[0].index = -1;
                spr44->frameFlags = 0x2000;
            }
        } else {
            boss->unk88--;
        }
    }

    if ((s2->variant == 1) && (s2->frameFlags & 0x4000)) {
        boss->unk88 = 60;
        s2->variant = 0;
    }

    worldX = TO_WORLD_POS(boss->base.meX, boss->base.regionX) + I(boss->qUnk70);
    worldY = TO_WORLD_POS(me->y, boss->base.regionY) + I(boss->qUnk74);
    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    sub_8030850_inline();

    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);
    DisplaySprite(s);
    DisplaySprite(s2);
}

void Task_802F804(void)
{
    Sprite *s2;
    MapEntity *me;
    s32 strc;
    Sprite *s;
    CamCoord worldX, worldY;
    u32 var_r0;

    EggBall *boss = TASK_DATA(gCurTask);

    s = &boss->s;
    s2 = &boss->s2;
    me = boss->base.me;
    if (--boss->unk88 == 0) {
        EggBall_44 *strc = TASK_DATA(boss->strc6C);
        s32 a;
        s32 unk8E = PseudoRandom32() & 0x7;
        boss->unk8E = unk8E;
        a = gUnknown_084ACEA4[unk8E][0];
        boss->qUnk70 = gUnknown_084ACE24[a][0];
        boss->qUnk74 = gUnknown_084ACE24[a][1];
        boss->qUnk78 = (gUnknown_084ACE24[a][2] * gUnknown_084ACDC0[boss->unk8A]) / 10;
        boss->qUnk7C = (gUnknown_084ACE24[a][3] * gUnknown_084ACDC0[boss->unk8A]) / 10;

        if (boss->qUnk70 >= -Q(140)) {
            s->frameFlags &= ~0x400;
            s2->frameFlags &= ~0x400;
        } else {
            s->frameFlags |= 0x400;
            s2->frameFlags |= 0x400;
        }
        strc->unk42 = 0xFF;
        gCurTask->main = Task_802F9F8;
    }

    worldX = TO_WORLD_POS(boss->base.meX, boss->base.regionX) + I(boss->qUnk70);
    worldY = TO_WORLD_POS(me->y, boss->base.regionY) + I(boss->qUnk74);
    boss->unk8B = 0;
    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);

    sub_8030870_inline(worldX, worldY);
    sub_8030814_inline();

    sub_8030850_inline();
}

void Task_802F9F8(void)
{
    Sprite *s2;
    MapEntity *me;
    s32 strc;
    Sprite *s;
    CamCoord worldX, worldY;
    u32 var_r0;

    EggBall *boss = TASK_DATA(gCurTask);

    s = &boss->s;
    s2 = &boss->s2;
    me = boss->base.me;

    boss->qUnk70 += boss->qUnk78;
    boss->qUnk74 += boss->qUnk7C;

    if ((((u32)boss->qUnk70 + Q(312) > Q(344)) || (boss->qUnk74 < -Q(208))) || (boss->qUnk74 > Q(40))) {
        EggBall_44 *strc = TASK_DATA(boss->strc6C);
        boss->unk88 = 60;
        gCurTask->main = Task_802F804;
    }

    worldX = TO_WORLD_POS(boss->base.meX, boss->base.regionX) + I(boss->qUnk70);
    worldY = TO_WORLD_POS(me->y, boss->base.regionY) + I(boss->qUnk74);
    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);

    sub_802EF94(worldX, worldY);

    if (boss->unk8A >= 8) {
        sub_802FB2C();
    } else {
        sub_8030870_inline(worldX, worldY);
        sub_8030814_inline();

        sub_8030850_inline();

        Task_802F0D0();
    }
}

void sub_802FB2C()
{
    u16 minY, maxY;

    EggBall *boss = TASK_DATA(gCurTask);
    Sprite *s2 = &boss->s2;

    s2->variant = 2;
    boss->qUnk90 = -0x200;
    m4aSongNumStart(SE_EXPLOSION);

    boss->strc6C->main = Task_8030364;

    TasksDestroyInPriorityRange(0x2010U, 0x2011U);

    gPlayer.moveState &= ~8;
    gPartner.moveState &= ~8;

    gCamera.minX = gCamera.x;
    gCamera.maxX = gCamera.x + DISPLAY_WIDTH;

    minY = gCamera.minY;
    maxY = gCamera.maxY;
    sub_80174DC(gCamera.minY + 40, gCamera.maxY);
    gCamera.minY = minY;
    gCamera.maxY = maxY;

    INCREMENT_SCORE_A(1000);

    Task_802FC14();
    gCurTask->main = Task_802FC14;
}

void Task_802FC14(void)
{
    s32 res;

    EggBall *boss = TASK_DATA(gCurTask);
    SpriteBase *base = &boss->base;
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;
    MapEntity *me = boss->base.me;
    CamCoord worldX, worldY;

    boss->qUnk90 += 0x28;
    boss->qUnk74 += boss->qUnk90;

    worldX = TO_WORLD_POS(boss->base.meX, boss->base.regionX) + I(boss->qUnk70);
    worldY = TO_WORLD_POS(me->y, boss->base.regionY) + I(boss->qUnk74);

    res = sa2__sub_801F100(worldY + 0x18, worldX, 1, 8, &sa2__sub_801EC3C);
    if (res < 0) {
        boss->qUnk74 += Q(res);
        boss->qUnk90 = (boss->qUnk90 >> 2) - boss->qUnk90;
        if (boss->qUnk90 > -Q(1)) {
            boss->qUnk90 = 0U;
            gCurTask->main = Task_802FE88;
        }
    }

    s->frameFlags &= ~0x180;

    if (PLAYER_IS_ALIVE) {
        gDispCnt &= 0x7FFF;
        gWinRegs[WINREG_WINOUT] = 0;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
    }

    boss->unk88++;
    if ((boss->unk88 & 0x7) == 0) {
        struct Task *t;
        NutsAndBolts *bolts;
        Sprite *sprBolts;
        s32 rndIndex = PseudoRandom32() % ARRAY_COUNT(gUnknown_080BB41C);
        s32 rndTheta;
        s32 a0, a1;
        s32 rnd;
        t = CreateNutsAndBoltsTask(0x2000U, VramMalloc(gUnknown_080BB434[rndIndex]), gUnknown_080BB41C[rndIndex],
                                   gUnknown_080BB42C[rndIndex], TaskDestructor_NutsAndBolts);
        bolts = TASK_DATA(t);
        sprBolts = &bolts->s;
        bolts->qUnk30 = Q(worldX);
        bolts->qUnk34 = Q(worldY + 32);
        sprBolts->frameFlags = SPRITE_FLAG(PRIORITY, 2);
        sprBolts->oamFlags = SPRITE_OAM_ORDER(17);
        bolts->qUnk3E = Q(40. / 256.);
        bolts->qUnk40 = Q(32. / 256.);
        rndTheta = PseudoRandom32();
        bolts->qUnk3A = (-(SIN(rndTheta & 0x1FF) * 0x600)) >> 0xE;
        bolts->qUnk38 = (-(COS(rndTheta & 0x1FF) * 0x600)) >> 0xE;

        rnd = PseudoRandom32();
        sub_8017540(Q((worldX + (0x3F & rnd)) - 32), Q(worldY + 32 - ((rnd & 0x3F0000) >> 0x10)));
    }

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    sub_8030850_inline();
    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);
    DisplaySprite(s);
    DisplaySprite(s2);
}

void Task_802FE88(void)
{
    EggBall *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;
    MapEntity *me = boss->base.me;
    CamCoord worldX, worldY;

    worldX = TO_WORLD_POS(boss->base.meX, boss->base.regionX) + I(boss->qUnk70);
    worldY = TO_WORLD_POS(me->y, boss->base.regionY) + I(boss->qUnk74);

    if (boss->unk88++ > 240) {
        Strc_sub_80168F0 *strc;
        sub_8015C5C(worldX, worldY - 8);
        CreateBossCapsule(worldX, worldY);
        gMusicManagerState.unk1 = 0x30;

        strc = TASK_DATA(sub_80168F0(worldX, worldY, 0x10, SA1_ANIM_BOSS_3_STAR_DISC, 0));

        strc->qUnk46 = -Q(2);
        strc->unk48 = +Q(0);
        strc->unk42 = 0x80;

        if (s->frameFlags & 0x400) {
            strc->transform.qScaleX = -Q(1);
            strc->qUnk44 = +Q(4);
        } else {
            strc->qUnk44 = -Q(4);
        }
        strc->unk40 = 60;

        TaskDestroy(gCurTask);
        return;
    }

    if ((boss->unk88 & 7) == 0) {
        struct Task *t;
        NutsAndBolts *bolts;
        Sprite *sprBolts;
        s32 rndIndex = PseudoRandom32() % ARRAY_COUNT(gUnknown_080BB41C);
        s32 rndTheta;
        s32 a0, a1;
        s32 rnd;
        t = CreateNutsAndBoltsTask(0x2000U, VramMalloc(gUnknown_080BB434[rndIndex]), gUnknown_080BB41C[rndIndex],
                                   gUnknown_080BB42C[rndIndex], TaskDestructor_NutsAndBolts);
        bolts = TASK_DATA(t);
        sprBolts = &bolts->s;
        bolts->qUnk30 = Q(worldX);
        bolts->qUnk34 = Q(worldY + 32);
        sprBolts->frameFlags = SPRITE_FLAG(PRIORITY, 2);
        sprBolts->oamFlags = SPRITE_OAM_ORDER(17);
        bolts->qUnk3E = Q(40. / 256.);
        bolts->qUnk40 = Q(32. / 256.);
        rndTheta = PseudoRandom32();
        bolts->qUnk3A = (-(SIN(rndTheta & 0x1FF) * 0x600)) >> 0xE;
        bolts->qUnk38 = (-(COS(rndTheta & 0x1FF) * 0x600)) >> 0xE;

        rnd = PseudoRandom32();
        sub_8017540(Q((worldX + (0x3F & rnd)) - 32), Q(worldY + 32 - ((rnd & 0x3F0000) >> 0x10)));
    }

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    sub_8030850_inline();
    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);
    DisplaySprite(s);
    DisplaySprite(s2);
}

void Task_8030120(void)
{
    MapEntity *me;
    Sprite *s;
    CamCoord worldX, worldY;

    EggBall_44 *boss_44 = TASK_DATA(gCurTask);
    EggBall *boss = TASK_DATA(TASK_PARENT(gCurTask));

    s = &boss_44->s;
    if (boss_44->unk42 != 0) {
        s32 a;
        a = gUnknown_084ACEA4[boss->unk8E & 0x7][1];
        boss_44->qUnk30 = gUnknown_084ACE24[a][0];
        boss_44->qUnk34 = gUnknown_084ACE24[a][1];
        boss_44->unk38 = (gUnknown_084ACE24[a][2] * gUnknown_084ACDC0[boss->unk8A]) / 10;
        boss_44->unk3C = (gUnknown_084ACE24[a][3] * gUnknown_084ACDC0[boss->unk8A]) / 10;

        if (boss_44->qUnk30 >= -Q(140)) {
            s->frameFlags &= ~0x400;
        } else {
            s->frameFlags |= 0x400;
        }

        boss_44->unk42 = 0;
        gCurTask->main = Task_803020C;
    }
}
