#include "global.h"
#include "core.h"
#include "flags.h"
#include "malloc_vram.h"
#include "game/stage/camera.h"
#include "game/stage/mp_sprite_task.h"
#include "game/sa1_sa2_shared/globals.h"

typedef struct {
    /* 0x00 */ s32 qWorldX;
    /* 0x04 */ s32 qWorldY;
    /* 0x08 */ u8 filler08[0x10];
    Sprite s;
} CasinoParadiseFirework;

#define BG_LINE_MAIN_END 134

extern const TileInfoFirework gUnknown_084ADD38[2];

void TaskDestructor_MultiplayerSpriteTask(struct Task *);

void Task_UpdateFireworkAnimation(void)
{
    CasinoParadiseFirework *firework = TASK_DATA(gCurTask);
    Sprite *s = &firework->s;
    struct Camera *cam = &gCamera;

    if (s->frameFlags & SPRITE_FLAG_MASK_ANIM_OVER) {
        TaskDestroy(gCurTask);
        return;
    }

    s->x = firework->qWorldX - cam->sa2__unk52;
    s->y = firework->qWorldY - cam->sa2__unk54;

    s->frameFlags &= ~(SPRITE_FLAG(18, 1) | SPRITE_FLAG(19, 1));
    UpdateSpriteAnimation(s);
    s->frameFlags |= (SPRITE_FLAG(18, 1) | SPRITE_FLAG(19, 1));

    s->frameFlags &= ~(SPRITE_FLAG(X_FLIP, 1) | SPRITE_FLAG(Y_FLIP, 1));
    DisplaySprite(s);

    s->frameFlags ^= SPRITE_FLAG(X_FLIP, 1);
    DisplaySprite(s);

    s->frameFlags ^= SPRITE_FLAG(X_FLIP, 1);
    s->frameFlags ^= SPRITE_FLAG(Y_FLIP, 1);
    DisplaySprite(s);

    s->frameFlags ^= SPRITE_FLAG(X_FLIP, 1);
    DisplaySprite(s);
}

void StageBgUpdate_Zone3Acts12(s32 x, s32 y)
{
    struct Camera *cam = &gCamera;
    const Collision *collision;
    s32 xSub, ySub;
    s32 scanline;
    s32 r4;
    u32 *ptr;
    s32 i;

    x -= cam->sa2__unk20;
    y -= cam->sa2__unk24;

    collision = gRefCollision;

    gBgScrollRegs[3][0] = cam->sa2__unk52 = xSub = Div(x * 16, collision->pxWidth - DISPLAY_WIDTH);
    gBgScrollRegs[3][1] = cam->sa2__unk54 = ySub = Div((y << 6) + (y << 5), collision->pxHeight - DISPLAY_HEIGHT);

    // TODO: There should be a macro for this already!
    r4 = ((ySub << 16) | xSub);

    gFlags |= FLAGS_4;
    sa2__gUnknown_03002878 = (void *)&REG_BG3HOFS;
    sa2__gUnknown_03002A80 = 4;

    {
        ptr = gBgOffsetsHBlank;
        DmaFill32(3, r4, ptr, DISPLAY_HEIGHT * sizeof(r4));

        r4 = ((ySub << 16) | ((xSub + (x >> 6)) & 0xFF));

        scanline = BG_LINE_MAIN_END - ySub;

        ptr += scanline;
        for (i = 0; (i < 6); i++) {
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

        r4 = ((ySub << 16) | ((xSub + (x >> 5)) & 0xFF));

        scanline = BG_LINE_MAIN_END - ySub;

        ptr += scanline;
        for (i = 0; (i < 6); i++) {
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

        r4 = ((ySub << 16) | ((xSub + (x >> 4)) & 0xFF));

        scanline = 140 - ySub;

        ptr += scanline;
        for (i = 0; (i < 12); i++) {
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

        r4 = ((ySub << 16) | ((xSub + (x >> 3)) & 0xFF));

        scanline = 152 - ySub;

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

        r4 = ((ySub << 16) | ((xSub + (x >> 2)) & 0xFF));

        scanline = 168 - ySub;

        ptr += scanline;
        for (i = 0; (i < 24); i++) {
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

        r4 = ((ySub << 16) | ((xSub + (x >> 1)) & 0xFF));

        scanline = 192 - ySub;

        ptr += scanline;
        for (i = 0; (i < 64); i++) {
            if ((scanline + i) >= 0) {
                if ((scanline + i) >= DISPLAY_HEIGHT) {
                    break;
                }

                *ptr++ = r4;
            }
        }
    }

    if (((gStageTime % 4u) == 0) && ((PseudoRandom32() & 0x700) == 0)) {
        struct Task *t;
        CasinoParadiseFirework *firework;
        Sprite *s;
        s32 randA = (((u32)PseudoRandom32() & 0xFF00) >> 8) - 8;
        s32 randB = (((u32)PseudoRandom32() & 0x7F00) >> 8) - 0x20;
        u8 fireworkType = (((u32)PseudoRandom32() & 0x0100) >> 8);
        const TileInfoFirework *tileInfo = &gUnknown_084ADD38[fireworkType];

        t = CreateMultiplayerSpriteTask(randA, randB, 0, 0, Task_UpdateFireworkAnimation, TaskDestructor_MultiplayerSpriteTask);
        firework = TASK_DATA(t);
        s = &firework->s;

        s->graphics.dest = VramMalloc(tileInfo->numTiles);
        s->graphics.anim = tileInfo->anim;
        s->variant = tileInfo->variant;
        s->oamFlags = 0x7C0;
        s->frameFlags = 0x3000;
    }
}
