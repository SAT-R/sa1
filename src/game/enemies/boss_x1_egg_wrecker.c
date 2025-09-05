#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ Sprite s2;
    /* 0x6C */ u8 filler6C[0x1A];
    /* 0x86 */ s8 unk86;
    /* 0x87 */ s8 unk87;
    /* 0x88 */ u8 filler88[0x8];
} EggWrecker; /* 0x90 */

/* Sonic 1's Green Hill Zone Boss */

void sub_80342A0(s16 worldX, s16 worldY)
{
    s16 temp_r6;
    s16 temp_r7;
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r2;
    u16 temp_r3;
    EggWrecker *boss;
    Sprite *s;
    Sprite *s2;
    EHit collPlayer;
    EHit collPartner;

    boss = TASK_DATA(gCurTask);
    s = &boss->s;
    s->frameFlags &= ~0x180;

    if (PLAYER_IS_ALIVE) {
        gDispCnt &= 0x7FFF;
        gWinRegs[WINREG_WINOUT] = 0;
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
            boss->unk87 = 0x20U;
            s2->variant = 2;
            s2->prevVariant = -1;
            s2->frameFlags &= 0xFFFFBFFF;
            m4aSongNumStart(SE_BOSS_HIT);
            return;
        }

        if ((collPlayer == 2) || (collPartner == 2)) {
            s2->variant = 1;
            s2->prevVariant = -1;
            s2->frameFlags &= 0xFFFFBFFF;
        }
    }
}

#if 0
void sub_80343E0(void) {
    s32 temp_r2;
    s32 temp_r3;
    s8 temp_r1;
    u16 temp_r0;

    temp_r0 = gCurTask->data;
    temp_r3 = temp_r0 + 0xC;
    temp_r2 = temp_r0 + 0x87;
    if ((s8) *temp_r2 != 0) {
        temp_r1 = *temp_r2 - 1;
        *temp_r2 = (u8) temp_r1;
        if (((s32) temp_r1 > 0x10) && !(temp_r1 & 2) && !(gPlayer.moveState & 0x80)) {
            temp_r3->unk10 = (s32) (temp_r3->unk10 | 0x100);
            gDispCnt |= 0x8000;
            gWinRegs[5] = 0x3F1F;
            gBldRegs.bldCnt = 0xBF;
            gBldRegs.bldY = 0x10;
        }
    }
    DisplaySprite((Sprite *) temp_r3);
    DisplaySprite((Sprite *) (temp_r0 + 0x3C));
}

void CreateEntity_EggWrecker(s32 arg0, u16 arg1, u16 arg2, u8 arg3) {
    s32 sp4;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r2_2;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r6;
    u16 temp_r1;
    u16 temp_r2;
    u16 temp_r5;

    temp_r1 = arg1;
    temp_r2 = arg2;
    if ((u32) gGameMode > 1U) {
        arg0->unk0 = -2U;
        return;
    }
    temp_r5 = TaskCreate(Task_EggWreckerInit, sizeof(EggWrecker), 0x2000U, 0U, TaskDestructor_EggWrecker)->data;
    temp_r1_2 = temp_r5 + 0x03000000;
    temp_r1_2->unk4 = temp_r1;
    temp_r1_2->unk6 = temp_r2;
    temp_r1_2->unk0 = arg0;
    temp_r1_2->unk8 = (u8) arg0->unk0;
    temp_r1_2->unk9 = arg3;
    *(temp_r5 + 0x84) = 0x78;
    *(temp_r5 + 0x86) = 0;
    *(temp_r5 + 0x87) = 0;
    *(temp_r5 + 0x8D) = 0;
    *(temp_r5 + 0x8C) = 0;
    temp_r1_2->unk6C = 0x4000;
    temp_r1_2->unk70 = 0xFFFFA000;
    temp_r1_2->unk74 = 0;
    temp_r1_2->unk78 = 0;
    *(temp_r5 + 0x88) = 0;
    *(temp_r5 + 0x8A) = 0;
    temp_r6 = temp_r1 << 8;
    temp_r2_2 = temp_r5 + 0x7C;
    *temp_r2_2 = (s16) ((arg0->unk0 * 8) + temp_r6);
    temp_r1_3 = temp_r2 << 8;
    temp_r1_4 = temp_r5 + 0x7E;
    *temp_r1_4 = (u16) ((arg0->unk1 * 8) + temp_r1_3);
    temp_r4 = temp_r5 + 0xC;
    temp_r4->unk16 = (u16) *temp_r2_2;
    temp_r4->unk18 = (u16) *temp_r1_4;
    sp4 = 0;
    temp_r4->unk4 = VramMalloc(0x1EU);
    temp_r4->unk1A = 0x580;
    temp_r4->unk8 = 0;
    temp_r4->unkA = 0x2AC;
    *(temp_r5 + 0x2C) = 0;
    temp_r4->unk14 = 0;
    temp_r4->unk1C = 0;
    *(temp_r5 + 0x2D) = 0xFF;
    *(temp_r5 + 0x2E) = 0x10;
    *(temp_r5 + 0x31) = 0;
    temp_r4->unk28 = -1;
    temp_r4->unk10 = 0x2000;
    temp_r4_2 = temp_r5 + 0x3C;
    temp_r4_2->unk16 = (s16) ((arg0->unk0 * 8) + temp_r6);
    temp_r4_2->unk18 = (s16) ((arg0->unk1 * 8) + temp_r1_3);
    arg0->unk0 = -2U;
    sp4 = 0;
    temp_r4_2->unk4 = VramMalloc(8U);
    temp_r4_2->unk1A = 0x540;
    temp_r4_2->unk8 = 0;
    temp_r4_2->unkA = 0x2AE;
    *(temp_r5 + 0x5C) = 0;
    temp_r4_2->unk14 = 0;
    temp_r4_2->unk1C = 0;
    *(temp_r5 + 0x5D) = -1;
    *(temp_r5 + 0x5E) = 0x10;
    *(temp_r5 + 0x61) = 0;
    temp_r4_2->unk28 = -1;
    temp_r4_2->unk10 = 0x2000;
}

