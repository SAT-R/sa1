#include "global.h"
#include "core.h"
#include "flags.h"
#include "bg_triangles.h"
#include "multi_sio.h"
#include "sio32_multi_load.h" // for SIO32ML_BLOCK_SIZE
#include "lib/m4a/m4a.h"
#include "data/sprite_tables.h"
#include "game/multiplayer/communication_outcome.h"
#include "game/multiplayer/multipak_connection.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/sa1_sa2_shared/player.h"
#include "game/save.h"
#include "game/stage/tilemap_table.h"

#include "constants/animations.h"
#include "constants/songs.h"
#include "constants/text.h"

extern u8 gUnknown_087D7E80[0x3400];
extern u8 gUnknown_087E3610[0x2000];

// TODO: Is this a "Sprite2" (Sprite with 2 hitboxes)?
typedef struct MultiplayerSinglePakResultsScreen_UNK80 {
    Sprite unk0;
    u8 filler30[8];
} MultiplayerSinglePakResultsScreen_UNK80;

typedef struct MultiplayerSinglePakResultsScreen {
    Background unk0;
    Background unk40;
    struct MultiplayerSinglePakResultsScreen_UNK80 unk80[4];
    Sprite unk160[10];
    Sprite unk340;
    Sprite unk370[3];
    Sprite unk400;
    u16 unk430;
    u16 unk432;
    u32 unk434;
    u8 actor;
    u8 filler439[3];
    u32 unk43C;
} MultiplayerSinglePakResultsScreen; /* size 0x440 */

void SA2_LABEL(Task_808207C)(void);
void SA2_LABEL(sub_80823FC)(void);

void LinkCommunicationError(void)
{
    m4aMPlayAllStop();
    gFlags &= ~FLAGS_EXECUTE_HBLANK_COPY;
    gDispCnt = 0x40;
    gMultiSioEnabled = FALSE;
    MultiSioStop();
    MultiSioInit(0);

    gTilemapsRef = (Tilemap **)gTilemaps;
    gRefSpriteTables = &gSpriteTables;
    gMultiplayerMissingHeartbeats[0] = 0;
    gMultiplayerMissingHeartbeats[1] = 0;
    gMultiplayerMissingHeartbeats[2] = 0;
    gMultiplayerMissingHeartbeats[3] = 0;
    CreateMultipackOutcomeScreen(OUTCOME_CONNECTION_ERROR);
}

