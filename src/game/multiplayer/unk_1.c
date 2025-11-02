#include "global.h"
#include "core.h"
#include "flags.h"
#include "lib/m4a/m4a.h"
#include "bg_triangles.h"
#include "game/course_select.h"
#include "game/sa1_sa2_shared/unused_level_select.h"
#include "game/gTask_03006240.h"
#include "game/multiplayer/multipak_connection.h"
#include "game/multiplayer/unk_1.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/stage/player.h"
#include "game/stage/stage.h"
#include "game/save.h"

#include "constants/songs.h"
#include "constants/tilemaps.h"

typedef struct SpriteStrc {
    Sprite s;
    u8 filler30[0x8];
} SpriteStrc;

typedef struct MPStrc1 {
    /*  0x00 */ Background bg0;
    /*  0x40 */ u8 filler40[0x40];
    /*  0x80 */ SpriteStrc sprites[4];
    /* 0x120 */ u8 filler160[0x2D0];
    /* 0x430 */ u16 qUnk430;
    /* 0x432 */ s16 unk432;
} MPStrc1; /* 0x434 */

void Task_801CB80(void);
void sub_801CF08(void);
void sub_801D0CC();
void Task_801D34C(void);

extern void sub_8018AE0(void);
extern void sub_8062F90(void);

void sub_801C9D8(void)
{
    MPStrc1 *strc;
    Sprite *s;
    struct Task *t;
    u32 i;

    gWinRegs[4] = 0;
    gWinRegs[5] = 0;
    gWinRegs[0] = 0;
    gWinRegs[2] = 0;
    gWinRegs[1] = 0;
    gWinRegs[3] = 0;
    gDispCnt = DISPCNT_OBJ_1D_MAP;
    gBgCntRegs[3] = 0x5E0B;
    gBldRegs.bldCnt = 0;
    gBldRegs.bldY = 0;
    gMultiplayerMissingHeartbeats[3] = 0;
    gMultiplayerMissingHeartbeats[2] = 0;
    gMultiplayerMissingHeartbeats[1] = 0;
    gMultiplayerMissingHeartbeats[0] = 0;
    SA2_LABEL(gUnknown_03004D80)[3] = 0xFF;
    SA2_LABEL(gUnknown_03002280)[3][0] = 0;
    SA2_LABEL(gUnknown_03002280)[3][1] = 0;
    SA2_LABEL(gUnknown_03002280)[3][2] = -1;
    SA2_LABEL(gUnknown_03002280)[3][3] = 0x40;
    DmaFill32(3, 0, VRAM + 0xA000 - 0x20, 0x40);
    t = TaskCreate(Task_801CB80, sizeof(MPStrc1), 0x2000U, 0U, NULL);
    strc = TASK_DATA(t);
    strc->qUnk430 = 0;

    for (i = 0; i < MULTI_SIO_PLAYERS_MAX; i++) {
        if (!GetBit(gMultiplayerConnections, i))
            break;
    }

    if (i == 3) {
        strc->unk432 = 0x14;
    } else if (i == 2) {
        strc->unk432 = 0x28;
    } else {
        strc->unk432 = 0;
    }

    strc->bg0.graphics.dest = (void *)(BG_VRAM + 0x8000);
    strc->bg0.graphics.anim = 0;
    strc->bg0.layoutVram = (u16 *)(BG_VRAM + 0xF000);
    strc->bg0.unk18 = 0;
    strc->bg0.unk1A = 0;
    strc->bg0.tilemapId = TM_MP_MULTIPAK_PLAYER_OVERVIEW;
    strc->bg0.unk1E = 0;
    strc->bg0.unk20 = 0;
    strc->bg0.unk22 = 0;
    strc->bg0.unk24 = 0;
    strc->bg0.targetTilesX = 30;
    strc->bg0.targetTilesY = 20;
    strc->bg0.paletteOffset = 0;
    strc->bg0.flags = 3;
    DrawBackground(&strc->bg0);

    for (i = 0; i < ARRAY_COUNT(strc->sprites); i++) {
        SpriteStrc *spr = &strc->sprites[i];
        Sprite *s = &spr->s;

        s->x = (DISPLAY_WIDTH / 2);
        s->y = 20 + i * 0x28;
        s->graphics.dest = OBJ_VRAM0 + (i << 0xB);
        s->oamFlags = 0x400;
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
    };

    sub_80535FC();
}

