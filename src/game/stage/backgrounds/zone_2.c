#include "global.h"
#include "core.h"
#include "animation_commands_bg.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/stage/camera.h"
#include "game/stage/backgrounds/zone_5.h"

extern void StageBgUpdate_Zone2_Interior(s32 x, s32 y);

void StageBgUpdate_Zone2Act1(s32 x, s32 y)
{
    Background *bg;
    const Collision *collision;
    s32 xSub, ySub;

    x -= gCamera.sa2__unk20;
    y -= gCamera.sa2__unk24;

    if (x < 1488) {
        collision = gRefCollision;

        xSub = Div(x * 16, 1248);
        gBgScrollRegs[3][0] = gCamera.sa2__unk52 = xSub;

        ySub = 352;
        gCamera.sa2__unk54 = ySub;
        gBgScrollRegs[3][1] = ySub;
    } else {
        StageBgUpdate_Zone2_Interior(x, y);
    }
}

void StageBgUpdate_Zone2Act2(s32 x, s32 y)
{
    x -= gCamera.sa2__unk20;
    y -= gCamera.sa2__unk24;

    StageBgUpdate_Zone2_Interior(x, y);
}