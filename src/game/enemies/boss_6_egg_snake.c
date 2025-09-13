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
#include "game/save.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ Hitbox reserved;
    /* 0x44 */ Sprite s2;
    /* 0x74 */ struct Task *t;
    /* 0x78 */ s32 qUnk78;
    /* 0x7C */ s32 qUnk7C;
    /* 0x80 */ s32 unk80;
    /* 0x84 */ s32 unk84;
    /* 0x88 */ u8 filler88[0x8];
    /* 0x90 */ u16 unk90;
    /* 0x92 */ u16 unk92;
    /* 0x94 */ u8 filler94[0x4];
    /* 0x98 */ u16 unk98;
    /* 0x9A */ u8 unk9A;
    /* 0x9B */ u8 unk9B;
    /* 0x9C */ s8 unk9C;
    /* 0x9E */ u16 unk9E;
    /* 0xA0 */ u16 unkA0;
    /* 0xA2 */ u16 unkA2;
    /* 0xA4 */ u16 unkA4;
    /* 0xA6 */ u16 unkA6;
    /* 0xA8 */ u8 unkA8;
    /* 0xA9 */ u8 unkA9;
    /* 0xAA */ s8 unkAA;
} EggSnake; /* 0xAC */

void Task_EggSnakeInit(void);
void TaskDestructor_8034208(struct Task *t);

void sub_8031D88(s16 worldX, s16 worldY)
{
    EggSnake *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    Sprite *s2;
    enum EHit collPlayer;
    enum EHit collPartner;

    s->frameFlags &= 0xFFFFFE7F;

    if (PLAYER_IS_ALIVE) {
        gDispCnt &= 0x7FFF;
        gWinRegs[5] = 0;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
    }

    if (boss->unk9C == 0) {
        collPlayer = Coll_Player_Bosses_2_6(s, worldX, worldY, &gPlayer);
        if (gNumSingleplayerCharacters == 2) {
            collPartner = Coll_Player_Bosses_2_6(s, worldX, worldY, &gPartner);
        } else {
            collPartner = HIT_NONE;
        }
        s2 = &boss->s2;

        if ((collPlayer == HIT_ENEMY) || (collPartner == HIT_ENEMY)) {
            boss->unk9A++;
            boss->unk9C = 0x20;

            if (s->variant == 2) {
                s2->variant = 2;
            }

            if (s->variant == 3) {
                s2->variant = 5;
            }

            s2->frameFlags &= 0xFFFFBFFF;
            m4aSongNumStart(0x8FU);
        } else if ((collPlayer == HIT_PLAYER) || (collPartner == HIT_PLAYER)) {
            if (s->variant == 2) {
                s2->variant = 1;
            }
            if (s->variant == 3) {
                s2->variant = 4;
            }
            s2->frameFlags &= 0xFFFFBFFF;
        }
    }
}

void sub_8031ED0(void)
{
    s8 temp_r1;
    u8 *temp_r2;

    EggSnake *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;

    if (boss->unk9C != 0) {
        if ((--boss->unk9C > 0x10) && !(boss->unk9C & 2) && !(gPlayer.moveState & 0x80)) {
            s->frameFlags |= 0x100;
            gDispCnt |= 0x8000;
            gWinRegs[5] = 0x3F1F;
            gBldRegs.bldCnt = 0xBF;
            gBldRegs.bldY = 0x10;
        }
    }
    DisplaySprite(s);
    if ((u8)boss->unkAA != 0xFF) {
        DisplaySprite(s2);
    }
}

void sub_8031F74()
{
    EggSnake *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;

    if ((s2->variant != 0) && (s2->variant != 3) && (s2->frameFlags & 0x4000)) {
        if (s->variant == 2) {
            s2->variant = 0;
        }

        if (s->variant == 3) {
            s2->variant = 3;
        }
        s2->prevVariant = 0xFF;
    }
}

// (96.34%) https://decomp.me/scratch/ULduN
NONMATCH("asm/non_matching/game/enemies/boss_6__CreateEntity_EggSnake.inc",
         void CreateEntity_EggSnake(MapEntity *me, u16 regionX, u16 regionY, u8 id))
{
    EggSnake *boss;
    Sprite *s;
    Sprite *s2;

    if (IS_MULTI_PLAYER) {
        SET_MAP_ENTITY_INITIALIZED(me);
        return;
    }
    boss = TASK_DATA(TaskCreate(Task_EggSnakeInit, sizeof(EggSnake), 0x2100U, 0U, TaskDestructor_8034208));
    s = &boss->s;
    boss->base.regionX = regionX;
    boss->base.regionY = regionY;
    boss->base.me = me;
    boss->base.meX = me->x;
    boss->base.id = id;
    boss->unk98 = 0x78;
    boss->unk9C = 0;
    boss->unkA9 = 0;
    boss->unkA8 = 0;
    boss->qUnk78 = 0x1000;
    boss->qUnk7C = 0;
    boss->unk80 = 0;
    boss->unk84 = 0;
    boss->unkA0 = 0;
    boss->unkA2 = 0x200;
    boss->unkA4 = 0;
    boss->unkAA = 0;
    if (LOADED_SAVE->difficultyLevel != 0) {
        boss->unk9A = 2;
    } else {
        boss->unk9A = 0;
    }
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);
    s->graphics.dest = VramMalloc(0x30U);
    s->oamFlags = 0x580;
    s->graphics.size = 0;
    s->graphics.anim = 0x296;
    s->variant = 3;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;

    s2 = &boss->s2;
    s2->x = TO_WORLD_POS(me->x, regionX);
    s2->y = TO_WORLD_POS(me->y, regionY);
    SET_MAP_ENTITY_INITIALIZED(me);
    s2->graphics.dest = VramMalloc(8);
    s2->oamFlags = 0x540;
    s2->graphics.size = 0;
    s2->graphics.anim = 0x294;
    s2->variant = 3;
    s2->animCursor = 0;
    s2->qAnimDelay = 0;
    s2->prevVariant = -1;
    s2->animSpeed = 0x10;
    s2->palId = 0;
    s2->hitboxes[0].index = -1;
    s2->frameFlags = 0x2000;
    sub_80171BC(s->y - 0x80, s->y + 0x20, s->x - 0x90, s->x + 0xB0);
}
END_NONMATCH
