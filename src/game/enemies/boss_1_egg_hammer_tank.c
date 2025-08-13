#include "global.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/sa1_sa2_shared/player.h"
#include "game/entity.h"
#include "game/nuts_and_bolts_task.h"
#include "game/save.h"
#include "game/stage/player_controls.h"
#include "game/stage/screen_shake.h"
#include "game/stage/terrain_collision.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"

typedef struct EggHammerTank {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ Hitbox reserved;
    /* 0x44 */ Sprite s2;
    /* 0x74 */ struct Task *task74;
    /* 0x78 */ struct Task *tasks[5];
    /* 0x8C */ s32 qUnk8C;
    /* 0x90 */ s32 qUnk90;
    /* 0x94 */ s16 unk94;
    /* 0x96 */ s16 unk96;
    /* 0x98 */ u16 unk98;
    /* 0x9A */ s8 unk9A;
    /* 0x9B */ s8 unk9B;
    /* 0x9C */ u8 unk9C;
    /* 0x9C */ u8 unk9D;
    /* 0x9C */ s16 qUnk9E;
} EggHammerTank; /* 0xA0 */

typedef struct {
    /* 0x00 */ Sprite s;
    /* 0x30 */ SpriteTransform transform;
    /* 0x3C */ s16 unk3C;
    /* 0x3E */ s16 unk3E;
    /* 0x48 */ s16 unk40;
    /* 0x48 */ s16 unk42;
    /* 0x44 */ s16 qUnk44;
    /* 0x46 */ s16 qUnk46;
    /* 0x48 */ s16 unk48;
} Strc_sub_80168F0; /* 0x4C */

void CreateBossCapsule(s16, s16);
// returns 0, 1 or 2
s32 sub_800BA5C(Sprite *s, CamCoord worldX, CamCoord worldY, Player *p);
void sub_8015C5C(CamCoord worldX, CamCoord worldY);
struct Task *sub_80168F0(CamCoord worldX, CamCoord worldY, s16 param2, s16 param3, u8 param4);
struct Task *sub_80174DC(s16, s16);
struct Task *sub_8017540(s32, s32);
void Task_802611C();
void Task_EHTArm();
void Task_EHTHammer();
void Task_EggHammerTankMain();
void Task_EggHammerTank_Intro();
void TaskDestructor_EggHammerTank(struct Task *);
void Task_8025CC4();
void Task_8025D80();
void Task_8025E6C();
void Task_80264C8();
void Task_8026C44();
void Task_8026ED0(void);
void Task_80271E4();
void Task_80272D0();
void Task_8027600();
void sub_8027714();

void CreateEntity_EggHammerTank_Intro(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t;
    EggHammerTank *tank;
    Sprite *s;
    Sprite *s2;
    s16 tempY;
    SpriteBase *base;

    if (IS_MULTI_PLAYER) {
        SET_MAP_ENTITY_INITIALIZED(me);
        return;
    }

    t = TaskCreate(Task_EggHammerTank_Intro, sizeof(EggHammerTank), 0x2000U, 0U, TaskDestructor_EggHammerTank);
    tank = TASK_DATA(t);
    s = &tank->s;
    base = &tank->base;
    s2 = &tank->s;
    base->regionX = regionX;
    base->regionY = regionY;

    base->me = me;
    base->meX = (u8)me->x;
    base->id = id;
    tank->unk94 = 0;
    tank->unk98 = 0;
    tank->unk9A = 0;
    tank->unk96 = -4;
    tank->unk9B = 0;
    tank->qUnk8C = 0;
    tank->unk9C = 0;
    s->x = TO_WORLD_POS(me->x, regionX);
    s->graphics.dest = ALLOC_TILES(SA1_ANIM_BOSS_1_INTRO);
    s->oamFlags = 0x4C0;
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_BOSS_1_INTRO;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->hitboxes[1].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    s2 = &tank->s2;
    s2->x = TO_WORLD_POS(me->x, regionX);
    s2->y = TO_WORLD_POS(me->y, regionY);
    SET_MAP_ENTITY_INITIALIZED(me);

    s2->graphics.dest = ALLOC_TILES(SA1_ANIM_EGGMAN);
    s2->oamFlags = 0x480;
    s2->graphics.size = 0;
    s2->graphics.anim = SA1_ANIM_EGGMAN;
    s2->variant = 0;
    s2->animCursor = 0;
    s2->qAnimDelay = Q(0);
    s2->prevVariant = -1;
    s2->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s2->palId = 0;
    s2->hitboxes[0].index = -1;
    s2->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    gCamera.minX = s2->x - DISPLAY_WIDTH;

    if (gCamera.minX < 0) {
        gCamera.minX = 0;
    }

    gCamera.maxX = s2->x + 64;
    tempY = s2->y + 112;
    sub_80174DC((s16)(s2->y - 48), tempY);

    if (tempY > (gCamera.y + DISPLAY_HEIGHT)) {
        gCamera.maxY = tempY;
    }
}

void Task_EggHammerTank_Intro(void)
{
    EggHammerTank *tank;
    SpriteBase *base;
    MapEntity *me;
    Sprite *s, *s2;
    CamCoord worldX, worldY;

    tank = TASK_DATA(gCurTask);
    base = &tank->base;
    s = &tank->s;
    s2 = &tank->s2;
    me = tank->base.me;

    worldX = TO_WORLD_POS(base->meX, base->regionX);
    worldY = TO_WORLD_POS(me->y, base->regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    s2->x = s->x;
    s2->y = s->y;

    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);
    DisplaySprite(s);
    DisplaySprite(s2);

    if (gCamera.x < (gCamera.maxX - DISPLAY_WIDTH)) {
        gCamera.minX = (u16)gCamera.x;
    } else {
        gCamera.minX = (u16)gCamera.maxX - DISPLAY_WIDTH;
    }

    if (worldX - gCamera.x <= 176) {
        gPlayer.qSpeedGround = 0;
        gPlayer.moveState |= 0x200000;
        gPlayer.heldInput = 0;
        s2->graphics.anim = SA1_ANIM_EGGMAN;
        s2->variant = 2;
        gCurTask->main = Task_8025CC4;
        gMusicManagerState.unk1 = 0x11;
    }
}

