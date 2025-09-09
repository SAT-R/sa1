#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/enemies/bosses_shared.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/stage/terrain_collision.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"
#include "constants/vram_hardcoded.h"
#include "constants/zones.h"

typedef struct BossCapsule {
    /* 0x00 */ Sprite s;
    /* 0x30 */ Sprite s2;
    /* 0x60 */ SpriteTransform transform;
    /* 0x6C */ CamCoord worldX;
    /* 0x6E */ CamCoord worldY;
    /* 0x70 */ s16 offsetX;
    /* 0x72 */ s16 offsetY;
    /* 0x74 */ u16 unk74;
} BossCapsule;

void Task_BossCapsuleInit(void);
void TaskDestructor_BossCapsule(struct Task *t);

void CreateBossCapsule(CamCoord worldX, CamCoord worldY)
{
    struct Task *t;
    BossCapsule *capsule;
    Sprite *s;
    SpriteTransform *tf;

    t = TaskCreate(Task_BossCapsuleInit, sizeof(BossCapsule), 0x2000U, 0U, TaskDestructor_BossCapsule);
    capsule = TASK_DATA(t);

    capsule->worldX = worldX;
    capsule->worldY = worldY;
    capsule->offsetX = 0;
    capsule->offsetY = 0;
    capsule->unk74 = 0x800;

    s = &capsule->s;
    s->x = worldX;
    s->y = worldY;
    s->graphics.dest = ALLOC_TILES(SA1_ANIM_BOSS_CAPSULE_LARGE);
    s->oamFlags = SPRITE_OAM_ORDER(19);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_BOSS_CAPSULE_SMALL;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2030;

    s = &capsule->s2;
    s->x = worldX;
    s->y = worldY;
    s->graphics.dest = ALLOC_TILES(SA1_ANIM_BOSS_CAPSULE_SWITCH);
    s->oamFlags = SPRITE_OAM_ORDER(20);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_BOSS_CAPSULE_SWITCH;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;

    tf = &capsule->transform;
    tf->rotation = 0;
    tf->qScaleX = Q(0.25);
    tf->qScaleY = Q(0.25);
}
