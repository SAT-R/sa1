#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "malloc_vram.h"
#include "data/ui_graphics.h"
#include "game/sa1_sa2_shared/player.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/gTask_03006240.h"
#include "game/multiplayer/mp_player.h"
#include "game/save.h"
#include "game/stage/ui.h"
#include "game/water_effects.h"

#include "constants/songs.h"
#include "constants/ui_graphics.h"
#include "constants/vram_hardcoded.h"
#include "constants/zones.h"

#define UI_OAM_ORDER_INDEX 1

#define UI_DIGIT(_digit) ((_digit) + 32)

extern void sub_804C40C(void); // TODO: Move to correct Header!

void sub_8053A90(s32 courseTime);
void sub_8053BAC(void);
void Task_8055458(void);
void Task_8055730(void);
void Task_8055798(void);
void Task_8055904(void);
void Task_8055998(void);
void Task_8055AA0(void);
void Task_8055B18(void);
void TaskDestructor_8055C38(struct Task *);
void TaskDestructor_StrcUI28_8055C4C(struct Task *);

typedef struct {
    u8 filler0[9];
    u8 unk9;
    u8 unkA;
    u8 unkB;
} StageUI_10;
typedef struct {
    /* 0x00 */ u8 digitsRings[3];
    /* 0x03 */ u8 filler3[0x5];
    /* 0x08 */ s16 unk8;
    /* 0x0A */ s16 unkA;
    /* 0x0C */ s16 unkC;
    /* 0x0E */ s16 unkE;
    /* 0x10 */ StageUI_10 unk10;
    /* 0x1C */ u8 filler1C[0x14];
    /* 0x30 */ u8 digitLives;
    /* 0x31 */ u8 filler31[0x13];
    /* 0x44 */ u16 ringCount;
    /* 0x46 */ u8 filler46[0xA];
} StageUI; /* 0x50 */

typedef struct {
    // TODO: Seems like this (until incl. unk16?) is GameOverB?
    GameOverB unk0;

    s16 unk18;
    u16 unk1A;
    void *unk1C;
    bool8 unk20;
    u8 unk21;
} Strc_Ui_24;

typedef struct {
    /* 0x00 */ StrcUi_805423C unk0;
    /* 0x0C */ struct Task *taskC; // -> Strc_Ui_24
    /* 0x10 */ struct Task *task10; // -> Strc_Ui_24
    /* 0x14 */ struct Task *task14; // -> Strc_Ui_24
    /* 0x18 */ struct Task *task18; // -> Strc_Ui_24
    /* 0x1C */ struct Task *task1C; // -> Strc_Ui_24
    /* 0x20 */ struct Task *task20; // -> Strc_Ui_24
    /* 0x24 */ s16 unk24;
    /* 0x26 */ bool8 unk26;
    /* 0x27 */ u8 unk27;
} Strc_Ui_28;

typedef struct {
    void *vram0;
    void *vram4;
    void *vram8;
    void *vramC;
    void *vram10;
    struct Task *task14;
    struct Task *task18;
    struct Task *task1C;
    struct Task *task20;
    struct Task *task24;
} StrcStack;

void sub_8054A80(void *);
void sub_804A5D8(s32 x, s32 y);

extern const u8 gUnknown_0865F178[];

extern const u8 gUnknown_08688394[];
extern const u8 gUnknown_086883AC[];
extern const u8 gUnknown_086883B0[];
extern const u8 gUnknown_086883B8[];
extern const u8 gUnknown_086883C4[];
extern const u8 gUnknown_086883CC[16];

void CreateStageUI(void);
void CreateMultiplayerMultiPakUI(void);

// (98.15%) https://decomp.me/scratch/LupqY
NONMATCH("asm/non_matching/game/stage/ui__Task_StageUIMain.inc", void Task_StageUIMain(void))
{
    StageUI *ui;
    GameOverB overB;
    s32 remainder;
    s32 remainder0;
    StageUI_10 *unk10_A;
    s32 i;
    u8 *ptr;
    s32 digitLives;
    u8 lives;

    overB.qUnkA = -2;
    overB.unkC = -1;
    overB.unkE = 1;
    overB.unk8 = 24;
    overB.unk10 = 3;
    overB.unk12 = 6;
    overB.unk16 = 1;

    sub_80530CC(&gUnknown_0865F178[0], &overB);

    if (gGameMode == GAME_MODE_SINGLE_PLAYER) {
        overB.unkC = 0x90;
        overB.qUnkA = 2;
        overB.unk10 = 1;

        overB.unk12 = gSelectedCharacter;
        sub_80530CC(&gUnknown_0865F178[0], &overB);
    }

    ui = TASK_DATA(gCurTask);

    if (gRingCount > 999) {
        ui->digitsRings[0] = UI_DIGIT(9);
        ui->digitsRings[1] = UI_DIGIT(9);
        ui->digitsRings[2] = UI_DIGIT(9);
    } else {
        remainder = gRingCount;

        for (i = 0; i < 3; i++) {
            remainder0 = Div(remainder, 10);

            //          ui->digitsRings[2 - i] = UI_DIGIT(remainder - (remainder0 * 10));
            ui->digitsRings[2 - i] = UI_DIGIT(remainder - ((remainder0 << 3) + (remainder0 << 1)));

            remainder = remainder0;
        }
    }
    // _0805379C

    TASK_SET_MEMBER(StageUI, gCurTask, u16, ringCount, gRingCount);

    (&TASK_GET_MEMBER(StageUI, gCurTask, StageUI_10, unk10))->unk9 = 0;

    remainder = gLevelScore;

    for (i = 8; i >= 0; i--) {
        remainder0 = Div(remainder, 10);

        ui->digitsRings[i] = UI_DIGIT(remainder - ((remainder0 << 3) + (remainder0 << 1)));

        remainder = remainder0;
    }

    sub_8053A90(gCourseTime);

    ptr = &TASK_GET_MEMBER(StageUI, gCurTask, u8, digitLives);
    if (gNumLives > 9) {
        digitLives = UI_DIGIT(9);
    } else if (gNumLives != 0) {
        digitLives = UI_DIGIT(gNumLives - 1);
    } else {
        digitLives = UI_DIGIT(0);
    }
    *ptr = digitLives;

    sub_8053BAC();

    if ((LOADED_SAVE->timeLimitDisabled != TRUE) || (gGameMode != GAME_MODE_SINGLE_PLAYER)) {
        if (gStageFlags & STAGE_FLAG__TIMER_REVERSED) {
            if (gCourseTime < TIMER_WARNING_BEGIN) {
                if ((Mod(gCourseTime, 60) == 0) && (gCourseTime != 0)) {
                    m4aSongNumStart(SE_TIMER);
                }
            }
        } else {
            if (gCourseTime > (MAX_COURSE_TIME - TIMER_WARNING_BEGIN)) {
                if ((Mod(gCourseTime, 60) == 0) && (gCourseTime < MAX_COURSE_TIME)) {
                    m4aSongNumStart(SE_TIMER);
                }
            }
        }
    }
}
END_NONMATCH

