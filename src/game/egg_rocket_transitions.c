#include "global.h"
#include "core.h"
#include "task.h"
#include "flags.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/sa1_sa2_shared/camera.h"
#include "game/stage/player.h"
#include "game/stage/screen_shake.h"
#include "lib/m4a/m4a.h"

#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

/* TODO: It is currently unclear whether this code is in SA2 or not. */

typedef struct {
    /* 0x00 */ u8 filler[0xc];
    /* 0x0C */ u16 unkC;
} SomeScreenShake; /* 0x10 */

void Task_80298C0(void);

void Task_80297E8(void)
{
    SomeScreenShake *shake = TASK_DATA(gCurTask);

    if ((shake->unkC & 0xF) == 0) {
        m4aSongNumStart(SE_EXPLOSION);
    }

    if (--shake->unkC == 0) {
        if (gGameMode == GAME_MODE_SINGLE_PLAYER) {
            gStageFlags |= FLAGS_4;
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
    struct Task *t = TaskCreate(Task_80298C0, sizeof(SomeScreenShake), 0x4000, 0, NULL);
    SomeScreenShake *shake = TASK_DATA(t);

    shake->unkC = ZONE_TIME_TO_INT(0, 1);

    CreateScreenShake(0x800, 8, 16, 10, SCREENSHAKE_VERTICAL);

    gCamera.minX = 0x422;
    gPlayer.moveState |= MOVESTATE_IGNORE_INPUT;
    gPlayer.heldInput = 0;
}

void Task_80298C0()
{
    SomeScreenShake *shake = TASK_DATA(gCurTask);

    if (--shake->unkC == 0) {
        shake->unkC = ZONE_TIME_TO_INT(0, 5);
        CreateScreenShake(0x800, 8, 16, 300, (SCREENSHAKE_VERTICAL | SCREENSHAKE_RANDOM_VALUE));
        gCurTask->main = Task_80297E8;
    }
}
