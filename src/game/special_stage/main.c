#include "global.h"
#include "core.h"
#include "trig.h"
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
    s16 unkC;
    s16 unkE;
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
    s16 unk32;
    s16 unk34;
    u8 filler36[0x4];
    s16 unk3A;
    s8 unk3C;
    s8 unk3D;
    s8 unk3E;
    u8 unk3F;
    u8 unk40;
    u8 unk41;
    u16 unk42;
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

typedef struct SpStage74 {
    SpriteTransform tf;
    Sprite s;
    s32 unk3C;
    s32 unk40;
    s32 unk44;
    u8 filler48[0x8];
    s16 unk50;
    s16 unk52;
    s16 unk54;
    s16 unk56;
    s16 unk58;
    s16 unk5A;
    s16 unk5C;
    u8 filler5E[2];
    s16 unk60;
    AnimId anim62;
    u16 variant64;
    u8 unk66;
    u8 unk67;
    s16 unk68;
    u8 unk6A;
    u8 unk6B;
    u8 filler6C[2];
    u16 unk6E;
    u16 unk70;
    u8 filler72[2];
} SpStage74;

typedef struct SpStage8 {
    u8 filler0[2];
    u16 unk2;
    u16 unk4;
    u8 unk6;
} SpStage8;

// Stage layouts?
typedef struct SpStageC {
    s16 unk0;
    s16 unk2;
    s32 unk4;
    u16 unk8;
} SpStageC; /* 0x0C */

// Number of rings needed this round, to continue to the next / (in the last one) collect the emerald.
u16 gSpecialStageTargetRings = 0;

void Task_80299B0(void);
void sub_8029A50(void);
void Task_8029AC4(void);
void sub_8029B74(void);
void sub_8029E0C(s16 arg0);
void sub_8029EA8(s32 unused);
bool32 sub_8029F30(Strc_03005690 *param0);
bool32 sub_8029FA4(Strc_03005690 *param0);
void sub_802A068(Strc_03005690 *strc5690);
void sub_802A134(Strc_03005690 *strc5690);
void sub_802A248(Strc_03005690 *strc5690);
void sub_802A4C4(Strc_03005690 *strc5690);
void Task_802A560(void);
void sub_802A688(void);
void sub_802A890(void);
void sub_802A988(void);
void Task_802AA48(void);
void sub_802AAF0(void);
void sub_802ABA0(void);
void Task_802AC50(void);
void sub_802ACF0(void);
void sub_802B008(void);
void sub_802B07C(void);
void sub_802B18C(void);
void sub_802B214(void);
void Task_802AD9C(void);
void Task_802AE40(void);
void Task_802BEDC(void);
void sub_802C56C(u8 param0);
void sub_802C6C4(void);
void sub_802C934(void);
void sub_802D158(void);
void sub_802D190(void);
void sub_802D1D8(void);
void sub_802D274(void);
u16 sub_802D2F4(Strc_03005690 *param0);
void sub_802D33C(void);
void Task_802D508(void);
void sub_802D560(void);
u8 sub_802D58C(s16 param0);
void Task_802D2BC(void);

void sub_802BE0C(Sprite *s, SpriteTransform *tf);

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
extern const s16 gUnknown_084871C4[16][2];
extern const s16 gUnknown_08487214[12][2];
extern const s16 gUnknown_0848722C[16][3];

extern SpStageC *gUnknown_087BF8DC[7];

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
#ifndef NON_MATCHING
    register s32 r1 asm("r1");
#else
    s32 r1;
#endif
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

// (90.14%) https://decomp.me/scratch/ZDa67
NONMATCH("asm/non_matching/game/special_stage/sub_802A4C4.inc", void sub_802A4C4(Strc_03005690 *param0))
{
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;
    s16 temp_r1;
    s16 temp_r1_3;
    s16 x16, y16;
    s16 temp_r8;
    s32 r1, r8;
    s32 temp_r1_2;

    r8 = param0->unk10;
    temp_r1_2 = (param0->unk10 + 0x240);
    x16 = I((param0->unk0 * (param0->unk10 + 0x240)) / 576);
    y16 = I((param0->unk4 * (param0->unk10 + 0x240)) / 576);
    r1 = 80;
    r1 -= y16;

    param0->unkC = (x16 += 120 + gUnknown_03005780.unk4);
    param0->unkE = r1 -= (u16)gUnknown_03005780.unk6;
    s->x = param0->unkC;
    s->y = param0->unkE;
    tf->x = s->x;
    tf->y = s->y;
    tf->rotation = 0;
    tf->qScaleX = r8 + Q(1);
    tf->qScaleY = r8 + Q(1);
    s->frameFlags = 0x2020;
}
END_NONMATCH

