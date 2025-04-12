#include "global.h"
#include "rect.h"
#include "sprite.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/dust_cloud.h"
#include "game/sa1_sa2_shared/entities_manager.h"
#include "game/sa1_sa2_shared/player.h"

// TODO: Merge this with collision.c !
u32 sub_80096B0(Sprite *s, CamCoord x, CamCoord y, Player *p)
{
    s8 rectOffset[4] = { -(p->spriteOffsetX + 5), (1 - p->spriteOffsetY), (p->spriteOffsetX + 5), (p->spriteOffsetY - 1) };
    s8 rectPlayer[4] = { -p->spriteOffsetX, -p->spriteOffsetY, +p->spriteOffsetX, +p->spriteOffsetY };
    u32 result = COLL_NONE;
    bool32 playerIsInAir;
    bool32 sb = FALSE;

    if (!HITBOX_IS_ACTIVE(s->hitboxes[0]) || !IS_ALIVE(p)) {
        return result;
    }

    playerIsInAir = p->moveState & MOVESTATE_IN_AIR;
    if ((p->moveState & MOVESTATE_STOOD_ON_OBJ) && (p->stoodObj == s)) {
        p->moveState &= ~MOVESTATE_STOOD_ON_OBJ;
        playerIsInAir |= MOVESTATE_IN_AIR;
        sb = TRUE;
    }

    if (!playerIsInAir || !sub_800C934(s, x, y, (Rect8 *)&rectPlayer[0], sb, p, &result)) {
        if (!sub_800CBBC(s, x, y, (Rect8 *)&rectOffset, sb, p, &result)) {
            if (!sub_800C934(s, x, y, (Rect8 *)&rectPlayer[0], sb, p, &result)) {
                if (sb && !(p->moveState & MOVESTATE_STOOD_ON_OBJ)) {
                    p->moveState &= ~MOVESTATE_20;
                    p->moveState |= MOVESTATE_IN_AIR;
                }
            }
        }
    }

    return result;
}
