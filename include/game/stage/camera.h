#ifndef GUARD_GAME_STAGE_CAMERA_H
#define GUARD_GAME_STAGE_CAMERA_H

#include "global.h"
#include "core.h"

#include "game/sa1_sa2_shared/camera.h"

struct Backgrounds {
    Background unk0;
    Background unk40;
    Background unk80;
    Background unkC0;
};

extern const Background gStageCameraBgTemplates[4];
extern const Collision *const gCollisionTable[];

void UpdateCamera(void);

// TODO: Collision
extern const u32 *gUnknown_030059C8;

extern const u16 gUnknown_080D5964[][2];

extern struct Backgrounds gStageBackgroundsRam;

#endif // GUARD_GAME_STAGE_CAMERA_H
