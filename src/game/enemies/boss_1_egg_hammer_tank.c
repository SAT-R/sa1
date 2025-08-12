#include "global.h"
#include "malloc_vram.h"
#include "game/sa1_sa2_shared/player.h"
#include "game/entity.h"
#include "game/stage/player_controls.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"

void CreateBossCapsule(s16, s16);
s32 sub_800BA5C(s32, s16, s32, Player *);
void sub_8015C5C(s16, s32);
void *sub_80168F0(s32, s32, s32, s32, s32);
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
void sub_80264C8();
void sub_8026C44();
void sub_8026ED0();
void sub_80271E4();
void sub_80272D0();
void sub_8027600();
void sub_8027714();

typedef struct EggHammerTank {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x0C */ Hitbox reserved;
    /* 0x44 */ Sprite s2;
    /* 0x0C */ Hitbox reserved2;
    /* 0x74 */ u8 padding7C[0x10];
    /* 0x8C */ s32 qUnk8C;
    /* 0x74 */ u8 padding90[0x4];
    /* 0x94 */ u16 unk94;
    /* 0x96 */ u16 unk96;
    /* 0x98 */ u16 unk98;
    /* 0x9A */ u8 unk9A;
    /* 0x9B */ u8 unk9B;
    /* 0x9C */ u8 unk9C;
    /* 0x9C */ u8 unk9D;
} EggHammerTank; /* 0xA0 */

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

#if 0
void CreateEntity_EggHammerTank(MapEntity *me, u16 regionX, u16 regionY, u8 id) {
    s32 sp4;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r6_2;
    s32 temp_r6_3;
    s32 temp_r7;
    s32 temp_r7_2;
    u16 temp_r3;
    u16 temp_r6;

    temp_r6 = regionX;
    sp4 = (s32) regionY;
    if ((u32) gGameMode > 1U) {
        me->x = -2U;
        return;
    }
    temp_r3 = TaskCreate(Task_EggHammerTankMain, 0xA0U, 0x2000U, 0U, M2C_ERROR(/* Unable to find stack arg 0x10 in block */), /* extra? */ TaskDestructor_EggHammerTank)->data;
    temp_r0 = temp_r3->unk0;
    temp_r0->unk4 = temp_r6;
    temp_r0->unk6 = (u16) subroutine_arg0.unk4;
    temp_r0->unk0 = me;
    temp_r0->unk8 = (u8) me->x;
    temp_r0->unk9 = id;
    *(temp_r3->unk94) = 0;
    *(temp_r3->unk98) = 0;
    *(temp_r3->unk96) = 0xFFFC;
    *(temp_r3->unk9B) = 0;
    *(temp_r3->qUnk8C) = 0;
    *(temp_r3->unk9C) = 0;
    if (gLoadedSaveGame.difficultyLevel != 0) {
        *(temp_r3->unk9A) = 2;
    } else {
        *(temp_r3->unk9A) = 0;
    }
    temp_r7 = temp_r3->unkC;
    temp_r6_2 = temp_r6 << 8;
    temp_r7->unk16 = (s16) ((me->x * 8) + temp_r6_2);
    temp_r6_3 = sp4 << 8;
    temp_r7->unk18 = (s16) ((me->y * 8) + temp_r6_3);
    temp_r7->unk4 = VramMalloc(0x46U);
    temp_r7->unk1A = 0x4C0;
    temp_r7->unk8 = 0;
    temp_r7->unkA = 0x25F;
    temp_r1 = temp_r3->unk2C;
    *temp_r1 = 1;
    temp_r7->unk14 = 0;
    temp_r7->unk1C = 0;
    *(temp_r1 + 1) = 0xFF;
    temp_r0_2 = temp_r3->unk2E;
    *temp_r0_2 = 0x10;
    *(temp_r0_2 + 3) = 0;
    temp_r7->unk28 = -1;
    temp_r7->unk30 = -1;
    temp_r7->unk18 = (s16) ((me->y * 8) + temp_r6_3);
    temp_r7->unk10 = 0x2000;
    temp_r7_2 = temp_r7 + 0x38;
    temp_r7_2->unk16 = (u16) ((me->x * 8) + temp_r6_2);
    temp_r7_2->unk18 = (s16) ((me->y * 8) + temp_r6_3);
    me->x = -2U;
    temp_r7_2->unk4 = VramMalloc(8U);
    temp_r7_2->unk1A = 0x480;
    temp_r7_2->unk8 = 0;
    temp_r7_2->unkA = 0x262;
    *(temp_r3->unk64) = 0;
    temp_r7_2->unk14 = 0;
    temp_r7_2->unk1C = 0;
    *(temp_r3->unk65) = -1;
    temp_r0_3 = temp_r3->unk66;
    *temp_r0_3 = 0x10;
    *(temp_r0_3 + 3) = 0;
    temp_r7_2->unk28 = -1;
    temp_r7_2->unk10 = 0x2000;
    gCamera.shiftY = -0x38;
    gCamera.maxX = temp_r7_2->unk16 - 0x40;
    gCamera.minX = (s32)((float gCamera.maxX) - 360.f);
    gMusicManagerState.unk1 = 0x10;
}

