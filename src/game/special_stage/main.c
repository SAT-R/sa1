#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/sa1_sa2_shared/palette_loader.h"
#include "game/sa1_sa2_shared/player.h"
#include "game/save.h"
#include "game/special_stage/main.h"
#include "game/stage/player_controls.h"
#include "game/stage/terrain_collision.h"

#include "constants/animations.h"
#include "constants/tilemaps.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct Strc_30055E0 {
    u8 unk0;
    s16 unk2;
    u16 qBlend;
    s32 qUnk8;
    u8 fillerC[0x4];
} Strc_30055E0; /* 0x10 */

typedef struct Strc_03005690 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    u8 fillerC[0x4];
    s16 unk10;
    s16 unk12;
    s16 unk14;
    s16 unk16;
    s16 unk18;
    s16 unk1A;
    s16 unk1C;
    s16 unk1E;
    s16 unk20;
    u8 filler22[6];
    u8 unk28;
    u8 unk29;
    u8 unk2A;
    u8 unk2B;
    u8 filler2C[0x2];
    u16 unk2E;
    u8 unk30;
    u8 unk31;
    u16 unk32;
    u16 unk34;
    u8 filler36[0x6];
    s8 unk3C;
    s8 unk3D;
    s8 unk3E;
    u8 unk3F;
    u8 unk40;
    u8 unk41;
    s16 unk42;
    u16 unk44;
    u8 filler46[0x2];
    AnimId anim48;
    u16 variant4A;
    u8 unk4C;
    u8 unk4D;
    u8 filler4E[0x2];
    u16 unk50;
    u16 unk52;
    u16 unk54;
    u8 filler56[0xA];
} Strc_03005690; /* 0x60 */

typedef struct Strc_3005780 {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    u8 unkA;
    s16 unkC;
    s16 unkE;
    s16 unk10;
    s8 unk12;
} Strc_3005780;

// Number of rings needed this round, to continue to the next / (in the last one) collect the emerald.
u16 gSpecialStageTargetRings = 0;

void Task_80299B0(void);
void sub_8029A50(void);
void Task_8029AC4(void);
void sub_8029B74(void);
void sub_8029E0C(s16 arg0);
void sub_8029EA8(s32 unused);
bool32 sub_8029F30(Strc_03005690 *param0);
void sub_802A688(void);
void sub_802A988(void);
void sub_802ABA0(void);
void sub_802ACF0(void);
void sub_802C56C(u8 param0);
void sub_802C934(void);
void sub_802D158(void);
void sub_802D190(void);
void sub_802D1D8(void);
void sub_802D274(void);
u16 sub_802D2F4(Strc_03005690 *param0);
void sub_802D560(void);
void Task_802D2BC(void);

extern void sub_805C448(u8 arg0);
extern void sub_805D048(u8 arg0);
extern void sub_8068D0C();

extern void SetFaceButtonConfig(bool32 flipFaceButtons);

typedef struct TfSprite {
    SpriteTransform tf;
    Sprite s;
} TfSprite;

extern u16 gUnknown_03005028;
extern u16 gUnknown_03005070;
extern Background gUnknown_030055A0;
extern Strc_30055E0 gUnknown_030055E0;
extern TfSprite gUnknown_030055F0;
extern Background gUnknown_03005630;
extern Background gUnknown_03005740;
extern Strc_3005780 gUnknown_03005780;
extern Background gUnknown_030057A0;
extern Background gUnknown_03005800;

extern u16 gUnknown_08487140[][2];
extern u8 gUnknown_08487134[NUM_TIME_ATTACK_ZONES * ACTS_PER_ZONE];
extern Strc_03005690 gUnknown_03005690;

extern const Background gUnknown_08486FF4;
extern const Background gUnknown_08487034;
extern const Background gUnknown_08487074;
extern const Background gUnknown_084870B4;
extern const Background gUnknown_084870F4;

extern const s16 gUnknown_0848715C[16][2];
extern const s16 gUnknown_08487184[16][2];
extern const s16 gUnknown_084871C4[16][2];