void Task_802A560(void)
{
    Strc_03005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;
    u32 var_r0;

    strc5690->unk42 = gInput;
    strc5690->unk44 = gPressedKeys;
    if (0xC0 & strc5690->unk2A) {
        strc5690->unk32 = 0x78;
        strc5690->unk14 = (-strc5690->unk0) / 120;
        strc5690->unk16 = (-strc5690->unk4) / 120;
        strc5690->unk1C = 0;
        strc5690->unk1E = 0;
        gCurTask->main = Task_802AE40;
        Task_802AE40();
    } else {
        if (!sub_8029F30(strc5690) && !sub_8029FA4(strc5690)) {
            strc5690->unk12 = (strc5690->unk12 + 0x10) & 0x3FF;
            strc5690->unk10 = SIN_24_8(strc5690->unk12) / 16u;
            if ((strc5690->unk42 & gPlayerControls.jump) && !(1 & strc5690->unk29)) {
                strc5690->unk20 = +Q(1);
            } else {
                var_r0 = 2 & strc5690->unk29;
                if (var_r0 != 0) {
                    strc5690->unk20 = -Q(1);
                } else {
                    strc5690->unk20 = Q(0);
                }
            }
            sub_802A068(strc5690);
            sub_802A134(strc5690);
            sub_802A248(strc5690);
            sub_802A4C4(strc5690);
            UpdateSpriteAnimation(s);
            sub_802BE0C(s, tf);
            DisplaySprite(s);
        }
    }
}

void sub_802A688(void)
{
    Strc_03005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;
    u16 index;

    index = strc5690->unk54 - 4;
    strc5690->anim48 = gUnknown_08487214[index][0] + gPlayerCharacterIdleAnims[strc5690->unk4C];
    strc5690->variant4A = gUnknown_08487214[index][1];
    s->graphics.anim = strc5690->anim48;
    s->variant = strc5690->variant4A;
    s->prevVariant = -1;
    if (2 & strc5690->unk29) {
        strc5690->unk14 = (gUnknown_0848722C[index][0] * 4) / 3;
        strc5690->unk16 = (gUnknown_0848722C[index][1] * 4) / 3;
        strc5690->unk18 = (gUnknown_0848722C[index][2] * 4) / 3;
    } else {
        strc5690->unk14 = gUnknown_0848722C[index][0];
        strc5690->unk16 = gUnknown_0848722C[index][1];
        strc5690->unk18 = gUnknown_0848722C[index][2];
    }

    switch (index) {
        default: {
            s32 unk20;
            strc5690->unk1C = -(gUnknown_0848722C[index][0] >> 7);
            strc5690->unk1E = -(gUnknown_0848722C[index][1] >> 7);
            strc5690->unk20 = -32;

#ifndef NON_MATCHING
            // NOTE: This works, but converts each value to double, multiplies two doubles in software and then converts them back to
            // integer.
            //       Considering the mul values are just 1.5 and 3, this can be done as integers.
            strc5690->unk14 *= 1.5;
            strc5690->unk16 *= 1.5;
            strc5690->unk18 *= 1.5;
            strc5690->unk1C *= 3.0;
            strc5690->unk1E *= 3.0;
#else
            // This is now just one add and two/one shifts
            strc5690->unk14 = (strc5690->unk14 * 3) >> 1;
            strc5690->unk16 = (strc5690->unk16 * 3) >> 1;
            strc5690->unk18 = (strc5690->unk18 * 3) >> 1;
            strc5690->unk1C *= 3;
            strc5690->unk1E *= 3;
#endif
            unk20 = -Q(0.375);
            strc5690->unk20 = unk20;
        } break;

        case 0: {
            strc5690->unk1C = 0;
            strc5690->unk1E = 0;
            strc5690->unk20 = +Q(0.25);
        } break;

        case 1: {
            strc5690->unk1C = 0;
            strc5690->unk1E = 0;
            strc5690->unk20 = -Q(0.25);
        } break;
    }

    if (gUnknown_03005730 == 0) {
        m4aSongNumStart(0x94U);
    }

    strc5690->unk29 &= ~0x6;
    sub_802A248(strc5690);
    sub_802A4C4(strc5690);
    UpdateSpriteAnimation(s);
    sub_802BE0C(s, tf);
    DisplaySprite(s);

    gCurTask->main = sub_802A890;
}

