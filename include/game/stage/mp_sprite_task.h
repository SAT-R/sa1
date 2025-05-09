#ifndef GUARD_GAME_2_H
#define GUARD_GAME_2_H

#include "global.h"
#include "sprite.h"

typedef struct {
    /* 0x00 */ s32 x;
    /* 0x04 */ s32 y;
    /* 0x08 */ s16 unk8;
    /* 0x0A */ s16 unkA;
    /* 0x0C */ u8 fillerC[0x4];
    /* 0x10 */ s16 unk10;
    /* 0x12 */ u16 unk12;
    /* 0x14 */ u16 unk14;
#if (GAME == GAME_SA1)
    /* 0x16 */ u8 mpPlayerID;
#elif (GAME == GAME_SA2)
    /* 0x16 */ AnimId playerAnim;
    /* 0x18 */ u16 playerVariant;
    /* 0x1A */ u8 mpPlayerID;
#endif
    /* 0x18|0x1C */ Sprite s;
    /* 0x48|0x4C */ SpriteTransform transform;
} MultiplayerSpriteTask; /* size: 0x58 */

extern struct Task *CreateMultiplayerSpriteTask(s16 x, s16 y, u8 param2, s8 param3, TaskMain main, TaskDestructor dtor);
extern void TaskDestructor_MultiplayerSpriteTask(struct Task *);

void CreateGrindEffect2(void);

extern struct Task *CreateStageGoalBonusPointsAnim(s32, s32, u16);
extern void Task_UpdateMpSpriteTaskSprite(void);

#endif // GUARD_GAME_2_H