void Task_EggWreckerInit(void) {
    s16 temp_r3_2;
    s32 temp_r2;
    s32 temp_r3;
    s32 temp_r4;
    u16 temp_r0_2;
    u16 temp_r1;
    u8 temp_r0;
    u8 var_r0;

    temp_r1 = gCurTask->data;
    temp_r4 = temp_r1 + 0x0300008D;
    temp_r0 = *temp_r4;
    switch (temp_r0) {                              /* irregular */
    case 0:
        temp_r3 = temp_r1 + 0x7C;
        if ((s32) (*temp_r3 - 0x78) <= (s32) gCamera.x) {
            temp_r0_2 = (u16) *temp_r3;
            gCamera.minX = temp_r0_2 - 0x78;
            gCamera.maxX = temp_r0_2 + 0x78;
            var_r0 = 1;
block_7:
            *temp_r4 = var_r0;
        }
        break;
    case 1:
        temp_r2 = temp_r1 + 0x7E;
        temp_r3_2 = *temp_r2;
        if ((s32) (temp_r3_2 - 0x40) <= (s32) gCamera.y) {
            sub_80174DC(temp_r3_2, (s16) ((u16) *temp_r2 + 0xA0));
            var_r0 = 2;
            goto block_7;
        }
        break;
    }
    if ((gCamera.minX == (*(temp_r1 + 0x0300007C) - 0x78)) && (gCamera.maxY == (*(temp_r1 + 0x0300007E) + 0xA0))) {
        *(temp_r1 + 0x0300008D) = 0;
        (temp_r1 + 0x03000000)->unk78 = 0x100;
        gCurTask->main = Task_8034718;
        gMusicManagerState.unk1 = 0x14;
    }
}

void Task_8034718(void) {
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r1_3;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r2_4;
    s32 temp_r2_5;
    s32 temp_r2_6;
    s32 temp_r3;
    s32 temp_r3_3;
    s32 temp_r4;
    s32 temp_r6;
    u16 temp_r0;
    u16 temp_r0_4;
    u16 temp_r1_2;
    u16 temp_r2_3;
    u16 temp_r3_2;
    u16 temp_r5;
    u8 temp_r0_2;

    temp_r5 = gCurTask->data;
    temp_r6 = temp_r5 + 0x03000000;
    temp_r2 = temp_r5 + 0x3C;
    temp_r1 = temp_r6->unk6C + temp_r6->unk74;
    temp_r6->unk6C = temp_r1;
    temp_r2_2 = temp_r6->unk70 + temp_r6->unk78;
    temp_r6->unk70 = temp_r2_2;
    temp_r1_2 = (u16) ((temp_r1 >> 8) + *(temp_r5 + 0x7C));
    temp_r2_3 = (u16) ((temp_r2_2 >> 8) + *(temp_r5 + 0x7E));
    *(temp_r5 + 0x80) = temp_r1_2;
    *(temp_r5 + 0x82) = temp_r2_3;
    temp_r3 = gCurTask->data + 0xC;
    temp_r3->unk16 = (s16) ((s16) temp_r1_2 - (u16) gCamera.x);
    temp_r3->unk18 = (s16) ((s16) temp_r2_3 - (u16) gCamera.y);
    UpdateSpriteAnimation((Sprite *) (temp_r5 + 0xC));
    UpdateSpriteAnimation((Sprite *) temp_r2);
    temp_r0 = gCurTask->data;
    temp_r1_3 = temp_r0 + 0xC;
    temp_r2_4 = temp_r0 + 0x3C;
    temp_r2_4->unk16 = (u16) temp_r1_3->unk16;
    temp_r3_2 = temp_r1_3->unk18;
    temp_r2_4->unk18 = temp_r3_2;
    if (temp_r2_4->unkA == 0x2B6) {
        temp_r2_4->unk18 = (u16) (temp_r3_2 - 3);
    }
    sub_80343E0();
    temp_r4 = temp_r5 + 0x8D;
    temp_r0_2 = *temp_r4;
    switch (temp_r0_2) {                            /* irregular */
    case 0:
        if ((s32) temp_r6->unk70 > 0x1FFF) {
            temp_r6->unk70 = 0x2000;
            temp_r6->unk74 = 0xFFFFFF00;
            temp_r6->unk78 = 0xFFFFFFF0;
block_13:
            *temp_r4 = (u8) (*temp_r4 + 1);
            return;
        }
        return;
    case 1:
        if ((s32) temp_r6->unk6C <= 0) {
            temp_r6->unk6C = 0;
            temp_r6->unk74 = 0;
            temp_r6->unk78 = 0;
            *(temp_r5 + 0x84) = 4;
            goto block_13;
        }
        break;
    case 2:
        temp_r2_5 = temp_r5 + 0x84;
        temp_r0_3 = *temp_r2_5 - 1;
        *temp_r2_5 = (u16) temp_r0_3;
        if ((temp_r0_3 << 0x10) == 0) {
            *(temp_r5 + 0x5C) = 1;
            *(temp_r5 + 0x5D) = 0xFF;
            *(temp_r5 + 0x88) = 0x100;
            *(temp_r5 + 0x8A) = 0x100;
            *temp_r2_5 = 0x40U;
            *temp_r4 = (u8) (*temp_r4 + 1);
            sub_8035010();
            return;
        }
        break;
    case 3:
        temp_r2_6 = temp_r5 + 0x84;
        temp_r0_4 = *temp_r2_6;
        if (temp_r0_4 != 0) {
            *temp_r2_6 = (u16) (temp_r0_4 - 1);
        }
        temp_r3_3 = temp_r5 + 0x5C;
        if (temp_r2->unk10 & 0x4000) {
            *temp_r3_3 = 0U;
            *(temp_r5 + 0x5D) = 0xFF;
        }
        if ((*temp_r3_3 == 0) && (*temp_r2_6 == 0)) {
            temp_r6->unk74 = -0x30;
            *(temp_r5 + 0x8C) = 0xFF;
            *temp_r4 = 0U;
            gCurTask->main = Task_803491C;
            sub_80174DC((s16) ((u16) gCamera.minY - 0x50), gCamera.maxY);
        }
        break;
    }
}

