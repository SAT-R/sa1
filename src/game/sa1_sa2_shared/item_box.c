#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "sprite.h"
#include "task.h"
#include "trig.h"
#include "lib/m4a/m4a.h"

#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/dust_cloud.h"

#include "game/entity.h"
#include "game/stage/item_tasks.h"
#include "game/stage/player.h"
#include "game/stage/camera.h"

#include "game/multiplayer/multiplayer_event_mgr.h"
#include "game/multiplayer/mp_player.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/items.h"
#include "constants/player_transitions.h"
#include "constants/songs.h"
#include "constants/zones.h"

#define ITEM_DURATION_INVINCIBILITY ZONE_TIME_TO_INT(0, 20)
#define ITEM_DURATION_SPEED_UP      ZONE_TIME_TO_INT(0, 20)

typedef struct {
    /* 0x00|0x00 */ SpriteBase base;
    /* 0x0C|0x0C */ Sprite s;
    /* 0x3C|0x3C */ Sprite item;
#if (GAME == GAME_SA1)
    /* 0x6C|xxxx */ s16 unk6C;
    /* 0x6E|xxxx */ s16 qUnk6E;
    /* 0x70|xxxx */ u8 unk70;
    /* 0x71|0x76 */ u8 kind;
    /* 0x72|0x77 */ u8 frames;
#elif (GAME == GAME_SA2)
    /* xxxx|0x6C */ CamCoord qX;
    /* xxxx|0x70 */ CamCoord qY;
    /* 0x70|0x74 */ s16 iconOffset;
    /* 0x71|0x76 */ u8 kind;
    /* 0x72|0x77 */ u8 frames;
    /* 0x78 */ bool8 noPlayerBreakRecoil;
#endif
} ItemBox; /* size: 0x7C */

void Task_ItemBoxMain(void);
void TaskDestructor_ItemBox(struct Task *);
#if (GAME == GAME_SA1)
const u8 ItemBox_RingAmountTable[] = { 1, 5, 10, 20, 30, 40 };
#elif (GAME == GAME_SA2)
const u8 ItemBox_RingAmountTable[] = { 1, 5, 10, 30, 50 };
#endif

extern u8 gUnknown_080BB4D8[ITEM__COUNT];

#if (GAME == GAME_SA1)
void CreateEntity_ItemBox(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t;
    ItemBox *itembox;
    Sprite *s, *sTemp;

    if ((gGameMode == GAME_MODE_TIME_ATTACK) && (me->index == ITEM__ONE_UP)) {
        // Don't spawn 1-UPs in Time Attack mode
        SET_MAP_ENTITY_INITIALIZED(me);
        return;
    }

    t = TaskCreate(Task_ItemBoxMain, sizeof(ItemBox), 0x2000, 0, TaskDestructor_ItemBox);
    itembox = TASK_DATA(t);
    s = &itembox->s;

    itembox->base.regionX = regionX;
    itembox->base.regionY = regionY;
    itembox->base.me = me;
    itembox->base.meX = me->x;
    itembox->base.id = id;

    itembox->qUnk6E = Q(0);
    itembox->unk6C = 0;
    itembox->unk70 = 0;
    itembox->kind = me->index;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

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

    sTemp = s;
    s = &itembox->item;
    DmaCopy16(3, sTemp, s, sizeof(*s));
    s->graphics.dest = ALLOC_TILES(SA1_ANIM_ITEMBOX_TYPE);
    s->graphics.anim = SA1_ANIM_ITEMBOX_TYPE;
    s->variant = gUnknown_080BB4D8[itembox->kind];

    if (itembox->kind == ITEM__ONE_UP) {
        s->variant += gSelectedCharacter;
    }

    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->palId = 0;
    s->oamFlags = SPRITE_OAM_ORDER(19);
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    UpdateSpriteAnimation(s);
}
#else
void BreakItemBox(Entity_ItemBox *);
void InitItemBoxGraphics(Entity_ItemBox *, bool32);
void DrawItemBox(Entity_ItemBox *, bool32);
void Task_ItemBoxIconMain_Rising(void);
void Task_ItemBoxIconMain_Idle(void);
void MultiplayerItemBoxBreak(Entity_ItemBox *);
bool32 CheckItemBoxOutOfBounds(Entity_ItemBox *);
bool32 CheckItemBoxPlayerCollision(Entity_ItemBox *);
void Task_ItemBoxIconMain_Rise_MP(void);
void FinishItemBoxRise_MP(Entity_ItemBox *);

const u16 ItemBox_MysteryIcons[13][3] = {
    [ITEM__ONE_UP] = { SA2_ANIM_ITEMBOX_TYPE, 0, 4 },          [ITEM__SHIELD] = { SA2_ANIM_ITEMBOX_TYPE, 5, 4 },
    [ITEM__SHIELD_MAGNETIC] = { SA2_ANIM_ITEMBOX_TYPE, 6, 4 }, [ITEM__INVINCIBILITY] = { SA2_ANIM_ITEMBOX_TYPE, 7, 4 },
    [ITEM__SPEED_UP] = { SA2_ANIM_ITEMBOX_TYPE, 8, 4 },        [ITEM__RINGS_RANDOM] = { SA2_ANIM_ITEMBOX_TYPE, 9, 4 },
    [ITEM__RINGS_5] = { SA2_ANIM_ITEMBOX_TYPE, 10, 4 },        [ITEM__RINGS_10] = { SA2_ANIM_ITEMBOX_TYPE, 11, 4 },
    [ITEM__MP_SWAP] = { SA2_ANIM_ITEMBOX_TYPE, 13, 4 },        [ITEM__MP_CONFUSION] = { SA2_ANIM_ITEMBOX_TYPE, 14, 4 },
    [ITEM__MP_SLOWDOWN] = { SA2_ANIM_ITEMBOX_TYPE, 15, 4 },    [ITEM__MP_ATTACK] = { SA2_ANIM_ITEMBOX_TYPE, 16, 4 },
    [ITEM__MP_ATTACK_2] = { SA2_ANIM_ITEMBOX_TYPE, 12, 4 },
};

const u16 ItemBox_1UpIcons[5][3] = {
    { SA2_ANIM_ITEMBOX_TYPE, CHARACTER_SONIC, 4 }, { SA2_ANIM_ITEMBOX_TYPE, CHARACTER_CREAM, 4 },
    { SA2_ANIM_ITEMBOX_TYPE, CHARACTER_TAILS, 4 }, { SA2_ANIM_ITEMBOX_TYPE, CHARACTER_KNUCKLES, 4 },
    { SA2_ANIM_ITEMBOX_TYPE, CHARACTER_AMY, 4 },
};

const u16 ItemBox_randTypeTable[8] = { ITEM__RINGS_RANDOM,  ITEM__MP_RANDOM, ITEM__SPEED_UP, ITEM__MP_RANDOM,
                                       ITEM__INVINCIBILITY, ITEM__MP_RANDOM, ITEM__RINGS_5,  ITEM__MP_RANDOM };

const u16 ItemBox_subRandTypeTable[] = { ITEM__MP_SWAP, ITEM__MP_CONFUSION, ITEM__MP_SLOWDOWN, ITEM__MP_ATTACK };

#endif