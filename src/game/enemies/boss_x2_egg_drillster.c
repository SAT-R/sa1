#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/enemies/bosses_shared.h" // CreatePreBossCameraPan
#include "game/nuts_and_bolts_task.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/stage/terrain_collision.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"

/* Sonic 2 - Emerald Hill Boss */

typedef struct EggDrillster {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ Sprite s2;
    /* 0x6C */ s32 unk6C;
    /* 0x70 */ s32 unk70;
    /* 0x74 */ s32 unk74;
    /* 0x78 */ s32 unk78;
    /* 0x7C */ s16 unk7C;
    /* 0x7E */ s16 unk7E;
    /* 0x80 */ s16 unk80;
    /* 0x82 */ s16 unk82;
    /* 0x84 */ s16 unk84;
    /* 0x86 */ u8 unk86;
    /* 0x87 */ s8 unk87;
    /* 0x88 */ s16 unk88;
    /* 0x8A */ s16 unk8A;
    /* 0x8C */ u8 unk8C;
    /* 0x8C */ u8 unk8D;
    /* 0x8D */ char filler8E[2];
} EggDrillster; /* size = 0x90 */

void Task_EggDrillsterInit(void);
void TaskDestructor_EggDrillster(struct Task *t);

void sub_803596C(s16 worldX, s16 worldY)
{
    Sprite *s;
    Sprite *s2;
    enum EHit collPlayer;
    enum EHit collPartner;
    s16 temp_r6;
    s16 temp_r7;
    u16 temp_r3;
    u8 *temp_r1;

    EggDrillster *boss = TASK_DATA(gCurTask);
    s = &boss->s;
    s->frameFlags &= ~0x180;
    if (PLAYER_IS_ALIVE) {
        gDispCnt &= ~0x8000;
        gWinRegs[WINREG_WINOUT] = 0;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
    }

    if (boss->unk87 == 0) {
        collPlayer = Coll_Player_Boss(s, worldX, worldY, &gPlayer);
        collPartner = HIT_NONE;
        if (gNumSingleplayerCharacters == NUM_SINGLEPLAYER_CHARS_MAX) {
            collPartner = Coll_Player_Boss(s, worldX, worldY, &gPartner);
        }
        s2 = &boss->s2;
        if ((collPlayer == HIT_ENEMY) || (collPartner == HIT_ENEMY)) {
            boss->unk86++;
            boss->unk87 = 0x20;
            s2->variant = 2;
            s2->prevVariant = -1;
            s2->frameFlags &= ~0x4000;
            m4aSongNumStart(SE_BOSS_HIT);
            return;
        }
        if ((collPlayer == HIT_PLAYER) || (collPartner == HIT_PLAYER)) {
            s2->variant = 1;
            s2->prevVariant = -1;
            s2->frameFlags &= ~0x4000;
        }
    }
}

void sub_8035AAC()
{
    Sprite *s;
    Sprite *s2;

    EggDrillster *boss = TASK_DATA(gCurTask);

    s = &boss->s;
    s2 = &boss->s2;
    if (boss->unk87 != 0) {
        --boss->unk87;
        if ((boss->unk87 > 0x10) && !(boss->unk87 & 2) && !(gPlayer.moveState & 0x80)) {
            s->frameFlags |= 0x100;
            gDispCnt |= 0x8000;
            gWinRegs[5] = 0x3F1F;
            gBldRegs.bldCnt = 0xBF;
            gBldRegs.bldY = 0x10;
        }
    }
    DisplaySprite(s);
    DisplaySprite(s2);
}

void CreateEntity_EggDrillster(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    s32 sp4;
    Sprite *s;
    Sprite *s2;
    s16 *temp_r1_2;
    s16 *temp_r2_2;
    s32 temp_r4;
    s32 temp_r4_2;

    struct Task *t;
    EggDrillster *boss;

    if (gBossIndex != 0) {
        return;
    }
    if (IS_MULTI_PLAYER) {
        SET_MAP_ENTITY_INITIALIZED(me);
        return;
    }

    t = TaskCreate(Task_EggDrillsterInit, 0x90U, 0x2000U, 0U, TaskDestructor_EggDrillster);
    boss = TASK_DATA(t);
    boss->base.regionX = regionX;
    boss->base.regionY = regionY;
    boss->base.me = me;
    boss->base.meX = me->x;
    boss->base.id = id;
    boss->unk84 = 120;
    boss->unk86 = 0;
    boss->unk87 = 0;
    boss->unk8D = 0;
    boss->unk8C = 0;
    boss->unk6C = 0xC020;
    boss->unk70 = -0x2800;
    boss->unk74 = 0;
    boss->unk78 = 0;
    boss->unk88 = 0;
    boss->unk8A = 0;
    boss->unk7C = TO_WORLD_POS(me->x, regionX);
    boss->unk7E = TO_WORLD_POS(me->y, regionY);

    s = &boss->s;
    s->x = boss->unk7C;
    s->y = boss->unk7E;
    s->graphics.dest = ALLOC_TILES(SA1_ANIM_BOSS_X2_EGGDRILLSTER);
    s->oamFlags = SPRITE_OAM_ORDER(22);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_BOSS_X2_EGGDRILLSTER;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;

    s2 = &boss->s2;
    s2->x = TO_WORLD_POS(me->x, regionX);
    s2->y = TO_WORLD_POS(me->y, regionY);
    SET_MAP_ENTITY_INITIALIZED(me);
    s2->graphics.dest = ALLOC_TILES(SA1_ANIM_BOSS_X2_EGGMAN);
    s2->oamFlags = 0x540;
    s2->graphics.size = 0;
    s2->graphics.anim = SA1_ANIM_BOSS_X2_EGGMAN;
    s2->variant = 0;
    s2->animCursor = 0;
    s2->qAnimDelay = 0;
    s2->prevVariant = -1;
    s2->animSpeed = 0x10;
    s2->palId = 0;
    s2->hitboxes[0].index = -1;
    s2->frameFlags = 0x2000;
}
