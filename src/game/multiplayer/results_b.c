#include "global.h"
#include "core.h"
#include "trig.h"
#include "lib/m4a/m4a.h"
#include "game/character_select.h"
#include "game/course_select.h"
#include "game/multiplayer/multipak_connection.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/save.h"

#include "constants/animations.h"
#include "constants/songs.h"
#include "constants/text.h"

typedef struct MPResultsB {
    /* 0x00 */ Background bg;
    /* 0x40 */ Background bg2;
    /* 0x80 */ Sprite s;
    /* 0xB0 */ Sprite s2;
    /* 0xE0 */ Sprite s3[3];
    /* 0xE0 */ Sprite s6[3];
    /* 0x200 */ Sprite spr200;
    /* 0x230 */ s32 unk230;
    /* 0x234 */ u16 unk234;
    /* 0x236 */ s16 unk236;
    /* 0x238 */ u16 unk238;
    /* 0x23A */ u16 unk23A;
    /* 0x23C */ s16 unk23C;
    /* 0x23E */ s16 unk23E;
    /* 0x240 */ u16 unk240;
    /* 0x240 */ u16 unk242;
    /* 0x240 */ u16 unk244;
    /* 0x246 */ u8 unk246;
    /* 0x247 */ u8 unk247;
} MPResultsB; /* 0x248 */

void Task_8018ECC(void);
void Task_8019348(void);
void sub_80196FC(void);

extern void sub_8062F90(void);

void sub_8018AE0()
{
    void *sp4;
    Background *bg;
    Sprite *s;
    void *temp_r0;

    MPResultsB *strc;

    sp4 = (void *)OBJ_VRAM0;
    gMultiplayerMissingHeartbeats[3] = 0;
    gMultiplayerMissingHeartbeats[2] = 0;
    gMultiplayerMissingHeartbeats[1] = 0;
    gMultiplayerMissingHeartbeats[0] = 0;
    gDispCnt = 0x1340;
    gBgCntRegs[0] = 0x1E03;
    gBgCntRegs[1] = 0x1F06;
    strc = TASK_DATA(TaskCreate(Task_8018ECC, sizeof(MPResultsB), 0x2000U, 0U, NULL));
    bg = &strc->bg;
    strc->unk234 = 0;
    strc->unk236 = 0;
    strc->unk238 = 0;
    strc->unk247 = 0;
    strc->unk246 = 1;
    strc->unk230 = 0;
    strc->unk23A = 0;
    strc->unk23C = 0;
    strc->unk23E = 0;
    strc->unk240 = 0;

    s = &strc->s;
    s->x = 0;
    s->y = 0x19;
    s->graphics.dest = sp4;
    s->oamFlags = SPRITE_OAM_ORDER(15);
    s->graphics.size = 0;
    s->graphics.anim = 894;
    strc->s.variant = 2;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    strc->s.prevVariant = 0xFF;
    strc->s.animSpeed = 0x10;
    strc->s.palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    sp4 += 0x340;
    s = &strc->s2;
    s->x = 0;
    s->y = 0xE;
    s->graphics.dest = sp4;
    s->oamFlags = 0x400;
    s->graphics.size = 0;
    s->graphics.anim = 860;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    sp4 += 0x180;
    s = &strc->s3[0];
    s->x = 0x35;
    s->y = 0x58;
    s->graphics.dest = sp4;
    s->oamFlags = 0x400;
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_MP_OUTCOME_MESSAGES;
    s->variant = 2;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    sp4 += 0x180;
    s = &strc->s3[1];
    s->x = 0xB7;
    s->y = 0x58;
    s->graphics.dest = sp4;
    s->oamFlags = 0x400;
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_MP_OUTCOME_MESSAGES;
    s->variant = 3;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    sp4 += 0x100;
    s = &strc->s3[2];
    s->x = 25;
    s->y = 73;
    s->graphics.dest = sp4;
    s->oamFlags = 0x400;
    s->graphics.size = 0;
    s->graphics.anim = 858;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    sp4 += 0x380;
    s = &strc->spr200;
    s->x = 120;
    s->y = 80;
    s->graphics.dest = sp4;
    s->oamFlags = 0x80;
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_VS_MENU_WAIT;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    bg->graphics.dest = (void *)BG_VRAM;
    bg->graphics.anim = 0;
    bg->layoutVram = (u16 *)(BG_VRAM + 0xF000);
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->tilemapId = 81;
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->targetTilesX = 30;
    bg->targetTilesY = 20;
    bg->paletteOffset = 0;
    bg->flags = 0;
    DrawBackground(bg);

    bg = &strc->bg2;
    bg->graphics.dest = (void *)(BG_VRAM + 0x4000);
    bg->graphics.anim = 0;
    bg->layoutVram = (void *)(BG_VRAM + 0xF800);
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->tilemapId = 82;
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->targetTilesX = 32;
    bg->targetTilesY = 32;
    bg->paletteOffset = 0;
    bg->flags = 1;
    DrawBackground(bg);

    m4aSongNumStartOrChange(3U);

    gRepeatedKeys = 0;
    gPressedKeys = 0;
    gInput = 0;
    gWinRegs[5] = 0x3F;
    gBldRegs.bldCnt = 0x3F46;
    gBldRegs.bldAlpha = 0xA10;
    gWinRegs[2] = 0xA0;
}

