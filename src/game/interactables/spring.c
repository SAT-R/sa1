#include "global.h"
#include "core.h"
#include "flags.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/stage/player.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/stage/player_controls.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/interactables.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
} SpringA;

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u8 filler3C[8];
} SpringB;

void Task_Spring_Normal_Up(void);
void Task_8021BC0(void);
void Task_8021E70(void);
void Task_Spring_Normal_Down(void);
void Task_Spring_Horizontal(void);
void Task_Spring_Big_Up(void);
void Task_80220FC(void);
void Task_8022354(void);
void Task_Spring_Small_Up(void);
void Task_8022594(void);
void TaskDestructor_Spring(struct Task *t);

bool32 sub_8022640(Sprite *s, MapEntity *me, SpringA *spring, Player *p);
bool32 sub_8022804(Sprite *s, MapEntity *me, SpringA *spring, Player *p);
bool32 sub_80228D0(Sprite *s, MapEntity *me, SpringA *spring, Player *p);
bool32 sub_8022AB4(Sprite *s, MapEntity *me, SpringB *spring, Player *p);
bool32 sub_8022E14(Sprite *s, MapEntity *me, SpringB *spring, Player *p);

void CreateEntity_Spring_Normal_Up(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Spring_Normal_Up, sizeof(SpringA), 0x2000, 0, TaskDestructor_Spring);
    SpringA *spring = TASK_DATA(t);
    Sprite *s = &spring->s;

    spring->base.regionX = regionX;
    spring->base.regionY = regionY;
    spring->base.me = me;
    spring->base.meX = me->x;
    spring->base.id = id;

    // NOTE: Initializing sprite pos to world pos
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_SPRING);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_SPRING;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    if (!(me->d.sData[0] & 0x2)) {
        DmaCopy32(3, &gRefSpriteTables->palettes[288 * sizeof(u16)], &gObjPalette[8 * 16], 16 * sizeof(u16));
        gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
        s->frameFlags = (SPRITE_FLAG(PRIORITY, 2) | SPRITE_FLAG(18, 1));
        s->palId = 1;
    } else {
        s->frameFlags = (SPRITE_FLAG(PRIORITY, 2) | SPRITE_FLAG(18, 0));
    }

    UpdateSpriteAnimation(s);
}

void Task_Spring_Normal_Up(void)
{
    SpringA *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    MapEntity *me = spring->base.me;
    s32 i;
    struct Task **t;
    TaskMain func;

    i = 0;
    t = &gCurTask;
    func = Task_8021BC0;
    do {
        bool32 res;

        if (!GRAVITY_IS_INVERTED) {
            res = sub_8022640(s, me, spring, GET_SP_PLAYER_V1(i));
        } else {
            res = sub_8022804(s, me, spring, GET_SP_PLAYER_V1(i));
        }

        if (res) {
            (*t)->main = func;
        }
    } while (++i < gNumSingleplayerCharacters);

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spring->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    DisplaySprite(s);
}

void Task_8021BC0(void)
{
    SpringA *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    MapEntity *me = spring->base.me;
    s32 i;

    i = 0;
    do {
        bool32 res;

        if (!GRAVITY_IS_INVERTED) {
            res = sub_8022640(s, me, spring, GET_SP_PLAYER_V1(i));
        } else {
            res = sub_8022804(s, me, spring, GET_SP_PLAYER_V1(i));
        }
    } while (++i < gNumSingleplayerCharacters);

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spring->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    if (UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
        s->variant = 0;
        UpdateSpriteAnimation(s);

        gCurTask->main = Task_Spring_Normal_Up;
    }
    DisplaySprite(s);
}

void CreateEntity_Spring_Normal_Down(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Spring_Normal_Down, sizeof(SpringA), 0x2000, 0, TaskDestructor_Spring);
    SpringA *spring = TASK_DATA(t);
    Sprite *s = &spring->s;

    spring->base.regionX = regionX;
    spring->base.regionY = regionY;
    spring->base.me = me;
    spring->base.meX = me->x;
    spring->base.id = id;

    // NOTE: Initializing sprite pos to world pos
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_SPRING);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_SPRING;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    s->frameFlags = (SPRITE_FLAG(PRIORITY, 2) | SPRITE_FLAG(Y_FLIP, 1));

    UpdateSpriteAnimation(s);
}

void Task_Spring_Normal_Down(void)
{
    SpringA *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    MapEntity *me = spring->base.me;
    s32 i;
    struct Task **t;
    TaskMain func;

    i = 0;
    t = &gCurTask;
    func = Task_8021E70;
    do {
        bool32 res;

        if (!GRAVITY_IS_INVERTED) {
            res = sub_8022804(s, me, spring, GET_SP_PLAYER_V1(i));
        } else {
            res = sub_8022640(s, me, spring, GET_SP_PLAYER_V1(i));
        }

        if (res) {
            (*t)->main = func;
        }
    } while (++i < gNumSingleplayerCharacters);

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spring->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    DisplaySprite(s);
}

void Task_8021E70(void)
{
    SpringA *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    MapEntity *me = spring->base.me;
    s32 i;

    i = 0;
    do {
        bool32 res;

        if (!GRAVITY_IS_INVERTED) {
            res = sub_8022804(s, me, spring, GET_SP_PLAYER_V1(i));
        } else {
            res = sub_8022640(s, me, spring, GET_SP_PLAYER_V1(i));
        }
    } while (++i < gNumSingleplayerCharacters);

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spring->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    if (UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
        s->variant = 0;
        UpdateSpriteAnimation(s);

        gCurTask->main = Task_Spring_Normal_Down;
    }
    DisplaySprite(s);
}

