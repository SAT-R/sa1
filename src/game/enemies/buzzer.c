#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/entities_manager.h"
#include "game/stage/terrain_collision.h"
#include "game/save.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/zones.h"

typedef struct {
    EntityShared shared;
    s32 qUnk3C;
    u8 unk40;
    u8 unk41;
    s16 qUnk42;
    s16 qUnk44;
} Buzzer;

void Task_BuzzerInit(void);

void CreateEntity_Buzzer(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    if (LEVEL_TO_ZONE(gCurrentLevel) != ZONE_1 || LOADED_SAVE->difficultyLevel == DIFFICULTY_NORMAL) {
        struct Task *t = TaskCreate(Task_BuzzerInit, sizeof(Buzzer), 0x2000, 0, TaskDestructor_EntityShared);
        Buzzer *buzzer = TASK_DATA(t);
        Sprite *s = &buzzer->shared.s;

        buzzer->shared.base.regionX = regionX;
        buzzer->shared.base.regionY = regionY;
        buzzer->shared.base.me = me;
        buzzer->shared.base.meX = me->x;
        buzzer->shared.base.id = id;

        buzzer->unk40 = 0;
        buzzer->unk41 = 0;
        buzzer->qUnk42 = -Q(1);
        buzzer->qUnk3C = Q(0);
        buzzer->unk40 = 0;

        // NOTE: x|y set to world- not screen-pos!
        s->x = TO_WORLD_POS(me->x, regionX);
        s->y = TO_WORLD_POS(me->y, regionY);

        SET_MAP_ENTITY_INITIALIZED(me);

        s->graphics.dest = ALLOC_TILES(SA1_ANIM_BUZZER);
        s->oamFlags = SPRITE_OAM_ORDER(18);
        s->graphics.size = 0;
        s->graphics.anim = SA1_ANIM_BUZZER;
        s->variant = 0;
        s->animCursor = 0;
        s->qAnimDelay = Q(0);
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
        s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

        if (I(gPlayer.qWorldX) >= TO_WORLD_POS(buzzer->shared.base.meX, buzzer->shared.base.regionX)) {
            buzzer->qUnk42 = Q(1);
            SPRITE_FLAG_SET(s, X_FLIP);
        }

        UpdateSpriteAnimation(s);
    }
}
