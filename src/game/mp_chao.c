#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/multiplayer/chao.h"
#include "game/multiplayer/mp_player.h"
#include "game/stage/terrain_collision.h"
#include "game/entity.h"

#include "constants/animations.h"
#include "constants/zones.h"

/* Chao that spawns in the Chao Hunt minigame */

#define SPAWN_INDEX_COUNT 8

typedef struct Chao {
    Sprite s;
    s32 unk30;
    s32 unk34;
    s16 unk38;
    s16 unk3A;
    s16 unk3C;
    u16 unk3E;
    u8 unk40;
    u8 unk41;
    u8 unk42;
} Chao;

void Task_802816C(void);
void Task_8028388(void);
void Task_8028518(void);
void Task_80286B0(void);
void sub_802888C(void);
void sub_8028910(void);
void Task_8028A1C(void);
bool32 sub_8028AAC(CamCoord x, CamCoord y);
void TaskDestructor_Chao(struct Task *t);

extern const u16 sChaoSpawnPositions[NUM_LEVEL_IDS_MP][SPAWN_INDEX_COUNT][2];

struct Task *CreateMultiplayerChao(u8 spawnIndex, u8 id)
{
    Chao *chao;
    Sprite *s;
    struct Task *t;
    CamCoord x, y;

#ifdef BUG_FIX
    spawnIndex %= ARRAY_COUNT(sChaoSpawnPositions[0]);
#endif

    t = TaskCreate(Task_802816C, sizeof(Chao), 0x2000U, 0U, TaskDestructor_Chao);
    chao = TASK_DATA(t);

    s = &chao->s;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    x = sChaoSpawnPositions[gCurrentLevel - NUM_LEVEL_IDS_SP][spawnIndex][0];
    if ((gCurrentLevel == ACT_CHAO_HUNT_D) && (spawnIndex > 4U)) {
        SPRITE_FLAG_SET(s, Y_FLIP);
        SPRITE_FLAG_SET_VALUE(s, PRIORITY, 2);
        y = sChaoSpawnPositions[gCurrentLevel - NUM_LEVEL_IDS_SP][spawnIndex][1] + 0x10;
    } else {
        y = sChaoSpawnPositions[gCurrentLevel - NUM_LEVEL_IDS_SP][spawnIndex][1] - 0x10;
    }
    chao->unk40 = id;
    chao->unk41 = -1;
    chao->unk42 = -1;
    chao->unk30 = Q(x);
    chao->unk34 = Q(y);
    chao->unk38 = 0;
    chao->unk3E = 0;
    s->x = I(chao->unk30) - gCamera.x;
    s->y = I(chao->unk34) - gCamera.y;
    s->graphics.dest = ALLOC_TILES(SA1_ANIM_CHAO_SITTING);
    s->oamFlags = SPRITE_OAM_ORDER(16 - id);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_CHAO_SITTING;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    return t;
}

void Task_802816C(void)
{
    Chao *chao = TASK_DATA(gCurTask);
    Sprite *s = &chao->s;

    s->graphics.anim = 0x2C0;
    s->variant = 0;
    UpdateSpriteAnimation(s);
    if (chao->unk41 != 0xFF) {
        chao->unk42 = chao->unk41;
        if (chao->unk40 == 0) {
            gCurTask->main = Task_8028388;
        } else if (chao->unk40 == 1) {
            gCurTask->main = Task_8028518;
        } else {
            gCurTask->main = Task_80286B0;
        }
    } else {
        u32 pid;
        for (pid = 0; pid < 4; pid++) {
            struct Task **mpTasks = gMultiplayerPlayerTasks;
            MultiplayerPlayer *mpp;
            if (mpTasks[pid] == NULL)
                break;

            mpp = TASK_DATA(gMultiplayerPlayerTasks[pid]);
            if (!(mpp->unk54 & 0x4)) {
                if (HB_COLLISION(I(chao->unk30), I(chao->unk34), s->hitboxes[0].b, mpp->pos.x, mpp->pos.y, mpp->s.hitboxes[0].b)) {
                    mpp->unk5C |= (0x10000 << chao->unk40);
                    chao->unk41 = pid;
                    chao->unk42 = pid;

                    if (chao->unk40 == 0) {
                        gCurTask->main = Task_8028388;
                    } else if (chao->unk40 == 1) {
                        gCurTask->main = Task_8028518;
                    } else {
                        gCurTask->main = Task_80286B0;
                    }

                    m4aSongNumStart(0xA3U);
                    break;
                }
            }
        }
    }

    s->x = I(chao->unk30) - gCamera.x;
    s->y = I(chao->unk34) - gCamera.y;
    DisplaySprite(s);
}

