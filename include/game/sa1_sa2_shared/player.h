#ifndef GUARD_SAKIT_PLAYER_H
#define GUARD_SAKIT_PLAYER_H

#include "core.h"
#include "constants/characters.h" // for NUM_CHARACTERS
#include "constants/move_states.h"

#define PLAYER_IS_ALIVE  (!(gPlayer.moveState & MOVESTATE_DEAD))
#define IS_ALIVE(player) (!((player)->moveState & MOVESTATE_DEAD))

typedef struct {
    /*0x00 */ SpriteTransform transform;
    /*0x0C */ Sprite s;
    /*0x3C */ Hitbox reserved; // TODO: Likely 3 hitboxes (Player, Action, Shield)?
} PlayerSpriteInfo; /* size: 0x4C */

// extern PlayerSpriteInfo gPlayerLimbsPSI;
extern PlayerSpriteInfo gPlayerBodyPSI;
extern PlayerSpriteInfo gPartnerBodyPSI;

// Declared beforehand because it's used inside Player struct
struct Player;
typedef void (*PlayerCallback)(struct Player *);

// TODO: Better name.
//       This is used for an apparent around the value Cream uses for flying duration
typedef struct {
    /* 0x80|0xAC */ u8 flags;
    /* 0x81|0xAD */ s8 SA2_LABEL(unkAD);
    /* 0x82|0xAE */ u16 SA2_LABEL(unkAE);
    /* 0x84|0xB0 */ u16 SA2_LABEL(unkB0);
} SonicFlags;

#if (GAME == GAME_SA2)
typedef struct {
    /* 0x80|0xAC */ s16 flyingDuration;
    /* 0x82|0xAE */ u16 SA2_LABEL(unkAE);
    /* 0x93|0xB0 */ s8 SA2_LABEL(unkB0);
} CreamFlags;
#endif

typedef struct {
    /* 0x80|0xAC */ u8 flags;
    /* 0x81|0xAD */ s8 shift;
    /* 0x82|0xAE */ s8 SA2_LABEL(unkAE);
    /* 0x83|0xAF */ s8 SA2_LABEL(unkAF);

    // NOTE: For some reason this is a 4-byte value, while Cream's is a 2-byte
    /* 0x84|0xB0 */ s32 flyingDuration;
} TailsFlags;

typedef struct {
    /* 0x80|0xAC */ u8 flags;
    /* 0x81|0xAD */ s8 shift; // TODO: Name
    /* 0x82|0xAE */ s8 SA2_LABEL(unkAE);
} KnucklesFlags;

typedef struct {
    /* 0xAC */ u8 flags;
} AmyFlags;

#define PLAYER_ITEM_EFFECT__NONE            0x00
#define PLAYER_ITEM_EFFECT__SHIELD_NORMAL   0x01
#define PLAYER_ITEM_EFFECT__INVINCIBILITY   0x02
#define PLAYER_ITEM_EFFECT__SPEED_UP        0x04
#define PLAYER_ITEM_EFFECT__SHIELD_MAGNETIC 0x08
#define PLAYER_ITEM_EFFECT__MP_SLOW_DOWN    0x10
#define PLAYER_ITEM_EFFECT__20              0x20
#define PLAYER_ITEM_EFFECT__CONFUSION       0x40
#define PLAYER_ITEM_EFFECT__TELEPORT        0x80 // The name doesn't seem right...

#define HAS_SHIELD(p) ((p)->itemEffect & (PLAYER_ITEM_EFFECT__SHIELD_MAGNETIC | PLAYER_ITEM_EFFECT__SHIELD_NORMAL))

// Confusion
#define PLAYER_ITEM_EFFECT__40 0x40

// Teleport in SA2... Grinding in SA1?
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

#ifndef NON_MATCHING
// Previously called GET_SP_PLAYER_V0/GET_SP_PLAYER_V1
#define PLAYER_V0(index) ((index == 0) ? gPlayer : gPartner)
#define PLAYER(index)    (((index) != 0) ? gPartner : gPlayer)
#else
// Modern GCC does not accept the pointerless macro as l-value,
// but even though agbcc does, it generates non-matching code, so we have to account for that.
#define PLAYER_V0(index) (*(((index) == 0) ? &gPlayer : &gPartner))
#define PLAYER(index)    (*(((index) != 0) ? &gPartner : &gPlayer))
#endif