void Task_8025CC4(void)
{
    EggHammerTank *tank;
    SpriteBase *base;
    MapEntity *me;
    Sprite *s, *s2;
    CamCoord worldX, worldY;
    AnimCmdResult acmdRes;

    tank = TASK_DATA(gCurTask);
    base = &tank->base;
    s = &tank->s;
    s2 = &tank->s2;
    me = tank->base.me;

    worldX = TO_WORLD_POS(base->meX, base->regionX);
    worldY = TO_WORLD_POS(me->y, base->regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    s2->x = s->x;
    s2->y = s->y;

    UpdateSpriteAnimation(s);
    acmdRes = UpdateSpriteAnimation(s2);
    DisplaySprite(s);
    DisplaySprite(s2);

    if (acmdRes == ACMD_RESULT__ENDED) {
        s->graphics.anim = SA1_ANIM_BOSS_1_INTRO;
        s->variant = 1;
        s2->graphics.anim = SA1_ANIM_EGGMAN;
        s2->variant = 9;
        gCurTask->main = Task_8025D80;
    }
}

void Task_8025D80(void)
{
    EggHammerTank *tank;
    SpriteBase *base;
    MapEntity *me;
    Sprite *s, *s2;
    CamCoord worldX, worldY;
    AnimCmdResult acmdRes;

    tank = TASK_DATA(gCurTask);
    base = &tank->base;
    s = &tank->s;
    s2 = &tank->s2;
    me = tank->base.me;

    worldX = TO_WORLD_POS(base->meX, base->regionX);
    worldY = TO_WORLD_POS(me->y, base->regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    s2->x = s->x;
    s2->y = s->y;

    acmdRes = UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);
    DisplaySprite(s);
    DisplaySprite(s2);

    if (acmdRes == ACMD_RESULT__ENDED) {
        gCurTask->main = Task_8025E6C;
        s->graphics.anim = SA1_ANIM_BOSS_1_INTRO;
        s->variant = 0;
        s->frameFlags |= 0x400;
        s2->graphics.anim = SA1_ANIM_EGGMAN;
        s2->variant = 0;
        s2->frameFlags |= 0x400;
        sub_80174DC((worldY - 0x30), (worldY + 0x70));
    }
}

void Task_8025E6C(void)
{
    EggHammerTank *tank;
    SpriteBase *base;
    MapEntity *me;
    Sprite *s, *s2;
    CamCoord worldX, worldY;
    AnimCmdResult acmdRes;

    tank = TASK_DATA(gCurTask);
    base = &tank->base;
    s = &tank->s;
    s2 = &tank->s2;
    me = tank->base.me;

    tank->qUnk8C += Q(2);

    worldX = TO_WORLD_POS(base->meX, base->regionX) + I(tank->qUnk8C);
    worldY = TO_WORLD_POS(me->y, base->regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    s2->x = s->x;
    s2->y = s->y;

    if (s->x > DISPLAY_WIDTH + 64) {
        gPlayer.moveState &= ~0x200000;
        gPlayer.heldInput |= gPlayerControls.jump | gPlayerControls.attack;
        TaskDestroy(gCurTask);
        gCamera.maxX = (s16)gRefCollision->pxWidth;
        return;
    }

    acmdRes = UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);
    DisplaySprite(s);
    DisplaySprite(s2);
}

void CreateEntity_EggHammerTank(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t;
    EggHammerTank *tank;
    Sprite *s;
    s16 tempY;
    SpriteBase *base;

    if (IS_MULTI_PLAYER) {
        SET_MAP_ENTITY_INITIALIZED(me);
        return;
    }

    t = TaskCreate(Task_EggHammerTankMain, sizeof(EggHammerTank), 0x2000U, 0U, TaskDestructor_EggHammerTank);
    tank = TASK_DATA(t);
    base = &tank->base;
    base->regionX = regionX;
    base->regionY = regionY;

    base->me = me;
    base->meX = (u8)me->x;
    base->id = id;
    tank->unk94 = 0;
    tank->unk98 = 0;
    tank->unk96 = -4;
    tank->unk9B = 0;
    tank->qUnk8C = 0;
    tank->unk9C = 0;

    if (LOADED_SAVE->difficultyLevel != DIFFICULTY_NORMAL) {
        tank->unk9A = 2;
    } else {
        tank->unk9A = 0;
    }

    s = &tank->s;
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);
    s->graphics.dest = ALLOC_TILES(SA1_ANIM_BOSS_1_BODY);
    s->oamFlags = 0x4C0;
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_BOSS_1_BODY;
    s->variant = 1;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->hitboxes[1].index = HITBOX_STATE_INACTIVE;
    s->y = TO_WORLD_POS(me->y, regionY);
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    s = &tank->s2;
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);
    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_BOSS_1_EGGMAN);
    s->oamFlags = 0x480;
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_BOSS_1_EGGMAN;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    gCamera.shiftY = -56;
    gCamera.maxX = s->x - 64;

    gCamera.minX = (((float)gCamera.maxX) - 360.f);
    gMusicManagerState.unk1 = 0x10;
}

