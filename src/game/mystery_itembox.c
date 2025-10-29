#include "core.h"
#include "malloc_vram.h"
#include "game/sa1_sa2_shared/collision.h"

#include "game/entity.h"
#include "game/mystery_itembox.h"
#include "game/multiplayer/multiplayer_event_mgr.h"
#include "game/multiplayer/mp_player.h"
#include "game/sa1_sa2_shared/dust_cloud.h"
#include "game/stage/camera.h"
#include "game/stage/player.h"
#include "game/stage/terrain_collision.h"
#include "lib/m4a/m4a.h"

#include "constants/animations.h"
#include "constants/char_states.h"
#include "constants/player_transitions.h"
#include "constants/songs.h"
#include "constants/zones.h"

#define ITEM_ICON_DISPLAY_TIME  (1 * GBA_FRAMES_PER_SECOND)
#define ITEM_ICON_DISPLAY_DELAY (int)(0.5 * GBA_FRAMES_PER_SECOND)

#define DATABYTE_A 0
#define DATABYTE_B 1

#if (GAME == GAME_SA1)
#define ITEMBOX_ANIM SA1_ANIM_ITEMBOX
#elif (GAME == GAME_SA2)
#define ITEMBOX_ANIM SA2_ANIM_ITEMBOX
#endif
typedef struct {
    SpriteBase base; /* 0x00 */
    Sprite box; /* 0x0C*/
    Sprite identifier; /* 0x3C */
    /* 0x6C */ SpriteTransform transform;
#if (GAME == GAME_SA1)
    u32 unk78;
    s16 unk7C;
    s16 unk7E;
    u8 unk80;
    u8 rndItemIndex;
    s16 unk82;
#elif (GAME == GAME_SA2)
    /* 0x78 */ CamCoord x; // x
    /* 0x7A */ CamCoord y; // y
    s16 iconOffsetY;
    u8 SA2_LABEL(unk82);
    u8 framesSinceOpened;
    u8 SA2_LABEL(unk84);
#endif
} MysteryItemBox;

#if (GAME == GAME_SA1)
extern inline void Task_MysteryItemBox_Main0_inline(void);
extern void Task_MysteryItemBox_Main0(void);
extern void Task_MysteryItemBox_Main1(void);
extern void TaskDestructor_MysteryItemBox(struct Task *);
void sub_801C69C(void);
void sub_801C2FC(void);
void sub_801C420(void);
void sub_801C130(void);
extern void sub_808623C(void);
extern void sub_8086858(MysteryItemBox *);
extern bool32 sub_808693C(MysteryItemBox *);
extern bool32 sub_80868F4(MysteryItemBox *);
extern void sub_8086474(MysteryItemBox *);
extern void sub_80868A8(MysteryItemBox *, u32);
extern void sub_8086804(MysteryItemBox *);
extern void sub_8086890(MysteryItemBox *);
extern void sub_80866FC(void);
extern void sub_808665C(void);
extern void Task_MysteryItemBox_Main1(void);
#elif (GAME == GAME_SA2)
static inline void Task_MysteryItemBox_Main0_inline(void);
static void Task_MysteryItemBox_Main0(void);
static void Task_MysteryItemBox_Main1(void);
static void TaskDestructor_MysteryItemBox(struct Task *);
static void sub_808623C(void);
static void sub_8086858(MysteryItemBox *);
static bool32 sub_808693C(MysteryItemBox *);
static bool32 sub_80868F4(MysteryItemBox *);
static void sub_8086474(MysteryItemBox *);
static void sub_80868A8(MysteryItemBox *, u32);
static void sub_8086804(MysteryItemBox *);
static void sub_8086890(MysteryItemBox *);
static void sub_80866FC(void);
static void sub_808665C(void);
static void Task_MysteryItemBox_Main1(void);
#endif

#if (GAME == GAME_SA1)
const u8 gUnknown_080BB4D0[] = { 13, 16, 14, 13 };
const u8 gUnknown_080BB4D4[] = { 8, 11, 8, 11 };
const u8 gUnknown_080BB4D8[] = { 0, 4, 5, 6, 7, 8, 9, 10, 12, 13, 15, 9, 10, 8, 7, 6 };
const u8 gUnknown_080BB4E8[] = { 6, 7, 5, 4, 3, 6, 7, 5 };
const u8 gUnknown_080BB4F0[] = { 8, 9, 10, 9 };
#elif (GAME == GAME_SA2)
static const u8 sRingBonuses[] = { 1, 5, 10, 30, 50 };