void Task_803491C(void) {
    s16 temp_r1_5;
    s16 temp_r6_2;
    s16 temp_r7;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r2;
    s32 temp_r2_3;
    s32 temp_r2_4;
    s32 temp_r2_5;
    s32 temp_r4;
    s32 temp_r6;
    s32 var_r0;
    u16 temp_r0;
    u16 temp_r0_3;
    u16 temp_r1_2;
    u16 temp_r2_2;
    u16 temp_r3;
    u16 temp_r3_2;
    u16 temp_r5;
    u16 var_r1;
    u8 temp_r0_4;

    temp_r5 = gCurTask->data;
    temp_r4 = temp_r5 + 0x03000000;
    temp_r1 = temp_r5 + 0xC;
    temp_r2 = temp_r5 + 0x3C;
    temp_r4->unk6C = (s32) (temp_r4->unk6C + temp_r4->unk74);
    temp_r4->unk70 = (s32) (temp_r4->unk70 + temp_r4->unk78);
    temp_r6 = temp_r5 + 0x88;
    temp_r1_2 = (*temp_r6 - 4) & 0x3FF;
    *temp_r6 = temp_r1_2;
    if ((0x1FF & temp_r1_2) == 0x100) {
        temp_r1->unk10 = (s32) (temp_r1->unk10 ^ 0x400);
        temp_r2->unk10 = (s32) (temp_r2->unk10 ^ 0x400);
    }
    temp_r0 = (u16) (((s32) temp_r4->unk6C >> 8) + *(temp_r5 + 0x7C));
    temp_r2_2 = (u16) (((s32) ((u16) gSineTable[((((s16) *temp_r6 + 0x100) * 2) & 0x3FF) + 0x100] << 0x10) >> 0x1D) + (((s32) temp_r4->unk70 >> 8) + *(temp_r5 + 0x7E)));
    *(temp_r5 + 0x80) = temp_r0;
    *(temp_r5 + 0x82) = temp_r2_2;
    temp_r0_2 = (s32) ((u16) gSineTable[(s16) *temp_r6 + 0x100] << 0x10) >> 0x16;
    var_r1 = (u16) temp_r0_2;
    if ((s32) (s16) temp_r0_2 > 0xFF) {
        var_r1 = 0xFF;
    }
    *(temp_r5 + 0x0300008A) = (s16) ((u32) ((var_r1 << 0x10) + 0x03000000) >> 0x10);
    temp_r6_2 = (s16) temp_r0;
    temp_r7 = (s16) temp_r2_2;
    sub_80342A0(temp_r6_2, temp_r7);
    if ((s32) (s8) *(temp_r5 + 0x86) > 3) {
        sub_8034B7C();
        return;
    }
    temp_r1_3 = gCurTask->data + 0xC;
    temp_r1_3->unk16 = (s16) (temp_r6_2 - (u16) gCamera.x);
    temp_r1_3->unk18 = (s16) (temp_r7 - (u16) gCamera.y);
    temp_r3 = gCurTask->data;
    temp_r2_3 = temp_r3 + 0x5C;
    if ((*temp_r2_3 != 0) && ((temp_r3 + 0x3C)->unk10 & 0x4000)) {
        *temp_r2_3 = 0U;
        *(temp_r3 + 0x5D) = 0xFF;
    }
    UpdateSpriteAnimation((Sprite *) temp_r1);
    UpdateSpriteAnimation((Sprite *) temp_r2);
    temp_r0_3 = gCurTask->data;
    temp_r1_4 = temp_r0_3 + 0xC;
    temp_r2_4 = temp_r0_3 + 0x3C;
    temp_r2_4->unk16 = (u16) temp_r1_4->unk16;
    temp_r3_2 = temp_r1_4->unk18;
    temp_r2_4->unk18 = temp_r3_2;
    if (temp_r2_4->unkA == 0x2B6) {
        temp_r2_4->unk18 = (u16) (temp_r3_2 - 3);
    }
    sub_80343E0();
    temp_r2_5 = temp_r5 + 0x0300008D;
    temp_r0_4 = *temp_r2_5;
    switch (temp_r0_4) {                            /* irregular */
    case 0:
        if ((u32) ((*(temp_r5 + 0x03000088) + 0xFFFFFEFF) << 0x10) <= 0x01FF0000U) {
            temp_r4->unk74 = 0;
            var_r0 = *temp_r2_5 + 1;
block_27:
            *temp_r2_5 = (u8) var_r0;
        }
        return;
    case 1:
        if ((s32) *(temp_r5 + 0x03000088) <= 0x200) {
            temp_r4->unk74 = 0xC0;
            var_r0 = *temp_r2_5 + 1;
            goto block_27;
        }
        break;
    case 2:
        if ((s32) *(temp_r5 + 0x03000088) <= 0x100) {
            temp_r4->unk74 = 0;
            var_r0 = *temp_r2_5 + 1;
            goto block_27;
        }
        break;
    case 3:
        temp_r1_5 = *(temp_r5 + 0x03000088);
        if ((temp_r1_5 == 0) || ((s32) temp_r1_5 > 0x100)) {
            temp_r4->unk74 = -0xC0;
            var_r0 = 0;
            goto block_27;
        }
        break;
    }
}

void sub_8034B7C(void) {
    s32 temp_r0;
    s32 temp_r4;
    s32 temp_r5;
    s32 temp_r6;
    s32 temp_r6_2;
    u16 temp_r3;
    u16 temp_r3_2;

    temp_r3 = gCurTask->data;
    temp_r4 = temp_r3 + 0x03000000;
    temp_r6 = temp_r3 + 0xC;
    *(temp_r3 + 0x8D) = 0;
    *(temp_r3 + 0x84) = 0x3C;
    temp_r4->unk74 = 0;
    temp_r4->unk78 = 0;
    temp_r4->unk70 = (s32) (temp_r4->unk70 + (((s32) ((u16) gSineTable[(((*(temp_r3 + 0x88) + 0x100) * 2) & 0x3FF) + 0x100] << 0x10) >> 0x1D) << 8));
    *(temp_r3 + 0x5C) = 2;
    *(temp_r3 + 0x5D) = 0xFF;
    m4aSongNumStart(0x90U);
    temp_r6->unk10 = (s32) (temp_r6->unk10 & 0xFFFFFE7F);
    temp_r3_2 = gPlayer.moveState & 0x80;
    if (temp_r3_2 == 0) {
        gDispCnt &= 0x7FFF;
        gWinRegs[5] = temp_r3_2;
        gBldRegs.bldCnt = temp_r3_2;
        gBldRegs.bldY = temp_r3_2;
    }
    temp_r6_2 = gLevelScore;
    temp_r0 = temp_r6_2 + 0x3E8;
    gLevelScore = temp_r0;
    temp_r5 = Div(temp_r0, 0xC350);
    if ((temp_r5 != Div(temp_r6_2, 0xC350)) && (gGameMode == 0)) {
        gNumLives = (u8) (gNumLives + 1);
    }
    sub_8034CA0();
    gCurTask->main = sub_8034CA0;
}