// (98.42%) https://decomp.me/scratch/sWmIY
NONMATCH("asm/non_matching/game/multiplayer/results_2__CreateMultiplayerSinglePakResultsScreen.inc",
         void CreateMultiplayerSinglePakResultsScreen(u32 a))
{
    Background *bg;
    Sprite *s;
    u32 i;
    s32 r8;
    MultiplayerSinglePakResultsScreen *resultsScreen;

    gMultiplayerMissingHeartbeats[3] = 0;
    gMultiplayerMissingHeartbeats[2] = 0;
    gMultiplayerMissingHeartbeats[1] = 0;
    gMultiplayerMissingHeartbeats[0] = 0;
    gWinRegs[WINREG_WININ] = 0;
    gWinRegs[WINREG_WINOUT] = 0;
    gWinRegs[WINREG_WIN0H] = 0;
    gWinRegs[WINREG_WIN0V] = 0;
    gWinRegs[WINREG_WIN1H] = 0;
    gWinRegs[WINREG_WIN1V] = 0;
    gStageFlags = 0;
    gMultiSioEnabled = 1;
    gFlags &= 0xFFFFBFFF;
    m4aSoundVSyncOn();
    gGameMode = 6;
    gFlags &= 0xFFFF7FFF;
    CpuFastSet(&gUnknown_087E3610, (void *)BG_VRAM, sizeof(gUnknown_087E3610));
    CpuFastSet(&gUnknown_087D7E80, (void *)EWRAM_START + 0x33000, sizeof(gUnknown_087D7E80));
    gTilemapsRef = *((Tilemap ***)(EWRAM_START + 0x33000));

    gDispCnt = 0x40;
    gBgCntRegs[3] = 0x5E0B;
    gBgCntRegs[2] = 0x1C0C;
    SA2_LABEL(gUnknown_03004D80)[2] = 0x7F;
    SA2_LABEL(gUnknown_03002280)[2][0] = 0;
    SA2_LABEL(gUnknown_03002280)[2][1] = 0;
    SA2_LABEL(gUnknown_03002280)[2][2] = 0xFF;
    SA2_LABEL(gUnknown_03002280)[2][3] = 0x20;
    SA2_LABEL(gUnknown_03004D80)[3] = -1;
    SA2_LABEL(gUnknown_03002280)[3][0] = 0;
    SA2_LABEL(gUnknown_03002280)[3][1] = 0;
    SA2_LABEL(gUnknown_03002280)[3][2] = -1;
    SA2_LABEL(gUnknown_03002280)[3][3] = 0x40;
    DmaFill32(3, 0, VRAM + 0x9FE0, 0x40);
    DmaFill32(3, 0, VRAM + 0xFE0 + ((r8 = 3) << 14), 0x40);

    resultsScreen = TASK_DATA(TaskCreate(SA2_LABEL(Task_808207C), sizeof(MultiplayerSinglePakResultsScreen), 0x2000U, 0U, NULL));

    bg = &resultsScreen->unk0;
    resultsScreen->unk434 = a;
    resultsScreen->unk430 = 0;
    resultsScreen->actor = 0;
    resultsScreen->unk43C = LOADED_SAVE->unk4 + gFrameCount;
    bg->graphics.dest = (void *)BG_SCREEN_ADDR(16);
    bg->graphics.anim = 0;
    bg->layoutVram = (void *)BG_SCREEN_ADDR(30);
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->tilemapId = 4;
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->targetTilesX = 0x1E;
    bg->targetTilesY = 0x19;
    bg->paletteOffset = 0;
    bg->flags = r8;
    DrawBackground(bg);

    for (i = 0; i < 4; i++) {
        s = &resultsScreen->unk80[i].unk0;
        s->x = 120;
        s->y = 0x14 + (i * 0x28);
        s->graphics.dest = OBJ_VRAM0 + (i << 0xB);
        s->oamFlags = SPRITE_OAM_ORDER(16);
        s->graphics.size = 0;
        s->graphics.anim = gPlayerCharacterIdleAnims[i];
        s->variant = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->frameFlags = 0x1000;
        UpdateSpriteAnimation(s);
    }

    for (i = 0; i < 10; i++) {
        void *vram = OBJ_VRAM0 + 0x2000 + (i * 0x80);
        s = &resultsScreen->unk160[i];
        s->x = 0;
        s->y = 0;
        s->graphics.dest = vram;
        s->oamFlags = SPRITE_OAM_ORDER(4);
        s->graphics.size = 0;
        s->graphics.anim = 0x380;
        s->variant = (i + 3);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->frameFlags = 0x1000;

        UpdateSpriteAnimation(s);
    }

    if (resultsScreen->unk434 != 0) {
        for (i = 0; i < 3; i++) {
            s = &resultsScreen->unk370[i];
#if (GAME == GAME_SA1)
            s->graphics.dest = (void *)(OBJ_VRAM0 + 0x2500 + (i * 0x1C0));
#elif (GAME == GAME_SA2)
            s->graphics.dest = (void *)(OBJ_VRAM0 + 0x2500 + (i * 0x180));
#endif
            s->x = 0;
            s->y = 0;
            s->oamFlags = SPRITE_OAM_ORDER(4);
            s->graphics.size = 0;
            s->graphics.anim = 0x380;
            s->variant = i;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = -1;
            s->animSpeed = SPRITE_ANIM_SPEED(1.0);
            s->palId = 0;
            s->frameFlags = 0x1000;
            UpdateSpriteAnimation(s);
        }
    } else {
        s = &resultsScreen->unk340;
        s->x = 0;
        s->y = 0;
        s->graphics.dest = (void *)OBJ_VRAM0 + 0x2500;
        s->oamFlags = SPRITE_OAM_ORDER(4);
        s->graphics.size = 0;
        s->graphics.anim = 0x380;
        s->variant = 13;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->frameFlags = 0x1000;
        UpdateSpriteAnimation(s);
    }

    if (resultsScreen->unk434 != 0) {
        m4aSongNumStart(MUS_VS_RESULT);
    } else {
        m4aSongNumStart(MUS_VS_SCORE_OVERVIEW);
    }

    gBldRegs.bldCnt = 0xFF;
    gBldRegs.bldY = 0x10;
}
END_NONMATCH

