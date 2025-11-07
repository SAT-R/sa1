#include "global.h"
#include "core.h"
#include "flags.h"
#include "multi_boot.h"
#include "lib/m4a/m4a.h"
#include "game/multiplayer/communication_outcome.h"
#include "game/multiplayer/mode_select.h"
#include "game/multiplayer/multipak_connection.h"
#include "game/save.h"
#include "game/title_screen.h"

#include "constants/animations.h"
#include "constants/songs.h"
#include "constants/tilemaps.h"
#include "constants/text.h"

/* NOTE:
   This module was split into two, because Task_800F9BC() would compile
   differently when the two functions directly above it in the ROM were in the same module.

   This is a rare agbcc behavior.
*/

typedef enum PakModes {
    PM_MULTI_PAK,
    PM_SINGLE_PAK,

    PM_COUNT
} PakModes;

typedef struct ModeSelect {
    /* 0x00 */ Background bg;
    /* 0x40 */ Sprite s[3];
    /* 0xD0 */ Sprite s4;
    /* 0x100 */ u8 filler100[0xF8];
    /* 0x1FC */ s32 unk1F8;
    /* 0x1FC */ s32 qUnk1FC;
    /* 0x200 */ s16 unk200;
    /* 0x202 */ u8 unk202;
    /* 0x203 */ u8 mode;
    /* 0x204 */ u8 unk204;
    /* 0x205 */ u8 unk205;
    /* 0x206 */ u8 unk206;
    /* 0x207 */ u8 unk207;
    /* 0x208 */ s16 qUnk208;
    /* 0x20A */ u8 unk20A;
    /* 0x204 */ u8 unk20B[2][4];
    /* 0x214 */ s32 frameCount;
    /* 0x218 */ u8 unk218;
    /* 0x219 */ u8 unk219;
} ModeSelect; /* 0x21C */

void sub_800FBF8(void);
void sub_800FF38(void);
void sub_8010048(void);

void sub_800FD9C(u8 *param);
void Task_800F058(void);

void Task_800F9BC(void)
{
    u32 var_r1;
    u8 temp_r4_3;
    u8 var_r3;
    u32 unkR6;
    union MultiSioData *send_recv;

    ModeSelect *modeSelect = TASK_DATA(gCurTask);

    if ((gMultiSioStatusFlags & 0x20) && (modeSelect->unk204 < 9)) {
        gCurTask->main = sub_800FBF8;
    }
    if (gMultiSioStatusFlags & 0x10) {
        modeSelect->unk202 = 1;
    }
    gMultiSioSend.pat2.unk0 = gLoadedSaveGame.uiLanguage;
    gMultiSioStatusFlags = MultiSioMain(&gMultiSioSend, gMultiSioRecv, modeSelect->unk202);
    if (modeSelect->unk205 == 0) {
        MultiSioStart();
        modeSelect->unk205 = 1;
    }

    unkR6 = ((u32)(gMultiSioStatusFlags & 0xF00) >> 8);
    // NOTE: Similar to macro: MultiPakHeartbeat()
    for (var_r3 = 1; var_r3 < 4; var_r3++) {
        if (gMultiSioStatusFlags & (1 << (var_r3 + 8))) {
            if (!((1 << var_r3) & gMultiSioStatusFlags)) {
                if (gMultiplayerMissingHeartbeats[var_r3]++ >= 0xB5) {
                    TasksDestroyAll();
                    PAUSE_BACKGROUNDS_QUEUE();
                    SA2_LABEL(gUnknown_03005390) = 0;
                    PAUSE_GRAPHICS_QUEUE();
                    gFlags &= 0xFFFFBFFF;
                    gFlags &= 0xFFFF7FFF;
                    m4aSoundVSyncOn();
                    LinkCommunicationError();
                    return;
                }
            } else {
                gMultiplayerMissingHeartbeats[var_r3] = 0;
            }
        }

        if ((unkR6 << var_r3)) {
            union MultiSioData *send_recv = &gMultiSioRecv[var_r3];
            if ((send_recv->pat0.unk0 == 0x10)) {
                for (var_r1 = 0; var_r1 < 4; var_r1++) {
                    gMultiplayerCharacters[var_r1] = 0;
                    gMPRingCollectWins[var_r1] = 0;
                    SA2_LABEL(gUnknown_030054B4)[var_r1] = var_r1;
                    gMultiplayerMissingHeartbeats[var_r1] = 0;
                }
                gCurTask->main = sub_8010048;
                gDispCnt = 0x40;
                return;
            }
        }
    }

    gFlags |= 1;
    temp_r4_3 = (((modeSelect->unk204 * 0x10) + 8) / 9U);
    CpuFill16(0, &gBgPalette[2 * 16 + temp_r4_3], (((16 - temp_r4_3) & 0x1FFFFF) << 1));
    CpuFill16(RGB16(31, 19, 0), &gBgPalette[0x20], temp_r4_3 * 2);
    if (modeSelect->unk204 != gMultiSioRecv->pat0.unk2) {
        modeSelect->unk204 = gMultiSioRecv->pat0.unk2;
        modeSelect->unk1F8 = 0;
    }
}