static const u16 gUnknown_080E029A[] = { 0, 1, 1, 0, 1, 1, 0, 1 };

static const u16 gUnknown_080E02AA[][3]
    = { { ITEMBOX_ANIM_TYPE, SA2_ANIM_VARIANT_ITEM_BOX_MYSTERY_1, 4 }, { ITEMBOX_ANIM_TYPE, SA2_ANIM_VARIANT_ITEM_BOX_MYSTERY_2, 4 } };
static const u8 unused = 0;
#endif

void CreateEntity_MysteryItemBox(MapEntity *me, u16 regionX, u16 regionY, u8 spriteY)
{
    Sprite *s;
    MysteryItemBox *itemBox;
    struct Task *t;
    if ((gRandomItemBox & 7) == me->d.sData[DATABYTE_A] && me->d.sData[DATABYTE_B] <= (gRandomItemBox >> 4)) {
        t = TaskCreate(Task_MysteryItemBox_Main0, sizeof(MysteryItemBox), 0x2000, 0, TaskDestructor_MysteryItemBox);
    } else {
        t = TaskCreate(Task_MysteryItemBox_Main1, sizeof(MysteryItemBox), 0x2000, 0, TaskDestructor_MysteryItemBox);
    }

    if (me->d.sData[DATABYTE_B] <= (gRandomItemBox >> 4)) {
        me->d.sData[DATABYTE_B] = (gRandomItemBox >> 4);
    }

    itemBox = TASK_DATA(t);

#if (GAME == GAME_SA1)
    s = &itemBox->box;
    itemBox->base.regionX = regionX;
    itemBox->base.regionY = regionY;
    itemBox->base.me = me;
    itemBox->base.meX = me->x;
    itemBox->base.id = spriteY;
    itemBox->unk7E = 0;
    itemBox->unk7C = 0;
    itemBox->unk80 = 0;
    itemBox->rndItemIndex = gMultiplayerPseudoRandom % 4u;
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);
    SET_MAP_ENTITY_INITIALIZED(me);
#elif (GAME == GAME_SA2)
    itemBox->SA2_LABEL(unk82) = gUnknown_080E029A[gMultiplayerPseudoRandom % ARRAY_COUNT(gUnknown_080E029A)];
    itemBox->iconOffsetY = Q(0.0);
    itemBox->x = TO_WORLD_POS(me->x, regionX);
    itemBox->y = TO_WORLD_POS(me->y, regionY);
    itemBox->base.regionX = regionX;
    itemBox->base.regionY = regionY;
    itemBox->base.me = me;
    itemBox->base.meX = me->x;
    itemBox->base.id = spriteY;
    SET_MAP_ENTITY_INITIALIZED(me);
#endif

#if (GAME == GAME_SA1)
    s = &itemBox->box;
    s->graphics.dest = ALLOC_TILES(SA1_ANIM_ITEMBOX);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_ITEMBOX;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    UpdateSpriteAnimation(s);
#elif (GAME == GAME_SA2)
    s = &itemBox->box;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->palId = 0;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->hitboxes[0].index = -1;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    s->graphics.dest = VramMalloc(16);
    s->graphics.anim = ITEMBOX_ANIM;
    s->variant = 0;
    UpdateSpriteAnimation(s);
#endif

#if (GAME == GAME_SA1)
    s = &itemBox->identifier;
    s->graphics.dest = ALLOC_TILES(SA1_ANIM_ITEMBOX_TYPE);
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->palId = 0;
    s->oamFlags = SPRITE_OAM_ORDER(19);
    s->hitboxes[0].index = -1;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    s->graphics.anim = SA1_ANIM_ITEMBOX_TYPE;
    if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
        s->variant = gUnknown_080BB4D0[itemBox->rndItemIndex];
    } else {
        s->variant = gUnknown_080BB4D4[itemBox->rndItemIndex];
    }
    UpdateSpriteAnimation(s);
