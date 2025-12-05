#include "global.h"
#include "core.h"
#include "flags.h"
#include "malloc_vram.h"
#include "game/stage/backgrounds/zone_3.h"
#include "game/stage/camera.h"
#include "game/stage/mp_sprite_task.h"
#include "game/sa1_sa2_shared/globals.h"

void VBlankCallback_803F920(void) { *(vu32 *)&REG_BG1HOFS = 0; }

void HBlankCallback_803F92C(int_vcount line)
{
    s32 newLine = line - 90;

    if ((newLine >= 0) && (line != DISPLAY_HEIGHT - 1)) {
        u32 *ptr = gBgOffsetsHBlankSecondary;
        ptr += 90;

        *(vu32 *)&REG_BG1HOFS = ptr[newLine];
    } else {
        *(vu32 *)&REG_BG1HOFS = 0;
    }
}

void sub_803F968(void)
{
    struct Camera *cam = &gCamera;

    if (gStageTime & 0x1) {
        cam->shiftY = ((u32)(PseudoRandom32() & 0x70000) >> 16) - 8;
    }
}

struct Task *SpawnCasinoFireworkMP(s16 x, s16 y, s32 fireworkType)
{
    const TileInfoFirework *tileInfo = &gTileInfoZone3Fireworks[fireworkType % ARRAY_COUNT(gTileInfoZone3Fireworks)];
    CasinoParadiseFirework *firework;
    struct Task *t;
    Sprite *s;

    t = CreateMultiplayerSpriteTask(x, y, 0, 0, Task_UpdateFireworkAnimation, TaskDestructor_MultiplayerSpriteTask);
    firework = TASK_DATA(t);
    s = &firework->s;

    s->graphics.dest = VramMalloc(tileInfo->numTiles);
    s->graphics.anim = tileInfo->anim;
    s->variant = tileInfo->variant;
    s->oamFlags = SPRITE_OAM_ORDER(31);
    s->frameFlags = SPRITE_FLAG(PRIORITY, 3);

    return t;
}