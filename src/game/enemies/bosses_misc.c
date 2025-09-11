#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/enemies/bosses_shared.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/stage/player.h"
#include "game/stage/screen_shake.h"
#include "game/stage/terrain_collision.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/songs.h"
#include "constants/vram_hardcoded.h"
#include "constants/zones.h"

typedef struct BossCapsule {
    /* 0x00 */ Sprite s;
    /* 0x30 */ Sprite s2;
    /* 0x60 */ SpriteTransform transform;
    /* 0x6C */ CamCoord worldX;
    /* 0x6E */ CamCoord worldY;
    /* 0x70 */ s16 offsetX;
    /* 0x72 */ s16 offsetY;
    /* 0x74 */ s16 unk74;
    /* 0x74 */ u16 unk76;
} BossCapsule;

typedef struct Strc_sub_801749C {
    /* 0x00 */ s16 unk0;
    /* 0x02 */ s16 unk2;
    /* 0x04 */ s16 unk4;
    /* 0x06 */ u16 unk6;
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u16 unkA;
} Strc_sub_801749C;

typedef struct Strc_sub_8016D80 {
    /* 0x00 */ Sprite s;
    /* 0x30 */ s32 unk30;
    /* 0x30 */ s32 unk34;
    /* 0x38 */ s16 unk38;
    /* 0x38 */ s16 unk3A;
    /* 0x38 */ s16 unk3C;
    /* 0x38 */ s16 unk3E;
    /* 0x38 */ s16 unk40;
} Strc_sub_8016D80;

typedef struct Strc_sub_8016F44 {
    /* 0x00 */ Sprite s;
    /* 0x30 */ SpriteTransform transform;
    /* 0x3C */ s32 unk3C;
    /* 0x40 */ s32 unk40;
    /* 0x40 */ u16 unk44;
    /* 0x40 */ s16 unk46;
    /* 0x48 */ u8 filler48[0x6];
    /* 0x40 */ s16 unk4E;
    /* 0x40 */ s16 unk50;
    /* 0x40 */ s16 unk52;
} Strc_sub_8016F44; /* 0x54 */

void Task_BossCapsuleInit(void);
void Task_801623C(void);
void Task_8016650(void);
void Task_BossCapsuleUpdate(void);
void sub_801766C(Player *p);
void sub_801749C(CamCoord worldX, CamCoord worldY);
void Task_801685C(void);
void Task_8016A14(void); // :Strc_sub_80168F0
void Task_8016B6C(void); // :Strc_sub_801749C
struct Task *sub_8016D80(CamCoord worldX, CamCoord worldY, AnimId anim, u8 variant); // -> Strc_sub_8016D80
struct Task *sub_8016F44(CamCoord worldX, CamCoord worldY, AnimId anim, u8 variant); // -> Strc_sub_8016F44

void TaskDestructor_BossCapsule(struct Task *t);
void TaskDestructor_sub_80168F0(struct Task *t);

extern u16 gUnknown_080BB43C[5][3];

void CreateBossCapsule(CamCoord worldX, CamCoord worldY)
{
    struct Task *t;
    BossCapsule *capsule;
    Sprite *s;
    SpriteTransform *tf;

    t = TaskCreate(Task_BossCapsuleInit, sizeof(BossCapsule), 0x2000U, 0U, TaskDestructor_BossCapsule);
    capsule = TASK_DATA(t);

    capsule->worldX = worldX;
    capsule->worldY = worldY;
    capsule->offsetX = 0;
    capsule->offsetY = 0;
    capsule->unk74 = 0x800;

    s = &capsule->s;
    s->x = worldX;
    s->y = worldY;
    s->graphics.dest = ALLOC_TILES(SA1_ANIM_BOSS_CAPSULE_LARGE);
    s->oamFlags = SPRITE_OAM_ORDER(19);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_BOSS_CAPSULE_SMALL;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2030;

    s = &capsule->s2;
    s->x = worldX;
    s->y = worldY;
    s->graphics.dest = ALLOC_TILES(SA1_ANIM_BOSS_CAPSULE_SWITCH);
    s->oamFlags = SPRITE_OAM_ORDER(20);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_BOSS_CAPSULE_SWITCH;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;

    tf = &capsule->transform;
    tf->rotation = 0;
    tf->qScaleX = Q(0.25);
    tf->qScaleY = Q(0.25);
}