#define PLAYER_SPR_INFO(index) ((index != 0) ? &gPartnerBodyPSI : &gPlayerBodyPSI)

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
    /* 0x15 */ u8 SA2_LABEL(unk25);
    /* 0x16 */ s16 qSpindashAccel;
    /* 0x18 */ u8 SA2_LABEL(unk28);
    /* 0x19 */ u8 SA2_LABEL(unk29);
    /* 0x1A */ s16 SA2_LABEL(unk2A);
    /* 0x1C */ s16 timerInvulnerability;
    /* 0x1E */ s16 timerInvincibility;
    /* 0x20 */ s16 timerSpeedup;
    /* 0x22 */ u16 timerConfusion;
    /* 0x24 */ u16 timer24;
    /* 0x26 */ u8 itemEffect;
    /* 0x27 */ u8 layer; // TODO: Double-Check the name!
    /* 0x28 */ Sprite *stoodObj; // TODO: Change name!
    /* 0x2C */ s32 maxSpeed; // TODO: Rename qMaxSpeed,SA2 has 'maxSpeed' and 'topSpeed', which is this?
    /* 0x30 */ s32 acceleration; // TODO: Rename qAcceletation
    /* 0x34 */ s32 deceleration; // TODO: Rename qDeceletation
    /* 0x38 */ u16 heldInput;
    /* 0x3A */ u16 frameInput;
    /* 0x3C */ s8 playerID;
    /* 0x3D */ s8 SA2_LABEL(unk61);
    /* 0x3E */ s8 SA2_LABEL(unk62);
    /* 0x3F */ s8 SA2_LABEL(unk63);
    /* 0x40 */ s8 charState;
    /* 0x41 */ s8 prevCharState;
    /* 0x42 */ u16 anim;
    /* 0x44 */ u16 variant;
    /* 0x46 */ s16 SA2_LABEL(unk72);
    /* 0x48 */ s16 checkPointX; // TODO: Make their type CamCoord ?
    /* 0x4A */ s16 checkPointY; // TODO: Make their type CamCoord ?
    /* 0x4C */ u32 checkpointTime;

    // TODO: Could these be a matrix?
    /* 0x50 */ u16 SA2_LABEL(unk7C);
    /* 0x52 */ u16 SA2_LABEL(unk7E);
    /* 0x54 */ s16 SA2_LABEL(unk80);
    /* 0x56 */ s16 SA2_LABEL(unk82);

    /* 0x58 */ s8 defeatScoreIndex;
    /* 0x59 */ s8 character;
    /* 0x5A */ s8 secondsUntilDrown;
    /* 0x5B */ s8 framesUntilDrownCountDecrement;
    /* 0x5C */ s8 SA2_LABEL(unk88);
    /* 0x5D */ u8 filler5D[0x3];

    /* 0x60 */ struct Task *spriteTask;
    /* 0x64 */ PlayerSpriteInfo *spriteInfoBody; // for character sprites
    /* 0x68 */ PlayerSpriteInfo *spriteInfoLimbs; // SpriteInfo for Tails' tails / Cream's ears, when rolling

#ifdef BUG_FIX
    // NOTE: There's a copy in player.c's 'InitializePlayer' that
    //       copies via a (u32 *) to unk99.
    //
    //       Since it is offset originally, platforms only writing words
    //       aligned (or crash when trying to write to an odd pointer) will
    //       not have the memory initialized properly.
    //
    //       Ironically this is a non-crashing bug on GBA as well.
    /* 0x6C */ s8 ALIGNED(4) SA2_LABEL(unk99)[16];
    /* 0x7C */ u8 SA2_LABEL(unk98); // Multiplayer var. TODO: check sign!
#else
    /* 0x6C */ u8 SA2_LABEL(unk98); // Multiplayer var. TODO: check sign!
    /* 0x6D */ s8 SA2_LABEL(unk99)[16];
#endif

    /* 0x7D */ u8 filler7D[0x3];

    union {
        SonicFlags sf;
#if (GAME == GAME_SA2)
        CreamFlags cf;
#endif
        TailsFlags tf;
        KnucklesFlags kf;
        AmyFlags af;
    } w;

    /* 0x88 */ u8 filler88[0x8];
} Player;

extern s32 sa2__sub_8022F58(u8 param0, Player *p);

extern Player gPlayer;
#if (GAME == GAME_SA1)
// "Cheat Code" Tails
extern Player gPartner;
#endif

extern const AnimId gPlayerCharacterIdleAnims[NUM_CHARACTERS];

#endif // GUARD_SAKIT_PLAYER_H