void sub_802A890(void)
{
    Strc_03005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;
    bool32 var_r7 = 0;

    strc5690->unk42 = gInput;
    strc5690->unk44 = gPressedKeys;

    if (strc5690->unk3D != 0) {
        strc5690->unk3D--;
    }

    switch (strc5690->unk54) {
        case 4:
            if (strc5690->unk18 > 0) {
                sub_802A068(strc5690);
            }
            break;
        case 5:
            sub_802A068(strc5690);
            break;
    }

    if (sub_8029F30(strc5690) == 0) {
        if (strc5690->unk54 == 4) {
            if (strc5690->unk18 >= 0x800) {
                var_r7 = 1;
            }
        } else {
            if (strc5690->unk18 <= 0x800) {
                var_r7 = 1;
            }
        }

        if (var_r7 != 0) {
            gCurTask->main = Task_802A560;
            strc5690->unk28 = 0;
            strc5690->unk18 = 0x800;
            strc5690->unk20 = 0;
            strc5690->unk3E = 0;
        }
        sub_802A248(strc5690);
        sub_802A4C4(strc5690);
        UpdateSpriteAnimation(s);
        sub_802BE0C(s, tf);
        DisplaySprite(s);
    }
}

void sub_802A988(void)
{
    Strc_03005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;

    if (gSpecialStageCollectedRings != 0) {
        sub_802AAF0();
        if (gUnknown_03005730 == 0) {
            m4aSongNumStart(0x76U);
        }
    }

    strc5690->anim48 = gPlayerCharacterIdleAnims[strc5690->unk4C] + 32;
    strc5690->variant4A = 0;

    s->graphics.anim = strc5690->anim48;
    s->variant = strc5690->variant4A;
    s->prevVariant = 0xFF;

    strc5690->unk14 = 0;
    strc5690->unk16 = 0;
    strc5690->unk18 = 0x800;
    strc5690->unk1C = 0;
    strc5690->unk1E = 0;
    strc5690->unk20 = 0;
    strc5690->unk29 &= 0xFE;
    strc5690->unk34 = 0x3C;
    sub_802A248(strc5690);
    sub_802A4C4(strc5690);

    UpdateSpriteAnimation(s);
    sub_802BE0C(s, tf);
    DisplaySprite(s);

    gCurTask->main = Task_802AA48;
}

void Task_802AA48(void)
{
    Strc_03005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;
    u16 temp_r0;

    strc5690->unk42 = gInput;
    strc5690->unk44 = gPressedKeys;
    if (strc5690->unk3D != 0) {
        strc5690->unk3D = (u8)strc5690->unk3D - 1;
    }

    if (--strc5690->unk34 == 0) {
        gCurTask->main = Task_802A560;
        strc5690->unk28 = 0;
        (&strc5690->unk28)[0x16] = 0;
    }
    if (strc5690->unk34 <= 30) {
        sub_802A068(&gUnknown_03005690);
    }
    sub_802A248(&gUnknown_03005690);
    sub_802A4C4(&gUnknown_03005690);
    UpdateSpriteAnimation(s);
    sub_802BE0C(s, tf);
    if (!(2 & strc5690->unk34)) {
        DisplaySprite(s);
    }
}

void sub_802AAF0(void)
{
    Strc_03005690 *strc5690 = &gUnknown_03005690;
    s32 temp_r3;
    SpStage74 *strc74;
    u16 temp_r7;
    u16 var_r5;

    if ((u32)gSpecialStageCollectedRings > 9U) {
        var_r5 = 10;
        gSpecialStageCollectedRings = gSpecialStageCollectedRings - 10;
    } else {
        var_r5 = gSpecialStageCollectedRings;
        gSpecialStageCollectedRings = 0;
    }

    temp_r7 = var_r5;
    while (var_r5 != 0) {
        strc74 = TASK_DATA(TaskCreate(sub_802C6C4, sizeof(SpStage74), 0x1500U, 0U, NULL));
        temp_r3 = var_r5 - 1;
        strc74->unk6A = temp_r3;
        strc74->unk6B = temp_r7;
        strc74->unk3C = strc5690->unk0;
        strc74->unk40 = strc5690->unk4;
        strc74->unk44 = strc5690->unk8;
        strc74->unk52 = 0;
        strc74->unk54 = 0;
        strc74->unk56 = 0;
        strc74->unk58 = 0;
        strc74->unk5A = 0;
        strc74->unk5C = 0;
        strc74->unk60 = 0;
        strc74->unk68 = 0xFFFF;
        var_r5 = temp_r3;
    }
}