void CreateSpecialStage()
{
    SA2_LABEL(sub_801F044)();
    gUnknown_03005730 = 0;
    gUnknown_0300507C = 0;
    gSpecialStageCollectedRings = 0;

    gUnknown_03005028 = gUnknown_08487140[gUnknown_08487134[gCurrentLevel]][0];
    gUnknown_03005070 = gUnknown_08487140[gUnknown_08487134[gCurrentLevel]][1];
    gSpecialStageTargetRings = gUnknown_03005028;

    gPlayer.itemEffect &= ~0x4;

    SetFaceButtonConfig(LOADED_SAVE->btnConfig);

    sub_802D158();
    sub_802D190();
    sub_802D1D8();
    sub_8029B74();
    sub_802C934();

    sub_805C448(1);
}

void Task_80299B0(void)
{
    Strc_03005690 *strc5690 = &gUnknown_03005690;
    Strc_30055E0 *strc55E0 = &gUnknown_030055E0;

    if (strc55E0->unk0 == 2) {
        strc55E0->unk2 = 0x1A4;
        strc5690->unk29 |= 1;
        strc5690->unk2A = 0x40;

        gCurTask->main = sub_8029A50;

        if (gUnknown_03005028 > gSpecialStageCollectedRings) {
            sub_802C56C(2);
        }
    }
    if (strc55E0->unk0 == 1) {
        strc55E0->unk2 = 0x1A4;
        strc5690->unk29 |= 1;
        strc5690->unk2A = 0x80;
        gCurTask->main = sub_802D274;

        if (gUnknown_03005070 > gSpecialStageCollectedRings) {
            sub_802C56C(2);
        }
    }
}

void sub_8029A50(void)
{
    Strc_03005690 *strc5690 = &gUnknown_03005690;

    if (--gUnknown_030055E0.unk2 <= 0) {
        if (gUnknown_03005028 <= gSpecialStageCollectedRings) {
            gUnknown_030055E0.unk0 = 0;
            strc5690->unk29 &= ~0x1;
            sub_802D560();
            gCurTask->main = Task_80299B0;
        } else {
            gStageFlags |= 0x20;
            gCurTask->main = Task_8029AC4;
        }
    }
}

void Task_8029AC4(void)
{
    gUnknown_030055E0.qBlend += Q(0.25);
    gBldRegs.bldCnt = 0x3F9F;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = I(gUnknown_030055E0.qBlend);

    if (gUnknown_030055E0.qBlend >= Q(16)) {
        gBldRegs.bldAlpha = 0x10;

        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        SA2_LABEL(gUnknown_03005390) = 0;
        PAUSE_GRAPHICS_QUEUE();

        gBldRegs.bldCnt |= 0x3F1F;
        if (gUnknown_030055E0.unk0 == 2) {
            sub_805D048(0);
        } else if (gSpecialStageTargetRings <= gSpecialStageCollectedRings) {
            sub_8068D0C();
        } else {
            sub_805D048(0);
        }
    }
}

