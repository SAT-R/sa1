#include "game/sa1_sa2_shared/camera.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/dust_cloud.h"
#include "game/sa1_sa2_shared/entities_manager.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/sa1_sa2_shared/player.h"
#include "game/stage/trapped_animals.h"
#include "game/multiplayer/multiplayer_event_mgr.h"
#include "game/entity.h"

extern void SA2_LABEL(sub_8021BE0)(Player *p);

// sa2__sub_800C060
// (86.62%) https://decomp.me/scratch/icjnK
NONMATCH("asm/non_matching/game/sa1_sa2_shared/collision__sa2__800C060.inc",
         u32 sub_800B2BC(Sprite *s, CamCoord sx, CamCoord sy, Player *p))
{
    s8 rectPlayer[4] = { -p->spriteOffsetX, -p->spriteOffsetY, +p->spriteOffsetX, +p->spriteOffsetY };

    u32 result = COLL_NONE;
    bool32 ip = FALSE;

    if (!HITBOX_IS_ACTIVE(s->hitboxes[0]) || !IS_ALIVE(p)) {
        return result;
    }

    if ((p->moveState & MOVESTATE_STOOD_ON_OBJ) && (p->stoodObj == s)) {
        p->moveState &= ~MOVESTATE_STOOD_ON_OBJ;
        ip = TRUE;
    }

    if (RECT_COLLISION_2(sx, sy, &s->hitboxes[0].b, p->qWorldX, p->qWorldY, (struct Rect8 *)rectPlayer) && (p->qSpeedAirY >= 0)) {

#ifndef NON_MATCHING
        register s32 y asm("r1");
#else
        s32 y;
#endif

        rectPlayer[1] = -p->spriteOffsetY;
        rectPlayer[3] = +p->spriteOffsetY;
        p->moveState |= MOVESTATE_STOOD_ON_OBJ;
        result |= COLL_FLAG_8;

#if (GAME == GAME_SA1)
        if (((p->character != CHARACTER_KNUCKLES) || (p->SA2_LABEL(unk61) != 1 && p->SA2_LABEL(unk61) != 3))
            && ((p->character != CHARACTER_AMY) || !(p->moveState & MOVESTATE_4000000) || (p->SA2_LABEL(unk62) == 0))) {
            p->moveState &= ~MOVESTATE_IN_AIR;
        }

        if (!ip) {
            if ((p->character != CHARACTER_KNUCKLES) || ((p->SA2_LABEL(unk61) != 1) && (p->SA2_LABEL(unk61) != 3))) {
                SA2_LABEL(sub_8021BE0)(p);
                p->qSpeedGround = p->qSpeedAirX;
            }
            p->rotation = 0;
        }
#endif

#if (GAME == GAME_SA2)
        if (!ip) {
            p->rotation = 0;
        }
#endif

        p->stoodObj = s;
        p->qSpeedAirY = 0;

        if (!GRAVITY_IS_INVERTED) {
            y = s->hitboxes[0].b.top;
            y += sy;
            y -= rectPlayer[3];
        } else {
            y = s->hitboxes[0].b.bottom;
            y += sy;
            y += rectPlayer[3];
        }
        y = Q(y);
#ifdef NON_MATCHING
        asm("" : "=r"(p->qWorldY) : "r"(~0xFF), "r"(p->qWorldY), "r"(y));
#else
        p->qWorldY = Q_24_8_FRAC(p->qWorldY) + (y);
#endif
    } else if (ip && !(p->moveState & MOVESTATE_STOOD_ON_OBJ)) {
        p->moveState &= ~MOVESTATE_20;
        p->moveState |= MOVESTATE_IN_AIR;
    }

    return result;
}
END_NONMATCH

