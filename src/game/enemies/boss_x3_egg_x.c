#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/save.h"
#include "game/enemies/bosses_shared.h" // CreatePreBossCameraPan
#include "game/nuts_and_bolts_task.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/stage/screen_shake.h"
#include "game/stage/terrain_collision.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"

/* X-Zone Final Boss */

typedef struct EggX_64 {
    Sprite s;
    u8 filler30[0x4A];
    u8 unk7A;
    u8 unk7B;
} EggX_64;

typedef struct EggX_7C {
    u8 filler0[0x78];
    u8 unk78;
    u8 unk79;
    u8 unk7A;
    u8 unk7B;
} EggX_7C;

typedef struct EggX {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ Hitbox reserved;
    /* 0x44 */ Sprite s2;
    /* 0x80 */ s32 qUnk74;
    /* 0x80 */ s32 qUnk78;
    /* 0x80 */ s32 qUnk7C;
    /* 0x80 */ s32 qUnk80;
    /* 0x84 */ s32 unk84;
    /* 0x88 */ s16 unk88;
    /* 0x8A */ s16 unk8A;
    /* 0x8C */ s16 unk8C;
    /* 0x8E */ s16 unk8E;
    /* 0x90 */ u16 unk90;
    /* 0x92 */ u16 unk92;
    /* 0x94 */ s8 unk94;
    /* 0x95 */ s8 unk95;
    /* 0x96 */ u16 unk96;
    /* 0x98 */ u8 unk98;
    /* 0x99 */ u8 unk99;
    /* 0x9A */ u8 unk9A;
    /* 0x9C */ struct Task *task9C; // -> EggX_7C
} EggX; /* 0xA0 */

void Task_EggXMain(void);
void sub_80370B4(void);
void Task_803753C(void);
void Task_803775C(void);
void sub_8038F04(void);
void TaskDestructor_EggX(struct Task *t);

void sub_8036E20(CamCoord worldX, CamCoord worldY);
void sub_803803C(void);
void sub_803967C(void);
void sub_8039940(void);
u8 sub_803711C(s16 arg0);

extern const s16 gUnknown_084ACF1C[4];
extern const s16 gUnknown_084ACF24[];
extern const s16 gUnknown_084ACF2C[];
extern const s16 gUnknown_084ACF34[];

static inline void CopySpritePos__inline()
{
    EggX *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;

    s2->x = s->x;
    s2->y = s->y;
}

static inline void SetSpritePos__inline(CamCoord worldX, CamCoord worldY)
{
    EggX *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
}

static inline void ChangeVariant__inline()
{
    EggX *boss = TASK_DATA(gCurTask);
    Sprite *s2 = &boss->s2;
    if ((s2->variant != 0) && (s2->frameFlags & 0x4000)) {
        s2->variant = 0;
        s2->prevVariant = -1;
    }
}

static inline void ChangeVariant2__inline()
{
    EggX *boss = TASK_DATA(gCurTask);
    Sprite *s2 = &boss->s2;
    s2->variant = 3;
    s2->frameFlags &= ~0x4000;
    s2->prevVariant = -1;
}

void sub_8036E20(s16 worldX, s16 worldY)
{
    s32 sp0;
    s32 sp4;
    EggX *sp8;
    s32 spC;
    s32 temp_r3;
    u16 temp_r5;
    u16 temp_r6;
    u8 *temp_r1_2;
    u8 *temp_r1_3;
    u8 *temp_r1_4;
    u8 temp_r1;

    EggX *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    Sprite *s2;
    EggX_7C *strc7C;

    if (PLAYER_IS_ALIVE) {
        boss->s.palId = 0;
    }

    if (boss->unk95 == 0) {
        EHit collPlayer = HIT_NONE;
        EHit collPartner = HIT_NONE;
        s2 = &boss->s2;
        strc7C = TASK_DATA(boss->task9C);

        if (!(4 & strc7C->unk7A)) {
            collPlayer = Coll_Player_Boss(s, worldX, worldY, &gPlayer);
        }
        if (collPlayer == HIT_NONE) {
            collPlayer = sub_800BFEC(s, worldX, worldY, &gPlayer);
        }
        if (gNumSingleplayerCharacters == NUM_SINGLEPLAYER_CHARS_MAX) {
            if (!(4 & strc7C->unk7A)) {
                collPartner = Coll_Player_Boss(s, worldX, worldY, &gPartner);
            }
            if (collPartner == HIT_NONE) {
                collPartner = sub_800BFEC(s, worldX, worldY, &gPartner);
            }
        }

        if ((collPlayer == HIT_ENEMY) || (collPartner == HIT_ENEMY)) {
            boss->unk94++;
            boss->unk95 = 0x20;
            s2->variant = 2;
            s2->prevVariant = -1;
            s2->frameFlags &= 0xFFFFBFFF;
            m4aSongNumStart(0x8FU);
        } else if ((collPlayer == HIT_PLAYER) || (collPartner == HIT_PLAYER)) {
            s2->variant = 3;
            s2->prevVariant = -1;
            s2->frameFlags &= 0xFFFFBFFF;
        }
    }
}

enum EHit sub_8036F9C(CamCoord worldX, CamCoord worldY, u8 arg2)
{
    enum EHit collPlayer;
    enum EHit collPartner;
    EggX_64 *strc64 = TASK_DATA(gCurTask);
    Sprite *s = &strc64->s;

    if (arg2 == 0) {
        collPlayer = sub_800BF10(s, worldX, worldY, &gPlayer);
        if (gNumSingleplayerCharacters == NUM_SINGLEPLAYER_CHARS_MAX) {
            collPartner = sub_800BF10(s, worldX, worldY, &gPartner);
        } else {
            collPartner = HIT_NONE;
        }
    } else {
        collPlayer = sub_800C2B8(s, worldX, worldY, &gPlayer);
        if (gNumSingleplayerCharacters == NUM_SINGLEPLAYER_CHARS_MAX) {
            collPartner = sub_800BF10(s, worldX, worldY, &gPartner);
        } else {
            collPartner = HIT_NONE;
        }
    }
    if ((collPlayer == HIT_PLAYER) || (collPartner == HIT_PLAYER)) {
        EggX *boss = TASK_DATA(TASK_PARENT(gCurTask));
        Sprite *s2 = &boss->s2;
        s2->variant = 3;
        s2->frameFlags &= 0xFFFFBFFF;
        s2->prevVariant = -1;
    }

    if ((arg2 != 0) && (collPlayer == HIT_PLAYER) && (gRingCount == 0)) {
        Coll_DamagePlayer(&gPlayer);
        collPlayer = HIT_NONE;
    }

    return collPlayer;
}

void sub_80370B4()
{
    s8 *temp_r2;
    s8 temp_r1;

    EggX *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;

    if (boss->unk95 != 0) {
        if ((--boss->unk95 > 16) && !(boss->unk95 & 2) && PLAYER_IS_ALIVE) {
            s->palId = 253;
        }
    }

    DisplaySprite(s);
    DisplaySprite(s2);
}

u8 sub_803711C(s16 arg0)
{
    const s16 *ptr;
    s16 temp_r0;
    s16 temp_r1;
    s16 var_r0;
    s32 temp_r0_2;
    s16 var_r2_2;
    s32 var_r1;
    u8 i;

    var_r2_2 = I(gPlayer.qWorldX) - arg0;
    if (var_r2_2 < 0) {
        var_r2_2 = ABS(var_r2_2);
    }

    if (gPlayer.moveState & 2) {
        if (var_r2_2 > 120) {
            ptr = &gUnknown_084ACF34[0];
        } else {
            ptr = &gUnknown_084ACF24[0];
        }
    } else {
        if (var_r2_2 > 120) {
            ptr = &gUnknown_084ACF2C[0];
        } else {
            ptr = &gUnknown_084ACF1C[0];
        }
    }

    var_r1 = PseudoRandom32() % 100U;

    for (i = 0; i < 4; i++) {
        var_r1 -= ptr[i];

        if (var_r1 <= 0) {
            break;
        }
    }

    return ++i;
}

// (84.16%) https://decomp.me/scratch/wRxPL

void CreateEntity_EggX(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    s16 sp4;
    s16 *temp_r1_2;
    s16 *temp_r6;
    u8 *temp_r0;
    u8 *temp_r0_2;
    EggX *boss;
    Sprite *s;
    Sprite *s2;

    if (IS_MULTI_PLAYER) {
        SET_MAP_ENTITY_INITIALIZED(me);
        return;
    }
    boss = TASK_DATA(TaskCreate(Task_EggXMain, sizeof(EggX), 0x2000U, 0U, TaskDestructor_EggX));
    boss->base.regionX = regionX;
    boss->base.regionY = regionY;
    boss->base.me = me;
    boss->base.meX = me->x;
    boss->base.id = id;
    boss->unk92 = 120;
    boss->unk95 = 0;
    boss->unk99 = 0;
    boss->unk98 = 0;
    boss->qUnk74 = Q(116);
    boss->qUnk78 = Q(232);
    boss->qUnk7C = 0;
    boss->qUnk80 = 0;
    boss->unk84 = 0;
    boss->unk96 = 0;
    if (LOADED_SAVE->difficultyLevel != 0) {
        boss->unk94 = 2;
    } else {
        boss->unk94 = 0;
    }

    boss->unk88 = (me->x * 8) + (regionX << 8);
    temp_r1_2 = &boss->unk8A;
    boss->unk8A = (me->y * 8) + (regionY << 8);
    SET_MAP_ENTITY_INITIALIZED(me);
    s = &boss->s;
    s->x = boss->unk88;
    s->y = boss->unk8A;
    s->graphics.dest = VramMalloc(42);
    s->oamFlags = 0x580;
    s->graphics.size = 0;
    s->graphics.anim = 0x2AF;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = 0x2000;

    s2 = &boss->s2;
    s2->x = boss->unk88;
    s2->y = boss->unk8A;
    s2->graphics.dest = VramMalloc(0xCU);
    s2->oamFlags = 0x540;
    s2->graphics.size = 0;
    s2->graphics.anim = 0x2B3;
    s2->variant = 0;
    s2->animCursor = 0;
    s2->qAnimDelay = 0;
    s2->prevVariant = -1;
    s2->animSpeed = 0x10;
    s2->palId = 0;
    s2->hitboxes[0].index = -1;
    s2->frameFlags = 0x2000;

    if (!(gPlayer.moveState & 0x80)) {
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[WINREG_WININ] = 0x1F1F;
        gWinRegs[WINREG_WINOUT] = 0x1F1F;
        gBldRegs.bldCnt = 0xBF;
        gBldRegs.bldY = 0xC;
        gDispCnt |= 0x2000;
    }

    DmaFill16(3, 0x7FFF, &gObjPalette[0xC0], 0x20);

    gFlags |= 2;
}

void Task_EggXMain()
{
    EggX *boss = TASK_DATA(gCurTask);

    switch (boss->unk99) {
        case 0:
            if ((boss->unk88 - 120) <= gCamera.x) {
                gCamera.minX = (u16)boss->unk88 - 0x90;
                gCamera.maxX = (u16)boss->unk88 + 0x90;
                boss->unk99 = 1;
                return;
            }
            return;
        case 1:
            if ((boss->unk8A - 40) <= gCamera.y) {
                CreatePreBossCameraPan((s16)(boss->unk8A - 40), (s16)(boss->unk8A + 160));
                boss->unk99 = 2;
                return;
            }
            break;
        case 2:
            if ((gCamera.minY == (boss->unk8A - 40)) && (gCamera.maxY == (boss->unk8A + 160))) {
                boss->unk99 = 3;
                return;
            }
            break;
        case 3:
            boss->unk99 = 0;
            boss->qUnk80 = -Q(1);
            boss->unk8C = boss->unk88 + I(boss->qUnk74);
            boss->unk8E = boss->unk8A + I(boss->qUnk78);
            sub_8038F04();
            gCurTask->main = Task_803753C;
            CreateScreenShake(0x400U, 4U, 0x100U, 0x7AU, 0x80U);
            gMusicManagerState.unk1 = 0x16;
            break;
    }
}

void Task_803753C()
{
    EggX *boss = TASK_DATA(gCurTask);
    EggX_7C *strc7C = TASK_DATA(boss->task9C);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;
    CamCoord worldX, worldY;

    boss->qUnk74 += boss->qUnk7C;
    boss->qUnk78 += boss->qUnk80;
    worldX = I(boss->qUnk74) + boss->unk88;
    worldY = I(boss->qUnk78) + boss->unk8A;

    if (boss->qUnk80 == 0) {
        boss->unk90 += 8;
        boss->unk90 &= 0x3FF;
        worldY += COS_24_8(boss->unk90) >> 6;
    } else {
        boss->unk90 = 0;
    }

    boss->unk8C = worldX;
    boss->unk8E = worldY;

    SetSpritePos__inline(worldX, worldY);
    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);

    CopySpritePos__inline();

    sub_80370B4();
    switch (boss->unk99) {
        case 0:
            if (boss->qUnk78 <= Q(110)) {
                boss->qUnk78 = Q(110);
                boss->qUnk7C = 0;
                boss->qUnk80 = 0;
                boss->unk92 = 15;
                boss->unk99++;
            }

            break;
        case 1:
            if (--boss->unk92 == 0) {
                strc7C->unk79 = 1;
                boss->unk99++;
            }
            break;
        case 2:
            if (strc7C->unk79 == 4) {
                s2->variant = 1;
                s2->prevVariant = -1;
                boss->unk99++;
            }
            break;
        case 3:
            if (s2->frameFlags & SPRITE_FLAG_MASK_ANIM_OVER) {
                strc7C->unk79 = 5;
                s2->variant = 0;
                s2->prevVariant = -1;
                boss->unk99++;
            }
            break;
        case 4:
            if (strc7C->unk79 == 7) {
                boss->unk92 = 0xF;
                boss->unk99++;
            }
            break;
        case 5:
            if (--boss->unk92 == 0) {
                boss->unk98 = 0xFF;
                boss->unk99 = 0;
                gCurTask->main = Task_803775C;
            }
            break;
    }
}

