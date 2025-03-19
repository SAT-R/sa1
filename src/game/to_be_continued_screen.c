#include "global.h"
#include "core.h"
#include "gba/defines.h"
#include "trig.h"
#include "flags.h"
#include "game/title_screen.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/vram_hardcoded.h"

typedef struct {
    /* 0x00 */ Sprite s;
    /* 0x30 */ u16 unk30;
    /* 0x32 */ u16 positions[16][2];
} ToBeContinuedScreenShrunk;

typedef struct {
    /* 0x00 */ Sprite s;
    /* 0x30 */ u16 unk30;
    /* 0x32 */ u16 positions[16][2];
    /* 0x74 */ struct Task *tasks74[2];
    /* 0x7C */ u16 unk7C;
    /* 0x7E */ u16 unk7E;
} ToBeContinuedScreen;

void Task_ToBeContinuedScreenInit(void);
void Task_80124C4(void);
void Task_801252C(void);
void TaskDestructor_ToBeContinuedScreen(struct Task *t);
void Task_ShrunkToBeContinuedScreenInit(void);
void TaskDestructor_8012724(struct Task *t);
struct Task *sub_80125C0(struct Task *tbcTask, u8 taskPriority);

// (97.93%) https://decomp.me/scratch/gN7U4
NONMATCH("asm/non_matching/game/tbc_screen__CreateToBeContinuedScreen.inc", void CreateToBeContinuedScreen(void))
{
    struct Task *t;
    ToBeContinuedScreen *tbc;
    u8 i;
    Sprite *s;

    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
    t = TaskCreate(Task_ToBeContinuedScreenInit, sizeof(ToBeContinuedScreen), 0x2000, 0, TaskDestructor_ToBeContinuedScreen);
    tbc = TASK_DATA(t);
    s = &tbc->s;

    tbc->unk30 = 0;
    tbc->unk7C = 0;

    s->x = DISPLAY_WIDTH;
    s->y = DISPLAY_HEIGHT / 2;

    s->graphics.dest = VRAM_RESERVED_TO_BE_CONTINUED;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_TO_BE_CONTINUED;
    s->variant = 0;
    SPRITE_INIT_SCRIPT(s, 1.0);
    s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
    UpdateSpriteAnimation(s);

    for (i = 0; i < ARRAY_COUNT(tbc->tasks74); i++) {
        tbc->tasks74[i] = sub_80125C0(t, i + 1);
    }

    DmaFill32(3, ((480 << 16) | (DISPLAY_HEIGHT / 2)), tbc->positions, sizeof(tbc->positions));

    gBgPalette[0] = RGB_BLACK;
    gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
}
END_NONMATCH

void Task_ToBeContinuedScreenInit(void)
{
    ToBeContinuedScreen *tbc;
    Sprite *s;

    gBldRegs.bldCnt = 0;
    gBldRegs.bldY = 0;

    tbc = TASK_DATA(gCurTask);
    tbc->unk7C = (tbc->unk7C + 8) & ONE_CYCLE;
    s = &tbc->s;

    s->x = ((COS_24_8(tbc->unk7C) * 15) >> 4) + (DISPLAY_WIDTH / 2);

    tbc->positions[tbc->unk30][0] = s->x;
    tbc->positions[tbc->unk30][1] = s->y;
    tbc->unk30 = (tbc->unk30 + 1) % 16u;
    DisplaySprite(s);

    if (tbc->unk7C == 0x100) {
        s->x = DISPLAY_WIDTH / 2;
        tbc->unk7E = 0;
        gCurTask->main = Task_80124C4;
    } else if (tbc->unk7C == 0x200) {
        tbc->unk7E = 0;
        gCurTask->main = Task_801252C;
    }
}

void Task_80124C4(void)
{
    ToBeContinuedScreen *tbc = TASK_DATA(gCurTask);
    Sprite *s = &tbc->s;

    tbc->positions[tbc->unk30][0] = s->x;
    tbc->positions[tbc->unk30][1] = s->y;
    tbc->unk30 = (tbc->unk30 + 1) % 16u;
    DisplaySprite(s);

    if (++tbc->unk7E == GBA_FRAMES_PER_SECOND + 1) {
        gCurTask->main = Task_ToBeContinuedScreenInit;
    }
}

void Task_801252C(void)
{
    ToBeContinuedScreen *tbc = TASK_DATA(gCurTask);
    Sprite *s = &tbc->s;

    tbc->positions[tbc->unk30][0] = s->x;
    tbc->positions[tbc->unk30][1] = s->y;
    tbc->unk30 = (tbc->unk30 + 1) % 16u;

    if (++tbc->unk7E == GBA_FRAMES_PER_SECOND + 1) {
        TasksDestroyAll();

        PAUSE_BACKGROUNDS_QUEUE();
        SA2_LABEL(gUnknown_03005390) = 0;
        PAUSE_GRAPHICS_QUEUE();

        CreateSegaLogo();
    }
}

struct Task *sub_80125C0(struct Task *tbcTask, u8 priority)
{
    struct Task *t;
    ToBeContinuedScreenShrunk *shrunk;
    ToBeContinuedScreen *tbc;
    u8 i;
    Sprite *s;

    t = TaskCreate(Task_ShrunkToBeContinuedScreenInit, sizeof(ToBeContinuedScreenShrunk), 0x2000 | priority, 0, TaskDestructor_8012724);
    t->parent = (TaskPtr)(uintptr_t)tbcTask;
    shrunk = TASK_DATA(t);
    s = &shrunk->s;

    tbc = TASK_DATA(tbcTask);
    shrunk->unk30 = (tbc->unk30 + 8) % 16u;

    s->x = tbc->s.x;
    s->y = tbc->s.y;

    s->graphics.dest = tbc->s.graphics.dest + (56 * TILE_SIZE_4BPP);
    s->oamFlags = SPRITE_OAM_ORDER(priority + 18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_TO_BE_CONTINUED;
    s->variant = priority;
    SPRITE_INIT_SCRIPT(s, 1.0);
    s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
    UpdateSpriteAnimation(s);

    DmaFill32(3, ((480 << 16) | (DISPLAY_HEIGHT / 2)), shrunk->positions, sizeof(shrunk->positions));

    return t;
}

void Task_ShrunkToBeContinuedScreenInit(void)
{
    ToBeContinuedScreenShrunk *sub = TASK_DATA(gCurTask);
    ToBeContinuedScreen *tbc = TASK_DATA(TASK_PARENT(gCurTask));

    sub->s.x = tbc->positions[sub->unk30][0];
    sub->s.y = tbc->positions[sub->unk30][1];

    sub->positions[sub->unk30][0] = sub->s.x;
    sub->positions[sub->unk30][1] = sub->s.y;
    sub->unk30 = (tbc->unk30 + 8) % 16u;
    DisplaySprite(&sub->s);
}

void TaskDestructor_ToBeContinuedScreen(struct Task *t) { }

void TaskDestructor_8012724(struct Task *t) { }
