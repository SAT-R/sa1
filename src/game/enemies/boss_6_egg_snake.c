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
#include "game/save.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"

typedef struct Strc60_EggSnake {
    u8 filler0[0x55];
    u8 unk55;
    u8 unk56;
    u8 unk57;
    u8 filler58[0x4];
    s16 unk5C;
} Strc60_EggSnake;

typedef struct EggSnake {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ Hitbox reserved;
    /* 0x44 */ Sprite s2;
    /* 0x74 */ struct Task *t;
    /* 0x78 */ s32 qUnk78;
    /* 0x7C */ s32 qUnk7C;
    /* 0x80 */ s32 unk80;
    /* 0x84 */ s32 unk84;
    /* 0x88 */ u8 filler88[0x8];
    /* 0x90 */ s16 unk90;
    /* 0x92 */ s16 unk92;
    /* 0x94 */ u8 filler94[0x4];
    /* 0x98 */ u16 unk98;
    /* 0x9A */ s8 unk9A;
    /* 0x9B */ s8 unk9B;
    /* 0x9C */ s8 unk9C;
    /* 0x9E */ s16 qUnk9E;
    /* 0xA0 */ s16 unkA0;
    /* 0xA2 */ s16 unkA2;
    /* 0xA4 */ s16 unkA4;
    /* 0xA6 */ s16 unkA6;
    /* 0xA8 */ u8 unkA8;
    /* 0xA9 */ u8 unkA9;
    /* 0xAA */ u8 unkAA;
} EggSnake; /* 0xAC */

void Task_EggSnakeInit(void);
void sub_803170C(void);
void sub_8031D88(s16 worldX, s16 worldY);
void sub_8031ED0(void);
void sub_8031F74(void);
void Task_8032370(void);
void sub_80327C4(void);
void Task_8032AF8(void);
void sub_8032D44(void);
void sub_803330C(void);
void sub_8033878(void);
void TaskDestructor_8034208(struct Task *t);

s16 gUnknown_03005870[16];
extern const s16 gUnknown_084ACEE4[9];
extern const s16 gUnknown_084ACEF6[9];
extern const u16 gUnknown_084ACF08[10];

static inline void sub_803424C_inline()
{
    EggSnake *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;

    s2->x = s->x;
    s2->y = s->y;
}

static inline void sub_803426C__inline(CamCoord worldX, CamCoord worldY)
{
    EggSnake *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    MapEntity *me = boss->base.me;

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
}

void sub_8031D88(s16 worldX, s16 worldY)
{
    EggSnake *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    Sprite *s2;
    enum EHit collPlayer;
    enum EHit collPartner;

    s->frameFlags &= 0xFFFFFE7F;

    if (PLAYER_IS_ALIVE) {
        gDispCnt &= 0x7FFF;
        gWinRegs[5] = 0;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
    }

    if (boss->unk9C == 0) {
        collPlayer = Coll_Player_Bosses_2_6(s, worldX, worldY, &gPlayer);
        if (gNumSingleplayerCharacters == 2) {
            collPartner = Coll_Player_Bosses_2_6(s, worldX, worldY, &gPartner);
        } else {
            collPartner = HIT_NONE;
        }
        s2 = &boss->s2;

        if ((collPlayer == HIT_ENEMY) || (collPartner == HIT_ENEMY)) {
            boss->unk9A++;
            boss->unk9C = 0x20;

            if (s->variant == 2) {
                s2->variant = 2;
            }

            if (s->variant == 3) {
                s2->variant = 5;
            }

            s2->frameFlags &= 0xFFFFBFFF;
            m4aSongNumStart(0x8FU);
        } else if ((collPlayer == HIT_PLAYER) || (collPartner == HIT_PLAYER)) {
            if (s->variant == 2) {
                s2->variant = 1;
            }
            if (s->variant == 3) {
                s2->variant = 4;
            }
            s2->frameFlags &= 0xFFFFBFFF;
        }
    }
}