// NOTE: IA_010 = Left, IA_011 = Right
void CreateEntity_Spring_Horizontal(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Spring_Horizontal, sizeof(SpringA), 0x2000, 0, TaskDestructor_Spring);
    SpringA *spring = TASK_DATA(t);
    Sprite *s = &spring->s;

    spring->base.regionX = regionX;
    spring->base.regionY = regionY;
    spring->base.me = me;
    spring->base.meX = me->x;
    spring->base.id = id;

    // NOTE: Initializing sprite pos to world pos
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_SPRING);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_SPRING;
    s->variant = 2;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = (SPRITE_FLAG(PRIORITY, 2) | SPRITE_FLAG(18, 0));

    if (gGameMode == 6) {
        // IA__SPRING__LEFT - Multiplayer_Ver
        if (me->index == 8) {
            s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
            s->frameFlags |= SPRITE_FLAG(X_FLIP, 1);
        }
    } else {
        if (me->index == IA__SPRING__LEFT) {
            s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
            s->frameFlags |= SPRITE_FLAG(X_FLIP, 1);
        }
    }

    UpdateSpriteAnimation(s);
}

void Task_Spring_Horizontal(void)
{
    SpringA *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    MapEntity *me = spring->base.me;
    s32 i;

    i = 0;
    do {
        bool32 res;

        res = sub_80228D0(s, me, spring, GET_SP_PLAYER_V1(i));

        if (res) {
            gCurTask->main = Task_80220FC;
        }
    } while (++i < gNumSingleplayerCharacters);

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spring->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    DisplaySprite(s);
}

void Task_80220FC(void)
{
    SpringA *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    MapEntity *me = spring->base.me;
    s32 i;

    i = 0;
    do {
        bool32 res;

        sub_80228D0(s, me, spring, GET_SP_PLAYER_V1(i));

    } while (++i < gNumSingleplayerCharacters);

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spring->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    if (UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
        s->variant = 2;
        UpdateSpriteAnimation(s);

        gCurTask->main = Task_Spring_Horizontal;
    }
    DisplaySprite(s);
}

void CreateEntity_Spring_Big_Up(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Spring_Big_Up, sizeof(SpringB), 0x2000, 0, TaskDestructor_Spring);
    SpringB *spring = TASK_DATA(t);
    Sprite *s = &spring->s;

    spring->base.regionX = regionX;
    spring->base.regionY = regionY;
    spring->base.me = me;
    spring->base.meX = me->x;
    spring->base.id = id;

    // NOTE: Initializing sprite pos to world pos
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_SPRING);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_SPRING;
    s->variant = 4;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    if (gGameMode == 6) {
        // IA__SPRING__LEFT - Multiplayer_Ver
        if (me->index == 10) {
            s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
            s->frameFlags |= SPRITE_FLAG(X_FLIP, 1);
        }
    } else {
        if (me->index == IA__SPRING__BIG_UPLEFT) {
            s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
            s->frameFlags |= SPRITE_FLAG(X_FLIP, 1);
        }
    }

    UpdateSpriteAnimation(s);
}

void Task_Spring_Big_Up(void)
{
    SpringB *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    MapEntity *me = spring->base.me;
    s32 i;

    i = 0;
    do {
        bool32 res;

        res = sub_8022AB4(s, me, spring, GET_SP_PLAYER_V1(i));

        if (res) {
            gCurTask->main = Task_8022354;
        }
    } while (++i < gNumSingleplayerCharacters);

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spring->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    DisplaySprite(s);
}

void Task_8022354(void)
{
    SpringB *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    MapEntity *me = spring->base.me;
    s32 i;

    i = 0;
    do {
        bool32 res;

        sub_8022AB4(s, me, spring, GET_SP_PLAYER_V1(i));

    } while (++i < gNumSingleplayerCharacters);

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spring->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    if (UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
        s->variant = 4;
        UpdateSpriteAnimation(s);

        gCurTask->main = Task_Spring_Big_Up;
    }
    DisplaySprite(s);
}

void CreateEntity_Spring_Small_Up(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Spring_Small_Up, sizeof(SpringB), 0x2000, 0, TaskDestructor_Spring);
    SpringB *spring = TASK_DATA(t);
    Sprite *s = &spring->s;

    spring->base.regionX = regionX;
    spring->base.regionY = regionY;
    spring->base.me = me;
    spring->base.meX = me->x;
    spring->base.id = id;

    // NOTE: Initializing sprite pos to world pos
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_SPRING);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_SPRING;
    s->variant = 6;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    if (me->index == 14) {
        s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
        s->frameFlags |= SPRITE_FLAG(X_FLIP, 1);
    }

    UpdateSpriteAnimation(s);
}

void Task_Spring_Small_Up(void)
{
    SpringB *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    MapEntity *me = spring->base.me;
    s32 i;

    i = 0;
    do {
        bool32 res;

        res = sub_8022E14(s, me, spring, GET_SP_PLAYER_V1(i));

        if (res) {
            gCurTask->main = Task_8022594;
        }
    } while (++i < gNumSingleplayerCharacters);

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spring->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    DisplaySprite(s);
}

void Task_8022594(void)
{
    SpringB *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    MapEntity *me = spring->base.me;
    s32 i;

    i = 0;
    do {
        bool32 res;

        sub_8022E14(s, me, spring, GET_SP_PLAYER_V1(i));

    } while (++i < gNumSingleplayerCharacters);

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spring->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    if (UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
        s->variant = 6;
        UpdateSpriteAnimation(s);

        gCurTask->main = Task_Spring_Small_Up;
    }
    DisplaySprite(s);
}