void sub_8029B74(void)
{
    Strc_3005780 *strc5780 = &gUnknown_03005780;
    s32 var_r0;
    s32 var_r0_2;

    gDispCnt = 0x1C40;
    gBgCntRegs[1] = 0x201;
    gBgCntRegs[2] = 0x5806;
    gBgCntRegs[3] = 0x1C0B;
    strc5780->unk0 = 0x88;
    strc5780->unk2 = 0x20;
    strc5780->unkE = 0;
    strc5780->unk4 = 0;
    strc5780->unk10 = 0;
    strc5780->unk6 = 0;
    strc5780->unk8 = 0;
    strc5780->unkC = 0;

#ifndef NON_MATCHING
    asm("" ::"r"(gBgScrollRegs));
#endif

    var_r0 = 0x88 - strc5780->unk4;
    if (var_r0 < 0) {
        var_r0 += 7;
    }
    gBgScrollRegs[3][0] = (var_r0 >> 3);

    var_r0_2 = strc5780->unk6 + 0x20;
    if (var_r0_2 < 0) {
        var_r0_2 += 7;
    }
    gBgScrollRegs[3][1] = (s16)(var_r0_2 >> 3);
    gBgScrollRegs[2][0] = 0x88;
    gBgScrollRegs[2][1] = 0x20;

    gUnknown_03005630 = gUnknown_08487034;
    gUnknown_030055A0 = gUnknown_08487074;
    gUnknown_03005740 = gUnknown_084870B4;
    gUnknown_03005800 = gUnknown_084870F4;
    gUnknown_030057A0 = gUnknown_08486FF4;

    DrawBackground(&gUnknown_03005630);
    DrawBackground(&gUnknown_030055A0);
    DrawBackground(&gUnknown_03005740);
    DrawBackground(&gUnknown_03005800);
    DrawBackground(&gUnknown_030057A0);

    TaskCreate(Task_802D2BC, 0U, 0x1200U, 0U, NULL);

    // Orthogonal big lights
    CreatePaletteLoaderTask(0x2000U, gUnknown_08487134[gCurrentLevel] + 0x340, 0U, NULL);

    // Diagonal small lights
    CreatePaletteLoaderTask(0x2000U, gUnknown_08487134[gCurrentLevel] + 0x340, 1U, NULL);
}

void sub_8029CDC(void)
{
    Strc_3005780 *strc5780 = &gUnknown_03005780;
    Background *bg5630 = &gUnknown_03005630;
    Background *bg55A0 = &gUnknown_030055A0;
    Background *bg5740 = &gUnknown_03005740;
    Background *bg5800 = &gUnknown_03005800;
    Strc_03005690 *strc5690 = &gUnknown_03005690;
    s32 temp_r0;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    register s32 r1 asm("r1");
    u8 r2;
    u32 temp_r0_2;

    strc5780->unk4 = I(-((strc5690->unk0 / 134) * 32));
    temp_r0 = (s32)(0 - (((s32)strc5690->unk4 / 94) << 5)) >> 8;
    strc5780->unk6 = (s16)temp_r0;
    if ((s32)(s16)temp_r0 < -0x20) {
        strc5780->unk6 = -0x20;
    }
    if ((s32)strc5780->unk6 > 0x20) {
        strc5780->unk6 = 0x20;
    }
    if ((s32)strc5780->unk4 < -0x20) {
        strc5780->unk4 = -0x20;
    }
    if ((s32)strc5780->unk4 > 0x20) {
        strc5780->unk4 = 0x20;
    }

#ifndef NON_MATCHING
    asm("" ::"r"(gBgScrollRegs));
#endif

    var_r0 = strc5780->unk0 - strc5780->unk4;
    if (var_r0 < 0) {
        var_r0 += 7;
    }
    gBgScrollRegs[3][0] = (s16)(var_r0 >> 3);
    var_r0_2 = strc5780->unk2 + strc5780->unk6;
    if (var_r0_2 < 0) {
        var_r0_2 += 7;
    }
    gBgScrollRegs[3][1] = (s16)(var_r0_2 >> 3);

    gBgScrollRegs[2][0] = strc5780->unk0 - strc5780->unk4;
    gBgScrollRegs[2][1] = strc5780->unk2 + strc5780->unk6;

    r2 = strc5780->unk12;
    strc5780->unk12 = ((strc5690->unk18 >> 9) + r2) & 0x3F;
    var_r0_3 = strc5780->unk12;
    if (var_r0_3 < 0) {
        var_r0_3 += 3;
    }
    bg5630->tilemapId = TM_SPECIAL_STAGE_BG_FRAME_0 + (var_r0_3 >> 2);
    var_r0_4 = strc5780->unk12;

#ifndef NON_MATCHING
    asm("mov r2, r0" ::"r"(var_r0_4));
#endif

    r1 = var_r0_4;
    if (r1 < 0) {
        var_r0_4 = r1 + 3;
    }
    bg55A0->tilemapId = (var_r0_4 >> 2) + 0x37;
    bg5740->tilemapId = (var_r0_4 >> 2) + 0x37;
    bg5800->tilemapId = (var_r0_4 >> 2) + 0x37;
    bg5630->flags &= 0xFFF7;
    DrawBackground(bg5630);
    DrawBackground(bg55A0);
    DrawBackground(bg5740);
    DrawBackground(bg5800);
}

