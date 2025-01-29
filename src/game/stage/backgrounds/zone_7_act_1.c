#include "global.h"
#include "core.h"
#include "animation_commands_bg.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/stage/camera.h"
#include "game/stage/backgrounds/zone_5.h"

void StageBgUpdate_Zone7Act1(s32 x, s32 y)
{
    Background *bg;
    const Collision *collision;
    s32 xSub, ySub;

    x -= gCamera.sa2__unk20;
    y -= gCamera.sa2__unk24;

    collision = gRefCollision;

    xSub = Div(x * 64 - x * 8, collision->pxWidth - DISPLAY_WIDTH);
    gBgScrollRegs[3][0] = gCamera.sa2__unk52 = xSub;

    ySub = Div((y << 4) + y * 8, collision->pxHeight - DISPLAY_HEIGHT);
    gCamera.sa2__unk54 = ySub;
    gBgScrollRegs[3][1] = ySub;
}
