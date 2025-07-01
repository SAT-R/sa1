#include "global.h"
#include "sprite.h"
#include "task.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"

#include "game/sa1_sa2_shared/globals.h"

#include "game/stage/player.h"
#include "game/stage/camera.h"
#include "game/stage/mp_sprite_task.h"
#include "game/stage/item_tasks.h"
#include "game/multiplayer/mp_player.h"

#include "constants/animations.h"
#include "constants/songs.h"

typedef struct {
    Sprite s;
    u8 unk30;
    u8 filler31[7];
} ItemTask; /* size: 0x38 */

void Task_Item_Shield_Normal(void);
void Task_Item_Invincibility(void);
void Task_Item_Shield_Magnetic(void);
void Task_Item_Confusion(void);
void TaskDestructor_ItemTasks(struct Task *);

#define ITEMTASK_GET_PLAYER_NUM(_task)                                                                                                     \
    ({                                                                                                                                     \
        ItemTask *it = TASK_DATA(_task);                                                                                                   \
        it->unk30;                                                                                                                         \
    })

struct Task *CreateItemTask_Shield_Normal(s8 playerID)
{
    struct Task *t = TaskCreate(Task_Item_Shield_Normal, sizeof(ItemTask), 0x4001, 0, TaskDestructor_ItemTasks);
    ItemTask *item = TASK_DATA(t);
    Sprite *s = &item->s;

    item->unk30 = playerID;

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_SHIELD_NORMAL);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_SHIELD_NORMAL;
    s->variant = 0;
    s->prevVariant = -1;
    s->oamFlags = SPRITE_OAM_ORDER(8);
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    m4aSongNumStart(SE_ACTIVATE_SHIELD);

    return t;
}

struct Task *CreateItemTask_Invincibility(s8 playerID)
{
    struct Task *t = TaskCreate(Task_Item_Invincibility, sizeof(ItemTask), 0x4001, 0, TaskDestructor_ItemTasks);
    ItemTask *item = TASK_DATA(t);
    Sprite *s = &item->s;

    item->unk30 = playerID;

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_INVINCIBILITY);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_INVINCIBILITY;
    s->variant = 0;
    s->prevVariant = -1;
    s->oamFlags = SPRITE_OAM_ORDER(8);
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    return t;
}

struct Task *CreateItemTask_Shield_Magnetic(s8 playerID)
{
    struct Task *t = TaskCreate(Task_Item_Shield_Magnetic, sizeof(ItemTask), 0x4001, 0, TaskDestructor_ItemTasks);
    ItemTask *item = (ItemTask *)TASK_DATA(t);

    item->unk30 = playerID;

    {
        ItemTask *item2 = (ItemTask *)TASK_DATA(t);
        Sprite *s = &item2->s;

        s->graphics.dest = ALLOC_TILES(SA1_ANIM_SHIELD_MAGNETIC);
        s->graphics.size = 0;
        s->graphics.anim = SA1_ANIM_SHIELD_MAGNETIC;
        s->variant = 0;
        s->prevVariant = -1;
        s->oamFlags = SPRITE_OAM_ORDER(8);
        s->qAnimDelay = 0;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    }

    m4aSongNumStart(SE_ACTIVATE_SHIELD);

    return t;
}

struct Task *CreateItemTask_Confusion(s8 playerID)
{
    struct Task *t = TaskCreate(Task_Item_Confusion, sizeof(ItemTask), 0x4001, 0, TaskDestructor_ItemTasks);
    ItemTask *item = TASK_DATA(t);

    item->unk30 = playerID;

    {
        ItemTask *item2 = (ItemTask *)TASK_DATA(t);
        Sprite *s = &item2->s;

        s->graphics.dest = ALLOC_TILES(SA1_ANIM_CONFUSION);
        s->graphics.size = 0;
        s->graphics.anim = SA1_ANIM_CONFUSION;
        s->variant = 0;
        s->prevVariant = -1;
        s->oamFlags = SPRITE_OAM_ORDER(8);
        s->qAnimDelay = 0;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    }

    return t;
}