void Task_BossCapsuleInit()
{
    BossCapsule *matchCapsule = TASK_DATA(gCurTask);
    BossCapsule *capsule = matchCapsule;
    SpriteTransform *tf = &capsule->transform;
    Sprite *s = &capsule->s;

    tf->x = capsule->worldX - gCamera.x;
    tf->y = (capsule->worldY - gCamera.y) - capsule->offsetY;
    if (tf->qScaleX < Q(1)) {
        tf->qScaleY = tf->qScaleX = tf->qScaleX + 8;
    }
    tf->rotation += 0x10;

    UpdateSpriteAnimation(s);
    TransformSprite(s, tf);
    DisplaySprite(s);

    capsule->unk74 -= 0x10;
    capsule->offsetY += I(capsule->unk74);

    if (capsule->offsetY > 0xE0) {
        gCurTask->main = Task_801623C;
        capsule->unk76 = 0;
        s->graphics.anim = 0x23F;
        s->variant = 0;
        s->frameFlags &= ~0x20;
    }
}

// TODO: Register fake-match...
void Task_801623C()
{
    Player *p;
    Sprite *s;
    Sprite *s2;
    s32 res;
    s32 sideX;
    s32 i;

    BossCapsule *capsule = TASK_DATA(gCurTask);

    s = &capsule->s;
    s2 = &capsule->s2;
    s->x = (DISPLAY_WIDTH / 2);
    s->y = (capsule->worldY - gCamera.y) - capsule->offsetY;
    s2->x = s->x;
    s2->y = s->y;
    if (s->y >= 0) {
        UpdateSpriteAnimation(s);
        UpdateSpriteAnimation(s2);
        DisplaySprite(s);
        DisplaySprite(s2);
    }

    capsule->unk74 -= 0x10;
    capsule->offsetY += I(capsule->unk74);
    if (s->y < 96) {
        return;
    }

    res = sa2__sub_801F100(gCamera.y + s->y + 8, gCamera.x + s->x, 1, 8, sa2__sub_801EC3C);
    if (res > 0) {
        return;
    }
    capsule->worldY = (capsule->worldY - capsule->offsetY) + res;
    gCurTask->main = Task_BossCapsuleUpdate;
    capsule->worldX = gCamera.x + (DISPLAY_WIDTH / 2);
    CreateScreenShake(0x800U, 0x40U, 0x100U, -1U, 0x80U);
    m4aSongNumStart(SE_136);

    i = 0;
    do {
#ifndef NON_MATCHING
        register s32 r0 asm("r0");
#endif
        p = &PLAYER(i);

        if ((Coll_Player_Entity_Intersection(s, capsule->worldX, capsule->worldY, p) & 0x80000)
            || (Coll_Player_Entity_Intersection(s2, capsule->worldX, capsule->worldY, p) & 0x80000)) {
            p->timerInvulnerability = ZONE_TIME_TO_INT(0, 2);
            if (I(p->qWorldX) < gCamera.x + (DISPLAY_WIDTH / 2)) {
                p->qSpeedAirX = -Q(2);
                sideX = (capsule->worldX + s->hitboxes[0].b.left) - p->spriteOffsetX;
                if (I(p->qWorldX) > sideX) {
                    p->qWorldX = Q(sideX);
                }
            } else {
                p->qSpeedAirX = +Q(2);
                sideX = (capsule->worldX + s->hitboxes[0].b.right) + p->spriteOffsetX;
                if (I(p->qWorldX) < sideX) {
                    p->qWorldX = Q(sideX);
                }
            }

            if (MOVESTATE_IN_WATER & p->moveState) {
                p->qSpeedAirY = -0x2A0;
            } else {
                p->qSpeedAirY = -0x4E0;
            }

            p->moveState &= ~MOVESTATE_STOOD_ON_OBJ;
            p->moveState &= ~MOVESTATE_20;
            p->moveState &= ~MOVESTATE_4;
            p->moveState &= ~MOVESTATE_FLIP_WITH_MOVE_DIR;
            p->moveState |= MOVESTATE_IN_AIR;
            p->moveState &= ~MOVESTATE_SPINDASH;
            p->moveState &= ~MOVESTATE_100;
            p->charState = CHARSTATE_15;

            PLAYERFN_CHANGE_SHIFT_OFFSETS(p, 6, 14)
            p->SA2_LABEL(unk61) = 0;
            p->SA2_LABEL(unk62) = 0;
        }

#ifndef NON_MATCHING
        r0 = 1;
        i += r0;
        asm("" ::"r"(r0));
#else
        i++;
#endif
    } while (i < gNumSingleplayerCharacters);
}

