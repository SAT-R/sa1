#include "global.h"
#include "core.h"
#include "flags.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/multiplayer/mp_player.h"
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
    /* 0x3C */ u32 movestateBuffer[NUM_SINGLEPLAYER_CHARS_MAX];
} Spikes;

void Task_Spikes_Up(void);
void Task_Spikes_Down(void);

bool32 sub_8020D44(Sprite *s, MapEntity *me, Spikes *spikes, Player *p);
bool32 sub_8020E98(Sprite *s, MapEntity *me, Spikes *spikes, Player *p);

void CreateEntity_Spikes_Up(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Spikes_Up, sizeof(Spikes), 0x2000, 0, NULL);
    Spikes *spikes = TASK_DATA(t);
    Sprite *s = &spikes->s;
    CamCoord worldX, worldY;

    spikes->movestateBuffer[PLAYER_2] = 0;
    spikes->movestateBuffer[PLAYER_1] = 0;

    spikes->base.regionX = regionX;
    spikes->base.regionY = regionY;
    spikes->base.me = me;
    spikes->base.meX = me->x;
    spikes->base.id = id;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = VRAM_RESERVED_SPIKES;
    s->oamFlags = SPRITE_OAM_ORDER(17);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_SPIKES;
    s->variant = 2;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    UpdateSpriteAnimation(s);
}

void CreateEntity_Spikes_Down(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Spikes_Down, sizeof(Spikes), 0x2000, 0, NULL);
    Spikes *spikes = TASK_DATA(t);
    Sprite *s = &spikes->s;
    CamCoord worldX, worldY;

    spikes->movestateBuffer[PLAYER_2] = 0;
    spikes->movestateBuffer[PLAYER_1] = 0;

    spikes->base.regionX = regionX;
    spikes->base.regionY = regionY;
    spikes->base.me = me;
    spikes->base.meX = me->x;
    spikes->base.id = id;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = VRAM_RESERVED_SPIKES;
    s->oamFlags = SPRITE_OAM_ORDER(17);
#ifdef BUG_FIX
    // TODO: I'm confused.
    //       The Up-Spikes set this, but not the Down-Spikes?
    s->graphics.size = 0;
#endif
    s->graphics.anim = SA1_ANIM_SPIKES;
    s->variant = 2;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2) | SPRITE_FLAG(Y_FLIP, 1);
    UpdateSpriteAnimation(s);
}

void Task_Spikes_Up(void)
{
    Spikes *spikes = TASK_DATA(gCurTask);
    Sprite *s = &spikes->s;
    MapEntity *me = spikes->base.me;
    CamCoord worldX, worldY;
    s32 i, j;

    worldX = TO_WORLD_POS(spikes->base.meX, spikes->base.regionX);
    worldY = TO_WORLD_POS(me->y, spikes->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if ((gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) || (me->d.sData[0] != 0) || (SA2_LABEL(gUnknown_030053E0) != 0)) {
        i = 0;
        do {
            // This if-else is the only diff between Up/Down
            if (!GRAVITY_IS_INVERTED) {
                sub_8020D44(s, me, spikes, GET_SP_PLAYER_V1(i));
            } else {
                sub_8020E98(s, me, spikes, GET_SP_PLAYER_V1(i));
            }
        } while (++i < gNumSingleplayerCharacters);
    }

    if ((gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) && (me->d.sData[0] == 0) && (SA2_LABEL(gUnknown_030053E0) == 0)) {
        j = 0;
        do {
            if (spikes->movestateBuffer[j] & 0x20) {
                GET_SP_PLAYER_MEMBER_V1(j, moveState) &= ~MOVESTATE_20;
            }

            if (spikes->movestateBuffer[j] & 0x8) {
                GET_SP_PLAYER_MEMBER_V1(j, moveState) &= ~MOVESTATE_STOOD_ON_OBJ;
            }
        } while (++j < gNumSingleplayerCharacters);
    }

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spikes->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    if ((gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) || (me->d.sData[0] != 0) || (SA2_LABEL(gUnknown_030053E0) != 0)) {
        DisplaySprite(s);
    }
}

void Task_Spikes_Down(void)
{
    Spikes *spikes = TASK_DATA(gCurTask);
    Sprite *s = &spikes->s;
    MapEntity *me = spikes->base.me;
    CamCoord worldX, worldY;
    s32 i, j;

    worldX = TO_WORLD_POS(spikes->base.meX, spikes->base.regionX);
    worldY = TO_WORLD_POS(me->y, spikes->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if ((gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) || (me->d.sData[0] != 0) || (SA2_LABEL(gUnknown_030053E0) != 0)) {
        i = 0;
        do {
            // This if-else is the only diff between Up/Down
            if (!GRAVITY_IS_INVERTED) {
                sub_8020E98(s, me, spikes, GET_SP_PLAYER_V1(i));
            } else {
                sub_8020D44(s, me, spikes, GET_SP_PLAYER_V1(i));
            }
        } while (++i < gNumSingleplayerCharacters);
    }

    if ((gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) && (me->d.sData[0] == 0) && (SA2_LABEL(gUnknown_030053E0) == 0)) {
        j = 0;
        do {
            if (spikes->movestateBuffer[j] & MOVESTATE_20) {
                GET_SP_PLAYER_MEMBER_V1(j, moveState) &= ~MOVESTATE_20;
            }

            if (spikes->movestateBuffer[j] & MOVESTATE_STOOD_ON_OBJ) {
                GET_SP_PLAYER_MEMBER_V1(j, moveState) &= ~MOVESTATE_STOOD_ON_OBJ;
            }
        } while (++j < gNumSingleplayerCharacters);
    }

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spikes->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    if ((gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) || (me->d.sData[0] != 0) || (SA2_LABEL(gUnknown_030053E0) != 0)) {
        DisplaySprite(s);
    }
}