#elif (GAME == GAME_SA2)
    s = &itemBox->identifier;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->palId = 0;
    s->oamFlags = SPRITE_OAM_ORDER(19);
    s->hitboxes[0].index = -1;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    s->graphics.dest = VramMalloc(4);
    s->graphics.anim = gUnknown_080E02AA[gUnknown_080E029A[itemBox->unk82]][0];
    s->variant = gUnknown_080E02AA[gUnknown_080E029A[itemBox->unk82]][1];
    UpdateSpriteAnimation(s);
#endif
}

#if (GAME == GAME_SA1)
void Task_MysteryItemBox_Main1()
{
    MapEntity *temp_r5;
    s32 temp_r1_2;
    u32 temp_r1;
    CamCoord worldX, worldY;
    MysteryItemBox *itembox = TASK_DATA(gCurTask);
    MapEntity *me = itembox->base.me;

    worldX = TO_WORLD_POS(itembox->base.meX, itembox->base.regionX);
    worldY = TO_WORLD_POS(me->y, itembox->base.regionY);

    if (me->d.sData[DATABYTE_A] == (7 & gRandomItemBox)) {
        if (me->d.sData[DATABYTE_B] <= gRandomItemBox >> 4) {
            me->d.sData[DATABYTE_B] = gRandomItemBox >> 4;
            gCurTask->main = sub_801C420;
            return;
        }
    }

    // TODO: Use a macro
    if ((((worldX - gCamera.x) + 0x80) > (DISPLAY_WIDTH + 256u)) || ((((worldY - gCamera.y) + 0x80) < 0))
        || ((worldY - gCamera.y) > (DISPLAY_HEIGHT + 208))) {
        me->x = itembox->base.meX;
        TaskDestroy(gCurTask);
    }
}
#endif // (GAME == GAME_SA1)

#if (GAME == GAME_SA2)
static void sub_808616C(void)
{
    MysteryItemBox *itemBox = TASK_DATA(gCurTask);
    SpriteTransform *transform;
    Sprite *identifier;

    itemBox->unk82 = gUnknown_080E029A[gMultiplayerPseudoRandom % ARRAY_COUNT(gUnknown_080E029A)];

    identifier = &itemBox->identifier;
    identifier->graphics.anim = gUnknown_080E02AA[gUnknown_080E029A[itemBox->unk82]][0];
    identifier->variant = gUnknown_080E02AA[gUnknown_080E029A[itemBox->unk82]][1];
    UpdateSpriteAnimation(identifier);

    itemBox->box.frameFlags |= SPRITE_FLAG_MASK_ROT_SCALE_ENABLE;
    itemBox->identifier.frameFlags |= SPRITE_FLAG_MASK_ROT_SCALE_ENABLE;

    transform = &itemBox->transform;
    transform->rotation = 0;
    transform->qScaleX = Q(1);
    transform->qScaleY = 0;
    transform->x = 0;
    transform->y = 0;
    gCurTask->main = sub_808623C;
    sub_808623C();
}
#endif // (GAME == GAME_SA1)

#if (GAME == GAME_SA1)