void sub_8034CA0(void) {
    s32 sp0;
    Collision *temp_r1_6;
    s32 temp_r0;
    s32 temp_r0_4;
    s32 temp_r0_5;
    s32 temp_r0_6;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_5;
    s32 temp_r2;
    s32 temp_r2_3;
    s32 temp_r4;
    s32 temp_r5;
    s32 temp_r7;
    u16 temp_r0_2;
    u16 temp_r1_4;
    u16 temp_r2_2;
    u16 temp_r3;
    u16 temp_r6;
    u8 temp_r0_3;

    temp_r6 = gCurTask->data;
    temp_r4 = temp_r6 + 0x03000000;
    temp_r2 = temp_r6 + 0xC;
    temp_r7 = temp_r6 + 0x3C;
    temp_r0 = temp_r4->unk6C + temp_r4->unk74;
    temp_r4->unk6C = temp_r0;
    temp_r1 = temp_r4->unk70 + temp_r4->unk78;
    temp_r4->unk70 = temp_r1;
    temp_r3 = (u16) ((temp_r0 >> 8) + *(temp_r6 + 0x7C));
    sp0 = (s32) temp_r3;
    temp_r2_2 = (u16) ((temp_r1 >> 8) + *(temp_r6 + 0x7E));
    *(temp_r6 + 0x80) = temp_r3;
    *(temp_r6 + 0x82) = temp_r2_2;
    temp_r5 = temp_r6 + 0x84;
    if (!(7 & *temp_r5)) {
        sub_8034EE0((s16) temp_r3, (s16) temp_r2_2);
    }
    UpdateSpriteAnimation((Sprite *) temp_r2);
    UpdateSpriteAnimation((Sprite *) temp_r7);
    temp_r1_2 = gCurTask->data + 0xC;
    temp_r1_2->unk16 = (s16) ((s16) sp0 - (u16) gCamera.x);
    temp_r1_2->unk18 = (s16) ((s16) temp_r2_2 - (u16) gCamera.y);
    temp_r0_2 = gCurTask->data;
    temp_r1_3 = temp_r0_2 + 0xC;
    temp_r2_3 = temp_r0_2 + 0x3C;
    temp_r2_3->unk16 = (u16) temp_r1_3->unk16;
    temp_r1_4 = temp_r1_3->unk18;
    temp_r2_3->unk18 = temp_r1_4;
    if (temp_r2_3->unkA == 0x2B6) {
        temp_r2_3->unk18 = (u16) (temp_r1_4 - 3);
    }
    DisplaySprite((Sprite *) temp_r2);
    DisplaySprite((Sprite *) temp_r7);
    temp_r1_5 = temp_r6 + 0x8D;
    temp_r0_3 = *temp_r1_5;
    switch (temp_r0_3) {                            /* irregular */
    case 0:
        temp_r0_4 = *temp_r5 - 1;
        *temp_r5 = (u16) temp_r0_4;
        if ((temp_r0_4 << 0x10) == 0) {
            *temp_r5 = 0x5AU;
            *temp_r1_5 = (u8) (*temp_r1_5 + 1);
            VramFree(temp_r4->unk40);
            temp_r7->unk4 = VramMalloc(0xCU);
            temp_r7->unkA = 0x2B6;
            *(temp_r6 + 0x5C) = 4;
            *(temp_r6 + 0x5D) = 0xFF;
            temp_r7->unk1A = 0x5C0;
            return;
        }
        return;
    case 1:
        temp_r4->unk78 = (s32) (temp_r4->unk78 + 3);
        temp_r0_5 = *temp_r5 - 1;
        *temp_r5 = (u16) temp_r0_5;
        if ((temp_r0_5 << 0x10) == 0) {
            *temp_r5 = 0x1EU;
            *temp_r1_5 = (u8) (*temp_r1_5 + 1);
            return;
        }
        break;
    case 2:
        temp_r4->unk78 = (s32) (temp_r4->unk78 - 0x18);
        temp_r0_6 = *temp_r5 - 1;
        *temp_r5 = (u16) temp_r0_6;
        if ((temp_r0_6 << 0x10) == 0) {
            temp_r4->unk74 = 0x200;
            temp_r4->unk78 = -0x40;
            *temp_r5 = 1U;
            *temp_r1_5 = (u8) (*temp_r1_5 + 1);
            *(temp_r6 + 0x5C) = 6;
            *(temp_r6 + 0x5D) = 0xFF;
            temp_r2->unk10 = (s32) (temp_r2->unk10 | 0x400);
            temp_r7->unk10 = (s32) (temp_r7->unk10 | 0x400);
            return;
        }
        break;
    case 3:
        if ((s32) temp_r4->unk6C > 0x13000) {
            temp_r1_6 = gCollisionTable[(s8) (u8) gCurrentLevel];
            gRefCollision = temp_r1_6;
            gCamera.minY = 0;
            gCamera.maxY = (s16) temp_r1_6->pxHeight;
            gCamera.maxX = (s16) temp_r1_6->pxWidth;
            gMusicManagerState.unk1 = 0x34;
            TaskDestroy(gCurTask);
        }
        break;
    }
}