void Task_MultiplayerSinglePakResultsScreenInit(void)
{
    u32 i;
    Sprite *s;
    AnimId animValue;
    struct MultiplayerSinglePakResultsScreen *resultsScreen;
    gDispCnt |= 0x1800;
    gMultiplayerConnections = ((gMultiSioStatusFlags & MULTI_SIO_ALL_CONNECTED) >> 8);
    MultiPakHeartbeat();

#if (GAME == GAME_SA1)
    gMultiSioSend.pat0.unk0 = 0x10;
#elif (GAME == GAME_SA2)
    gMultiSioSend.pat0.unk0 = 0x4010;
#endif
    if ((gMultiSioStatusFlags & MULTI_SIO_TYPE) == MULTI_SIO_PARENT) {
#if (GAME == GAME_SA1)
        gMultiSioSend.pat0.unk3 = LOADED_SAVE->uiLanguage;
#elif (GAME == GAME_SA2)
        gMultiSioSend.pat0.unk3 = gMultiplayerLanguage;
#endif
    }
#if COLLECT_RINGS_ROM
    else if (gMultiSioRecv->pat0.unk0 == 0x4010) {
        gMultiplayerLanguage = gMultiSioRecv->pat0.unk3;
    }
#endif

    resultsScreen = TASK_DATA(gCurTask);
#ifndef NON_MATCHING
    while (0)
        ;
#endif
    gBldRegs.bldCnt = 0;
    gBldRegs.bldY = 0;

    if (++resultsScreen->unk430 > 0xF0) {
#if (GAME == GAME_SA2) && !defined(COLLECT_RINGS_ROM)
        gFlags &= ~0x8000;
#endif

        if (resultsScreen->unk434) {
            for (i = 0; i < 3; i++) {
                s32 temp;
                s = &resultsScreen->unk370[i];
#if (GAME == GAME_SA1)
                s->graphics.dest = (void *)(OBJ_VRAM0 + 0x2500 + (i * 0x1C0));
#elif (GAME == GAME_SA2)
                s->graphics.dest = (void *)(OBJ_VRAM0 + 0x2500 + (i * 0x180));
#endif

                s->x = 0;
                s->y = 0;
                s->oamFlags = SPRITE_OAM_ORDER(4);
                s->graphics.size = 0;

// Non match required for non japan main rom
#if !defined(NON_MATCHING) && !defined(JAPAN)
#if COLLECT_RINGS_ROM
                do
#endif
                {

#if (GAME == GAME_SA2)
                    s16 var = SA2_ANIM_MP_SINGLE_PAK_RESULTS_ROUND;
                    asm("" ::"r"(var));
#endif
                }
#if COLLECT_RINGS_ROM

                while (0);
#endif
#endif

#if (GAME == GAME_SA1)
                switch (LOADED_SAVE->uiLanguage) {
                    case UILANG_JAPANESE:
                        s->graphics.anim = SA1_ANIM_MP_SINGLE_PAK_RESULTS_CUMULATIVE;
                        break;

                    case UILANG_ENGLISH:
                    default:
                        s->graphics.anim = SA1_ANIM_MP_SINGLE_PAK_RESULTS_ROUND;
                        break;
                }
#elif (GAME == GAME_SA2)
                switch (gMultiplayerLanguage) {
#ifdef JAPAN
                    case LANG_DEFAULT:
                        s->graphics.anim = SA2_ANIM_MP_SINGLE_PAK_RESULTS_CUMULATIVE;
                        break;
#endif
                    case LANG_JAPANESE:
                        s->graphics.anim = SA2_ANIM_MP_SINGLE_PAK_RESULTS_CUMULATIVE;
                        break;
#ifdef JAPAN
                    case LANG_ENGLISH:
#endif
                    default:
                        s->graphics.anim = SA2_ANIM_MP_SINGLE_PAK_RESULTS_ROUND;
                        break;
                }
#endif

                s->variant = i;
                s->animCursor = 0;
                s->qAnimDelay = 0;
                s->prevVariant = -1;
                s->animSpeed = SPRITE_ANIM_SPEED(1.0);
                s->palId = 0;
                s->frameFlags = 0x1000;
                UpdateSpriteAnimation(s);
            }
        }
#ifndef COLLECT_RINGS_ROM
        if (gMultiSioStatusFlags & MULTI_SIO_PARENT) {
            s = &resultsScreen->unk400;
            s->x = (DISPLAY_WIDTH / 2);
            s->y = (DISPLAY_HEIGHT / 2);

#if (GAME == GAME_SA1)
            if (resultsScreen->unk434) {
                s->graphics.dest = resultsScreen->unk370[2].graphics.dest + 0x1C0;
            } else {
                s->graphics.dest = resultsScreen->unk340.graphics.dest + 0x1C0;
            }
#elif (GAME == GAME_SA2)
            if (resultsScreen->unk434) {
                s->graphics.dest = resultsScreen->unk370[2].graphics.dest + 0x180;
            } else {
                s->graphics.dest = resultsScreen->unk340.graphics.dest + 0x180;
            }
#endif

            s->oamFlags = SPRITE_OAM_ORDER(0);
            s->graphics.size = 0;

#if (GAME == GAME_SA1)
            switch (LOADED_SAVE->uiLanguage) {
                case UILANG_JAPANESE:
                    s->graphics.anim = 893; // SA1_ANIM_PRESS_START_MSG_JP;
                    break;
                default:
                    s->graphics.anim = SA1_ANIM_MP_PRESS_START; // SA1_ANIM_PRESS_START_MSG_EN;
                    break;
            }
#elif (GAME == GAME_SA2)
            switch (gMultiplayerLanguage) {
#ifdef JAPAN
                case LANG_DEFAULT:
                    s->graphics.anim = SA2_ANIM_PRESS_START_MSG_JP;
                    break;
#endif
                case LANG_JAPANESE:
                    s->graphics.anim = SA2_ANIM_PRESS_START_MSG_JP;
                    break;
#ifdef JAPAN
                case LANG_ENGLISH:
                    s->graphics.anim = SA2_ANIM_PRESS_START_MSG_EN;
                    break;
#endif
                default:
                    s->graphics.anim = SA2_ANIM_PRESS_START_MSG_EN;
                    break;
            }
#endif
            s->variant = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = -1;
            s->animSpeed = SPRITE_ANIM_SPEED(1.0);
#if (GAME == GAME_SA1)
            s->palId = 10;
#elif (GAME == GAME_SA2)
            s->palId = 0;
#endif
            s->frameFlags = 0;
            UpdateSpriteAnimation(s);
        }
#endif
        resultsScreen->unk430 = 0;
        gCurTask->main = SA2_LABEL(sub_80823FC);
        SA2_LABEL(sub_80823FC)(); // SA1: SA2_LABEL(sub_80823FC)
    } else {
#ifndef NON_MATCHING
        // This is wrong, just here to make asm correct here
        resultsScreen++;
        while (0)
            ;
        resultsScreen--;
#endif

        for (i = 0; i < 4; i++) {
            if (!(gMultiSioStatusFlags & MULTI_SIO_RECV_ID(i + 8))) {
                if (SA2_LABEL(gUnknown_030054B4)[i] & 1) {
                    SA2_LABEL(sub_80078D4)(3, i * 40, (i + 1) * 40, DISPLAY_WIDTH - resultsScreen->unk430, DISPLAY_HEIGHT - i * 40);
                } else {
                    SA2_LABEL(sub_80078D4)(3, i * 40, (i + 1) * 40, resultsScreen->unk430 - DISPLAY_WIDTH, DISPLAY_HEIGHT - i * 40);
                }
            } else {
                if (SA2_LABEL(gUnknown_030054B4)[i] & 1) {
                    SA2_LABEL(sub_80078D4)
                    (3, SA2_LABEL(gUnknown_030054B4)[i] * 40, (SA2_LABEL(gUnknown_030054B4)[i] + 1) * 40,
                     DISPLAY_WIDTH - resultsScreen->unk430, (i * 5 - SA2_LABEL(gUnknown_030054B4)[i] * 5) * 8);
                } else {
                    SA2_LABEL(sub_80078D4)
                    (3, SA2_LABEL(gUnknown_030054B4)[i] * 40, (SA2_LABEL(gUnknown_030054B4)[i] + 1) * 40,
                     resultsScreen->unk430 - DISPLAY_WIDTH, (i * 5 - SA2_LABEL(gUnknown_030054B4)[i] * 5) * 8);
                }
            }
        }
    }
}
