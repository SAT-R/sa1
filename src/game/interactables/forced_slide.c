#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/stage/player_controls.h"
#include "game/stage/player.h"
#include "game/stage/terrain_collision.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u8 unk3C;
    /* 0x3D */ u8 unk3D[NUM_SINGLEPLAYER_CHARS_MAX];
} ForcedSlide;

const AnimId ALIGNED(4) gAnimSlideSplashes[NUM_LEVEL_IDS] = {
    [LEVEL_INDEX(ZONE_1, ACT_1)] = SA1_ANIM_WATER_SLIDE_SPLASH,
    [LEVEL_INDEX(ZONE_1, ACT_2)] = SA1_ANIM_WATER_SLIDE_SPLASH,
    [LEVEL_INDEX(ZONE_2, ACT_1)] = SA1_ANIM_WATER_SLIDE_SPLASH,
    [LEVEL_INDEX(ZONE_2, ACT_2)] = SA1_ANIM_WATER_SLIDE_SPLASH,
    [LEVEL_INDEX(ZONE_3, ACT_1)] = SA1_ANIM_WATER_SLIDE_SPLASH,
    [LEVEL_INDEX(ZONE_3, ACT_2)] = SA1_ANIM_WATER_SLIDE_SPLASH,
    [LEVEL_INDEX(ZONE_4, ACT_1)] = SA1_ANIM_ICE_SLIDE_SPLASH,
    [LEVEL_INDEX(ZONE_4, ACT_2)] = SA1_ANIM_ICE_SLIDE_SPLASH,
    [LEVEL_INDEX(ZONE_5, ACT_1)] = SA1_ANIM_MUD_SLIDE_SPLASH,
    [LEVEL_INDEX(ZONE_5, ACT_2)] = SA1_ANIM_MUD_SLIDE_SPLASH,
    [LEVEL_INDEX(ZONE_6, ACT_1)] = SA1_ANIM_WATER_SLIDE_SPLASH,
    [LEVEL_INDEX(ZONE_6, ACT_2)] = SA1_ANIM_WATER_SLIDE_SPLASH,
    [LEVEL_INDEX(ZONE_7, ACT_1)] = SA1_ANIM_WATER_SLIDE_SPLASH,
    [LEVEL_INDEX(ZONE_7, ACT_2)] = SA1_ANIM_WATER_SLIDE_SPLASH,
    [ACT_CHAO_HUNT_A] = SA1_ANIM_WATER_SLIDE_SPLASH,
    [ACT_CHAO_HUNT_B] = SA1_ANIM_WATER_SLIDE_SPLASH,
    [ACT_CHAO_HUNT_C] = SA1_ANIM_WATER_SLIDE_SPLASH,
    [ACT_CHAO_HUNT_D] = SA1_ANIM_WATER_SLIDE_SPLASH,
};

void Task_ForcedSlide(void);
void TaskDestructor_ForcedSlide(struct Task *t);

void CreateEntity_ForcedSlide(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_ForcedSlide, sizeof(ForcedSlide), me->d.sData[1] + 0x1000, 0, TaskDestructor_ForcedSlide);
    ForcedSlide *slide = TASK_DATA(t);
    Sprite *s = &slide->s;

    slide->base.regionX = regionX;
    slide->base.regionY = regionY;
    slide->base.me = me;
    slide->base.meX = me->x;

    slide->unk3C = me->d.sData[0];
    slide->unk3D[PLAYER_1] = 0;
    slide->unk3D[PLAYER_2] = 0;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    // TODO: Automatically allocate enough for any water splash in gAnimSlideSplashes
    s->graphics.dest = ALLOC_TILES(SA1_ANIM_WATER_SLIDE_SPLASH);
    s->graphics.anim = gAnimSlideSplashes[gCurrentLevel];
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(3);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    if (slide->unk3C != 0) {
        s->frameFlags |= SPRITE_FLAG(X_FLIP, 1);
    }
}