void sub_8034EE0(s16 arg0, s16 arg1) {
    s16 temp_r5;
    s16 temp_r6;
    s32 temp_r0;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r3;
    s32 temp_r4;
    s32 temp_r4_2;
    u16 temp_r1;

    temp_r0 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
    gPseudoRandom = temp_r0;
    temp_r4 = 7 & temp_r0;
    temp_r1 = CreateNutsAndBoltsTask(0x2000U, (void *) (s32) VramMalloc((u32) gUnknown_080BB434[temp_r4]), gUnknown_080BB41C[temp_r4], gUnknown_080BB42C[temp_r4], TaskDestructor_NutsAndBolts)->data;
    temp_r3 = temp_r1 + 0x03000000;
    temp_r5 = (s16) (u16) arg0;
    temp_r3->unk30 = (s32) (temp_r5 << 8);
    temp_r6 = (s16) (u16) arg1;
    temp_r3->unk34 = (s32) (temp_r6 << 8);
    temp_r3->unk10 = 0x2000;
    temp_r3->unk1A = 0x5C0;
    temp_r3->unk3E = 5;
    *(temp_r1 + 0x40) = 0x20;
    temp_r4_2 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
    gPseudoRandom = temp_r4_2;
    temp_r1_2 = 0x1FF & temp_r4_2;
    temp_r3->unk3A = (s16) ((s32) (0 - (gSineTable[temp_r1_2] * 0x600)) >> 0xE);
    temp_r3->unk38 = (s16) ((s32) (0 - (gSineTable[temp_r1_2 + 0x100] * 0x600)) >> 0xE);
    temp_r1_3 = (0x196225 * temp_r4_2) + 0x3C6EF35F;
    gPseudoRandom = temp_r1_3;
    sub_8017540(((temp_r5 + (0x3F & temp_r1_3)) - 0x20) << 8, (temp_r6 - ((s32) (temp_r1_3 & 0x3F0000) >> 0x10)) << 8);
}

void sub_8035010(void) {
    u16 *sp4;
    u16 *sp8;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r2_3;
    s32 temp_r2_4;
    s32 temp_sb;
    s8 var_r6;
    u16 temp_r0;
    u16 temp_r4;
    u16 temp_r4_2;
    u16 temp_r4_3;
    u16 temp_r4_4;
    u16 temp_sl;

    temp_r0 = gCurTask->data;
    temp_sl = temp_r0;
    temp_sb = temp_r0 + 0x03000000;
    temp_r4 = TaskCreate(sub_80352C0, 0x44U, 0x2100U, 0U, sub_8035818)->data;
    temp_r2 = temp_r4 + 0x03000000;
    temp_r2->unk3C = (s16) (((s32) temp_sb->unk6C >> 8) + *(temp_sl + 0x7C));
    temp_r2->unk3E = (s16) (((s32) temp_sb->unk70 >> 8) + *(temp_sl + 0x7E));
    temp_r2->unk30 = 0x40;
    temp_r2->unk4 = VramMalloc(2U);
    temp_r2->unk1A = 0x600;
    temp_r2->unk8 = 0;
    temp_r2->unkA = 0x2AB;
    *(temp_r4 + 0x20) = 1;
    temp_r2->unk14 = 0;
    temp_r2->unk1C = 0;
    *(temp_r4 + 0x21) = 0xFF;
    *(temp_r4 + 0x22) = 0x10;
    *(temp_r4 + 0x25) = 0;
    temp_r2->unk28 = -1;
    temp_r2->unk10 = 0x2000;
    var_r6 = 0;
    sp4 = temp_sl + 0x7C;
    sp8 = temp_sl + 0x7E;
    do {
        temp_r4_2 = TaskCreate(sub_8035354, 0x44U, var_r6 | 0x2100, 0U, sub_8035818)->data;
        temp_r2_2 = temp_r4_2 + 0x03000000;
        temp_r2_2->unk3C = (s16) (((s32) temp_sb->unk6C >> 8) + *(temp_sb + 0x7C));
        temp_r2_2->unk3E = (s16) (((s32) temp_sb->unk70 >> 8) + *(temp_sb + 0x7E));
        temp_r2_2->unk34 = 0;
        temp_r2_2->unk36 = 0;
        *(temp_r4_2 + 0x40) = var_r6;
        temp_r2_2->unk30 = 0x40;
        temp_r2_2->unk4 = VramMalloc(4U);
        temp_r2_2->unk1A = 0x640;
        temp_r2_2->unk8 = 0;
        temp_r2_2->unkA = 0x2AB;
        *(temp_r4_2 + 0x20) = 2;
        temp_r2_2->unk14 = 0;
        temp_r2_2->unk1C = 0;
        *(temp_r4_2 + 0x21) = 0xFF;
        *(temp_r4_2 + 0x22) = 0x10;
        *(temp_r4_2 + 0x25) = 0;
        temp_r2_2->unk28 = -1;
        temp_r2_2->unk10 = 0x2000;
        var_r6 = (s8) (u8) (var_r6 + 1);
    } while ((u32) var_r6 <= 3U);
    temp_r4_3 = TaskCreate(sub_80354F4, 0x44U, 0x2104U, 0U, sub_8035818)->data;
    temp_r2_3 = temp_r4_3 + 0x03000000;
    temp_r2_3->unk3C = (s16) (((s32) temp_sb->unk6C >> 8) + *sp4);
    temp_r2_3->unk3E = (s16) (((s32) temp_sb->unk70 >> 8) + *sp8);
    temp_r2_3->unk34 = 0;
    temp_r2_3->unk36 = 0;
    temp_r2_3->unk30 = 0x40;
    temp_r2_3->unk4 = VramMalloc(0x10U);
    temp_r2_3->unk1A = 0x5C0;
    temp_r2_3->unk8 = 0;
    temp_r2_3->unkA = 0x2AD;
    *(temp_r4_3 + 0x20) = 0;
    temp_r2_3->unk14 = 0;
    temp_r2_3->unk1C = 0;
    temp_r1 = temp_r4_3 + 0x21;
    *temp_r1 = (u8) (*temp_r1 | ~0);
    *(temp_r4_3 + 0x22) = 0x10;
    *(temp_r4_3 + 0x25) = 0;
    temp_r2_3->unk28 = -1;
    temp_r2_3->unk10 = 0x2000;
    temp_r4_4 = TaskCreate(sub_8035768, 0x44U, 0x2105U, 0U, sub_8035818)->data;
    temp_r2_4 = temp_r4_4 + 0x03000000;
    temp_r2_4->unk3C = (s16) (((s32) temp_sb->unk6C >> 8) + *sp4);
    temp_r2_4->unk3E = (s16) (((s32) temp_sb->unk70 >> 8) + *sp8);
    temp_r2_4->unk30 = 0x40;
    temp_r2_4->unk4 = VramMalloc(4U);
    temp_r2_4->unk1A = 0x600;
    temp_r2_4->unk8 = 0;
    temp_r2_4->unkA = 0x2AB;
    *(temp_r4_4 + 0x20) = 0;
    temp_r2_4->unk14 = 0;
    temp_r2_4->unk1C = 0;
    temp_r1_2 = temp_r4_4 + 0x21;
    *temp_r1_2 = (u8) (*temp_r1_2 | ~0);
    *(temp_r4_4 + 0x22) = 0x10;
    *(temp_r4_4 + 0x25) = 0;
    temp_r2_4->unk28 = -1;
    temp_r2_4->unk10 = 0x2000;
}