void Task_801CB80()
{
    u32 pid;
    u32 i;
    MPStrc1 *strc;

    gDispCnt |= (DISPCNT_OBJ_ON | DISPCNT_BG3_ON);
    if (IS_MULTI_PLAYER) {
        for (pid = 0; pid < 4; pid++) {
            if (!GetBit(gMultiplayerConnections, pid)) {
                break;
            }

            if (!CheckBit(gMultiSioStatusFlags, pid)) {
                if (gMultiplayerMissingHeartbeats[pid]++ >= 0xB5) {
                    TasksDestroyAll();
                    gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
                    sa2__gUnknown_03005390 = 0;
                    gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
                    MultiPakCommunicationError();
                    return;
                }
            } else {
                gMultiplayerMissingHeartbeats[pid] = 0;
            }
        }
    }

    strc = TASK_DATA(gCurTask);
    strc->qUnk430 += Q(4);
    if (strc->qUnk430 > Q(DISPLAY_WIDTH)) {
        strc->qUnk430 = 0;
        sub_801D0CC();
        gCurTask->main = Task_801D34C;
        Task_801D34C();
        return;
    }

    if (strc->unk432 != 0) {
        SA2_LABEL(sub_80078D4)(3U, 0U, strc->unk432, 0xF0U, 0U);
    }

    for (i = 0; i < 4; i++) {
        if (!GetBit(gMultiplayerConnections, i)) {
            break;
        }

        if (1 & i) {
            SA2_LABEL(sub_80078D4)
            (3U, strc->unk432 + (i * 40), strc->unk432 + ((i + 1) * 40), (DISPLAY_WIDTH - I(strc->qUnk430)), (-strc->unk432) & 0xFF);
        } else {
            SA2_LABEL(sub_80078D4)
            (3U, strc->unk432 + (i * 40), strc->unk432 + ((i + 1) * 40), (I(strc->qUnk430) - DISPLAY_WIDTH), (-strc->unk432) & 0xFF);
        }
    }

    if (strc->unk432 != 0) {
        SA2_LABEL(sub_80078D4)(3U, (u8)(strc->unk432 + (i * 40)), DISPLAY_HEIGHT, DISPLAY_WIDTH, 0U);
    }
}