// (84.16%) https://decomp.me/scratch/wRxPL
NONMATCH("asm/non_matching/game/enemies/boss_x3__Task_803775C.inc", void Task_803775C())
{
    Sprite *s2;
    s32 sp8 = 0;
    Sprite *spC;
    Rect8 sp10;
    Sprite *sp14;
    Rect8 sp18;
    Sprite *s;
    s16 temp_r1_10;
    s16 temp_r1_11;
    s16 var_r0_2;
    s16 var_r5;
    s32 *temp_r0_14;
    s32 *temp_r3_5;
    s32 temp_r1;
    s32 temp_r1_3;
    s32 temp_r1_8;
    s32 temp_r4_2;
    s32 var_r0_4;
    s32 var_r0_6;
    s32 var_r2;
    s32 var_r4_3;
    s32 var_r6;
    u16 *temp_r2;
    s16 temp_r5_2;
    s16 var_r1_2;
    u16 var_r1_3;
    s16 var_r3;
    CamCoord worldX, worldY;
    u16 var_r4_2;

    EggX *boss = TASK_DATA(gCurTask);
    EggX_7C *strc7C;
    strc7C = TASK_DATA(boss->task9C);
    s = &boss->s;
    s2 = &boss->s2;

    if (s->frameFlags & 0x400) {
        boss->qUnk7C += boss->unk84;
        boss->qUnk74 -= boss->qUnk7C;
    } else {
        boss->qUnk7C += boss->unk84;
        boss->qUnk74 += boss->qUnk7C;
    }

    temp_r1 = boss->qUnk78 + boss->qUnk80;
    boss->qUnk78 = temp_r1;
    worldX = boss->unk88 + I(boss->qUnk74);
    worldY = boss->unk8A + I(temp_r1);
    if (boss->qUnk80 == 0) {
        boss->unk90 = (boss->unk90 + 8);
        boss->unk90 &= 0x3FF;
        worldY += (COS_24_8(boss->unk90) >> 6);
    } else {
        boss->unk90 = 0;
    }

    boss->unk8C = worldX;
    boss->unk8E = worldY;
    sub_8036E20(worldX, worldY);

    if (boss->unk94 > 7) {
        sub_803803C();
        return;
    }

    SetSpritePos__inline(worldX, worldY);

    ChangeVariant__inline();
    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);
    CopySpritePos__inline();
    sub_80370B4();

    switch (boss->unk99) {
        s32 rnd;
        case 0x0:
            boss->unk9A = 0;
            strc7C->unk79 = 8;
            boss->unk99++;
            rnd = ((u32)PseudoRandom32() & 0x30) >> 4;
            switch (rnd) {
                case 3:
                case 0:
                    boss->unk92 = 0x5A;
                    break;
                case 1:
                    boss->unk92 = 0xB4;
                    break;
                case 2:
                    boss->unk92 = 0xF0;
                    break;
            }

            // fallthrough
        case 0x1:
            if (--boss->unk92 != 0) {
                return;
            }

            boss->unk9A = sub_803711C(worldX);
            if (boss->unk9A != 4) {
                boss->unk92 = 10;
                boss->unk99++;
            } else {
                strc7C->unk79 = 10;
                boss->unk92 = 0x14;
                boss->unk99 = 64;
            }

            break;
        case 0x2:
            strc7C->unk7A = strc7C->unk7A & 0x1;
            if (strc7C->unk7A == 0) {
                return;
            }

            if (--boss->unk92 == 0) {
                boss->unk92 = 0xA;
                boss->unk99++;
                strc7C->unk79 = 0xA;
            }

            break;
        case 0x3:
            if (!(2 & strc7C->unk7A)) {
                return;
            }

            if (--boss->unk92 != 0) {
                return;
            }
            strc7C->unk79 = 0xD;
            boss->unk99 = boss->unk9A * 0x10;

            if (boss->unk9A == 2) {
                boss->unk92 = 0x1E;
                m4aSongNumStart(0xACU);
            } else if (boss->unk9A == 1) {
                boss->unk92 = 0;
            }

            break;
        case 0x4:
            strc7C->unk79 = 0xF;
            boss->unk9A = 0;
            boss->unk99++;
            break;
        case 0x10:
            sub_803967C();
            boss->unk92++;
            boss->qUnk7C = 0x200;
            boss->unk84 = -0x40;
            boss->unk99++;
            break;
        case 0x11:
            var_r2 = 0;
            if (boss->qUnk7C <= 0) {
                temp_r1_8 = boss->unk84;
                if (temp_r1_8 < 0) {
                    var_r0_4 = temp_r1_8 + 3;
                } else {
                    var_r0_4 = temp_r1_8;
                }
                boss->unk84 -= (var_r0_4 >> 2);
            }
            if (s->frameFlags & 0x400) {
                if (boss->qUnk74 >= -0x7400) {
                    boss->qUnk74 = -0x7400;
                    var_r2 = 1;
                }
            } else {
                if (boss->qUnk74 <= 0x7400) {
                    boss->qUnk74 = 0x7400;
                    var_r2 = 0xFF;
                }
            }

            if (var_r2 != 0) {
                boss->qUnk7C = 0;
                temp_r0_14 = &boss->unk84;
                boss->unk84 = 0;
                if (boss->unk92 != 0) {
                    boss->unk99 = 4;
                } else {
                    boss->unk99 = 0x10;
                }
            }

            break;

        case 0x20:
            if (--boss->unk92 == 0) {
                boss->unk99 = 4;
                if (PLAYER_IS_ALIVE || (gNumLives != 0)) {
                    gWinRegs[WINREG_WININ] = 0x1F1F;
                    gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
                    gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
                }
                break;
            }

            if (PLAYER_IS_ALIVE || (gNumLives != 0)) {
                gWinRegs[4] = 0x3F3F;
            }

            var_r1_2 = boss->unk92 - 15;
            if (var_r1_2 < 0) {
                var_r1_2 = -var_r1_2;
            }
            var_r1_3 = (15 - (s16)var_r1_2);
            var_r4_2 = var_r1_3;
            if ((s16)var_r1_3 > 0xB) {
                var_r1_3 = 0xC;
                var_r4_2 = 0xB;
            }

            temp_r1_10 = var_r1_3;
            var_r5 = s->y - var_r1_3;
            temp_r1_11 = s->y + var_r1_3;
            var_r3 = (u16)temp_r1_11;
            if (temp_r1_11 > 160) {
                var_r3 = 160;
            }

            if (s->frameFlags & 0x400) {
                u16 some_r0, some_v;
                if (!(gPlayer.moveState & 0x80) || (gNumLives != 0)) {
                    gWinRegs[WINREG_WIN0H] = WIN_RANGE(s->x + 32, DISPLAY_WIDTH);
                    gWinRegs[WINREG_WIN0V] = WIN_RANGE(var_r5, var_r3);
                }

                {
                    u16 v0;
                    var_r5 = gCamera.x + 120;
                    v0 = ((u16)s->x - 88);
                    spC = NULL;
                    sp10.left = -v0;
                    sp10.right = 120;
                    sp10.top = -temp_r4_2;
                    sp10.bottom = +temp_r4_2;

                    var_r6 = sub_800C1E8(spC, sp10, worldX, worldY, &gPlayer);
                    if (gNumSingleplayerCharacters == 2) {
                        var_r0_6 = sub_800C1E8(spC, sp10, worldX, worldY, &gPlayer);
                    } else {
                        var_r0_6 = 0;
                    }
                }
            }
            if (!(gPlayer.moveState & 0x80) || (gNumLives != 0)) {
                gWinRegs[0] = (u16)((u16)s->x - 0x20);
                gWinRegs[2] = (s16)var_r3 | ((temp_r5_2 << 0x10) >> 8);
            }

            var_r5 = (u16)gCamera.x + 120;
            sp14 = 0;
            sp18.left = 88;
            sp18.right = s->x - 0x98;
            sp18.top = -var_r4_2;
            sp18.bottom = +var_r4_2;

            var_r6 = sub_800C1E8(sp14, sp18, worldX, worldY, &gPlayer);
            if (gNumSingleplayerCharacters == 2) {
                var_r0_6 = sub_800C1E8(sp14, sp18, worldX, worldY, &gPlayer);
            } else {
                var_r0_6 = 0;
            }
            if ((var_r6 | var_r0_6) == 2) {
                ChangeVariant2__inline();
            }

            break;
        case 0x30:
            sub_8039940();
            boss->unk99++;
            break;
        case 0x32:
            boss->unk99 = 4;
            break;
        case 0x33:
            boss->qUnk7C = -Q(2);
            boss->unk92 = 0;
            boss->unk99++;
            break;
        case 0x34:
            if (boss->unk92 != 0) {
                strc7C->unk79 = 0xF;
                boss->unk92 = 0;
            }
            var_r2 = 0;
            if (s->frameFlags & 0x400) {
                if (boss->qUnk74 >= +0xD000) {
                    sp8 = 0xD000;
                    var_r2 = 1;
                }
            } else {
                if (boss->qUnk74 <= -0xD000) {
                    sp8 = -0xD000;
                    var_r2 = 0xFF;
                }
            }

            if (var_r2 != 0) {
                boss->qUnk74 = sp8;
                s->frameFlags ^= 0x400;
                s2->frameFlags ^= 0x400;
                boss->unk99++;
            }
            break;
        case 0x35:
            var_r2 = 0;
            if (s->frameFlags & 0x400) {
                if (boss->qUnk74 >= -0x7400) {
                    sp8 = -0x7400;
                    var_r2 = 1;
                }
            } else {
                if (boss->qUnk74 <= 0x7400) {
                    sp8 = 0x7400;
                    var_r2 = 0xFF;
                }
            }

            if (var_r2 != 0) {
                boss->qUnk74 = sp8;
                boss->qUnk7C = 0;
                boss->unk99 = 0;
            }
            break;

        case 0x40:
            if (2 & strc7C->unk7A) {
                if (--boss->unk92 == 0) {
                    boss->qUnk7C = -0x300;
                    boss->unk99++;
                    break;
                }
            }
            break;

        case 0x41:
            var_r2 = 0;
            if (s->frameFlags & 0x400) {
                if (boss->qUnk74 > 0xCFFF) {
                    sp8 = 0xD000;
                    var_r2 = 1;
                }
            } else if (boss->qUnk74 <= -Q(208)) {
                sp8 = -Q(208);
                var_r2 = 0xFF;
            }

            if (var_r2 != 0) {
                boss->qUnk7C = -0x200;
                strc7C->unk79 = 0x13;
                boss->qUnk74 = sp8;
                s->frameFlags ^= 0x400;
                s2->frameFlags ^= 0x400;
                boss->unk99++;
                break;
            }
            break;

        case 0x42:
            var_r2 = 0;
            if (s->frameFlags & 0x400) {
                if (boss->qUnk74 >= -Q(116)) {
                    boss->qUnk74 = -Q(116);
                    boss->qUnk7C = 0;
                    var_r2 = 1;
                }
            } else {
                if (boss->qUnk74 <= +Q(116)) {
                    boss->qUnk74 = +Q(116);
                    boss->qUnk7C = 0;
                    var_r2 = 0xFF;
                }
            }

            if (var_r2 != 0) {
                if (4 & strc7C->unk7A) {
                    boss->unk99 = 0;
                    break;
                }
            }

            break;

        case 0x5:
            if (4 & strc7C->unk7A) {
                boss->unk99 = 0;
                break;
            }
            break;
    }
}
END_NONMATCH

