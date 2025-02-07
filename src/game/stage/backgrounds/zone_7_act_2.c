#include "global.h"
#include "core.h"
#include "flags.h"
#include "animation_commands_bg.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/stage/camera.h"
#include "game/stage/backgrounds/zone_5.h"

extern void HBlankCallback_803F92C(int_vcount line);
extern void VBlankCallback_803F920(void);

void StageBgUpdate_Zone7Act2(void)
{
    struct Camera *cam = &gCamera;
    Background *bg = &gStageBackgroundsRam.unkC0;
    const Collision *collision;
    u32 *offsets;
    s32 i;

    gBgScrollRegs[1][0] = cam->sa2__unk52 = 0;
    gBgScrollRegs[1][1] = cam->sa2__unk54 = 0;

    bg->scrollX = 0;
    bg->scrollY = 0;
    DrawBackground(bg);

    offsets = gBgOffsetsHBlank;
    offsets += 90;

    DmaFill32(3, (gStageTime >> 6) & 0xFF, offsets, 10 * sizeof(u32));
    offsets += 10;

    DmaFill32(3, (gStageTime >> 5) & 0xFF, offsets, 5 * sizeof(u32));
    offsets += 5;

    DmaFill32(3, (gStageTime >> 4) & 0xFF, offsets, 8 * sizeof(u32));
    offsets += 8;

    DmaFill32(3, (gStageTime >> 3) & 0xFF, offsets, 16 * sizeof(u32));
    offsets += 16;

    for (i = 1; i < 32; i++) {
        *offsets++ = ((gStageTime >> 3) + ((gStageTime * i) >> 5)) & 0xFF;
    }

    gHBlankCallbacks[gNumHBlankCallbacks++] = HBlankCallback_803F92C;
    gFlags |= FLAGS_EXECUTE_HBLANK_CALLBACKS;

    gVBlankCallbacks[gNumVBlankCallbacks++] = VBlankCallback_803F920;
    gFlags |= FLAGS_EXECUTE_VBLANK_CALLBACKS;
}
