#include "global.h"
#include "core.h"
#include "animation_commands_bg.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/stage/camera.h"
#include "game/water_effects.h"

// (95.36%) https://decomp.me/scratch/XKJAc
NONMATCH("asm/non_matching/game/stage/backgrounds/StageBgUpdate_Zone4Acts12.inc", void StageBgUpdate_Zone4Acts12(s32 x, s32 y))
{
    struct Camera *cam = &gCamera;
    Background *bg;
    u16 *offsets;
    const Collision *coll;
    s32 xSub, ySub;
    s32 v;

    gBldRegs.bldCnt = (BLDCNT_TGT2_ALL | BLDCNT_EFFECT_BLEND | BLDCNT_TGT1_BG0);
    gBldRegs.bldAlpha = BLDALPHA_BLEND(16, 16);

    x -= cam->sa2__unk20;
    y -= cam->sa2__unk24;

    // Snow layer
    bg = &gStageBackgroundsRam.unk0;

    gBgScrollRegs[0][0] = ((x + (x >> 2)) + (gStageTime >> 2)) & 0xFF;
    gBgScrollRegs[0][1] = ((v = (y + 256)) - gStageTime) & 0xFF;
    DrawBackground(bg);
    UpdateBgAnimationTiles(bg);

    coll = gRefCollision;

    xSub = Div(x * 16, coll->pxWidth - DISPLAY_WIDTH);
    cam->sa2__unk52 = xSub;
    gBgScrollRegs[3][0] = xSub;

    ySub = Div(((y << 8) + (y << 6) + (y << 5)), coll->pxHeight - DISPLAY_HEIGHT);
    cam->sa2__unk54 = ySub;
    gBgScrollRegs[3][1] = ySub;

    if (!gWater.isActive) {
        gDispCnt &= ~DISPCNT_BG0_ON;
    } else {
        gDispCnt |= DISPCNT_BG0_ON;
    }

    if (!gWater.isActive) {
        REG_DISPCNT &= ~DISPCNT_BG0_ON;
    }
}
END_NONMATCH