void sub_8031ED0(void)
{
    s8 temp_r1;
    u8 *temp_r2;

    EggSnake *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;

    if (boss->unk9C != 0) {
        if ((--boss->unk9C > 0x10) && !(boss->unk9C & 2) && !(gPlayer.moveState & 0x80)) {
            s->frameFlags |= 0x100;
            gDispCnt |= 0x8000;
            gWinRegs[5] = 0x3F1F;
            gBldRegs.bldCnt = 0xBF;
            gBldRegs.bldY = 0x10;
        }
    }
    DisplaySprite(s);
    if ((u8)boss->unkAA != 0xFF) {
        DisplaySprite(s2);
    }
}

void sub_8031F74()
{
    EggSnake *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;

    if ((s2->variant != 0) && (s2->variant != 3) && (s2->frameFlags & 0x4000)) {
        if (s->variant == 2) {
            s2->variant = 0;
        }

        if (s->variant == 3) {
            s2->variant = 3;
        }
        s2->prevVariant = 0xFF;
    }
}

// (96.34%) https://decomp.me/scratch/ULduN
NONMATCH("asm/non_matching/game/enemies/boss_6__CreateEntity_EggSnake.inc",
         void CreateEntity_EggSnake(MapEntity *me, u16 regionX, u16 regionY, u8 id))
{
    EggSnake *boss;
    Sprite *s;
    Sprite *s2;

    if (IS_MULTI_PLAYER) {
        SET_MAP_ENTITY_INITIALIZED(me);
        return;
    }
    boss = TASK_DATA(TaskCreate(Task_EggSnakeInit, sizeof(EggSnake), 0x2100U, 0U, TaskDestructor_8034208));
    s = &boss->s;
    boss->base.regionX = regionX;
    boss->base.regionY = regionY;
    boss->base.me = me;
    boss->base.meX = me->x;
    boss->base.id = id;
    boss->unk98 = 0x78;
    boss->unk9C = 0;
    boss->unkA9 = 0;
    boss->unkA8 = 0;
    boss->qUnk78 = 0x1000;
    boss->qUnk7C = 0;
    boss->unk80 = 0;
    boss->unk84 = 0;
    boss->unkA0 = 0;
    boss->unkA2 = 0x200;
    boss->unkA4 = 0;
    boss->unkAA = 0;
    if (LOADED_SAVE->difficultyLevel != 0) {
        boss->unk9A = 2;
    } else {
        boss->unk9A = 0;
    }
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);
    s->graphics.dest = VramMalloc(0x30U);
    s->oamFlags = 0x580;
    s->graphics.size = 0;
    s->graphics.anim = 0x296;
    s->variant = 3;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;

    s2 = &boss->s2;
    s2->x = TO_WORLD_POS(me->x, regionX);
    s2->y = TO_WORLD_POS(me->y, regionY);
    SET_MAP_ENTITY_INITIALIZED(me);
    s2->graphics.dest = VramMalloc(8);
    s2->oamFlags = 0x540;
    s2->graphics.size = 0;
    s2->graphics.anim = 0x294;
    s2->variant = 3;
    s2->animCursor = 0;
    s2->qAnimDelay = 0;
    s2->prevVariant = -1;
    s2->animSpeed = 0x10;
    s2->palId = 0;
    s2->hitboxes[0].index = -1;
    s2->frameFlags = 0x2000;
    sub_80171BC(s->y - 0x80, s->y + 0x20, s->x - 0x90, s->x + 0xB0);
}
END_NONMATCH