void sub_80352C0(void) {
    s16 temp_r5;
    s16 temp_r6;
    s32 temp_r3;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r0_3;
    u32 var_r5;

    var_r5 = 0;
    temp_r3 = gCurTask->data + 0x03000000;
    temp_r0 = (gCurTask->parent + 0x03000000)->unk6;
    temp_r0_2 = temp_r3->unk30;
    if (temp_r0_2 != 0) {
        temp_r3->unk30 = (u16) (temp_r0_2 - 1);
        var_r5 = (u32) (temp_r3->unk30 << 8) >> 0xB;
    }
    temp_r3->unk3C = (u16) *(temp_r0 + 0x03000080);
    temp_r0_3 = *(temp_r0 + 0x03000082);
    temp_r3->unk3E = temp_r0_3;
    temp_r6 = *(temp_r3 + 0x3C);
    temp_r3->unk16 = (s16) (temp_r6 - (u16) gCamera.x);
    temp_r5 = ((s32) (0 - (var_r5 << 0x10)) >> 0x10) + temp_r0_3;
    temp_r3->unk18 = (s16) (temp_r5 - (u16) gCamera.y);
    UpdateSpriteAnimation((Sprite *) temp_r3);
    DisplaySprite((Sprite *) temp_r3);
    if ((s32) (s8) *(temp_r0 + 0x03000086) > 3) {
        sub_8017540(temp_r6 << 8, (temp_r5 + 0x14) << 8);
        TaskDestroy(gCurTask);
    }
}

void sub_8035354(void) {
    s32 temp_r0_2;
    s32 temp_r2_2;
    s32 temp_r5;
    u16 temp_r0;
    u16 temp_r0_4;
    u16 temp_r2;
    u16 var_r2;
    u8 temp_r0_3;

    temp_r2 = gCurTask->data;
    temp_r5 = temp_r2 + 0x03000000;
    temp_r0 = (gCurTask->parent + 0x03000000)->unk6;
    temp_r0_2 = temp_r5->unk30 - 1;
    temp_r5->unk30 = (u16) temp_r0_2;
    if ((temp_r0_2 << 0x10) != 0) {
        temp_r2_2 = *(temp_r2 + 0x03000040) * 0xE;
        var_r2 = (u16) (temp_r2_2 - (((s32) (((temp_r2_2 + 0x15) * ((s32) (temp_r5->unk30 << 8) >> 6)) << 8) >> 0x10) - 0x23));
    } else {
        temp_r0_3 = *(temp_r2 + 0x40);
        var_r2 = (u16) ((u32) ((temp_r0_3 * 0xE0000) + 0x230000) >> 0x10);
        temp_r5->unk30 = (u16) ((temp_r0_3 * 8) + 8);
        gCurTask->main = sub_803540C;
    }
    temp_r5->unk3C = (u16) *(temp_r0 + 0x03000080);
    temp_r0_4 = *(temp_r0 + 0x03000082);
    temp_r5->unk3E = temp_r0_4;
    temp_r5->unk16 = (s16) (*(temp_r5 + 0x3C) - (u16) gCamera.x);
    temp_r5->unk18 = (s16) ((s16) ((s16) var_r2 + temp_r0_4) - (u16) gCamera.y);
    UpdateSpriteAnimation((Sprite *) temp_r5);
    DisplaySprite((Sprite *) temp_r5);
}

void sub_803540C(void) {
    s16 temp_r5;
    s16 temp_r7;
    s32 temp_r0;
    s32 temp_r1_2;
    s32 temp_r3;
    s32 temp_r6;
    u16 temp_r1;
    u16 temp_r1_3;
    u16 temp_r3_2;
    u16 temp_r4;

    temp_r1 = gCurTask->data;
    temp_r6 = temp_r1 + 0x03000000;
    temp_r4 = (gCurTask->parent + 0x03000000)->unk6;
    temp_r1_2 = (s32) ((*(temp_r1 + 0x03000040) * 0xE0000) + 0xD0000) >> 0x10;
    temp_r3 = temp_r4 + 0x8A;
    temp_r3_2 = *(temp_r4 + 0x80);
    temp_r6->unk3C = temp_r3_2;
    temp_r1_3 = *(temp_r4 + 0x82);
    temp_r6->unk3E = temp_r1_3;
    temp_r7 = ((s32) (gSineTable[*temp_r3 + 0x100] * temp_r1_2 * 4) >> 0x10) + temp_r3_2;
    temp_r6->unk16 = (s16) (temp_r7 - (u16) gCamera.x);
    temp_r5 = temp_r1_3 + (((s32) (temp_r1_2 * gSineTable[0x1FF & (u16) *temp_r3] * 4) >> 0x10) + 0x16);
    temp_r6->unk18 = (s16) (temp_r5 - (u16) gCamera.y);
    UpdateSpriteAnimation((Sprite *) temp_r6);
    DisplaySprite((Sprite *) temp_r6);
    if ((s32) *(temp_r4 + 0x86) > 3) {
        temp_r0 = temp_r6->unk30 - 1;
        temp_r6->unk30 = (u16) temp_r0;
        if ((temp_r0 << 0x10) == 0) {
            sub_8017540(temp_r7 << 8, temp_r5 << 8);
            TaskDestroy(gCurTask);
        }
    }
}