void Task_MysteryItemBox_Main0()
{
    u8 sp8 = 0;
    MapEntity *me;
    Sprite *s;
    s16 *temp_r1;
    s16 *temp_r1_2;
    s16 temp_r1_3;
    s16 temp_r2_2;
    s32 temp_r0;
    CamCoord worldX;
    CamCoord worldY;
    u32 res;
    u8 *temp_r3_2;
    u8 var_r2;
    RoomEvent_MysteryItemBoxBreak *roomEvent;

    MysteryItemBox *itembox = TASK_DATA(gCurTask);

    s = &itembox->box;
    me = itembox->base.me;
    worldX = TO_WORLD_POS(itembox->base.meX, itembox->base.regionX);
    worldY = TO_WORLD_POS(me->y, itembox->base.regionY);
    if (me->d.sData[0] != (7 & gRandomItemBox)) {
        if ((8 & gPlayer.moveState) && (gPlayer.stoodObj == s)) {
            gPlayer.moveState = (gPlayer.moveState & ~8) | 2;
        }
        if (itembox->unk78 & 0x20) {
            gPlayer.moveState &= ~0x20;
            itembox->unk78 = 0U;
        }
        gCurTask->main = sub_801C69C;
        sub_801C69C();
        return;
    }
    if (me->d.sData[1] > (gRandomItemBox >> 4)) {
        m4aSongNumStart(0xA7U);
        CreateDustCloud(worldX, worldY + itembox->unk7C);
        gCurTask->main = sub_801C2FC;
        itembox->unk80 = sp8;
        if ((8 & gPlayer.moveState) && (gPlayer.stoodObj == s)) {
            gPlayer.moveState = (gPlayer.moveState & ~8) | 2;
        }
        if (!(itembox->unk78 & 0x20)) {
            return;
        }
        gPlayer.moveState &= ~0x20;
        itembox->unk78 = 0U;
        return;
    }

    if (itembox->unk80 != 0) {
        itembox->unk7C += I(itembox->unk7E);
        itembox->unk7E += 0x28;
        temp_r0 = SA2_LABEL(sub_801F07C)(worldY + itembox->unk7C, worldX, 1, 8, NULL, SA2_LABEL(sub_801EE64));
        if (temp_r0 < 0) {
            itembox->unk7C += temp_r0;
            itembox->unk80 = 0;
        }
    }
    s->x = worldX - gCamera.x;
    s->y = (worldY - gCamera.y) + itembox->unk7C;
    if ((gGameMode == 3) || (gGameMode == 5)) {
        for (var_r2 = 0; var_r2 < 4; var_r2++) {
            struct Task **mpTasks = gMultiplayerPlayerTasks;
            if (mpTasks[var_r2] == NULL)
                break;

            if (var_r2 != SIO_MULTI_CNT->id) {
                MultiplayerPlayer *mpp = TASK_DATA(gMultiplayerPlayerTasks[var_r2]);
                if (mpp->unk5C & 4) {
                    sp8 = 1;
                }
            }
        }
    }

    if (!((0x400000 & gPlayer.moveState) && (sp8 == 0))) {
        if (((gPlayer.moveState & 8) && (gPlayer.stoodObj == s)) || (gPlayer.spriteInfoBody->reserved.index == -1)) {
            res = sub_80096B0(s, (s16)worldX, (worldY + itembox->unk7C), &gPlayer);
            if (0x10000 & res) {
                itembox->unk7E = -Q(1);
                itembox->unk80 = 0xFF;
            }
        } else {
            res = Coll_Player_Itembox(s, worldX, worldY + itembox->unk7C, &gPlayer);
            if (0x10000 & res) {
                itembox->unk7E = -Q(1);
                itembox->unk80 = 0xFF;
            } else if (0x28 & res) {
                if ((gPlayer.moveState & 8) && (gPlayer.stoodObj == s)) {
                    gPlayer.moveState &= ~MOVESTATE_STOOD_ON_OBJ;
                    gPlayer.moveState &= ~MOVESTATE_20;
                    gPlayer.moveState |= MOVESTATE_IN_AIR;
                }
                m4aSongNumStart(0xA7U);
                CreateDustCloud(worldX, worldY + itembox->unk7C);
                gCurTask->main = sub_801C130;
                itembox->unk80 = 0;
                me->d.sData[1]++;
                roomEvent = CreateRoomEvent();
                roomEvent->type = ROOMEVENT_TYPE_MYSTERY_ITEMBOX_BREAK;
                roomEvent->x = (s8)itembox->base.regionX;
                roomEvent->y = (s8)itembox->base.regionY;
                roomEvent->id = (u8)itembox->base.id;
                roomEvent->unk4 = (u8)me->d.sData[1];
                return;
            }
        }
        itembox->unk78 = res;
    }

    // TODO: Macro
    if (((u16)(s->x + 128) > (DISPLAY_WIDTH + 256u)) || ((s->y + 0x80 + itembox->unk7C) < 0)
        || ((s->y + itembox->unk7C) > (DISPLAY_HEIGHT + 128))) {
        me->x = itembox->base.meX;
        TaskDestroy(gCurTask);
        return;
    }
    DisplaySprite(s);
    s = &itembox->identifier;
    s->x = worldX - gCamera.x;
    s->y = (worldY - gCamera.y) + itembox->unk7C;
    DisplaySprite(s);
}

