#include "global.h"
#include "core.h"
#include "flags.h"
#include "bg_triangles.h"
#include "multi_sio.h"
#include "sio32_multi_load.h" // for SIO32ML_BLOCK_SIZE
#include "lib/m4a/m4a.h"
#include "data/sprite_tables.h"
#include "game/multiboot/connection.h"
#include "game/multiplayer/communication_outcome.h"
#include "game/multiplayer/multipak_connection.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/sa1_sa2_shared/player.h"
#include "game/save.h"
#include "game/stage/tilemap_table.h"

#include "constants/animations.h"
#include "constants/songs.h"
#include "constants/text.h"
#include "constants/tilemaps.h"
#include "constants/zones.h"

extern u8 gUnknown_087D7E80[0x3400];
extern u8 gUnknown_087E3610[0x2000];

#if (GAME == GAME_SA1)
#define COMM_DATA(val) (val)
#define MP_LANGUAGE    LOADED_SAVE->uiLanguage
#define UNK_GFX_SIZE   0x1C0
#elif (GAME == GAME_SA2)
#define COMM_DATA(val) ((val) | 0x4000)
#define MP_LANGUAGE    gMultiplayerLanguage
#define UNK_GFX_SIZE   0x180
#endif

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
void SA2_LABEL(Task_8082630)(void);
void SA2_LABEL(sub_808267C)(void);
void SA2_LABEL(sub_8082788)(void);
void SA2_LABEL(sub_8082AA8)(void);
void LinkCommunicationError(void);

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
    gGameMode = GAME_MODE_MULTI_PLAYER_COLLECT_RINGS;
    gFlags &= ~0x8000;
    CpuFastSet(&gUnknown_087E3610, (void *)BG_VRAM, sizeof(gUnknown_087E3610));
    CpuFastSet(&gUnknown_087D7E80, (void *)EWRAM_START + 0x33000, sizeof(gUnknown_087D7E80));
    gTilemapsRef = *((Tilemap ***)(EWRAM_START + 0x33000));

    gDispCnt = DISPCNT_OBJ_1D_MAP;
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
            s->graphics.dest = (void *)(OBJ_VRAM0 + 0x2500 + (i * UNK_GFX_SIZE));
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

    gMultiSioSend.pat0.unk0 = COMM_DATA(0x10);

    if ((gMultiSioStatusFlags & MULTI_SIO_TYPE) == MULTI_SIO_PARENT) {
        gMultiSioSend.pat0.unk3 = MP_LANGUAGE;
    }