void Task_802611C(void)
{
    s32 resA;
    s32 resB;

    EggHammerTank *tank;
    MapEntity *me;
    Sprite *s, *s2;
    CamCoord worldX, worldY;
    AnimCmdResult acmdRes;

    tank = TASK_DATA(gCurTask);
    s = &tank->s;
    s2 = &tank->s2;
    me = tank->base.me;

    tank->unk94 += tank->unk96;
    if (!(tank->unk94 > -568 && tank->unk94 < 56)) {
        m4aSongNumStart(SE_IMPACT);
        tank->unk96 = -tank->unk96;
        CreateScreenShake(0x800U, 0x40U, 0x100U, -1U, 0x80);
    }

    if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
        tank->qUnk8C += Q(1);
    } else {
        tank->qUnk8C -= Q(1);
    }

    worldX = TO_WORLD_POS(tank->base.meX, tank->base.regionX) + I(tank->qUnk8C);
    worldY = TO_WORLD_POS(me->y, tank->base.regionY);
    s->frameFlags &= ~0x180;
    if (!(gPlayer.moveState & 0x80)) {
        gDispCnt &= 0x7FFF;
        gWinRegs[WINREG_WINOUT] = 0;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
    }

    if (tank->unk9B == 0) {
        resA = sub_800BA5C(s, worldX, worldY, &gPlayer);
        if (gNumSingleplayerCharacters == 2) {
            resB = sub_800BA5C(s, worldX, worldY, &gPartner);
        } else {
            resB = 0;
        }
        if ((resA == 1) || (resB == 1)) {
            tank->unk9A++;
            tank->unk9B = 0x20;
            if (tank->unk9A == 7) {
                tank->unk9B = 0x40;
                gCurTask->main = Task_80264C8;
            } else if (tank->unk9A > 4) {
                if (tank->unk96 > 0) {
                    tank->unk96 = (s8)tank->unk9A + 1;
                } else {
                    tank->unk96 = ~(s8)tank->unk9A;
                }
            }
            s2->variant = 2;
            m4aSongNumStart(SE_143);
        } else if ((resA == 2) || (resB == 2)) {
            s2->variant = 1;
        }
    }

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    s2->x = s->x;
    s2->y = (u16)s->y;
    if (worldX < (s32)(gCamera.minX - 0x40)) {
        s->frameFlags = (s32)(s->frameFlags | 0x400);
        s2->frameFlags = s2->frameFlags | 0x400;
    } else if (worldX > (s32)(gCamera.maxX + 0x40)) {
        s->frameFlags &= ~0x400;
        s2->frameFlags &= ~0x400;
    }
    UpdateSpriteAnimation((Sprite *)s);
    UpdateSpriteAnimation((Sprite *)s2);
    if (s->variant == 2) {
        s2->y = (u16)(s2->y - 1);
    }
    if (tank->unk9B != 0) {
        if (--tank->unk9B > 0x10) {
            if (!(tank->unk9B & 2) && !(gPlayer.moveState & 0x80)) {
                s->frameFlags = (s32)(s->frameFlags | 0x100);
                gDispCnt |= 0x8000;
                gWinRegs[WINREG_WINOUT] = 0x3F1F;
                gBldRegs.bldCnt = 0xBF;
                gBldRegs.bldY = 0x10;
            }

            DisplaySprite(s);
            DisplaySprite(s2);
        } else if (tank->unk9B & 2) {
            DisplaySprite(s);
            DisplaySprite(s2);
        }
    } else {
        DisplaySprite(s);
        DisplaySprite(s2);
    }

    if (s->frameFlags & 0x400) {
        SA2_LABEL(gUnknown_03001944) = 0x3FF & tank->unk94;
        SA2_LABEL(gUnknown_030017F0) = 0x100;
        SA2_LABEL(gUnknown_03005394) = 0x100;
        SA2_LABEL(gUnknown_03002A8C) = 0;
        SA2_LABEL(gUnknown_03004D58) = 0;
        SA2_LABEL(gUnknown_0300194C) = tank->s.x;
        SA2_LABEL(gUnknown_03002820) = tank->s.y - 0x24;
    } else {
        SA2_LABEL(gUnknown_03001944) = 0x3FF & tank->unk94;
        SA2_LABEL(gUnknown_030017F0) = 0x100;
        SA2_LABEL(gUnknown_03005394) = 0x100;
        SA2_LABEL(gUnknown_03002A8C) = 0;
        SA2_LABEL(gUnknown_03004D58) = 0;
        SA2_LABEL(gUnknown_0300194C) = tank->s.x;
        SA2_LABEL(gUnknown_03002820) = tank->s.y - 0x24;
    }
}