// TODO: Fake-match
void Task_8028388(void)
{
    s32 theta;
    MultiplayerPlayer *mpp;
    u16 worldX;
    u16 worldY;
    u32 angle;
    s32 valueY;
    s32 sinVal;

    Chao *chao = TASK_DATA(gCurTask);
    Sprite *sprChao;

    if (chao->unk41 != chao->unk42) {
        chao->unk42 = chao->unk41;
        sub_802888C();
        return;
    }
    chao->unk42 = chao->unk41;
    mpp = TASK_DATA(gMultiplayerPlayerTasks[chao->unk41]);
    sprChao = &chao->s;
    angle = gStageTime * 0x10;
    chao->unk3E = angle;
    if (mpp->s.frameFlags & 0x800) {
#ifndef NON_MATCHING
        register u32 r0 asm("r0");
        register u32 mask asm("r3");
#else
        u32 r0;
        u32 mask;
#endif
        sprChao->frameFlags |= 0x800;
        worldY = mpp->pos.y + 28;
        theta = (angle + 0x200);
        mask = 0x3FF;

#ifndef NON_MATCHING
        asm("mov %0, %1" : "=r"(r0) : "r"(mask));
#else
        r0 = mask;
#endif
        theta &= r0;
    } else {
        sprChao->frameFlags &= ~0x800;
        worldY = mpp->pos.y - 28;
        theta = angle & 0x3FF;
    }

    if (mpp->s.frameFlags & 0x400) {
        worldX = mpp->pos.x - 20;
    } else {
        worldX = mpp->pos.x + 20;
    }

    if ((s16)worldX == ((s32)chao->unk30 >> 8)) {
        s32 charAnim = (mpp->s.graphics.anim - (s16)gPlayerCharacterIdleAnims[gMultiplayerCharacters[mpp->unk56]]);
        if (charAnim == SA1_CHAR_ANIM_1) {
            sprChao->graphics.anim = SA1_ANIM_CHAO_TURN;
            sprChao->variant = 0;
        } else {
            sprChao->graphics.anim = SA1_ANIM_CHAO_FACE_DIAGONAL_R;
            sprChao->variant = 0;
        }
    } else {
        sprChao->graphics.anim = 0x2BB;
        sprChao->variant = 0;
    }
    sub_8028AAC(worldX, worldY);
    sprChao->x = I(chao->unk30) - gCamera.x;
    sprChao->y = (I(chao->unk34) - ((sinVal = SIN(theta)) >> 11)) - gCamera.y;
    UpdateSpriteAnimation(sprChao);
    DisplaySprite(sprChao);
}

