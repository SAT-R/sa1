#include "global.h"
#include "core.h"
#include "flags.h"
#include "lib/m4a/m4a.h"
#include "game/sa1_sa2_shared/globals.h"

#include "constants/songs.h"

#define CM_BACKGROUND_COLOR RGB16(0, 27, 30)

typedef struct ChaoMessage {
    /* 0x00 */ Background bg;
    /* 0x40 */ u8 filler40[0x8];
    /* 0x48 */ s16 unk48;
    /* 0x48 */ s16 unk4A;
    /* 0x48 */ s16 unk4C;
    /* 0x48 */ s16 unk4E;
    /* 0x48 */ s16 unk50;
    /* 0x48 */ s16 unk52;
    /* 0x54 */ u8 unk54;
    /* 0x55 */ u8 mode;
    /* 0x56 */ u8 unk56;
} ChaoMessage; /* 0x58 */

u8 gUnknown_030058B4;
u8 gUnknown_030058B8[4];

void Task_ChaoMessageInit(void);
void sub_803AB60(ChaoMessage *message);

void CreateMultiplayerResultsScreen(u8 mode)
{
    s32 sp4;
    Background *bg;
    ChaoMessage *message;
    u8 *temp_r0;
    u8 temp_r0_2;
    u8 temp_r0_3;
    u8 var_r2;

    gUnknown_030058B8[0] = 0;
    gUnknown_030058B8[1] = 0;
    gUnknown_030058B8[2] = 0;
    gUnknown_030058B8[3] = 0;
    gMultiplayerMissingHeartbeats[3] = 0;
    gMultiplayerMissingHeartbeats[2] = 0;
    gMultiplayerMissingHeartbeats[1] = 0;
    gMultiplayerMissingHeartbeats[0] = 0;
    gUnknown_030058B4 = 0;

    for (var_r2 = 0; var_r2 < 4; var_r2++) {
        if (GetBit(gMultiplayerConnections, var_r2)) {
            gUnknown_030058B4 += 1;
        }
    };

    message = TASK_DATA(TaskCreate(Task_ChaoMessageInit, sizeof(ChaoMessage), 0x2000U, 0U, NULL));
    bg = &message->bg;
    message->mode = mode;
    message->unk54 = gUnknown_030058B4;
    sub_803AB60(message);
    message->unk48 = 0xFF10;
    message->unk4A = 0xF0;
    message->unk4C = 0xFF10;
    message->unk4E = 0xF0;
    gDispCnt = 0x3140;
    gBgCntRegs[0] = (DISPCNT_WIN1_ON) | DISPCNT_BG3_ON | DISPCNT_MODE_3;
    gBgScrollRegs[0][0] = 256;
    gBgScrollRegs[0][1] = 0;

    gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
    gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
    gWinRegs[WINREG_WININ] = 0x31;
    gWinRegs[WINREG_WINOUT] = 0x31;
    gBldRegs.bldCnt = 0xBF;
    gBldRegs.bldY = 0x10;

    DmaFill32(3, 0, BG_VRAM + 0x1FE0, 0x40);

    SA2_LABEL(gUnknown_03004D80)[0] = 0xFF;
    SA2_LABEL(gUnknown_03002280)[0][0] = 0;
    SA2_LABEL(gUnknown_03002280)[0][1] = 0;
    SA2_LABEL(gUnknown_03002280)[0][2] = -1;
    SA2_LABEL(gUnknown_03002280)[0][3] = 0x40;

    bg->graphics.dest = (void *)BG_VRAM;
    bg->graphics.anim = 0xFF;
    bg->layoutVram = (u16 *)(BG_VRAM + 0x4000);
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->tilemapId = 0x58;
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->targetTilesX = 30;
    bg->targetTilesY = 20;
    bg->paletteOffset = 0;
    bg->flags = 0;
    DrawBackground(bg);

    *gBgPalette = CM_BACKGROUND_COLOR;
    gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;

    switch (message->mode) {
        case 0:
            m4aSongNumStart(MUS_006);
            break;
        case 1:
            temp_r0_3 = message->unk56;
            if (temp_r0_3 == 0) {
                m4aSongNumStart(MUS_007);
            } else if (temp_r0_3 == 1) {
                m4aSongNumStart(MUS_008);
            } else {
                m4aSongNumStart(MUS_009);
            }
            break;
        case 2:
            m4aSongNumStart(SE_VS_MULTIPAK_CONN_CLOSE);
            break;
    }
}