// (97.42%) https://decomp.me/scratch/lLJ09
NONMATCH("asm/non_matching/game/enemies/boss_1__Task_80264C8.inc", void Task_80264C8(void))
{
    MapEntity *me;
    EggHammerTank *tank;
    Sprite *s;
    Sprite *s2; // sp04
    s32 sp08, sp0C; // sp08, sp0C
    s16 *unk94 = &tank->unk94; // sp10
    CamCoord worldX, worldY; // sp14, sp18
    s16 theta;
    s32 resA, resB;
    struct Task *t;
    Strc_sub_80168F0 *strc;
    u8 i;

    sp08 = 0;
    sp0C = 0;

    tank = TASK_DATA(gCurTask);
    s = &tank->s;
    s2 = &tank->s2;
    me = tank->base.me;

    if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
        tank->unk96 = (tank->unk9A * 2 - 2);
    } else {
        tank->unk96 = -4 - ((tank->unk9A - 3) * 2);
    }

    tank->unk94 += tank->unk96;
    if (tank->unk94 < -0x300) {
        tank->unk94 += 0x400;
        tank->qUnk8C -= COS(56) * 3;
    } else if (tank->unk94 > +0x100) {
        tank->unk94 -= 0x400;
        tank->qUnk8C += COS(56) * 3;
    }

    if ((tank->unk94 <= -568)) {
        if (tank->unk9C == 0) {
            tank->unk9C = 1;

            m4aSongNumStart(SE_IMPACT);
            CreateScreenShake(0x800U, 0x40U, 0x100U, -1U, 0x80);
        }

        theta = (0x200 - tank->unk94) & 0x3FF;
        sp08 = -((s32)((COS(56) - COS(theta)) * 3) >> 9);
        sp0C = -((s32)((SIN(theta) - SIN(56)) * 3) >> 9);
    } else if (tank->unk94 > 55) {
        if (tank->unk9C == 0) {
            tank->unk9C = 1;

            m4aSongNumStart(SE_IMPACT);
            CreateScreenShake(0x800U, 0x40U, 0x100U, -1U, 0x80);
        }

        theta = tank->unk94 & 0x3FF;
        sp08 = +((s32)((COS(56) - COS(theta)) * 3) >> 9);
        sp0C = -((s32)((SIN(theta) - SIN(56)) * 3) >> 9);
    } else {
        if (tank->unk9C == 1) {
            tank->unk9C = 0;
        }

        if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
            tank->qUnk8C += Q(1);
        } else {
            tank->qUnk8C -= Q(1);
        }
    }

    worldX = TO_WORLD_POS(tank->base.meX, tank->base.regionX) + I(tank->qUnk8C) + sp08;
    worldY = TO_WORLD_POS(me->y, tank->base.regionY) + sp0C;

    s->frameFlags &= ~0x180;
    if (!(gPlayer.moveState & 0x80)) {
        gDispCnt &= 0x7FFF;
        gWinRegs[WINREG_WINOUT] = 0;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
    }

    if (tank->unk9B == 0) {
        resA = sub_800BA5C(s, worldX, worldY, &gPlayer);
        if (gNumSingleplayerCharacters == 2) {
            resB = sub_800BA5C(s, worldX, worldY, &gPartner);
        } else {
            resB = 0;
        }
        if ((resA == 1) || (resB == 1)) {
            tank->unk9A++;
            tank->unk9B = 0x20;
            s2->variant = 2;
            tank->qUnk9E = -Q(2);

            INCREMENT_SCORE_A(1000);

            m4aSongNumStart(SE_EXPLOSION);

            for (i = 0; i < 5; i++) {
                tank->tasks[i]->main = Task_80271E4;
            }

            tank->task74->main = Task_8027600;
            tank->qUnk8C += Q(sp08);
            tank->qUnk90 = Q(sp0C);

            tank->unk98 = 0;
            s->graphics.anim = SA1_ANIM_BOSS_1_BODY_NO_BELT;
            s->variant = 0;

            {
                t = sub_80168F0(worldX, worldY, 16, 0x265, 0);
                strc = TASK_DATA(t);
                strc->qUnk46 = -Q(2);
                strc->unk48 = 0;
                strc->unk42 = 0;

                if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
                    strc->transform.qScaleX = -Q(1);
                    strc->qUnk44 = +Q(4);
                } else {
                    strc->qUnk44 = -Q(4);
                }

                strc->unk40 = 60;
            }

            {
                t = sub_80168F0(worldX, worldY, 16, 614, 0);
                strc = TASK_DATA(t);
                strc->qUnk46 = -Q(2);
                strc->unk48 = 0;
                strc->unk42 = 0;

                if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
                    strc->transform.qScaleX = -Q(1);
                    strc->qUnk44 = +Q(4);
                } else {
                    strc->qUnk44 = -Q(4);
                }

                strc->unk40 = 60;
            }

            {
                t = sub_80168F0(worldX, worldY, 16, 615, 0);
                strc = TASK_DATA(t);
                strc->qUnk46 = -Q(2);
                strc->unk48 = 0;
                strc->unk42 = 0;

                if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
                    strc->transform.qScaleX = -Q(1);
                    strc->qUnk44 = -Q(4);
                } else {
                    strc->qUnk44 = +Q(4);
                }

                strc->unk40 = 60;
            }

            {
                t = sub_80168F0(worldX, worldY, 16, 616, 0);
                strc = TASK_DATA(t);
                strc->qUnk46 = -Q(2);
                strc->unk48 = 0;
                strc->unk42 = 0;

                if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
                    strc->transform.qScaleX = -Q(1);
                    strc->qUnk44 = -Q(4);
                } else {
                    strc->qUnk44 = +Q(4);
                }

                strc->unk40 = 60;
            }

            gCamera.minX = gCamera.x;
            gCamera.maxX = gCamera.x + DISPLAY_WIDTH;
            gCurTask->main = Task_8026C44;
            gCurTask->main();
            return;
        }
    }

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    s2->x = s->x;
    s2->y = s->y;

    if (sp0C == 0) {
        if (worldX < gCamera.minX - 64) {
            s->frameFlags |= SPRITE_FLAG(X_FLIP, 1);
            s2->frameFlags |= SPRITE_FLAG(X_FLIP, 1);
        } else if (worldX > gCamera.maxX + 64) {
            s->frameFlags &= ~SPRITE_FLAG(X_FLIP, 1);
            s2->frameFlags &= ~SPRITE_FLAG(X_FLIP, 1);
        }
    }

    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);

    if (s->variant == 2) {
#if !TRUE
        // s is incorrect here, but using it increases overall percentage by 2%
        s->y--; // s2
#else
        s2->y--; // s2
#endif
    }

    if (tank->unk9B != 0) {
        if (--tank->unk9B > 16) {
            if (!(tank->unk9B & 2) && !(gPlayer.moveState & 0x80)) {
                s->frameFlags |= SPRITE_FLAG(OBJ_MODE, 2);
                gDispCnt |= 0x8000;
                gWinRegs[WINREG_WINOUT] = 0x3F1F;
                gBldRegs.bldCnt = 0xBF;
                gBldRegs.bldY = 0x10;
            }

            DisplaySprite(s);
            DisplaySprite(s2);
        } else if (tank->unk9B & 2) {
            DisplaySprite(s);
            DisplaySprite(s2);
        }
    } else {
        DisplaySprite(s);
        DisplaySprite(s2);
    }

    if (s->frameFlags & 0x400) {
        SA2_LABEL(gUnknown_03001944) = tank->unk94 & 0x3FF;
        SA2_LABEL(gUnknown_030017F0) = 0x100;
        SA2_LABEL(gUnknown_03005394) = 0x100;
        SA2_LABEL(gUnknown_03002A8C) = 0;
        SA2_LABEL(gUnknown_03004D58) = 0;
        SA2_LABEL(gUnknown_0300194C) = tank->s.x;
        SA2_LABEL(gUnknown_03002820) = tank->s.y - 0x24;
    } else {
        SA2_LABEL(gUnknown_03001944) = tank->unk94 & 0x3FF;
        SA2_LABEL(gUnknown_030017F0) = 0x100;
        SA2_LABEL(gUnknown_03005394) = 0x100;
        SA2_LABEL(gUnknown_03002A8C) = 0;
        SA2_LABEL(gUnknown_03004D58) = 0;
        SA2_LABEL(gUnknown_0300194C) = tank->s.x;
        SA2_LABEL(gUnknown_03002820) = tank->s.y - 0x24;
    }
}
END_NONMATCH