// (98.79%) https://decomp.me/scratch/34ZiA
NONMATCH("asm/non_matching/game/enemies/boss_6__Task_EggSnakeInit.inc", void Task_EggSnakeInit())
{
    MapEntity *me;
    Sprite *s2;
    s32 var_r2;
    s16 temp_r2;
    s32 temp_r0_2;
    s32 temp_r0_4;
    s32 temp_r0_5;
    s32 temp_r0_6;
    Sprite *s;
    s32 temp_r2_2;
    u16 *temp_r1_2;
    u16 *temp_r1_3;
    u16 *temp_r2_3;
    u16 temp_r0;
    u8 *temp_r3;
    u8 temp_r0_3;
    CamCoord worldX, worldY;

    EggSnake *boss = TASK_DATA(gCurTask);
    s = &boss->s;
    s2 = &boss->s2;
    me = boss->base.me;

    if ((boss->unk98 == 0x78) && (boss->unkA9 == 0)) {
        sub_8033878();
        sub_803330C();
    }
    var_r2 = gSineTable[boss->unkA0];
    var_r2 = (var_r2 * 15) >> 0xB;
    worldX = TO_WORLD_POS(boss->base.meX, boss->base.regionX) + I(boss->qUnk78) + var_r2;
    temp_r2 = (var_r2 + 0x90);
    if (temp_r2 >= 0) {
        var_r2 = temp_r2 + 0x1F;
    } else {
        var_r2 = (s16)temp_r2;
    }

    worldY = gUnknown_03005870[var_r2 >>= 5];
    worldY += TO_WORLD_POS(me->y, boss->base.regionY) + I(boss->qUnk7C);

    sub_803426C__inline(worldX, worldY);
    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);

    // inline
    sub_803424C_inline();

    sub_8031ED0();

    switch (boss->unkA9) {
        case 0:
            if (--boss->unk98 == 0) {
                gMusicManagerState.unk1 = 0x13;
                boss->unk98 = 0x3C;
                boss->unkA9++;
                return;
            }
            return;
        case 1:
            if (--boss->unk98 == 0) {
                s2->variant = 4;
                boss->unkA9++;
            }
            break;
        case 2:
            if (s2->frameFlags & 0x4000) {
                s2->variant = 3;
                boss->unk98 = 0x3C;
                boss->unkA9++;
            }
            break;
        case 3:
            if (--boss->unk98 == 0) {
                boss->unkA8 = 0xFF;
                boss->unkA9 = 0;
                gCurTask->main = Task_8032370;
            }
            break;
    }
}
END_NONMATCH