#elif (GAME == GAME_SA2)
// TODO: figure out how to move this down
static inline void Task_MysteryItemBox_Main0_inline(void)
{
    MysteryItemBox *itemBox = TASK_DATA(gCurTask);
    MapEntity *me = itemBox->base.me;

    if (me->d.sData[0] != (gRandomItemBox & 7)) {
        sub_8086804(itemBox);
    } else {
        if (me->d.sData[1] > (gRandomItemBox >> 4)) {
            sub_8086858(itemBox);
            return;
        }

        if (sub_808693C(itemBox)) {
            sub_8086474(itemBox);
        }

        if (sub_80868F4(itemBox)) {
            SET_MAP_ENTITY_NOT_INITIALIZED(me, itemBox->base.meX);
            TaskDestroy(gCurTask);
            return;
        }

        sub_80868A8(itemBox, 0);
    }
}
#endif

#if 0
static void sub_808623C(void)
{
    MysteryItemBox *itemBox = TASK_DATA(gCurTask);

    SpriteTransform *transform = &itemBox->transform;
    transform->x = itemBox->x - gCamera.x;
    transform->y = itemBox->y - gCamera.y;

    transform->qScaleY += 8;

    if (transform->qScaleY >= 0x100) {
        MapEntity *me;
        MysteryItemBox *itemBox2;
        itemBox->box.frameFlags &= ~SPRITE_FLAG_MASK_ROT_SCALE_ENABLE;
        itemBox->identifier.frameFlags &= ~SPRITE_FLAG_MASK_ROT_SCALE_ENABLE;
        transform->qScaleY = Q(1);
        itemBox->iconOffsetY = Q(0.0);
        gCurTask->main = Task_MysteryItemBox_Main0;

        Task_MysteryItemBox_Main0_inline();
        return;
    }

    itemBox->box.frameFlags &= ~SPRITE_FLAG_MASK_ROT_SCALE;

    itemBox->box.frameFlags |= gUnknown_030054B8;
    itemBox->identifier.frameFlags &= ~SPRITE_FLAG_MASK_ROT_SCALE;
    itemBox->identifier.frameFlags |= gUnknown_030054B8++;

    TransformSprite(&itemBox->box, transform);
    TransformSprite(&itemBox->identifier, transform);
    DisplaySprite(&itemBox->box);
    DisplaySprite(&itemBox->identifier);
}

static inline void Task_MysteryItemBox_Main1_inline(void)
{
    MysteryItemBox *itemBox = TASK_DATA(gCurTask);
    MapEntity *me = itemBox->base.me;

    if (me->d.sData[0] == (gRandomItemBox & 7) && me->d.sData[1] <= (gRandomItemBox >> 4)) {
        me->d.sData[1] = gRandomItemBox >> 4;
        gCurTask->main = sub_808616C;
        return;
    }

    if (sub_80868F4(itemBox) != 0) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, itemBox->base.meX);
        TaskDestroy(gCurTask);
        return;
    }
}

static void sub_808636C(void)
{
    MysteryItemBox *itemBox = TASK_DATA(gCurTask);

    SpriteTransform *transform = &itemBox->transform;
    transform->x = itemBox->x - gCamera.x;
    transform->y = itemBox->y - gCamera.y;

    transform->qScaleY -= 8;

    if (transform->qScaleY < 1) {
        MapEntity *me;
        MysteryItemBox *itemBox2;
        itemBox->box.frameFlags &= ~SPRITE_FLAG_MASK_ROT_SCALE_ENABLE;
        itemBox->identifier.frameFlags &= ~SPRITE_FLAG_MASK_ROT_SCALE_ENABLE;
        transform->qScaleY = Q(1);
        gCurTask->main = Task_MysteryItemBox_Main1;

        Task_MysteryItemBox_Main1_inline();
        return;
    }

    itemBox->box.frameFlags &= ~SPRITE_FLAG_MASK_ROT_SCALE;

    itemBox->box.frameFlags |= gUnknown_030054B8;
    itemBox->identifier.frameFlags &= ~SPRITE_FLAG_MASK_ROT_SCALE;
    itemBox->identifier.frameFlags |= gUnknown_030054B8++;

    TransformSprite(&itemBox->box, transform);
    TransformSprite(&itemBox->identifier, transform);
    DisplaySprite(&itemBox->box);
    DisplaySprite(&itemBox->identifier);
}

