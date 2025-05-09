#include <string.h>
#include "global.h"
#include "core.h"
#include "malloc_ewram.h"
#include "rect.h"

#include "game/sa1_sa2_shared/camera.h"
#include "game/sa1_sa2_shared/collect_ring_effect.h"
#include "game/sa1_sa2_shared/ring.h"
#include "game/sa1_sa2_shared/rings_manager.h"

#include "game/entity.h"
#if (GAME == GAME_SA2)
#include "game/stage/player_super_sonic.h"
#endif

#include "game/multiplayer/mp_player.h"

#include "game/assets/compressed/entities.h"

#include "constants/animations.h"

typedef struct {
    Sprite s;
    void *rings;
} RingsManager;

void Task_RingsMgrMain(void);
void TaskDestructor_8007F1C(struct Task *);

// TODO: combine these macros with `ring.c`

#define MP_PLAYER_TOUCHING_RING(mp, rect, ringIntX, ringIntY)                                                                              \
    ((((ringIntX - TILE_WIDTH) <= RECT_LEFT(mp->pos.x, rect) && (ringIntX + TILE_WIDTH) >= RECT_LEFT(mp->pos.x, rect))                     \
      || ((ringIntX - TILE_WIDTH) >= RECT_LEFT(mp->pos.x, rect) && RECT_RIGHT(mp->pos.x, rect) >= (ringIntX - TILE_WIDTH)))                \
     && ((((ringIntY - (TILE_WIDTH * 2)) <= RECT_TOP(mp->pos.y, rect) && ringIntY >= RECT_TOP(mp->pos.y, rect))                            \
          || ((ringIntY - (TILE_WIDTH * 2)) >= RECT_TOP(mp->pos.y, rect)                                                                   \
              && RECT_BOTTOM(mp->pos.y, rect) >= (ringIntY - (TILE_WIDTH * 2))))))

#define PLAYER_TOUCHING_RING(p, rect, ringIntX, ringIntY)                                                                                  \
    ((((ringIntX - TILE_WIDTH) <= RECT_LEFT(I((p)->qWorldX), rect) && (ringIntX + TILE_WIDTH) >= RECT_LEFT(I((p)->qWorldX), rect))         \
      || ((ringIntX - TILE_WIDTH) >= RECT_LEFT(I((p)->qWorldX), rect) && RECT_RIGHT(I((p)->qWorldX), rect) >= (ringIntX - TILE_WIDTH)))    \
     && ((((ringIntY - (TILE_WIDTH * 2)) <= RECT_TOP(I((p)->qWorldY), rect) && ringIntY >= RECT_TOP(I((p)->qWorldY), rect))                \
          || ((ringIntY - (TILE_WIDTH * 2)) >= RECT_TOP(I((p)->qWorldY), rect)                                                             \
              && RECT_BOTTOM(I((p)->qWorldY), rect) >= (ringIntY - (TILE_WIDTH * 2))))))

extern const u8 *const gSpritePosData_rings[];

void CreateStageRingsManager(void)
{
    struct Task *t;
    RingsManager *mgr;
    void **mgrRings;
    Sprite *s;
    u32 *ewramBuffer;
    const u8 *compressedRingPosData;
    u32 dataSize;

    if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
        t = TaskCreate(Task_RingsMgrMain, sizeof(RingsManager), 0x2000, 0, TaskDestructor_8007F1C);

        compressedRingPosData = gSpritePosData_rings[gCurrentLevel];
        dataSize = (*(u32 *)compressedRingPosData) >> 8;
        ewramBuffer = EwramMalloc(dataSize);

        RLUnCompWram(gSpritePosData_rings[gCurrentLevel], ewramBuffer);
    } else {
        t = TaskCreate(Task_RingsMgrMain, sizeof(RingsManager), 0x2000, 0, NULL);

        compressedRingPosData = (u8 *)(*MP_COLLECT_RINGS_COMPRESSED_SIZE);
        dataSize = (*(u32 *)compressedRingPosData) >> 8;
        dataSize = (dataSize + 3) >> 2; // Make it multiple of 4
        dataSize <<= 4;
        ewramBuffer = (u32 *)(MP_COLLECT_RINGS_BUFFER + dataSize);
        RLUnCompWram(MP_COLLECT_RINGS_COMPRESSED_POS_DATA[0], ewramBuffer);
    }

    mgrRings = TASK_DATA(t) + offsetof(RingsManager, rings);
    *mgrRings = ewramBuffer;

    s = TASK_DATA(t);

    s->x = 0;
    s->y = 0;

    s->graphics.dest = RESERVED_RING_TILES_VRAM;
    s->oamFlags = SPRITE_OAM_ORDER(20);
    s->graphics.size = 0;
