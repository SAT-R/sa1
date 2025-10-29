#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/sa1_sa2_shared/globals.h"
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
void TaskDestructor_Chao(struct Task *t);

extern const u16 sChaoSpawnPositions[NUM_LEVEL_IDS_MP][SPAWN_INDEX_COUNT][2];

struct Task *CreateMultiplayerChao(u8 spawnIndex, u8 id)
{
    Chao *chao;
    Sprite *s;
    struct Task *t;
    s16 x, y;

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
    s->animSpeed = 0x10;
    s->palId = 0;
    return t;
}