void sub_8029E0C(s16 arg0)
{
    gUnknown_03005690.unk4C = arg0; // NOTE: arg0 downcast to u8!
    gUnknown_03005690.unk0 = 0;
    gUnknown_03005690.unk4 = 0;
    gUnknown_03005690.unk8 = 0;
    gUnknown_03005690.unk10 = -52;
    gUnknown_03005690.unk14 = 0;
    gUnknown_03005690.unk16 = 0;
    gUnknown_03005690.unk18 = 0x800;
    gUnknown_03005690.unk1A = 0;
    gUnknown_03005690.unk2B = 0;
    gUnknown_03005690.unk28 = 0;
    gUnknown_03005690.unk29 = 1;
    gUnknown_03005690.unk2A = 0;
    gUnknown_03005690.unk2E = 0;
    gUnknown_03005690.unk30 = 0;
    gUnknown_03005690.unk31 = 0;
    gUnknown_03005690.unk40 = 1;
    gUnknown_03005690.unk42 = 0;
    gUnknown_03005690.unk44 = 0;
    gUnknown_03005690.anim48 = SA1_CHAR_ANIM_27 + gPlayerCharacterIdleAnims[gUnknown_03005690.unk4C];
    gUnknown_03005690.variant4A = 4;
    gUnknown_03005690.unk34 = 0;
    gUnknown_03005690.unk3F = 0;
    gUnknown_03005690.unk50 = 0;
    gUnknown_03005690.unk52 = 0;
    gUnknown_03005690.unk3D = 0;
    gUnknown_03005690.unk3E = 0;
    gUnknown_03005690.unk32 = 0;
}

void sub_8029EA8(s32 unused)
{
    Strc_03005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf;

    s->graphics.dest = OBJ_VRAM0;
    s->graphics.size = 0;
    s->graphics.anim = strc5690->anim48;
    s->variant = strc5690->variant4A;
    s->prevVariant = -1;
    s->x = (DISPLAY_WIDTH / 2) + I(strc5690->unk0);
    s->y = (DISPLAY_HEIGHT / 2) - I(strc5690->unk4);
    s->oamFlags = 0x180;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2) | SPRITE_FLAG_MASK_ROT_SCALE_ENABLE;

    tf = &gUnknown_030055F0.tf;
    tf->rotation = 0;
    tf->qScaleX = Q(1);
    tf->qScaleY = Q(1);
    tf->x = 0;
    tf->y = 0;
}

bool32 sub_8029F30(Strc_03005690 *param0)
{
    if (!(1 & param0->unk29)) {
        if (8 & param0->unk29) {
            param0->unk28 = 2;
            ClearBit(param0->unk29, 3);
            sub_802A988();
            return TRUE;
        } else if (4 & param0->unk29) {
            if (param0->unk52 != param0->unk50) {
                param0->unk28 = 1;
                ClearBit(param0->unk29, 2);
                param0->unk52 = param0->unk50;
                sub_802A688();
                return TRUE;
            }
        }
    }

    return FALSE;
}

bool32 sub_8029FA4(Strc_03005690 *param0)
{
    if (param0->unk3E != 0) {
        param0->unk3E--;
        param0->unk3D = 0;
    } else if (param0->unk3D != 0) {
        param0->unk3D--;

        if (param0->unk44 & gPlayerControls.attack) {
            sub_802ACF0();
            MPlayStop(gMPlayTable[gSongTable[42].ms].info);
            CreateSpStageTrickSoundTask(MUS_SP_STAGE_TRICK, MUS_SPECIAL_STAGE);
            return TRUE;
        }
    } else if (param0->unk44 & gPlayerControls.attack) {
        if (!(1 & param0->unk29)) {
            if (0x200 & param0->unk44) {
                param0->unk3C = 0;
            } else {
                param0->unk3C = -1;
            }
            sub_802ABA0();
            return TRUE;
        }
    }

    return FALSE;
}