// (97.27%) https://decomp.me/scratch/sLWM7
NONMATCH("asm/non_matching/game/enemies/boss_1__Task_8026C44.inc", void Task_8026C44(void))
{
    EggHammerTank *tank;
    s32 res;
    Sprite *s;
    Sprite *s2;
    SpriteBase *base;
    MapEntity *me;
    s16 rndTheta;
    CamCoord worldX;
    CamCoord worldY;

    tank = TASK_DATA(gCurTask);
    base = &tank->base;
    s = &tank->s;
    s2 = &tank->s2;
    me = base->me;
    tank->qUnk9E += 0x28;
    tank->qUnk90 += tank->qUnk9E;
    worldX = TO_WORLD_POS(base->meX, base->regionX) + I(tank->qUnk8C);
    worldY = TO_WORLD_POS(me->y, base->regionY) + I(tank->qUnk90);

    res = SA2_LABEL(sub_801F100)(worldY - 8, worldX, 1, 8, SA2_LABEL(sub_801EC3C));
    if (res < 0) {
        tank->qUnk90 += Q(res);

        tank->qUnk9E = (tank->qUnk9E >> 2) - tank->qUnk9E;
        if (tank->qUnk9E > -Q(1)) {
            tank->qUnk9E = 0U;
            gCurTask->main = Task_8026ED0;
        }
    }
    s->frameFlags &= ~0x180;
    if (PLAYER_IS_ALIVE) {
        gDispCnt &= 0x7FFF;
        gWinRegs[WINREG_WINOUT] = 0;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
    }
    tank->unk98++;

    if (!(tank->unk98 & 7)) {
        struct Task *t;
        NutsAndBolts *bolts;
        Sprite *sprBolts;
        s32 rndIndex = PseudoRandom32() % ARRAY_COUNT(gUnknown_080BB41C);
        s32 rndTheta;
        s32 a0, a1;
        s16 rnd;
        t = CreateNutsAndBoltsTask(0x2000U, VramMalloc(gUnknown_080BB434[rndIndex]), gUnknown_080BB41C[rndIndex],
                                   gUnknown_080BB42C[rndIndex], TaskDestructor_NutsAndBolts);
        bolts = TASK_DATA(t);
        sprBolts = &bolts->s;
        bolts->qUnk30 = Q(worldX);
        bolts->qUnk34 = Q(worldY - 0x20);
        sprBolts->frameFlags = 0x2000;
        sprBolts->oamFlags = 0x440;
        bolts->qUnk3E = Q(40. / 256.);
        bolts->qUnk40 = Q(32. / 256.);
        rndTheta = PseudoRandom32();
        bolts->qUnk3A = (-(SIN(rndTheta & 0x1FF) * 0x600)) >> 0xE;
        bolts->qUnk38 = (-(COS(rndTheta & 0x1FF) * 0x600)) >> 0xE;

        // NOTE: This is nonmatching
        rnd = PseudoRandom32();
        sub_8017540(Q(worldX + ((rnd & 0x3F) - 0x20)), Q(worldY - ((rnd & 0x3F) + 0x20)));
    }

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    s2->x = s->x;
    s2->y = s->y;

    UpdateSpriteAnimation((Sprite *)s);
    UpdateSpriteAnimation((Sprite *)s2);

    if (s->variant == 2) {
        s2->y--;
    }

    DisplaySprite(s);
    DisplaySprite(s2);
}
END_NONMATCH

// (97.01%) https://decomp.me/scratch/Vkctb
NONMATCH("asm/non_matching/game/enemies/boss_1__Task_8026ED0.inc", void Task_8026ED0(void))
{
    EggHammerTank *tank;
    s32 res;
    Sprite *s;
    Sprite *s2;
    SpriteBase *base;
    MapEntity *me;
    s16 rndTheta;
    CamCoord worldX;
    CamCoord worldY;

    tank = TASK_DATA(gCurTask);
    base = &tank->base;
    s = &tank->s;
    s2 = &tank->s2;
    me = base->me;

    worldX = TO_WORLD_POS(base->meX, base->regionX) + I(tank->qUnk8C);
    worldY = TO_WORLD_POS(me->y, base->regionY) + I(tank->qUnk90);

    if (tank->unk98++ > DISPLAY_WIDTH) {
        sub_8015C5C(worldX, worldY - 32);
        CreateBossCapsule(worldX, worldY);
        gMusicManagerState.unk1 = 0x30;
        TaskDestroy(gCurTask);
        return;
    }

    if (!(tank->unk98 & 7)) {
        struct Task *t;
        NutsAndBolts *bolts;
        Sprite *sprBolts;
        s32 rndIndex = PseudoRandom32() % ARRAY_COUNT(gUnknown_080BB41C);
        s32 rndTheta;
        s16 a0, a1;
        s16 rnd;
        t = CreateNutsAndBoltsTask(0x2000U, VramMalloc(gUnknown_080BB434[rndIndex]), gUnknown_080BB41C[rndIndex],
                                   gUnknown_080BB42C[rndIndex], TaskDestructor_NutsAndBolts);
        bolts = TASK_DATA(t);
        sprBolts = &bolts->s;
        bolts->qUnk30 = Q(worldX);
        bolts->qUnk34 = Q(worldY - 0x20);
        sprBolts->frameFlags = 0x2000;
        sprBolts->oamFlags = 0x440;
        bolts->qUnk3E = Q(40. / 256.);
        bolts->qUnk40 = Q(32. / 256.);
        rndTheta = PseudoRandom32();
        bolts->qUnk3A = (-(SIN(rndTheta & 0x1FF) * 0x600)) >> 0xE;
        bolts->qUnk38 = (-(COS(rndTheta & 0x1FF) * 0x600)) >> 0xE;

        // NOTE: This is nonmatching
        rnd = PseudoRandom32();
        sub_8017540(Q(worldX + ((rnd & 0x3F) - 0x20)), Q(worldY - ((rnd & 0x3F) + 0x20)));
    }

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    s2->x = s->x;
    s2->y = s->y;

    UpdateSpriteAnimation((Sprite *)s);
    UpdateSpriteAnimation((Sprite *)s2);

    if (s->variant == 2) {
        s2->y--;
    }

    DisplaySprite(s);
    DisplaySprite(s2);
}
END_NONMATCH