#if 0
void Task_803775C(void) {
    s32 sp4;
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    s32 sp20;
    s16 temp_r0_16;
    s16 temp_r0_17;
    s16 temp_r0_2;
    s16 temp_r1_10;
    s16 temp_r1_11;
    s16 temp_r3_2;
    s16 var_r0_2;
    s16 var_r5;
    s32 temp_r0;
    s32 temp_r0_11;
    s32 temp_r0_12;
    s32 temp_r0_14;
    s32 temp_r0_15;
    s32 temp_r0_19;
    s32 temp_r0_20;
    s32 temp_r0_21;
    s32 temp_r0_22;
    s32 temp_r0_4;
    s32 temp_r0_5;
    s32 temp_r0_6;
    s32 temp_r0_8;
    s32 temp_r1;
    s32 temp_r1_12;
    s32 temp_r1_13;
    s32 temp_r1_14;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r1_6;
    s32 temp_r1_7;
    s32 temp_r1_8;
    s32 temp_r1_9;
    s32 temp_r2_2;
    s32 temp_r2_4;
    s32 temp_r2_5;
    s32 temp_r2_6;
    s32 temp_r2_7;
    s32 temp_r2_8;
    s32 temp_r3;
    s32 temp_r3_3;
    s32 temp_r3_5;
    s32 temp_r3_6;
    s32 temp_r3_7;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r4_3;
    s32 temp_r7;
    s32 var_r0;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r0_6;
    s32 var_r1;
    s32 var_r1_4;
    s32 var_r2;
    s32 var_r2_2;
    s32 var_r2_3;
    s32 var_r2_4;
    s32 var_r2_5;
    s32 var_r4_3;
    s32 var_r6;
    u16 temp_r0_18;
    u16 temp_r0_3;
    u16 temp_r2;
    u16 temp_r2_3;
    u16 temp_r2_9;
    u16 temp_r3_4;
    u16 temp_r5;
    u16 temp_r5_2;
    u16 temp_sl;
    u16 var_r1_2;
    u16 var_r1_3;
    u16 var_r3;
    u16 var_r4;
    u16 var_r4_2;
    u32 temp_r0_7;
    u8 temp_r0_10;
    u8 temp_r0_13;
    u8 temp_r0_9;
    u8 temp_r1_5;

    sp8 = 0;
    temp_r2 = gCurTask->data;
    temp_sl = (*(temp_r2 + 0x9C))->unk6;
    temp_r7 = temp_r2 + 0xC;
    sp4 = temp_r2 + 0x44;
    if (temp_r7->unk10 & 0x400) {
        temp_r1 = temp_r2->unk7C + *(temp_r2 + 0x84);
        temp_r2->unk7C = temp_r1;
        var_r0 = temp_r2->unk74 - temp_r1;
    } else {
        temp_r1_2 = temp_r2->unk7C + *(temp_r2 + 0x84);
        temp_r2->unk7C = temp_r1_2;
        var_r0 = temp_r2->unk74 + temp_r1_2;
    }
    temp_r2->unk74 = var_r0;
    temp_r3 = temp_r2 + 0x80;
    temp_r1_3 = temp_r2->unk78 + *temp_r3;
    temp_r2->unk78 = temp_r1_3;
    temp_r5 = (u16) (((s32) temp_r2->unk74 >> 8) + *(temp_r2 + 0x88));
    var_r4 = (u16) ((temp_r1_3 >> 8) + *(temp_r2 + 0x8A));
    if (*temp_r3 == 0) {
        temp_r2_2 = temp_r2 + 0x90;
        *temp_r2_2 = (u16) ((*temp_r2_2 + 8) & 0x3FF);
        var_r4 = (u16) ((s16) var_r4 + ((s32) ((u16) gSineTable[*temp_r2_2 + 0x100] << 0x10) >> 0x1C));
    } else {
        *(temp_r2 + 0x90) = 0;
    }
    temp_r0 = temp_r2 + 0x8C;
    *temp_r0 = temp_r5;
    *(temp_r0 + 2) = var_r4;
    temp_r3_2 = (s16) temp_r5;
    temp_r0_2 = (s16) var_r4;
    sub_8036E20((u16) temp_r3_2, (u16) temp_r0_2);
    sp20 = var_r4 << 0x10;
    sp1C = temp_r5 << 0x10;
    if ((s32) (s8) *(temp_r2 + 0x94) > 7) {
        sub_803803C();
        return;
    }
    temp_r1_4 = gCurTask->data + 0xC;
    temp_r1_4->unk16 = (s16) (temp_r3_2 - (u16) gCamera.x);
    temp_r1_4->unk18 = (s16) (temp_r0_2 - (u16) gCamera.y);
    temp_r2_3 = gCurTask->data;
    temp_r3_3 = temp_r2_3 + 0x64;
    if ((*temp_r3_3 != 0) && ((temp_r2_3 + 0x44)->unk10 & 0x4000)) {
        *temp_r3_3 = 0U;
        *(temp_r2_3 + 0x65) = 0xFF;
    }
    UpdateSpriteAnimation((Sprite *) temp_r7);
    UpdateSpriteAnimation((Sprite *) sp4);
    temp_r0_3 = gCurTask->data;
    temp_r2_4 = temp_r0_3 + 0xC;
    temp_r0_4 = temp_r0_3 + 0x44;
    temp_r0_4->unk16 = (u16) temp_r2_4->unk16;
    temp_r0_4->unk18 = (u16) temp_r2_4->unk18;
    sub_80370B4();
    temp_r0_5 = temp_r2 + 0x99;
    temp_r1_5 = *temp_r0_5;
    switch ((u32) temp_r1_5) {                      /* irregular */
    case 0x0:
        *(temp_r2 + 0x9A) = 0;
        *(temp_sl + 0x79) = 8;
        *temp_r0_5 = (u8) (*temp_r0_5 + 1);
        temp_r0_6 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r0_6;
        temp_r0_7 = (u32) (temp_r0_6 & 0x30) >> 4;
        switch (temp_r0_7) {                        /* switch 1; irregular */
        case 3:                                     /* switch 1 */
        case 0:                                     /* switch 1 */
            var_r1 = temp_r2 + 0x92;
            var_r0_2 = 0x5A;
block_23:
            *var_r1 = var_r0_2;
            break;
        case 1:                                     /* switch 1 */
            var_r1 = temp_r2 + 0x92;
            var_r0_2 = 0xB4;
            goto block_23;
        case 2:                                     /* switch 1 */
            var_r1 = temp_r2 + 0x92;
            var_r0_2 = 0xF0;
            goto block_23;
        }
        /* fallthrough */
    case 0x1:
        temp_r4 = temp_r2 + 0x92;
        temp_r0_8 = *temp_r4 - 1;
        *temp_r4 = (u16) temp_r0_8;
        if ((temp_r0_8 << 0x10) != 0) {
            return;
        }
        temp_r0_9 = sub_803711C((s16) (sp1C >> 0x10));
        *(temp_r2 + 0x9A) = temp_r0_9;
        if (temp_r0_9 != 4) {
            *temp_r4 = 0xAU;
            var_r0_3 = *temp_r0_5 + 1;
        } else {
            *(temp_sl + 0x79) = 0xA;
            *temp_r4 = 0x14U;
            var_r0_3 = 0x40;
        }
block_128:
        *temp_r0_5 = (u8) var_r0_3;
        return;
    case 0x2:
        temp_r2_5 = temp_sl + 0x7A;
        temp_r0_10 = 1 & *temp_r2_5;
        *temp_r2_5 = temp_r0_10;
        if (temp_r0_10 == 0) {
            return;
        }
        temp_r2_6 = temp_r2 + 0x92;
        temp_r0_11 = *temp_r2_6 - 1;
        *temp_r2_6 = (u16) temp_r0_11;
        if ((temp_r0_11 << 0x10) != 0) {
            return;
        }
        *temp_r2_6 = 0xAU;
        *temp_r0_5 = (u8) (*temp_r0_5 + 1);
        *(temp_sl + 0x79) = 0xA;
        return;
    case 0x3:
        if (!(2 & *(temp_sl + 0x7A))) {
            return;
        }
        temp_r2_7 = temp_r2 + 0x92;
        temp_r0_12 = *temp_r2_7 - 1;
        *temp_r2_7 = (u16) temp_r0_12;
        temp_r3_4 = (u16) temp_r0_12;
        if (temp_r3_4 != 0) {
            return;
        }
        *(temp_sl + 0x79) = 0xD;
        temp_r1_6 = temp_r2 + 0x9A;
        *temp_r0_5 = (u8) (*temp_r1_6 * 0x10);
        temp_r0_13 = *temp_r1_6;
        switch (temp_r0_13) {                       /* switch 2; irregular */
        case 2:                                     /* switch 2 */
            *temp_r2_7 = 0x1EU;
            m4aSongNumStart(0xACU);
            return;
        case 1:                                     /* switch 2 */
            *temp_r2_7 = temp_r3_4;
            return;
        }
        break;
    case 0x4:
        *(temp_sl + 0x79) = 0xF;
        *(temp_r2 + 0x9A) = 0;
        var_r0_3 = *temp_r0_5 + 1;
        goto block_128;
    case 0x10:
        sub_803967C();
        temp_r1_7 = temp_r2 + 0x92;
        *temp_r1_7 = (u16) (*temp_r1_7 + 1);
        temp_r2->unk7C = 0x200;
        *(temp_r1_7 - 0xE) = -0x40;
        var_r0_3 = *temp_r0_5 + 1;
        goto block_128;
    case 0x11:
        var_r2 = 0;
        if ((s32) temp_r2->unk7C <= 0) {
            temp_r3_5 = temp_r2 + 0x84;
            temp_r1_8 = *temp_r3_5;
            var_r0_4 = temp_r1_8;
            if (temp_r1_8 < 0) {
                var_r0_4 = temp_r1_8 + 3;
            }
            *temp_r3_5 = (s32) (temp_r1_8 - (var_r0_4 >> 2));
        }
        if (temp_r7->unk10 & 0x400) {
            if ((s32) temp_r2->unk74 >= 0xFFFF8C00) {
                temp_r2->unk74 = -0x7400;
                goto block_56;
            }
            goto block_54;
        }
        if ((s32) temp_r2->unk74 <= 0x7400) {
            temp_r2->unk74 = 0x7400;
            var_r2 = 0xFF;
        }
block_54:
        if (var_r2 == 0) {
            return;
        }
block_56:
        temp_r2->unk7C = 0;
        temp_r0_14 = temp_r2 + 0x84;
        *temp_r0_14 = 0;
        if (*(temp_r0_14 + 0xE) != 0) {
            var_r0_3 = 4;
        } else {
            var_r0_3 = 0x10;
        }
        goto block_128;
    case 0x20:
        temp_r1_9 = temp_r2 + 0x92;
        temp_r0_15 = *temp_r1_9 - 1;
        *temp_r1_9 = (u16) temp_r0_15;
        if ((temp_r0_15 << 0x10) == 0) {
            *temp_r0_5 = 4U;
            if ((gPlayer.moveState & 0x80) && (gNumLives == 0)) {
                return;
            }
            gWinRegs[4] = 0x1F1F;
            gWinRegs->unk0 = 0xF0;
            gWinRegs[2] = 0xA0;
            return;
        }
        if (!(gPlayer.moveState & 0x80) || (gNumLives != 0)) {
            gWinRegs[4] = 0x3F3F;
        }
        temp_r0_16 = (s16) *temp_r1_9 - 0xF;
        var_r1_2 = (u16) temp_r0_16;
        temp_r0_17 = temp_r0_16;
        if ((s32) temp_r0_17 < 0) {
            var_r1_2 = (u16) (0 - temp_r0_17);
        }
        var_r1_3 = (u16) (0xF - (s16) var_r1_2);
        var_r4_2 = var_r1_3;
        if ((s32) (s16) var_r1_3 > 0xB) {
            var_r1_3 = 0xC;
            var_r4_2 = 0xB;
        }
        temp_r0_18 = temp_r7->unk18;
        temp_r1_10 = (s16) var_r1_3;
        temp_r5_2 = (u16) (temp_r0_18 - temp_r1_10);
        temp_r1_11 = temp_r1_10 + temp_r0_18;
        var_r3 = (u16) temp_r1_11;
        if ((s32) temp_r1_11 > 0xA0) {
            var_r3 = 0xA0;
        }
        if (temp_r7->unk10 & 0x400) {
            if (!(gPlayer.moveState & 0x80) || (gNumLives != 0)) {
                gWinRegs->unk0 = ((temp_r7->unk16 + 0x20) << 8) | 0xF0;
                gWinRegs[2] = (s16) var_r3 | ((s32) (temp_r5_2 << 0x10) >> 8);
            }
            temp_r4_2 = var_r4_2 << 0x10;
            spC = 0;
            temp_r1_12 = (0xFFFFFF00 & sp10) | (u8) (temp_r7->unk16 - 0x58);
            sp10 = temp_r1_12;
            temp_r2_8 = (0xFF00FFFF & temp_r1_12) | 0x780000;
            sp10 = temp_r2_8;
            temp_r0_19 = (0xFFFF00FF & temp_r2_8) | (u16) (((s32) (0 - temp_r4_2) >> 0x10) << 8);
            sp10 = temp_r0_19;
            sp10 = (temp_r0_19 & 0xFFFFFF) | (temp_r4_2 << 8);
            var_r5 = (u16) gCamera.x + 0x78;
            var_r4_3 = sp20 >> 0x10;
            var_r6 = sub_800C1E8(spC, sp10, var_r5, var_r4_3, &gPlayer);
            if ((s8) (u8) gNumSingleplayerCharacters != 2) {
                goto block_86;
            }
            var_r0_5 = spC;
            var_r1_4 = sp10;
            goto block_85;
        }
        if (!(gPlayer.moveState & 0x80) || (gNumLives != 0)) {
            gWinRegs->unk0 = (u16) (temp_r7->unk16 - 0x20);
            gWinRegs[2] = (s16) var_r3 | ((s32) (temp_r5_2 << 0x10) >> 8);
        }
        temp_r4_3 = var_r4_2 << 0x10;
        sp14 = 0;
        temp_r0_20 = (0xFFFFFF00 & sp18) | 0x88;
        sp18 = temp_r0_20;
        temp_r1_13 = (0xFF00FFFF & temp_r0_20) | ((u32) ((temp_r7->unk16 - 0x98) << 0x18) >> 8);
        sp18 = temp_r1_13;
        temp_r0_21 = (0xFFFF00FF & temp_r1_13) | (u16) (((s32) (0 - temp_r4_3) >> 0x10) << 8);
        sp18 = temp_r0_21;
        sp18 = (temp_r0_21 & 0xFFFFFF) | (temp_r4_3 << 8);
        var_r5 = (u16) gCamera.x + 0x78;
        var_r4_3 = sp20 >> 0x10;
        var_r6 = sub_800C1E8(0, sp18, var_r5, var_r4_3, &gPlayer);
        if ((s8) (u8) gNumSingleplayerCharacters == 2) {
            var_r0_5 = sp14;
            var_r1_4 = sp18;
block_85:
            var_r0_6 = sub_800C1E8(var_r0_5, var_r1_4, var_r5, var_r4_3);
        } else {
block_86:
            var_r0_6 = 0;
        }
        if ((var_r6 | var_r0_6) != 2) {
            return;
        }
        temp_r2_9 = gCurTask->data;
        temp_r3_6 = temp_r2_9 + 0x44;
        *(temp_r2_9 + 0x64) = 3;
        temp_r3_6->unk10 = (s32) (temp_r3_6->unk10 & 0xFFFFBFFF);
        *(temp_r2_9 + 0x65) = 0xFF;
        return;
    case 0x30:
        sub_8039940();
        var_r0_3 = *temp_r0_5 + 1;
        goto block_128;
    case 0x32:
        var_r0_3 = 4;
        goto block_128;
    case 0x33:
        temp_r2->unk7C = -0x200;
        *(temp_r2 + 0x92) = 0;
        var_r0_3 = *temp_r0_5 + 1;
        goto block_128;
    case 0x34:
        temp_r3_7 = temp_r2 + 0x92;
        if (*temp_r3_7 != 0) {
            *(temp_sl + 0x79) = 0xF;
            *temp_r3_7 = 0U;
        }
        var_r2_2 = 0;
        if (temp_r7->unk10 & 0x400) {
            if ((s32) temp_r2->unk74 > 0xCFFF) {
                sp8 = 0xD000;
                goto block_102;
            }
            goto block_100;
        }
        if ((s32) temp_r2->unk74 <= 0xFFFF3000) {
            sp8 = -0xD000;
            var_r2_2 = 0xFF;
        }
block_100:
        if (var_r2_2 == 0) {
            return;
        }
block_102:
        temp_r2->unk74 = sp8;
        temp_r7->unk10 = (s32) (temp_r7->unk10 ^ 0x400);
        sp4->unk10 = (s32) (sp4->unk10 ^ 0x400);
        var_r0_3 = *temp_r0_5 + 1;
        goto block_128;
    case 0x35:
        var_r2_3 = 0;
        if (temp_r7->unk10 & 0x400) {
            if ((s32) temp_r2->unk74 >= 0xFFFF8C00) {
                sp8 = -0x7400;
                goto block_109;
            }
            goto block_108;
        }
        if ((s32) temp_r2->unk74 <= 0x7400) {
            sp8 = 0x7400;
            var_r2_3 = 0xFF;
        }
block_108:
        if (var_r2_3 != 0) {
block_109:
            temp_r2->unk74 = sp8;
            var_r0_3 = 0;
            temp_r2->unk7C = 0;
            goto block_128;
        }
        break;
    case 0x40:
        if (2 & *(temp_sl + 0x7A)) {
            temp_r1_14 = temp_r2 + 0x92;
            temp_r0_22 = *temp_r1_14 - 1;
            *temp_r1_14 = (u16) temp_r0_22;
            if ((temp_r0_22 << 0x10) == 0) {
                temp_r2->unk7C = -0x300;
                var_r0_3 = *temp_r0_5 + 1;
                goto block_128;
            }
        }
        break;
    case 0x41:
        var_r2_4 = 0;
        if (temp_r7->unk10 & 0x400) {
            if ((s32) temp_r2->unk74 > 0xCFFF) {
                sp8 = 0xD000;
                goto block_119;
            }
            goto block_118;
        }
        if ((s32) temp_r2->unk74 <= 0xFFFF3000) {
            sp8 = -0xD000;
            var_r2_4 = 0xFF;
        }
block_118:
        if (var_r2_4 != 0) {
block_119:
            temp_r2->unk7C = -0x200;
            *(temp_sl + 0x79) = 0x13;
            temp_r2->unk74 = sp8;
            temp_r7->unk10 = (s32) (temp_r7->unk10 ^ 0x400);
            sp4->unk10 = (s32) (sp4->unk10 ^ 0x400);
            var_r0_3 = *temp_r0_5 + 1;
            goto block_128;
        }
        break;
    case 0x42:
        var_r2_5 = 0;
        if (temp_r7->unk10 & 0x400) {
            if ((s32) temp_r2->unk74 >= 0xFFFF8C00) {
                temp_r2->unk74 = -0x7400;
                temp_r2->unk7C = 0;
                goto block_126;
            }
            goto block_125;
        }
        if ((s32) temp_r2->unk74 <= 0x7400) {
            temp_r2->unk74 = 0x7400;
            temp_r2->unk7C = 0;
            var_r2_5 = 0xFF;
        }
block_125:
        if (var_r2_5 != 0) {
        case 0x5:
block_126:
            if (4 & *(temp_sl + 0x7A)) {
                var_r0_3 = 0;
                goto block_128;
            }
        }
        break;
    }
}

void sub_803803C(void) {
    s32 temp_r0;
    s32 temp_r4;
    s32 temp_r5;
    s32 temp_r6;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r4 = temp_r1 + 0xC;
    *(temp_r1 + 0x99) = 0;
    temp_r1->unk7C = 0;
    *(temp_r1 + 0x80) = 0;
    *(temp_r1 + 0x64) = 2;
    *(temp_r1 + 0x65) = 0xFF;
    gCamera.minX = (s16) (u16) gCamera.x;
    gCamera.maxX = (u16) gCamera.x + 0xF0;
    m4aSongNumStart(0x90U);
    temp_r4->unk10 = (s32) (temp_r4->unk10 & 0xFFFFFE7F);
    if (!(gPlayer.moveState & 0x80)) {
        gWinRegs[5] = 0;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
        gDispCnt = 0x7FFF & gDispCnt & 0x1FFF;
    }
    gPlayer.qSpeedGround = 0;
    gPlayer.moveState |= 0x200000;
    gPlayer.heldInput = 0;
    gPlayer.frameInput = 0;
    gStageFlags |= 3;
    temp_r6 = gLevelScore;
    temp_r0 = temp_r6 + 0x3E8;
    gLevelScore = temp_r0;
    temp_r5 = Div(temp_r0, 0xC350);
    if ((temp_r5 != Div(temp_r6, 0xC350)) && (gGameMode == 0)) {
        gNumLives = (u8) (gNumLives + 1);
    }
    sub_8038154();
    gCurTask->main = sub_8038154;
}

