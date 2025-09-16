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
    SuperEggRobo *boss = TASK_DATA(gCurTask);

    if (!(boss->flags58 & SER_FLAG__400000)) {
        if (boss->flags58 & SER_FLAG__2) {
            sub_8052424(boss);
            sub_8052468(boss);
            sub_80523F8(boss);
        } else {
            sub_80523D4(boss);
            sub_8052424(boss);
        }
    }

    switch (boss->unk6E) {
        case 2: {
            if (!(boss->flags58 & SER_FLAG__2)) {
                boss->unk6F++;
            }
        } break;

        case 3: {
            if (boss->qUnk54++ >= 60) {
                boss->unk6F++;
            }
        } break;

        case 9: {
            if (boss->qUnk54++ >= 300) {
                boss->qUnk56 = 0;
                boss->unk6F++;
            }
        } break;

        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 10:
        case 11: {
            if (boss->unk5C != 0) {
                boss->unk6F++;
            }
        } break;

        case 12: {
            if (boss->unk5C == 0) {

            } else {
                if (++boss->qUnk56 < 4) {
                    boss->unk6F = 0xB;
                } else {
                    boss->unk6F = 3;
                }
            }
        } break;

        case 0: {
            if (boss->qUnk44 < Q(416)) {
                boss->qUnk48 = -Q(128);
                boss->qUnk4E = 0;
                boss->qUnk4C = Q(4);
            } else {
                boss->qUnk50 = -0x10;
                boss->unk6F = 1;
            }
        } break;

        case 1: {
            if (boss->qUnk44 < Q(416)) {
                boss->qUnk50 = 0;
                boss->qUnk4C = 0;
                boss->qUnk44 = Q(416);
                boss->unk6F = 2;
            } else {
                boss->qUnk4C = MAX(-Q(2), boss->qUnk4C);
            }
        } break;

        case 13: {
            if (boss->unk5C != 0) {
                boss->unk6F = 0xE;
            }
        } break;

        case 14: {
            if (!(boss->flags58 & SER_FLAG__2)) {
                boss->qUnk50 = -0x10;
                if (boss->qUnk4C < -Q(6)) {
                    boss->qUnk4C = -Q(6);
                    boss->qUnk50 = 0;
                }
                if (boss->qUnk44 <= -Q(120)) {
                    boss->qUnk4C = 0;
                }
            }
        } break;

        default: {
            boss->qUnk4C = 0;
            boss->qUnk50 = 0;
        } break;
    }
    if (boss->flags58 & SER_FLAG__80) {
        s32 fade = boss->qUnk54 - 120;
        if (fade < 0) {
            fade = 0;
        }
        fade >>= 2;
        if (fade > 0x10) {
            fade = 0x10;
        }

        if (boss->unk69 == 0) {
            gDispCnt &= 0x7FFF;
            gWinRegs[WINREG_WINOUT] = 0x3F3F;
            gBldRegs.bldCnt = 0xBF;
            gBldRegs.bldY = fade;
        }

        if (fade == 0x10) {
            TasksDestroyAll();
            PAUSE_BACKGROUNDS_QUEUE();
            SA2_LABEL(gUnknown_03005390) = 0;
            PAUSE_GRAPHICS_QUEUE();
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
        s32 i;
        for (i = 0; i < (s32)ARRAY_COUNT(gExtraBossTaskData.parts); i++) {
            SomeTaskManager_7C *parts = gExtraBossTaskData.parts[i];
            parts->unk0.unk2 = 0;
            parts->unk0.unk4 = 0;
        }

        boss->unk5C = 0;
        boss->qUnk54 = 0;
        boss->unk6E = boss->unk6F;
    }
}