void Task_802611C(void) {
    s32 sp4;
    s32 sp8;
    s16 temp_r1_3;
    s16 temp_r4_2;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r3_2;
    s32 temp_r5;
    s32 temp_r5_3;
    s32 temp_r6;
    s32 temp_r7;
    s32 temp_r8_2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_4;
    s32 var_r1;
    s8 temp_r0_4;
    s8 temp_r1_4;
    s8 var_r0_3;
    u16 temp_r3;
    u16 temp_r3_3;
    EggHammerTank *tank;
    u16 temp_r5_2;
    u16 var_r0_5;
    void *temp_r8;

    tank = TASK_DATA(gCurTask);
    temp_r0 = tank->unk0;
    temp_r6 = tank->unkC;
    temp_r7 = tank->unk44;
    temp_r8 = temp_r0->unk0;
    temp_r1 = tank->unk94;
    temp_r5 = tank->unk96;
    temp_r0_2 = *temp_r5 + *temp_r1;
    *temp_r1 = (u16) temp_r0_2;
    if ((u32) ((temp_r0_2 + 0x237) << 0x10) > 0x026E0000U) {
        m4aSongNumStart(0x91U);
        *temp_r5 = (u16) (0 - *temp_r5);
        CreateScreenShake(0x800U, 0x40U, 0x100U, -1U, 0x80);
    }
    if (temp_r6->unk10 & 0x400) {
        var_r1 = tank->qUnk8C;
        var_r0 = *var_r1 + 0x100;
    } else {
        var_r1 = tank->qUnk8C;
        var_r0 = *var_r1 + 0xFFFFFF00;
    }
    *var_r1 = var_r0;
    temp_r5_2 = (u16) ((temp_r0->unk8 * 8) + (temp_r0->unk4 << 8) + ((s32) *(tank->qUnk8C) >> 8));
    temp_r6->unk10 = (s32) (temp_r6->unk10 & 0xFFFFFE7F);
    temp_r3 = gPlayer.moveState & 0x80;
    if (temp_r3 == 0) {
        gDispCnt &= 0x7FFF;
        gWinRegs[5] = temp_r3;
        gBldRegs.bldCnt = temp_r3;
        gBldRegs.bldY = temp_r3;
    }
    temp_r0_3 = tank->unk9B;
    sp4 = temp_r5_2 << 0x10;
    sp8 = (u16) ((temp_r8->unk1 * 8) + (temp_r0->unk6 << 8)) << 0x10;
    if (*temp_r0_3 == 0) {
        tank_2 = (s16) temp_r5_2;
        temp_r5_3 = sp8 >> 0x10;
        temp_r8_2 = sub_800BA5C(temp_r6, tank_2, temp_r5_3, &gPlayer);
        if ((s8) (u8) gNumSingleplayerCharacters == 2) {
            var_r0_2 = sub_800BA5C(temp_r6, tank_2, temp_r5_3, &gPartner);
        } else {
            var_r0_2 = 0;
        }
        if ((temp_r8_2 == 1) || (var_r0_2 == 1)) {
            temp_r2 = tank->unk9A;
            *temp_r2 = (u8) (*temp_r2 + 1);
            *temp_r0_3 = 0x20;
            temp_r0_4 = (s8) *temp_r2;
            if (temp_r0_4 == 7) {
                *temp_r0_3 = 0x40;
                gCurTask->main = sub_80264C8;
            } else if ((s32) temp_r0_4 > 4) {
                temp_r1_2 = tank->unk96;
                if ((s32) *temp_r1_2 > 0) {
                    var_r0_3 = (s8) *temp_r2 + 1;
                } else {
                    var_r0_3 = ~(s8) *temp_r2;
                }
                *temp_r1_2 = (s16) var_r0_3;
            }
            *(temp_r7 + 0x20) = 2;
            m4aSongNumStart(0x8FU);
        } else if ((temp_r8_2 == 2) || (var_r0_2 == 2)) {
            *(temp_r7 + 0x20) = 1;
        }
    }
    temp_r3_2 = sp4 >> 0x10;
    temp_r1_3 = temp_r3_2 - (u16) gCamera.x;
    temp_r6->unk16 = temp_r1_3;
    temp_r6->unk18 = (s16) ((sp8 >> 0x10) - (u16) gCamera.y);
    temp_r7->unk16 = temp_r1_3;
    temp_r7->unk18 = (u16) temp_r6->unk18;
    if (temp_r3_2 < (s32) (gCamera.minX - 0x40)) {
        temp_r6->unk10 = (s32) (temp_r6->unk10 | 0x400);
        temp_r7->unk10 = temp_r7->unk10 | 0x400;
    }
    if (temp_r3_2 > (s32) (gCamera.maxX + 0x40)) {
        temp_r6->unk10 &= ~0x400;
        temp_r7->unk10 &= ~0x400;
    }
    UpdateSpriteAnimation((Sprite *) temp_r6);
    UpdateSpriteAnimation((Sprite *) temp_r7);
    if (*(temp_r6 + 0x20) == 2) {
        temp_r7->unk18 = (u16) (temp_r7->unk18 - 1);
    }
    if (*temp_r0_3 != 0) {
        temp_r1_4 = (u8) *temp_r0_3 - 1;
        *temp_r0_3 = temp_r1_4;
        if ((s32) temp_r1_4 > 0x10) {
            if (!(temp_r1_4 & 2) && !(gPlayer.moveState & 0x80)) {
                temp_r6->unk10 = (s32) (temp_r6->unk10 | 0x100);
                gDispCnt |= 0x8000;
                gWinRegs[5] = 0x3F1F;
                gBldRegs.bldCnt = 0xBF;
                gBldRegs.bldY = 0x10;
            }
            
            DisplaySprite((Sprite *) temp_r6);
            DisplaySprite((Sprite *) temp_r7);
        } else if (temp_r1_4 & 2) {
            DisplaySprite((Sprite *) temp_r6);
            DisplaySprite((Sprite *) temp_r7);
        }
    } else {
        DisplaySprite((Sprite *) temp_r6);
        DisplaySprite((Sprite *) temp_r7);
    }
    temp_r3_3 = temp_r6->unk10 & 0x400;
    if (temp_r3_3 != 0) {
        sa2__gUnknown_03001944 = 0x3FF & *(tank->unk94);
        sa2__gUnknown_030017F0 = 0x100;
        sa2__gUnknown_03005394 = 0x100;
        sa2__gUnknown_03002A8C = 0;
        sa2__gUnknown_03004D58 = 0;
        sa2__gUnknown_0300194C = (s16) temp_r0->unk22;
        var_r0_5 = temp_r0->unk24;
    } else {
        sa2__gUnknown_03001944 = 0x3FF & *(tank->unk94);
        sa2__gUnknown_030017F0 = 0x100;
        sa2__gUnknown_03005394 = 0x100;
        sa2__gUnknown_03002A8C = temp_r3_3;
        sa2__gUnknown_03004D58 = temp_r3_3;
        sa2__gUnknown_0300194C = (s16) temp_r0->unk22;
        var_r0_5 = temp_r0->unk24;
    }
    sa2__gUnknown_03002820 = var_r0_5 - 0x24;
}