void sub_802ABA0(void)
{
    Strc_03005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;

    strc5690->anim48 = gPlayerCharacterIdleAnims[strc5690->unk4C] + 30;
    strc5690->variant4A = 0;

    s->graphics.anim = strc5690->anim48;
    s->variant = strc5690->variant4A;
    s->prevVariant = 0xFF;

    strc5690->unk14 = 0;
    strc5690->unk16 = 0;
    strc5690->unk1C = 0;
    strc5690->unk1E = 0;
    strc5690->unk20 = 0;
    strc5690->unk28 = 3;
    strc5690->unk29 |= 0x10;
    strc5690->unk3A = 0x2D;

    if (gUnknown_03005730 == 0) {
        m4aSongNumStart(0x95);
    }

    sub_802A248(strc5690);
    sub_802A4C4(strc5690);

    UpdateSpriteAnimation(s);
    sub_802BE0C(s, tf);
    DisplaySprite(s);

    gCurTask->main = Task_802AC50;
}

void Task_802AC50(void)
{
    Strc_03005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;

    if (strc5690->unk3D != 0) {
        strc5690->unk3D--;
    }
    if (sub_8029F30(strc5690) == 0) {
        if (2 & strc5690->unk29) {
            strc5690->unk20 = -Q(0.5);
        } else {
            strc5690->unk20 = 0;
        }

        if (--strc5690->unk3A == 0) {
            gCurTask->main = Task_802A560;
            strc5690->unk29 &= ~0x10;
            strc5690->unk28 = 0;
            strc5690->unk3E = 0xC;
        }

        sub_802A248(strc5690);
        sub_802A4C4(strc5690);
        UpdateSpriteAnimation(s);
        sub_802BE0C(s, tf);
        DisplaySprite(s);
    }
}

void sub_802ACF0(void)
{
    Strc_03005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;

    strc5690->anim48 = gPlayerCharacterIdleAnims[strc5690->unk4C] + 31;
    strc5690->variant4A = 0;

    s->graphics.anim = strc5690->anim48;
    s->variant = strc5690->variant4A;
    s->prevVariant = 0xFF;

    strc5690->unk14 = 0;
    strc5690->unk16 = 0;
    strc5690->unk1C = 0;
    strc5690->unk1E = 0;
    strc5690->unk20 = 0;
    strc5690->unk28 = 4;
    strc5690->unk29 |= 0x20;

    if (gUnknown_03005730 == 0) {
        m4aSongNumStart(0x95);
    }

    sub_802A248(strc5690);
    sub_802A4C4(strc5690);

    UpdateSpriteAnimation(s);
    sub_802BE0C(s, tf);
    DisplaySprite(s);

    gCurTask->main = Task_802AD9C;
}

void Task_802AD9C(void)
{
    Strc_03005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;

    if (strc5690->unk3D != 0) {
        strc5690->unk3D--;
    }
    if (sub_8029F30(strc5690) == 0) {
        if (2 & strc5690->unk29) {
            strc5690->unk20 = -Q(0.5);
        } else {
            strc5690->unk20 = 0;
        }

        if (s->frameFlags & 0x4000) {
            gCurTask->main = Task_802A560;
            strc5690->unk29 &= ~0x20;
            strc5690->unk28 = 0;
            strc5690->unk3E = 0xC;
        }

        sub_802A248(strc5690);
        sub_802A4C4(strc5690);
        UpdateSpriteAnimation(s);
        sub_802BE0C(s, tf);
        DisplaySprite(s);
    }
}