typedef struct EHTArm {
    /* 0x00 */ Sprite s;
    /* 0x30 */ SpriteTransform transform;
    /* 0x3C */ s16 unk3C;
    /* 0x3E */ s16 unk3E;
    /* 0x40 */ u16 unk40;
    /* 0x44 */ s32 qUnk44;
    /* 0x48 */ s32 qUnk48;
    /* 0x4C */ s16 qUnk4C;
    /* 0x4E */ s16 qUnk4E;
    /* 0x50 */ u8 unk50;
} EHTArm; /* 0x54 */

void Task_EHTArm(void);
void Task_80272D0(void);
void TaskDestructor_EHTArm(struct Task *t);

struct Task *sub_8017540(s32, s32);

struct Task *CreateEHTArm(u8 arg0)
{
    s32 sp4;
    SpriteTransform *tf;
    Sprite *s;
    struct Task *t;
    EHTArm *ehtArm;

    t = TaskCreate(Task_EHTArm, sizeof(EHTArm), 0x2000 | arg0, 0U, TaskDestructor_EHTArm);
    ehtArm = TASK_DATA(t);
    s = &ehtArm->s;
    tf = &ehtArm->transform;
    ehtArm->unk50 = arg0;

    s->x = 0;
    s->y = 0;
    s->graphics.dest = ALLOC_TILES(SA1_ANIM_BOSS_1_HAMMER_SEGMENT);
    s->oamFlags = 0x440;
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_BOSS_1_HAMMER_SEGMENT;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2030;

    tf->rotation = 0;
    tf->qScaleX = Q(1);
    tf->qScaleY = Q(1);
    tf->x = arg0 * 16;
    tf->y = 0;

    UpdateSpriteAnimation(s);

    return t;
}

// (62.78%) https://decomp.me/scratch/0oTRq
NONMATCH("asm/non_matching/game/enemies/boss_1__Task_80271E4.inc", void Task_80271E4(void))
{
    EHTArm *arm;
    Sprite *s;
    SpriteTransform *tf;

    arm = TASK_DATA(gCurTask);
    s = &arm->s;
    tf = &arm->transform;
    tf->rotation = 0;

    arm->unk3C = ((COS(sa2__gUnknown_03001944) * 0x10 * arm->unk50) >> 0xE) + (gCamera.x + sa2__gUnknown_0300194C);
    arm->unk3E = ((SIN(sa2__gUnknown_03001944) * 0x10 * arm->unk50) >> 0xE) + (gCamera.y + sa2__gUnknown_03002820);

    if (arm->unk50) {
        arm->qUnk4C = +Q(2);
    } else {
        arm->qUnk4C = -Q(2);
    }

    arm->qUnk4E = -Q(6);
    arm->qUnk44 = 0;
    arm->qUnk48 = 0;
    arm->unk40 = 0;
    s->frameFlags &= ~0x20;
    gCurTask->main = Task_80272D0;
    gCurTask->main();
}
END_NONMATCH

void Task_80272D0(void)
{
    s32 temp_r1;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r6;
    EHTArm *arm;
    Sprite *s;

    arm = TASK_DATA(gCurTask);
    s = &arm->s;

    if (arm->unk40++ > 0xB4U) {
        TaskDestroy(gCurTask);
        return;
    }
    arm->qUnk4E += 0x28;
    arm->qUnk44 += arm->qUnk4C;
    arm->qUnk48 += arm->qUnk4E;

    if (arm->qUnk4E > 0) {
        s32 res = sa2__sub_801F100(arm->unk3E + I(arm->qUnk48), arm->unk3C + I(arm->qUnk44), 1, 8, sa2__sub_801EC3C);
        if (res < 0) {
            arm->qUnk48 = arm->qUnk48 + Q(res);
            arm->qUnk4E = (arm->qUnk4E >> 2) - arm->qUnk4E;
        }
    }

    temp_r1_3 = arm->unk3C + I(arm->qUnk44);
    if ((temp_r1_3 > (s32)(gCamera.x + 0xF0)) || (temp_r1_3 < (s32)gCamera.x)) {
        arm->qUnk4C = -arm->qUnk4C;
    }

    if (!(arm->unk40 & 0x7)) {
        sub_8017540(Q(arm->unk3C) + arm->qUnk44, Q(arm->unk3E) + arm->qUnk48);
    }

    s->x = (s16)((((s32)arm->qUnk44 >> 8) + arm->unk3C) - (u16)gCamera.x);
    s->y = (s16)((((s32)arm->qUnk48 >> 8) + arm->unk3E) - (u16)gCamera.y);
    DisplaySprite(s);
}

#if 0
void Task_80272D0(void) {
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r5;
    s32 temp_r6;
    u16 temp_r0;
    u16 temp_r1_2;
    u16 temp_r3;

    temp_r3 = TASK_DATA(gCurTask);
    temp_r5 = temp_r3->unk0;
    temp_r2 = temp_r3->unk40;
    temp_r0 = *temp_r2;
    *temp_r2 = (u16) (temp_r0 + 1);
    if ((u32) temp_r0 > 0xB4U) {
        TaskDestroy(gCurTask);
        return;
    }
    temp_r6 = temp_r3->unk4E;
    *temp_r6 = (u16) (*temp_r6 + 0x28);
    temp_r2_2 = temp_r5->unk44 + *(temp_r3->unk4C);
    temp_r5->unk44 = temp_r2_2;
    temp_r1 = temp_r5->unk48 + (s16) *temp_r6;
    temp_r5->unk48 = temp_r1;
    if ((s32) (s16) *temp_r6 > 0) {
        temp_r0_2 = sa2__sub_801F100(*(temp_r5 + 0x3E) + (temp_r1 >> 8), *(temp_r5 + 0x3C) + (temp_r2_2 >> 8), 1, 8, sa2__sub_801EC3C);
        if (temp_r0_2 < 0) {
            temp_r5->unk48 = (s32) (temp_r5->unk48 + (temp_r0_2 << 8));
            temp_r1_2 = *temp_r6;
            *temp_r6 = (u16) (((s32) (temp_r1_2 << 0x10) >> 0x12) - temp_r1_2);
        }
    }
    temp_r1_3 = *(temp_r5 + 0x3C) + ((s32) temp_r5->unk44 >> 8);
    if ((temp_r1_3 > (s32) (gCamera.x + 0xF0)) || (temp_r1_3 < (s32) gCamera.x)) {
        temp_r1_4 = temp_r3->unk4C;
        *temp_r1_4 = (u16) (0 - *temp_r1_4);
    }
    if (!(7 & *(temp_r3->unk40))) {
        sub_8017540((*(temp_r5 + 0x3C) << 8) + temp_r5->unk44, (*(temp_r5 + 0x3E) << 8) + temp_r5->unk48);
    }
    temp_r5->unk16 = (s16) ((((s32) temp_r5->unk44 >> 8) + temp_r5->unk3C) - (u16) gCamera.x);
    temp_r5->unk18 = (s16) ((((s32) temp_r5->unk48 >> 8) + temp_r5->unk3E) - (u16) gCamera.y);
    DisplaySprite((Sprite *) temp_r5);
}