void sub_80264C8(void) {
    s32 sp4;
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s16 temp_r1_2;
    s16 temp_r1_6;
    s16 temp_r2;
    s16 temp_r3_2;
    s16 temp_r4_3;
    s16 temp_r5_3;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r1_5;
    s32 temp_r1_8;
    s32 temp_r2_2;
    s32 temp_r3_3;
    s32 temp_r4;
    s32 temp_r5_4;
    s32 temp_r6_2;
    s32 temp_r6_3;
    s32 temp_r7;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r1;
    s32 var_sb;
    s8 temp_r1_7;
    u16 temp_r2_3;
    u16 temp_r2_4;
    u16 temp_r2_5;
    u16 temp_r2_6;
    u16 temp_r3;
    u16 temp_r3_4;
    u16 temp_r4_2;
    u16 temp_r5_2;
    u16 temp_r6;
    u16 var_r0_3;
    u8 var_r1_2;
    void *temp_r5;

    sp8 = 0;
    spC = 0;
    temp_r3 = TASK_DATA(gCurTask);
    temp_r0 = temp_r3->unk0;
    temp_r7 = temp_r3->unkC;
    sp4 = temp_r3->unk44;
    temp_r5 = temp_r0->unk0;
    if (temp_r7->unk10 & 0x400) {
        *(temp_r3->unk96) = (s16) (((s8) *(temp_r3->unk9A) * 2) - 2);
    } else {
        *(temp_r3->unk96) = (s16) (-4 - (((s8) *(temp_r3->unk9A) - 3) * 2));
    }
    temp_r1 = temp_r3->unk94;
    temp_r2 = *(temp_r3->unk96) + *temp_r1;
    *temp_r1 = (u16) temp_r2;
    temp_r3_2 = temp_r2;
    sp10 = temp_r1;
    if ((s32) temp_r3_2 < 0xFFFFFD00) {
        *temp_r1 = (u16) (temp_r2 + 0x400);
        temp_r2_2 = temp_r3->qUnk8C;
        *temp_r2_2 = (s32) (*temp_r2_2 - (gSineTable[0x138] * 3));
        var_sb = temp_r2_2;
    } else {
        temp_r4 = temp_r0 + 0x8C;
        var_sb = temp_r4;
        if ((s32) temp_r3_2 > 0x100) {
            *sp10 = (s16) (temp_r2 + 0xFFFFFC00);
            *temp_r4 = (s32) (*temp_r4 + (gSineTable[0x138] * 3));
        }
    }
    temp_r1_2 = *sp10;
    if ((s32) temp_r1_2 <= 0xFFFFFDC8) {
        temp_r1_3 = temp_r3->unk9C;
        if (*temp_r1_3 == 0) {
            *temp_r1_3 = 1U;
            m4aSongNumStart(0x91U);
            CreateScreenShake(0x800U, 0x40U, 0x100U, -1U, M2C_ERROR(/* Unable to find stack arg 0x10 in block */), /* extra? */ 0x80);
        }
        var_r1 = (0x200 - (u16) *sp10) & 0x3FF;
        var_r0 = 0 - ((s32) ((gSineTable[0x138] - gSineTable[var_r1 + 0x100]) * 3) >> 9);
        goto block_15;
    }
    if ((s32) temp_r1_2 > 0x37) {
        temp_r1_4 = temp_r3->unk9C;
        if (*temp_r1_4 == 0) {
            *temp_r1_4 = 1U;
            m4aSongNumStart(0x91U);
            CreateScreenShake(0x800U, 0x40U, 0x100U, -1U, M2C_ERROR(/* Unable to find stack arg 0x10 in block */), /* extra? */ 0x80);
        }
        var_r1 = 0x3FF & (u16) *sp10;
        var_r0 = (s32) ((gSineTable[0x138] - gSineTable[var_r1 + 0x100]) * 3) >> 9;
block_15:
        sp8 = var_r0;
        spC = 0 - ((s32) ((gSineTable[var_r1] - gSineTable[0x38]) * 3) >> 9);
    } else {
        temp_r1_5 = temp_r3->unk9C;
        if (*temp_r1_5 == 1) {
            *temp_r1_5 = 0U;
        }
        if (temp_r7->unk10 & 0x400) {
            *var_sb = (s32) (*var_sb + 0x100);
        } else {
            *var_sb = (s32) (*var_sb + 0xFFFFFF00);
        }
    }
    temp_r6 = (u16) ((temp_r0->unk8 * 8) + (temp_r0->unk4 << 8) + ((s32) *var_sb >> 8) + sp8);
    temp_r5_2 = (u16) ((temp_r5->unk1 * 8) + (temp_r0->unk6 << 8) + spC);
    temp_r7->unk10 = (s32) (temp_r7->unk10 & 0xFFFFFE7F);
    temp_r4_2 = gPlayer.moveState & 0x80;
    if (temp_r4_2 == 0) {
        gDispCnt &= 0x7FFF;
        gWinRegs[5] = temp_r4_2;
        gBldRegs.bldCnt = temp_r4_2;
        gBldRegs.bldY = temp_r4_2;
    }
    temp_r0_2 = temp_r3->unk9B;
    sp14 = temp_r6 << 0x10;
    sp18 = temp_r5_2 << 0x10;
    if (*temp_r0_2 != 0) {
        goto block_49;
    }
    temp_r4_3 = (s16) temp_r6;
    temp_r5_3 = (s16) temp_r5_2;
    temp_r6_2 = sub_800BA5C(temp_r7, temp_r4_3, (s32) temp_r5_3);
    if ((s8) (u8) gNumSingleplayerCharacters == 2) {
        var_r0_2 = sub_800BA5C(temp_r7, temp_r4_3, (s32) temp_r5_3, &gPartner);
    } else {
        var_r0_2 = 0;
    }
    if ((temp_r6_2 != 1) && (var_r0_2 != 1)) {
block_49:
        temp_r3_3 = sp14 >> 0x10;
        temp_r1_6 = temp_r3_3 - (u16) gCamera.x;
        temp_r7->unk16 = temp_r1_6;
        temp_r7->unk18 = (s16) ((sp18 >> 0x10) - (u16) gCamera.y);
        sp4->unk16 = temp_r1_6;
        sp4->unk18 = (u16) temp_r7->unk18;
        if (spC == 0) {
            if (temp_r3_3 < (s32) (gCamera.minX - 0x40)) {
                temp_r7->unk10 = (s32) (temp_r7->unk10 | 0x400);
                sp4->unk10 = (s32) (sp4->unk10 | 0x400);
            } else if (temp_r3_3 > (s32) (gCamera.maxX + 0x40)) {
                temp_r7->unk10 = (s32) (temp_r7->unk10 & 0xFFFFFBFF);
                sp4->unk10 = (s32) (sp4->unk10 & 0xFFFFFBFF);
            }
        }
        UpdateSpriteAnimation((Sprite *) temp_r7);
        UpdateSpriteAnimation((Sprite *) sp4);
        if (*(temp_r7 + 0x20) == 2) {
            sp4->unk18 = (u16) (sp4->unk18 - 1);
        }
        if (*temp_r0_2 != 0) {
            temp_r1_7 = (u8) *temp_r0_2 - 1;
            *temp_r0_2 = temp_r1_7;
            if ((s32) temp_r1_7 > 0x10) {
                if (!(temp_r1_7 & 2) && !(gPlayer.moveState & 0x80)) {
                    temp_r7->unk10 = (s32) (temp_r7->unk10 | 0x100);
                    gDispCnt |= 0x8000;
                    gWinRegs[5] = 0x3F1F;
                    gBldRegs.bldCnt = 0xBF;
                    gBldRegs.bldY = 0x10;
                }
                
                DisplaySprite((Sprite *) temp_r7);
                DisplaySprite((Sprite *) sp4);
            } else if (temp_r1_7 & 2) {
                DisplaySprite((Sprite *) temp_r7);
                DisplaySprite((Sprite *) sp4);
            }
        } else {
            DisplaySprite((Sprite *) temp_r7);
            DisplaySprite((Sprite *) sp4);
        }
        temp_r3_4 = temp_r7->unk10 & 0x400;
        if (temp_r3_4 != 0) {
            sa2__gUnknown_03001944 = 0x3FF & (u16) *sp10;
            sa2__gUnknown_030017F0 = 0x100;
            sa2__gUnknown_03005394 = 0x100;
            sa2__gUnknown_03002A8C = 0;
            sa2__gUnknown_03004D58 = 0;
            sa2__gUnknown_0300194C = (s16) temp_r0->unk22;
            var_r0_3 = temp_r0->unk24;
        } else {
            sa2__gUnknown_03001944 = 0x3FF & (u16) *sp10;
            sa2__gUnknown_030017F0 = 0x100;
            sa2__gUnknown_03005394 = 0x100;
            sa2__gUnknown_03002A8C = temp_r3_4;
            sa2__gUnknown_03004D58 = temp_r3_4;
            sa2__gUnknown_0300194C = (s16) temp_r0->unk22;
            var_r0_3 = temp_r0->unk24;
        }
        sa2__gUnknown_03002820 = var_r0_3 - 0x24;
        return;
    }
    temp_r1_8 = temp_r3->unk9A;
    *temp_r1_8 = (u8) (*temp_r1_8 + 1);
    *temp_r0_2 = 0x20;
    *(sp4 + 0x20) = 2;
    *(temp_r3->unk9E) = 0xFE00;

    // INCREMENT_SCORE_BASE()
    temp_r6_3 = gLevelScore;
    temp_r0_3 = temp_r6_3 + 0x3E8;
    gLevelScore = temp_r0_3;
    temp_r5_4 = Div(temp_r0_3, 0xC350);
    if ((temp_r5_4 != Div(temp_r6_3, 0xC350)) && (gGameMode == 0)) {
        gNumLives = (u8) (gNumLives + 1);
    }
    m4aSongNumStart(0x90U);
    var_r1_2 = 0;
    do {
        (*(temp_r3->unk78 + (var_r1_2 * 4)))->unk8 = sub_80271E4;
        var_r1_2 = (u8) (var_r1_2 + 1);
    } while ((u32) var_r1_2 <= 4U);
    temp_r0->unk74->unk8 = sub_8027600;
    *var_sb = (s32) (*var_sb + (sp8 << 8));
    *(temp_r3->unk90) = (s32) (spC << 8);
    *(temp_r0 + 0x98) = 0;
    temp_r7->unkA = 0x264;
    *(temp_r7 + 0x20) = 0;
    temp_r2_3 = sub_80168F0(sp14 >> 0x10, sp18 >> 0x10, 0x10, 0x265, 0)->unk6;
    *(temp_r2_3->unk46) = 0xFE00;
    *(temp_r2_3->unk48) = 0;
    *(temp_r2_3->unk42) = 0;
    if (temp_r7->unk10 & 0x400) {
        (temp_r2_3->unk0)->unk32 = 0xFF00;
        *(temp_r2_3->unk44) = 0x400;
    } else {
        *(temp_r2_3->unk44) = 0xFC00;
    }
    *(temp_r2_3->unk40) = 0x3C;
    temp_r2_4 = sub_80168F0(sp14 >> 0x10, sp18 >> 0x10, 0x10, 0x266, 0)->unk6;
    *(temp_r2_4->unk46) = 0xFE00;
    *(temp_r2_4->unk48) = 0;
    *(temp_r2_4->unk42) = 0;
    if (temp_r7->unk10 & 0x400) {
        (temp_r2_4->unk0)->unk32 = 0xFF00;
        *(temp_r2_4->unk44) = 0x400;
    } else {
        *(temp_r2_4->unk44) = 0xFC00;
    }
    *(temp_r2_4->unk40) = 0x3C;
    temp_r2_5 = sub_80168F0(sp14 >> 0x10, sp18 >> 0x10, 0x10, 0x267, 0)->unk6;
    *(temp_r2_5->unk46) = 0xFE00;
    *(temp_r2_5->unk48) = 0;
    *(temp_r2_5->unk42) = 0;
    if (temp_r7->unk10 & 0x400) {
        (temp_r2_5->unk0)->unk32 = 0xFF00;
        *(temp_r2_5->unk44) = 0xFC00;
    } else {
        *(temp_r2_5->unk44) = 0x400;
    }
    *(temp_r2_5->unk40) = 0x3C;
    temp_r2_6 = sub_80168F0(sp14 >> 0x10, sp18 >> 0x10, 0x10, 0x268, 0)->unk6;
    *(temp_r2_6->unk46) = 0xFE00;
    *(temp_r2_6->unk48) = 0;
    *(temp_r2_6->unk42) = 0;
    if (temp_r7->unk10 & 0x400) {
        (temp_r2_6->unk0)->unk32 = 0xFF00;
        *(temp_r2_6->unk44) = 0xFC00;
    } else {
        *(temp_r2_6->unk44) = 0x400;
    }
    *(temp_r2_6->unk40) = 0x3C;
    gCamera.minX = (s16) (u16) gCamera.x;
    gCamera.maxX = (u16) gCamera.x + DISPLAY_WIDTH;
    gCurTask->main = sub_8026C44;
    sub_8026C44();
}