void sub_8038154(void) {
    s32 temp_r0;
    s32 temp_r0_3;
    s32 temp_r0_5;
    s32 temp_r0_6;
    s32 temp_r0_7;
    s32 temp_r0_8;
    s32 temp_r0_9;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r1_5;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r2_3;
    s32 temp_r2_4;
    s32 temp_r4_2;
    s32 temp_r4_3;
    s32 temp_r5;
    s32 temp_r5_2;
    s32 temp_r6;
    s32 var_r2;
    s32 var_r6;
    u16 temp_r0_4;
    u16 temp_r3;
    u16 var_r5;
    u16 var_r7;
    u8 temp_r0_2;
    u8 temp_r4;

    var_r5 = 0;
    var_r7 = 0;
    temp_r3 = gCurTask->data;
    temp_r0 = temp_r3 + 0xC;
    temp_r1 = temp_r3 + 0x44;
    temp_r0_2 = *(temp_r3 + 0x99);
    if ((u32) temp_r0_2 <= 1U) {
        temp_r2 = temp_r3 + 0x80;
        if (temp_r0_2 == 0) {
            *temp_r2 = (s32) (*temp_r2 + 0x10);
        }
        temp_r0_3 = temp_r3->unk74 + temp_r3->unk7C;
        temp_r3->unk74 = temp_r0_3;
        temp_r1_2 = temp_r3->unk78 + *temp_r2;
        temp_r3->unk78 = temp_r1_2;
        var_r5 = (u16) ((temp_r0_3 >> 8) + *(temp_r3 + 0x88));
        var_r7 = (u16) ((temp_r1_2 >> 8) + *(temp_r3 + 0x8A));
        *(temp_r3 + 0x8C) = var_r5;
        *(temp_r3 + 0x8E) = var_r7;
        if (!(7 & *(temp_r3 + 0x92))) {
            sub_8038420((s16) var_r5, (s16) var_r7);
        }
        UpdateSpriteAnimation((Sprite *) temp_r0);
        UpdateSpriteAnimation((Sprite *) temp_r1);
        temp_r1_3 = gCurTask->data + 0xC;
        temp_r1_3->unk16 = (s16) ((s16) var_r5 - (u16) gCamera.x);
        temp_r1_3->unk18 = (s16) ((s16) var_r7 - (u16) gCamera.y);
        temp_r0_4 = gCurTask->data;
        temp_r2_2 = temp_r0_4 + 0xC;
        temp_r0_5 = temp_r0_4 + 0x44;
        temp_r0_5->unk16 = (u16) temp_r2_2->unk16;
        temp_r0_5->unk18 = (u16) temp_r2_2->unk18;
        DisplaySprite((Sprite *) temp_r0);
        DisplaySprite((Sprite *) temp_r1);
    }
    temp_r0_6 = temp_r3 + 0x99;
    temp_r4 = *temp_r0_6;
    switch (temp_r4) {                              /* irregular */
    case 2:
        TaskDestroy(gCurTask);
        return;
    case 0:
        temp_r2_3 = temp_r3 + 0x92;
        *temp_r2_3 = (u16) (*temp_r2_3 - 1);
        temp_r0_7 = sa2__sub_801F100((s16) var_r7 + 0x14, (s32) (s16) var_r5, 1, 8, sa2__sub_801EC3C);
        if (temp_r0_7 >= 0) {
            return;
        }
        temp_r3->unk78 = (s32) (temp_r3->unk78 + (temp_r0_7 << 8));
        temp_r2_4 = temp_r3 + 0x80;
        temp_r1_4 = *temp_r2_4;
        temp_r0_8 = (temp_r1_4 >> 2) - temp_r1_4;
        *temp_r2_4 = temp_r0_8;
        if (temp_r0_8 <= 0xFFFFFF00) {
            return;
        }
        *temp_r2_4 = (s32) temp_r4;
        *temp_r2_3 = 0xF0U;
        *temp_r0_6 = (u8) (*temp_r0_6 + 1);
        if (((s8) (u8) gSelectedCharacter == 0) && ((s32) (s8) (u8) gCurrentLevel > 0xB) && (LOADED_SAVE->unk1D == 0x7F) && ((u32) LOADED_SAVE->unk8[0] > 0xCU) && ((u32) LOADED_SAVE->unk8[1] > 0xCU) && ((u32) LOADED_SAVE->unk8[2] > 0xCU) && ((u32) LOADED_SAVE->unk8[3] > 0xCU) && ((LOADED_SAVE->unk8[0] != 0xF) || ((s8) (u8) gMultiplayerCurrentLevel != 0xC))) {
            sub_803A54C();
            return;
        }
        sub_803A594();
        return;
    case 1:
        temp_r1_5 = temp_r3 + 0x92;
        temp_r0_9 = *temp_r1_5 - 1;
        *temp_r1_5 = (u16) temp_r0_9;
        if ((temp_r0_9 << 0x10) == 0) {
            var_r6 = var_r5 << 0x10;
            var_r2 = var_r7 << 0x10;
            if (((s8) (u8) gSelectedCharacter == 0) && ((s32) (s8) (u8) gCurrentLevel > 0xB) && (LOADED_SAVE->unk1D == 0x7F) && ((u32) LOADED_SAVE->unk8[0] > 0xCU) && ((u32) LOADED_SAVE->unk8[1] > 0xCU) && ((u32) LOADED_SAVE->unk8[2] > 0xCU) && ((u32) LOADED_SAVE->unk8[3] > 0xCU) && ((LOADED_SAVE->unk8[0] != 0xF) || ((s8) (u8) gMultiplayerCurrentLevel != 0xC))) {
                temp_r4_2 = var_r7 << 0x10;
                CreatePostBossEggMobile((s16) var_r5, (s16) ((s32) (temp_r4_2 + 0xFFF80000) >> 0x10));
                var_r6 = var_r5 << 0x10;
                var_r2 = temp_r4_2;
            }
            gMusicManagerState.unk1 = 0x36;
            temp_r4_3 = var_r6 >> 0x10;
            temp_r5 = temp_r4_3 << 8;
            temp_r5_2 = var_r2 >> 0x10;
            sub_8017540(temp_r5, (temp_r5_2 - 0x18) << 8);
            temp_r6 = temp_r5_2 << 8;
            sub_8017540((temp_r4_3 - 0x10) << 8, temp_r6);
            sub_8017540((temp_r4_3 + 0x10) << 8, temp_r6);
            sub_8017540(temp_r5, (temp_r5_2 + 0x18) << 8);
            *temp_r0_6 = (u8) (*temp_r0_6 + 1);
            return;
        }
        break;
    }
}

void sub_8038420(s16 arg0, s16 arg1) {
    s16 temp_r5;
    s16 temp_r6;
    s32 temp_r0;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r4;
    s32 temp_r4_2;
    u16 temp_r1;

    temp_r0 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
    gPseudoRandom = temp_r0;
    temp_r4 = 7 & temp_r0;
    temp_r1 = CreateNutsAndBoltsTask(0x2000U, (void *) (s32) VramMalloc((u32) gUnknown_080BB434[temp_r4]), gUnknown_080BB41C[temp_r4], gUnknown_080BB42C[temp_r4], TaskDestructor_NutsAndBolts)->data;
    temp_r5 = (s16) (u16) arg0;
    temp_r1->unk30 = (s32) (temp_r5 << 8);
    temp_r6 = (s16) (u16) arg1;
    temp_r1->unk34 = (s32) ((temp_r6 + 0x10) << 8);
    temp_r1->unk10 = 0x2000;
    temp_r1->unk1A = 0x5C0;
    temp_r1->unk3E = 5;
    *(temp_r1 + 0x40) = 0x20;
    temp_r4_2 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
    gPseudoRandom = temp_r4_2;
    temp_r1_2 = 0x1FF & temp_r4_2;
    temp_r1->unk3A = (s16) ((s32) (0 - (gSineTable[temp_r1_2] * 0x600)) >> 0xE);
    temp_r1->unk38 = (s16) ((s32) (0 - (gSineTable[temp_r1_2 + 0x100] * 0x600)) >> 0xE);
    temp_r1_3 = (0x196225 * temp_r4_2) + 0x3C6EF35F;
    gPseudoRandom = temp_r1_3;
    sub_8017540(((temp_r5 + (0x3F & temp_r1_3)) - 0x20) << 8, (temp_r6 - (((s32) (temp_r1_3 & 0x3F0000) >> 0x10) - 0x20)) << 8);
}

void sub_8038554(void) {
    Collision *temp_r0_3;
    s32 temp_r0_10;
    s32 temp_r0_11;
    s32 temp_r0_12;
    s32 temp_r0_4;
    s32 temp_r0_6;
    s32 temp_r0_7;
    s32 temp_r0_8;
    s32 temp_r2_2;
    u16 temp_r0_2;
    u16 temp_r0_5;
    u16 temp_r0_9;
    u16 temp_r1;
    u16 temp_r2;
    u16 temp_r3;
    u8 temp_r0;
    u8 temp_r0_13;
    u8 temp_r2_3;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk8;
    switch ((u32) temp_r0) {                        /* irregular */
    case 0:
        temp_r0_2 = temp_r1->unk6;
        if (temp_r0_2 != 0) {
            temp_r1->unk6 = (u16) (temp_r0_2 - 1);
        } else if (gPlayer.moveState & 2) {

        } else {
            gPlayer.heldInput = 0x10;
            temp_r0_3 = gCollisionTable[(s8) (u8) gCurrentLevel];
            gRefCollision = temp_r0_3;
            gCamera.maxX = (s16) temp_r0_3->pxWidth;
block_37:
            temp_r1->unk8 = (u8) (temp_r1->unk8 + 1);
        }
        break;
    case 1:
        if ((s32) gPlayer.qWorldX <= 0xE5FFF) {

        } else {
            gPlayer.heldInput = 0x20;
            temp_r1->unk6 = 0xCU;
            sub_8038C20();
            temp_r1->unk8 = (u8) (temp_r1->unk8 + 1);
            sub_80171BC(gCamera.minY, gCamera.maxY, (s16) (((s32) gPlayer.qWorldX >> 8) - 0x60), gCamera.maxX);
        }
        break;
    case 2:
        temp_r0_4 = temp_r1->unk6 - 1;
        temp_r1->unk6 = (u16) temp_r0_4;
        temp_r0_5 = (u16) temp_r0_4;
        if (temp_r0_5 != 0) {

        } else {
            gPlayer.heldInput = temp_r0_5;
            gPlayer.charState = 0x34;
            gPlayer.moveState |= 0x400000;
            temp_r1->unk6 = 0x3CU;
            goto block_37;
        }
        break;
    case 3:
        temp_r0_6 = temp_r1->unk6 - 1;
        temp_r1->unk6 = (u16) temp_r0_6;
        if ((temp_r0_6 << 0x10) != 0) {

        } else {
            CreateStageResults((u32) gRingCount, gCourseTime);
            temp_r1->unk6 = (u16) M2C_ERROR(/* Read from unset register $r0 */);
            goto block_37;
        }
        break;
    case 4:
        gPlayer.sa2__unk72 = 0x3C;
        temp_r0_7 = temp_r1->unk6 - 1;
        temp_r1->unk6 = (u16) temp_r0_7;
        temp_r2 = (u16) temp_r0_7;
        if (temp_r2 != 0) {

        } else {
            *(&gPlayer.sa2__unk72 - 6) = 0x32;
            gPlayer.moveState |= 0x400000;
            gPlayer.qWorldY += 0xFFFFF000;
            temp_r1->unkE = temp_r2;
            temp_r1->unkC = temp_r2;
            temp_r1->unk6 = temp_r2;
            goto block_37;
        }
        break;
    case 5:
        temp_r0_8 = temp_r1->unk6 + 1;
        temp_r1->unk6 = (u16) temp_r0_8;
        if ((u16) temp_r0_8 == 0x22) {
            sub_8038B38();
        }
        temp_r0_9 = temp_r1->unk6;
        if ((u32) temp_r0_9 > 0x99U) {
            gPlayer.charState = 0x33;
            temp_r1->unkC = 0x100U;
            temp_r1->unk6 = 0x78U;
            goto block_37;
        }
        if ((u32) temp_r0_9 > 0x21U) {
            temp_r1->unkE = (u16) ((temp_r1->unkE + 0x10) & 0x3FF);
            gPlayer.qWorldY = (*(temp_r1 + 0xA) + ((s32) ((u16) gSineTable[*(temp_r1 + 0xE)] << 0x10) >> 0x1B)) << 8;
        } else if ((u32) temp_r0_9 > 0x1FU) {
            temp_r1->unkC = (u16) (temp_r1->unkC + 0x400);
            temp_r0_10 = gPlayer.qWorldY + *(temp_r1 + 0xC);
            gPlayer.qWorldY = temp_r0_10;
            temp_r1->unkA = (s16) (temp_r0_10 >> 8);
        } else if ((u32) temp_r0_9 > 0x19U) {
            temp_r1->unkC = (u16) (temp_r1->unkC + 0xFFFFFE80);
            gPlayer.qWorldY += *(temp_r1 + 0xC);
        }
        break;
    case 6:
        if ((s32) gPlayer.qWorldX <= 0xF2000) {
            temp_r1->unkC = (u16) (temp_r1->unkC + 0x80);
            gPlayer.qWorldX += *(temp_r1 + 0xC);
        } else {
            gPlayer.moveState |= 0x100000;
        }
        temp_r0_11 = temp_r1->unk6 - 1;
        temp_r1->unk6 = (u16) temp_r0_11;
        if ((temp_r0_11 << 0x10) == 0) {
            sub_8038D2C();
            temp_r1->unk6 = 0xB4U;
            goto block_37;
        }
        break;
    case 7:
        temp_r0_12 = temp_r1->unk6 - 1;
        temp_r1->unk6 = (u16) temp_r0_12;
        temp_r3 = (u16) temp_r0_12;
        if (temp_r3 == 0) {
            gWinRegs[4] = 0x3F3F;
            gWinRegs->unk0 = 0xF0;
            gWinRegs[2] = 0xA0;
            gBldRegs.bldCnt = 0xBF;
            gBldRegs.bldY = temp_r3;
            gDispCnt = (gDispCnt | 0x2000) & 0xBFFF;
            temp_r1->unk6 = temp_r3;
            goto block_37;
        }
        break;
    case 8:
        temp_r2_2 = temp_r1->unk6 + 1;
        temp_r1->unk6 = (u16) temp_r2_2;
        if ((u32) (u16) temp_r2_2 > 0x80U) {
            TasksDestroyInPriorityRange(0x2000U, 0x2FFFU);
            TaskDestroy(gCurTask);
            GoToNextLevel();
        } else {
            gBldRegs.bldY = (u16) ((u32) (temp_r2_2 << 0x10) >> 0x13);
        }
        break;
    }
    if ((s8) (u8) gNumSingleplayerCharacters == 2) {
        temp_r0_13 = temp_r1->unk8;
        if (((s32) temp_r0_13 >= 0) && ((s32) temp_r0_13 <= 4)) {
            temp_r2_3 = temp_r1->unk9;
            switch (temp_r2_3) {                    /* switch 1; irregular */
            case 0:                                 /* switch 1 */
                if ((s32) gPartner.qWorldX > 0xE2FFF) {
                    gPartner.moveState |= 0x200000;
                    gPartner.frameInput = (u16) temp_r2_3;
                    gPartner.heldInput = 0x20;
block_55:
                    temp_r1->unk9 = (u8) (temp_r1->unk9 + 1);
                    return;
                }
                break;
            case 1:                                 /* switch 1 */
                if ((s32) gPartner.qSpeedGround <= 0x80) {
                    gPartner.heldInput = 0;
                    goto block_55;
                }
                break;
            case 2:                                 /* switch 1 */
                if ((s8) (u8) gPartner.charState == 0) {
                    gPartner.moveState |= 0x400000;
                    temp_r1->unk9 = (u8) (temp_r1->unk9 + 1);
                }
                /* fallthrough */
            case 3:                                 /* switch 1 */
                sub_80472AC(&gPartner);
                return;
            }
        } else if (gPartner.charState != 0x3D) {
            gPartner.charState = 0x3D;
        }
    }
}

