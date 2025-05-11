#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/entities_manager.h"
#include "game/stage/terrain_collision.h"
#include "game/save.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/vram_hardcoded.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ SpriteBase base2;
    /* 0x48 */ Sprite s2;
    /* 0x78 */ s16 qUnk78;
    /* 0x7A */ s16 qUnk7A;
    /* 0x7C */ s16 qUnk7C;
    /* 0x7E */ s16 qUnk7E;
    /* 0x80 */ s16 unk80;
} Yukimaru;

void Task_YukimaruGroundInit(void);
void TaskDestructor_YukimaruGround(struct Task *t);

void CreateEntity_Yukimaru(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_YukimaruGroundInit, sizeof(Yukimaru), 0x2000, 0, TaskDestructor_YukimaruGround);
    Yukimaru *yukimaru = TASK_DATA(t);
    Sprite *s = &yukimaru->s;

    yukimaru->base.regionX = regionX;
    yukimaru->base.regionY = regionY;
    yukimaru->base.me = me;
    yukimaru->base.meX = me->x;
    yukimaru->base.id = id;

    yukimaru->qUnk78 = -Q(0.625);
    yukimaru->qUnk7A = +Q(0);
    yukimaru->qUnk7C = +Q(0);
    yukimaru->qUnk7E = +Q(0);
    yukimaru->unk80 = +Q(0);

    // NOTE: x|y set to world- not screen-pos!
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_YUKIMARU);
    s->oamFlags = SPRITE_OAM_ORDER(0);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_YUKIMARU;
    s->variant = 1;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    UpdateSpriteAnimation(s);

    s = &yukimaru->s2;
    yukimaru->base2.regionX = regionX;
    yukimaru->base2.regionY = regionY;
    yukimaru->base2.me = me;
    yukimaru->base2.meX = me->x;
    yukimaru->base2.id = id;

    yukimaru->qUnk78 = -Q(0.625);
    yukimaru->qUnk7A = +Q(0);
    yukimaru->qUnk7C = +Q(0);
    yukimaru->qUnk7E = +Q(0);

    // NOTE: x|y set to world- not screen-pos!
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_YUKIMARU);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_YUKIMARU;
    s->variant = 1;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    UpdateSpriteAnimation(s);
}