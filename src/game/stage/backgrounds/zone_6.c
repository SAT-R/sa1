#include "global.h"
#include "core.h"
#include "flags.h"
#include "animation_commands_bg.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/stage/camera.h"
#include "game/stage/backgrounds/zone_6.h"

#define BG_LINE_CEILING_START 0
#define BG_LINE_CEILING_END   120

void StageBgUpdate_Zone6Act2(s32 x, s32 y)
{
    struct Camera *cam = &gCamera;
    const Collision *coll;
#ifndef NON_MATCHING
    register s32 xSub asm("r9");
#else
    s32 xSub;
#endif
    s32 ySub;
    s32 scanline;
    s32 r4;
    u32 *ptr;
    s32 i;

    x -= cam->SA2_LABEL(unk20);
    y -= cam->SA2_LABEL(unk24);

    coll = gRefCollision;

    gBgScrollRegs[3][0] = cam->SA2_LABEL(unk52) = xSub = Div((x << 8) + (x << 4), coll->pxWidth - DISPLAY_WIDTH);
    gBgScrollRegs[3][1] = cam->SA2_LABEL(unk54) = ySub = Div((y << 6) + (y << 3), coll->pxHeight - DISPLAY_HEIGHT);

    // TODO: There should be a macro for this already!
    r4 = ((ySub << 16) | xSub);

    gFlags |= FLAGS_4;
    SA2_LABEL(gUnknown_03002878) = (void *)&REG_BG3HOFS;
    SA2_LABEL(gUnknown_03002A80) = 4;

    {
        ptr = gBgOffsetsHBlank;
        DmaFill32(3, r4, ptr, DISPLAY_HEIGHT * sizeof(r4));

        r4 = ((ySub << 16) | ((xSub - (gStageTime >> 1)) & 0x1FF));

        scanline = 120 - ySub;

        ptr += scanline;
        for (i = 0; (i < 16); i++) {
            if ((scanline + i) >= 0) {
                if ((scanline + i) >= DISPLAY_HEIGHT) {
                    break;
                }

                *ptr++ = r4;
            }
        }
    }

    {
        ptr = gBgOffsetsHBlank;

        r4 = ((ySub << 16) | (((gStageTime >> 1) + xSub) & 0x1FF));

        scanline = 176 - ySub;

        ptr += scanline;
        for (i = 0; (i < 16); i++) {
            if ((scanline + i) >= 0) {
                if ((scanline + i) >= DISPLAY_HEIGHT) {
                    break;
                }

                *ptr++ = r4;
            }
        }
    }
}
