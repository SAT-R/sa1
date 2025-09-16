#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/enemies/bosses_shared.h" // CreatePreBossCameraPan
#include "game/nuts_and_bolts_task.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/stage/extra_stage.h"
#include "game/stage/terrain_collision.h"
#include "game/enemies/boss_xtra_super_egg_robo.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"

/* Extra Zone Boss - Super Egg Robot */

void sub_804B2BC(s32 a, s32 b);
void sub_80520B8(SuperEggRobo *boss);
void sub_80523D4(SuperEggRobo *boss);
void sub_80523F8(SuperEggRobo *boss);
void sub_8052424(SuperEggRobo *boss);
void sub_8052468(SuperEggRobo *boss);

void Task_SuperEggRobotInit()
{
    SuperEggRobo **var_r3_3;
    SuperEggRobo *temp_r0_11;
    s16 *temp_r0_2;
    s16 *temp_r0_5;
    s16 *temp_r0_7;
    s16 *temp_r1_4;
    s16 *temp_r1_5;
    s16 *temp_r1_6;
    s16 *temp_r1_7;
    s16 *temp_r2;
    s16 *temp_r2_2;
    s16 *temp_r3;
    s16 *temp_r5;
    s16 temp_r0_4;
    s16 temp_r0_6;
    s16 temp_r0_8;
    s16 temp_r3_2;
    s16 var_r2;
    s32 temp_r0_9;
    s32 var_r1_2;
    s32 var_r3;
    s32 var_r3_2;
    s8 *temp_r0;
    s8 temp_r1_2;
    u16 temp_r0_3;
    u16 temp_r1_3;
    u16 temp_r1_8;
    u32 temp_r1;
    u8 *temp_r0_10;
    u8 *temp_r1_9;
    u8 *var_r1;

    SuperEggRobo *boss = TASK_DATA(gCurTask);

    temp_r1 = boss->flags58;
    if (!(0x400000 & temp_r1)) {
        if (temp_r1 & 2) {
            sub_8052424(boss);
            sub_8052468(boss);
            sub_80523F8(boss);
        } else {
            sub_80523D4(boss);
            sub_8052424(boss);
        }
    }

    switch (boss->unk6E) {
        case 2:
            if (!(boss->flags58 & 2)) {
                boss->unk6F++;
            }
            break;
        case 3:
            if (boss->qUnk54++ >= 60) {
                boss->unk6F++;
            }
            break;
        case 9:
            if (boss->qUnk54++ >= 300) {
                boss->qUnk56 = 0;
                boss->unk6F++;
            }
            break;
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 10:
        case 11:
            if (boss->unk5C != 0) {
                boss->unk6F++;
            }
            break;
        case 12:
            if (boss->unk5C == 0) {

            } else {
                if (++boss->qUnk56 < 4) {
                    boss->unk6F = 0xB;
                } else {
                    boss->unk6F = 3;
                }
            }
            break;
        case 0:
            if (boss->qUnk44 < 0x1A000) {
                boss->qUnk48 = -0x8000;
                boss->qUnk4E = 0;
                boss->qUnk4C = 0x400;
            } else {
                boss->qUnk50 = -0x10;
                boss->unk6F = 1;
            }
            break;
        case 1:
            if (boss->qUnk44 < Q(416)) {
                boss->qUnk50 = 0;
                boss->qUnk4C = 0;
                boss->qUnk44 = Q(416);
                boss->unk6F = 2;
            } else {
                boss->qUnk4C = MAX(-Q(2), boss->qUnk4C);
            }
            break;
        case 13:
            if (boss->unk5C != 0) {
                boss->unk6F = 0xE;
            }
            break;
        case 14:
            if (!(boss->flags58 & 2)) {
                boss->qUnk50 = -0x10;
                if (boss->qUnk4C < -Q(6)) {
                    boss->qUnk4C = -Q(6);
                    boss->qUnk50 = 0;
                }
                if (boss->qUnk44 <= -Q(120)) {
                    boss->qUnk4C = 0;
                }
            }
            break;
        default:
            boss->qUnk4C = 0;
            boss->qUnk50 = 0;
            break;
    }

    if (boss->flags58 & SER_FLAG__80) {
        var_r3 = boss->qUnk54 - (DISPLAY_WIDTH / 2);
        if (var_r3 < 0) {
            var_r3 = 0;
        }

        var_r3 >>= 2;
        if (var_r3 > 0x10) {
            var_r3 = 0x10;
        }

        if (boss->unk69 == 0) {
            gDispCnt &= 0x7FFF;
            gWinRegs[WINREG_WINOUT] = 0x3F3F;
            gBldRegs.bldCnt = 0xBF;
            gBldRegs.bldY = var_r3;
        }

        if (var_r3 == 0x10) {
            TasksDestroyInPriorityRange(0U, 0xFFFFU);
            gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
            sa2__gUnknown_03005390 = 0;
            gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
            CreateExtraStageResults();
            return;
        }
        sub_80520B8(boss);

        if (++boss->qUnk54 < 0) {
            boss->qUnk54--;
        }
    } else if (boss->unk6E > 1) {
        if (--boss->unk6C <= 0) {
            boss->unk6C = 240;
            sub_804B2BC(Q(boss->unk60) + boss->qUnk44 + -Q(21), Q(boss->qUnk64) + boss->qUnk48 + -Q(10));
        }
    }

    if (boss->unk6E != boss->unk6F) {
        for (var_r1_2 = 0; var_r1_2 < (s32)ARRAY_COUNT(gExtraBossTaskData.parts); var_r1_2++) {
            SomeTaskManager_7C *parts = gExtraBossTaskData.parts[var_r1_2];
            parts->unk0.unk2 = 0;
            parts->unk0.unk4 = 0;
        }

        boss->unk5C = 0;
        boss->qUnk54 = 0;
        boss->unk6E = boss->unk6F;
    }
}