static void sub_8086474(MysteryItemBox *itemBox)
{
    RoomEvent_MysteryItemBoxBreak *roomEvent;
    MapEntity *me;
    if (itemBox->unk84 != 1 || gPlayer.moveState & 2) {
        gPlayer.qSpeedAirY = -Q(3); // default itembox-hit y-accel
        gPlayer.charState = CHARSTATE_SPRING_B;
        gPlayer.prevCharState = CHARSTATE_INVALID;
        gPlayer.transition = PLTRANS_UNCURL;
    }

    itemBox->base.me->d.sData[1] += 1;

    m4aSongNumStart(SE_ITEM_BOX_2);
    CreateDustCloud(itemBox->x, itemBox->y);
    itemBox->framesSinceOpened = 0;

    roomEvent = CreateRoomEvent();
    roomEvent->type = ROOMEVENT_TYPE_MYSTERY_ITEMBOX_BREAK;
    roomEvent->x = itemBox->base.regionX;
    roomEvent->y = itemBox->base.regionY;
    roomEvent->id = itemBox->base.id;
    roomEvent->unk4 = itemBox->base.me->d.sData[1];

    gCurTask->main = sub_808665C;
}

static void sub_8086504(MysteryItemBox *itemBox)
{
    switch (itemBox->unk82) {
        case 0: {
            u8 boxVal = sRingBonuses[(u32)PseudoRandom32() % ARRAY_COUNT(sRingBonuses)];
            u16 prevRingCount = gRingCount;
            gRingCount = prevRingCount + boxVal;

            if (!IS_EXTRA_STAGE(gCurrentLevel)) {
                if (Div(gRingCount, 100) != Div(prevRingCount, 100) && gGameMode == GAME_MODE_SINGLE_PLAYER) {
#ifndef COLLECT_RINGS_ROM
                    gNumLives = MIN(gNumLives + 1, 255u);
                    gMusicManagerState.unk3 = 0x10;
#else
                    if (gNumLives < 255) {
                        gNumLives++;
                    }
#endif
                }
            }

            if (gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS && gRingCount > 255) {
                gRingCount = 255;
            }

            m4aSongNumStart(SE_RING_COPY);
            break;
        }
        case 1: {
            RoomEvent_ItemEffect *roomEvent = CreateRoomEvent();

            roomEvent->type = ROOMEVENT_TYPE_ITEMEFFECT_APPLIED;
            roomEvent->effect = 4;
            break;
        }
    }

    itemBox->framesSinceOpened = 0;
    gCurTask->main = sub_80866FC;
}

static void Task_MysteryItemBox_Main0(void)
{
    MysteryItemBox *itemBox = TASK_DATA(gCurTask);
    MapEntity *me = itemBox->base.me;

    if (me->d.sData[0] != (gRandomItemBox & 7)) {
        sub_8086804(itemBox);
    } else {
        if (me->d.sData[1] > (gRandomItemBox >> 4)) {
            sub_8086858(itemBox);
        } else {
            if (sub_808693C(itemBox) != 0) {
                sub_8086474(itemBox);
            }

            if (sub_80868F4(itemBox) != 0) {
                SET_MAP_ENTITY_NOT_INITIALIZED(me, itemBox->base.meX);
                TaskDestroy(gCurTask);
                return;
            } else {
                sub_80868A8(itemBox, 0);
            }
        }
    }
}

static void sub_808665C(void)
{
    MysteryItemBox *itemBox = TASK_DATA(gCurTask);

    if (itemBox->framesSinceOpened++ >= ITEM_ICON_DISPLAY_TIME) {
        sub_8086504(itemBox);
    } else {
        itemBox->iconOffsetY -= Q(1.0);
    }

    sub_80868A8(itemBox, 1);
}

static void sub_80866AC(void)
{
    MysteryItemBox *itemBox = TASK_DATA(gCurTask);

    if (itemBox->framesSinceOpened++ >= ITEM_ICON_DISPLAY_TIME) {
        sub_8086890(itemBox);
    } else {
        itemBox->iconOffsetY -= Q(1.0);
    }

    sub_80868A8(itemBox, 1);
}

static void sub_80866FC(void)
{
    MysteryItemBox *itemBox = TASK_DATA(gCurTask);

    if (itemBox->framesSinceOpened++ >= ITEM_ICON_DISPLAY_DELAY) {
        gCurTask->main = Task_MysteryItemBox_Main1;
        return;
    }

    sub_80868A8(itemBox, 1);
}

