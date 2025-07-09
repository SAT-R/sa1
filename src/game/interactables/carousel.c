#include "global.h"
#include "core.h"
#include "trig.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/stage/terrain_collision.h"
#include "game/stage/player.h"
#include "game/stage/player_controls.h" // gPlayerControls
#include "game/water_effects.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"

#include "constants/animations.h"
#include "constants/char_states.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s1;
    /* 0x3C */ Sprite s2;
    /* 0x6C */ u16 unk6C;
    /* 0x6E */ u16 unk6E;
    /* 0x70 */ s32 unk70;
    /* 0x74 */ u16 unk74;
    /* 0x74 */ u16 unk76;
    /* 0x78 */ u8 unk78;
    /* 0x79 */ u8 unk79;
} Carousel;

void Task_Carousel(void);
void Task_Carousel2(void);
void TaskDestructor_Carousel(struct Task *t);

void CreateEntity_Carousel(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Carousel, sizeof(Carousel), 0x2000, 0, TaskDestructor_Carousel);
    Carousel *carousel = TASK_DATA(t);
    Sprite *s1 = &carousel->s1;
    Sprite *s2 = &carousel->s2;
    CamCoord worldX, worldY;

    carousel->base.regionX = regionX;
    carousel->base.regionY = regionY;
    carousel->base.me = me;
    carousel->base.meX = me->x;
    carousel->base.id = id;

    carousel->unk70 = 0;
    carousel->unk76 = 0;
    carousel->unk74 = 0;
    carousel->unk6E = 0;
    carousel->unk6C = 0;
    carousel->unk78 = 0;
    carousel->unk79 = 0;

    {
        // // NOTE: Initializing sprite pos to world pos
        s1->x = TO_WORLD_POS(me->x, regionX);
        s1->y = TO_WORLD_POS(me->y, regionY);

        SET_MAP_ENTITY_INITIALIZED(me);

        s1->graphics.dest = ALLOC_TILES(SA1_ANIM_CAROUSEL);
        s1->oamFlags = SPRITE_OAM_ORDER(18);
        s1->graphics.size = 0;
        s1->graphics.anim = SA1_ANIM_CAROUSEL;
        s1->variant = 0;
        s1->animCursor = 0;
        s1->qAnimDelay = Q(0);
        s1->prevVariant = -1;
        s1->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s1->palId = 0;
        s1->hitboxes[0].index = HITBOX_STATE_INACTIVE;
        s1->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    }

    {
        s2->graphics.dest = ALLOC_TILES(SA1_ANIM_CAROUSEL_POLE);
        s2->graphics.anim = SA1_ANIM_CAROUSEL_POLE;
        s2->variant = 0;
        s2->oamFlags = SPRITE_OAM_ORDER(18);
        s2->graphics.size = 0;
        s2->animCursor = 0;
        s2->qAnimDelay = Q(0);
        s2->prevVariant = -1;
        s2->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s2->palId = 0;
        s2->hitboxes[0].index = HITBOX_STATE_INACTIVE;
        s2->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    }

    UpdateSpriteAnimation(s1);
    UpdateSpriteAnimation(s2);
}

// (97.13%) https://decomp.me/scratch/mgWIu
NONMATCH("asm/non_matching/game/interactables/carousel__Task_Carousel.inc", void Task_Carousel(void))
{
    Carousel *carousel = TASK_DATA(gCurTask);
    Sprite *s1 = &carousel->s1;
    Sprite *s2 = &carousel->s2;
    CamCoord worldX, worldY;
    MapEntity *me = carousel->base.me;
    s32 i;

    worldX = TO_WORLD_POS(carousel->base.meX, carousel->base.regionX);
    worldY = TO_WORLD_POS(me->y, carousel->base.regionY);

    s1->x = worldX - gCamera.x;
    s1->y = worldY - gCamera.y;
    s2->x = s1->x;
    s2->y = s1->y;

    if (IS_OUT_OF_DISPLAY_RANGE(worldX, worldY) && IS_OUT_OF_CAM_RANGE(s1->x, s1->y)) {
        // _080857BC
        SET_MAP_ENTITY_NOT_INITIALIZED(me, carousel->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    // _080857DC
    i = 0;
    do {
        if (!(PLAYER(i).moveState & MOVESTATE_DEAD)) {
            if (PLAYER(i).character == CHARACTER_KNUCKLES) {
                // _08085832
                if ((PLAYER(i).charState == CHARSTATE_70) || (PLAYER(i).charState == CHARSTATE_71) || (PLAYER(i).charState == CHARSTATE_72)
                    || (PLAYER(i).charState == CHARSTATE_73) || (PLAYER(i).charState == CHARSTATE_74)
                    || (PLAYER(i).charState == CHARSTATE_75)) {
                    continue;
                }
            }
            // _08085906

            Coll_Player_PlatformCrumbling(s1, worldX, worldY, &PLAYER(i));

            if ((worldX - 8 <= I(PLAYER(i).qWorldX)) && (worldX + 8 >= I(PLAYER(i).qWorldX)) && (worldY - 48 <= I(PLAYER(i).qWorldY))
                && (worldY + 12 >= I(PLAYER(i).qWorldY))) {
                // _080859AA
                s32 tempX;
                SetBit(carousel->unk79, i);

                carousel->unk6E = ABS2(PLAYER(i).qSpeedAirX) << 2;

                carousel->unk6C = (Div(Q(I(PLAYER(i).qWorldX) - worldX + 48) << 1, 0x60) < 0)
                    ? (0x300 - Div(Q(I(PLAYER(i).qWorldX) - worldX + 48) << 1, 0x60)) & 0x3FF
                    : (0x300 + Div(Q(I(PLAYER(i).qWorldX) - worldX + 48) << 1, 0x60)) & 0x3FF;
                // _08085A66

                carousel->unk70 = 0;
                carousel->unk76 = 0;
                carousel->unk74 = 0;
                PLAYER(i).qSpeedAirX = Q(0);
                // _08085A8A

                if (PLAYER(i).qSpeedGround > Q(0)) {
                    carousel->unk78 = 1;
                    PLAYER(i).qSpeedGround = +Q(7.5);
                } else {
                    // _08085AC2
                    carousel->unk78 = 0;
                    PLAYER(i).qSpeedGround = -Q(7.5);
                }
                // _08085ADC
                PLAYER(i).heldInput = 0;
                PLAYER(i).frameInput = 0;
                Player_TransitionCancelFlyingAndBoost(&PLAYER(i));
                PLAYER(i).charState = CHARSTATE_33;
                PLAYER(i).moveState |= MOVESTATE_IA_OVERRIDE;
                m4aSongNumStart(SE_CAROUSEL);
                gCurTask->main = Task_Carousel2;
                PLAYER(i).itemEffect |= PLAYER_ITEM_EFFECT__TELEPORT;
            }
        }
    } while (++i < gNumSingleplayerCharacters);

    DisplaySprite(s1);
    DisplaySprite(s2);
}
END_NONMATCH