void Task_BossCapsuleUpdate(void)
{
    s32 var_r4;
    s32 var_sl;

    BossCapsule *capsule;
    s32 sp4;
    Sprite *s;
    Sprite *s2;

    sp4 = 0;
    capsule = TASK_DATA(gCurTask);
    s = &capsule->s;
    s2;

    s2 = &capsule->s2;
    s->x = capsule->worldX - gCamera.x;
    s->y = capsule->worldY - gCamera.y;
    s2->x = s->x;
    s2->y = s->y;
    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);
    DisplaySprite(s);
    DisplaySprite(s2);

    {
        s32 i = 0;
        do {
            Player *p = &PLAYER(i);

            if (p->charState != CHARSTATE_15) {
                CamCoord prevPlayerY = I(gPlayer.qWorldY);
                sub_80096B0(s, capsule->worldX, capsule->worldY, p);

                if (!(gPlayer.moveState & 0x80) && ((prevPlayerY < I(gPlayer.qWorldY)) || (capsule->worldY < I(gPlayer.qWorldY)))) {
                    p->qWorldX = Q((capsule->worldX + s->hitboxes[0].b.left) - p->spriteOffsetX);
                    p->qWorldY = Q(capsule->worldY - p->spriteOffsetY);
                }

                if ((8 & sub_80096B0(s2, capsule->worldX, capsule->worldY, p))
                    || (Coll_AmyHammer_Spring(s2, capsule->worldX, capsule->worldY, p) != 0)) {
                    sp4 = 1;
                }
            }
        } while (++i < gNumSingleplayerCharacters);
    }

    if (sp4) {
        gCurTask->main = Task_8016650;
        gStageFlags |= 3;
        s->graphics.anim = SA1_ANIM_BOSS_CAPSULE_LARGE;
        s->variant = 1;
        m4aSongNumStart(0x89U);

        {
            s32 i = 0;

            do {
                Player *p = &PLAYER(i);
                p->qSpeedGround = 0;
                p->moveState |= 0x200000;
                p->heldInput = 0;
                sub_801766C(p);
            } while (++i < gNumSingleplayerCharacters);
        }
    }
}

void Task_8016650(void)
{
    s32 var_r4;
    s32 var_sl;

    BossCapsule *capsule;
    Sprite *s;
    Sprite *s2;
    AnimCmdResult acmdRes;

    capsule = TASK_DATA(gCurTask);
    s = &capsule->s;
    s2 = &capsule->s2;
    s->x = capsule->worldX - gCamera.x;
    s->y = capsule->worldY - gCamera.y;
    s2->x = s->x;
    s2->y = s->y + 4;
    acmdRes = UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);

    {
        s32 i = 0;
        do {
            Player *p = &PLAYER(i);

            if (p->charState != CHARSTATE_15) {
                CamCoord prevPlayerY = I(gPlayer.qWorldY);
                sub_80096B0(s, capsule->worldX, capsule->worldY, p);
                sub_80096B0(s2, capsule->worldX, capsule->worldY + 4, p);
            }
        } while (++i < gNumSingleplayerCharacters);
    }

    DisplaySprite(s);
    DisplaySprite(s2);

    if (acmdRes == ACMD_RESULT__ENDED) {
        Strc_sub_80168F0 *strcA;
        Strc_sub_80168F0 *strcB;
        s32 i = 0;

        do {
            Player *p = &PLAYER(i);

            if ((p->moveState & MOVESTATE_STOOD_ON_OBJ) && (p->stoodObj == s2)) {
                p->moveState &= ~MOVESTATE_STOOD_ON_OBJ;
                p->moveState |= MOVESTATE_IN_AIR;
            }
        } while (++i < gNumSingleplayerCharacters);

        gCurTask->main = Task_801685C;
        s->graphics.anim = SA1_ANIM_BOSS_CAPSULE_LARGE;
        s->variant = 2;

        strcA = TASK_DATA(sub_80168F0(capsule->worldX, capsule->worldY, 0x40, 0x241, 0U));
        strcA->qUnk44 = -Q(1);
        strcA->qUnk46 = -Q(2);
        strcA->unk48 = 0;
        strcA->unk42 = 4;
        strcA->unk40 = 0x3C;

        strcB = TASK_DATA(sub_80168F0(capsule->worldX, capsule->worldY, 0x40, 0x241, 0U));
        strcB->qUnk44 = +Q(1);
        strcB->qUnk46 = -Q(2);
        strcB->unk48 = 0;
        strcB->unk42 = 4;
        strcB->transform.qScaleX = -Q(1);
        strcB->unk40 = 0x3C;

        sub_801749C(capsule->worldX, capsule->worldY);
    }
}