void Task_ForcedSlide(void)
{
    ForcedSlide *slide;
    Sprite *s;
    CamCoord x;
    CamCoord y;
    MapEntity *me;
    u32 sp14;
    s32 i;

    sp14 = ((1 << 1) | (1 << 0));
    slide = TASK_DATA(gCurTask);
    s = &slide->s;
    me = slide->base.me;

    // x|y = world-coords
    x = TO_WORLD_POS(slide->base.meX, slide->base.regionX);
    y = TO_WORLD_POS(me->y, slide->base.regionY);

    i = 0;
    do {
        if (i != 0) {
            if (gPartner.moveState & MOVESTATE_DEAD)
                continue;
        } else {
            if (gPlayer.moveState & MOVESTATE_DEAD)
                continue;
        }

        if ((x <= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX))) && (x + me->d.uData[2] * TILE_WIDTH >= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX)))
            && (y <= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY)))
            && (y + me->d.uData[3] * TILE_WIDTH >= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY)))) {
            // _08078574
            if (slide->unk3D[i] == 0) {
                s32 res;

                res = SA2_LABEL(sub_801F07C)(I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY)), I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX)),
                                             GET_SP_PLAYER_MEMBER_V1(i, layer), +8, 0, SA2_LABEL(sub_801EE64));

                if (res > 3) {
                    goto set_sp14;
                    continue;
                }
            }
            // _080785C2

            if (!(GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_STOOD_ON_OBJ)) {
                if (!(GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_IN_AIR)) {
                    // _080785F4
                    if (slide->unk3D[i] == 0 && LEVEL_TO_ZONE(gCurrentLevel) == ZONE_5) {
                        m4aSongNumStart(SE_201);
                    }

                    slide->unk3D[i] = 1;
                    Player_TransitionCancelFlyingAndBoost(GET_SP_PLAYER_V1(i));
                    GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_STOOD_ON_OBJ;
                    GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_100;
                    GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_4;
                    GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_FLIP_WITH_MOVE_DIR;
                    GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IGNORE_INPUT;
                    GET_SP_PLAYER_MEMBER_V1(i, heldInput) = 0;
                    GET_SP_PLAYER_MEMBER_V1(i, frameInput) = 0;

                    if (slide->unk3C != 0) {
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_FACING_LEFT;
                        GET_SP_PLAYER_MEMBER_V1(i, qSpeedGround) = -Q(4);
                        GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = -Q(4);
                    } else {
                        // _0807871A
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_FACING_LEFT;
                        GET_SP_PLAYER_MEMBER_V1(i, qSpeedGround) = +Q(4);
                        GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = +Q(4);
                    }
                    // _08078758

                    GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) = +Q(0);
                    GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_HIT_AIR;
                    PLAYERFN_CHANGE_SHIFT_OFFSETS(GET_SP_PLAYER_V1(i), 6, 14);

                    s->x = I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX)) - gCamera.x;
                    s->y = I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY)) - gCamera.y;

                    UpdateSpriteAnimation(s);
                    DisplaySprite(s);
                    // continue;
                } else {
                    // _080787EE
                    if ((slide->unk3D[i] != 0) && (--slide->unk3D[i] == 0)) {
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_IGNORE_INPUT;
                        GET_SP_PLAYER_MEMBER_V1(i, heldInput) |= (gPlayerControls.jump | gPlayerControls.attack);
                    }
                }
            }
        set_sp14:

            sp14 &= ~(1 << i);
        } else {
            if (slide->unk3D[i] == 1) {
                m4aMPlayFadeOut(&gMPlayInfo_SE2, 4);
                slide->unk3D[i] = 0;

                GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_IGNORE_INPUT;
                GET_SP_PLAYER_MEMBER_V1(i, heldInput) |= (gPlayerControls.jump | gPlayerControls.attack);
            } else if (slide->unk3D[i] > 0) {
                slide->unk3D[i]--;
            }
        }

    } while (++i < gNumSingleplayerCharacters);
    // _080788C0

    if (sp14 & ((1 << NUM_SINGLEPLAYER_CHARS_MAX) - 1)) {
        return;
    }

    x = x - gCamera.x;
    y = y - gCamera.y;

    // x|y = screen-coords

    if (IS_OUT_OF_CAM_RANGE(x, y)) {
        // _0807890C
        s32 i = 0;
        do {
            if (slide->unk3D[i] != 0) {
                m4aSongNumStop(SE_201);

                slide->unk3D[i] = 0;

                GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_IGNORE_INPUT;
                GET_SP_PLAYER_MEMBER_V1(i, heldInput) |= (gPlayerControls.jump | gPlayerControls.attack);
            }
        } while (++i < gNumSingleplayerCharacters);

        SET_MAP_ENTITY_NOT_INITIALIZED(me, slide->base.meX);
        TaskDestroy(gCurTask);
        return;
    }
}

void TaskDestructor_ForcedSlide(struct Task *t)
{
    ForcedSlide *slide = TASK_DATA(t);
    VramFree(slide->s.graphics.dest);
}