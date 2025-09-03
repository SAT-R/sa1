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
#include "game/stage/rings_scatter.h"
#include "game/stage/screen_shake.h"
#include "game/stage/terrain_collision.h"
#include "game/water_effects.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/songs.h"
#include "game/stage/underwater_effects.h"

// TODO: Automate inserting 'MECHA_KNUX_PARTS_VARIANTS' from animation itself!
#define MECHA_KNUX_PARTS_VARIANTS 6

typedef struct MechaKnuckles {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ Hitbox reserved;
    /* 0x44 */ Sprite s2;
    /* 0x74 */ s32 unk74;
    /* 0x78 */ s32 unk78;
    /* 0x7C */ s16 unk7C;
    /* 0x7E */ s16 unk7E;
    /* 0x80 */ s16 unk80;
    /* 0x82 */ s16 unk82;
    /* 0x84 */ u16 unk84;
    /* 0x88 */ s32 unk88;
    /* 0x8C */ s32 unk8C;
    /* 0x90 */ s32 unk90;
    /* 0x94 */ s8 unk94;
    /* 0x95 */ s8 unk95;
    /* 0x96 */ u8 unk96;
    /* 0x97 */ s8 unk97;
    /* 0x98 */ s8 unk98;
    /* 0x99 */ s8 unk99;
    /* 0x9A */ s8 unk9A;
    /* 0x9B */ u8 unk9B;
} MechaKnuckles; /* 0x9C */

typedef struct MechaKnucklesRocket {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ Hitbox reserved;
    /* 0x44 */ SpriteTransform transform;
} MechaKnucklesRocket; /* 0x50 */

typedef struct MechaKnucklesParts {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ Hitbox reserved;
    /* 0x44 */ u8 filler44[4];
    /* 0x48 */ SpriteTransform transform;
} MechaKnucklesParts; /* 0x54 */

typedef bool32 (*MechaKnuxPlayerFn)(MechaKnuckles *boss, Player *p);
typedef void (*MechaKnuxFn)(MechaKnuckles *boss);

typedef struct Unk {
    s16 anim;
    u8 variant;
    u8 unk3;
} Unk;

typedef struct ProcDataBoss5 {
    MechaKnuxPlayerFn knuxPlayerFn;
    MechaKnuxPlayerFn knuxFn;
    s16 unk8;
    s16 unkA;
    s16 unkC;
    s16 unkE;
    u16 unk10;
    u16 unk12;
    s32 unk14;
    s8 unk18;
    s8 unk19;
    u8 filler1A[2];
    Unk unk1C[2];
} ProcDataBoss5; /* 0x24 */

void Task_MechaKnucklesInit(void);
void TaskDestructor_MechaKnuckles(struct Task *t);
void sub_804E8D4(MechaKnuckles *boss, s32 param1);
void sub_804EC60(MechaKnuckles *boss, MapEntity *me);

struct Task *CreateMechaKnucklesParts(MechaKnuckles *boss, s32 variant);

void sub_804EB04(MechaKnuckles *boss);
void sub_804EB90(MechaKnuckles *boss);
void sub_804FDD4(MechaKnuckles *boss);

void sub_804F73C(MechaKnuckles *boss);
void sub_804F760(MechaKnuckles *boss);
void sub_804F788(MechaKnuckles *boss);
void sub_804F78C(MechaKnuckles *boss);
void sub_804F790(MechaKnuckles *boss);
void sub_804F7B0(MechaKnuckles *boss);
void sub_804F7B4(MechaKnuckles *boss);
void sub_804F7C0(MechaKnuckles *boss);
void sub_804F7C4(MechaKnuckles *boss);
void sub_804F7C8(MechaKnuckles *boss);
void sub_804F7CC(MechaKnuckles *boss);
void sub_804F7D0(MechaKnuckles *boss);
void sub_804F7D4(MechaKnuckles *boss);
void sub_804F7D8(MechaKnuckles *boss);
void sub_804F7DC(MechaKnuckles *boss);
void sub_804F7E8(MechaKnuckles *boss);
void sub_804F7EC(MechaKnuckles *boss);
void sub_804F7F0(MechaKnuckles *boss);
void sub_804F7F4(MechaKnuckles *boss);
void sub_804F834(MechaKnuckles *boss);
void sub_804F860(MechaKnuckles *boss);
void sub_804F888(MechaKnuckles *boss);
void sub_804F8D4(MechaKnuckles *boss);
void sub_804F8D8(MechaKnuckles *boss);
void sub_804F8DC(MechaKnuckles *boss);
void sub_804F934(MechaKnuckles *boss);
void sub_804F95C(MechaKnuckles *boss);