void Task_801685C(void)
{
    BossCapsule *capsule = TASK_DATA(gCurTask);
    Sprite *s = &capsule->s;

    s->x = capsule->worldX - gCamera.x;
    s->y = capsule->worldY - gCamera.y;
    UpdateSpriteAnimation(s);

    {
        s32 i = 0;

        do {
            Player *p = &PLAYER(i);

            if (p->charState != CHARSTATE_15) {
                sub_80096B0(s, capsule->worldX, capsule->worldY, p);
            }
        } while (++i < gNumSingleplayerCharacters);
    }

    DisplaySprite(s);
}

struct Task *sub_80168F0(CamCoord worldX, CamCoord worldY, u16 numTiles, AnimId anim, u8 variant)
{
    SpriteTransform *spC;
    s32 sp10;
    SpriteTransform *temp_r2;
    struct Task *t;
    Strc_sub_80168F0 *strc;

    t = TaskCreate(Task_8016A14, 0x4CU, 0x2000U, 0U, TaskDestructor_sub_80168F0);

    strc = TASK_DATA(t);
    temp_r2 = &strc->transform;
    strc->unk40 = 0x3C;
    strc->unk3C = worldX;
    strc->unk3E = worldY;
    strc->qUnk44 = +Q(1);
    strc->qUnk46 = -Q(2);
    strc->unk48 = 8;
    spC = temp_r2;
    sp10 = 0;
    strc->s.graphics.dest = VramMalloc(numTiles);
    strc->s.oamFlags = SPRITE_OAM_ORDER(20);
    strc->s.graphics.size = 0;
    strc->s.graphics.anim = anim;
    strc->s.variant = variant;
    strc->s.animCursor = 0;
    strc->s.qAnimDelay = 0;
    strc->s.prevVariant = -1;
    strc->s.animSpeed = SPRITE_ANIM_SPEED(1.0);
    strc->s.palId = 0;
    strc->s.frameFlags = 0x70;
    temp_r2->rotation = 0;
    temp_r2->qScaleX = Q(1);
    temp_r2->qScaleY = Q(1);
    temp_r2->x = worldX;
    temp_r2->y = worldY;
    UpdateSpriteAnimation(&strc->s);
    return t;
}

void Task_8016A14()
{
    Strc_sub_80168F0 *strc = TASK_DATA(gCurTask);
    SpriteTransform *tf;

    tf = &strc->transform;
    if (strc->unk40-- == 0) {
        TaskDestroy(gCurTask);
        return;
    }

    strc->qUnk46 += Q(40. / 256.);

    strc->unk3C += I(strc->qUnk44);
    strc->unk3E += I(strc->qUnk46);
    tf->x = strc->unk3C - gCamera.x;
    tf->y = strc->unk3E - gCamera.y;

    if (strc->qUnk44 > 0) {
        tf->rotation = (tf->rotation + strc->unk42) & 0x3FF;
        if (tf->qScaleX > -Q(2)) {
            tf->qScaleX -= strc->unk48;
        }

        if (tf->qScaleX >= 0) {
            tf->qScaleY = tf->qScaleX;
        } else {
            tf->qScaleY = -tf->qScaleX;
        }
    } else {
        tf->rotation = (tf->rotation - strc->unk42) & 0x3FF;

        if (tf->qScaleX < +Q(2)) {
            tf->qScaleX += strc->unk48;
        }

        if (tf->qScaleX >= 0) {
            tf->qScaleY = tf->qScaleX;
        } else {
            tf->qScaleY = -tf->qScaleX;
        }
    }

    if (0x20 & strc->s.frameFlags) {
        strc->s.frameFlags = strc->s.frameFlags & ~0x1F;
        strc->s.frameFlags |= sa2__gUnknown_030054B8++;
        TransformSprite(&strc->s, tf);
    } else {
        strc->s.x = tf->x;
        strc->s.y = tf->y;
    }
    DisplaySprite(&strc->s);
}

