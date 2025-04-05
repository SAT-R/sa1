#include "game/sa1_sa2_shared/camera.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/sa1_sa2_shared/player.h"

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