void sub_8026C44(void) {
    s32 sp4;
    s32 sp8;
    s32 spC;
    s16 temp_r0;
    s16 temp_r0_3;
    s16 temp_r0_6;
    s16 temp_r1;
    s16 temp_r1_5;
    s32 temp_r0_2;
    s32 temp_r0_4;
    s32 temp_r0_5;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r3_6;
    s32 temp_r3_7;
    s32 temp_r4;
    s32 temp_r5;
    s32 temp_r5_2;
    s32 temp_r6;
    s32 temp_r6_2;
    s32 temp_r7;
    u16 temp_r1_2;
    u16 temp_r2;
    u16 temp_r3_3;
    u16 temp_r3_4;
    u16 temp_r3_5;

    temp_r2 = TASK_DATA(gCurTask);
    temp_r7 = temp_r2->unk0;
    temp_r3 = temp_r2->unkC;
    sp4 = temp_r2->unk44;
    temp_r6 = temp_r2->unk9E;
    *temp_r6 = (u16) (*temp_r6 + 0x28);
    temp_r5 = temp_r2->unk90;
    temp_r3_2 = *temp_r5 + (s16) *temp_r6;
    *temp_r5 = temp_r3_2;
    temp_r1 = (temp_r7->unk8 * 8) + (temp_r7->unk4 << 8) + ((s32) *(temp_r2->qUnk8C) >> 8);
    temp_r0 = (temp_r7->unk0->unk1 * 8) + (temp_r7->unk6 << 8) + (temp_r3_2 >> 8);
    temp_r3_3 = (u16) temp_r1;
    temp_r0_2 = sa2__sub_801F100(temp_r0 - 8, (s32) temp_r1, 1, 8, sa2__sub_801EC3C);
    if (temp_r0_2 < 0) {
        *temp_r5 = (s32) (*temp_r5 + (temp_r0_2 << 8));
        temp_r1_2 = *temp_r6;
        temp_r0_3 = ((s32) (temp_r1_2 << 0x10) >> 0x12) - temp_r1_2;
        *temp_r6 = (u16) temp_r0_3;
        if ((s32) temp_r0_3 > -Q(1)) {
            *temp_r6 = 0U;
            gCurTask->main = sub_8026ED0;
        }
    }
    temp_r3->unk10 = (s32) (temp_r3->unk10 & 0xFFFFFE7F);
    temp_r3_4 = gPlayer.moveState & 0x80;
    if (temp_r3_4 == 0) {
        gDispCnt &= 0x7FFF;
        gWinRegs[5] = temp_r3_4;
        gBldRegs.bldCnt = temp_r3_4;
        gBldRegs.bldY = temp_r3_4;
    }
    temp_r1_3 = temp_r2->unk98;
    temp_r0_4 = *temp_r1_3 + 1;
    *temp_r1_3 = (u16) temp_r0_4;
    spC = (u16) temp_r0 << 0x10;
    sp8 = temp_r3_3 << 0x10;
    if (!(temp_r0_4 & 7)) {
        temp_r0_5 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
        gPseudoRandom = temp_r0_5;
        temp_r4 = 7 & temp_r0_5;
        temp_r3_5 = CreateNutsAndBoltsTask(0x2000U, (void *) (s32) VramMalloc((u32) gUnknown_080BB434[temp_r4]), gUnknown_080BB41C[temp_r4], gUnknown_080BB42C[temp_r4], M2C_ERROR(/* Unable to find stack arg 0x10 in block */), /* extra? */ TaskDestructor_NutsAndBolts)->data;
        temp_r5_2 = temp_r3_5->unk0;
        temp_r0_6 = (s16) temp_r3_3;
        temp_r5_2->unk30 = (s32) (temp_r0_6 << 8);
        temp_r1_4 = spC >> 0x10;
        temp_r5_2->unk34 = (s32) ((temp_r1_4 - 0x20) << 8);
        temp_r5_2->unk10 = 0x2000;
        temp_r5_2->unk1A = 0x440;
        temp_r5_2->unk3E = 0x28;
        *(temp_r3_5->unk40) = 0x20;
        temp_r6_2 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
        gPseudoRandom = temp_r6_2;
        temp_r3_6 = 0x1FF & temp_r6_2;
        temp_r5_2->unk3A = (s16) ((s32) (0 - (gSineTable[temp_r3_6] * 0x600)) >> 0xE);
        temp_r5_2->unk38 = (s16) ((s32) (0 - (gSineTable[temp_r3_6 + 0x100] * 0x600)) >> 0xE);
        temp_r3_7 = (0x196225 * temp_r6_2) + 0x3C6EF35F;
        gPseudoRandom = temp_r3_7;
        sub_8017540(((temp_r0_6 + (0x3F & temp_r3_7)) - 0x20) << 8, (temp_r1_4 - (((s32) (temp_r3_7 & 0x3F0000) >> 0x10) + 0x20)) << 8);
    }
    temp_r1_5 = (sp8 >> 0x10) - (u16) gCamera.x;
    temp_r3->unk16 = temp_r1_5;
    temp_r3->unk18 = (s16) ((spC >> 0x10) - (u16) gCamera.y);
    sp4->unk16 = temp_r1_5;
    sp4->unk18 = (u16) temp_r3->unk18;
    UpdateSpriteAnimation((Sprite *) temp_r3);
    UpdateSpriteAnimation((Sprite *) sp4);
    if (*(temp_r3 + 0x20) == 2) {
        sp4->unk18 = (u16) (sp4->unk18 - 1);
    }
    DisplaySprite((Sprite *) temp_r3);
    DisplaySprite((Sprite *) sp4);
}