void Task_8016B6C(void)
{
    s32 temp_r0_2;
    s32 temp_r0_4;
    s32 var_r4;
    u16 temp_r1;

    Strc_sub_801749C *strc;
    Strc_sub_8016D80 *strc44;
    Strc_sub_8016F44 *strc54;

    strc = TASK_DATA(gCurTask);

    if ((strc->unk4++ & 0x3) == 0) {
        if (strc->unk4 != 5) {
            strc44 = TASK_DATA(sub_8016D80(strc->unk0, strc->unk2 - 32, gUnknown_080BB43C[LEVEL_TO_ZONE(gCurrentLevel)][0], 0));
            var_r4 = PseudoRandom32();
            strc44->unk3E += var_r4 & 0xFF;
            if (1 & strc->unk8) {
                strc44->unk3E = -strc44->unk3E;
            }
            temp_r0_2 = ((u32)(0x1F00 & var_r4) >> 4) + strc44->unk3C;
            strc44->unk3C = temp_r0_2;
            strc44->unk40 = temp_r0_2;
        }

        strc44 = TASK_DATA(sub_8016D80(strc->unk0, strc->unk2 - 32, gUnknown_080BB43C[LEVEL_TO_ZONE(gCurrentLevel)][1], 0));
        var_r4 = PseudoRandom32();
        strc44->unk3E += var_r4 & 0xFF;
        if (!(1 & strc->unk8)) {
            strc44->unk3E = -strc44->unk3E;
        }
        temp_r0_4 = ((u32)(0x1F00 & var_r4) >> 4) + strc44->unk3C;
        strc44->unk3C = temp_r0_4;
        strc44->unk40 = temp_r0_4;
        if (strc->unk4 != 5) {
            strc54 = TASK_DATA(sub_8016F44(strc->unk0, strc->unk2 - 32, 0x1C0, 0));
            var_r4 = PseudoRandom32();
            strc54->unk52 += (var_r4 & 7);
            if (1 & strc->unk8) {
                strc54->unk52 = -strc54->unk52;
                strc54->unk50 = 0x200;
            }
            strc54->unk4E = ((s32)gPlayer.qWorldY >> 8) - 0x20;
        }
        strc54 = TASK_DATA(sub_8016F44(strc->unk0, strc->unk2 - 32, 0x1BA, 0));
        var_r4 >>= 8;
        strc54->unk52 += ((var_r4)&7);
        if (1 & strc->unk8) {
            strc54->unk52 = -strc54->unk52;
            strc54->unk50 = 0x200;
        }
        strc54->unk4E = I(gPlayer.qWorldY) - 32;
        strc->unk8++;
    }
    if (strc->unk4 > 12) {
        strc->unk4 = 0;
        strc->unk6 = 0;
        TaskDestroy(gCurTask);
    }
}

void sub_8016E54(void);
void TaskDestructor_sub_8017658(struct Task *t);

struct Task *sub_8016D80(s16 worldX, s16 worldY, u16 anim, u8 variant)
{
    struct Task *t;
    Strc_sub_8016D80 *strc;

    t = TaskCreate(sub_8016E54, sizeof(Strc_sub_8016D80), 0x2000U, 0U, TaskDestructor_sub_8017658);

    strc = TASK_DATA(t);
    strc->unk38 = (u16)worldX;
    strc->unk3A = (u16)worldY;
    strc->unk3C = 0xFC00;
    strc->unk40 = 0xFC00;
    strc->unk3E = 0x100;
    strc->unk34 = 0;
    strc->unk30 = 0;
    strc->s.graphics.dest = VramMalloc(4U);
    strc->s.oamFlags = 0x3C0;
    strc->s.graphics.size = 0;
    strc->s.graphics.anim = anim;
    strc->s.variant = variant;
    strc->s.animCursor = 0;
    strc->s.qAnimDelay = 0;
    strc->s.prevVariant = 0xFF;
    strc->s.animSpeed = 0x10;
    strc->s.palId = 0;
    strc->s.frameFlags = 0x2000;

    return t;
}

void sub_8016E54()
{
    Strc_sub_8016D80 *strc = TASK_DATA(gCurTask);
    Sprite *s = &strc->s;

    strc->unk3C += 40;
    strc->unk34 += strc->unk3C;
    strc->unk30 += strc->unk3E;

    if ((strc->unk3C > 0) && (sa2__sub_801F100(strc->unk3A + I(strc->unk34), strc->unk38 + I(strc->unk30), 1, 8, sa2__sub_801EC3C) < 0)) {
        strc->unk3C = strc->unk40;

        if ((I(strc->unk30) < -32) && (strc->unk3E < 0)) {
            strc->unk3E = -strc->unk3E;
        } else if ((I(strc->unk30) > 32) && (strc->unk3E > 0)) {
            strc->unk3E = -strc->unk3E;
        }
    }

    if (strc->unk3E < 0) {
        s->frameFlags &= ~0x400;
    } else {
        s->frameFlags |= 0x400;
    }
    s->x = (I(strc->unk30) + strc->unk38) - gCamera.x;
    s->y = (I(strc->unk34) + strc->unk3A) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}