void sub_803891C(void) {
    Collision *temp_r0_7;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r2;
    s32 temp_r4;
    u16 temp_r0_6;
    u16 temp_r1;
    u16 temp_r1_2;
    u8 temp_r0_5;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk4 + 1;
    temp_r1->unk4 = (u16) temp_r0;
    if (!((u16) temp_r0 & 3)) {
        temp_r4 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r4;
        temp_r0_2 = (temp_r4 * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r0_2;
        sub_8038420((s16) (u16) ((u16) gCamera.x + (temp_r4 % 240)), (s16) ((u16) gCamera.y + (temp_r0_2 % 160)));
    }
    temp_r0_3 = temp_r1->unk2 + 1;
    temp_r1->unk2 = (u16) temp_r0_3;
    temp_r1_2 = temp_r1->unk0;
    if ((u32) (u16) temp_r0_3 >= (u32) temp_r1_2) {
        temp_r1->unk2 = 0U;
        temp_r0_4 = temp_r1_2 - 2;
        temp_r1->unk0 = (u16) temp_r0_4;
        if ((u32) (u16) temp_r0_4 <= 3U) {
            temp_r1->unk0 = 4U;
        }
        sub_8038420((s16) (((s32) gPlayer.qWorldX >> 8) - 0x30), (s16) ((s32) (gPlayer.qWorldY << 8) >> 0x10));
    }
    temp_r0_5 = temp_r1->unk8;
    switch (temp_r0_5) {                            /* irregular */
    case 0:
        temp_r0_6 = temp_r1->unk6;
        if (temp_r0_6 != 0) {
            temp_r1->unk6 = (u16) (temp_r0_6 - 1);
            return;
        }
        if (gPlayer.moveState & 2) {
            return;
        }
        gPlayer.heldInput = 0x10;
        temp_r0_7 = gCollisionTable[(s8) (u8) gCurrentLevel];
        gRefCollision = temp_r0_7;
        gCamera.maxX = (s16) temp_r0_7->pxWidth;
block_19:
        temp_r1->unk8 = (u8) (temp_r1->unk8 + 1);
        return;
    case 1:
        if ((s32) gPlayer.qWorldX > 0xBFFFF) {
            gWinRegs[4] = 0x3F3F;
            gWinRegs->unk0 = 0xF0;
            gWinRegs[2] = 0xA0;
            gBldRegs.bldCnt = 0xBF;
            gBldRegs.bldY = 0;
            gDispCnt = (gDispCnt | 0x2000) & 0xBFFF;
            temp_r1->unk6 = 0U;
            goto block_19;
        }
        return;
    case 2:
        temp_r2 = temp_r1->unk6 + 1;
        temp_r1->unk6 = (u16) temp_r2;
        if ((u32) (u16) temp_r2 > 0x80U) {
            gPlayer.heldInput = 0;
            gPlayer.qSpeedAirX = 0;
            gPlayer.qSpeedAirY = 0;
            gPlayer.qSpeedGround = 0;
            gPlayer.moveState |= 0x100000;
            TasksDestroyInPriorityRange(0x2000U, 0x2FFFU);
            CreateStageResults((u32) gRingCount, gCourseTime);
            TaskDestroy(gCurTask);
            gBldRegs.bldCnt &= 0xFFEF;
            return;
        }
        gBldRegs.bldY = (u16) ((u32) (temp_r2 << 0x10) >> 0x13);
        gCamera.shiftX = 0 - ((u16) temp_r1->unk6 >> 1);
        break;
    }
}

void sub_8038B38(void) {
    u16 temp_r4;

    temp_r4 = TaskCreate(sub_8038BC8, 0x48U, 0x2100U, 0U, sub_803A5EC)->data;
    temp_r4->unk30 = 0xF;
    temp_r4->unk4 = VramMalloc(0x38U);
    temp_r4->unk1A = 0x440;
    temp_r4->unk8 = 0;
    temp_r4->unkA = 0x18E;
    *(temp_r4 + 0x20) = 1;
    temp_r4->unk14 = 0;
    temp_r4->unk1C = 0;
    *(temp_r4 + 0x21) = 0xFF;
    *(temp_r4 + 0x22) = 0x10;
    *(temp_r4 + 0x25) = 0;
    temp_r4->unk10 = 0x2000;
}

void sub_8038BC8(void) {
    s32 temp_r0;
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    temp_r4->unk16 = (s16) (((s32) gPlayer.qWorldX >> 8) - (u16) gCamera.x);
    temp_r4->unk18 = (s16) (((s32) gPlayer.qWorldY >> 8) - (u16) gCamera.y);
    UpdateSpriteAnimation((Sprite *) temp_r4);
    DisplaySprite((Sprite *) temp_r4);
    temp_r0 = temp_r4->unk30 - 1;
    temp_r4->unk30 = (u16) temp_r0;
    if ((temp_r0 << 0x10) == 0) {
        TaskDestroy(gCurTask);
    }
}

void sub_8038C20(void) {
    s32 temp_r4_2;
    u16 temp_r4;

    temp_r4 = TaskCreate(sub_8038E34, 0x64U, 0x2100U, 0U, TaskDestructor_803A600)->data;
    *(temp_r4 + 0x50) = 0xEF4;
    *(temp_r4 + 0x52) = 0x120;
    temp_r4->unk54 = 0;
    temp_r4->unk58 = 0;
    *(temp_r4 + 0x5C) = 0xFFF8;
    *(temp_r4 + 0x5E) = 4;
    *(temp_r4 + 0x4A) = 0x1000;
    *(temp_r4 + 0x4C) = 0xFFFF;
    temp_r4->unk3C = 0x258;
    temp_r4->unk4 = VramMalloc(4U);
    temp_r4->unk1A = 0x5C0;
    temp_r4->unk8 = 0;
    temp_r4->unkA = 0x2DB;
    *(temp_r4 + 0x20) = 0;
    temp_r4->unk14 = 0;
    temp_r4->unk1C = 0;
    *(temp_r4 + 0x21) = 0xFF;
    *(temp_r4 + 0x22) = 0x10;
    *(temp_r4 + 0x25) = 0;
    temp_r4->unk28 = -1;
    temp_r4->unk10 = 0x2030;
    temp_r4_2 = temp_r4 + 0x30;
    temp_r4_2->unk0 = 0;
    temp_r4_2->unk2 = 0x100;
    temp_r4_2->unk4 = 0x100;
}

void sub_8038D2C(void) {
    s32 temp_r4_2;
    u16 temp_r4;

    temp_r4 = TaskCreate(sub_8038E34, 0x64U, 0x2100U, 0U, TaskDestructor_803A600)->data;
    *(temp_r4 + 0x50) = 0xEF4;
    *(temp_r4 + 0x52) = 0x120;
    temp_r4->unk54 = 0;
    temp_r4->unk58 = 0;
    *(temp_r4 + 0x5C) = 0xFFF4;
    *(temp_r4 + 0x5E) = 6;
    *(temp_r4 + 0x4A) = 0x1000;
    *(temp_r4 + 0x4C) = 0xFFFF;
    temp_r4->unk3C = 0x258;
    temp_r4->unk4 = VramMalloc(0x10U);
    temp_r4->unk1A = 0x5C0;
    temp_r4->unk8 = 0;
    temp_r4->unkA = 0x2DC;
    *(temp_r4 + 0x20) = 0;
    temp_r4->unk14 = 0;
    temp_r4->unk1C = 0;
    *(temp_r4 + 0x21) = 0xFF;
    *(temp_r4 + 0x22) = 0x10;
    *(temp_r4 + 0x25) = 0;
    temp_r4->unk28 = -1;
    temp_r4->unk10 = 0x2030;
    temp_r4_2 = temp_r4 + 0x30;
    temp_r4_2->unk0 = 0;
    temp_r4_2->unk2 = 0x100;
    temp_r4_2->unk4 = 0x100;
}

void sub_8038E34(void) {
    s16 temp_r0_2;
    s32 temp_r0;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r6;
    u16 temp_r2;

    temp_r2 = gCurTask->data;
    temp_r6 = temp_r2 + 0x30;
    temp_r0 = temp_r2->unk54 + *(temp_r2 + 0x5C);
    temp_r2->unk54 = temp_r0;
    temp_r1 = temp_r2->unk58 + *(temp_r2 + 0x5E);
    temp_r2->unk58 = temp_r1;
    temp_r6->unk6 = (s16) ((s16) ((temp_r0 >> 8) + *(temp_r2 + 0x50)) - (u16) gCamera.x);
    temp_r6->unk8 = (s16) ((s16) ((temp_r1 >> 8) + *(temp_r2 + 0x52)) - (u16) gCamera.y);
    temp_r1_2 = temp_r2 + 0x4A;
    temp_r0_2 = *(temp_r2 + 0x4C) + *temp_r1_2;
    *temp_r1_2 = (u16) temp_r0_2;
    if ((s32) temp_r0_2 <= 0x800) {
        *temp_r1_2 = 0x800U;
    }
    temp_r6->unk2 = (s16) ((s32) (*temp_r1_2 << 0x10) >> 0x14);
    temp_r6->unk4 = (s16) ((s32) (*temp_r1_2 << 0x10) >> 0x14);
    UpdateSpriteAnimation((Sprite *) temp_r2);
    TransformSprite((Sprite *) temp_r2, (SpriteTransform *) temp_r6);
    DisplaySprite((Sprite *) temp_r2);
    temp_r0_3 = temp_r2->unk3C - 1;
    temp_r2->unk3C = (u16) temp_r0_3;
    if ((temp_r0_3 << 0x10) == 0) {
        TaskDestroy(gCurTask);
    }
}

void sub_8038F04(void) {
    s32 temp_r4;
    struct Task *temp_r0_2;
    u16 temp_r0;
    u16 temp_r5;
    u16 temp_r8;
    u16 temp_sl;

    temp_r0 = gCurTask->data;
    temp_r8 = temp_r0;
    temp_sl = temp_r0;
    temp_r0_2 = TaskCreate(sub_8039264, 0x7CU, 0x2001U, 0U, sub_803A5D0);
    *(temp_r8 + 0x9C) = temp_r0_2;
    temp_r5 = temp_r0_2->data;
    *(temp_r5 + 0x74) = (s16) (((s32) temp_sl->unk74 >> 8) + *(temp_r8 + 0x88));
    *(temp_r5 + 0x76) = (s16) (((s32) temp_sl->unk78 >> 8) + *(temp_r8 + 0x8A));
    temp_r5->unk64 = 0;
    temp_r5->unk68 = 0xFFFFE900;
    temp_r5->unk6C = 0;
    temp_r5->unk70 = 0;
    *(temp_r5 + 0x78) = 0;
    *(temp_r5 + 0x79) = 0;
    *(temp_r5 + 0x7A) = 0;
    temp_r5->unk4 = VramMalloc(0xCU);
    temp_r5->unk1A = 0x500;
    temp_r5->unk8 = 0;
    temp_r5->unkA = 0x2B0;
    *(temp_r5 + 0x20) = 8;
    temp_r5->unk14 = 0;
    temp_r5->unk1C = 0;
    *(temp_r5 + 0x21) = 0xFF;
    *(temp_r5 + 0x22) = 0x10;
    *(temp_r5 + 0x25) = 0;
    temp_r5->unk28 = -1;
    temp_r5->unk10 = 0x2000;
    temp_r4 = temp_r5 + 0x30;
    temp_r4->unk4 = VramMalloc(0xCU);
    temp_r4->unk1A = 0x500;
    temp_r4->unk8 = 0;
    temp_r4->unkA = 0x2B0;
    *(temp_r5 + 0x50) = 0xB;
    temp_r4->unk14 = 0;
    temp_r4->unk1C = 0;
    *(temp_r5 + 0x51) = -1;
    *(temp_r5 + 0x52) = 0x10;
    *(temp_r5 + 0x55) = 0;
    temp_r4->unk28 = -1;
    temp_r4->unk10 = 0x2000;
}

void sub_8039074(u8 arg0) {
    s32 var_r1;
    s8 var_r0;
    u16 temp_r3;
    u8 var_r2;

    var_r2 = arg0;
    temp_r3 = gCurTask->data;
    switch (var_r2) {                               /* irregular */
    case 1:
        var_r2 = 4;
        *(temp_r3 + 0x20) = 4;
        var_r1 = temp_r3 + 0x50;
        var_r0 = 5;
block_9:
        *var_r1 = var_r0;
        *(temp_r3 + 0x21) = 0xFF;
        *(temp_r3 + 0x51) = -1;
        *(temp_r3 + 0x78) = var_r2;
        return;
    case 2:
        *(temp_r3 + 0x20) = var_r2;
        var_r1 = temp_r3 + 0x50;
        var_r0 = 3;
        goto block_9;
    case 3:
        var_r2 = 6;
        *(temp_r3 + 0x20) = 6;
        var_r1 = temp_r3 + 0x50;
        var_r0 = 7;
        goto block_9;
    }
}

void sub_8039108(void) {
    s32 temp_r1;
    s32 var_r1;
    s8 var_r0;
    s8 var_r2;
    u16 temp_r3;
    u8 temp_r0;

    temp_r3 = gCurTask->data;
    temp_r1 = temp_r3 + 0x20;
    temp_r0 = *temp_r1;
    switch (temp_r0) {                              /* irregular */
    case 4:
        var_r2 = 0xE;
        *temp_r1 = 0xEU;
        var_r1 = temp_r3 + 0x50;
        var_r0 = 0x11;
block_9:
        *var_r1 = var_r0;
        *(temp_r3 + 0x21) = 0xFF;
        *(temp_r3 + 0x51) = -1;
        *(temp_r3 + 0x78) = var_r2;
        return;
    case 2:
        var_r2 = 0xF;
        *temp_r1 = 0xFU;
        var_r1 = temp_r3 + 0x50;
        var_r0 = 0x12;
        goto block_9;
    case 6:
        var_r2 = 0x10;
        *temp_r1 = 0x10U;
        var_r1 = temp_r3 + 0x50;
        var_r0 = 0x13;
        goto block_9;
    }
}

void sub_803918C(u8 arg0) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 var_r1;
    s32 var_r2;
    s8 var_r0;
    s8 var_r0_2;
    u16 temp_r2;

    temp_r2 = gCurTask->data;
    temp_r0 = temp_r2 + 0x30;
    if (temp_r2->unk10 & 0x4000) {
        temp_r1 = temp_r2 + 0x20;
        if (*temp_r1 == arg0) {
            var_r2 = temp_r2 + 0x7A;
            var_r0 = 1 | *var_r2;
        } else {
            temp_r0_2 = *temp_r1 - 8;
            switch (temp_r0_2) {
            case 0:
            case 6:
                *(temp_r2 + 0x20) = 0xA;
                var_r1 = temp_r0 + 0x20;
                var_r0_2 = 0xD;
block_8:
                *var_r1 = var_r0_2;
                break;
            case 1:
            case 7:
                *(temp_r2 + 0x20) = 8;
                var_r1 = temp_r0 + 0x20;
                var_r0_2 = 0xB;
                goto block_8;
            case 2:
            case 8:
                *(temp_r2 + 0x20) = 9;
                var_r1 = temp_r0 + 0x20;
                var_r0_2 = 0xC;
                goto block_8;
            }
            *(temp_r2 + 0x21) = 0xFF;
            *(temp_r0 + 0x21) = -1;
            goto block_10;
        }
    } else {
block_10:
        var_r2 = temp_r2 + 0x7A;
        var_r0 = 0xFE & *var_r2;
    }
    *var_r2 = var_r0;
}

