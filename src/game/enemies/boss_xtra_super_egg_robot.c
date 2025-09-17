#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/enemies/bosses_shared.h" // CreatePreBossCameraPan
#include "game/nuts_and_bolts_task.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/save.h"
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

SomeTaskManager_7C *sub_8052474(SomeTaskManager_7C *strc, s32 param1, s32 param2, s32 param3);
SomeTaskManager_7C *sub_80524F0(SomeTaskManager_7C *strc, s32 param1, s32 param2, s32 param3);
SomeTaskManager_7C *sub_8052578(SomeTaskManager_7C *strc, s32 param1, s32 param2, s32 param3);
SomeTaskManager_7C *sub_80525E0(SomeTaskManager_7C *strc, s32 param1, s32 param2, s32 param3);
SomeTaskManager_7C *sub_805265C(SomeTaskManager_7C *strc, s32 param1, s32 param2, s32 param3);
SomeTaskManager_7C *sub_8052838(SuperEggRobo *boss, s32 param1, s32 param2, s32 param3);

typedef struct GfxInfo {
    TileInfoBitfield tileInfo;
    u8 *vram;
} GfxInfo;

SomeTaskManager_7C *sub_80526C4(SomeTaskManager_7C *strc, s32 param1, s32 param2, GfxInfo *gfx, s32 param4);
SomeTaskManager_7C *sub_8052724(SomeTaskManager_7C *strc, s32 param1, s32 param2, GfxInfo *gfx, s32 param4);
SomeTaskManager_7C *sub_8052780(SomeTaskManager_7C *strc, s32 param1, s32 param2, GfxInfo *gfx, s32 param4);
SomeTaskManager_7C *sub_80527DC(SomeTaskManager_7C *strc, s32 param1, s32 param2, GfxInfo *gfx, s32 param4);

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