void sub_80354F4(void) {
    s32 temp_r0_2;
    s32 temp_r5;
    u16 temp_r0;
    u16 temp_r0_3;
    u16 var_r1;

    temp_r5 = gCurTask->data + 0x03000000;
    temp_r0 = (gCurTask->parent + 0x03000000)->unk6;
    temp_r0_2 = temp_r5->unk30 - 1;
    temp_r5->unk30 = (u16) temp_r0_2;
    if ((temp_r0_2 << 0x10) != 0) {
        var_r1 = (u16) (0x63 - ((s32) (((s32) (temp_r5->unk30 << 8) >> 6) * 0x5D00) >> 0x10));
    } else {
        var_r1 = 0x63;
        temp_r5->unk30 = 0x3CU;
        gCurTask->main = sub_8035588;
    }
    temp_r5->unk3C = (u16) *(temp_r0 + 0x03000080);
    temp_r0_3 = *(temp_r0 + 0x03000082);
    temp_r5->unk3E = temp_r0_3;
    temp_r5->unk16 = (s16) (*(temp_r5 + 0x3C) - (u16) gCamera.x);
    temp_r5->unk18 = (s16) ((s16) ((s16) var_r1 + temp_r0_3) - (u16) gCamera.y);
    UpdateSpriteAnimation((Sprite *) temp_r5);
    DisplaySprite((Sprite *) temp_r5);
}

void sub_8035588(void) {
    s32 sp0;
    s32 sp4;
    s16 temp_r4_2;
    s16 temp_r4_3;
    s16 temp_r5;
    s16 temp_r5_2;
    s32 temp_r0;
    s32 temp_r0_4;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r3_2;
    s32 temp_r6;
    s32 temp_r7;
    s32 var_r0;
    u16 temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r1;
    u16 temp_r3;
    u16 temp_r4;

    temp_r0 = gCurTask->data + 0x03000000;
    temp_r3 = (gCurTask->parent + 0x03000000)->unk6;
    sp0 = temp_r3 + 0x03000000;
    temp_r2 = temp_r3 + 0x8A;
    temp_r4 = *(temp_r3 + 0x80);
    temp_r0->unk3C = temp_r4;
    temp_r0_2 = *(temp_r3 + 0x82);
    temp_r0->unk3E = temp_r0_2;
    sp4 = (s32) (u16) (((s32) (gSineTable[*temp_r2 + 0x100] * 0x4D) >> 0xE) + temp_r4);
    temp_r0_3 = (u16) (temp_r0_2 + (((s32) (gSineTable[0x1FF & (u16) *temp_r2] * 0x4D) >> 0xE) + 0x16));
    if ((s32) *(temp_r3 + 0x86) <= 3) {
        temp_r6 = gCurTask->data + 0x03000000;
        temp_r5 = (s16) sp4;
        temp_r4_2 = (s16) temp_r0_3;
        temp_r7 = sub_800BF10(temp_r6, temp_r5, temp_r4_2, &gPlayer);
        if ((s8) (u8) gNumSingleplayerCharacters == 2) {
            var_r0 = sub_800BF10(temp_r6, temp_r5, temp_r4_2, &gPartner);
        } else {
            var_r0 = 0;
        }
        if ((temp_r7 == 2) || (var_r0 == 2)) {
            temp_r1 = (gCurTask->parent + 0x03000000)->unk6;
            temp_r3_2 = temp_r1 + 0x3C;
            *(temp_r1 + 0x5C) = 1;
            *(temp_r1 + 0x5D) = 0xFF;
            temp_r3_2->unk10 = (s32) (temp_r3_2->unk10 & 0xFFFFBFFF);
        }
    }
    temp_r4_3 = (s16) sp4;
    temp_r0->unk16 = (s16) (temp_r4_3 - (u16) gCamera.x);
    temp_r5_2 = (s16) temp_r0_3;
    temp_r0->unk18 = (s16) (temp_r5_2 - (u16) gCamera.y);
    UpdateSpriteAnimation((Sprite *) temp_r0);
    DisplaySprite((Sprite *) temp_r0);
    if ((s32) (s8) *(sp0 + 0x86) > 3) {
        if (!(7 & temp_r0->unk30)) {
            temp_r1_2 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
            gPseudoRandom = temp_r1_2;
            sub_8017540(((temp_r4_3 + (0x1F & temp_r1_2)) - 0xF) << 8, ((temp_r5_2 + ((s32) (temp_r1_2 & 0x1F0000) >> 0x10)) - 0xF) << 8);
        }
        temp_r0_4 = temp_r0->unk30 - 1;
        temp_r0->unk30 = (u16) temp_r0_4;
        if ((temp_r0_4 << 0x10) == 0) {
            TaskDestroy(gCurTask);
        }
    }
}

void sub_8035768(void) {
    s32 temp_r2;
    s32 temp_r3;
    s32 temp_r5;
    u16 temp_r6;

    temp_r5 = gCurTask->data + 0x03000000;
    temp_r6 = (gCurTask->parent + 0x03000000)->unk6;
    temp_r3 = temp_r6 + 0x03000000;
    if ((*(temp_r6 + 0x0300008C) != 0) && (temp_r3->unk74 != 0)) {
        if ((s32) temp_r3->unk6C > 0x12C00) {
            TaskDestroy(gCurTask);
            return;
        }
        temp_r2 = temp_r5->unk10 & 0xFFFFFBFF;
        temp_r5->unk10 = temp_r2;
        temp_r5->unk10 = (s32) (temp_r2 | (temp_r3->unk1C & 0x400));
        temp_r5->unk16 = (s16) (*(temp_r6 + 0x80) - (u16) gCamera.x);
        temp_r5->unk18 = (s16) ((s16) *(temp_r6 + 0x82) - (u16) gCamera.y);
        UpdateSpriteAnimation((Sprite *) temp_r5);
        DisplaySprite((Sprite *) temp_r5);
    }
}