// (99.89%) https://decomp.me/scratch/Jp0vL
NONMATCH("asm/non_matching/game/stage/Item_Tasks__Task_Item_Shield_Normal.inc", void Task_Item_Shield_Normal(void))
{
    struct Task *t = gCurTask;
    s8 pid = ITEMTASK_GET_PLAYER_NUM(t);

    ItemTask *item = TASK_DATA(t);
    struct Camera *cam = &gCamera;
    Player *p;
    bool32 b;

    if (IS_MULTI_PLAYER) {
        MultiplayerPlayer *mpp = TASK_DATA(gMultiplayerPlayerTasks[pid]);

        if (!(mpp->unk57 & 0x1)) {
            TaskDestroy(t);
            return;
        }

        item->s.x = mpp->pos.x - cam->x;
        item->s.y = mpp->pos.y - cam->y;

        item->s.frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;
        item->s.frameFlags |= mpp->s.frameFlags & SPRITE_FLAG_MASK_PRIORITY;
    } else {
        p = &PLAYER(pid);

        if ((p->itemEffect & (PLAYER_ITEM_EFFECT__SHIELD_NORMAL)) == 0) {
            TaskDestroy(t);
            return;
        }

        if (!(p->itemEffect & PLAYER_ITEM_EFFECT__INVINCIBILITY)) {
            s32 screenX, screenY;

            screenX = I(p->qWorldX) - (u16)cam->x;
            item->s.x = screenX + p->SA2_LABEL(unk7C);

            screenY = I(p->qWorldY) - (u16)cam->y;
            item->s.y = screenY;

            item->s.frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;

            item->s.frameFlags |= p->spriteInfoBody->s.frameFlags & SPRITE_FLAG_MASK_PRIORITY;
        } else {
            return;
        }
    }

    UpdateSpriteAnimation(&item->s);

    b = (pid & (b = 1));

    if (((gStageTime & 0x2) && (pid != b)) || (!(gStageTime & 0x2) && (b != 0))) {
        DisplaySprite(&item->s);
    }
}
END_NONMATCH

// (99.85%) https://decomp.me/scratch/Ozaza
NONMATCH("asm/non_matching/game/stage/Item_Tasks__Task_Item_Shield_Magnetic.inc", void Task_Item_Shield_Magnetic(void))
{
    struct Task *t = gCurTask;
    s8 pid = ITEMTASK_GET_PLAYER_NUM(t);

    ItemTask *item = TASK_DATA(t);
    struct Camera *cam = &gCamera;
    Player *p;
    bool32 b;

    if (IS_MULTI_PLAYER) {
        MultiplayerPlayer *mpp = TASK_DATA(gMultiplayerPlayerTasks[pid]);

        if (!(mpp->unk57 & PLAYER_ITEM_EFFECT__SHIELD_MAGNETIC)) {
            TaskDestroy(t);
            return;
        }

        item->s.x = mpp->pos.x - cam->x;
        item->s.y = mpp->pos.y - cam->y;

        item->s.frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;
        item->s.frameFlags |= mpp->s.frameFlags & SPRITE_FLAG_MASK_PRIORITY;
    } else {
        p = &PLAYER(pid);

        if ((p->itemEffect & (PLAYER_ITEM_EFFECT__SHIELD_NORMAL)) == 0) {
            TaskDestroy(t);
            return;
        }

        if (!(p->itemEffect & PLAYER_ITEM_EFFECT__INVINCIBILITY)) {
            s32 screenX, screenY;

            screenX = I(p->qWorldX) - (u16)cam->x;
            item->s.x = screenX + p->SA2_LABEL(unk7C);

            screenY = I(p->qWorldY) - (u16)cam->y;
            item->s.y = screenY;

            item->s.frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;

            item->s.frameFlags |= p->spriteInfoBody->s.frameFlags & SPRITE_FLAG_MASK_PRIORITY;
        } else {
            return;
        }
    }

    UpdateSpriteAnimation(&item->s);

    b = (pid & (b = 1));

    if (((gStageTime & 0x2) && (pid != b)) || (!(gStageTime & 0x2) && (b != 0))) {
        DisplaySprite(&item->s);
    }
}
END_NONMATCH

