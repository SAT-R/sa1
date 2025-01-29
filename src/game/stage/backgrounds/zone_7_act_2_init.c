#include "global.h"
#include "core.h"
#include "animation_commands_bg.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/stage/camera.h"
#include "game/stage/backgrounds/zone_5.h"

void CreateStageBg_Zone7_Act2(void)
{
    Background *bg;
    const Collision *collision;

    DmaFill32(3, 0, BG_TILE_ADDR(128), 0x4000);
    DmaFill32(3, 0, BG_TILE_ADDR(448), 0x800);

    gBgCntRegs[2] = BGCNT_TXT512x256 | BGCNT_SCREENBASE(28) | BGCNT_256COLOR | 0x5;
}