struct Task *CreateEHTHammer(void) {
    s32 sp4;
    s32 temp_r2;
    Sprite *temp_r4;
    struct Task *temp_r0;
    u16 temp_r5;

    temp_r0 = TaskCreate(Task_EHTHammer, 0x54U, 0x2005U, 0U, TaskDestructor_EHTHammer);
    temp_r5 = temp_r0->data;
    temp_r4 = temp_r5->unk0;
    temp_r2 = temp_r5->unk30;
    temp_r4->unk16 = 0;
    temp_r4->unk18 = 0;
    sp4 = temp_r2;
    temp_r4->unk4 = VramMalloc(0x40U);
    temp_r4->unk1A = 0x440;
    temp_r4->unk8 = 0;
    temp_r4->unkA = 0x261;
    *(temp_r5->unk20) = 0;
    temp_r4->unk14 = 0;
    temp_r4->unk1C = 0;
    *(temp_r5->unk21) = 0xFF;
    *(temp_r5->unk22) = 0x10;
    *(temp_r5->unk25) = 0;
    temp_r4->unk28 = -1;
    temp_r4->unk10 = 0x2030;
    temp_r2->unk0 = 0;
    temp_r2->unk2 = 0x100;
    temp_r2->unk4 = 0x100;
    temp_r2->unk6 = 0x60;
    temp_r2->unk8 = 0;
    UpdateSpriteAnimation((Sprite *) temp_r4);
    return temp_r0;
}

void Task_EHTHammer(void) {
    s16 temp_r0_4;
    s16 temp_r4;
    s16 temp_r5;
    s32 temp_r0_3;
    s32 temp_r0_5;
    s32 temp_r1;
    s32 temp_r3;
    s32 temp_r6;
    s32 temp_r7;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1_2;
    u32 var_r4;

    temp_r0 = TASK_DATA(gCurTask);
    temp_r7 = temp_r0->unk0;
    temp_r3 = temp_r0->unk30;
    temp_r0_2 = (gCurTask->parent->unk0)->unk6;
    temp_r1 = temp_r0_2->unk44;
    *temp_r3 = 0U;
    temp_r0_3 = temp_r0_2->unk94;
    temp_r1_2 = *temp_r0_3;
    temp_r0_4 = (s16) *temp_r0_3;
    if ((s32) temp_r0_4 < 0) {
        temp_r0_5 = 0xFFFFFE00 - temp_r1_2;
        if ((s32) (temp_r0_5 << 0x10) > 0) {
            *temp_r3 = (u16) temp_r0_5;
        }
    } else if ((s32) temp_r0_4 > 0) {
        *temp_r3 = (u16) (0 - temp_r1_2);
    }
    UnusedTransform((Sprite *) temp_r7, (SpriteTransform *) temp_r3);
    if ((s8) *(temp_r0_2->unk9B) == 0) {
        temp_r5 = (s16) (u16) (((s32) (gSineTable[sa2__gUnknown_03001944 + 0x100] * 3) >> 9) + ((u16) gCamera.x + (u16) sa2__gUnknown_0300194C));
        temp_r4 = (s16) (u16) (((s32) (gSineTable[sa2__gUnknown_03001944] * 3) >> 9) + ((u16) gCamera.y + (u16) sa2__gUnknown_03002820));
        temp_r6 = (s32) Coll_Player_Entity_Intersection((Sprite *) temp_r7, temp_r5, temp_r4, &gPlayer);
        if ((s8) (u8) gNumSingleplayerCharacters == 2) {
            var_r4 = Coll_Player_Entity_Intersection((Sprite *) temp_r7, temp_r5, temp_r4, &gPartner);
        } else {
            var_r4 = 0;
        }
        if (temp_r6 == 0x80000) {
            Coll_DamagePlayer(&gPlayer);
            *(temp_r1 + 0x20) = 1;
        }
        if (var_r4 == 0x80000) {
            Coll_DamagePlayer(&gPartner);
            *(temp_r1 + 0x20) = 1;
        }
    }
    DisplaySprite((Sprite *) temp_r7);
}

