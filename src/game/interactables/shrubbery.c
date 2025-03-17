#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"
#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    /* 0x00 */ u8 filler0[0x0C];
    /* 0x0C */ Sprite s;
    /* 0x3C */ u8 unk3C;
    /* 0x40 */ s32 unk40;
    /* 0x44 */ s32 unk44;
    /* 0x48 */ u16 unk48;
    /* 0x4C */ s32 worldX;
    /* 0x50 */ s32 worldY;
} ShrubberyParticles; /* 0x54 */

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u8 unk3C;
} Shrubbery; /* 0x40 */

void Task_ShrubberyMain(void);
void Task_ShrubberyParticles(void);
void TaskDestructor_ShrubberyParticles(struct Task *t);

void CreateShrubberyParticles(CamCoord worldX, CamCoord worldY)
{
    struct Task *t = TaskCreate(Task_ShrubberyParticles, sizeof(ShrubberyParticles), 0x3000, 0, TaskDestructor_ShrubberyParticles);
    ShrubberyParticles *parts = TASK_DATA(t);
    Sprite *s = &parts->s;

    parts->unk40 = worldX * 4;
    parts->unk48 = 0;
    parts->unk44 = 1;
    parts->unk3C = 52;
    parts->worldX = worldX;
    parts->worldY = worldY;

    // NOTE: Initializing sprite pos to world pos
    s->x = worldX;
    s->y = worldY;

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_SHRUBBERY);
    s->oamFlags = SPRITE_OAM_ORDER(0);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_SHRUBBERY;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
}

void Task_ShrubberyParticles(void)
{
    ShrubberyParticles *parts = TASK_DATA(gCurTask);
    Sprite *s = &parts->s;

    s->x = parts->worldX - gCamera.x;
    s->y = parts->worldY - gCamera.y;

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        TaskDestroy(gCurTask);
        return;
    }

    if (--parts->unk3C == 0) {
        TaskDestroy(gCurTask);
        return;
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void CreateEntity_Shrubbery(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_ShrubberyMain, sizeof(Shrubbery), 0x2000, 0, NULL);
    Shrubbery *shrubbery = TASK_DATA(t);

    // NOTE: This entity itself actually doesn't make use of any Sprites, only ShrubberyParticles does
    Sprite *s = &shrubbery->s;

    shrubbery->base.regionX = regionX;
    shrubbery->base.regionY = regionY;
    shrubbery->base.me = me;
    shrubbery->base.meX = me->x;
    shrubbery->base.id = id;
    shrubbery->unk3C = 0;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void TaskDestructor_ShrubberyParticles(struct Task *t)
{
    ShrubberyParticles *parts = TASK_DATA(t);
    VramFree(parts->s.graphics.dest);
}