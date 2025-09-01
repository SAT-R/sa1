#include "global.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/player.h"
#include "game/entity.h"
#include "game/enemies/bosses_shared.h"
#include "game/nuts_and_bolts_task.h"
#include "game/save.h"
#include "game/stage/player_controls.h"
#include "game/stage/rings_scatter.h"
#include "game/stage/screen_shake.h"
#include "game/stage/terrain_collision.h"
#include "game/water_effects.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/songs.h"
#include "game/stage/underwater_effects.h"

typedef struct MechaKnuckles {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ Hitbox reserved;
    /* 0x44 */ Sprite s2;
    /* 0x74 */ u8 filler74[0x28];
} MechaKnuckles; /* 0x9C */

typedef struct MechaKnucklesRocket {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ Hitbox reserved;
    /* 0x44 */ SpriteTransform transform;
} MechaKnucklesRocket; /* 0x50 */

typedef struct MechaKnucklesParts {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ Hitbox reserved;
    /* 0x44 */ u8 filler44[4];
    /* 0x48 */ SpriteTransform transform;
} MechaKnucklesParts; /* 0x54 */

void Task_MechaKnucklesInit(void);
void TaskDestructor_MechaKnuckles(struct Task *t);
void sub_804EC60(MechaKnuckles *boss, MapEntity *me);

// TODO: Fake-match
void CreateEntity_MechaKnuckles(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t;
    MechaKnuckles *boss;

    if (IS_MULTI_PLAYER) {
        SET_MAP_ENTITY_INITIALIZED(me);
        return;
    }

    t = TaskCreate(Task_MechaKnucklesInit, sizeof(MechaKnuckles), 0x2000, 0, TaskDestructor_MechaKnuckles);
    boss = TASK_DATA(t);

#ifndef NON_MATCHING
    {
        register s32 r8 asm("r8") = 0;
        asm("" ::"r"(r8));
        asm("" ::: "r2");
    }
#endif

    boss->base.regionX = regionX;
    boss->base.regionY = regionY;
    boss->base.me = me;
    boss->base.meX = me->x;
    boss->base.id = id;
    SET_MAP_ENTITY_INITIALIZED(me);

    sub_804EC60(boss, me);

    if (gRingsScatterTask != NULL) {
        RingsScatter *scatter = TASK_DATA(gRingsScatterTask);
        scatter->SA2_LABEL(unk2B6) |= 1;
    }
}