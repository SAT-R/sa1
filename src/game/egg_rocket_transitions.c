#include "global.h"
#include "core.h"
#include "task.h"
#include "flags.h"
#include "malloc_vram.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/sa1_sa2_shared/camera.h"
#include "game/stage/player.h"
#include "game/stage/screen_shake.h"
#include "lib/m4a/m4a.h"

#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ struct Task *t;
    /* 0x04 */ CamCoord worldY;
    /* 0x04 */ u16 unk6;
    /* 0x04 */ u16 unk8;
    /* 0x04 */ u16 unkA;
    /* 0x0C */ u16 unkC;
} EggRocketScreenShake; /* 0x10 */

void Task_8028CE4(void);
void Task_8028F20(void);
void Task_80298C0(void);

// Maybe spawns bolts and stuff?
typedef struct {
    /* 0x00 */ u8 filler0[0x10];
    /* 0x10 */ u32 unk10;
    /* 0x12 */ u8 filler14[0x6];
    /* 0x1A */ u16 unk1A;
    /* 0x1C */ u8 filler1C[0x14];
    /* 0x30 */ s32 qUnk30;
    /* 0x34 */ s32 qUnk34;
    /* 0x38 */ s16 qUnk38;
    /* 0x3A */ s16 qUnk3A;
    /* 0x3C */ u8 filler3C[0x2];
    /* 0x3E */ s16 unk3E;
    /* 0x40 */ s16 qUnk40;
} Strc_801769C;
extern struct Task *sub_801769C(u16 flags, void *vramTiles, u16 anim, u8 variant, TaskDestructor dtor);
extern void TaskDestructor_80177EC(struct Task *);

extern const u16 gUnknown_080BB41C[8];
extern const u8 gUnknown_080BB42C[8];
extern const u8 gUnknown_080BB434[8];

void Task_80297E8(void)
{
    EggRocketScreenShake *shake = TASK_DATA(gCurTask);

    if ((shake->unkC & 0xF) == 0) {
        m4aSongNumStart(SE_EXPLOSION);
    }

    if (--shake->unkC == 0) {
        if (gGameMode == GAME_MODE_SINGLE_PLAYER) {
            gStageFlags |= STAGE_FLAG__TIMER_REVERSED;
            gCourseTime = ZONE_TIME_TO_INT(5, 0);
        }

        gPlayer.moveState &= ~MOVESTATE_IGNORE_INPUT;
        gPlayer.heldInput = 0;

        TaskDestroy(gCurTask);
        return;
    }
}

void CreateEggRocketLaunchScreenShakeEffect()
{
    struct Task *t = TaskCreate(Task_80298C0, sizeof(EggRocketScreenShake), 0x4000, 0, NULL);
    EggRocketScreenShake *shake = TASK_DATA(t);

    shake->unkC = ZONE_TIME_TO_INT(0, 1);

    CreateScreenShake(0x800, 8, 16, 10, SCREENSHAKE_VERTICAL);

    gCamera.minX = 0x422;
    gPlayer.moveState |= MOVESTATE_IGNORE_INPUT;
    gPlayer.heldInput = 0;
}

void Task_80298C0()
{
    EggRocketScreenShake *shake = TASK_DATA(gCurTask);

    if (--shake->unkC == 0) {
        shake->unkC = ZONE_TIME_TO_INT(0, 5);
        CreateScreenShake(0x800, 8, 16, 300, (SCREENSHAKE_VERTICAL | SCREENSHAKE_RANDOM_VALUE));
        gCurTask->main = Task_80297E8;
    }
}