#if (GAME == GAME_SA1)
    s->graphics.anim = SA1_ANIM_RING;
#elif (GAME == GAME_SA2)
    s->graphics.anim = SA2_ANIM_RING;
#elif (GAME == GAME_SA3)
    s->graphics.anim = SA3_ANIM_RING;
#endif
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = (SPRITE_FLAG(PRIORITY, 2));
}

// SA1 version has support for "Cheat Code Tails"
// (75.43%) https://decomp.me/scratch/e9Wqi
NONMATCH("asm/non_matching/game/stage/Task_RingsMgrMain.inc", void Task_RingsMgrMain(void))
{
    // oam sub-frame ID?
    u8 sp1C = 0;
    s32 sp08;
    u32 regions_x; // sp0C;
    u32 regions_y; // sp10;
    Player *p;
    s8 rect[4] = { -gPlayer.spriteOffsetX, -gPlayer.spriteOffsetY, gPlayer.spriteOffsetX, gPlayer.spriteOffsetY };

    s32 r4 = 0;

    if (!(gStageFlags & STAGE_FLAG__2)) {

        // _08007F60
        RingsManager *rm;
        u32 *rings = *(u32 **)((uintptr_t)TASK_PTR(gCurTask->data) + offsetof(RingsManager, rings)); // sp14
        s32 *rings_header;
        Sprite *s; // sp18
        const SpriteOffset *dimensions; // sp20
        u16 sl; // sl / sp40
        u16 sb;

#if (GAME == GAME_SA2)
        if (IS_BOSS_STAGE(gCurrentLevel)) {
            if (gBossRingsShallRespawn && gBossRingsRespawnCount > 0) {
                RLUnCompWram(gSpritePosData_rings[gCurrentLevel], rings);
                gBossRingsShallRespawn = FALSE;
                gBossRingsRespawnCount--;
            }
        }

        // _08007FBE
        sp08 = FALSE;
        if (gCurrentLevel == LEVEL_INDEX(ZONE_FINAL, ACT_TRUE_AREA_53)) {
            u32 res = 0; // SuperSonicGetFlags() & (SUPER_FLAG__200 | SUPER_FLAG__10 | SUPER_FLAG__8 | SUPER_FLAG__4);
            sp08 = TRUE;

            if (res) {
                sp08 = FALSE;
            }

            // _08007FE4
            // SuperSonicGetPos(&gPlayer.qWorldX, &gPlayer.qWorldY);
            rect[0] = -10;
            rect[1] = -10;
            rect[2] = +10;
            rect[3] = +10;
        }
        // _08007FFA
#endif

        rings = *(void **)((uintptr_t)TASK_PTR(gCurTask->data) + offsetof(RingsManager, rings));
        rm = TASK_DATA(gCurTask);
        s = &rm->s;
        UpdateSpriteAnimation(s);

        dimensions = s->dimensions;
        rings++;
        regions_x = (u16)*rings++;
        regions_y = (u16)*rings++;

#if (GAME == GAME_SA1)
        for (r4 = 0; r4 < gNumSingleplayerCharacters; r4++)
#endif
        {
            p = (r4 == 0) ? &gPlayer : &gPartner;

            sl = (Q_24_8_TO_INT(p->qWorldY) + rect[1]) >> 8;
            while (((sl <= (((Q_24_8_TO_INT(p->qWorldY) + rect[3]) - 16)) >> 8)) && (sl < regions_y)) {
                sb = ((Q_24_8_TO_INT(p->qWorldX) + rect[0] - 8) >> 8);
                while ((sb <= ((Q_24_8_TO_INT(p->qWorldX) + rect[2] - 8) >> 8)) && sb < regions_x) {
                    u32 offset = *(u32 *)((u8 *)rings + ((regions_x * sl) * sizeof(u32)) + (sb * sizeof(u32)));

                    if (offset) {
                        MapEntity_Ring *meRing;
                        offset -= 8;

                        meRing = (MapEntity_Ring *)&((u8 *)rings)[offset];

                        while (meRing->x != (u8)MAP_ENTITY_STATE_ARRAY_END) {
                            if (meRing->x != (u8)MAP_ENTITY_STATE_INITIALIZED) {
                                // _080080D6
                                s16 rx = TO_WORLD_POS(meRing->x, sb);
                                s16 ry = TO_WORLD_POS(meRing->y, sl);

                                if ((sp08 != FALSE) || (gCurrentLevel != 15 && IS_ALIVE(p))) {
                                    // Player touches ring(?)
                                    if (PLAYER_TOUCHING_RING(p, (struct Rect8 *)rect, rx, ry)) {
                                        // _08008166
                                        INCREMENT_RINGS(1);
                                        // _080081AC

                                        if (gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
                                            if (gRingCount > 255)
                                                gRingCount = 255;
                                        }
                                        // _080081C0
                                        CreateCollectRingEffect(rx, ry);
                                        meRing->x = (u8)MAP_ENTITY_STATE_INITIALIZED;
                                    }
                                }
                                // _080081D2
                            }
                            meRing++;
                        }
                    }

                    sb++;
                }

                sl++;
            }
        }

        if (IS_MULTI_PLAYER) {
            u8 i; // sp30
            for (i = 0; i < 4; i++) {
                u32 playerId = SIO_MULTI_CNT->id;

                if ((i != playerId) && (gMultiplayerPlayerTasks[i] != NULL)) {
                    // _08008258
                    MultiplayerPlayer *mpp = TASK_DATA(gMultiplayerPlayerTasks[i]);
                    sl = (mpp->pos.y + s->hitboxes[0].b.top) >> 8;

                    while (((sl) <= (((mpp->pos.y + s->hitboxes[0].b.bottom) + 8) >> 8)) && (sl < regions_y)) {
                        // _080082E2
                        sb = ((mpp->pos.x + mpp->s.hitboxes[0].b.left) - 8) >> 8;
                        while ((sb <= (((mpp->pos.x + mpp->s.hitboxes[0].b.right) + 16) >> 8)) && (sb < regions_x)) {
                            // _080086E8
                            u32 offset = *(u32 *)((u8 *)rings + ((regions_x * sl) * sizeof(u32)) + (sb * sizeof(u32)));

                            if (offset != 0) {
                                MapEntity_Ring *meRing;
                                offset -= 8;

                                meRing = (void *)((u8 *)rings + (offset));
                                while (meRing->x != (u8)MAP_ENTITY_STATE_ARRAY_END) {
                                    if (meRing->x != (u8)MAP_ENTITY_STATE_INITIALIZED) {
                                        s16 ringIntX = TO_WORLD_POS(meRing->x, sb);
                                        s16 ringIntY = TO_WORLD_POS(meRing->y, sl);
                                        if (MP_PLAYER_TOUCHING_RING(mpp, &mpp->s.hitboxes[0].b, ringIntX, ringIntY)) {
                                            u8 anim = s->graphics.anim - gPlayerCharacterIdleAnims[gMultiplayerCharacters[mpp->unk56]];
                                            if ((anim != 20 && anim != 21) || !(mpp->unk54 & 0x4)) {
                                                CreateCollectRingEffect(ringIntX, ringIntY);
                                                meRing->x = (u8)MAP_ENTITY_STATE_INITIALIZED;
                                            }
                                        }
                                    }
                                    meRing++;
                                }
                            }
                            sb++;
                        }
                        sl++;
                    }
                }
                // _08008472 = continue
            }
        }
        // _0800847E
        sl = gCamera.y >> 8;

        if ((gPlayer.itemEffect & PLAYER_ITEM_EFFECT__SHIELD_MAGNETIC) && (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS)) {

            while (((sl << 8) < gCamera.y + DISPLAY_HEIGHT) && (sl < regions_y)) {
                // _080086CC
                sb = gCamera.x >> 8;

                while (((sb << 8) < (gCamera.x + DISPLAY_WIDTH))) {
                    // _080086E8
                    u32 offset = *(u32 *)((u8 *)rings + ((regions_x * sl) * sizeof(u32)) + (sb * sizeof(u32)));
                    if ((sb >= regions_x)) {
                        break;
                    }
                    if (offset != 0) {
                        MapEntity_Ring *meRing;
                        offset -= 8;

                        meRing = (void *)((u8 *)rings + (offset));
#ifdef NON_MATCHING
                        goto end;
                        do {
#else
                        while (meRing->x != (u8)MAP_ENTITY_STATE_ARRAY_END) {
#endif
                            s16 rx, ry;
                            // _0800870C
                            if (meRing->x == (u8)MAP_ENTITY_STATE_INITIALIZED) {
                                meRing++;
                            } else {
                                rx = TO_WORLD_POS(meRing->x, sb);
                                ry = TO_WORLD_POS(meRing->y, sl);

                                if (((u32)(rx - gCamera.x) + TILE_WIDTH) > (DISPLAY_WIDTH + 2 * TILE_WIDTH) || (((ry - gCamera.y)) < 0)
                                    || (((ry - gCamera.y) - 2 * TILE_WIDTH) > DISPLAY_HEIGHT)) {
                                    meRing++;
                                } else if (((rx - 64) <= Q_24_8_TO_INT(gPlayer.qWorldX)) && ((rx + 64) >= Q_24_8_TO_INT(gPlayer.qWorldX))
                                           && ((ry - 72) <= Q_24_8_TO_INT(gPlayer.qWorldY))
                                           && ((ry + 56 >= Q_24_8_TO_INT(gPlayer.qWorldY)))) {
                                    CreateMagneticRing(rx, ry);
                                    meRing->x = (u8)MAP_ENTITY_STATE_INITIALIZED;
                                    meRing++;

                                } else {
                                    meRing++;
                                    // _08008750
                                    if ((sp1C == 0) || s->oamBaseIndex == 0xFF) {
                                        // _08008764
                                        s->oamBaseIndex = 0xFF;

                                        s->x = rx - gCamera.x;
                                        s->y = ry - gCamera.y;
                                        DisplaySprite(s);
                                    } else {
                                        // _08008788
                                        OamData *oamDat = &gOamBuffer2[s->oamBaseIndex];
                                        OamData *oamAllocated = OamMalloc(GET_SPRITE_OAM_ORDER(s));

                                        if (iwram_end == oamAllocated)
                                            return;

                                        DmaCopy16(3, oamDat, oamAllocated, sizeof(OamDataShort));

                                        // TODO: Can these be done more explicitly?
                                        oamAllocated->all.attr1 &= 0xFE00;
                                        oamAllocated->all.attr0 &= 0xFF00;
                                        oamAllocated->all.attr0 += ((ry - gCamera.y) - dimensions->offsetY) & 0xFF;
                                        oamAllocated->all.attr1 += ((rx - gCamera.x) - dimensions->offsetX) & 0x1FF;
                                    }
                                    sp1C++;
                                }
                            }
#ifdef NON_MATCHING
                        end:;
                        } while (meRing->x != (u8)MAP_ENTITY_STATE_ARRAY_END);
#else
                        }
#endif
                    }

                    sb++;
                }
                // _0800882C
                sl++;
            }
        } else {
            while (sl << 8 < (gCamera.y + DISPLAY_HEIGHT) && (sl < regions_y)) {
                // _080086CC
                sb = gCamera.x >> 8;

                while (sb << 8 < (gCamera.x + DISPLAY_WIDTH) && sb < regions_x) {
                    // _080086E8
                    u32 offset = *(u32 *)((u8 *)rings + ((regions_x * sl) * sizeof(u32)) + (sb * sizeof(u32)));

                    if (offset != 0) {
                        MapEntity_Ring *meRing;
                        offset -= 8;

                        meRing = (void *)((u8 *)rings + (offset));
                        while (meRing->x != (u8)MAP_ENTITY_STATE_ARRAY_END) {
                            // _0800870C
                            if (meRing->x == (u8)MAP_ENTITY_STATE_INITIALIZED) {
                                meRing++;
                            } else {
                                s16 rx = TO_WORLD_POS(meRing->x, sb);
                                s16 ry = TO_WORLD_POS(meRing->y, sl);

                                if ((unsigned)((rx - gCamera.x) + TILE_WIDTH) > (DISPLAY_WIDTH + 2 * TILE_WIDTH) || (((ry - gCamera.y)) < 0)
                                    || (((ry - gCamera.y) - 2 * TILE_WIDTH) > DISPLAY_HEIGHT)) {
                                    meRing++;
                                } else {
                                    meRing++;
                                    // _08008750
                                    if ((sp1C == 0) || s->oamBaseIndex == 0xFF) {
                                        // _08008764
                                        s->oamBaseIndex = 0xFF;

                                        s->x = rx - gCamera.x;
                                        s->y = ry - gCamera.y;
                                        DisplaySprite(s);
                                    } else {
                                        // _08008788
                                        OamData *oamDat = &gOamBuffer2[s->oamBaseIndex];
                                        OamData *oamAllocated = OamMalloc(GET_SPRITE_OAM_ORDER(s));

                                        if (iwram_end == oamAllocated)
                                            return;

                                        DmaCopy16(3, oamDat, oamAllocated, 6 /*sizeof(OamDataShort)*/);

                                        // TODO: Can these be done more explicitly?
                                        oamAllocated->all.attr1 &= 0xFE00;
                                        oamAllocated->all.attr0 &= 0xFF00;
                                        oamAllocated->all.attr0 += ((ry - gCamera.y) - dimensions->offsetY) & 0xFF;
                                        oamAllocated->all.attr1 += ((rx - gCamera.x) - dimensions->offsetX) & 0x1FF;
                                    }
                                    sp1C++;
                                }

                                continue;
                            }
                        }
                    }

                    sb++;
                }
                // _0800882C
                sl++;
            }
        }
    }
}
END_NONMATCH

void TaskDestructor_8007F1C(struct Task *t)
{
    void *rings = *(void **)(TASK_DATA(t) + offsetof(RingsManager, rings));
    EwramFree(rings);
}
