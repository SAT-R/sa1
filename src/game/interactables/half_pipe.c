#include "global.h"
#include "core.h"
#include "trig.h"
#include "game/entity.h"

#include "constants/char_states.h"

typedef struct {
    MapEntity *me;
    s32 unk4;
    s32 unk8;
    s32 left;
    s32 right;
    s32 top;
    s32 bottom;
    s32 unk1C;
    u8 unk20;
    u8 unk21;
} HalfPipe;

void Task_HalfPipeStart(void);
void Task_HalfPipeEnd(void);
void sub_804D4A0(s32 param0, s32 unusedParam1, Player *p);

// (93.82%) https://decomp.me/scratch/Qgh0B
NONMATCH("asm/non_matching/game/interactables/half_pipe__sub_804D4A0.inc", void sub_804D4A0(s32 param0, s32 unusedParam1, Player *p))
{
#ifndef NON_MATCHING
    register HalfPipe *halfpipe asm("r8") = TASK_DATA(gCurTask);
    register s32 r6 asm("r6") = 0;
    register s32 r5 asm("r5");
#else
    HalfPipe *halfpipe = TASK_DATA(gCurTask);
    s32 r6 = 0;
    s32 r5;
#endif
    s32 r3;
    s32 divParam0;
    s32 r0;
    s32 r1;
    u16 theta;

    if (param0 >= 0 && param0 < 0x2A0) {
        s16 qSpeedAirX = (ABS(p->qSpeedAirX) - Q(2.25)) >> 2;

        if (qSpeedAirX >= Q(0)) {
            if (qSpeedAirX > Q(1)) {
                qSpeedAirX = Q(1);
            }
        } else {
            qSpeedAirX = 0;
        }

        r6 = SIN_24_8((u16)qSpeedAirX);

        r5 = Q(1);
        if (r6 > r5) {
            r6 = r5;
        }
        // _0804D50C

        if (param0 < 0x150) {
            divParam0 = (param0) << 15;
        } else {
            divParam0 = ((param0 - Q(2.625)) << 15);
        }

        theta = (divParam0 / 0x150);
        theta >>= 6;
#ifndef NON_MATCHING
        r1 = -SIN(theta + r5);
#else
        r1 = -COS(theta);
#endif
        r0 = ((r1 * 3 >> 2) + Q(48));
        r0 *= r6;
        r0 = I(r0);
        r6 = r0;
    }
    // _0804D550

    if (!(p->moveState & MOVESTATE_4)) {
        // __0804D55A
        if (p->SA2_LABEL(unk62) == 0) {
            if (p->charState == CHARSTATE_WALK
                || (p->charState == CHARSTATE_24 || p->charState == CHARSTATE_25 || p->charState == CHARSTATE_26)) {
                if (r6 < Q(8)) {
                    p->charState = CHARSTATE_WALK;
                } else if (r6 < Q(24)) {
                    p->charState = CHARSTATE_24;
                } else if (r6 < Q(48)) {
                    p->charState = CHARSTATE_25;
                } else {
                    p->charState = CHARSTATE_26;
                }
            }
        }
    }
    // _0804D5B8

    p->moveState &= ~MOVESTATE_IN_AIR;
    p->qSpeedAirY = 0;

    r1 = halfpipe->unk1C;
    r1 -= r6;
    r1 -= Q(p->spriteOffsetY);
    r1 -= p->qWorldY;

    r3 = p->qWorldY;
    if (r1 >= -Q(6)) {
        if (r1 > Q(6)) {
            r1 = Q(6);
        }
    } else {
        r1 = -Q(6);
    }

    p->qWorldY = r3 + r1;
}
END_NONMATCH

void CreateEntity_HalfPipeStart(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_HalfPipeStart, sizeof(HalfPipe), 0x2000, 0, NULL);
    HalfPipe *halfpipe = TASK_DATA(t);
    s32 worldX, worldY;

    halfpipe->me = me;
    halfpipe->unk21 = me->x;
    halfpipe->unk20 = 0;

    worldX = TO_WORLD_POS_INV(me->x, regionX);
    worldY = TO_WORLD_POS_INV(me->y, regionY);

    halfpipe->unk4 = worldX;
    halfpipe->unk8 = worldY;

    halfpipe->left = worldX + me->d.sData[0] * TILE_WIDTH;
    halfpipe->top = worldY + me->d.sData[1] * TILE_WIDTH;
    halfpipe->right = halfpipe->left + me->d.uData[2] * TILE_WIDTH;
    halfpipe->bottom = halfpipe->top + me->d.uData[3] * TILE_WIDTH;

    SET_MAP_ENTITY_INITIALIZED_SIMPLE(me);
}

void CreateEntity_HalfPipeEnd(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_HalfPipeEnd, sizeof(HalfPipe), 0x2000, 0, NULL);
    HalfPipe *halfpipe = TASK_DATA(t);
    s32 worldX, worldY;

    halfpipe->me = me;
    halfpipe->unk21 = me->x;
    halfpipe->unk20 = 0;

    worldX = TO_WORLD_POS_INV(me->x, regionX);
    worldY = TO_WORLD_POS_INV(me->y, regionY);

    halfpipe->unk4 = worldX;
    halfpipe->unk8 = worldY;

    halfpipe->left = worldX + me->d.sData[0] * TILE_WIDTH;
    halfpipe->top = worldY + me->d.sData[1] * TILE_WIDTH;
    halfpipe->right = halfpipe->left + me->d.uData[2] * TILE_WIDTH;
    halfpipe->bottom = halfpipe->top + me->d.uData[3] * TILE_WIDTH;

    SET_MAP_ENTITY_INITIALIZED_SIMPLE(me);
}
