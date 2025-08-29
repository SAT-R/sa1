#include "global.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/player.h"
#include "game/entity.h"
#include "game/enemies/bosses_shared.h"
#include "game/nuts_and_bolts_task.h"
#include "game/save.h"
#include "game/stage/player_controls.h"
#include "game/stage/screen_shake.h"
#include "game/stage/terrain_collision.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/songs.h"
#include "game/stage/underwater_effects.h"

typedef struct EggSpider {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ Sprite s2;
    /* 0x6C */ s32 unk6C;
    /* 0x70 */ s32 unk70;
    /* 0x74 */ s32 unk74;
    /* 0x78 */ s32 unk78;
    /* 0x7C */ u8 filler7C[0x8];
    /* 0x84 */ u16 unk84;
    /* 0x86 */ u8 unk86;
    /* 0x86 */ s8 unk87;
    /* 0x88 */ u8 filler88[0x2];
    /* 0x8A */ u8 unk8A;
    /* 0x8C */ u8 unk8B;
} EggSpider; /* 0x90 */

void Task_EggSpiderInit(void);
void TaskDestructor_8031CB4(struct Task *t);

void sub_80308A4(CamCoord worldX, CamCoord worldY)
{
    Sprite *s;
    Sprite *s2;
    EHit collPlayer;
    EHit collPartner;
    EggSpider *boss;

    boss = TASK_DATA(gCurTask);
    s = &boss->s;
    s->frameFlags &= ~0x180;

    if (PLAYER_IS_ALIVE) {
        gDispCnt &= 0x7FFF;
        gWinRegs[5] = 0;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
    }

    if (boss->unk87 == 0) {
        collPlayer = Coll_Player_Boss(s, worldX, worldY, &gPlayer);
        collPartner = 0;

        if (gNumSingleplayerCharacters == 2) {
            collPartner = Coll_Player_Boss(s, worldX, worldY, &gPartner);
        }

        s2 = &boss->s2;
        if ((collPlayer == 1) || (collPartner == 1)) {
            boss->unk86++;
            boss->unk87 = 120;
            s2->variant = 2;
            s2->frameFlags &= 0xFFFFBFFF;
            m4aSongNumStart(SE_BOSS_HIT);
        } else if ((collPlayer == 2) || (collPartner == 2)) {
            s2->variant = 1;
            s2->frameFlags &= 0xFFFFBFFF;
        }
    }
}

void sub_80309CC(void)
{
    EggSpider *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;

    if (boss->unk87 != 0 && --boss->unk87 > 0) {
        if (!(boss->unk87 & 2)) {
            if (PLAYER_IS_ALIVE) {
                s->frameFlags |= 0x100;
                gDispCnt |= DISPCNT_OBJWIN_ON;
                gWinRegs[WINREG_WINOUT] = WINOUT_WINOBJ_ALL | (WINOUT_WIN01_ALL & ~WINOUT_WIN01_CLR);
                gBldRegs.bldCnt = 0xBF;
                gBldRegs.bldY = 0x10;
            }
        }
    }

    DisplaySprite(s);
    DisplaySprite(s2);
}

#if 0
void CreateEntity_EggSpider(MapEntity *me, u16 regionX, u16 regionY, u8 id) {
    EggSpider* boss;
    Sprite *s2;
    Sprite *s;
    s32 temp_r0_3;
    s32 temp_r1_2;
    s32 temp_r4;
    u16 temp_r1_4;
    u8 *temp_r0;
    u8 *temp_r0_2;
    u8 *temp_r1_3;

    if (IS_MULTI_PLAYER) {
        SET_MAP_ENTITY_INITIALIZED(me);
        return;
    }

    boss = TASK_DATA(TaskCreate(Task_EggSpiderInit, sizeof(EggSpider), 0x2000U, 0U, TaskDestructor_8031CB4));
    TaskCreate(sub_804C40C, 0U, 0xFFFDU, 0U, NULL);

    s = &boss->s;
    boss->base.regionX = regionX;
    boss->base.regionY = regionY;
    boss->base.me = me;
    boss->base.meX = me->x;
    boss->base.id = id;
    boss->unk84 = 120;
    boss->unk87 = 0;
    boss->unk8A = 0;
    boss->unk8B = 0;
    boss->unk6C = 0x3000;
    boss->unk70 = 0x1000;
    boss->unk74 = 0;
    boss->unk78 = 0;

    if (gLoadedSaveGame.difficultyLevel != DIFFICULTY_NORMAL) {
        boss->unk86 = 2;
    } else {
        boss->unk86 = 0;
    }

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);
    
    s->graphics.dest = VramMalloc(64);
    s->oamFlags = 0x580;
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_BOSS_4;
    s->variant = 2;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    temp_r1_3[1] = 0xFF;
    temp_r0 = &s->animSpeed;
    *temp_r0 = 0x10;
    temp_r0[3] = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;

    s2 = &boss->s2;
    s2->x = TO_WORLD_POS(me->x, regionX);
    s2->y = TO_WORLD_POS(me->y, regionY);
    SET_MAP_ENTITY_INITIALIZED(me);

    s2->graphics.dest = VramMalloc(8U);
    s2->oamFlags = 0x540;
    s2->graphics.size = 0;
    s2->graphics.anim = 0x275;
    s2->variant = 0;
    s2->animCursor = 0;
    s2->qAnimDelay = 0;
    s2->prevVariant = -1U;
    s2->animSpeed = 0x10;
    s2->palId = 0;
    s2->hitboxes[0].index = -1;
    s2->frameFlags = 0x2000;
    sub_80171BC(s->y, s->y + 192, s->x - 320, s->x);
    
    gPlayer.qSpeedGround = 0;
    gPlayer.moveState |= 0x200000;

    if ((gPlayer.character == CHARACTER_KNUCKLES)
        && ((gPlayer.anim == 269) || (gPlayer.anim == 207))) {
        gPlayer.heldInput = DPAD_DOWN;
    } else {
        gPlayer.heldInput = 0;
    }

    if (gRingsScatterTask != NULL) {
        ScatterRing *scatter = TASK_DATA(gRingsScatterTask);
        scatter->SA2_LABEL(unk2B6) |= 1;
    }
}
#endif