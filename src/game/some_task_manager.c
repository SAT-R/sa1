#include "global.h"
#include "core.h"
#include "sprite.h"
#include "malloc_vram.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/sa1_sa2_shared/camera.h"
#include "game/stage/player_controls.h"

#include "constants/move_states.h"

typedef struct {
    /* 0x00 */ u16 unk0;
    /* 0x02 */ u8 unk2;
    /* 0x03 */ u8 unk3;
    /* 0x04 */ u32 unk4;
    /* 0x08 */ u32 unk8;
    /* 0x0C */ SpriteTransform transform;
    /* 0x18 */ Sprite s;
    /* 0x48 */ Hitbox reserved;
    /* 0x50 */ s32 qUnk50;
    /* 0x54 */ s32 qUnk54;
    /* 0x58 */ s16 qUnk58;
    /* 0x5A */ s16 qUnk5A;
    /* 0x5C */ u16 qUnk5C;
    /* 0x5E */ u16 qUnk5E;
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

void sub_804CD80(SomeTaskManager_60 *taskData, SomeTaskManager_Graphic *gfx);
void sub_804CF5C(SomeTaskManager_7C *taskData, SomeTaskManager_Graphic *gfx);

ALIGNED(16) u16 gUnknown_030060F0[64] = { 0 };
ALIGNED(16) u16 gUnknown_03006170[64] = { 0 };

void sub_804CD80(SomeTaskManager_60 *taskData, SomeTaskManager_Graphic *gfx)
{
    Sprite *s;
    SpriteTransform *transform;

    taskData->unk0 = 0;
    taskData->unk2 = 0;
    taskData->unk3 = 0;
    taskData->unk4 = 0;
    taskData->unk8 = 0;

    taskData->qUnk50 = 0;
    taskData->qUnk54 = 0;
    taskData->qUnk58 = 0;
    taskData->qUnk5A = 0;
    taskData->qUnk5C = 0;
    taskData->qUnk5E = 0;

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

void sub_804CDF8(void)
{
    SomeTaskManager_60 *taskData = TASK_DATA(gCurTask);
    Sprite *s = &taskData->s;
    SpriteTransform *transform = &taskData->transform;
    Camera *cam = &gCamera;
    s32 screenX, screenY;

    screenX = I(taskData->qUnk50) - cam->x;
    screenY = I(taskData->qUnk54) - cam->y;

    // TODO: Proper range check for Y!
    if ((screenX < -32 || screenX >= DISPLAY_WIDTH + 32) || (screenY >= DISPLAY_HEIGHT + 64)) {
        TaskDestroy(gCurTask);
        return;
    }

    transform->x = screenX;
    transform->y = screenY;

    s->frameFlags &= ~SPRITE_FLAG_MASK_ROT_SCALE;

    s->frameFlags |= SPRITE_FLAG(ROT_SCALE_ENABLE, 1) | SA2_LABEL(gUnknown_030054B8)++;

    UpdateSpriteAnimation(s);
    TransformSprite(s, transform);
    DisplaySprite(s);

    { // TODO: inline of sub_804CFA0?
        taskData->qUnk50 += taskData->qUnk58;
        taskData->qUnk54 += taskData->qUnk5A;
        taskData->qUnk58 += taskData->qUnk5C;
        taskData->qUnk5A += taskData->qUnk5E;
    }
}

struct Task *CreateSomeTaskManager_60_Task(SomeTaskManager_Graphic *gfx, TaskMain proc, TaskDestructor dtor)
{
    struct Task *t = TaskCreate(proc, sizeof(SomeTaskManager_60), gCurTask->priority + 1, 0, dtor);

    sub_804CD80(TASK_DATA(t), gfx);

    return t;
}

struct Task *CreateSomeTaskManager_7C_Task(SomeTaskManager_Graphic *gfx, TaskMain proc, TaskDestructor dtor)
{
    struct Task *t = TaskCreate(proc, sizeof(SomeTaskManager_7C), gCurTask->priority + 1, 0, dtor);

    sub_804CF5C(TASK_DATA(t), gfx);

    return t;
}

void sub_804CF5C(SomeTaskManager_7C *taskData, SomeTaskManager_Graphic *gfx)
{
    sub_804CD80(&taskData->unk0, gfx);

    taskData->unk60 = 0;
    taskData->unk64 = 0;
    taskData->unk68 = 0;
    taskData->unk6C = 0;
    taskData->unk70 = 0;
    taskData->unk72 = 0;
    taskData->unk74 = 0;
    taskData->unk76 = 0;
}

void TaskDestructor_SomeTaskManager_60_Common(struct Task *t)
{
    SomeTaskManager_60 *taskData = TASK_DATA(t);
    Sprite *s = &taskData->s;
    VramFree(s->graphics.dest);
}

void sub_804CFA0(SomeTaskManager_60 *taskData)
{
    taskData->qUnk50 += taskData->qUnk58;
    taskData->qUnk54 += taskData->qUnk5A;
}

void sub_804CFC0(SomeTaskManager_60 *taskData)
{
    taskData->qUnk58 += taskData->qUnk5C;
    taskData->qUnk5A += taskData->qUnk5E;
}

bool32 sub_804CFE0(u16 *param0, u16 param1, u16 param2)
{
    s32 v = *param0;

    if (param1 != v) {
        if ((param1 - v) << 16 >= 0) {
            s32 v2 = param2 + v;
            *param0 = v2;

            if ((param1 - v2) << 16 < 0) {
                *param0 = param1;
                return TRUE;
            }
        } else {
            // _0804D00E
            s32 v2 = v - param2;
            *param0 = v2;

            if ((param1 - v2) << 16 >= 0) {
                *param0 = param1;
                return TRUE;
            }
        }

        return FALSE;
    }

    return TRUE;
}

void SetFaceButtonConfig(bool32 flipFaceButtons)
{
    struct ButtonConfig *controls = &gPlayerControls;

    if (!flipFaceButtons || gStageFlags & STAGE_FLAG__DEMO_RUNNING) {
        controls->jump = A_BUTTON;
        controls->attack = B_BUTTON;
    } else if (flipFaceButtons == TRUE) {
        controls->jump = B_BUTTON;
        controls->attack = A_BUTTON;
    }
}

// (92.37%) https://decomp.me/scratch/2Touh
NONMATCH("asm/non_matching/game/some_task_manager__sub_804D060.inc", s32 sub_804D060(s32 n))
{
    u16 *data0 = gUnknown_03006170;
    u16 *data1 = gUnknown_030060F0;
    s32 i;
    u16 *data;

    u16 chkMask = *data0++ & 0x30;

    if (chkMask == 0x20) {
        for (i = 0, data = data0; i < n; data++, data1++, i++) {
            if (*data1 & 0xD0) {
                return 0;
            }

            chkMask = *data & 0x20;

            if (i >= 4 && chkMask != 0) {
                return -1;
            }
        }
    } else if (chkMask == 0x10) {
        for (i = 0, data = data0; i < n; data++, data1++, i++) {
            if (*data1 & 0xE0) {
                return 0;
            }

            chkMask = *data & 0x10;

            if (i >= 4 && chkMask != 0) {
                return +1;
            }
        }
    }

    return 0;
}
END_NONMATCH

void sub_804D100(void)
{
    DmaFill16(3, 0, gUnknown_030060F0, 2 * sizeof(u16));
    DmaFill16(3, 0, gUnknown_03006170, 2 * sizeof(u16));
}

void sub_804D13C(u16 param0)
{
    u16 *r5 = &gUnknown_030060F0[59];
    u16 *r3 = &gUnknown_03006170[59];
    s32 r4 = 58;

    do {
        *r5-- = *(r5 - 1);
        *r3-- = *(r3 - 1);
    } while (--r4 >= 0);

    *r5 = param0;
    *r3 = param0 & ~*(r5 + 1);
}