void sub_8039264(void) {
    s32 sp0;
    s32 sp4;
    enum EHit temp_r7_2;
    enum EHit var_r0_5;
    s16 temp_r2_2;
    s16 temp_r4_3;
    s16 temp_r7;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r0_7;
    s32 temp_r0_8;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_4;
    s32 temp_r1_5;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r4_2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    u16 temp_r0_6;
    u16 temp_r0_9;
    u16 temp_r2;
    u16 temp_r2_3;
    u16 temp_r4;
    u8 temp_r0_5;
    u8 temp_r1_3;
    u8 var_r0_4;
    u8 var_r1;
    u8 var_r1_2;

    temp_r4 = gCurTask->data;
    temp_r2 = gCurTask->parent->unk6;
    temp_r0 = temp_r4 + 0x30;
    temp_r4->unk10 = (s32) (temp_r4->unk10 & 0xFFFFFBFF);
    temp_r0->unk10 = (s32) (temp_r0->unk10 & 0xFFFFFBFF);
    temp_r1 = temp_r2->unk1C & 0x400;
    temp_r4->unk10 = (s32) (temp_r4->unk10 | temp_r1);
    temp_r0->unk10 = (s32) (temp_r0->unk10 | temp_r1);
    var_r1 = *(temp_r2 + 0x31);
    if (var_r1 != 0) {
        var_r0 = temp_r4 + 0x25;
        var_r1 = 0xFE;
    } else {
        var_r0 = temp_r4 + 0x25;
    }
    *var_r0 = var_r1;
    *(temp_r4 + 0x55) = var_r1;
    temp_r3 = temp_r4 + 0x74;
    *temp_r3 = (u16) *(temp_r2 + 0x8C);
    temp_r1_2 = temp_r4 + 0x76;
    *temp_r1_2 = (u16) *(temp_r2 + 0x8E);
    temp_r0_2 = temp_r2 + 0x94;
    sp0 = temp_r1_2;
    sp4 = temp_r0_2;
    if ((s32) *temp_r0_2 > 7) {
        temp_r4_2 = temp_r4 + 0x79;
        if (*temp_r4_2 != 0) {
            if (*(temp_r4 + 0x20) != 6) {
                sub_8039108();
            }
            *temp_r4_2 = 0U;
        }
        temp_r4->unk6C = 0;
        temp_r4->unk70 = 0;
        if ((u32) *(temp_r2 + 0x99) <= 1U) {
            goto block_47;
        }
        TaskDestroy(gCurTask);
        return;
    }
    temp_r0_3 = temp_r4 + 0x79;
    temp_r1_3 = *temp_r0_3;
    switch ((u32) temp_r1_3) {                      /* irregular */
    case 1:
        *(gCurTask->data + 0x78) = 8;
        if (!(1 & *(temp_r4 + 0x7A))) {

        } else {
            *(temp_r4 + 0x60) = 0x1E;
block_46:
            *temp_r0_3 = (u8) (*temp_r0_3 + 1);
        }
        break;
    case 2:
        temp_r1_4 = temp_r4 + 0x60;
        temp_r0_4 = *temp_r1_4 - 1;
        *temp_r1_4 = (u16) temp_r0_4;
        if ((temp_r0_4 << 0x10) != 0) {

        } else {
            var_r0_2 = 0x100;
block_45:
            temp_r4->unk70 = var_r0_2;
            goto block_46;
        }
        break;
    case 3:
        if ((s32) (temp_r4->unk68 + temp_r4->unk70) < 0) {

        } else {
            var_r0_2 = 0;
            temp_r4->unk68 = 0;
            goto block_45;
        }
        break;
    case 5:
        var_r0_2 = 0xFFFFFF00;
        goto block_45;
    case 8:
        temp_r4->unk68 = -0x1700;
        *(temp_r4 + 0x78) = 0;
        *temp_r0_3 = (u8) (*temp_r0_3 + 1);
        /* fallthrough */
    case 9:
        temp_r0_5 = *(temp_r2 + 0x9A);
        if (temp_r0_5 != 0) {
            temp_r0_6 = gCurTask->data;
            switch (temp_r0_5) {                    /* switch 1; irregular */
            case 1:                                 /* switch 1 */
                *(temp_r0_6 + 0x78) = 8;
                break;
            case 2:                                 /* switch 1 */
                *(temp_r0_6 + 0x78) = 9;
                break;
            case 3:                                 /* switch 1 */
                *(temp_r0_6 + 0x78) = 0xA;
                break;
            }
        }
        break;
    case 10:
        temp_r4->unk70 = 0x200;
        *temp_r0_3 = (u8) (*temp_r0_3 + 1);
        /* fallthrough */
    case 11:
        if ((s32) (temp_r4->unk68 + temp_r4->unk70) >= 0) {
            var_r0_2 = 0;
            temp_r4->unk68 = 0;
            goto block_45;
        }
        break;
    case 13:
        sub_8039074(*(temp_r2 + 0x9A));
        goto block_46;
    case 15:
        sub_8039108();
        *(temp_r4 + 0x60) = 0xA;
        *temp_r0_3 = (u8) (*temp_r0_3 + 1);
        /* fallthrough */
    case 16:
        temp_r1_5 = temp_r4 + 0x60;
        temp_r0_7 = *temp_r1_5 - 1;
        *temp_r1_5 = (u16) temp_r0_7;
        if ((temp_r0_7 << 0x10) == 0) {
            var_r0_2 = 0xFFFFFE00;
            goto block_45;
        }
        break;
    case 19:
        *temp_r0_3 = (u8) (*temp_r0_3 + 1);
        var_r0_2 = 0xFFFFFE00;
        goto block_45;
    case 6:
    case 17:
    case 21:
        if ((s32) (temp_r4->unk68 + temp_r4->unk70) <= 0xFFFFE900) {
            temp_r4->unk68 = -0x1700;
            var_r0_2 = 0;
            goto block_45;
        }
        break;
    }
block_47:
    temp_r4->unk64 = (s32) (temp_r4->unk64 + temp_r4->unk6C);
    temp_r0_8 = temp_r4->unk68 + temp_r4->unk70;
    temp_r4->unk68 = temp_r0_8;
    if (temp_r0_8 <= 0xFFFFE900) {
        var_r0_3 = temp_r4 + 0x7A;
        var_r1_2 = 4 | *var_r0_3;
    } else {
        var_r0_3 = temp_r4 + 0x7A;
        var_r1_2 = 0xFB & *var_r0_3;
    }
    *var_r0_3 = var_r1_2;
    if ((s32) temp_r4->unk68 >= 0) {
        var_r0_4 = 2 | *var_r0_3;
    } else {
        var_r0_4 = 0xFD & *var_r0_3;
    }
    *var_r0_3 = var_r0_4;
    temp_r7 = ((s32) temp_r4->unk64 >> 8) + *temp_r3;
    temp_r2_2 = temp_r7 - (u16) gCamera.x;
    temp_r4->unk16 = temp_r2_2;
    temp_r4_3 = ((s32) temp_r4->unk68 >> 8) + *sp0;
    temp_r4->unk18 = (s16) (temp_r4_3 - (u16) gCamera.y);
    temp_r0->unk16 = temp_r2_2;
    temp_r0->unk18 = (u16) temp_r4->unk18;
    sub_803918C(*(temp_r4 + 0x78));
    if ((*(temp_r2 + 0x98) != 0) && ((s8) *(temp_r2 + 0x95) == 0) && ((s32) *sp4 <= 7)) {
        temp_r0_9 = gCurTask->data;
        temp_r7_2 = sub_800BF10((Sprite *) temp_r0_9, temp_r7, temp_r4_3, &gPlayer);
        if ((s8) (u8) gNumSingleplayerCharacters == 2) {
            var_r0_5 = sub_800BF10((Sprite *) temp_r0_9, temp_r7, temp_r4_3, &gPartner);
        } else {
            var_r0_5 = HIT_NONE;
        }
        if ((temp_r7_2 == HIT_PLAYER) || (var_r0_5 == HIT_PLAYER)) {
            temp_r2_3 = gCurTask->parent->unk6;
            temp_r3_2 = temp_r2_3 + 0x44;
            *(temp_r2_3 + 0x64) = 3;
            temp_r3_2->unk10 = (s32) (temp_r3_2->unk10 & 0xFFFFBFFF);
            *(temp_r2_3 + 0x65) = 0xFF;
        }
    }
    UpdateSpriteAnimation((Sprite *) temp_r4);
    UpdateSpriteAnimation((Sprite *) temp_r0);
    DisplaySprite((Sprite *) temp_r4);
    DisplaySprite((Sprite *) temp_r0);
}

void sub_803967C(void) {
    s16 var_r2;
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r1_2;
    u16 temp_r2;
    u16 temp_r4;
    u16 temp_r7;

    temp_r0 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
    gPseudoRandom = temp_r0;
    temp_r4 = gCurTask->data;
    temp_r7 = temp_r4;
    temp_r2 = TaskCreate(sub_80397A8, 0x48U, 0x2100U, 0U, sub_803A5EC)->data;
    *(temp_r2 + 0x40) = (u16) *(temp_r4 + 0x88);
    *(temp_r2 + 0x42) = (u16) *(temp_r4 + 0x8A);
    temp_r2->unk34 = (s32) temp_r7->unk74;
    temp_r2->unk38 = (s32) temp_r7->unk78;
    if (0x800 & temp_r0) {
        *(temp_r2 + 0x44) = 0x28;
        temp_r2->unk3E = 0xFE00;
        var_r2 = 0x300;
    } else {
        *(temp_r2 + 0x44) = 0x30;
        temp_r2->unk3E = 0xFB00;
        var_r2 = 0x180;
    }
    if (temp_r7->unk1C & 0x400) {
        temp_r2->unk34 = (s32) (temp_r2->unk34 + 0x1400);
        temp_r2->unk3C = var_r2;
    } else {
        temp_r2->unk34 = (s32) (temp_r2->unk34 + 0xFFFFEC00);
        temp_r2->unk3C = (s16) (0 - var_r2);
    }
    temp_r2->unk4 = VramMalloc(4U);
    temp_r2->unk1A = 0x5C0;
    temp_r2->unk8 = 0;
    temp_r2->unkA = 0x2B2;
    temp_r1 = temp_r2 + 0x20;
    *temp_r1 = 1;
    temp_r2->unk14 = 0;
    temp_r2->unk1C = 0;
    temp_r1_2 = temp_r1 + 1;
    *temp_r1_2 = 0xFF;
    *(temp_r1_2 + 1) = 0x10;
    *(temp_r2 + 0x25) = 0;
    temp_r2->unk28 = -1;
    temp_r2->unk10 = 0x2000;
    m4aSongNumStart(0x91U);
}

void sub_80397A8(void) {
    s32 sp4;
    enum EHit temp_r8;
    enum EHit var_r0_2;
    s16 temp_r0_2;
    s16 temp_r1_2;
    s16 temp_r6_2;
    s16 var_r0;
    s32 temp_r0;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r3_2;
    s32 temp_r5;
    u16 temp_r0_4;
    u16 temp_r2;
    u16 temp_r3;
    u16 temp_r6;
    u16 temp_r7;

    temp_r3 = gCurTask->data;
    temp_r7 = gCurTask->parent->unk6;
    temp_r3->unk3E = (u16) (*(temp_r3 + 0x44) + temp_r3->unk3E);
    temp_r1 = temp_r3->unk34 + *(temp_r3 + 0x3C);
    temp_r3->unk34 = temp_r1;
    temp_r0 = temp_r3->unk38 + *(temp_r3 + 0x3E);
    temp_r3->unk38 = temp_r0;
    temp_r1_2 = (temp_r1 >> 8) + *(temp_r3 + 0x40);
    temp_r0_2 = (temp_r0 >> 8) + *(temp_r3 + 0x42);
    temp_r6 = (u16) temp_r1_2;
    temp_r0_3 = sa2__sub_801F100(temp_r0_2 + 8, (s32) temp_r1_2, 1, 8, sa2__sub_801EC3C);
    if (temp_r0_3 < 0) {
        temp_r3->unk38 = (s32) (temp_r3->unk38 + (temp_r0_3 << 8));
        var_r0 = *(temp_r3 + 0x3E);
        if ((s32) var_r0 < 0) {
            var_r0 += 3;
        }
        temp_r3->unk3E = (u16) ((0 - temp_r3->unk3E) + (var_r0 >> 2));
    }
    sp4 = (u16) temp_r0_2 << 0x10;
    if ((s32) (s8) *(temp_r7 + 0x94) <= 7) {
        temp_r0_4 = gCurTask->data;
        temp_r6_2 = (s16) temp_r6;
        temp_r5 = sp4 >> 0x10;
        temp_r8 = sub_800BF10((Sprite *) temp_r0_4, temp_r6_2, (s16) temp_r5, &gPlayer);
        if ((s8) (u8) gNumSingleplayerCharacters == 2) {
            var_r0_2 = sub_800BF10((Sprite *) temp_r0_4, temp_r6_2, (s16) temp_r5, &gPartner);
        } else {
            var_r0_2 = HIT_NONE;
        }
        if ((temp_r8 == HIT_PLAYER) || (var_r0_2 == HIT_PLAYER)) {
            temp_r2 = gCurTask->parent->unk6;
            temp_r3_2 = temp_r2 + 0x44;
            *(temp_r2 + 0x64) = 3;
            temp_r3_2->unk10 = (s32) (temp_r3_2->unk10 & 0xFFFFBFFF);
            *(temp_r2 + 0x65) = 0xFF;
        }
    }
    temp_r3->unk16 = (s16) ((s16) temp_r6 - (u16) gCamera.x);
    temp_r3->unk18 = (s16) ((sp4 >> 0x10) - (u16) gCamera.y);
    UpdateSpriteAnimation((Sprite *) temp_r3);
    DisplaySprite((Sprite *) temp_r3);
    if ((u32) (temp_r3->unk34 + 0xD000) > 0x1A000U) {
        TaskDestroy(gCurTask);
    }
}

