#ifndef GUARD_DATA_ANIMATIONS_H
#define GUARD_DATA_ANIMATIONS_H

#include "gba/types.h"
#include "animation_commands.h"
#include "sprite.h"

#define NUM_SPRITE_ANIMATIONS 908

extern s32 **const gAnimations[NUM_SPRITE_ANIMATIONS];
extern const SpriteOffset *const gSpriteDimensions[NUM_SPRITE_ANIMATIONS];
extern const OamDataShort *const gSpriteOamData[NUM_SPRITE_ANIMATIONS];
extern const u16 gObjPalettes[]; // gSpritePalettes

struct SpriteTables {
    /* 0x00 */ ACmd ***animations;
    /* 0x04 */ SpriteOffset **dimensions;
    /* 0x08 */ u16 **oamData;
    /* 0x0C */ u16 *palettes;
    /* 0x10 */ u8 *tiles_4bpp;
    /* 0x14 */ u8 *tiles_8bpp;
};

// SA2: gUnknown_03002794
extern const struct SpriteTables *gUnknown_03002034;

#endif