void sub_802A068(Strc_03005690 *param0)
{
    s32 temp_r0;
    s32 var_r0;
    u16 temp_r1;

    if (0xC0 & param0->unk42) {
        param0->unk1E = gUnknown_084871C4[(0xF0 & param0->unk42) >> 4][1];
        if ((param0->unk16 > 0) && (param0->unk1E < 0)) {
            param0->unk16 = 0;
        }
        if ((param0->unk16 < 0) && (param0->unk1E > 0)) {
            param0->unk16 = 0;
        }
    } else {
        var_r0 = param0->unk16;
        if (var_r0 < 0) {
            var_r0 += 3;
        }

        param0->unk1E = -(var_r0 >> 2);
        if (param0->unk1E == 0) {
            param0->unk1E = 0 - (u16)param0->unk16;
        }
    }

    if (0x30 & param0->unk42) {
        param0->unk1C = gUnknown_084871C4[(0xF0 & param0->unk42) >> 4][0];
        if ((param0->unk14 > 0) && (param0->unk1C < 0)) {
            param0->unk14 = 0;
        }
        if ((param0->unk14 < 0) && (param0->unk1C > 0)) {
            param0->unk14 = 0;
        }
    } else {
        var_r0 = param0->unk14;
        if (var_r0 < 0) {
            var_r0 += 3;
        }
        param0->unk1C = -(var_r0 >> 2);
        if (param0->unk1C == 0) {
            param0->unk1C = -param0->unk14;
        }
    }
}

void sub_802A134(Strc_03005690 *param0)
{
    Sprite *s = &gUnknown_030055F0.s;
    u32 var_r0;

    if (2 & param0->unk29) {
        if (param0->unk18 <= Q(12)) {
            param0->anim48 = SA1_CHAR_ANIM_29 + gPlayerCharacterIdleAnims[param0->unk4C];
            param0->variant4A = 0;
        } else {
            param0->anim48 = SA1_CHAR_ANIM_29 + gPlayerCharacterIdleAnims[param0->unk4C];
            param0->variant4A = 1;
        }
    } else {
        if ((0xF0 & param0->unk42) != 0) {
            param0->anim48 = gUnknown_08487184[((0xF0 & param0->unk42) >> 4)][0] + gPlayerCharacterIdleAnims[param0->unk4C];
            param0->variant4A = gUnknown_08487184[((0xF0 & param0->unk42) >> 4)][1];
        } else {
            var_r0 = sub_802D2F4(param0);
            param0->anim48 = gUnknown_0848715C[var_r0][0] + gPlayerCharacterIdleAnims[param0->unk4C];
            param0->variant4A = gUnknown_0848715C[var_r0][1];
        }
    }

    if ((s->graphics.anim != param0->anim48) || (s->variant != param0->variant4A)) {
        s->graphics.anim = param0->anim48;
        s->variant = param0->variant4A;
        s->prevVariant = -1;
    }
}