// (99.05%) https://decomp.me/scratch/wPkmW
NONMATCH("asm/non_matching/game/enemies/boss_6__Task_8032370.inc", void Task_8032370())
{
    Strc60_EggSnake *strc60;
    s16 temp_r2_3;
    s16 temp_r3_2;
    CamCoord worldX, worldY;
    s32 var_r0;
#ifndef NON_MATCHING
    register s32 var_r1 asm("r1");
    register s32 var_r3 asm("r3");
    register s32 var_r4 asm("r4");
#else
    s32 var_r1;
    s32 var_r3;
    s32 var_r4;
#endif
    s32 var_r4_3;
    s32 temp_r7;
    s16 *ptrA;

    EggSnake *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;
    MapEntity *me = boss->base.me;

    strc60 = TASK_DATA(boss->t);
    boss->unkA2 += boss->unkA4;
    boss->unkA0 = (boss->unkA0 - I(boss->unkA2));
    boss->unkA0 &= 0x3FF;
    temp_r7 = gSineTable[boss->unkA0];
    temp_r7 = (s32)(temp_r7 * 15) >> 11;
    worldX = (TO_WORLD_POS(boss->base.meX, boss->base.regionX) + I(boss->qUnk78) + temp_r7);
    temp_r3_2 = temp_r7 + 0x80;
    var_r1 = temp_r3_2;
    if (temp_r3_2 < 0) {
        var_r1 += 0x1F;
    }
    var_r1 = var_r1 >> 5;
    var_r4 = (u8)var_r1;
    var_r1 = temp_r3_2 - (var_r1 << 5);
    ptrA = &gUnknown_03005870[var_r4];
    var_r0 = gUnknown_03005870[var_r4 + 1];
    var_r0 -= (var_r3 = *ptrA);
    var_r1 = (s16)var_r1;
    var_r0 *= var_r1;
    if (var_r0 < 0) {
        var_r0 += 0x1F;
    }
    temp_r2_3 = var_r3 + (var_r0 >> 5);
    worldY = temp_r2_3 + (TO_WORLD_POS(me->y, boss->base.regionY) + I(boss->qUnk7C));
    boss->unk90 = temp_r7;
    boss->unk92 = temp_r2_3;
    sub_8031D88(worldX, worldY);
    if (boss->unk9A > 7) {
        sub_80327C4();
    } else {

        sub_803426C__inline(worldX, worldY);

        sub_8031F74();
        UpdateSpriteAnimation(s);
        if (boss->unkAA == 0) {
            UpdateSpriteAnimation(s2);
        }

        sub_803424C_inline();

        sub_8031ED0();

        switch (boss->unkA9) {
            case 0:
                if (boss->unkA2 < 0x200) {
                    boss->unkA2 = 0x200;
                    boss->unkA4 = 0;
                }
                var_r0 = temp_r7 + 0x90;
                if (var_r0 < 0) {
                    var_r0 += 0x1F;
                }
                var_r4_3 = (u8)(var_r0 >> 5);
                if ((var_r4_3 != 0) && (var_r4_3 != 8) && (strc60->unk55 != 0) && (strc60->unk55 != 8)
                    && ((s8)var_r4_3 >= ((s8)(strc60->unk55 - 2))) && ((s8)var_r4_3 <= (s8)(strc60->unk55 + 2)) && (strc60->unk57 != 0)) {
                    boss->unkA2 = 0x200;
                    boss->unkA4 = 0;
                    boss->unkA9++;
                }
                break;
            case 1:
                if (s->variant != 1) {
                    if (strc60->unk5C >= 0) {
                        return;
                    }
                    s->variant = 1;
                    s->prevVariant = -1;
                    boss->unkAA = -1;
                    return;
                }
                if (!(s->frameFlags & 0x4000)) {
                    return;
                }
                s->variant = 2;
                s2->variant = 0;
                s->prevVariant = -1;
                boss->unkAA = 0;
                boss->unk98 = gUnknown_084ACF08[(PseudoRandom32() + gStageTime) & 3];
                boss->unk9B = boss->unk9A;
                boss->unkA9++;
                break;
            case 2:
                if (boss->unk9C != 0) {
                    if (boss->unk9C > 16) {
                        return;
                    }
                    s->variant = 0;
                    s->prevVariant = -1;
                    boss->unkAA = -1;
                    boss->unkA9++;
                    break;
                }

                if (--boss->unk98 == 0) {
                    s->variant = 0;
                    s->prevVariant = -1;
                    boss->unkAA = -1;
                    boss->unkA9++;
                }
                break;
            case 3:
                if (s->frameFlags & 0x4000) {
                    s->variant = 3;
                    s2->variant = 3;
                    s->prevVariant = -1;
                    boss->unkAA = 0;
                    boss->unkA4 = 0x40;
                    boss->unkA6 = gUnknown_084ACEE4[boss->unk9A];
                    boss->unk98 = 0x78;
                    if (boss->unk9A == boss->unk9B) {
                        boss->unkA9 += 2;
                    } else {
                        boss->unkA9++;
                    }
                }
                break;
            case 4:
                if (boss->unkA2 >= boss->unkA6) {
                    boss->unkA2 = boss->unkA6;
                    boss->unkA4 = 0;
                }

                if (--boss->unk98 == 0) {
                    boss->unkA4 = 0xFFC0;
                    boss->unkA9 = 0;
                }
                break;
            case 5:
                if (boss->unkA2 >= 0x200) {
                    boss->unkA2 = 0x200;
                    boss->unkA4 = 0;
                    boss->unkA9 = 0;
                }
                break;
        }
    }
}
END_NONMATCH

