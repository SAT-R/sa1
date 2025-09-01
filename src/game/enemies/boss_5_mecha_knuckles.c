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
    /* 0x8C */ s32 unk74;
    /* 0x8C */ s32 unk78;
    /* 0x8C */ u16 unk7C;
    /* 0x8C */ u16 unk7E;
    /* 0x8C */ u16 unk80;
    /* 0x8C */ u16 unk82;
    /* 0x8C */ u16 unk84;
    /* 0x8C */ s32 unk88;
    /* 0x8C */ s32 unk8C;
    /* 0x90 */ s32 unk90;
    /* 0x98 */ s8 unk94;
    /* 0x97 */ u8 unk95;
    /* 0x97 */ u8 unk96;
    /* 0x97 */ u8 unk97;
    /* 0x98 */ s8 unk98;
    /* 0x99 */ s8 unk99;
    /* 0x9A */ u8 unk9A;
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

typedef void (*MechaKnuxPlayerFn)(MechaKnuckles *boss, Player *p);
typedef void (*MechaKnuxFn)(MechaKnuckles *boss);

typedef struct ProcDataBoss5 {
    MechaKnuxPlayerFn knuxPlayerFn;
    MechaKnuxFn knuxFn;
    s16 unk8;
    s16 unkA;
    s16 unkC;
    s16 unkE;
    u16 unk10;
    u16 unk12;
    s32 unk14;
    s8 unk18;
    s8 unk19;
    s32 unk1C;
    s32 unk20;
} ProcDataBoss5; /* 0x24 */

void Task_MechaKnucklesInit(void);
void TaskDestructor_MechaKnuckles(struct Task *t);
void sub_804E8D4(MechaKnuckles *boss, s8 param1);
void sub_804EC60(MechaKnuckles *boss, MapEntity *me);

struct Task *CreateMechaKnucklesParts(MechaKnuckles *boss, s32 variant);

void sub_804EB90(MechaKnuckles *boss);

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

void sub_804EEA8(MechaKnuckles *boss, Player *p);
void sub_804EF18(MechaKnuckles *boss, Player *p);
void sub_804EFA0(MechaKnuckles *boss, Player *p);
void sub_804F020(MechaKnuckles *boss, Player *p);
void sub_804F984(MechaKnuckles *boss, Player *p);
void sub_804F990(MechaKnuckles *boss, Player *p);
void sub_804F9B0(MechaKnuckles *boss, Player *p);
void sub_804FA08(MechaKnuckles *boss, Player *p);
void sub_804FA38(MechaKnuckles *boss, Player *p);
void sub_804FA54(MechaKnuckles *boss, Player *p);
void sub_804FA70(MechaKnuckles *boss, Player *p);
void sub_804FA9C(MechaKnuckles *boss, Player *p);
void sub_804FAC8(MechaKnuckles *boss, Player *p);
void sub_804FAF0(MechaKnuckles *boss, Player *p);
void sub_804FB10(MechaKnuckles *boss, Player *p);
void sub_804FB30(MechaKnuckles *boss, Player *p);
void sub_804FB5C(MechaKnuckles *boss, Player *p);
void sub_804FB7C(MechaKnuckles *boss, Player *p);
void sub_804FBA8(MechaKnuckles *boss, Player *p);
void sub_804FBE4(MechaKnuckles *boss, Player *p);
void sub_804FC28(MechaKnuckles *boss, Player *p);
void sub_804FC78(MechaKnuckles *boss, Player *p);
void sub_804FCA4(MechaKnuckles *boss, Player *p);
void sub_804FCEC(MechaKnuckles *boss, Player *p);
void sub_804FD54(MechaKnuckles *boss, Player *p);

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