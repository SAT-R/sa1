#include "global.h"
#include "rect.h"
#include "sprite.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/dust_cloud.h"
#include "game/sa1_sa2_shared/entities_manager.h"
#include "game/sa1_sa2_shared/player.h"

// TODO: Merge this with collision.c !

#if (GAME == GAME_SA1)
u32 CheckRectCollision_SpritePlayer(Sprite *s, s16 sx, s16 sy, Player *p, struct Rect8 *rectPlayer)
#elif (GAME == GAME_SA2)
u32 CheckRectCollision_SpritePlayer(Sprite *s, s32 sx, s32 sy, Player *p, struct Rect8 *rectPlayer)
#endif
{
    u32 result = 0;

    if (!HITBOX_IS_ACTIVE(s->hitboxes[0]) || !IS_ALIVE(p)) {
        return result;
    }

    if (RECT_COLLISION(sx, sy, &s->hitboxes[0].b, I(p->qWorldX), I(p->qWorldY), rectPlayer)) {
        result |= COLL_FLAG_80000;
    }

    return result;
}