NONMATCH("asm/non_matching/game/enemies/boss_xtra__sub_80504DC.inc", void sub_80504DC(SuperEggRobo *boss, MapEntity *me))
{
    GfxInfo gfx;
    GfxInfo gfx2;
    SomeTaskManager_7C *strc, *prevStrc;
    s32 index;

    ExtraBossTaskData *extraBoss;
    SomeTaskManager_7C *parts;
    Sprite *s;

    boss->unk60 = 0;
    boss->qUnk64 = TO_WORLD_POS(me->y, boss->base.regionY);
    boss->qUnk44 = -0x10000;
    boss->qUnk48 = -0x3600;
    boss->qUnk4C = 0;
    boss->qUnk4E = 0;
    boss->qUnk50 = 0;
    boss->qUnk52 = 0;
    boss->flags58 = 0x400002;
    boss->unk5C = 0;
    boss->qUnk54 = 0;
    boss->qUnk56 = 0;
    boss->unk6C = 240;
    boss->unk68 = 8;
    boss->unk68 -= (LOADED_SAVE->difficultyLevel * 2);
    boss->unk69 = 0;
    boss->unk6A = 0x24;
    boss->unk6B = 0x36;
    boss->unk6E = 0;
    boss->unk6F = 0;

    extraBoss = &gExtraBossTaskData;
    index = 0;
    prevStrc = sub_8052838(boss, 0, 0, 21);
    extraBoss->parts[index] = prevStrc;
    prevStrc->unk0.unk0 = index;
    index = 1;
    prevStrc = sub_8052474(prevStrc, 0x400, 0xFFFFE400, 0x16);
    extraBoss->parts[index] = prevStrc;
    prevStrc->unk0.unk0 = index;
    index = 2;

    prevStrc = sub_80524F0(extraBoss->parts[0], 0xB00, 0xFFFFE900, 0xF);
    extraBoss->parts[index] = prevStrc;
    extraBoss->parts[index]->unk0.unk0 = index;
    extraBoss->parts[index]->unk0.s.frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;
    SPRITE_FLAG_SET_VALUE(&extraBoss->parts[index]->unk0.s, PRIORITY, 1);
    index = 3;
    prevStrc = sub_8052578(extraBoss->parts[index - 1], 0, 0x1400, 0x10);
    extraBoss->parts[index] = prevStrc;
    extraBoss->parts[index]->unk0.unk0 = index;
    extraBoss->parts[index]->unk0.s.frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;
    SPRITE_FLAG_SET_VALUE(&extraBoss->parts[index]->unk0.s, PRIORITY, 1);
    index = 4;
    prevStrc = sub_80525E0(extraBoss->parts[index - 1], 0, 0x1200, 0xF);
    extraBoss->parts[index] = prevStrc;
    extraBoss->parts[index]->unk0.unk0 = index;
    extraBoss->parts[index]->unk0.s.frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;
    SPRITE_FLAG_SET_VALUE(&extraBoss->parts[index]->unk0.s, PRIORITY, 1);
    index = 5;
    prevStrc = sub_8052578(extraBoss->parts[index - 1], 0, 0x1200, 0x10);
    extraBoss->parts[index] = prevStrc;
    extraBoss->parts[index]->unk0.unk0 = index;
    extraBoss->parts[index]->unk0.s.frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;
    SPRITE_FLAG_SET_VALUE(&extraBoss->parts[index]->unk0.s, PRIORITY, 1);
    index = 6;
    prevStrc = sub_805265C(extraBoss->parts[index - 1], 0, 0x800, 0xE);
    prevStrc = prevStrc;
    extraBoss->parts[index] = prevStrc;
    extraBoss->parts[index]->unk0.unk0 = index;
    extraBoss->parts[index]->unk0.s.frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;
    SPRITE_FLAG_SET_VALUE(&extraBoss->parts[index]->unk0.s, PRIORITY, 1);

    index = 7;
    prevStrc = sub_80524F0(extraBoss->parts[0], 0xFFFFFB00, 0xFFFFE700, 0x1B);
    extraBoss->parts[index] = prevStrc;
    extraBoss->parts[index]->unk0.unk0 = index;
    index = 8;
    prevStrc = sub_8052578(prevStrc, 0, 0x1400, 0x1C);
    extraBoss->parts[index] = prevStrc;
    extraBoss->parts[index]->unk0.unk0 = index;
    index = 9;
    prevStrc = sub_80525E0(prevStrc, 0, 0x1200, 0x1B);
    extraBoss->parts[index] = prevStrc;
    extraBoss->parts[index]->unk0.unk0 = index;
    index = 10;
    prevStrc = sub_8052578(prevStrc, 0, 0x1200, 0x1C);
    extraBoss->parts[index] = prevStrc;
    extraBoss->parts[index]->unk0.unk0 = index;
    index = 11;
    prevStrc = sub_805265C(prevStrc, 0, 0x800, 0x1A);
    extraBoss->parts[index] = prevStrc;
    extraBoss->parts[index]->unk0.unk0 = index;

    gfx.tileInfo.anim = 0x29B;
    gfx.tileInfo.variant = 0;
    gfx.vram = VramMalloc(0x10U);
    index = 12;
    strc = sub_80526C4(extraBoss->parts[0], 0x200, 0x500, &gfx, 0x14);
    extraBoss->parts[index] = strc;
    extraBoss->parts[index]->unk0.unk0 = index;
    extraBoss->parts[index]->unk76 = 0xE000;
    extraBoss->parts[index]->unk72 = 0x100;
    extraBoss->parts[index]->unk0.s.frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;
    SPRITE_FLAG_SET_VALUE(&extraBoss->parts[index]->unk0.s, PRIORITY, 1);

    {
        SomeTaskManager_7C *strcInner;
        gfx.tileInfo.anim = 0x29D;
        gfx.tileInfo.variant = 0;
        gfx.vram = VramMalloc(9U);
        strcInner = sub_8052724(strc, 0, 0, &gfx, 0x13);
        strcInner->unk0.s.frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;
        SPRITE_FLAG_SET_VALUE(&strcInner->unk0.s, PRIORITY, 1);
    }

    gfx.tileInfo.anim = 0x29C;
    gfx.tileInfo.variant = 0;
    gfx.vram = VramMalloc(64);
    index = 13;
    strc = sub_8052780(strc, 0xFFFFF700, 0xC00, &gfx, 0x12);
    extraBoss->parts[index] = strc;
    extraBoss->parts[index]->unk0.unk0 = index;
    extraBoss->parts[index]->unk0.s.frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;
    SPRITE_FLAG_SET_VALUE(&extraBoss->parts[index]->unk0.s, PRIORITY, 1);

    gfx.tileInfo.anim = 0x29B;
    gfx.tileInfo.variant = 2;
    gfx.vram = VramMalloc(0x10U);
    index = 14;
    extraBoss->parts[index] = sub_80527DC(strc, 0x300, 0x1B00, &gfx, 0x11);
    strc = extraBoss->parts[index];
    extraBoss->parts[index]->unk0.unk0 = index;
    extraBoss->parts[index]->unk0.s.frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;
    SPRITE_FLAG_SET_VALUE(&extraBoss->parts[index]->unk0.s, PRIORITY, 1);

    gfx2.tileInfo.anim = 0x29B;
    gfx2.tileInfo.variant = 1;
    gfx2.vram = VramMalloc(0x10U);
    index = 15;
    strc = sub_80526C4(extraBoss->parts[0], 0xFFFFFA00, 0x500, &gfx2, 0x17);
    extraBoss->parts[index] = strc;
    extraBoss->parts[index]->unk0.unk0 = index;
    extraBoss->parts[index]->unk76 = 0x2000;
    extraBoss->parts[index]->unk72 = -0x100;

    {
        SomeTaskManager_7C *strcInner;
        gfx2.tileInfo.anim = 0x29C;
        gfx2.tileInfo.variant = 1;
        gfx2.vram = VramMalloc(0x40U);
        index = 16;
        strc = sub_8052780(strc, 0xFFFFF700, 0xB00, &gfx2, 0x16);
        extraBoss->parts[index] = strc;
        extraBoss->parts[index]->unk0.unk0 = index;
    }

    gfx2.tileInfo.anim = 0x29B;
    gfx2.tileInfo.variant = 3;
    gfx2.vram = VramMalloc(0x10U);
    index = 17;
    extraBoss->parts[index] = sub_80527DC(strc, 0x300, 0x1B00, &gfx2, 0x18);
    extraBoss->parts[index]->unk0.unk0 = index;

    if (gInput == (B_BUTTON | START_BUTTON | DPAD_VERTICAL | DPAD_SIDEWAYS)) {
        boss->flags58 |= 0x80000000;
    }
}
END_NONMATCH