void Task_8027600(void) {
    s16 temp_r0_3;
    s16 var_r0;
    s32 temp_r0_2;
    s32 temp_r0_4;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 var_r1;
    u16 temp_r0;
    u16 temp_r1;
    u16 temp_r1_2;

    temp_r0 = TASK_DATA(gCurTask);
    temp_r4 = temp_r0->unk0;
    temp_r4_2 = temp_r0->unk30;
    *temp_r4_2 = 0U;
    temp_r0_2 = (gCurTask->parent->unk0)->unk6->unk94;
    temp_r1 = *temp_r0_2;
    temp_r0_3 = (s16) *temp_r0_2;
    if ((s32) temp_r0_3 < 0) {
        temp_r0_4 = 0xFFFFFE00 - temp_r1;
        if ((s32) (temp_r0_4 << 0x10) > 0) {
            *temp_r4_2 = (u16) temp_r0_4;
        }
    } else if ((s32) temp_r0_3 > 0) {
        *temp_r4_2 = (u16) (0 - temp_r1);
    }
    *temp_r4_2 = (u16) (sa2__gUnknown_03001944 + *temp_r4_2);
    temp_r1_2 = (u16) (((s32) (gSineTable[sa2__gUnknown_03001944 + 0x100] * 3) >> 9) + ((u16) gCamera.x + (u16) sa2__gUnknown_0300194C));
    temp_r4->unk3C = temp_r1_2;
    temp_r4->unk3E = (s16) (((s32) (gSineTable[sa2__gUnknown_03001944] * 3) >> 9) + ((u16) gCamera.y + (u16) sa2__gUnknown_03002820));
    if ((s32) (s16) temp_r1_2 < (s32) (gCamera.x + 0x78)) {
        var_r1 = temp_r0->unk4C;
        var_r0 = 0x200;
    } else {
        var_r1 = temp_r0->unk4C;
        var_r0 = 0xFE00;
    }
    *var_r1 = var_r0;
    *(temp_r0->unk4E) = 0xFA00;
    temp_r4->unk44 = 0;
    temp_r4->unk48 = 0;
    *(temp_r0->unk40) = 0;
    *(temp_r0->unk42) = 0x2A;
    gCurTask->main = sub_8027714;
    sub_8027714();
}

void sub_8027714(void) {
    s32 temp_r0;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r1_3;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r4;
    s32 temp_r6;
    u16 temp_r0_2;
    u16 temp_r1_2;
    u16 temp_r7;

    temp_r7 = TASK_DATA(gCurTask);
    temp_r4 = temp_r7->unk0;
    temp_r0 = temp_r7->unk30;
    temp_r2 = temp_r7->unk40;
    temp_r0_2 = *temp_r2;
    *temp_r2 = (u16) (temp_r0_2 + 1);
    if ((u32) temp_r0_2 > 0xB4U) {
        TaskDestroy(gCurTask);
        return;
    }
    temp_r6 = temp_r7->unk4E;
    *temp_r6 = (u16) (*temp_r6 + 0x28);
    temp_r2_2 = temp_r4->unk44 + *(temp_r7->unk4C);
    temp_r4->unk44 = temp_r2_2;
    temp_r1 = temp_r4->unk48 + (s16) *temp_r6;
    temp_r4->unk48 = temp_r1;
    if ((s32) (s16) *temp_r6 > 0) {
        temp_r0_3 = sa2__sub_801F100(*(temp_r4 + 0x3E) + (temp_r1 >> 8), *(temp_r4 + 0x3C) + (temp_r2_2 >> 8), 1, 8, sa2__sub_801EC3C);
        if (temp_r0_3 < 0) {
            temp_r4->unk48 = (s32) (temp_r4->unk48 + (temp_r0_3 << 8));
            temp_r1_2 = *temp_r6;
            *temp_r6 = (u16) (((s32) (temp_r1_2 << 0x10) >> 0x12) - temp_r1_2);
            temp_r1_3 = temp_r7->unk42;
            *temp_r1_3 = (u16) (0 - *temp_r1_3);
        }
    }
    if (!(7 & *(temp_r7->unk40))) {
        sub_8017540((*(temp_r4 + 0x3C) << 8) + temp_r4->unk44, (*(temp_r4 + 0x3E) << 8) + temp_r4->unk48);
    }
    temp_r4->unk16 = (s16) ((((s32) temp_r4->unk44 >> 8) + temp_r4->unk3C) - (u16) gCamera.x);
    temp_r4->unk18 = (s16) ((((s32) temp_r4->unk48 >> 8) + temp_r4->unk3E) - (u16) gCamera.y);
    temp_r0->unk0 = (u16) ((*(temp_r7->unk42) + temp_r0->unk0) & 0x3FF);
    temp_r0->unk6 = (u16) temp_r4->unk16;
    temp_r0->unk8 = (u16) temp_r4->unk18;
    TransformSprite((Sprite *) temp_r4, (SpriteTransform *) temp_r0);
    DisplaySprite((Sprite *) temp_r4);
}

void sub_802784C(struct Task *t) {
    EggHammerTank *tank = TASK_DATA(t);

    VramFree(tank->s.graphics.dest);
    VramFree(tank->s2.graphics.dest);
}

void Task_EggHammerTankMain(void) {
    s32 temp_r2;
    s32 var_r4;
    u16 temp_r0;
    u16 temp_r3;

    temp_r3 = TASK_DATA(gCurTask);
    temp_r2 = temp_r3->unk98;
    temp_r0 = *temp_r2;
    *temp_r2 = (u16) (temp_r0 + 1);
    if ((u32) temp_r0 > 0x78U) {
        var_r4 = 0;
        do {
            *(temp_r3->unk78 + (var_r4 * 4)) = CreateEHTArm((u8) var_r4);
            var_r4 = (s32) (u8) (var_r4 + 1);
        } while ((u32) var_r4 <= 4U);
        (temp_r3->unk0)->unk74 = CreateEHTHammer();
        gCurTask->main = Task_802611C;
        gCurTask->main();
    }
}

void TaskDestructor_EggHammerTank(struct Task *t) {
    EggHammerTank *tank = TASK_DATA(t);

    if (PLAYER_IS_ALIVE) {
        gDispCnt &= 0x7FFF;
        gWinRegs[WINREG_WINOUT] = 0;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
    }

    VramFree(tank->s.graphics.dest);
    VramFree(tank->s2.graphics.dest);
}

void Task_EHTArm(void) {
    EHTArm *ehtArm;
    Sprite *s;
    SpriteTransform *tf;

    ehtArm = TASK_DATA(gCurTask);
    s = ehtArm->s;

    tf = ehtArm->transform;
    tf->rotation = 0;

    UnusedTransform(s, tf);
    DisplaySprite(s);
}

void TaskDestructor_EHTArm(struct Task *t) {
    
    EHTArm *arm = TASK_DATA(t);
    VramFree(arm->s.graphics.dest);
}

void TaskDestructor_EHTHammer(struct Task *t) {
    EHTHammer *ehtHammer = TASK_DATA(t);
    VramFree(ehtHammer->graphics.dest);
}
#endif