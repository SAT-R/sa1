#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

/* Blocks that fall down after stepping on them, in X-Zone */

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u8 unk3C;
    /* 0x3D */ u8 unk3D;
    /* 0x3E */ u8 unk3E[NUM_SINGLEPLAYER_CHARS_MAX];
    /* 0x40 */ u16 unk40[NUM_SINGLEPLAYER_CHARS_MAX];
} IA107;

void Task_Interactable107(void);
void TaskDestructor_SmallFallBlock(struct Task *t);

void CreateEntity_Interactable107(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t;
    IA107 *ia;
    s32 i;

    t = TaskCreate(Task_Interactable107, sizeof(IA107), 0x2000, 0, NULL);

    ia = TASK_DATA(t);

    ia->base.regionX = regionX;
    ia->base.regionY = regionY;
    ia->base.me = me;
    ia->base.meX = me->x;
    ia->base.id = id;

    ia->unk3C = 0;
    ia->unk3D = me->d.sData[0];

    i = 0;
    do {
        ia->unk3E[i] = 0;
        ia->unk40[i] = 0;
    } while (++i < gNumSingleplayerCharacters);

    SET_MAP_ENTITY_INITIALIZED(me);
}
