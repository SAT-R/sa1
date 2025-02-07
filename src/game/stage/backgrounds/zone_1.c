#include "global.h"
#include "flags.h"
#include "game/sa1_sa2_shared/camera.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/stage/camera.h"

void StageBgUpdate_Zone1Acts12(s32 x, s32 UNUSED y)
{
    struct Camera *cam = &gCamera;
    Background *bg;
    u16 *offsets;
    s32 i;
    s32 r3;

    x -= cam->sa2__unk20;

    bg = &gStageBackgroundsRam.unkC0;

    gBgScrollRegs[3][0] = cam->sa2__unk52 = 0;
    gBgScrollRegs[3][1] = cam->sa2__unk54 = 0;

    bg->scrollX = 0;
    bg->scrollY = 0;
    DrawBackground(bg);

    gFlags |= FLAGS_4;
    SA2_LABEL(gUnknown_03002878) = (void *)&REG_BG3HOFS;
    SA2_LABEL(gUnknown_03002A80) = 4;

    offsets = gBgOffsetsHBlank;

    for (i = 0; i < 8; i++) {
        *offsets++ = (gStageTime >> 4) & 0xFF;
        *offsets++ = 0;
    }

    for (i = 0; i < 16; i++) {
        *offsets++ = (gStageTime >> 5) & 0xFF;
        *offsets++ = 0;
    }

    for (i = 24; i < 40; i++) {
        *offsets++ = (gStageTime >> 6) & 0xFF;
        *offsets++ = 0;

#ifndef NON_MATCHING
        asm("" ::"r"(i));
#endif
    }

    for (; i < 88; i++) {
        *offsets++ = 0;
        *offsets++ = 0;
    }

    for (; i < 160; i++) {
        *offsets++ = ((i - 86) * x) >> 8;
        *offsets++ = 0;
    }
}