void Task_8028518()
{
    s32 theta;
    MultiplayerPlayer *mpp;
    CamCoord worldX, worldY;
    u32 angle;
    s32 valueY;
    s32 sinVal;

    Chao *chao = TASK_DATA(gCurTask);
    Sprite *sprChao;

    if (chao->unk41 != chao->unk42) {
        chao->unk42 = chao->unk41;
        sub_802888C();
        return;
    }
    chao->unk42 = chao->unk41;
    mpp = TASK_DATA(gMultiplayerPlayerTasks[chao->unk41]);
    sprChao = &chao->s;
    if (mpp->s.frameFlags & 0x800) {
        sprChao->frameFlags |= 0x800;
        worldY = mpp->pos.y + mpp->s.hitboxes[0].b.bottom + 16;
        theta = chao->unk3E & (SIN_PERIOD - 1);
    } else {
        sprChao->frameFlags &= ~0x800;
        worldY = mpp->pos.y + mpp->s.hitboxes[0].b.top - 16;
        theta = chao->unk3E & (SIN_PERIOD - 1);
    }

    worldX = mpp->pos.x;

    if (mpp->pos.x == ((s32)chao->unk30 >> 8)) {
        s32 charAnim = (mpp->s.graphics.anim - (s16)gPlayerCharacterIdleAnims[gMultiplayerCharacters[mpp->unk56]]);
        if (charAnim == SA1_CHAR_ANIM_1) {
            sprChao->graphics.anim = SA1_ANIM_CHAO_TURN;
            sprChao->variant = 0;
        } else {
            sprChao->graphics.anim = SA1_ANIM_CHAO_FACE_DIAGONAL_R;
            sprChao->variant = 0;
        }
    } else {
        sprChao->graphics.anim = 0x2BB;
        sprChao->variant = 0;
    }

    if (sub_8028AAC(worldX, worldY)) {
        sprChao->graphics.anim = SA1_ANIM_CHAO_SITTING;
        sprChao->variant = 0;
        sprChao->x = I(chao->unk30) - gCamera.x;
        sprChao->y = I(chao->unk34) - gCamera.y;
    } else {
        sprChao->x = I(chao->unk30) - gCamera.x;
        sprChao->y = (I(chao->unk34) - ((sinVal = SIN(theta)) >> 11)) - gCamera.y;
    }
    UpdateSpriteAnimation(sprChao);
    DisplaySprite(sprChao);
}

void Task_80286B0()
{
    s32 theta;
    struct Task *chaoTask;
    Chao *chaoZero;
    MultiplayerPlayer *mpp;
    u16 worldX;
    u16 worldY;
    u32 angle;
    s32 valueY;
    s32 sinVal;

    Chao *chao = TASK_DATA(gCurTask);
    Sprite *sprChao;

    if (chao->unk41 != chao->unk42) {
        chao->unk42 = chao->unk41;
        sub_802888C();
        return;
    }
    chao->unk42 = chao->unk41;
    mpp = TASK_DATA(gMultiplayerPlayerTasks[chao->unk41]);
    sprChao = &chao->s;
    angle = gStageTime * 0x10;
    chao->unk3E = angle;
    if (mpp->s.frameFlags & 0x800) {
#ifndef NON_MATCHING
        register u32 r0 asm("r0");
        register u32 mask asm("r3");
#else
        u32 r0;
        u32 mask;
#endif
        sprChao->frameFlags |= 0x800;
        worldY = mpp->pos.y + 16;
        theta = (angle + 0x200);
        mask = 0x3FF;

#ifndef NON_MATCHING
        asm("mov %0, %1" : "=r"(r0) : "r"(mask));
#else
        r0 = mask;
#endif
        theta &= r0;
    } else {
        sprChao->frameFlags &= 0xFFFFF7FF;
        worldY = mpp->pos.y - 16;
        theta = angle & 0x3FF;
    }

    if (mpp->s.frameFlags & 0x400) {
        worldX = mpp->pos.x - 20;
    } else {
        worldX = mpp->pos.x + 20;
    }

    if ((s16)worldX == ((s32)chao->unk30 >> 8)) {
        s32 charAnim = (mpp->s.graphics.anim - (s16)gPlayerCharacterIdleAnims[gMultiplayerCharacters[mpp->unk56]]);
        if (charAnim == SA1_CHAR_ANIM_1) {
            sprChao->graphics.anim = SA1_ANIM_CHAO_TURN;
            sprChao->variant = 0;
        } else {
            sprChao->graphics.anim = SA1_ANIM_CHAO_FACE_DIAGONAL_R;
            sprChao->variant = 0;
        }
    } else {
        sprChao->graphics.anim = 0x2BB;
        sprChao->variant = 0;
    }

    chaoZero = TASK_DATA(gChaoTasks[0]);

    if (sub_8028AAC(worldX, worldY) && (chaoZero->unk41 == chao->unk41)) {
        sprChao->graphics.anim = SA1_ANIM_CHAO_SITTING;
        sprChao->variant = 0;
        sprChao->x = I(chao->unk30) - gCamera.x;
        sprChao->y = (I(chao->unk34) - ((sinVal = SIN(theta)) >> 11)) - gCamera.y;
    } else {
        sprChao->x = I(chao->unk30) - gCamera.x;
        sprChao->y = (I(chao->unk34) - ((sinVal = SIN(theta)) >> 11)) - gCamera.y;
    }
    UpdateSpriteAnimation(sprChao);
    DisplaySprite(sprChao);
}