void sub_8039940(void) {
    s16 var_r0;
    s16 var_r0_2;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r5;
    u16 temp_r2;
    u16 temp_r4;
    u16 temp_r7;

    temp_r4 = gCurTask->data;
    temp_r7 = temp_r4;
    temp_r2 = TaskCreate(Task_8039A64, 0x64U, 0x2100U, 0U, TaskDestructor_803A600)->data;
    temp_r5 = temp_r2 + 0x50;
    *temp_r5 = (s16) (((s32) temp_r7->unk74 >> 8) + *(temp_r4 + 0x88));
    *(temp_r2 + 0x52) = (s16) (((s32) temp_r7->unk78 >> 8) + *(temp_r4 + 0x8A));
    temp_r2->unk40 = 0xE00;
    *(temp_r2 + 0x48) = 0xFE00;
    *(temp_r2 + 0x4A) = 0;
    if (temp_r7->unk1C & 0x400) {
        var_r0 = (u16) *temp_r5 + 0x1A;
    } else {
        var_r0 = (u16) *temp_r5 - 0x1A;
    }
    *temp_r5 = var_r0;
    temp_r2->unk3C = 0x11;
    temp_r0 = temp_r2 + 0x61;
    *temp_r0 = 0;
    *(temp_r0 + 1) = 0;
    temp_r2->unk4 = VramMalloc(0x40U);
    temp_r2->unk1A = 0x5C0;
    temp_r2->unk8 = 0;
    temp_r2->unkA = 0x2B1;
    *(temp_r2 + 0x20) = 0;
    temp_r2->unk14 = 0;
    temp_r2->unk1C = 0;
    temp_r1 = temp_r2 + 0x21;
    *temp_r1 = 0xFF;
    *(temp_r1 + 1) = 0x10;
    *(temp_r2 + 0x25) = 0;
    temp_r2->unk28 = -1;
    temp_r0_2 = (temp_r7->unk1C & 0x400) | 0x2030;
    temp_r2->unk10 = temp_r0_2;
    temp_r1_2 = temp_r2 + 0x30;
    temp_r2->unk30 = 0;
    if (temp_r0_2 & 0x400) {
        var_r0_2 = 0xFF00;
    } else {
        var_r0_2 = 0x100;
    }
    temp_r1_2->unk2 = var_r0_2;
    temp_r1_2->unk4 = 0x100;
}

void Task_8039A64(void) {
    s32 sp0;
    s32 sp4;
    enum EHit sp8;
    s32 spC;
    s32 sp10;
    s16 temp_r0_8;
    s16 temp_r1;
    s16 temp_r1_3;
    s16 temp_r1_7;
    s16 temp_r6;
    s16 temp_r7;
    s32 temp_r0;
    s32 temp_r0_10;
    s32 temp_r0_15;
    s32 temp_r0_2;
    s32 temp_r0_4;
    s32 temp_r0_5;
    s32 temp_r0_6;
    s32 temp_r0_9;
    s32 temp_r1_4;
    s32 temp_r1_5;
    s32 temp_r1_6;
    s32 temp_r1_8;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r2_4;
    s32 temp_r2_6;
    s32 temp_r3_2;
    s32 temp_r4_2;
    s32 temp_r5;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r0_6;
    s32 var_r6_2;
    u16 temp_r0_11;
    u16 temp_r0_12;
    u16 temp_r0_13;
    u16 temp_r0_14;
    u16 temp_r0_7;
    u16 temp_r2_3;
    u16 temp_r3;
    u16 temp_r3_3;
    u16 temp_r4;
    u16 temp_r4_3;
    u16 var_ip;
    u16 var_r4;
    u16 var_r6;
    u16 var_r6_3;
    u8 temp_r0_3;
    u8 temp_r1_2;
    u8 temp_r2_5;
    u8 var_r2;

    sp8 = HIT_NONE;
    temp_r4 = gCurTask->data;
    temp_r3 = gCurTask->parent->unk6;
    sp0 = (s32) temp_r3;
    sp4 = temp_r4 + 0x30;
    if ((s32) (s8) *(temp_r3 + 0x94) <= 7) {
        temp_r2 = temp_r4 + 0x50;
        *temp_r2 = (u16) *(temp_r3 + 0x8C);
        *(temp_r4 + 0x52) = (u16) *(temp_r3 + 0x8E);
        if (temp_r4->unk10 & 0x400) {
            var_r0 = *temp_r2 + 0x1A;
        } else {
            var_r0 = *temp_r2 - 0x1A;
        }
        *temp_r2 = (u16) var_r0;
    }
    temp_r3_2 = temp_r4 + 0x48;
    temp_r4->unk40 = (s32) (temp_r4->unk40 + *temp_r3_2);
    temp_r2_2 = temp_r4 + 0x4A;
    *(temp_r4 + 0x4E) = (u16) *temp_r2_2;
    var_r6 = *temp_r2_2;
    var_ip = var_r6;
    spC = temp_r3_2;
    if (temp_r4->unk10 & 0x400) {
        var_r6 = (0xFFFFFE00 - (s16) var_r6) & 0x3FF;
        var_ip = ((s32) (0 - (var_ip << 0x10)) >> 0x10) & 0x3FF;
    }
    temp_r1 = (s16) var_r6;
    temp_r0 = temp_r4->unk40;
    temp_r5 = temp_r4 + 0x50;
    temp_r6 = ((s32) (temp_r0 * ((s16) gSineTable[temp_r1 + 0x100] >> 6)) >> 0x10) + *temp_r5;
    temp_r4_2 = temp_r4 + 0x52;
    temp_r7 = ((s32) (temp_r0 * ((s16) gSineTable[temp_r1] >> 6)) >> 0x10) + *temp_r4_2;
    sp4->unk6 = (s16) (temp_r6 - (u16) gCamera.x);
    sp4->unk8 = (s16) (temp_r7 - (u16) gCamera.y);
    sp4->unk0 = var_ip;
    UpdateSpriteAnimation((Sprite *) temp_r4);
    TransformSprite((Sprite *) temp_r4, (SpriteTransform *) sp4);
    DisplaySprite((Sprite *) temp_r4);
    if ((s32) (s8) *(sp0 + 0x94) > 7) {
        *spC = 0U;
        temp_r4->unk54 = (s32) (temp_r6 << 8);
        temp_r4->unk58 = (s32) (temp_r7 << 8);
        temp_r4->unk1A = 0x5C0;
        temp_r4->unk3C = 0x50U;
        gCurTask->main = sub_803A46C;
        return;
    }
    temp_r0_2 = temp_r4 + 0x61;
    temp_r1_2 = *temp_r0_2;
    sp10 = temp_r0_2;
    if ((s32) temp_r1_2 >= 0) {
        if ((s32) temp_r1_2 > 1) {
            if (temp_r1_2 != 2) {

            } else {
                var_r2 = 1;
                goto block_15;
            }
        } else {
            var_r2 = 0;
block_15:
            sp8 = sub_8036F9C((u16) temp_r6, (u16) temp_r7, var_r2);
        }
    }
    temp_r0_3 = *sp10;
    switch ((u32) temp_r0_3) {                      /* irregular */
    case 0:
        temp_r0_4 = temp_r4->unk3C - 1;
        temp_r4->unk3C = (u16) temp_r0_4;
        temp_r3_3 = (u16) temp_r0_4;
        if (temp_r3_3 != 0) {
            return;
        }
        temp_r0_5 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r0_5;
        *spC = temp_r3_3;
        *sp10 = (u8) (*sp10 + 1);
        temp_r0_6 = temp_r0_5 % 100;
        if ((s32) (temp_r0_6 - 0x23) <= 0) {
            temp_r4->unk3C = 0xB4U;
            return;
        }
        if ((s32) (temp_r0_6 - 0x46) <= 0) {
            temp_r4->unk3C = 0x3CU;
            return;
        }
        if ((s32) (temp_r0_6 - 0x5A) <= 0) {
            temp_r4->unk3C = 0x12U;
            return;
        }
        temp_r4->unk3C = 0x12CU;
        return;
    case 1:
        var_r6_2 = *temp_r5 - ((s32) gPlayer.qWorldX >> 8);
        if (var_r6_2 < 0) {
            var_r6_2 = 0 - var_r6_2;
        }
        temp_r0_7 = (u16) sa2__sub_8004418((s16) (*temp_r4_2 - ((s32) gPlayer.qWorldY >> 8)), (s16) var_r6_2);
        var_r6_3 = temp_r0_7;
        if ((u32) ((u32) ((temp_r0_7 << 0x10) + 0xFF1F0000) >> 0x10) <= 0x11EU) {
            var_r6_3 = 0xE0;
        }
        if ((u32) ((u32) ((var_r6_3 << 0x10) + 0xFDFF0000) >> 0x10) <= 0x11EU) {
            var_r6_3 = 0x320;
        }
        temp_r2_3 = *temp_r2_2;
        temp_r1_3 = temp_r2_3 << 6;
        temp_r0_8 = var_r6_3 << 6;
        if ((s32) temp_r1_3 > (s32) temp_r0_8) {
            if ((s32) temp_r1_3 >= (s32) (temp_r0_8 + 0x180)) {
                var_r0_2 = temp_r2_3 - 6;
                goto block_41;
            }
            goto block_39;
        }
        if ((s32) temp_r1_3 < (s32) temp_r0_8) {
            if ((s32) temp_r1_3 > (s32) (temp_r0_8 + 0xFFFFFE80)) {
block_39:
                *temp_r2_2 = var_r6_3;
            } else {
                var_r0_2 = temp_r2_3 + 6;
block_41:
                *temp_r2_2 = (u16) var_r0_2;
            }
        }
        *temp_r2_2 = (u16) (0x3FF & *temp_r2_2);
        temp_r0_9 = temp_r4->unk3C - 1;
        temp_r4->unk3C = (u16) temp_r0_9;
        if ((temp_r0_9 << 0x10) != 0) {
            return;
        }
        temp_r0_10 = *temp_r5 - ((s32) gPlayer.qWorldX >> 8);
        temp_r2_4 = *temp_r4_2 - ((s32) gPlayer.qWorldY >> 8);
        temp_r4->unk44 = (s32) (0xFFFFF000 - ((u32) (Sqrt((u32) (((temp_r0_10 * temp_r0_10) << 8) + ((temp_r2_4 * temp_r2_4) << 8))) << 0x10) >> 0xC));
        *spC = 0xFA00U;
        *(temp_r4 + 0x60) = 0;
        *sp10 = (u8) (*sp10 + 1);
        temp_r4->unk1A = 0x3C0;
        temp_r1_4 = temp_r4 + 0x20;
        *temp_r1_4 = 1;
        *(temp_r1_4 + 1) = 0xFF;
        m4aSongNumStart(0xB3U);
        return;
    case 2:
        temp_r2_5 = (u8) (((s32) (((s32) (0 - temp_r4->unk40) >> 8) - 0x14) >> 4) + 1);
        temp_r1_5 = temp_r4 + 0x60;
        if ((u32) *temp_r1_5 < (u32) temp_r2_5) {
            *temp_r1_5 = temp_r2_5;
            sub_803A1D8();
        }
        if (sp8 == HIT_PLAYER) {
            *(temp_r4 + 0x62) = 0xFF;
            *spC = 0U;
            *sp10 = 7U;
            *(temp_r4 + 0x20) = (u8) sp0.unk8;
            *(temp_r4 + 0x21) = -1;
            Player_TransitionCancelFlyingAndBoost(&gPlayer);
            gPlayer.qWorldX = temp_r6 << 8;
            gPlayer.qWorldY = temp_r7 << 8;
            gPlayer.qSpeedAirX = 0;
            gPlayer.qSpeedAirY = 0;
            gPlayer.qSpeedGround = 0;
            gPlayer.moveState |= 0xE00100;
            if (temp_r4->unk10 & 0x400) {
                var_r0_3 = (s32) (0 - (s16) *temp_r2_2) >> 2;
            } else {
                var_r0_3 = (s32) ((u16) *temp_r2_2 >> 2);
            }
            gPlayer.rotation = (u8) var_r0_3;
            gPlayer.charState = 0x28;
            gPlayer.heldInput = 0;
            gPlayer.frameInput = 0;
            return;
        }
        if ((s32) temp_r4->unk40 > (s32) temp_r4->unk44) {
            return;
        }
        *spC = 0U;
        *sp10 = (u8) (*sp10 + 1);
        temp_r1_6 = temp_r4 + 0x20;
        *temp_r1_6 = 2;
        *(temp_r1_6 + 1) = 0xFF;
        return;
    case 3:
        if (!(temp_r4->unk10 & 0x4000)) {
            return;
        }
        *spC = 0x200U;
block_87:
        *sp10 = (u8) (*sp10 + 1);
        return;
    case 4:
        if ((s32) temp_r4->unk40 < 0xFFFFEC00) {
            return;
        }
        temp_r4->unk40 = -0x1400;
        *spC = 0U;
        temp_r4->unk1A = 0x5C0;
        *(temp_r4 + 0x20) = 0;
        *(temp_r4 + 0x21) = 0xFF;
        goto block_87;
    case 5:
        temp_r0_11 = *temp_r2_2;
        temp_r1_7 = (s16) *temp_r2_2;
        if (temp_r1_7 == 0) {
            temp_r4->unk1A = 0x5C0;
            *spC = 0x100U;
            *sp10 = (u8) (*sp10 + 1);
            return;
        }
        if ((s32) temp_r1_7 > 0x200) {
            temp_r0_12 = (temp_r0_11 + 6) & 0x3FF;
            *temp_r2_2 = temp_r0_12;
            if ((s32) temp_r0_12 > 6) {
                return;
            }
            goto block_69;
        }
        temp_r0_13 = (temp_r0_11 - 6) & 0x3FF;
        *temp_r2_2 = temp_r0_13;
        if ((s32) temp_r0_13 <= 0x200) {
            return;
        }
block_69:
        *(s16 *) temp_r2_2 = 0;
        return;
    case 6:
        if ((s32) temp_r4->unk40 <= 0xDFF) {
            return;
        }
        if (*(temp_r4 + 0x62) == 0) {
            temp_r1_8 = sp0 + 0x99;
            *temp_r1_8 = (u8) (*temp_r1_8 + 1);
        } else {
            *(sp0 + 0x92) = 1;
        }
        TaskDestroy(gCurTask);
        return;
    case 7:
        gPlayer.qWorldX = temp_r6 << 8;
        gPlayer.qWorldY = temp_r7 << 8;
        if (temp_r4->unk10 & 0x400) {
            var_r0_4 = (s32) (0 - (s16) *temp_r2_2) >> 2;
        } else {
            var_r0_4 = (s32) ((u16) *temp_r2_2 >> 2);
        }
        gPlayer.rotation = (u8) var_r0_4;
        if (!(temp_r4->unk10 & 0x4000)) {
            return;
        }
        *spC = 0x600U;
        *sp10 = (u8) (*sp10 + 1);
        return;
    case 8:
        gPlayer.qWorldX = temp_r6 << 8;
        gPlayer.qWorldY = temp_r7 << 8;
        if (temp_r4->unk10 & 0x400) {
            var_r0_5 = (s32) (0 - (s16) *temp_r2_2) >> 2;
        } else {
            var_r0_5 = (s32) ((u16) *temp_r2_2 >> 2);
        }
        gPlayer.rotation = (u8) var_r0_5;
        if ((s32) temp_r4->unk40 >= 0xFFFFDC00) {
            temp_r4->unk40 = -0x2400;
            *spC = 0U;
            *(temp_r4 + 0x4C) = 0x10;
            temp_r4->unk3C = 0U;
            goto block_87;
        }
        return;
    case 9:
        gPlayer.qWorldX = temp_r6 << 8;
        gPlayer.qWorldY = temp_r7 << 8;
        if (temp_r4->unk10 & 0x400) {
            var_r0_6 = (s32) (0 - (s16) *temp_r2_2) >> 2;
        } else {
            var_r0_6 = (s32) ((u16) *temp_r2_2 >> 2);
        }
        gPlayer.rotation = (u8) var_r0_6;
        temp_r2_6 = temp_r4 + 0x4C;
        temp_r0_14 = (*temp_r2_6 + *temp_r2_2) & 0x3FF;
        *temp_r2_2 = temp_r0_14;
        if ((s32) temp_r0_14 > 0x1FF) {
            var_r4 = gRingCount;
            if ((var_r4 != 0) && ((s32) (s16) *temp_r2_6 < 0)) {
                if ((u32) var_r4 > 5U) {
                    var_r4 = 5;
                }
                InitScatteringRings((s32) gPlayer.qWorldX >> 8, (s32) gPlayer.qWorldY >> 8, (s32) var_r4);
                gRingCount = (u16) (gRingCount - var_r4);
            }
            *temp_r2_6 = 0x10U;
        }
        if ((u32) (u16) (*temp_r2_2 + 0xFFFFFF00) <= 0xFFU) {
            *temp_r2_6 = 0xFFF0U;
            temp_r0_15 = temp_r4->unk3C + 1;
            temp_r4->unk3C = (u16) temp_r0_15;
            if ((u16) temp_r0_15 == 4) {
                *(sp0 + 0x99) = 0x33;
            }
            temp_r4_3 = temp_r4->unk3C;
            if (temp_r4_3 == 5) {
                sub_803A170(temp_r4->unk10 & 0x400);
                *sp10 = (u8) temp_r4_3;
            }
        }
        break;
    }
}