#if COLLECT_RINGS_ROM
    else if (gMultiSioRecv->pat0.unk0 == COMM_DATA(0x10)) {
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
                s->graphics.dest = (void *)(OBJ_VRAM0 + 0x2500 + (i * UNK_GFX_SIZE));
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
                switch (MP_LANGUAGE) {
                    case UILANG_JAPANESE:
                        s->graphics.anim = SA1_ANIM_MP_SINGLE_PAK_RESULTS_CUMULATIVE;
                        break;

                    case UILANG_ENGLISH:
                    default:
                        s->graphics.anim = SA1_ANIM_MP_SINGLE_PAK_RESULTS_ROUND;
                        break;
                }
#elif (GAME == GAME_SA2)
                switch (MP_LANGUAGE) {
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

            if (resultsScreen->unk434) {
                s->graphics.dest = resultsScreen->unk370[2].graphics.dest + UNK_GFX_SIZE;
            } else {
                s->graphics.dest = resultsScreen->unk340.graphics.dest + UNK_GFX_SIZE;
            }

            s->oamFlags = SPRITE_OAM_ORDER(0);
            s->graphics.size = 0;

#if (GAME == GAME_SA1)
            switch (MP_LANGUAGE) {
                case UILANG_JAPANESE:
                    s->graphics.anim = 893; // SA1_ANIM_PRESS_START_MSG_JP;
                    break;
                default:
                    s->graphics.anim = SA1_ANIM_MP_PRESS_START; // SA1_ANIM_PRESS_START_MSG_EN;
                    break;
            }
#elif (GAME == GAME_SA2)
            switch (MP_LANGUAGE) {
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

void SA2_LABEL(sub_80823FC)(void)
{
    Background *background;
    u32 i;
    s32 val2 = 0;
    u8 val = FALSE;
    struct MultiplayerSinglePakResultsScreen *resultsScreen = TASK_DATA(gCurTask);
    union MultiSioData *packet;

    gMultiplayerConnections = ((gMultiSioStatusFlags & MULTI_SIO_ALL_CONNECTED) >> 8);
    packet = &gMultiSioRecv[0];
    if (packet->pat0.unk0 == COMM_DATA(0x12)) {
#if (GAME == GAME_SA1) || COLLECT_RINGS_ROM
        gSelectedCharacter = 0;
#else
        gSelectedCharacter = SIO_MULTI_CNT->id;
#endif
        if (!resultsScreen->unk434) {
            background = &resultsScreen->unk40;
#if (GAME == GAME_SA2)
            gBgScrollRegs[2][0] = 0;
            gBgScrollRegs[2][1] = 0;
#endif
            background->graphics.dest = (void *)BG_SCREEN_ADDR(24);
            background->graphics.anim = 0;
            background->layoutVram = (void *)BG_SCREEN_ADDR(28);
            background->unk18 = 0;
            background->unk1A = 0;

#if (GAME == GAME_SA1)
            background->tilemapId = TM_LEVEL_BG(LEVEL_INDEX(ZONE_1, ACT_BOSS));
            background->unk1E = 0;
            background->unk20 = MP_LANGUAGE * 4;
#elif (GAME == GAME_SA2)
            background->tilemapId = TM_LEVEL_METATILES_0(LEVEL_INDEX(ZONE_1, ACT_BOSS));

            switch (gMultiplayerLanguage) {
                case 0:
#ifdef JAPAN
                    background->unk1E = 0;
                    background->unk20 = 0;
#else
                    background->unk1E = 0;
                    background->unk20 = 4;
#endif
                    break;
                case 1:
                    background->unk1E = 0;
                    background->unk20 = 0;
                    break;
                case 2:
                default:
                    background->unk1E = 0;
                    background->unk20 = 4;
                    break;
            }
#endif
            background->unk22 = 6;
            background->unk24 = 8;
            background->targetTilesX = 0x12;
            background->targetTilesY = 4;
            background->paletteOffset = 0;
            background->flags = BACKGROUND_FLAGS_BG_ID(2);
            DrawBackground(background);
        }

        gDispCnt |= 0x400;
        resultsScreen->unk430 = 0;
        if (resultsScreen->unk434) {
            gBldRegs.bldCnt = 0xFF;
            gCurTask->main = SA2_LABEL(Task_8082630);
            SA2_LABEL(Task_8082630)();
        } else {
            gCurTask->main = SA2_LABEL(sub_8082AA8);
            SA2_LABEL(sub_8082AA8)();
        }
    } else {
        SA2_LABEL(sub_8082788)();

#ifndef COLLECT_RINGS_ROM
        if (gMultiSioStatusFlags & MULTI_SIO_PARENT) {
            DisplaySprite(&resultsScreen->unk400);
        }
#endif

        for (i = 0; i < 4 && GetBit(gMultiplayerConnections, i); i++) {
            if (!(MULTI_SIO_RECV_ID(i) & gMultiSioStatusFlags)) {
                val = TRUE;
            } else {
                packet = &gMultiSioRecv[i];
                if (i == SIO_MULTI_CNT->id || packet->pat0.unk0 == COMM_DATA(0x10)) {
                    val2++;
                }
            }
        }
        packet = &gMultiSioSend;
        packet->pat0.unk0 = COMM_DATA(0x10);
        if (gMultiSioStatusFlags & MULTI_SIO_PARENT) {
            packet->pat0.unk3 = MP_LANGUAGE;
        }

        if ((gMultiSioStatusFlags & MULTI_SIO_PARENT && gPressedKeys & START_BUTTON && !val && val2 > 1) || resultsScreen->actor) {
            resultsScreen->actor = 1;
            packet->pat0.unk0 = COMM_DATA(0x12);
        }
    }
}

void SA2_LABEL(Task_8082630)(void)
{
    struct MultiplayerSinglePakResultsScreen *resultsScreen = TASK_DATA(gCurTask);
    resultsScreen->unk430 += 0x20;
    SA2_LABEL(sub_8082788)();

    if (resultsScreen->unk430 > 0x1000) {
        resultsScreen->unk430 = 0x1000;
        gBldRegs.bldY = 0x10;
        gCurTask->main = SA2_LABEL(sub_808267C);
    }

    gBldRegs.bldY = I(resultsScreen->unk430);
}

void SA2_LABEL(sub_808267C)(void)
{
    union MultiSioData *packet;
    struct MultiplayerSinglePakResultsScreen *resultsScreen = TASK_DATA(gCurTask);

    packet = &gMultiSioRecv[0];

    if (packet->pat3.unk0 == COMM_DATA(0x80)) {
        u32 i;
        gMultiplayerPseudoRandom = packet->pat3.unk8;

        for (i = 0; i < 4; i++) {
            gMultiplayerCharacters[i] = 0;
            SA2_LABEL(gUnknown_030054B4)[i] = i;
        }

        gFlags &= ~4;
        if (resultsScreen->unk434) {
            TaskDestroy(gCurTask);
            CreateMultiplayerSinglePakResultsScreen(0);
        } else {
            TaskDestroy(gCurTask);
            gBldRegs.bldCnt = 0;
            gBldRegs.bldY = 0;
            SA2_LABEL(sub_8081200)();
#if (GAME == GAME_SA2)
            GameStageStart();
#endif
        }
        return;
    }

    SA2_LABEL(sub_8082788)();
    packet = &gMultiSioSend;
    packet->pat0.unk0 = COMM_DATA(0x51);
    packet->pat0.unk2 = 0;

    if ((gMultiSioStatusFlags & MULTI_SIO_TYPE) == MULTI_SIO_PARENT) {
        u8 i;
        for (i = 0; i < 4; i++) {
            if (GetBit(gMultiplayerConnections, i)) {
                packet = &gMultiSioRecv[i];
                if (packet->pat0.unk0 != COMM_DATA(0x51)) {
                    return;
                }
            }
        }
        packet = &gMultiSioSend;
        packet->pat3.unk0 = COMM_DATA(0x80);
        packet->pat3.unk8 = resultsScreen->unk43C;
    }
}

#if (GAME == GAME_SA1)
// (99.30%) https://decomp.me/scratch/yvxpr
NONMATCH("asm/non_matching/game/multiplayer/results_2__sa2__sub_8082788.inc", void SA2_LABEL(sub_8082788)(void))
#else
void SA2_LABEL(sub_8082788)(void)
#endif
{
    u32 i;

    Sprite *s;
    struct MultiplayerSinglePakResultsScreen *resultsScreen;

    MultiPakHeartbeat();
    resultsScreen = TASK_DATA(gCurTask);

    for (i = 0; i < 4; i++) {
        if (!(gMultiSioStatusFlags & MULTI_SIO_RECV_ID(i + 8))) {
#if (GAME == GAME_SA1) && !defined(NON_MATCHING)
            u32 unk = SA2_LABEL(gUnknown_030054B4)[i] & 0x1;
            asm("" ::"r"(unk));
#endif
            SA2_LABEL(sub_80078D4)(3, i * 40, (i + 1) * 40, 0, DISPLAY_HEIGHT - i * 40);
        } else {
            union MultiSioData *send_recv;
            SA2_LABEL(sub_80078D4)
            (3, SA2_LABEL(gUnknown_030054B4)[i] * 40, (SA2_LABEL(gUnknown_030054B4)[i] + 1) * 40, 0,
             i * 40 - SA2_LABEL(gUnknown_030054B4)[i] * 40);
#if (GAME == GAME_SA1)
            send_recv = &gMultiSioRecv[i];
            if ((i == SIO_MULTI_CNT->id) || send_recv->pat0.unk0 > 15)
#endif
            {
                if (resultsScreen->unk434) {
                    u16 temp;

                    s = &resultsScreen->unk80[i].unk0;
                    s->x = (DISPLAY_WIDTH / 2);
                    s->y = SA2_LABEL(gUnknown_030054B4)[i] * 40 + 20;
                    UpdateSpriteAnimation(s);
                    DisplaySprite(s);

                    s = &resultsScreen->unk370[gMultiplayerCharacters[i]];
                    s->x = 52;
                    s->y = SA2_LABEL(gUnknown_030054B4)[i] * 40 + 20;
                    DisplaySprite(s);

                    // TODO: Fix type
                    temp = Base10DigitsToHexNibbles(gMultiplayerCharRings[i]);
                    s = &resultsScreen->unk160[((temp) >> 8) & 0xF];

#if (GAME == GAME_SA1) && !defined(NON_MATCHING)
                    {
                        register s32 r7 asm("r7");
                        asm("" : "=r"(r7));
                    }
#endif

                    if (s != &resultsScreen->unk160[0]) {
                        s->x = 160;
                        s->y = SA2_LABEL(gUnknown_030054B4)[i] * 40 + 20;
                        DisplaySprite(s);
                    }

                    s = &resultsScreen->unk160[((temp) >> 4) & 0xF];

                    if (s != &resultsScreen->unk160[0] || (temp > 0xFF)) {
                        s->x = 171;
                        s->y = SA2_LABEL(gUnknown_030054B4)[i] * 40 + 20;
                        DisplaySprite(s);
                    }

                    s = &resultsScreen->unk160[(temp)&0xF];
                    s->x = 182;
                    s->y = SA2_LABEL(gUnknown_030054B4)[i] * 40 + 20;
                    DisplaySprite(s);
                } else {
                    u16 temp;
                    s = &resultsScreen->unk80[i].unk0;
                    s->x = (DISPLAY_WIDTH / 2);
                    s->y = i * 40 + 20;
                    UpdateSpriteAnimation(s);
                    DisplaySprite(s);

                    if (gMPRingCollectWins[i] > 99) {
                        temp = 99;
                    } else {
                        temp = Base10DigitsToHexNibbles(gMPRingCollectWins[i]);
                    }

                    s = &resultsScreen->unk160[((temp) >> 4)];

                    if (s != &resultsScreen->unk160[0]) {
                        s->x = 160;
                        s->y = i * 40 + 20;
                        DisplaySprite(s);
                    }
                    s = &resultsScreen->unk160[temp & 0xF];
                    s->x = 171;
                    s->y = i * 40 + 20;
                    DisplaySprite(s);

                    s = &resultsScreen->unk340;
                    s->x = 197;
                    s->y = i * 40 + 20;
                    DisplaySprite(s);
                }
            }
        }
    }
}
#if (GAME == GAME_SA1)
END_NONMATCH
#endif

void SA2_LABEL(sub_8082AA8)(void)
{
    struct MultiplayerSinglePakResultsScreen *resultsScreen = TASK_DATA(gCurTask);

    SA2_LABEL(sub_8082788)();
    if (resultsScreen->unk430++ > 0x1E) {
        resultsScreen->unk430 = 0;
        m4aMPlayFadeOut(&gMPlayInfo_BGM, 8);
        m4aMPlayFadeOut(&gMPlayInfo_SE1, 8);
        m4aMPlayFadeOut(&gMPlayInfo_SE2, 8);
        m4aMPlayFadeOut(&gMPlayInfo_SE3, 8);
        gBldRegs.bldCnt = 0xFF;
        gCurTask->main = SA2_LABEL(Task_8082630);
    }
}

/*   Used by Chao Hunt and Collect Rings as HUD task   */

// TODO: Move this out of here?

#include "malloc_vram.h"

typedef struct ChaoHuntHUD {
    Sprite s0;
    Sprite spritesA[11];
    Sprite spritesB[11];
} ChaoHuntHUD;

void Task_ChaoHuntHUD(void);
void TaskDestructor_ChaoHuntHUD(struct Task *t);

extern const u8 SA2_LABEL(gUnknown_080E0234)[60];

void CreateChaoHuntHUD(void)
{
    Sprite *s;
    u32 i;

    ChaoHuntHUD *hud = TASK_DATA(TaskCreate(Task_ChaoHuntHUD, sizeof(ChaoHuntHUD), 0x2000U, 0U, TaskDestructor_ChaoHuntHUD));

    s = &hud->s0;
    s->x = 0;
    s->y = 8;
    s->oamFlags = SPRITE_OAM_ORDER(5);
    s->graphics.size = 0;
    if (gGameMode == 6) {
        s->graphics.dest = VramMalloc(12);
        s->graphics.anim = SA1_ANIM_COLLECT_RINGS_COUNTER_BACKDROP;
        s->variant = 0;
    } else {
        s->graphics.dest = VramMalloc(16);
        s->graphics.anim = SA1_ANIM_CHAO_HUNT_COUNTER_BACKDROP;
        s->variant = 0;
    }
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = 0x40000;
    UpdateSpriteAnimation(s);

    for (i = 0; i < 11; i++) {
        s = &hud->spritesA[i];
        s->x = 0;
        s->y = 0;
        if (i == 0) {
            s->graphics.dest = VramMalloc(22);
        } else {
            s->graphics.dest = hud->spritesA[0].graphics.dest + (i * (2 * TILE_SIZE_4BPP));
        }
        s->oamFlags = 0x100;
        s->graphics.size = 0;
        s->graphics.anim = SA1_ANIM_MP_TIMER_DIGITS;
        s->variant = i;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);

        s = &hud->spritesB[i];
        s->x = 0;
        s->y = 0;
        if (i == 0) {
            s->graphics.dest = VramMalloc(22);
        } else {
            s->graphics.dest = hud->spritesB[0].graphics.dest + (i * (2 * TILE_SIZE_4BPP));
        }
        s->oamFlags = 0x100;
        s->graphics.size = 0;
        s->graphics.anim = SA1_ANIM_MP_TIMER_DIGITS;
        s->variant = i + 11;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
}

// (84.64%) https://decomp.me/scratch/y4y6F
NONMATCH("asm/non_matching/game/multiplayer/results_2__Task_ChaoHuntHUD.inc", void Task_ChaoHuntHUD(void))
{
    ChaoHuntHUD *hud;
    Sprite *s0;
    Sprite *s;
    Sprite *timerSprites;
    u16 temp_r0;
    u16 temp_r5;
    u16 var_r0;
    u16 var_r4;
    u32 var_r2;
    u8 var_r2_2;
    u32 var_r5;
    u8 var_sb;

    hud = TASK_DATA(gCurTask);

    // Show the red timer every 2 frames, lasting 2 frames
    if (((u32)gCourseTime < ZONE_TIME_TO_INT(1, 0)) && (gCourseTime & 2)) {
        timerSprites = hud->spritesB;
    } else {
        timerSprites = hud->spritesA;
    }
    if (!(1 & gStageFlags) && (gCourseTime < ZONE_TIME_TO_INT(1, 0)) && (Mod(gCourseTime, 60) == 0)) {
        m4aSongNumStart(SE_TIMER);
    }
    s = &timerSprites[10];
    s->y = 32;
    s->x = 24;
    DisplaySprite(s);
    s->x = 0x30;
    DisplaySprite(s);
    temp_r5 = Div(gCourseTime, 60);
    var_r4 = SA2_LABEL(gUnknown_080E0234)[gCourseTime - (temp_r5 * 60)];
    s = &timerSprites[var_r4 >> 4];
    s->x = 56;
    s->y = 32;
    DisplaySprite(s);
    s = &timerSprites[0xF & var_r4];
    s->x = 64;
    s->y = 32;
    DisplaySprite(s);
    var_r4 = Div(temp_r5, 60);
    temp_r0 = Base10DigitsToHexNibbles((temp_r5 - (var_r4 * 60)));
    s = &timerSprites[(temp_r0 >> (1 * 4)) & 0xF];
    s->x = 32;
    s->y = 32;
    DisplaySprite(s);
    s = &timerSprites[0xF & temp_r0];
    s->x = 40;
    s->y = 32;
    DisplaySprite(s);
    s = &timerSprites[0xF & Base10DigitsToHexNibbles((var_r4 - (Div(var_r4, 60) * 60)))];
    s->x = 16;
    s->y = 32;
    DisplaySprite(s);

    for (var_r5 = 0; var_r5 < 4; var_r5++) {
        Sprite *timerSprites;
        if (!GetBit(gMultiplayerConnections, var_r5) || (gGameMode == 5 && var_r5 == 2)) {
            break;
        }
        timerSprites = hud->spritesA;
        s0 = &hud->s0;
        s0->x = (var_r5 * 0x14) + 8;
        s0->y = 8;
        if (gGameMode == 6) {
            s0->palId = var_r5;
        } else if (gGameMode == 4) {
            s0->palId = (u8)gMultiplayerCharacters[var_r5];
        } else {
            for (var_r2 = 0; var_r2 < 4; var_r2++) {
                if (var_r5 == ((gMultiplayerConnections & (0x10 << var_r2)) >> (var_r2 + 4))) {
                    break;
                }
            }
            s0->palId = (u8)gMultiplayerCharacters[var_r2];
        }
        DisplaySprite(&hud->s0);
        if (gGameMode == 5) {
            var_r4 = 0;
            for (var_r2_2 = 0; var_r2_2 < 4; var_r2_2++) {
                if (gMultiplayerPlayerTasks[var_r2_2] == NULL) {
                    break;
                }

                if (var_r5 == (CheckBit(gMultiplayerConnections, (0x10 << var_r2_2)) >> (var_r2_2 + 4))) {
                    var_r4 += gMultiplayerCharRings[var_r2_2];
                }
            }

            var_r4 = Base10DigitsToHexNibbles(var_r4);
        } else {
            var_r4 = Base10DigitsToHexNibbles(gMultiplayerCharRings[var_r5]);
        }
        if (var_r4 >= 0x100) {
            s = &timerSprites[(var_r4 >> (2 * 4)) & 0xF];
            s->x = s0->x + 3;
            s->y = 0xE;
            DisplaySprite(s);
            s = &timerSprites[(var_r4 >> (1 * 4)) & 0xF];
            s->x = s0->x + 0xB;
            s->y = 0xE;
            DisplaySprite(s);
            s = &timerSprites[(var_r4 >> (0 * 4)) & 0xF];
            s->x = s0->x + 0x13;
            s->y = 0xE;
            DisplaySprite(s);
        } else if (var_r4 >= 0x10) {
            s = &timerSprites[(var_r4 >> (1 * 4)) & 0xF];
            s->x = s0->x + 7;
            s->y = 0xE;
            DisplaySprite(s);
            s = &timerSprites[(var_r4 >> (0 * 4)) & 0xF];
            s->x = s0->x + 0xF;
            s->y = 0xE;
            DisplaySprite(s);
        } else {
            s = &timerSprites[(var_r4 >> (0 * 4)) & 0xF];
            s->x = s0->x + 0xB;
            s->y = 0xE;
            DisplaySprite(s);
        }
    }
}
END_NONMATCH

void TaskDestructor_ChaoHuntHUD(struct Task *t)
{
    ChaoHuntHUD *hud = TASK_DATA(t);

    VramFree(hud->s0.graphics.dest);
    VramFree(hud->spritesA[0].graphics.dest);
    VramFree(hud->spritesB[0].graphics.dest);
}