void sub_8026ED0(void) {
    s32 sp4;
    s32 sp8;
    s32 spC;
    s16 temp_r0_3;
    s16 temp_r1_5;
    s16 temp_r1_6;
    s16 temp_r4;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r1_4;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r3_2;
    s32 temp_r3_3;
    s32 temp_r4_2;
    s32 temp_r5;
    s32 temp_r6;
    u16 temp_r0;
    u16 temp_r1_2;
    u16 temp_r1_3;
    u16 temp_r3;
    u16 temp_r7;

    temp_r7 = TASK_DATA(gCurTask);
    temp_r2 = temp_r7->unk0;
    sp4 = temp_r7->unkC;
    temp_r1 = temp_r7->unk44;
    temp_r1_2 = (u16) ((temp_r2->unk8 * 8) + (temp_r2->unk4 << 8) + ((s32) *(temp_r7->qUnk8C) >> 8));
    sp8 = (s32) temp_r1_2;
    temp_r1_3 = (u16) ((temp_r2->unk0->unk1 * 8) + (temp_r2->unk6 << 8) + ((s32) *(temp_r7->unk90) >> 8));
    spC = (s32) temp_r1_3;
    temp_r1_4 = temp_r7->unk98;
    temp_r0 = *temp_r1_4;
    temp_r2_2 = temp_r0 + 1;
    *temp_r1_4 = (u16) temp_r2_2;
    if ((u32) temp_r0 > 0xF0U) {
        temp_r4 = (s16) temp_r1_2;
        sub_8015C5C(temp_r4, (s32) ((temp_r1_3 << 0x10) + 0xFFE00000) >> 0x10);
        CreateBossCapsule(temp_r4, (s16) temp_r1_3);
        gMusicManagerState.unk1 = 0x30;
        TaskDestroy(gCurTask);
        return;
    }
    if ((temp_r2_2 & 7) == 0) {
        temp_r4_2 = PseudoRandom32() & 0x7;
        temp_r3 = CreateNutsAndBoltsTask(0x2000U, (void *) (s32) VramMalloc((u32) gUnknown_080BB434[temp_r4_2]), gUnknown_080BB41C[temp_r4_2], gUnknown_080BB42C[temp_r4_2], M2C_ERROR(/* Unable to find stack arg 0x10 in block */), /* extra? */ TaskDestructor_NutsAndBolts)->data;
        temp_r5 = temp_r3->unk0;
        temp_r0_3 = (s16) temp_r1_2;
        temp_r5->unk30 = (s32) (temp_r0_3 << 8);
        temp_r1_5 = (s16) temp_r1_3;
        temp_r5->unk34 = (s32) ((temp_r1_5 - 0x20) << 8);
        temp_r5->unk10 = 0x2000;
        temp_r5->unk1A = 0x440;
        temp_r5->unk3E = 0x28;
        *(temp_r3->unk40) = 0x20;
        temp_r6 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
        gPseudoRandom = temp_r6;
        temp_r3_2 = 0x1FF & temp_r6;
        temp_r5->unk3A = (s16) ((s32) (0 - (gSineTable[temp_r3_2] * 0x600)) >> 0xE);
        temp_r5->unk38 = (s16) ((s32) (0 - (gSineTable[temp_r3_2 + 0x100] * 0x600)) >> 0xE);
        temp_r3_3 = (0x196225 * temp_r6) + 0x3C6EF35F;
        gPseudoRandom = temp_r3_3;
        sub_8017540(((temp_r0_3 + (0x3F & temp_r3_3)) - 0x20) << 8, (temp_r1_5 - (((s32) (temp_r3_3 & 0x3F0000) >> 0x10) + 0x20)) << 8);
    }
    temp_r1_6 = (s16) sp8 - (u16) gCamera.x;
    sp4->unk16 = temp_r1_6;
    sp4->unk18 = (s16) ((s16) spC - (u16) gCamera.y);
    temp_r1->unk16 = temp_r1_6;
    temp_r1->unk18 = (u16) sp4->unk18;
    UpdateSpriteAnimation((Sprite *) sp4);
    UpdateSpriteAnimation((Sprite *) temp_r1);
    if (*(temp_r7->unk2C) == 2) {
        temp_r1->unk18 = (u16) (temp_r1->unk18 - 1);
    }
    DisplaySprite((Sprite *) sp4);
    DisplaySprite((Sprite *) temp_r1);
}

