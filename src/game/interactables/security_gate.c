#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u8 unk3C;
    /* 0x3D */ u8 unk3D;
    /* 0x3D */ u16 unk3E;
} SecurityGate;

void Task_SecurityGateMain(void);
void TaskDestructor_SecurityGateMain(struct Task *t);

// (97.55%) https://decomp.me/scratch/12dTu
NONMATCH("asm/non_matching/game/interactables/CreateEntity_SecurityGate.inc",
         void CreateEntity_SecurityGate(MapEntity *me, u16 regionX, u16 regionY, u8 id))
{
    struct Task *t = TaskCreate(Task_SecurityGateMain, sizeof(SecurityGate), 0x2000, 0, TaskDestructor_SecurityGateMain);
    SecurityGate *gate = TASK_DATA(t);
    Sprite *s = &gate->s;

    gate->base.regionX = regionX;
    gate->base.regionY = regionY;
    gate->base.me = me;
    gate->base.meX = me->x;
    gate->base.id = id;

    gate->unk3C = 0;
    gate->unk3D = 0;

    if (me->d.sData[0] == 0) {
        gate->unk3E = me->d.uData[2] * TILE_WIDTH - 10;
    } else {
        gate->unk3E = -10;
    }

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_SECURITY_GATE);
    s->graphics.anim = SA1_ANIM_SECURITY_GATE;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    SPRITE_INIT_SCRIPT(s, 1.0);
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
}
END_NONMATCH