bool32 sub_804EEA8(MechaKnuckles *boss, Player *p);
bool32 sub_804EF18(MechaKnuckles *boss, Player *p);
bool32 sub_804EFA0(MechaKnuckles *boss, Player *p);
bool32 sub_804F020(MechaKnuckles *boss, Player *p);
bool32 sub_804F984(MechaKnuckles *boss, Player *p);
bool32 sub_804F990(MechaKnuckles *boss, Player *p);
bool32 sub_804F9B0(MechaKnuckles *boss, Player *p);
bool32 sub_804FA08(MechaKnuckles *boss, Player *p);
bool32 sub_804FA38(MechaKnuckles *boss, Player *p);
bool32 sub_804FA54(MechaKnuckles *boss, Player *p);
bool32 sub_804FA70(MechaKnuckles *boss, Player *p);
bool32 sub_804FA9C(MechaKnuckles *boss, Player *p);
bool32 sub_804FAC8(MechaKnuckles *boss, Player *p);
bool32 sub_804FAF0(MechaKnuckles *boss, Player *p);
bool32 sub_804FB10(MechaKnuckles *boss, Player *p);
bool32 sub_804FB30(MechaKnuckles *boss, Player *p);
bool32 sub_804FB5C(MechaKnuckles *boss, Player *p);
bool32 sub_804FB7C(MechaKnuckles *boss, Player *p);
bool32 sub_804FBA8(MechaKnuckles *boss, Player *p);
bool32 sub_804FBE4(MechaKnuckles *boss, Player *p);
bool32 sub_804FC28(MechaKnuckles *boss, Player *p);
bool32 sub_804FC78(MechaKnuckles *boss, Player *p);
bool32 sub_804FCA4(MechaKnuckles *boss, Player *p);
bool32 sub_804FCEC(MechaKnuckles *boss, Player *p);
bool32 sub_804FD54(MechaKnuckles *boss, Player *p);
bool32 sub_804ED80(MechaKnuckles *boss, Player *p);

extern const ProcDataBoss5 sBoss5ProcData[25];
extern const TileInfoFirework sMechaKnucklesParts[MECHA_KNUX_PARTS_VARIANTS];

// TODO: Fake-match
void CreateEntity_MechaKnuckles(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t;
    MechaKnuckles *boss;

    if (IS_MULTI_PLAYER) {
        SET_MAP_ENTITY_INITIALIZED(me);
        return;
    }

    t = TaskCreate(Task_MechaKnucklesInit, sizeof(MechaKnuckles), 0x2000, 0, TaskDestructor_MechaKnuckles);
    boss = TASK_DATA(t);

#ifndef NON_MATCHING
    {
        register s32 r8 asm("r8") = 0;
        asm("" ::"r"(r8));
        asm("" ::: "r2");
    }
#endif

    boss->base.regionX = regionX;
    boss->base.regionY = regionY;
    boss->base.me = me;
    boss->base.meX = me->x;
    boss->base.id = id;
    SET_MAP_ENTITY_INITIALIZED(me);

    sub_804EC60(boss, me);

    if (gRingsScatterTask != NULL) {
        RingsScatter *scatter = TASK_DATA(gRingsScatterTask);
        scatter->SA2_LABEL(unk2B6) |= 1;
    }
}