void sub_804BABC(void)
{
    ItemTask *item = TASK_DATA(gCurTask);
    s8 pid = ITEMTASK_GET_PLAYER_NUM(gCurTask);
    Sprite *s = &item->s;
    struct Camera *cam = &gCamera;
    s16 screenX, screenY;
    u32 r2 = 0;

    if (s->frameFlags & SPRITE_FLAG_MASK_ANIM_OVER) {
        TaskDestroy(gCurTask);
        return;
    }

    if (IS_MULTI_PLAYER) {
        MultiplayerPlayer *mpp = TASK_DATA(gMultiplayerPlayerTasks[pid]);
        screenX = mpp->pos.x;
        screenY = mpp->pos.y;

        r2 |= mpp->s.frameFlags & SPRITE_FLAG_MASK_PRIORITY;
    } else {
        Player *p = &PLAYER(pid);
        screenX = I(p->qWorldX) + p->SA2_LABEL(unk7C);
        screenY = I(p->qWorldY);

        r2 |= p->spriteInfoBody->s.frameFlags & SPRITE_FLAG_MASK_PRIORITY;
    }

    s->x = screenX - cam->x;
    s->y = screenY - cam->y;

    s->frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;
    s->frameFlags |= r2;

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

// (98.30%) https://decomp.me/scratch/R97rp
NONMATCH("asm/non_matching/game/stage/Item_Tasks__Task_Item_Invincibility.inc", void Task_Item_Invincibility(void))
{
    struct Task *t = gCurTask;
    s32 pid = ITEMTASK_GET_PLAYER_NUM(t);

    ItemTask *item = TASK_DATA(t);
    struct Camera *cam = &gCamera;
    bool32 b;
    s16 screenX, screenY;
    u32 flags;

    if (IS_MULTI_PLAYER) {
        MultiplayerPlayer *mpp = TASK_DATA(gMultiplayerPlayerTasks[(s8)pid]);

        if (!(mpp->unk57 & PLAYER_ITEM_EFFECT__INVINCIBILITY)) {
            TaskDestroy(t);
            return;
        }

        screenX = mpp->pos.x;
        screenY = mpp->pos.y;

        flags = mpp->s.frameFlags & SPRITE_FLAG_MASK_PRIORITY;
    } else {
        Player *p = &PLAYER(pid);

        if (!(p->itemEffect & PLAYER_ITEM_EFFECT__INVINCIBILITY)) {
            TaskDestroy(t);
            return;
        }

        screenX = I(p->qWorldX) + p->SA2_LABEL(unk7C);
        screenY = I(p->qWorldY);

        flags = p->spriteInfoBody->s.frameFlags & SPRITE_FLAG_MASK_PRIORITY;
    }

    item->s.x = screenX - cam->x;
    item->s.y = screenY - cam->y;
    item->s.frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;
    item->s.frameFlags |= flags;

    if ((gStageTime & 0x7) == 0) {
        // Create random small "sparkle" effects during invincibility
        struct Task *t;
        MultiplayerSpriteTask *mpSprite;
        Sprite *sprInvin;
        s16 randA, randB;

        randA = ((u32)PseudoRandom32() >> 8) % 16u;
#ifndef NON_MATCHING
        asm("" ::"r"(randA));
#endif
        randB = ((u32)PseudoRandom32() >> 8) % 256u;

        t = CreateMultiplayerSpriteTask(screenX + I(COS_24_8(randB * 4) * randA), screenY + I(SIN_24_8(randB * 4) * randA), 0, 0,
                                        Task_UpdateMpSpriteTaskSprite, TaskDestructor_MultiplayerSpriteTask);
        mpSprite = TASK_DATA(t);
        sprInvin = &mpSprite->s;
        sprInvin->graphics.dest = ALLOC_TILES_VARIANT(SA1_ANIM_INVINCIBILITY, 1);
        sprInvin->graphics.anim = SA1_ANIM_INVINCIBILITY;
        sprInvin->variant = 1;
        sprInvin->oamFlags = SPRITE_OAM_ORDER(8);
        sprInvin->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    }

    UpdateSpriteAnimation(&item->s);

    {
#ifndef NON_MATCHING
        register u32 bOrig asm("r3") = 1;
#else
        u32 bOrig = 1;
#endif
        b = bOrig;
        // ClearBit(b, pid);
        b &= ~pid;

        if (((gStageTime & 0x2) && (b != bOrig)) || (!(gStageTime & 0x2) && (b != 0))) {
            DisplaySprite(&item->s);
        }
    }
}
END_NONMATCH

void Task_Item_Confusion(void)
{
    s8 param = ITEMTASK_GET_PLAYER_NUM(gCurTask);
    ItemTask *item = TASK_DATA(gCurTask);
    Sprite *s = &item->s;
    u32 b;

    struct Camera *cam = &gCamera;

    if (IS_MULTI_PLAYER) {
        MultiplayerPlayer *mpp = TASK_DATA(gMultiplayerPlayerTasks[param]);

        if (!(mpp->unk57 & (0x40 | 0x10))) {
            TaskDestroy(gCurTask);
            return;
        }

        s->x = mpp->pos.x - cam->x;
        s->y = mpp->pos.y - cam->y;
        s->frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;
        s->frameFlags |= mpp->s.frameFlags & SPRITE_FLAG_MASK_PRIORITY;

        if (GRAVITY_IS_INVERTED) {
            s->frameFlags |= 0x800;
        } else {
            s->frameFlags &= ~0x800;
        }

        UpdateSpriteAnimation(s);

        b = param;
        {
#ifndef NON_MATCHING
            register u32 one asm("r3") = 1;
#else
            u32 one = 1;
#endif
            b &= one;
            if (((gStageTime & 0x2) && (b != one)) || (!(gStageTime & 0x2) && (b != 0))) {
                DisplaySprite(s);
            }
        }
    } else {
        TaskDestroy(gCurTask);
        return;
    }
}

void TaskDestructor_ItemTasks(struct Task *t)
{
    ItemTask *item = TASK_DATA(t);
    VramFree(item->s.graphics.dest);
}
