#include "global.h"
#include "core.h"
#include "trig.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/multiplayer/multiplayer_event_mgr.h"
#include "game/stage/player.h"
#include "game/water_effects.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"

#include "constants/animations.h"
#include "constants/char_states.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/vram_hardcoded.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ s32 unk3C;
    /* 0x40 */ s32 unk40;
    /* 0x44 */ s32 qUnk44;
    /* 0x48 */ s32 qUnk48;
    /* 0x4C */ u16 unk4C;
    /* 0x4E */ u8 unk4E;
    /* 0x4F */ u8 unk4F;
    /* 0x50 */ u8 facingUp;
} PlatformSpiked;

void Task_Platform_Spiked(void);
void TaskDestructor_Platform_Spiked(struct Task *t);

void CreateEntity_Platform_Spiked(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Platform_Spiked, sizeof(PlatformSpiked), 0x2000, 0, TaskDestructor_Platform_Spiked);
    PlatformSpiked *platform = TASK_DATA(t);
    Sprite *s = &platform->s;

    platform->base.regionX = regionX;
    platform->base.regionY = regionY;
    platform->base.me = me;
    platform->base.meX = me->x;
    platform->base.id = id;

    platform->unk3C = 0;
    platform->unk40 = 0;
    platform->unk4F = 0;
    platform->unk4E = 0;

    if (me->d.uData[2] > me->d.uData[3]) {
        if (me->d.sData[0] >= 0) {
            platform->qUnk44 = 4;
            platform->unk4C = 0;
            platform->qUnk48 = 0;
        } else {
            platform->qUnk44 = 4;
            platform->unk4C = 0x80;
            platform->qUnk48 = 0;
        }
    } else {
        if (me->d.sData[1] >= 0) {
            platform->qUnk44 = 0;
            platform->qUnk48 = 4;
            platform->unk4C = 0;
        } else {
            platform->qUnk44 = 0;
            platform->qUnk48 = 4;
            platform->unk4C = 0x80;
        }
    }

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);
    SET_MAP_ENTITY_INITIALIZED(me);

    if ((LEVEL_TO_ZONE(gCurrentLevel) == ZONE_3) || (gCurrentLevel == ACT_CHAO_HUNT_C)) {
        s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_SPIKED_3);
        s->graphics.anim = SA1_ANIM_PLATFORM_SPIKED_3;
        s->variant = 0;
        platform->facingUp = 1;
    } else {
        if (me->d.sData[0] == 0) {
            s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_SPIKED_5_UP);
            s->graphics.anim = SA1_ANIM_PLATFORM_SPIKED_5_UP;
            s->variant = 0;
            platform->facingUp = 1;
        } else {
            s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_SPIKED_5_DOWN);
            s->graphics.anim = SA1_ANIM_PLATFORM_SPIKED_5_DOWN;
            s->variant = 0;
            platform->facingUp = 0;
        }
    }

    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = FALSE;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    UpdateSpriteAnimation(s);
}