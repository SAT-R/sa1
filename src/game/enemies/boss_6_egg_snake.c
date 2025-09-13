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

void sub_8031D88(s16 worldX, s16 worldY)
{
    Sprite *s2;
    Sprite *s;
    enum EHit collPlayer;
    enum EHit collPartner;
    s16 temp_r4;
    s16 temp_r7;
    u16 temp_r3;
    u8 *temp_r1;
    u8 *temp_r2;
    u8 *temp_r2_2;
    u8 temp_r1_2;

    EggSnake *boss = TASK_DATA(gCurTask);

    s = &boss->s;
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
            temp_r2_2 = &s->variant;
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
