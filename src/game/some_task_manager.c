#include "global.h"
#include "core.h"
#include "sprite.h"

typedef struct {
    /* 0x00 */ u16 unk0;
    /* 0x02 */ u8 unk2;
    /* 0x03 */ u8 unk3;
    /* 0x04 */ u32 unk4;
    /* 0x08 */ u32 unk8;
    /* 0x0C */ SpriteTransform transform;
    /* 0x18 */ Sprite s;
    /* 0x48 */ Hitbox reserved;
    /* 0x50 */ u32 unk50;
    /* 0x54 */ u32 unk54;
    /* 0x58 */ u16 unk58;
    /* 0x5A */ u16 unk5A;
    /* 0x5C */ u16 unk5C;
    /* 0x5E */ u16 unk5E;
} SomeTaskManager_60; /* 0x60 */

typedef struct {
    /* 0x00 */ SomeTaskManager_60 unk0;
    /* 0x60 */ u32 unk60;
    /* 0x64 */ u32 unk64;
    /* 0x68 */ u32 unk68;
    /* 0x6C */ u32 unk6C;
    /* 0x70 */ u16 unk70;
    /* 0x72 */ u16 unk72;
    /* 0x74 */ u16 unk74;
    /* 0x76 */ u16 unk76;
    /* 0x78 */ u8 filler78[0x4];
} SomeTaskManager_7C; /* 0x7C */

typedef struct {
    TileInfoFirework tileInfo;
    void *vram4;
} SomeTaskManager_Graphic;

void sub_804CD80(SomeTaskManager_60 *taskData, SomeTaskManager_Graphic *gfx)
{
    Sprite *s;
    SpriteTransform *transform;

    taskData->unk0 = 0;
    taskData->unk2 = 0;
    taskData->unk3 = 0;
    taskData->unk4 = 0;
    taskData->unk8 = 0;

    taskData->unk50 = 0;
    taskData->unk54 = 0;
    taskData->unk58 = 0;
    taskData->unk5A = 0;
    taskData->unk5C = 0;
    taskData->unk5E = 0;

    s = &taskData->s;
    transform = &taskData->transform;

    s->graphics.dest = gfx->vram4;
    s->graphics.anim = gfx->tileInfo.anim;
    s->variant = gfx->tileInfo.variant;
    s->oamFlags = 0;
    s->frameFlags = 0;
    s->graphics.size = 0;
    s->prevVariant = -1;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;

    transform->rotation = 0;
    transform->qScaleX = Q(1.0);
    transform->qScaleY = Q(1.0);
    transform->x = 0;
    transform->y = 0;

    s->hitboxes[1].index = HITBOX_STATE_INACTIVE;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
}