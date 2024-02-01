#ifndef GUARD_SAKIT_PLAYER_H
#define GUARD_SAKIT_PLAYER_H

#include "core.h"
#include "constants/move_states.h"

#define PLAYER_IS_ALIVE  (!(gPlayer.moveState & MOVESTATE_DEAD))
#define IS_ALIVE(player) (!(player->moveState & MOVESTATE_DEAD))

typedef struct {
    /*0x00 */ u16 unk0[6]; // might be [5]
    /*0x0C */ Sprite s;
    /*0x3C */ Hitbox reserved;
} UNK_3005A70; /* 0x30 */

extern UNK_3005A70 gUnknown_03005AA0;
extern UNK_3005A70 gUnknown_03005AF0;

// TODO: Better name.
//       This is used for an apparent around the value Cream uses for flying duration
typedef struct {
    /* 0xAC */ u8 flags;
    /* 0xAD */ s8 unkAD;
    /* 0xAE */ u16 unkAE;
    /* 0xB0 */ u16 unkB0;
} SonicFlags;

typedef struct {
    /* 0xAC */ s16 flyingDuration;
    /* 0xAE */ u16 unkAE;
    /* 0xB0 */ s8 unkB0;
} CreamFlags;

typedef struct {
    /* 0xAC */ u8 flags;
    /* 0xAD */ s8 shift;
    /* 0xAE */ s8 unkAE;
    /* 0xAF */ s8 unkAF;

    // NOTE: For some reason this is a 4-byte value, while Cream's is a 2-byte
    /* 0xB0 */ s32 flyingDuration;
} TailsFlags;

typedef struct {
    /* 0xAC */ u8 unkAC;
    /* 0xAD */ u8 unkAD;
    /* 0xAE */ u8 unkAE;
} KnucklesFlags;

typedef struct {
    /* 0xAC */ u8 unkAC;
} AmyFlags;

// Declared beforehand because it's used inside Player struct
struct Player_;
typedef void (*PlayerCallback)(struct Player_ *);

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

// Not sure what these are yet
typedef struct Player_ {
    u8 filler0[0x10];

    // set/compare to values in "include/constants/move_states.h"
    /* 0x10 */ u32 moveState;

} Player;

extern Player gPlayer;

// TODO: fill

#endif // GUARD_SAKIT_PLAYER_H