void Task_801CD80()
{
    MPStrc1 *strc = TASK_DATA(gCurTask);
    u8 i;

    strc->qUnk430 += Q(2);
    if (strc->qUnk430 > Q(16)) {
        strc->qUnk430 = 0x1000;
        gBldRegs.bldY = 0x10;
        gFlags &= ~FLAGS_EXECUTE_HBLANK_COPY;
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        SA2_LABEL(gUnknown_03005390) = 0;
        PAUSE_GRAPHICS_QUEUE();

        if ((gGameMode == GAME_MODE_RACE) || (gGameMode == GAME_MODE_CHAO_HUNT)) {
            for (i = 0; i < MULTI_SIO_PLAYERS_MAX; i++) {
                if (!GetBit(gMultiplayerConnections, i)) {
                    break;
                }
            }

            if (i < 3) {
                if (gGameMode == GAME_MODE_RACE) {
                    gGameMode = GAME_MODE_RACE;
                    CreateCourseSelect(0U);
                    return;
                }
                gGameMode = 4;
                sub_8062F90();
            } else {
                sub_8018AE0();
            }
        } else {
            m4aSongNumStop(MUS_CHARACTER_SELECTION);

            if (R_BUTTON & gInput) {
                SA2_LABEL(gUnknown_03004D80)[0] = 0;
                SA2_LABEL(gUnknown_03002280)[0][0] = 0;
                SA2_LABEL(gUnknown_03002280)[0][1] = 0;
                SA2_LABEL(gUnknown_03002280)[0][2] = -1;
                SA2_LABEL(gUnknown_03002280)[0][3] = 0x20;
                SA2_LABEL(gUnknown_03004D80)[1] = 0;
                SA2_LABEL(gUnknown_03002280)[1][0] = 0;
                SA2_LABEL(gUnknown_03002280)[1][1] = 0;
                SA2_LABEL(gUnknown_03002280)[1][2] = -1;
                SA2_LABEL(gUnknown_03002280)[1][3] = 0x20;
                SA2_LABEL(gUnknown_03004D80)[2] = 0;
                SA2_LABEL(gUnknown_03002280)[2][0] = 0;
                SA2_LABEL(gUnknown_03002280)[2][1] = 0;
                SA2_LABEL(gUnknown_03002280)[2][2] = -1;
                SA2_LABEL(gUnknown_03002280)[2][3] = 0x20;
                SA2_LABEL(gUnknown_03004D80)[3] = 0;
                SA2_LABEL(gUnknown_03002280)[3][0] = 0;
                SA2_LABEL(gUnknown_03002280)[3][1] = 0;
                SA2_LABEL(gUnknown_03002280)[3][2] = -1;
                SA2_LABEL(gUnknown_03002280)[3][3] = 0x20;
                CreateUnusedLevelSelect();
            } else if ((gGameMode == 0) && (LOADED_SAVE->unlockedLevels[gSelectedCharacter] == 0)) {
                gCurrentLevel = 0;
                ApplyGameStageSettings();
            } else {
                CreateCourseSelect(0U);
            }
        }
    } else {
        sub_801CF08();
        gBldRegs.bldY = I(strc->qUnk430);
    }
}

void sub_801CF08()
{
    SpriteStrc *spriteStrc;
    u32 pid;
    u32 i;

    MPStrc1 *strc;

    if (IS_MULTI_PLAYER) {
        for (pid = 0; pid < 4; pid++) {
            if (!GetBit(gMultiplayerConnections, pid)) {
                break;
            }

            if (CheckBit(gMultiSioStatusFlags, pid) == 0) {
                if (gMultiplayerMissingHeartbeats[pid]++ >= 0xB5) {
                    TasksDestroyInPriorityRange(0U, 0xFFFFU);
                    gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
                    SA2_LABEL(gUnknown_03005390) = 0;
                    gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
                    MultiPakCommunicationError();
                    return;
                }
            } else {
                gMultiplayerMissingHeartbeats[pid] = 0;
            }
        }
    }

    strc = TASK_DATA(gCurTask);
    if (strc->unk432 != 0) {
        SA2_LABEL(sub_80078D4)(3U, 0U, strc->unk432, 240, 0U);
    }

    for (i = 0; i < 4; i++) {
        if (!GetBit(gMultiplayerConnections, i)) {
            break;
        }

        SA2_LABEL(sub_80078D4)(3U, (strc->unk432 + (i * 0x28)), (strc->unk432 + ((i + 1) * 0x28)), 0U, (-strc->unk432) & 0xFF);

        if ((i == SIO_MULTI_CNT->id) || GetBit(gMultiplayerConnections, i)) {
            spriteStrc = &strc->sprites[gMultiplayerCharacters[i]];
            spriteStrc->s.x = 120;
            spriteStrc->s.y = (i * 40) + 20 + strc->unk432;
            UpdateSpriteAnimation(&spriteStrc->s);
            DisplaySprite(&spriteStrc->s);
        }
    }

    if (strc->unk432 != 0) {
        SA2_LABEL(sub_80078D4)(3U, (strc->unk432 + (i * 0x28)), 0xA0U, 0xF0U, 0U);
    }
}