void Task_802AE40(void)
{
    Strc_03005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;

    strc5690->unk42 = 0;
    strc5690->unk44 = 0;
    strc5690->unk12 = ((u16)strc5690->unk12 + 0x10) & 0x3FF;
    strc5690->unk10 = (s16)((s32)((u16)gSineTable[strc5690->unk12] << 0x10) >> 0x1A);

    if (2 & strc5690->unk29) {
        strc5690->unk20 = -Q(1);
    } else {
        strc5690->unk20 = 0;
    }

    sub_802A134(strc5690);
    sub_802A248(strc5690);
    sub_802A4C4(strc5690);
    UpdateSpriteAnimation(s);
    sub_802BE0C(s, tf);
    DisplaySprite(s);

    if (--strc5690->unk32 == 0) {
        if (strc5690->unk2A == 0x40) {
            if (gUnknown_03005028 <= gSpecialStageCollectedRings) {
                strc5690->unk32 = 0x14A;
                strc5690->anim48 = gPlayerCharacterIdleAnims[strc5690->unk4C] + 0x21;
                strc5690->variant4A = 0;
                gCurTask->main = sub_802B07C;
                sub_802C56C(0U);
            } else {
                strc5690->unk32 = 0;
                strc5690->anim48 = gPlayerCharacterIdleAnims[strc5690->unk4C] + 0x22;
                strc5690->variant4A = 0;
                gCurTask->main = sub_802B008;
                sub_802B214();
                sub_802C56C(1U);
            }
        } else if (gUnknown_03005070 <= gSpecialStageCollectedRings) {
            strc5690->anim48 = gPlayerCharacterIdleAnims[strc5690->unk4C] + 0x21;
            strc5690->variant4A = 0;
            gCurTask->main = sub_802B18C;
            m4aSongNumStart(0x2CU);
            sub_802C56C(0U);
        } else {
            strc5690->unk32 = 0;
            strc5690->anim48 = gPlayerCharacterIdleAnims[strc5690->unk4C] + 0x22;
            strc5690->variant4A = 0;
            gCurTask->main = sub_802B008;
            sub_802B214();
            sub_802C56C(1U);
        }
        s->graphics.anim = strc5690->anim48;
        s->variant = strc5690->variant4A;
        s->prevVariant = -1;
    }
}

void sub_802B008(void)
{
    Strc_03005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;

    if (strc5690->unk32 > -120) {
        strc5690->unk10 = --strc5690->unk32;
        strc5690->unk42 = 0;
        strc5690->unk44 = 0;

        if (!(2 & strc5690->unk29)) {
            strc5690->unk20 = 0;
        } else {
            strc5690->unk20 = -Q(1.0);
        }

        sub_802A068(strc5690);
        sub_802A248(strc5690);
        sub_802A4C4(strc5690);
        UpdateSpriteAnimation(s);
        sub_802BE0C(s, tf);
        DisplaySprite(s);
    }
}

// (98.11%) https://decomp.me/scratch/jrZYE
NONMATCH("asm/non_matching/game/special_stage/sub_802B07C.inc", void sub_802B07C(void))
{
    Strc_03005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;
    u32 flags;
    u8 *ptr;

    strc5690->unk42 = 0;
    strc5690->unk44 = 0;
    strc5690->unk12 = (strc5690->unk12 + 0x10) & 0x3FF;
    strc5690->unk10 = SIN(strc5690->unk12) >> 10;
    flags = 2 & strc5690->unk29;
    ptr = &strc5690->unk29;
    if (flags) {
        strc5690->unk20 = -Q(1);
    } else {
        strc5690->unk20 = 0;
    }

    sub_802A068(strc5690);
    sub_802A248(strc5690);
    sub_802A4C4(strc5690);
    UpdateSpriteAnimation(s);
    sub_802BE0C(s, tf);
    DisplaySprite(s);

    if (strc5690->unk32 == 0xB4) {
        gSpecialStageTargetRings = gUnknown_03005070;
        TasksDestroyInPriorityRange(0x1180U, 0x1181U);
        sub_805C448(0U);
    }
    if (strc5690->unk32 != 0) {
        if (--strc5690->unk32 == 0) {
            strc5690->variant4A = 1;
            s->variant = 1;
            s->prevVariant = 0xFF;
        }
    }
    if (s->frameFlags & 0x4000) {
        gCurTask->main = Task_802A560;
        *ptr = 0;
        strc5690->unk2A = 0;
        strc5690->unk3E = 0xC;
    }
}
END_NONMATCH

void sub_802B18C(void)
{
    Strc_03005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;
    u32 flags;

    strc5690->unk42 = 0;
    strc5690->unk44 = 0;
    strc5690->unk12 = (strc5690->unk12 + 0x10) & 0x3FF;
    strc5690->unk10 = SIN_24_8(strc5690->unk12) / 16u;

    if (2 & strc5690->unk29) {
        strc5690->unk20 = -Q(1);
    } else {
        strc5690->unk20 = 0;
    }

    sub_802A068(strc5690);
    sub_802A248(strc5690);
    sub_802A4C4(strc5690);
    UpdateSpriteAnimation(s);
    sub_802BE0C(s, tf);
    DisplaySprite(s);
}

