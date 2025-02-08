#include "global.h"
#include "core.h"
#include "animation_commands_bg.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/stage/camera.h"
#include "game/stage/backgrounds/zone_6.h"

void HBlankCallback_803FA1C(int_vcount line)
{
    if (line == 100) {
        REG_BG0CNT &= ~BGCNT_TXT512x512;
        REG_BG0CNT |= BGCNT_TXT256x512;
        *(u32 *)&REG_BG0HOFS = (0 | (DISPLAY_HEIGHT << 16));
    } else if (line > 101 && line < 134) {
        REG_BLDY = 16 - ((line - 101) >> 1);
    }
}