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

// extern PlayerSpriteInfo gUnknown_03005AA0;
extern PlayerSpriteInfo sa2__gUnknown_03005AF0;

// Declared beforehand because it's used inside Player struct
struct Player;
typedef void (*PlayerCallback)(struct Player *);

#define PLAYER_ITEM_EFFECT__NONE            0x00
#define PLAYER_ITEM_EFFECT__SHIELD_NORMAL   0x01
#define PLAYER_ITEM_EFFECT__INVINCIBILITY   0x02
#define PLAYER_ITEM_EFFECT__SPEED_UP        0x04
#define PLAYER_ITEM_EFFECT__SHIELD_MAGNETIC 0x08
#define PLAYER_ITEM_EFFECT__MP_SLOW_DOWN    0x10
#define PLAYER_ITEM_EFFECT__20              0x20
#define PLAYER_ITEM_EFFECT__CONFUSION       0x40
#define PLAYER_ITEM_EFFECT__TELEPORT        0x80

#define HAS_SHIELD(p) ((p)->itemEffect & (PLAYER_ITEM_EFFECT__SHIELD_MAGNETIC | PLAYER_ITEM_EFFECT__SHIELD_NORMAL))

// Confusion
#define PLAYER_ITEM_EFFECT__40 0x40

// Teleport
#define PLAYER_ITEM_EFFECT__80 0x80

#define PLAYER_LAYER__FRONT 0x00
#define PLAYER_LAYER__BACK  0x01
#define PLAYER_LAYER__MASK  0x01
#define PLAYER_LAYER__80    0x80

#define PLAYER_1 0
#define PLAYER_2 1
#define PLAYER_3 2
#define PLAYER_4 3

#if (GAME == GAME_SA1)
#define GET_SP_PLAYER_V0(index) ((index == 0) ? &gPlayer : &gPartner)
#define GET_SP_PLAYER_V1(index) ((index != 0) ? &gPartner : &gPlayer)
#elif (GAME == GAME_SA2)
// NOTE: Ignores index, in SA2 you only ever have 1 player char in single player mode
#define GET_SP_PLAYER_V0(index) (&gPlayer)
#define GET_SP_PLAYER_V1(index) (&gPlayer)
#elif (GAME == GAME_SA3)
#define GET_SP_PLAYER_V0(index) ((index == PLAYER_1) ? &gPlayers[gStageData.playerIndex] : &gPlayers[p->charFlags.partnerIndex])
#define GET_SP_PLAYER_V1(index) ((index != PLAYER_1) ? &gPlayers[p->charFlags.partnerIndex] : &gPlayers[gStageData.playerIndex])
#endif

typedef struct Player {
    /* 0x00 */ s32 qWorldX;
    /* 0x04 */ s32 qWorldY;
    /* 0x08 */ s16 qSpeedAirX;
    /* 0x0A */ s16 qSpeedAirY;
    /* 0x0C */ s16 qSpeedGround;
    /* 0x0E */ s8 spriteOffsetX;
    /* 0x0F */ s8 spriteOffsetY;

    // set/compare to values in "include/constants/move_states.h"
    /* 0x10 */ u32 moveState;
    /* 0x14 */ u8 rotation;
    /* 0x15 */ u8 unk15;
    /* 0x16 */ s16 spindashAccel;
    /* 0x18 */ u8 sa2__unk28;
    /* 0x19 */ u8 sa2__unk29;
    /* 0x1A */ s16 sa2__unk2A;
    /* 0x1C */ s16 timerInvulnerability;
    /* 0x1E */ s16 timerInvincibility;
    /* 0x20 */ u16 timerSpeedup;
    /* 0x22 */ u16 timerConfusion;
    /* 0x24 */ u8 filler24[0x2];
    /* 0x26 */ u8 itemEffect;
    /* 0x27 */ u8 layer; // TODO: Double-Check the name!
    /* 0x28 */ u8 filler28[0x10];
    /* 0x38 */ u16 heldInput;
    /* 0x3A */ u16 frameInput;
    /* 0x3C */ s8 sa2__unk60;
    /* 0x3D */ u8 sa2__unk61;
    /* 0x3E */ u8 sa2__unk62;
    /* 0x3F */ u8 unk3F;
    /* 0x40 */ s8 charState;
    /* 0x41 */ s8 prevCharState;
    /* 0x42 */ u16 anim;
    /* 0x44 */ u16 variant;
    /* 0x46 */ u8 filler46[0x2];
    /* 0x48 */ u16 unk48; // Special Stage-related. random?
    /* 0x4A */ u8 filler4A[0xF];

    /* 0x59 */ s8 character;
    /* 0x5B */ u8 filler5B[0x5];

    /* 0x60 */ struct Task *spriteTask;
    /* 0x64 */ PlayerSpriteInfo *spriteInfoBody; // for character sprites
    /* 0x68 */ PlayerSpriteInfo *spriteInfoLimbs; // SpriteInfo for Tails' tails / Cream's ears, when rolling
} Player;

extern s32 sa2__sub_8022F58(u8 param0, Player *p);

extern Player gPlayer;
#if (GAME == GAME_SA1)
// "Cheat Code" Tails
extern Player gPartner;
#endif

extern const AnimId gPlayerCharacterIdleAnims[NUM_CHARACTERS];

#endif // GUARD_SAKIT_PLAYER_H