// TODO: Simplify and merge SA1 and SA2 versions!
#if (GAME == GAME_SA1)
bool32 Coll_Player_Enemy_Attack(Sprite *s, CamCoord sx, CamCoord sy)
#else
bool32 Coll_Player_Enemy_Attack(Sprite *s, CamCoord sx, CamCoord sy, u8 hbIndex)
#endif
{
#if (GAME == GAME_SA1)
    Player *player;
    Sprite *sprPlayer;

    bool32 dead;
    u32 movestate;
    EnemyBase *eb;
    s32 i;
    const int hbIndex = 0;
#elif (GAME == GAME_SA2)
    Player *player = &gPlayer;
    Sprite *sprPlayer = &player->spriteInfoBody->s;

    bool32 dead;
    u32 movestate;
    EnemyBase *eb;

    if (!HITBOX_IS_ACTIVE(s->hitboxes[hbIndex])) {
        return FALSE;
    }

    eb = TASK_DATA(gCurTask);
    dead = player->moveState & MOVESTATE_DEAD;
    movestate = player->moveState;
#endif

#if (GAME == GAME_SA1)
    i = 0;
    if (!HITBOX_IS_ACTIVE(s->hitboxes[hbIndex])) {
        return FALSE;
    }

    i = 0;
    eb = TASK_DATA(gCurTask);
    do {
        player = GET_SP_PLAYER_V1(i);
        sprPlayer = &player->spriteInfoBody->s;
#endif

        if (!(player->moveState & MOVESTATE_DEAD)) {
            if (IS_MULTI_PLAYER && ((s8)eb->base.me->x == MAP_ENTITY_STATE_MINUS_THREE)) {
                CreateDustCloud(sx, sy);
                CreateTrappedAnimal(sx, sy);
                return TRUE;
            }

#if (GAME == GAME_SA2)
            if (!(player->moveState & MOVESTATE_IN_SCRIPTED))
#endif
            {
                if (HITBOX_IS_ACTIVE(sprPlayer->hitboxes[1])) {
                    if (HB_COLLISION(sx, sy, s->hitboxes[hbIndex].b, I(player->qWorldX), I(player->qWorldY), sprPlayer->hitboxes[1].b)) {
                        if (IS_MULTI_PLAYER) {
                            RoomEvent_EnemyDestroy *roomEvent = CreateRoomEvent();
                            roomEvent->type = ROOMEVENT_TYPE_ENEMY_DESTROYED;
                            roomEvent->x = eb->base.regionX;
                            roomEvent->y = eb->base.regionY;
                            roomEvent->id = eb->base.id;
                        }

#if (GAME == GAME_SA1)
                        if (player->qSpeedAirY > 0) {
                            player->qSpeedAirY = -player->qSpeedAirY;
                        }
#else
                    Coll_Player_Enemy_AdjustSpeed(player);
#endif

                        CreateDustCloud(sx, sy);
                        CreateTrappedAnimal(sx, sy);
                        CreateEnemyDefeatScoreAndManageLives(sx, sy);

                        return TRUE;
                    }
                }

                if (HITBOX_IS_ACTIVE(sprPlayer->hitboxes[0])
                    && (HB_COLLISION(sx, sy, s->hitboxes[hbIndex].b, I(player->qWorldX), I(player->qWorldY), sprPlayer->hitboxes[0].b))) {
#if (GAME == GAME_SA1)
                    if (player->itemEffect & PLAYER_ITEM_EFFECT__INVINCIBILITY) {
                        if (IS_MULTI_PLAYER) {
                            RoomEvent_EnemyDestroy *roomEvent = CreateRoomEvent();
                            roomEvent->type = ROOMEVENT_TYPE_ENEMY_DESTROYED;
                            roomEvent->x = eb->base.regionX;
                            roomEvent->y = eb->base.regionY;
                            roomEvent->id = eb->base.id;
                        }

                        CreateDustCloud(sx, sy);
                        CreateTrappedAnimal(sx, sy);
                        CreateEnemyDefeatScoreAndManageLives(sx, sy);

                        return TRUE;
                    } else {
                        Coll_DamagePlayer(player);
                    }
#elif (GAME == GAME_SA2)
                if (!(player->itemEffect & PLAYER_ITEM_EFFECT__INVINCIBILITY)) {
                    Coll_DamagePlayer(player);
                } else {
                    if (IS_MULTI_PLAYER) {
                        RoomEvent_EnemyDestroy *roomEvent = CreateRoomEvent();
                        roomEvent->type = ROOMEVENT_TYPE_ENEMY_DESTROYED;
                        roomEvent->x = eb->base.regionX;
                        roomEvent->y = eb->base.regionY;
                        roomEvent->id = eb->base.id;
                    }

                    CreateDustCloud(sx, sy);
                    CreateTrappedAnimal(sx, sy);
                    CreateEnemyDefeatScoreAndManageLives(sx, sy);

                    return TRUE;
                }
#endif
                }
            }

#if (GAME == GAME_SA2)
            if (gCheese != NULL) {
                Cheese *cheese = gCheese;
                if (cheese->s.hitboxes[1].index != -1
                    && ((HB_COLLISION(sx, sy, s->hitboxes[hbIndex], I(cheese->posX), I(cheese->posY), cheese->s.hitboxes[1])))) {
                    if (IS_MULTI_PLAYER) {
                        RoomEvent_EnemyDestroy *roomEvent = CreateRoomEvent();
                        roomEvent->type = ROOMEVENT_TYPE_ENEMY_DESTROYED;
                        roomEvent->x = eb->base.regionX;
                        roomEvent->y = eb->base.regionY;
                        roomEvent->id = eb->base.id;
                    }

                    CreateDustCloud(sx, sy);
                    CreateTrappedAnimal(sx, sy);
                    CreateEnemyDefeatScoreAndManageLives(sx, sy);

                    return TRUE;
                }
            }
#endif
        }
#if (GAME == GAME_SA1)
    } while (++i < gNumSingleplayerCharacters);
#endif
    return FALSE;
}

