#include "global.h"
#include "core.h"
#include "flags.h"
#include "animation_commands_bg.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/stage/camera.h"
#include "game/stage/backgrounds/zone_5.h"

// (94.24%) https://decomp.me/scratch/BwRFT
NONMATCH("asm/non_matching/game/stage/backgrounds/StageBgUpdate_Zone2_Interior.inc", void StageBgUpdate_Zone2_Interior(s32 x, s32 y))
{
    Camera *cam = &gCamera;
    s32 xSub, ySub;
    u32 *offsets;
    s32 line, r1, r2, r3, r4, wallY;
    s32 i, v;

    // Scroll BG every 4 pixels
    gBgScrollRegs[3][0] = cam->sa2__unk52 = xSub = (x >> 2) % 256u;
    gBgScrollRegs[3][1] = cam->sa2__unk54 = ySub = (y >> 2) % 256u;

    gFlags |= FLAGS_EXECUTE_HBLANK_COPY;

    gHBlankCopyTarget = (void *)&REG_BG3HOFS;
    gHBlankCopySize = 4;

    offsets = gBgOffsetsHBlank;

    wallY = ySub % 64u;
    r4 = 0;

    r3 = (((wallY - r4) << 16) | xSub);

    for (line = -wallY; line < -wallY + 64; line++) {
        if (line >= 0) {
            *offsets++ = r3;
        }
    }

    r4 += 64;
    r3 = (((wallY - r4) << 16) | xSub);

    for (; line < -wallY + (r4 + 64); line++) {
        *offsets++ = r3;
    }

    r4 += 64;
    r3 = (((wallY - r4) << 16) | xSub);

    for (; line < -wallY + (r4 + 64); line++) {
        if (line < DISPLAY_HEIGHT) {
            *offsets++ = r3;
        }
    }

    r4 += 64;
    r3 = (((wallY - r4) << 16) | xSub);

    for (; line < -wallY + (r4 + 64); line++) {
        if (line < DISPLAY_HEIGHT) {
            *offsets++ = r3;
        }
    }

    // Three small bars
    for (i = 0; i < 3; i++) {
        xSub = ((x >> 1) + (i << 5)) & 0xFF;
        ySub = ((y >> 1) + (i << 6)) & 0xFF;
        ySub = (-ySub) & 0xFF;
        offsets = gBgOffsetsHBlank;

        for (line = ySub - 16; line < ySub; line++) {
            if (line < 0) {
                continue;
            }

            if ((line < DISPLAY_HEIGHT)) {
                r3 = ((80 - ySub) << 16) | xSub;
                offsets[line] = r3;
            }
        }
    }

    xSub = (((x << 1) / 3) + (i << 5)) & 0xFF;
    ySub = (((y << 1) / 3) + (i << 6) + (i << 5)) & 0xFF;

    // Bigger bar
    v = (-ySub & 0xFF);
    offsets = gBgOffsetsHBlank;
    for (line = v - 24; line < v; line++) {
        if ((line < 0)) {
            continue;
        }

        if (line < DISPLAY_HEIGHT) {
            r3 = (((104 - v) << 16) | xSub);
            offsets[line] = r3;
        }
    }
}
END_NONMATCH
