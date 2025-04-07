#ifndef GUARD_SA1_IA_PARTY_BALLOON_H
#define GUARD_SA1_IA_PARTY_BALLOON_H

#include "core.h"
#include "game/entity.h"

typedef enum EPartyBallonColors {
    PBCOLOR_BLUE,
    PBCOLOR_RED,
    PBCOLOR_YELLOW,
} EPartyBallonColors;

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ s32 unk3C;
    /* 0x40 */ u8 unk40;
} PartyBalloon;

#endif // GUARD_SA1_IA_PARTY_BALLOON_H