void sub_803A170(s32 arg0) {
    s16 var_r0;

    gPlayer.timerInvulnerability = 0x78;
    if (arg0 != 0) {
        var_r0 = -0x200;
    } else {
        var_r0 = 0x200;
    }
    gPlayer.qSpeedAirX = var_r0;
    gPlayer.qSpeedAirY = -0x5E0;
    gPlayer.rotation = 0;
    gPlayer.moveState = (gPlayer.moveState & 0xFF1FFAC3) | 2;
    gPlayer.charState = 0xF;
    Player_HandleSpriteYOffsetChange(&gPlayer, 0xE);
    gPlayer.spriteOffsetX = 6;
    gPlayer.spriteOffsetY = 0xE;
    gPlayer.sa2__unk61 = 0;
    gPlayer.sa2__unk62 = 0;
}

void sub_803A1D8(void) {
    s32 sp4;
    s16 var_r0;
    s32 temp_r5_2;
    u16 temp_r4;
    u16 temp_r5;
    u16 temp_sb;

    temp_r4 = gCurTask->data;
    temp_sb = temp_r4;
    temp_r5 = TaskCreate(sub_803A2F8, 0x64U, 0x2101U, 0U, TaskDestructor_803A600)->data;
    *(temp_r5 + 0x50) = (u16) *(temp_r4 + 0x50);
    *(temp_r5 + 0x52) = (u16) *(temp_r4 + 0x52);
    *(temp_r5 + 0x4A) = (u16) *(temp_r4 + 0x4E);
    *(temp_r5 + 0x60) = (u8) *(temp_r4 + 0x60);
    sp4 = 0;
    temp_r5->unk4 = VramMalloc(4U);
    temp_r5->unk1A = 0x600;
    temp_r5->unk8 = 0;
    temp_r5->unkA = 0x2B2;
    *(temp_r5 + 0x20) = 0;
    temp_r5->unk14 = 0;
    temp_r5->unk1C = 0;
    *(temp_r5 + 0x21) = 0xFF;
    *(temp_r5 + 0x22) = 0x10;
    *(temp_r5 + 0x25) = 0;
    temp_r5->unk28 = -1;
    temp_r5->unk10 = (s32) ((temp_sb->unk10 & 0x400) | 0x2030);
    temp_r5_2 = temp_r5 + 0x30;
    temp_r5_2->unk0 = 0;
    if (temp_r5->unk10 & 0x400) {
        var_r0 = 0xFF00;
    } else {
        var_r0 = 0x100;
    }
    temp_r5_2->unk2 = var_r0;
    temp_r5_2->unk4 = 0x100;
}

void sub_803A2F8(void) {
    s32 sp0;
    s16 temp_r1_2;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r2_2;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r4_3;
    s32 temp_r5;
    u16 temp_r0;
    u16 temp_r2;
    u16 temp_r3;
    u16 var_r4;
    u16 var_r6;

    temp_r2 = gCurTask->data;
    temp_r0 = gCurTask->parent;
    temp_r3 = temp_r0->unk6;
    sp0 = (s32) temp_r0->unk0->unk6;
    temp_r4 = temp_r2 + 0x30;
    temp_r1 = temp_r2 + 0x50;
    *temp_r1 = (u16) *(temp_r3 + 0x50);
    temp_r4_2 = temp_r2 + 0x52;
    *temp_r4_2 = (u16) *(temp_r3 + 0x52);
    var_r6 = *(temp_r3 + 0x4E);
    var_r4 = var_r6;
    if (temp_r2->unk10 & 0x400) {
        temp_r0_2 = 0 - (s16) var_r6;
        var_r4 = (temp_r0_2 + 0xFFFFFE00) & 0x3FF;
        var_r6 = 0x3FF & temp_r0_2;
    }
    temp_r2_2 = temp_r3->unk40 + (((*(temp_r2 + 0x60) * 0x10) + 8) << 8);
    temp_r2->unk40 = temp_r2_2;
    temp_r1_2 = (s16) var_r4;
    temp_r5 = ((s32) (temp_r2_2 * ((s16) gSineTable[temp_r1_2 + 0x100] >> 6)) >> 0x10) + (s16) *temp_r1;
    temp_r4_3 = ((s32) (temp_r2_2 * ((s16) gSineTable[temp_r1_2] >> 6)) >> 0x10) + (s16) *temp_r4_2;
    temp_r4->unk6 = (s16) (temp_r5 - (u16) gCamera.x);
    temp_r4->unk8 = (s16) (temp_r4_3 - (u16) gCamera.y);
    temp_r4->unk0 = var_r6;
    UpdateSpriteAnimation((Sprite *) temp_r2);
    TransformSprite((Sprite *) temp_r2, (SpriteTransform *) temp_r4);
    DisplaySprite((Sprite *) temp_r2);
    if (((s32) temp_r2->unk40 > 0x800) || (*(temp_r3 + 0x61) == 6)) {
        TaskDestroy(gCurTask);
    }
    if ((s32) (s8) *(sp0 + 0x94) > 7) {
        *(temp_r2 + 0x48) = 0;
        temp_r2->unk54 = (s32) (temp_r5 << 8);
        temp_r2->unk58 = (s32) (temp_r4_3 << 8);
        gCurTask->main = sub_803A46C;
        temp_r2->unk3C = (s16) (0x50 - (*(temp_r2 + 0x60) * 4));
    }
}

void sub_803A46C(void) {
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r1;
    s32 temp_r5;
    s32 temp_r6;
    s32 temp_r7;
    u16 temp_r0;
    u16 temp_r1_2;

    temp_r0 = gCurTask->data;
    temp_r1 = temp_r0 + 0x30;
    temp_r5 = temp_r0 + 0x48;
    *temp_r5 = (u16) (*temp_r5 + 0x20);
    temp_r0_2 = temp_r0->unk58 + (s16) *temp_r5;
    temp_r0->unk58 = temp_r0_2;
    temp_r7 = (s32) (temp_r0_2 << 8) >> 0x10;
    temp_r6 = (s32) (temp_r0->unk54 << 8) >> 0x10;
    temp_r0_3 = sa2__sub_801F100(temp_r7 + 8, temp_r6, 1, 8, sa2__sub_801EC3C);
    if (temp_r0_3 < 0) {
        temp_r0->unk58 = (s32) (temp_r0->unk58 + (temp_r0_3 << 8));
        temp_r1_2 = *temp_r5;
        *temp_r5 = (u16) (((s32) (temp_r1_2 << 0x10) >> 0x12) - temp_r1_2);
    }
    temp_r1->unk6 = (s16) (temp_r6 - (u16) gCamera.x);
    temp_r1->unk8 = (s16) (temp_r7 - (u16) gCamera.y);
    UpdateSpriteAnimation((Sprite *) temp_r0);
    TransformSprite((Sprite *) temp_r0, (SpriteTransform *) temp_r1);
    DisplaySprite((Sprite *) temp_r0);
    temp_r0_4 = temp_r0->unk3C - 1;
    temp_r0->unk3C = (u16) temp_r0_4;
    if ((temp_r0_4 << 0x10) == 0) {
        sub_8017540(temp_r6 << 8, temp_r7 << 8);
        TaskDestroy(gCurTask);
    }
}

void TaskDestructor_EggX(struct Task *arg0) {
    u16 temp_r4;

    temp_r4 = arg0->data;
    VramFree(temp_r4->unk10);
    VramFree(temp_r4->unk48);
}

void sub_803A54C(void) {
    u16 temp_r0;
    u16 var_r0;

    var_r0 = LOADED_SAVE->unk8[0];
    if ((u32) var_r0 <= 0xDU) {
        var_r0 = 0xE;
    }
    LOADED_SAVE->unk8[0] = var_r0;
    temp_r0 = TaskCreate(sub_8038554, 0x10U, 0x1FFFU, 0U, NULL)->data;
    temp_r0->unk6 = 0x1A4;
    temp_r0->unk9 = 0;
    temp_r0->unk8 = 0;
}

void sub_803A594(void) {
    u16 temp_r0;

    temp_r0 = TaskCreate(sub_803891C, 0x10U, 0x1FFFU, 0U, NULL)->data;
    temp_r0->unk0 = 0x20;
    temp_r0->unk2 = 0;
    temp_r0->unk4 = 0;
    temp_r0->unk6 = 0x78;
    temp_r0->unk8 = 0;
}

void sub_803A5D0(struct Task *arg0) {
    u16 temp_r4;

    temp_r4 = arg0->data;
    VramFree(temp_r4->unk4);
    VramFree(temp_r4->unk34);
}

void sub_803A5EC(struct Task *arg0) {
    VramFree(arg0->data->unk4);
}

void TaskDestructor_803A600(struct Task *arg0) {
    VramFree(arg0->data->unk4);
}

void sub_803A614(void) {
    s16 sp0;

    sp0 = 0x7FFF;
    (void *)0x040000D4->unk0 = &sp0;
    (void *)0x040000D4->unk4 = &gObjPalette[0xC0];
    (void *)0x040000D4->unk8 = 0x81000010;
    gFlags |= 2;
}

void sub_803A650(s16 arg0, s16 arg1) {
    enum EHit temp_r7;
    enum EHit var_r0;
    s16 temp_r4;
    s16 temp_r5;
    s32 temp_r3_2;
    u16 temp_r2;
    u16 temp_r3;

    temp_r3 = gCurTask->data;
    temp_r5 = arg0;
    temp_r4 = arg1;
    temp_r7 = sub_800BF10((Sprite *) temp_r3, temp_r5, temp_r4, &gPlayer);
    if ((s8) (u8) gNumSingleplayerCharacters == 2) {
        var_r0 = sub_800BF10((Sprite *) temp_r3, temp_r5, temp_r4, &gPartner);
    } else {
        var_r0 = HIT_NONE;
    }
    if ((temp_r7 == HIT_PLAYER) || (var_r0 == HIT_PLAYER)) {
        temp_r2 = gCurTask->parent->unk6;
        temp_r3_2 = temp_r2 + 0x44;
        *(temp_r2 + 0x64) = 3;
        temp_r3_2->unk10 = (s32) (temp_r3_2->unk10 & 0xFFFFBFFF);
        *(temp_r2 + 0x65) = 0xFF;
    }
}

void sub_803A6EC(s16 arg0, s16 arg1, u8 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 sp4;
    s32 sp8;
    s16 temp_r5_2;
    s16 temp_r6;
    s32 temp_r2;
    s32 temp_r3;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r5;
    s32 var_r0;
    u16 temp_r2_2;

    sp4 = 0;
    temp_r4 = (0xFFFFFF00 & sp8) | arg2;
    sp8 = temp_r4;
    temp_r5 = (0xFF00FFFF & temp_r4) | ((u32) (arg3 << 0x18) >> 8);
    sp8 = temp_r5;
    temp_r2 = (0xFFFF00FF & temp_r5) | (u16) (arg4 << 8);
    sp8 = temp_r2;
    sp8 = (arg5 << 0x18) | (temp_r2 & 0xFFFFFF);
    temp_r6 = arg0;
    temp_r5_2 = arg1;
    temp_r4_2 = sub_800C1E8(sp4, sp8, temp_r6, (s32) temp_r5_2, &gPlayer);
    if ((s8) (u8) gNumSingleplayerCharacters == 2) {
        var_r0 = sub_800C1E8(sp4, sp8, temp_r6, (s32) temp_r5_2, &gPartner);
    } else {
        var_r0 = 0;
    }
    if ((temp_r4_2 | var_r0) == 2) {
        temp_r2_2 = gCurTask->data;
        temp_r3 = temp_r2_2 + 0x44;
        *(temp_r2_2 + 0x64) = 3;
        temp_r3->unk10 = (s32) (temp_r3->unk10 & 0xFFFFBFFF);
        *(temp_r2_2 + 0x65) = 0xFF;
    }
}

void sub_803A7D4(s16 arg0, s16 arg1) {
    enum EHit temp_r7;
    enum EHit var_r0;
    s16 temp_r4;
    s16 temp_r5;
    s32 temp_r3_2;
    u16 temp_r2;
    u16 temp_r3;

    temp_r3 = gCurTask->data;
    temp_r5 = arg0;
    temp_r4 = arg1;
    temp_r7 = sub_800BF10((Sprite *) temp_r3, temp_r5, temp_r4, &gPlayer);
    if ((s8) (u8) gNumSingleplayerCharacters == 2) {
        var_r0 = sub_800BF10((Sprite *) temp_r3, temp_r5, temp_r4, &gPartner);
    } else {
        var_r0 = HIT_NONE;
    }
    if ((temp_r7 == HIT_PLAYER) || (var_r0 == HIT_PLAYER)) {
        temp_r2 = gCurTask->parent->unk6;
        temp_r3_2 = temp_r2 + 0x44;
        *(temp_r2 + 0x64) = 3;
        temp_r3_2->unk10 = (s32) (temp_r3_2->unk10 & 0xFFFFBFFF);
        *(temp_r2 + 0x65) = 0xFF;
    }
}

void sub_803A870(void) {
    s32 temp_r3;
    u16 temp_r2;

    temp_r2 = gCurTask->data;
    temp_r3 = temp_r2 + 0x64;
    if ((*temp_r3 != 0) && ((temp_r2 + 0x44)->unk10 & 0x4000)) {
        *temp_r3 = 0U;
        *(temp_r2 + 0x65) = 0xFF;
    }
}

void sub_803A8AC(void) {
    s32 temp_r0_2;
    s32 temp_r2;
    u16 temp_r0;

    temp_r0 = gCurTask->data;
    temp_r2 = temp_r0 + 0xC;
    temp_r0_2 = temp_r0 + 0x44;
    temp_r0_2->unk16 = (u16) temp_r2->unk16;
    temp_r0_2->unk18 = (u16) temp_r2->unk18;
}

void sub_803A8CC(s16 arg0, s16 arg1) {
    s32 temp_r2;

    temp_r2 = gCurTask->data + 0xC;
    temp_r2->unk16 = (s16) (arg0 - (u16) gCamera.x);
    temp_r2->unk18 = (s16) (arg1 - (u16) gCamera.y);
}

void sub_803A900(u8 arg0) {
    s32 var_r1;
    s8 var_r0;
    u16 temp_r1;
    u8 temp_r2;

    temp_r2 = arg0;
    temp_r1 = gCurTask->data;
    switch (temp_r2) {                              /* irregular */
    case 1:
        var_r1 = temp_r1 + 0x78;
        var_r0 = 8;
block_9:
        *var_r1 = var_r0;
        return;
    case 2:
        var_r1 = temp_r1 + 0x78;
        var_r0 = 9;
        goto block_9;
    case 3:
        var_r1 = temp_r1 + 0x78;
        var_r0 = 0xA;
        goto block_9;
    }
}
#endif
