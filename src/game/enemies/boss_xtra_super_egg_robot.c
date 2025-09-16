#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/enemies/bosses_shared.h" // CreatePreBossCameraPan
#include "game/nuts_and_bolts_task.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/stage/dust_effect_braking.h"
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

const u8 gUnknown_084AE560[] = { 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0 };

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

// (90.35%) https://decomp.me/scratch/a1vhA
NONMATCH("asm/non_matching/game/enemies/boss_xtra__sub_8050194.inc", s32 sub_8050194(SuperEggRobo *boss))
{
    SuperEggRobo *sp4;
    u32 sp8;
    u32 spC;
    SomeTaskManager_7C *temp_r8;
    SomeTaskManager_7C *temp_r8_2;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r1_3;
    s32 temp_r1_6;
    s32 temp_r2_3;
    s32 temp_r3;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r5_3;
    s32 temp_r6;
    s32 temp_r7;
    s32 temp_sb;
    s32 temp_sb_2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r1;
    s32 var_r3;
    s32 var_r4;
    s32 var_r6;
    s32 var_r7;
    s32 var_r7_2;
    s32 var_sl;
    u16 temp_r5;
    u32 temp_r5_2;
    s16 temp_r1_2;
    s16 theta;
    s16 temp_r1_5;
    u32 temp_r2;
    u32 temp_r2_2;
    s32 sinV;

    BrakeDustEffect *brakeDust;

    sp4 = boss;
    temp_r8 = gExtraBossTaskData.parts[0xE];
    temp_r5 = gExtraBossTaskData.parts[0xE]->unk70;
    sp8 = gExtraBossTaskData.parts[0xD]->unk70;
    var_r7 = I(temp_r8->unk0.qUnk50) + (gStageTime * 8);
    temp_r1 = var_r7 - 72;
    if (temp_r1 >= 0xA80) {
        var_r7 = temp_r1;
        var_r7 = Mod(var_r7, 0xA80) + 72;
    }
    temp_r1_2 = temp_r5 >> 6;
    var_r3 = I(temp_r8->unk0.qUnk54);
    sinV = (SIN_24_8(temp_r1_2) << 0xC);
    temp_r6 = var_r3 + ((((COS_24_8(temp_r1_2) * Q(9)) - (sinV)) >> 0x10) + 6);
    temp_sb = sa2__sub_801F100(temp_r6, var_r7 + 0x10, 1, 8, sa2__sub_801EC3C);
    temp_r4 = I(temp_r8->unk0.qUnk54);
    temp_r2 = sp8 >> 6;
    temp_r4 = (temp_r4 + (((((SIN_24_8(temp_r2)) * Q(21)) + (COS_24_8(temp_r2) << 0xB)) >> 0x10))) + 6;
    var_sl = sa2__sub_801F100(temp_r4, var_r7 + 21, 1, 8, sa2__sub_801EC3C);
    if (var_sl > temp_sb) {
        var_sl = temp_sb;
    }
    if ((var_sl <= 0) && (sp4->unk6E != 1) && (gStageTime & 1)) {
        if (!(PseudoRandom32() & 0x30000)) {
            s32 var = I(temp_r8->unk0.qUnk50);
            var_r0_2 = temp_r4;
            if (var_r0_2 < temp_r6) {
                var_r0_2 = temp_r6;
            }
            brakeDust = TASK_DATA(CreateBrakingDustEffect(var, var_r0_2 - 2));
            brakeDust->unk4 = -4;
        }
    }

    temp_r8_2 = gExtraBossTaskData.parts[0x11];
    temp_r5_2 = gExtraBossTaskData.parts[0x11]->unk70;
    spC = gExtraBossTaskData.parts[0x10]->unk70;

    var_r7_2 = (temp_r8_2->unk0.qUnk50 >> 8);
    var_r7_2 += (gStageTime * 8);
    if (var_r7_2 - 72 >= 0xA80) {
        var_r7_2 = Mod(var_r7_2 - 72, 0xA80) + 72;
    }
    var_r3 = I(temp_r8_2->unk0.qUnk54);
    sinV = ((SIN_24_8(temp_r5_2 >> 6)) << 0xC);
    temp_r5_3 = var_r3 + (((((COS_24_8(temp_r5_2 >> 6)) * Q(9)) - sinV) >> 0x10) + 6);
    temp_sb_2 = sa2__sub_801F100(temp_r5_3, var_r7_2 + 16, 1, 8, sa2__sub_801EC3C);
    temp_r4_2 = I(temp_r8_2->unk0.qUnk54);
    temp_r4_2 += ((((SIN_24_8(spC >> 6)) * Q(21)) + ((COS_24_8(spC >> 6)) << 0xB)) >> 0x10) + 6;
    var_r6 = sa2__sub_801F100(temp_r4_2, var_r7_2 + 21, 1, 8, sa2__sub_801EC3C);
    if (var_r6 > temp_sb_2) {
        var_r6 = temp_sb_2;
    }
    if ((var_r6 <= 0) && (sp4->unk6E != 1) && !(gStageTime & 1)) {
        if (!(PseudoRandom32() & 0x30000)) {
            s32 var = I(temp_r8_2->unk0.qUnk50);
            var_r0_3 = temp_r4_2;
            if (var_r0_3 < temp_r5_3) {
                var_r0_3 = temp_r5_3;
            }
            brakeDust = TASK_DATA(CreateBrakingDustEffect(var, var_r0_3 - 2));
            brakeDust->unk4 = -4;
        }
    }

    theta = (gExtraBossTaskData.parts[0]->unk70 >> 6);
    temp_r2_3 = COS_24_8(theta);
    temp_r3 = SIN_24_8(theta);
    temp_r7 = I(gExtraBossTaskData.parts[0]->unk0.qUnk54) + (((temp_r3 * Q(27)) - (temp_r2_3 * Q(22))) >> 0x10);
    var_r4 = I(gExtraBossTaskData.parts[0]->unk0.qUnk50) + (((temp_r2_3 * Q(27)) + (temp_r3 * Q(22))) >> 0x10) + (gStageTime * 8);

    if (var_r4 - 72 >= 0xA80) {
        var_r4 = Mod(var_r4 - 72, 0xA80) + 72;
    }

    var_r0 = sa2__sub_801F100(temp_r7, var_r4, 1, 8, sa2__sub_801EC3C);
    var_r1 = var_r6;
    if (var_r1 > var_sl) {
        var_r1 = var_sl;
    }
    if (var_r0 > var_r1) {
        var_r0 = var_r1;
    }
    return var_r0;
}
END_NONMATCH