static void Task_MysteryItemBox_Main1(void)
{
    MysteryItemBox *itemBox = TASK_DATA(gCurTask);
    MapEntity *me = itemBox->base.me;

    if (me->d.sData[0] == (gRandomItemBox & 7) && me->d.sData[1] <= (gRandomItemBox >> 4)) {
        me->d.sData[1] = gRandomItemBox >> 4;
        gCurTask->main = sub_808616C;
        return;
    }

    if (sub_80868F4(itemBox) != 0) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, itemBox->base.meX);
        TaskDestroy(gCurTask);
        return;
    }
}

static inline void sub_808679C_inline(void)
{
    SpriteTransform *transform;
    MysteryItemBox *itemBox = TASK_DATA(gCurTask);
    itemBox->box.frameFlags |= SPRITE_FLAG_MASK_ROT_SCALE_ENABLE;
    itemBox->identifier.frameFlags |= SPRITE_FLAG_MASK_ROT_SCALE_ENABLE;

    transform = &itemBox->transform;
    transform->rotation = 0;
    transform->qScaleX = Q(1);
    transform->qScaleY = Q(1);
    transform->x = 0;
    transform->y = 0;
    gCurTask->main = sub_808636C;
    sub_808636C();
}

static void sub_808679C(void)
{
    SpriteTransform *transform;
    MysteryItemBox *itemBox = TASK_DATA(gCurTask);
    itemBox->box.frameFlags |= SPRITE_FLAG_MASK_ROT_SCALE_ENABLE;
    itemBox->identifier.frameFlags |= SPRITE_FLAG_MASK_ROT_SCALE_ENABLE;

    transform = &itemBox->transform;
    transform->rotation = 0;
    transform->qScaleX = Q(1);
    transform->qScaleY = Q(1);
    transform->x = 0;
    transform->y = 0;
    gCurTask->main = sub_808636C;
    sub_808636C();
}

static void TaskDestructor_MysteryItemBox(struct Task *t)
{
    MysteryItemBox *itemBox = TASK_DATA(t);
    VramFree(itemBox->box.graphics.dest);
    VramFree(itemBox->identifier.graphics.dest);
}

static void sub_8086804(MysteryItemBox *unused)
{
    gCurTask->main = sub_808679C;
    // Has to be inline :/
    sub_808679C_inline();
}

static void sub_8086858(MysteryItemBox *itemBox)
{
    m4aSongNumStart(SE_ITEM_BOX_2);
    CreateDustCloud(itemBox->x, itemBox->y);
    itemBox->framesSinceOpened = 0;
    gCurTask->main = sub_80866AC;
}

static void sub_8086890(MysteryItemBox *itemBox)
{
    itemBox->framesSinceOpened = 0;
    gCurTask->main = sub_80866FC;
}

static void sub_80868A8(MysteryItemBox *itemBox, u32 p2)
{
    itemBox->box.x = itemBox->x - gCamera.x;
    itemBox->box.y = itemBox->y - gCamera.y;
    itemBox->identifier.x = itemBox->box.x;
    itemBox->identifier.y = itemBox->box.y + I(itemBox->iconOffsetY);

    if (p2 == 0) {
        DisplaySprite(&itemBox->box);
    }

    DisplaySprite(&itemBox->identifier);
}

static bool32 sub_80868F4(MysteryItemBox *itemBox)
{
    s16 x = itemBox->x - gCamera.x;
    s16 y = itemBox->y - gCamera.y;

    if (IS_OUT_OF_CAM_RANGE_2(x, y)) {
        return TRUE;
    }

    return FALSE;
}

static bool32 sub_808693C(MysteryItemBox *itemBox)
{
    if (PLAYER_IS_ALIVE) {
        if (Coll_Player_ItemBox(&itemBox->box, itemBox->x, itemBox->y) != 0) {
            itemBox->unk84 = 1;
            return TRUE;
        } else if (Coll_Player_Entity_HitboxN(&itemBox->box, itemBox->x, itemBox->y, 0, &gPlayer, 0) == 0) {
#ifndef NON_MATCHING
        ret0:
#endif
            return FALSE;
        } else {
            itemBox->unk84 = 0;
            return TRUE;
        }
    } else {
#ifndef NON_MATCHING
        goto ret0;
#else
        return FALSE;
#endif
    }
}
#endif