void sub_802B214(void)
{
    Strc_03005690 *strc5690 = &gUnknown_03005690;
    Sprite *s;
    SpriteTransform *tf;
    s32 rnd;

    SpStage74 *strc74 = TASK_DATA(TaskCreate(Task_802D508, sizeof(SpStage74), 0x10FFU, 0U, NULL));
    strc74->unk3C = strc5690->unk0;
    strc74->unk40 = strc5690->unk4;
    strc74->unk44 = strc5690->unk8 - Q(1);
    strc74->unk50 = (s16)(u16)strc5690->unk10;
    strc74->unk52 = 0;
    strc74->unk54 = 0;
    strc74->unk56 = 0;
    rnd = PseudoRandom32();
    strc74->unk58 = rnd & 0xF;
    strc74->unk5A = -((0x70 & rnd) >> 4);
    strc74->unk5C = -0x10;
    if (rnd & 0x80) {
        strc74->unk58 = -strc74->unk58;
    }
    strc74->unk6E = 0;
    strc74->unk60 = 0xE;
    strc74->anim62 = gPlayerCharacterIdleAnims[strc5690->unk4C] + 34;
    strc74->variant64 = 1U;
    strc74->unk67 = 0;

    s = &strc74->s;
    s->graphics.dest = OBJ_VRAM0 + 0x1400;
    s->graphics.size = 0;
    s->graphics.anim = strc74->anim62;
    s->variant = strc74->variant64;
    s->prevVariant = -1;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);

    strc74->unk66 = sub_802D58C(I(strc5690->unk8) - I(strc74->unk44));
    s->x = I(strc74->unk3C) + 120;
    s->y = 80 - I(strc74->unk40);
    s->oamFlags = SPRITE_OAM_ORDER(4);
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = strc74->unk66 | 0x2020;
    tf = &strc74->tf;
    tf->rotation = 0;
    tf->qScaleX = Q(0.25);
    tf->qScaleY = Q(0.25);
    tf->x = s->x;
    tf->y = s->y;
}

void sub_802B3E4()
{
    SpStage8 *strc8 = TASK_DATA(gCurTask);
    Strc_03005690 *strc5690 = &gUnknown_03005690;
    Strc_30055E0 *strc55E0 = &gUnknown_030055E0;
    SpStage74 *strc74;
    SpStageC *temp_r5;
    u16 var_r0;

    temp_r5 = gUnknown_087BF8DC[gUnknown_08487134[gCurrentLevel]];
    if ((strc8->unk6 == 0) && (strc55E0->unk0 != 1)) {
        while (temp_r5[strc8->unk2].unk4 < (I(strc5690->unk8) + 0x300)) {
            if (temp_r5[strc8->unk2].unk8 == 0xFFFF) {
                strc74 = TASK_DATA(TaskCreate(sub_802D33C, sizeof(SpStage74), 0x1F00U, 0U, NULL));
                strc74->unk60 = 1;
                strc74->unk44 = temp_r5[strc8->unk2].unk4 << 8;
                strc8->unk4 = (u16)temp_r5[strc8->unk2].unk4;
                strc8->unk2 += 1;
                strc8->unk6 = 1;
                break;
            } else if (temp_r5[strc8->unk2].unk8 == 0x7FFF) {
                strc74 = TASK_DATA(TaskCreate(sub_802D33C, sizeof(SpStage74), 0x1F00U, 0U, NULL));
                strc74->unk60 = 2;
                strc74->unk44 = temp_r5[strc8->unk2].unk4 << 8;
                strc8->unk4 = (u16)temp_r5[strc8->unk2].unk4;
                strc8->unk2++;
            } else if (temp_r5[strc8->unk2].unk8 == 0) {
                strc8->unk2++;
            } else {
                strc74 = TASK_DATA(TaskCreate(Task_802BEDC, sizeof(SpStage74), 0x1500U, 0U, NULL));
                strc74->unk60 = temp_r5[strc8->unk2].unk8;
                strc74->unk3C = Q(temp_r5[strc8->unk2].unk0);
                strc74->unk40 = Q(temp_r5[strc8->unk2].unk2);
                strc74->unk44 = Q(temp_r5[strc8->unk2].unk4);
                strc74->unk68 = (s16)strc8->unk2;
                strc74->filler6C[1] = 0xB;
                strc74->unk70 = 0;
                strc8->unk4 = (u16)temp_r5[strc8->unk2].unk4;
                strc8->unk2++;
            }
        }
    }
}