// (96.14%) https://decomp.me/scratch/PJZn0
NONMATCH("asm/non_matching/game/enemies/boss_5__Task_MechaKnucklesInit.inc", void Task_MechaKnucklesInit())
{
    Sprite *s;
    Sprite *s2;
    s32 sp4;
    u32 var_r0;
    u32 var_r5;

    Player *p = &gPlayer;
    MechaKnuckles *boss;
#ifndef NON_MATCHING
    asm("" ::"r"(p));
#endif
    boss = TASK_DATA(gCurTask);

    s = &boss->s;
    s2 = &boss->s2;

    if (IS_ALIVE(p)) {
        gDispCnt &= ~0x8000;
        s->frameFlags &= ~0x180;
    }

    sp4 = sBoss5ProcData[boss->unk9A].knuxPlayerFn(boss, p);
    sub_804EB04(boss);
    if (!(boss->unk88 & 0x04000000)) {
        sub_804FDD4(boss);
    }
    if (!(boss->unk88 & 0x02000000)) {
        sub_804EB90(boss);
    }

    var_r5 = sub_800BFEC(s, boss->unk8C + I(boss->unk74), boss->unk90 + I(boss->unk78), p);
    if (gNumSingleplayerCharacters == 2) {
        var_r5 |= sub_800BFEC(s, boss->unk8C + I(boss->unk74), boss->unk90 + I(boss->unk78), &gPartner);
    }

    if (var_r5 == 0) {
        if (boss->unk97 <= 0) {
#ifndef NON_MATCHING
            register Player *player asm("r3");
#else
            Player *player;
#endif
            var_r5 = sub_800C0E0(s, boss->unk8C + I(boss->unk74), boss->unk90 + I(boss->unk78), p);
            if (gNumSingleplayerCharacters == 2) {
                var_r0 = sub_800C0E0(s, boss->unk8C + I(boss->unk74), boss->unk90 + I(boss->unk78), &gPartner);
            } else {
                var_r0 = 0;
            }

            if (var_r5 != 0) {
                if (((boss->unk9A == 5) || (boss->unk9A == 0xA)) && !(p->moveState & 2)) {
                    if (boss->unk9A != 0xA) {
                        sp4 = 0;
                        boss->unk9B = 0xA;
                        player = p;
                        player->qSpeedAirX = -player->qSpeedAirX;
                        player->qSpeedGround = -player->qSpeedGround;
                    }
                } else {
                    sp4 = 0;
                    boss->unk9B = 0x11;
                    if (--boss->unk95 <= 0) {
                        boss->unk95 = 0x13;
                    }
                    boss->unk97 = 0x20;
                }
            } else if (var_r0 != 0) {
                if (((boss->unk9A == 5) || (boss->unk9A == 0xA)) && ((gPartner.moveState & 2) == 0)) {
                    if (boss->unk9A != 0xA) {
                        sp4 = 0;
                        boss->unk9B = 0xA;
                        player = &gPartner;
                        player->qSpeedAirX = -player->qSpeedAirX;
                        player->qSpeedGround = -player->qSpeedGround;
                    }
                } else {
                    sp4 = 0;
                    boss->unk9B = 0x11;
                    if (--boss->unk95 <= 0) {
                        boss->unk95 = 0x13;
                    }
                    boss->unk97 = 0x20;
                }
            }
        }
    }

    if (boss->unk97 != 0) {
        if (!(gStageTime & 2) && !(gPlayer.moveState & 0x80)) {
            s->frameFlags |= 0x100;
            gDispCnt |= 0x8000;
            gWinRegs[5] = 0x3F3F;
        }

        if (boss->unk9B != 17 && boss->unk9B != 18) {
            boss->unk97--;
        }
    }

    s->x = s2->x = (boss->unk8C + I(boss->unk74)) - gCamera.x;
    s->y = s2->y = (boss->unk90 + I(boss->unk78)) - gCamera.y;

    if (boss->unk88 & 0x20) {
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
    if (boss->unk88 & 0x40) {
        UpdateSpriteAnimation(s2);
        DisplaySprite(s2);
    }

    if (sp4 == 0) {
        boss->unk9A = boss->unk9B;
        sub_804E8D4(boss, boss->unk9A);
    }
}
END_NONMATCH

void sub_804E8D4(MechaKnuckles *boss, s32 param1)
{
    s32 sp0;
    const ProcDataBoss5 *procData;
    Player *p;
    Sprite *s;
    s32 var_r7;
    s32 var_r8;
    s32 temp_r1;
    s32 temp_r3;
    s32 temp_r5_2;
    s32 var_r2;

    procData = &sBoss5ProcData[param1];

    p = &gPlayer;

    s = &boss->s;
    sp0 = boss->unk94;
    var_r7 = procData->unk8;
    var_r8 = procData->unkC;
    var_r2 = boss->unk88;
    temp_r3 = procData->unk14;
    temp_r5_2 = (0x400 & temp_r3);
    if (temp_r5_2 == 0) {
        var_r2 = (var_r2 & 0xFFFFF8FF) | (0x300 & temp_r3);
    }
    temp_r1 = 0x2000 & temp_r3;
    if (temp_r1 == 0) {
        var_r2 = (var_r2 & 0xFFFFC7FF) | (0x1800 & temp_r3);
    }
    var_r2 = ((((((((var_r2 | temp_r5_2 | temp_r1) & ~0x10) | (temp_r3 & 0x10)) & 0xFFFF3FFF) | (0xC000 & temp_r3)) & 0xFDFFFFFF)
               | (0x02000000 & temp_r3))
              & 0xFBFFFFFF)
        | (temp_r3 & 0x04000000);
    if (var_r2 & 0x10) {
        var_r2 &= ~1;
    }
    boss->unk88 = var_r2;

    temp_r1 = procData->unk10;
    boss->unk84 = temp_r1;

    temp_r1 = procData->unk18;
    if (temp_r1 != boss->unk98) {
        boss->unk98 = procData->unk18;
    }

    temp_r1 = procData->unk19;
    if (temp_r1 != boss->unk99) {
        boss->unk78 -= Q(boss->unk99 - temp_r1);
        boss->unk99 = procData->unk19;
    }

    switch (0x1800 & var_r2) {
        case 0x800: {
            if (I(boss->unk74) > 0x77) {
                var_r7 = -var_r7;
                var_r8 = -var_r8;
            }
        } break;
        case 0x1000: {
            if ((I(boss->unk74) + boss->unk8C) >= I(p->qWorldX)) {
                var_r7 = -var_r7;
                var_r8 = -var_r8;
            }
        } break;
    }
    boss->unk7C = var_r7;
    boss->unk7E = procData->unkA;
    boss->unk80 = var_r8;
    boss->unk82 = procData->unkE;

    switch (0x300 & var_r2) {
        case 0x100: {
            if (I(boss->unk74) > 0x77) {
                s->frameFlags &= ~0x400;
            } else {
                s->frameFlags |= 0x400;
            }

        } break;

        case 0x200: {
            if ((I(boss->unk74) + boss->unk8C) >= I(p->qWorldX)) {
                s->frameFlags &= ~0x400;
            } else {
                s->frameFlags |= 0x400;
            }

        } break;
    }

    if ((procData->unk1C[sp0].anim >= 0)
        && ((s->graphics.anim != procData->unk1C[sp0].anim) || (s->variant != procData->unk1C[sp0].variant))) {
        s->graphics.anim = procData->unk1C[sp0].anim;
        s->variant = procData->unk1C[sp0].variant;
        s->prevVariant = 0xFF;
        s->frameFlags &= 0xFFFFBFFF;
        s->hitboxes[0].index = -1;
        s->hitboxes[1].index = -1;
    }

    procData->knuxFn(boss, p);
}

void sub_804EB04(MechaKnuckles *boss)
{
    s32 var_r2;
    s32 var_r3;
    s32 var_r4;

    var_r3 = boss->unk7C;
    var_r4 = boss->unk7E;
    boss->unk74 += var_r3;
    boss->unk78 += var_r4;
    var_r2 = var_r3 & 0x80000000;
    var_r3 += boss->unk80;

    if ((boss->unk88 & 0x4000) && (var_r2 != (var_r3 & 0x80000000))) {
        var_r3 = 0;
        boss->unk80 = 0;
    }

    boss->unk7C = var_r3;
    var_r2 = var_r4;
    var_r2 &= 0x80000000;
    var_r4 = var_r4 + boss->unk82;

    if ((boss->unk88 & 0x8000) && (var_r2 != (var_r4 & 0x80000000))) {
        var_r4 = 0;
        boss->unk82 = 0;
    }

    boss->unk7E = var_r4;
}

void sub_804EB90(MechaKnuckles *boss)
{
    s32 *temp_r5;
    s32 *temp_r5_2;
    s32 temp_r0;
    s32 res;
    s32 temp_r6;
    s32 temp_r7;

    temp_r7 = boss->unk8C + I(boss->unk74);
    temp_r6 = boss->unk90 + I(boss->unk78);

    boss->unk88 &= ~1;

    res = sa2__sub_801E4E4(temp_r6 + boss->unk99, temp_r7, 1, 8, NULL, sa2__sub_801EE64);
    if (boss->unk88 & 0x10) {
        if (res < 0) {
            boss->unk78 += res << 8;
            boss->unk88 |= 1;
        }
    } else if (res <= 0xA) {
        boss->unk78 += res << 8;
        boss->unk88 |= 1;
    }

    boss->unk88 &= ~2;

    if (boss->unk7E < 0) {
        res = sa2__sub_801E4E4(temp_r6 - boss->unk99, temp_r7, 1, -8, NULL, sa2__sub_801EE64);

        if (res < 0) {
            boss->unk78 -= Q(res);
            boss->unk88 |= 2;
        }
    }
}

void sub_804EC60(MechaKnuckles *boss, MapEntity *me)
{
    Sprite *s;
    s8 *ptr_r1;
    s8 *ptr_r3;
    s32 off_r1;
    Sprite *s2;
    u32 difficulty;

    boss->unk8C = (boss->base.meX * 8) + (boss->base.regionX << 8);
    boss->unk90 = (me->y * 8) + (boss->base.regionY << 8);
    boss->unk74 = 0xD000;
    boss->unk78 = -0x2000;
    boss->unk7C = 0;
    boss->unk7E = 0;
    boss->unk80 = 0;
    boss->unk82 = 0;
    boss->unk88 = 0;
    boss->unk84 = 0;
    boss->unk94 = 0;

    ptr_r3 = &boss->unk95;
    off_r1 = 8;
    difficulty = LOADED_SAVE->difficultyLevel;
    *ptr_r3 = off_r1 -= (difficulty * 2);
    ptr_r1 = &boss->unk96;
    *ptr_r1 = 4 - difficulty;

    boss->unk97 = 0;
    boss->unk98 = 0;
    boss->unk99 = 0;
    boss->unk9A = 0;
    boss->unk9B = 0;

    s = &boss->s;
    s->graphics.dest = VramMalloc(0x40U);
    s->oamFlags = 0x500;
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->hitboxes[1].index = -1;
    s->frameFlags = 0x2000;

    s2 = &boss->s2;
    s2->graphics.dest = VramMalloc(30);
    s2->oamFlags = 0x500;
    s2->graphics.size = 0;
    s2->animCursor = 0;
    s2->qAnimDelay = 0;
    s2->prevVariant = -1;
    s2->animSpeed = 0x10;
    s2->palId = 0;
    s2->frameFlags = 0x2000;
    sub_804E8D4(boss, boss->unk9A);
}

u32 sub_804ED80(MechaKnuckles *boss, Player *p)
{
    s32 temp_r1;
    s32 temp_r2;
    s32 rnd;
    u32 result;
    s32 diffX;

    temp_r2 = I(p->qWorldX);
    temp_r1 = boss->unk8C + I(boss->unk74);
    diffX = temp_r2 - temp_r1;
    if (diffX < 0) {
        diffX = temp_r1 - temp_r2;
    }

    rnd = PseudoRandom32();

    if (boss->unk94 == 0) {
        if (diffX < 80) {
            if (diffX < 32) {
                result = (p->moveState & 2) ? 6 : 13;
            } else {
                if (0x1000 & rnd) {
                    result = 5;
                } else {
                    result = (rnd & 0x100) ? 11 : 6;
                }
            }
        } else {
            result = (rnd & 0x100) ? 11 : 6;
        }
    } else if (diffX > 0x4F) {
        if (0x3000 & rnd) {
            result = 0xF;
        } else {
            result = (rnd & 0x100) ? 11 : 6;
        }
    } else if (p->moveState & 2) {
        result = 6;
    } else {
        result = (rnd & 0x100) ? 11 : 6;
    }
    return result;
}