// (97.44%) https://decomp.me/scratch/nj1HT
NONMATCH("asm/non_matching/game/multiplayer/results_b__Task_8018ECC.inc", void Task_8018ECC(void))
{
    Sprite *s;
    s32 temp_r1_5;
    s32 temp_r3_3;
    s32 var_r1;
    s32 var_r3_2;
    s32 var_r4;
    s32 i;
    u16 *temp_r1_2;
    u16 *temp_r4_4;
    u16 temp_r0_2;
    u32 var_r3;
    s16 var_r4_2;
    u8 *var_r2;
    u8 temp_r0;
    u8 temp_r4;
    u8 var_r0;
    u8 var_r0_2;
    u16 recvData;
    union MultiSioData *send_recv;

    MPResultsB *strc = TASK_DATA(gCurTask);

    strc->unk234++;
    if (IS_MULTI_PLAYER) {
        for (var_r3 = 0; var_r3 < 4; var_r3++) {
            if (!GetBit(gMultiplayerConnections, var_r3)) {
                break;
            }

            if (!CheckBit(gMultiSioStatusFlags, var_r3)) {
                if (gMultiplayerMissingHeartbeats[var_r3]++ >= 0xB5) {
                    TasksDestroyAll();
                    PAUSE_BACKGROUNDS_QUEUE();
                    SA2_LABEL(gUnknown_03005390) = 0;
                    PAUSE_GRAPHICS_QUEUE();
                    MultiPakCommunicationError();
                    return;
                }
            } else {
                gMultiplayerMissingHeartbeats[var_r3] = 0;
            }
        }
    }

    recvData = gMultiSioRecv->pat0.unk0;
    if (recvData == 0x34) {
        if (strc->unk246 != gMultiSioRecv->pat0.unk2) {
            m4aSongNumStart(SE_MENU_CURSOR_MOVE);
            if (!(gMultiSioStatusFlags & 0x80)) {
                strc->unk246 = gMultiSioRecv->pat0.unk2;
            }
        }
    } else if (recvData == 0x35) {
        var_r3_2 = 1;
        if (gMultiSioStatusFlags & 0x80) {
            for (i = 1; i < 4; i++) {
                if (!GetBit(gMultiplayerConnections, i)) {
                    break;
                }

                send_recv = &gMultiSioRecv[i];
                if (send_recv->pat0.unk0 < 0x35) {
                    var_r3_2 = 0;
                }
            }
        } else {
            gMultiSioSend.pat0.unk0 = recvData;
        }
        if (var_r3_2 != 0) {
            if (strc->unk246 != gMultiSioRecv->pat0.unk2) {
                m4aSongNumStart(SE_MENU_CURSOR_MOVE);
                strc->unk246 = gMultiSioRecv->pat0.unk2;
            }
            m4aSongNumStart(SE_SELECT);
            if (strc->unk246 == 0) {
                if (gGameMode == 2) {
                    gGameMode = 3;
                } else {
                    gGameMode = 5;
                }
                gCurTask->main = Task_8019348;
                return;
            }
            var_r0_2 = gGameMode;
            if (gGameMode != 2) {
                var_r0_2 = 4;
            }
            gGameMode = var_r0_2;
            TaskDestroy(gCurTask);

            if (gGameMode == GAME_MODE_RACE) {
                CreateCourseSelect(0U);
            } else {
                sub_8062F90();
            }
            return;
        }
    } else if (recvData > 0x35U) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        SA2_LABEL(gUnknown_03005390) = 0;
        PAUSE_GRAPHICS_QUEUE();
        MultiPakCommunicationError();
        return;
    }

    if (gMultiSioStatusFlags & 0x80) {
        var_r4 = 1;
        send_recv = &gMultiSioSend;
        send_recv->pat0.unk0 = 0x34;
        if (strc->unk247 == 0) {
            if (0x10 & gInput) {
                strc->unk246 = 1;
            } else if (0x20 & gInput) {
                strc->unk246 = 0;
            }
        }
        send_recv->pat0.unk2 = strc->unk246;

        for (i = 1; i < 4; i++) {
            if (!GetBit(gMultiplayerConnections, i)) {
                break;
            }

            if (gMultiSioRecv[i].pat0.unk0 < 0x34) {
                var_r4 = 0;
            }
        }
        if (((var_r4 != 0) && (1 & gPressedKeys)) || (strc->unk247 != 0)) {
            gMultiSioSend.pat0.unk0 = 0x35;
            gMultiSioSend.pat0.unk2 = strc->unk246;
            strc->unk247 = 1;
        }
    } else {
        gMultiSioSend.pat0.unk0 = 0x34;
        s = &strc->spr200;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    s = &strc->s3[2];
    s->x = (strc->unk246 * 0x83) + 0x19;
    strc->unk236 += 0x10;
    if (strc->unk236 > 0x400) {
        strc->unk236 = 0x400;
    }
    if (strc->unk246 == 0) {
        strc->unk238 = (strc->unk238 + 1) & 0x3FF;
    } else {
        strc->unk238 = (strc->unk238 - 1) & 0x3FF;
    }

    strc->unk23A = (strc->unk236 * COS_24_8(strc->unk238)) >> 8;
    strc->unk23C = (strc->unk236 * SIN_24_8(strc->unk238)) >> 8;
    strc->unk23E += strc->unk23A;
    strc->unk240 += strc->unk23C;

    gBgScrollRegs[1][0] = (s16)((s32)((u16)strc->unk23E << 0x10) >> 0x18);
    gBgScrollRegs[1][1] = (s16)((s32)(strc->unk240 << 0x10) >> 0x18);
    strc->unk230 += 0x80;
    if (strc->unk230 > Q(136)) {
        strc->unk230 -= Q(136);
    }

    s = &strc->s;
    var_r4_2 = I(-strc->unk230);
    while (var_r4_2 < DISPLAY_WIDTH) {
        s->x = (s16)var_r4_2;
        var_r4_2 += 136;
        DisplaySprite(s);
    }

    for (i = 0; i < 3; i++) {
        s = &strc->s3[i];
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    s = &strc->s2;
    for (i = 0; i < 8; i++) {
        s->x = i * 32;
        DisplaySprite(s);
    }
}
END_NONMATCH

void Task_8019348(void)
{
    Sprite *s;
    u8 *vram = (u8 *)OBJ_VRAM0;

    MPResultsB *strc = TASK_DATA(gCurTask);

    strc->unk246 = 1 & SIO_MULTI_CNT->id;
    strc->unk247 = 0;
    s = &strc->s;
    s->x = 0;
    s->y = 25;
    s->graphics.dest = vram;
    s->oamFlags = 0x3C0;
    s->graphics.size = 0;
    s->graphics.anim = 0x37E;
    strc->s.variant = 3;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    strc->s.prevVariant = 0xFF;
    strc->s.animSpeed = 0x10;
    strc->s.palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);
    vram += 0x400;

    s = &strc->s2;
    s->x = 0;
    s->y = 0xE;
    s->graphics.dest = vram;
    s->oamFlags = 0x400;
    s->graphics.size = 0;
    s->graphics.anim = 0x35C;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);
    vram += 0x180;

    s = &strc->s3[0];
    s->x = 0x2B;
    s->y = 0x3D;
    s->graphics.dest = vram;
    s->oamFlags = 0x400;
    s->graphics.size = 0;
    s->graphics.anim = 0x37E;
    s->variant = 5;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);
    vram += 0x100;

    s = &strc->s3[1];
    s->x = 0x2B;
    s->y = 0x55;
    s->graphics.dest = vram;
    s->oamFlags = 0x400;
    s->graphics.size = 0;
    s->graphics.anim = 0x37E;
    s->variant = 6;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);
    vram += 0x100;

    s = &strc->s3[2];
    s->x = 43;
    s->y = 109;
    s->graphics.dest = vram;
    s->oamFlags = 0x400;
    s->graphics.size = 0;
    s->graphics.anim = 0x37E;
    s->variant = 7;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);
    vram += 0x100;

    s = &strc->s6[0];
    s->x = 0x2B;
    s->y = 0x85;
    s->graphics.dest = vram;
    s->oamFlags = 0x400;
    s->graphics.size = 0;
    s->graphics.anim = 0x37E;
    s->variant = 8;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);
    vram += 0x100;

    s = &strc->s6[1];
    s->x = 0x4B;
    s->y = 0x35;
    s->graphics.dest = vram;
    s->oamFlags = 0x400;
    s->graphics.size = 0;
    s->graphics.anim = 0x359;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);
    vram += 0x80;

    s = &strc->s6[2];
    s->x = 0x67;
    s->y = 0x61;
    s->graphics.dest = vram;
    s->oamFlags = 0x400;
    s->graphics.size = 0;
    s->graphics.anim = 0x37E;
    s->variant = 4;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    gRepeatedKeys = 0;
    gPressedKeys = 0;
    gInput = 0;

    gBgCntRegs[2] = 0x1F05;
    gBgScrollRegs[2][0] = gBgScrollRegs[1][0];
    gBgScrollRegs[2][1] = gBgScrollRegs[1][1];
    strc->unk23E = gBgScrollRegs[1][0];
    strc->unk240 = gBgScrollRegs[1][1];
    strc->unk242 = gBgScrollRegs[1][0];
    strc->unk244 = gBgScrollRegs[1][1];

    gDispCnt |= 0x2400;
    gWinRegs[4] = 0x3D;
    gWinRegs[5] = 0x3B;
    gBldRegs.bldCnt = 0x3F46;

    gCurTask->main = sub_80196FC;
    sub_80196FC();
}