void TaskDestructor_EggWrecker(struct Task *arg0) {
    s32 temp_r4;

    temp_r4 = arg0->data + 0x03000000;
    VramFree(temp_r4->unk10);
    VramFree(temp_r4->unk40);
}

void sub_8035818(struct Task *arg0) {
    VramFree((arg0->data + 0x03000000)->unk4);
}

void sub_803582C(s16 arg0, s16 arg1) {
    s16 temp_r4;
    s16 temp_r5;
    s32 temp_r3;
    s32 temp_r6;
    s32 temp_r7;
    s32 var_r0;
    u16 temp_r1;

    temp_r6 = gCurTask->data + 0x03000000;
    temp_r5 = arg0;
    temp_r4 = arg1;
    temp_r7 = sub_800BF10(temp_r6, temp_r5, temp_r4, &gPlayer);
    if ((s8) (u8) gNumSingleplayerCharacters == 2) {
        var_r0 = sub_800BF10(temp_r6, temp_r5, temp_r4, &gPartner);
    } else {
        var_r0 = 0;
    }
    if ((temp_r7 == 2) || (var_r0 == 2)) {
        temp_r1 = (gCurTask->parent + 0x03000000)->unk6;
        temp_r3 = temp_r1 + 0x3C;
        *(temp_r1 + 0x5C) = 1;
        *(temp_r1 + 0x5D) = 0xFF;
        temp_r3->unk10 = (s32) (temp_r3->unk10 & 0xFFFFBFFF);
    }
}

void sub_80358C8(void) {
    s32 temp_r3;
    u16 temp_r2;

    temp_r2 = gCurTask->data;
    temp_r3 = temp_r2 + 0x5C;
    if ((*temp_r3 != 0) && ((temp_r2 + 0x3C)->unk10 & 0x4000)) {
        *temp_r3 = 0U;
        *(temp_r2 + 0x5D) = 0xFF;
    }
}

void sub_8035904(void) {
    s32 temp_r1;
    s32 temp_r2;
    u16 temp_r0;
    u16 temp_r3;

    temp_r0 = gCurTask->data;
    temp_r1 = temp_r0 + 0xC;
    temp_r2 = temp_r0 + 0x3C;
    temp_r2->unk16 = (u16) temp_r1->unk16;
    temp_r3 = temp_r1->unk18;
    temp_r2->unk18 = temp_r3;
    if (temp_r2->unkA == 0x2B6) {
        temp_r2->unk18 = (u16) (temp_r3 - 3);
    }
}

void sub_8035938(s16 arg0, s16 arg1) {
    s32 temp_r2;

    temp_r2 = gCurTask->data + 0xC;
    temp_r2->unk16 = (s16) (arg0 - (u16) gCamera.x);
    temp_r2->unk18 = (s16) (arg1 - (u16) gCamera.y);
}

void sub_803596C(u16 arg0, u16 arg1) {
    s16 temp_r6;
    s16 temp_r7;
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r2;
    s32 temp_r5;
    u16 temp_r3;
    u16 temp_r4;
    u32 temp_r8;
    u32 var_r1;

    temp_r4 = gCurTask->data;
    temp_r5 = temp_r4 + 0xC;
    temp_r5->unk10 = (s32) (temp_r5->unk10 & 0xFFFFFE7F);
    temp_r3 = gPlayer.moveState & 0x80;
    if (temp_r3 == 0) {
        gDispCnt &= 0x7FFF;
        gWinRegs[5] = temp_r3;
        gBldRegs.bldCnt = temp_r3;
        gBldRegs.bldY = temp_r3;
    }
    temp_r0 = temp_r4 + 0x87;
    if ((s8) *temp_r0 == 0) {
        temp_r7 = (s16) arg0;
        temp_r6 = (s16) arg1;
        temp_r8 = Coll_Player_Boss((Sprite *) temp_r5, temp_r7, temp_r6, &gPlayer);
        var_r1 = 0;
        if ((s8) (u8) gNumSingleplayerCharacters == 2) {
            var_r1 = Coll_Player_Boss((Sprite *) temp_r5, temp_r7, temp_r6, &gPartner);
        }
        temp_r2 = temp_r4 + 0x3C;
        if ((temp_r8 == 1) || (var_r1 == 1)) {
            temp_r1 = temp_r4 + 0x86;
            *temp_r1 = (u8) (*temp_r1 + 1);
            *temp_r0 = 0x20U;
            *(temp_r4 + 0x5C) = 2;
            *(temp_r4 + 0x5D) = 0xFF;
            temp_r2->unk10 = (s32) (temp_r2->unk10 & 0xFFFFBFFF);
            m4aSongNumStart(0x8FU);
            return;
        }
        if ((temp_r8 == 2) || (var_r1 == 2)) {
            *(temp_r4 + 0x5C) = 1;
            *(temp_r4 + 0x5D) = 0xFF;
            temp_r2->unk10 = (s32) (temp_r2->unk10 & 0xFFFFBFFF);
        }
    }
}

void sub_8035AAC(void) {
    s32 temp_r2;
    s32 temp_r3;
    s8 temp_r1;
    u16 temp_r0;

    temp_r0 = gCurTask->data;
    temp_r3 = temp_r0 + 0xC;
    temp_r2 = temp_r0 + 0x87;
    if ((s8) *temp_r2 != 0) {
        temp_r1 = *temp_r2 - 1;
        *temp_r2 = (u8) temp_r1;
        if (((s32) temp_r1 > 0x10) && !(temp_r1 & 2) && !(gPlayer.moveState & 0x80)) {
            temp_r3->unk10 = (s32) (temp_r3->unk10 | 0x100);
            gDispCnt |= 0x8000;
            gWinRegs[5] = 0x3F1F;
            gBldRegs.bldCnt = 0xBF;
            gBldRegs.bldY = 0x10;
        }
    }
    DisplaySprite((Sprite *) temp_r3);
    DisplaySprite((Sprite *) (temp_r0 + 0x3C));
}
#endif