void sub_802A248(Strc_03005690 *param0)
{
    s32 param0_unk0 = param0->unk0;
    s32 param0_unk4 = param0->unk4;
    s32 temp_r2_2;
    s32 var_r0;
    s32 var_r0_4;
    s32 var_r0_5;
    u16 temp_r0_2;
    u8 var_r1_5;

    param0->unk14 += param0->unk1C;
    param0->unk16 += param0->unk1E;
    param0->unk18 += param0->unk20;

    switch (param0->unk28) {
        case 0:
        case 2:
        case 3:
        case 4:
        case 5: {
            if (param0->unk14 > 0x400) {
                param0->unk14 = 0x400;
            } else if (param0->unk14 < -0x400) {
                param0->unk14 = -0x400;
            }

            if (param0->unk16 > 0x400) {
                param0->unk16 = 0x400;
            } else if (param0->unk16 < -0x400) {
                param0->unk16 = -0x400;
            }

            if (param0->unk18 <= 0xC00) {
                if (param0->unk18 <= 0x7FF) {
                    param0->unk18 = 0x800;
                }
            } else {
                param0->unk18 = 0xC00;
            }

            if (param0->unk18 == 0x800) {
                param0->unk29 &= ~2;
            } else {
                param0->unk29 |= 2;
            }

            if (2 & param0->unk29) {
                param0_unk4 = param0->unk4 >> 5;
                if (param0_unk4 >= 0) {
                    if (param0_unk4 < param0->unk16) {
                        param0->unk16 = param0_unk4;
                    }
                } else {
                    if (param0_unk4 > param0->unk16) {
                        param0->unk16 = param0_unk4;
                    }
                }

                if (2 & param0->unk29) {
                    param0->unk0 += (param0->unk14 * 8) / I(param0->unk18);
                    param0->unk4 += (param0->unk16 * 8) / I(param0->unk18);
                    param0->unk0 -= (param0->unk0 >> 5);
                    param0->unk4 -= (param0->unk4 >> 5);
                } else {
                    param0->unk0 += param0->unk14;
                    param0->unk4 += param0->unk16;
                }
            } else {
                param0->unk0 += param0->unk14;
                param0->unk4 += param0->unk16;
            }
            if (!(1 & param0->unk29)) {
                param0->unk8 += param0->unk18;
            }
        } break;

        case 1: {
            switch (param0->unk54) {
                default: {
                    param0->unk0 = param0_unk0 + param0->unk14;
                    param0->unk4 = param0_unk4 + param0->unk16;
                } break;

                case 4: {
                    param0->unk14 += param0->unk1C;
                    param0->unk16 += param0->unk1E;

                    if (param0->unk14 > 0x400) {
                        param0->unk14 = 0x400;
                    } else if (param0->unk14 < -0x400) {
                        param0->unk14 = -0x400;
                    }

                    if (param0->unk16 > 0x400) {
                        param0->unk16 = 0x400;
                    } else if (param0->unk16 < -0x400) {
                        param0->unk16 = -0x400;
                    }

                    param0->unk14 = (param0->unk14 * I(param0->unk18)) / 8;
                    param0->unk16 = (param0->unk16 * I(param0->unk18)) / 8;

                    param0->unk0 += param0->unk14;
                    param0->unk4 += param0->unk16;
                } break;

                case 5: {
                    param0->unk14 += param0->unk1C;
                    param0->unk16 += param0->unk1E;

                    if (param0->unk14 > 0x400) {
                        param0->unk14 = 0x400;
                    } else if (param0->unk14 < -0x400) {
                        param0->unk14 = -0x400;
                    }

                    if (param0->unk16 > 0x400) {
                        param0->unk16 = 0x400;
                    } else if (param0->unk16 < -0x400) {
                        param0->unk16 = -0x400;
                    }

                    param0->unk14 = (param0->unk14 * 8) / I(param0->unk18);
                    param0->unk16 = (param0->unk16 * 8) / I(param0->unk18);
                    param0->unk0 += param0->unk14;
                    param0->unk4 += param0->unk16;
                }
            }
            if (!(1 & param0->unk29)) {
                param0->unk8 += param0->unk18;
            }
        } break;
    }

    if (param0->unk0 < -Q(134)) {
        param0->unk0 = -Q(134);
    }
    if (param0->unk0 > +Q(134)) {
        param0->unk0 = +Q(134);
    }
    if (param0->unk4 < -Q(94)) {
        param0->unk4 = -Q(94);
    }
    if (param0->unk4 > +Q(94)) {
        param0->unk4 = +Q(94);
    }
}