// TODO: Simplify and merge SA1 and SA2 versions!
bool32 Coll_Player_Projectile(Sprite *s, CamCoord sx, CamCoord sy)
{
    Player *p;
    Sprite *sprPlayer;
    bool32 result = FALSE;
    s32 i;
    const s32 hbIndex = 0;

#if (GAME == GAME_SA1)
    if (HITBOX_IS_ACTIVE(s->hitboxes[hbIndex])) {
#elif (GAME == GAME_SA2)
    if (gPlayer.moveState & MOVESTATE_IN_SCRIPTED) {
        return result;
    }
#endif

        i = 0;
        do {
            p = GET_SP_PLAYER_V1(i);
            // if (HITBOX_IS_ACTIVE(s->hitboxes[hbIndex]))
            {
                sprPlayer = &p->spriteInfoBody->s;

                if (!IS_ALIVE(p) || !HITBOX_IS_ACTIVE(sprPlayer->hitboxes[hbIndex])) {
                    continue;
                }

                if ((HB_COLLISION(sx, sy, s->hitboxes[0].b, I(p->qWorldX), I(p->qWorldY), sprPlayer->hitboxes[0].b))) {
                    Coll_DamagePlayer(p);
                    result = TRUE;
                }
            }
        } while (++i < gNumSingleplayerCharacters);
    }

    return result;
}

// Based on SA2's:
// u32 Coll_Player_Enemy(Sprite *s, CamCoord sx, CamCoord sy, Player *p)
u32 Coll_Player_Boss(Sprite *s, CamCoord sx, CamCoord sy, Player *p)
{
    PlayerSpriteInfo *psi = p->spriteInfoBody;
    Sprite *sprPlayer = &psi->s;
#if (GAME == GAME_SA1)
    const int hbIndex = 0;
#endif

    if (HITBOX_IS_ACTIVE(s->hitboxes[0])) {
        if (IS_ALIVE(p)) {
            if (HITBOX_IS_ACTIVE(sprPlayer->hitboxes[1])
                && HB_COLLISION(sx, sy, s->hitboxes[hbIndex].b, I(p->qWorldX), I(p->qWorldY), sprPlayer->hitboxes[1].b)) {
                if (p->character != CHARACTER_AMY) {
                    p->qSpeedAirX = -p->qSpeedAirX;
                    p->qSpeedAirY = -p->qSpeedAirY;
                } else {
                    p->qSpeedAirX >>= 1;
                    p->qSpeedAirY = -p->qSpeedAirY;
                }

                return 1;
            }

            if ((HITBOX_IS_ACTIVE(sprPlayer->hitboxes[0]))) {
                if (HB_COLLISION(sx, sy, s->hitboxes[hbIndex].b, I(p->qWorldX), I(p->qWorldY), sprPlayer->hitboxes[0].b)) {
                    Coll_DamagePlayer(p);
                    return 2;
                }
            }
        }
    }

    return FALSE;
}
