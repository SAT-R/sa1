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

typedef struct EggBall {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ Sprite s2;
    /* 0x6C */ struct Task *strc6C; // -> EggBall_44
    /* 0x70 */ s32 qUnk70;
    /* 0x74 */ s32 qUnk74;
    /* 0x78 */ s32 qUnk78;
    /* 0x7C */ s32 qUnk7C;
    /* 0x80 */ u8 filler80[0x4];
    /* 0x84 */ s16 unk84;
    /* 0x86 */ s16 unk86;
    /* 0x88 */ s16 unk88;
    /* 0x8A */ s8 unk8A;
    /* 0x8B */ s8 unk8B;
    /* 0x8C */ u8 unk8C;
    /* 0x8D */ u8 unk8D;
    /* 0x8E */ u8 unk8E;
    /* 0x90 */ s16 unk90;
    /* 0x94 */ void *vram94;
    /* 0x98 */ void *vram98;
} EggBall;

typedef struct EggBall_44 {
    /* 0x00 */ u8 filler0[0x44];
} EggBall_44;

typedef struct EggBall_4C {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    s16 unk3C;
    s16 unk3E;
    /* 0x40 */ u8 filler40[4];
    u8 unk44;
    u8 unk45;
    EggBall *boss;
} EggBall_4C;

extern u16 gUnknown_084ACDD2[8][2][2];

void Task_803053C(void);
void Task_EggBallMain(void);
void TaskDestructor_EggBall(struct Task *t);
void TaskDestructor_8030754(struct Task *t);

static inline void sub_8030870_inline(CamCoord worldX, CamCoord worldY)
{
    EggBall *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
}

void sub_802EF94(CamCoord worldX, CamCoord worldY)
{
    Sprite *s;
    Sprite *s2;
    s16 regionX;
    s16 temp_r7;
    EHit collPlayer;
    EHit collPartner;
    u16 temp_r3;
    u8 *temp_r1;
    u8 *temp_r3_2;

    EggBall *boss = TASK_DATA(gCurTask);

    s = &boss->s;
    s->frameFlags &= ~SPRITE_FLAG_MASK_OBJ_MODE;

    if (PLAYER_IS_ALIVE) {
        gDispCnt &= ~DISPCNT_OBJWIN_ON;
        gWinRegs[WINREG_WINOUT] = 0;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
    }

    if (boss->unk8B == 0) {
        collPlayer = Coll_Player_Boss(s, worldX, worldY, &gPlayer);
        collPartner = 0;
        if (gNumSingleplayerCharacters == NUM_SINGLEPLAYER_CHARS_MAX) {
            collPartner = Coll_Player_Boss(s, worldX, worldY, &gPartner);
        }

        s2 = &boss->s2;
        if ((collPlayer == 1) || (collPartner == 1)) {
            boss->unk8A++;
            boss->unk8B = 32;

            if (boss->unk8A == 4) {
                boss->unk8C = 1;
            }

            boss->s2.variant = 2;
            s2->frameFlags &= ~SPRITE_FLAG_MASK_ANIM_OVER;
            m4aSongNumStart(SE_BOSS_HIT);
        } else if ((collPlayer == 2) || (collPartner == 2)) {
            boss->s2.variant = 1;
            s2->frameFlags &= ~SPRITE_FLAG_MASK_ANIM_OVER;
        }
    }
}

void Task_802F0D0(void)
{
    EggBall *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;

    if (boss->unk8B != 0) {
        if ((--boss->unk8B > 16) && !(boss->unk8B & 2) && PLAYER_IS_ALIVE) {
            s->frameFlags |= SPRITE_FLAG(OBJ_MODE, 2);
            gDispCnt |= DISPCNT_OBJWIN_ON;
            gWinRegs[WINREG_WINOUT] = WINOUT_WINOBJ_ALL | (WINOUT_WIN01_ALL & ~WINOUT_WIN01_CLR);
            gBldRegs.bldCnt = 0xBF;
            gBldRegs.bldY = 0x10;
        }
    }

    DisplaySprite(s);
    DisplaySprite(s2);
}

void CreateEntity_EggBall(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t;
    EggBall *boss;
    SpriteBase *base;
    Sprite *s0;
    Sprite *s;
    Sprite *s2;
    u8 i;
    u16 unk3C, unk3E;

    if (IS_MULTI_PLAYER) {
        SET_MAP_ENTITY_INITIALIZED(me);
        return;
    }

    gPseudoRandom = gFrameCount;
    t = TaskCreate(Task_EggBallMain, sizeof(EggBall), 0x2100U, 0U, TaskDestructor_EggBall);
    boss = TASK_DATA(t);
    s0 = &boss->s;
    boss->base.regionX = regionX;
    boss->base.regionY = regionY;
    boss->base.me = me;
    boss->base.meX = me->x;
    boss->base.id = id;
    boss->unk84 = 0;
    boss->unk88 = 0;
    boss->unk86 = -8;
    boss->unk8B = 0;
    boss->unk8C = 0;
    boss->qUnk70 = 0;
    boss->unk8D = 0;
    boss->unk8E = 0;

    if (gLoadedSaveGame.difficultyLevel != DIFFICULTY_NORMAL) {
        boss->unk8A = 2;
    } else {
        boss->unk8A = 0;
    }

    s = s0;
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);
    s->graphics.dest = ALLOC_TILES(SA1_ANIM_BOSS_3_MOBILE);
    s->oamFlags = SPRITE_OAM_ORDER(21);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_BOSS_3_MOBILE;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;

    s = &boss->s2;
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);
    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_BOSS_3_EGGMAN);
    s->oamFlags = SPRITE_OAM_ORDER(22);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_BOSS_3_EGGMAN;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;

    for (i = 0; i < 8; i++) {
        EggBall_4C *strc;
        Sprite *s;
        t = TaskCreate(Task_803053C, sizeof(EggBall_4C), 0x2200U, 0U, TaskDestructor_8030754);
        strc = TASK_DATA(t);
        strc->unk44 = i;
        strc->unk45 = 90;
        strc->unk3C = unk3C = gUnknown_084ACDD2[i][0][0];
        strc->unk3E = unk3E = gUnknown_084ACDD2[i][0][1];
        strc->base.regionX = boss->base.regionX;
        strc->base.regionY = boss->base.regionY;
        strc->base.me = boss->base.me;
        strc->base.meX = boss->base.meX;
        strc->base.id = boss->base.id;
        strc->boss = boss;

        s = &strc->s;
        s->x = TO_WORLD_POS(me->x, regionX) + unk3C;
        s->y = TO_WORLD_POS(me->y, regionY) + unk3E;

        if ((i & -3) == 0) {
            void *vram = ALLOC_TILES(SA1_ANIM_EGG_BALL_PIPES);
            s->graphics.dest = vram;
            if (i == 0) {
                boss->vram94 = vram;
            } else {
                boss->vram98 = vram;
            }
        } else {
            if (!(2 & i)) {
                s->graphics.dest = boss->vram94;
            } else {
                s->graphics.dest = boss->vram98;
            }
        }

        if (2 & i) {
            s->oamFlags = 0x480;
        } else {
            s->oamFlags = 0x380;
        }

        s->graphics.size = 0;
        s->graphics.anim = SA1_ANIM_EGG_BALL_PIPES;
        s->variant = gUnknown_084ACDD2[i][1][0];
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = (s16)gUnknown_084ACDD2[i][1][1] | 0x2000;
    }

    sub_80171BC(s0->y - 184, s0->y + 0x10, s0->x - 280, s0->x);
    gMusicManagerState.unk1 = 0x10;
}