void sub_802888C()
{
    Chao *chao = TASK_DATA(gCurTask);
    Sprite *s = &chao->s;
    MultiplayerPlayer *mpp = TASK_DATA(gMultiplayerPlayerTasks[chao->unk41]);

    if (chao->s.frameFlags & 0x400) {
        chao->unk3A = -Q(1.5);
    } else {
        chao->unk3A = +Q(1.5);
    }

    if (mpp->s.frameFlags & 0x800) {
        chao->unk3C = +Q(3.0);
    } else {
        chao->unk3C = -Q(3.0);
    }

    s->graphics.anim = 0x2BA;
    s->variant = 0;
    gCurTask->main = sub_8028910;
}

void sub_8028910()
{
    s32 res;

    Chao *chao = TASK_DATA(gCurTask);
    Sprite *s = &chao->s;
    MultiplayerPlayer *mpp = TASK_DATA(gMultiplayerPlayerTasks[chao->unk41]);

    if (mpp->s.frameFlags & 0x800) {
        chao->unk3C -= 0x28;
    } else {
        chao->unk3C += 0x28;
    }
    chao->unk30 += chao->unk3A;
    chao->unk34 += chao->unk3C;

    if (mpp->s.frameFlags & 0x800) {
        res = SA2_LABEL(sub_801F100)(I(chao->unk34), I(chao->unk30), (mpp->unk54 >> 7) % 2u, -8, SA2_LABEL(sub_801EC3C));
        if (res < 0) {
            chao->unk34 -= Q(res);
            s->graphics.anim = SA1_ANIM_CHAO_SHOCKED;
            s->variant = 2;
            gCurTask->main = Task_8028A1C;
        }
    } else {
        res = SA2_LABEL(sub_801F100)(I(chao->unk34), I(chao->unk30), (mpp->unk54 >> 7) % 2u, +8, SA2_LABEL(sub_801EC3C));
        if (res < 0) {
            chao->unk34 += Q(res);
            s->graphics.anim = SA1_ANIM_CHAO_SHOCKED;
            s->variant = 2;
            gCurTask->main = Task_8028A1C;
        }
    }
    s->x = I(chao->unk30) - gCamera.x;
    s->y = I(chao->unk34) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8028A1C()
{
    Chao *chao = TASK_DATA(gCurTask);
    Sprite *s = &chao->s;

    chao->s.x = I(chao->unk30) - gCamera.x;
    chao->s.y = I(chao->unk34) - gCamera.y;

    if (UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
        if (chao->unk41 != 0xFF) {
            if (chao->unk40 == 0) {
                gCurTask->main = Task_8028388;
            } else if (chao->unk40 == 1) {
                gCurTask->main = Task_8028518;
            } else {
                gCurTask->main = Task_80286B0;
            }
        } else {
            gCurTask->main = Task_802816C;
        }
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}