typedef struct EHTArm {
    /* 0x00 */ Sprite s;
    /* 0x30 */ SpriteTransform transform;
    /* 0x3C */ u8 padding3C[0x14];
    /* 0x50 */ u8 unk50;
} EHTArm; /* 0x54 */

struct Task *CreateEHTArm(u8 arg0) {
    s32 sp4;
    SpriteTransform *tf;
    Sprite *s;
    struct Task *t;
    EHTArm *ehtArm;
    
    t = TaskCreate(Task_EHTArm, sizeof(EHTArm), 0x2000 | arg0, 0U, TaskDestructor_EHTArm);
    ehtArm = TASK_DATA(t);
    s = ehtArm->s;
    tf = ehtArm->transform;
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
    s->animspeed  = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2030;

    tf->unk0 = 0;
    tf->qScaleX = Q(1);
    tf->qScaleY = Q(1);
    tf->x = arg0 * 16;
    tf->y = 0;

    UpdateSpriteAnimation(s);

    return t;
}

void sub_80271E4(void) {
    s16 var_r0;
    s32 temp_r3;
    s32 temp_r6;
    s32 var_r1;
    u16 temp_r7;
    u8 temp_r4;

    temp_r7 = TASK_DATA(gCurTask);
    temp_r6 = temp_r7->unk0;
    *(temp_r7->unk30) = 0;
    temp_r3 = temp_r7->unk50;
    temp_r4 = *temp_r3;
    temp_r6->unk3C = (s16) (((s32) (gSineTable[sa2__gUnknown_03001944 + 0x100] * 0x10 * temp_r4) >> 0xE) + ((u16) gCamera.x + (u16) sa2__gUnknown_0300194C));
    temp_r6->unk3E = (s16) (((s32) (gSineTable[sa2__gUnknown_03001944] * 0x10 * temp_r4) >> 0xE) + ((u16) gCamera.y + (u16) sa2__gUnknown_03002820));
    if (1 & *temp_r3) {
        var_r1 = temp_r7->unk4C;
        var_r0 = +Q(2);
    } else {
        var_r1 = temp_r7->unk4C;
        var_r0 = -Q(2);
    }
    *var_r1 = var_r0;
    *(temp_r7->unk4E) = 0xFA00;
    temp_r6->unk44 = 0;
    temp_r6->unk48 = 0;
    *(temp_r7->unk40) = 0;
    temp_r6->unk10 = (s32) (temp_r6->unk10 & ~0x20);
    gCurTask->main = sub_80272D0;
    sub_80272D0();
}

void sub_80272D0(void) {
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

void sub_8027600(void) {
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
        Task_802611C();
    }
}

void TaskDestructor_EggHammerTank(struct Task *t) {
    EggHammerTank *tank;
    s32 temp_r4;
    u16 temp_r3;

    tank = TASK_DATA(t);

    temp_r3 = gPlayer.moveState & 0x80;
    if (temp_r3 == 0) {
        gDispCnt &= 0x7FFF;
        gWinRegs[5] = temp_r3;
        gBldRegs.bldCnt = temp_r3;
        gBldRegs.bldY = temp_r3;
    }
    VramFree(tank->s->graphics.dest);
    VramFree(tank->s2->graphics.dest);
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
    
    EHTArm *ehtArm = TASK_DATA(t);
    VramFree(ehtArm->graphics.dest);
}

void TaskDestructor_EHTHammer(struct Task *t) {
    EHTHammer *ehtHammer = TASK_DATA(t);
    VramFree(ehtHammer->graphics.dest);
}
#endif