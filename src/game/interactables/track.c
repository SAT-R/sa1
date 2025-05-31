#include "global.h"
#include "core.h"
#include "flags.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/dust_cloud.h"
#include "game/sa1_sa2_shared/entities_manager.h"
#include "game/multiplayer/mp_player.h"
#include "game/multiplayer/multiplayer_event_mgr.h"
#include "game/stage/player.h"
#include "game/stage/player_controls.h"
#include "game/stage/terrain_collision.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/interactables.h"
#include "constants/songs.h"
#include "constants/vram_hardcoded.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u8 unk3C;
    /* 0x3D */ u8 unk3D;
    /* 0x3E */ u8 unk3E;
    /* 0x3F */ u8 unk3F;
    /* 0x40 */ u8 unk40;
    /* 0x44 */ s32 unk44;
    /* 0x44 */ s32 unk48;
    /* 0x44 */ s32 unk4C;
    /* 0x44 */ s32 unk50;
    /* 0x44 */ s32 unk54;
    /* 0x44 */ s32 unk58;
    /* 0x44 */ s32 unk5C;
    /* 0x44 */ s32 unk60;
    /* 0x44 */ s32 unk64;
    /* 0x44 */ s32 unk68;
    /* 0x44 */ u8 unk6C;
} Track;

void Task_Track(void);

void CreateEntity_Track(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Track, sizeof(Track), me->d.uData[3] | 0x2000, 0, NULL);
    Track *track = TASK_DATA(t);

    track->base.regionX = regionX;
    track->base.regionY = regionY;
    track->base.me = me;
    track->base.meX = me->x;
    track->base.id = id;

    track->unk3E = me->d.uData[2];
    track->unk3F = 0;
    track->unk44 = 0;
    track->unk4C = 0;
    track->unk5C = 0;
    track->unk64 = 0;
    track->unk40 = 0;
    track->unk48 = 0;
    track->unk50 = 0;
    track->unk60 = 0;
    track->unk68 = 0;

    track->unk54 = me->d.sData[0] * TILE_WIDTH;
    track->unk58 = me->d.sData[1] * TILE_WIDTH;

    track->unk6C = 0;
    track->unk3C = me->d.uData[3];
    track->unk3D = me->d.uData[3];

    SET_MAP_ENTITY_INITIALIZED(me);
}