void sub_80538BC(void)
{
    Strc_80528AC sp00;
    const UiGraphics *gfx;

    sp00.uiGfxID = UIGFX_ASCII_CHARS;
    sp00.unk2B = 0;

    gfx = &gUiGraphics[UIGFX_ASCII_CHARS];
    sp00.tiles = gfx->tiles + 224 * TILE_SIZE_4BPP;
    sp00.palette = gfx->palette;
    sp00.vramC = VRAM_RESERVED_UI_DIGITS_D;
    sp00.tilesSize = 22 * TILE_SIZE_4BPP;
    sp00.unk24 = 32;
    sp00.unk28 = 6;
    sp00.unk2A = 13;
    sp00.unk4 = gfx->unk8;
    sp00.unk8 = gfx->unkC;
    sp00.unk9 = gfx->unk10;
    sp00.unkA = gfx->unk14;
    sp00.unkB = gfx->unk18;
    sub_80528AC(&sp00);

    sp00.uiGfxID = UIGFX_ASCII_CHARS;
    sp00.unk2B = 0;
    sp00.tiles = gfx->tiles + 32 * TILE_SIZE_4BPP;
    sp00.palette = gfx->palette;
    sp00.vramC = VRAM_RESERVED_UI_DIGITS_C;
    sp00.tilesSize = 22 * TILE_SIZE_4BPP;
    sp00.unk24 = 32;
    sp00.unk28 = 6;
    sp00.unk2A = 9;
    sp00.unk4 = gfx->unk8;
    sp00.unk8 = gfx->unkC;
    sp00.unk9 = gfx->unk10;
    sp00.unkA = gfx->unk14;
    sp00.unkB = gfx->unk18;
    sub_80528AC(&sp00);

    sp00.uiGfxID = UIGFX_UI_ICON_SONIC + gSelectedCharacter;
    sp00.unk2B = 1;
    sp00.tiles = gUiGraphics[sp00.uiGfxID].tiles;
    sp00.palette = gUiGraphics[sp00.uiGfxID].palette;
    sp00.tilesSize = (2 * 2) * TILE_SIZE_4BPP;
    sp00.unk24 = 32;
    sp00.unk28 = gSelectedCharacter;
    sp00.vramC = VRAM_RESERVED_UI_DIGITS_A;
    sp00.unk2A = 9;
    sp00.unk4 = gUiGraphics[sp00.uiGfxID].unk8;
    sp00.unk8 = gUiGraphics[sp00.uiGfxID].unkC;
    sp00.unk9 = gUiGraphics[sp00.uiGfxID].unk10;
    sp00.unkA = gUiGraphics[sp00.uiGfxID].unk14;
    sp00.unkB = gUiGraphics[sp00.uiGfxID].unk18;
    sub_80528AC(&sp00);

    sp00.uiGfxID = UIGFX_UI_ICON_RING;
    sp00.unk2B = 3;
    sp00.tiles = gUiGraphics[UIGFX_UI_ICON_RING].tiles;
    sp00.palette = gUiGraphics[UIGFX_UI_ICON_RING].palette;
    sp00.tilesSize = (4 * 4) * TILE_SIZE_4BPP;
    sp00.unk24 = 32;
    sp00.unk28 = 6;
    sp00.vramC = VRAM_RESERVED_UI_DIGITS_B;
    sp00.unk2A = 9;
    sp00.unk4 = gUiGraphics[UIGFX_UI_ICON_RING].unk8;
    sp00.unk8 = gUiGraphics[UIGFX_UI_ICON_RING].unkC;
    sp00.unk9 = gUiGraphics[UIGFX_UI_ICON_RING].unk10;
    sp00.unkA = gUiGraphics[UIGFX_UI_ICON_RING].unk14;
    sp00.unkB = gUiGraphics[UIGFX_UI_ICON_RING].unk18;
    sub_80528AC(&sp00);
}