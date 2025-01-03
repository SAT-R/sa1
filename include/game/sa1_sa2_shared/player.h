#ifndef GUARD_SAKIT_PLAYER_H
#define GUARD_SAKIT_PLAYER_H

#include "core.h"
#include "constants/characters.h" // for NUM_CHARACTERS
#include "constants/move_states.h"

#define PLAYER_IS_ALIVE  (!(gPlayer.moveState & MOVESTATE_DEAD))
#define IS_ALIVE(player) (!(player->moveState & MOVESTATE_DEAD))

typedef struct {
    /*0x00 */ SpriteTransform transform;
    /*0x0C */ Sprite s;
    /*0x3C */ Hitbox reserved; // TODO: Maybe 3 hitboxes (Player, Action, Shield)?
} PlayerSpriteInfo; /* size: 0x44 */

// Declared beforehand because it's used inside Player struct
struct Player;
typedef void (*PlayerCallback)(struct Player *);

// TODO: Double-check these for SA1!
#define PLAYER_ITEM_EFFECT__NONE            0x00
#define PLAYER_ITEM_EFFECT__SHIELD_NORMAL   0x01
#define PLAYER_ITEM_EFFECT__INVINCIBILITY   0x02
#define PLAYER_ITEM_EFFECT__SPEED_UP        0x04
#define PLAYER_ITEM_EFFECT__SHIELD_MAGNETIC 0x08
#define PLAYER_ITEM_EFFECT__10              0x10
#define PLAYER_ITEM_EFFECT__20              0x20

// Confusion
#define PLAYER_ITEM_EFFECT__40 0x40

// Teleport
#define PLAYER_ITEM_EFFECT__80 0x80

#define FLAG_PLAYER_x38__LAYER_FOREGROUND 0x00
#define FLAG_PLAYER_x38__LAYER_BACKGROUND 0x01
#define FLAG_PLAYER_x38__80               0x80

typedef struct Player {
    /* 0x00 */ s32 qWorldX;
    /* 0x04 */ s32 qWorldY;
    /* 0x08 */ u8 filler8[0x6];
    /* 0x0E */ s8 spriteOffsetX;
    /* 0x0F */ s8 spriteOffsetY;

    // set/compare to values in "include/constants/move_states.h"
    /* 0x10 */ u32 moveState;
    /* 0x14 */ u8 filler14[0x12];

    /* 0x26 */ u8 itemEffect;
    /* 0x27 */ u8 layer; // TODO: Double-Check the name!
    /* 0x28 */ u8 filler28[0x18];

    /* 0x40 */ s8 charState;
    /* 0x41 */ s8 prevCharState;
    /* 0x42 */ u8 anim;
    /* 0x43 */ u8 filler43[0x5];
    /* 0x48 */ u16 unk48; // Special Stage-related. random?
    /* 0x4A */ u8 filler4A[0xF];

    /* 0x59 */ s8 character;
    /* 0x5B */ u8 filler5B[0x5];

    /* 0x60 */ struct Task *spriteTask;
    /* 0x64 */ PlayerSpriteInfo *sa2__unk90;
} Player;

extern Player gPlayer;
#if (GAME == GAME_SA1)
extern Player gPartner;
#endif

extern const AnimId gPlayerCharacterIdleAnims[NUM_CHARACTERS];

#endif // GUARD_SAKIT_PLAYER_H