void sub_80327C4()
{
    s16 var_r0;
    s32 temp_r0;
    s32 temp_r3;
    s32 temp_r4;
    s32 temp_r5;
    s32 temp_r5_2;
    s32 temp_r6;
    s32 temp_r6_2;

    EggSnake *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    Strc_sub_80168F0 *strc;
    MapEntity *me = boss->base.me;
    CamCoord worldX, worldY;

    boss->qUnk78 += Q(boss->unk90);
    boss->qUnk7C += Q(boss->unk92);
    worldX = TO_WORLD_POS(boss->base.meX, boss->base.regionX) + I(boss->qUnk78);
    worldY = TO_WORLD_POS(me->y, boss->base.regionY) + I(boss->qUnk7C);
    boss->s2.variant = 2;
    boss->qUnk9E = -0x80;
    m4aSongNumStart(0x90U);

    {
        strc = TASK_DATA(sub_80168F0(worldX, worldY, 4U, SA1_ANIM_BOSS_6_SPIKE, 0U));
        strc->qUnk46 = -Q(2);
        strc->unk48 = 0;
        strc->unk42 = 0x100;
        if (s->frameFlags & 0x400) {
            strc->transform.qScaleX = -0x100;
            strc->qUnk44 = 0x100;
        } else {
            strc->qUnk44 = -0x100;
        }
        strc->unk40 = 0x3C;
    }

    {
        strc = TASK_DATA(sub_80168F0(worldX + 16, worldY + 16, 4U, SA1_ANIM_BOSS_6_SPIKE, 0U));
        strc->qUnk46 = -Q(2);
        strc->unk48 = 0;
        strc->unk42 = 0x200;
        if (s->frameFlags & 0x400) {
            strc->transform.qScaleX = -0x100;
            strc->qUnk44 = 0x400;
        } else {
            strc->qUnk44 = -0x400;
        }

        strc->unk40 = 0x3C;
    }

    {
        strc = TASK_DATA(sub_80168F0(worldX - 16, worldY + 16, 4U, SA1_ANIM_BOSS_6_SPIKE, 0U));
        strc->qUnk46 = -Q(2);
        strc->unk48 = 0;
        strc->unk42 = 0x300;
        strc->s.frameFlags |= 0x400;
        if (s->frameFlags & 0x400) {
            strc->transform.qScaleX = -0x100;
            strc->qUnk44 = -0x200;
        } else {
            strc->qUnk44 = 0x200;
        }
        strc->unk40 = 0x3C;
    }

    {
        strc = TASK_DATA(sub_80168F0(worldX - 16, worldY + 16, 4U, SA1_ANIM_BOSS_6_SPIKE, 0U));
        strc->qUnk46 = -Q(2);
        strc->unk48 = 0;
        strc->unk42 = 0x380;
        strc->s.frameFlags |= 0x400;
        if (s->frameFlags & 0x400) {
            strc->transform.qScaleX = -0x100;
            strc->qUnk44 = -0x80;
        } else {
            strc->qUnk44 = +0x80;
        }

        strc->unk40 = 0x3C;
    }

    gCamera.minX = gCamera.x;
    gCamera.maxX = gCamera.x + DISPLAY_WIDTH;
    CreatePreBossCameraPan(gCamera.maxY - DISPLAY_HEIGHT, gCamera.maxY + DISPLAY_HEIGHT);
    gStageFlags |= 3;

    INCREMENT_SCORE_A(1000);

    Task_8032AF8();
    gCurTask->main = Task_8032AF8;
}

void Task_8032AF8(void)
{
    s32 res;

    EggSnake *boss = TASK_DATA(gCurTask);
    SpriteBase *base = &boss->base;
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;
    MapEntity *me = boss->base.me;
    CamCoord worldX, worldY;

    boss->qUnk9E += 0x5;
    boss->qUnk7C += boss->qUnk9E;

    worldX = TO_WORLD_POS(boss->base.meX, boss->base.regionX) + I(boss->qUnk78);
    worldY = TO_WORLD_POS(me->y, boss->base.regionY) + I(boss->qUnk7C);

    res = sa2__sub_801F100(worldY, worldX, 1, 8, &sa2__sub_801EC3C);

    if (res < 0) {
        boss->unk98 = 60;
        gCurTask->main = sub_8032D44;
        return;
    }

    s->frameFlags &= ~0x180;

    if (PLAYER_IS_ALIVE) {
        gDispCnt &= 0x7FFF;
        gWinRegs[WINREG_WINOUT] = 0;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
    }

    boss->unk98++;
    if ((boss->unk98 & 0x7) == 0) {
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
        bolts->qUnk3E = Q(5. / 256.);
        bolts->qUnk40 = Q(32. / 256.);
        rndTheta = PseudoRandom32();
        bolts->qUnk3A = (-(SIN(rndTheta & 0x1FF) * 0x600)) >> 0xE;
        bolts->qUnk38 = (-(COS(rndTheta & 0x1FF) * 0x600)) >> 0xE;

        rnd = PseudoRandom32();
        sub_8017540(Q((worldX + (0x3F & rnd)) - 32), Q(worldY + 32 - ((rnd & 0x3F0000) >> 0x10)));
    }

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    sub_803424C_inline();
    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);
    DisplaySprite(s);
    DisplaySprite(s2);
}
