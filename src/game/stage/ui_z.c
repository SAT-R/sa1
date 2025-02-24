#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/gTask_03006240.h"
#include "game/stage/ui.h"

#include "constants/zones.h"

#define UI_OAM_ORDER_INDEX 1

void Task_8055458(void);
void Task_8055730(void);
void Task_8055798(void);
void Task_8055904(void);
void Task_8055998(void);
void Task_8055AA0(void);
void Task_8055B18(void);
void TaskDestructor_8055C38(struct Task *);
void TaskDestructor_StrcUI28_8055C4C(struct Task *);
typedef struct {
    u8 filler0[0x8];
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u16 unkE;
    u16 unk10;
    u16 unk12;
    u16 unk14;
    u8 unk16;
    u16 unk18;
    u16 unk1A;
    void *unk1C;
    u8 unk20;
    u8 unk21;
} Strc_Ui_24;

typedef struct {
    /* 0x00 */ GameOverC overC;
    /* 0x1C */ struct Task *task1C;
    /* 0x20 */ struct Task *task20;
    /* 0x24 */ u16 unk24;
    /* 0x26 */ u8 unk26;
    /* 0x27 */ u8 unk27;
} Strc_Ui_28;

typedef struct {
    void *vram0;
    void *vram4;
    void *vram8;
    void *vramC;
    void *vram10;
    struct Task *task14;
    struct Task *task18;
    struct Task *task1C;
    struct Task *task20;
    struct Task *task24;
} StrcStack;

void sub_8054A80(void *);

// Output: struct Task *t -> Struct_sub_80550F8
// (94.00%) https://decomp.me/scratch/wEQCB
NONMATCH("asm/non_matching/game/stage/ui__sub_80550F8.inc", struct Task *sub_80550F8(void))
{
    Strc_Ui_24 *ui_24;
    Strc_Ui_28 *ui_28;
    struct Task *t, *tt;
    void *vram0, *vram1;
    StrcStack sp04;
    u8 i;
    struct Task *t6;

    if ((gCurrentLevel <= LEVEL_INDEX(ZONE_7, ACT_1)) && ((gCurrentLevel & 0x1) != ACT_1) && (SA2_LABEL(gUnknown_030054B0) != gCurrentLevel)
        && (!IS_EXTRA_STAGE(gCurrentLevel))) {
        for (i = 0; i < 8; i++) {
            OamData *oam = OamMalloc(UI_OAM_ORDER_INDEX);

            if (iwram_end == oam) {
                break;
            }

            oam->all.attr0 = 0x400 | 42;
            oam->all.attr1 = i * 32 + ~0x7FFF;
            oam->all.attr2 = 0x6080;
        }
    }

    sub_80535FC();
    sub_8053674();
    // _08055164

    tt = TaskCreate(Task_8055730, sizeof(Strc_Ui_24), 0x2120, 0, TaskDestructor_8055C38);
    sp04.task1C = tt;
    ui_24 = TASK_DATA(tt);
    ui_24->unk18 = 0;
    ui_24->unk20 = 1;
    ui_24->unk1A = 0;
    ui_24->unkA = -80;
    ui_24->unkC = 0;
    ui_24->unkE = 3;
    ui_24->unk8 = 24;
    ui_24->unk10 = 6;
    ui_24->unk16 = 0;
    ui_24->unk12 = 15;
    ui_24->unk14 = 5;
    ui_24->unk1C = VramMalloc(32);
    sp04.vram4 = ui_24->unk1C;
    ui_24->unk21 = 0;

    tt = TaskCreate(Task_8055798, sizeof(Strc_Ui_24), 0x2120, 0, NULL);
    sp04.task20 = tt;
    ui_24 = TASK_DATA(tt);
    ui_24->unk18 = 0;
    ui_24->unk20 = 0;
    ui_24->unk1A = 1;
    ui_24->unkA = +20;
    ui_24->unkE = 1;
    ui_24->unk8 = 24;
    ui_24->unk10 = 7;
    ui_24->unk12 = 15;
#if 0
    ui_24->unk16 = 3;
#else
    ui_24->unk16 = 1;
#endif
    ui_24->unk8 = 16;
    ui_24->unk21 = 0;

    tt = TaskCreate(Task_8055904, sizeof(Strc_Ui_24), 0x2120, 0, TaskDestructor_8055C38);
    sp04.task14 = tt;
    ui_24 = TASK_DATA(tt);
    ui_24->unk18 = 0;
    ui_24->unk20 = 1;
    ui_24->unk1A = 0;
    ui_24->unkA = +180;
    ui_24->unkC = 160;
    ui_24->unkE = 6;
    ui_24->unk10 = 10;
    ui_24->unk12 = 6;
    ui_24->unk16 = 1;
    ui_24->unk8 = 0;
    ui_24->unk1C = VramMalloc(12);
    sp04.vram10 = ui_24->unk1C;
    ui_24->unk21 = 0;

    tt = TaskCreate(Task_8055998, sizeof(Strc_Ui_24), 0x2120, 0, TaskDestructor_8055C38);
    sp04.task18 = tt;
    ui_24 = TASK_DATA(tt);
    ui_24->unk18 = 0;
    ui_24->unk20 = 1;
    ui_24->unk1A = 0;

    if (((gCurrentLevel & 0x1) != ACT_1) && (SA2_LABEL(gUnknown_030054B0) != gCurrentLevel) && (!IS_EXTRA_STAGE(gCurrentLevel))) {
        ui_24->unkA = -16;
        ui_24->unkC = +42;

    } else {
        ui_24->unkA = +240;
        ui_24->unkC = 126;
    }

    ui_24->unkE = 8;
    ui_24->unk10 = 8;
    ui_24->unk12 = 6;
    ui_24->unk16 = 1;
    ui_24->unk8 = 8;
    ui_24->unk1C = VramMalloc(16);
    sp04.vram0 = ui_24->unk1C;
    ui_24->unk21 = 0;

    tt = TaskCreate(Task_8055AA0, sizeof(Strc_Ui_24), 0x2120, 0, TaskDestructor_8055C38);
    sp04.task24 = tt;
    ui_24 = TASK_DATA(tt);
    ui_24->unk18 = 0;
    ui_24->unk20 = 1;
    ui_24->unk1A = 0;
    ui_24->unkA = +360;
    ui_24->unkC = 114;
    ui_24->unkE = 4;
    ui_24->unk10 = 9;
    ui_24->unk12 = 6;
    ui_24->unk16 = 1;
    ui_24->unk8 = 0;
    ui_24->unk1C = VramMalloc(16);
    sp04.vram8 = ui_24->unk1C;
    ui_24->unk21 = 0;

    t6 = TaskCreate(Task_8055B18, sizeof(Strc_Ui_24), 0x2120, 0, TaskDestructor_8055C38);
    ui_24 = TASK_DATA(t6);
    ui_24->unk18 = 0;
    ui_24->unk20 = 1;
    ui_24->unk1A = 0;
    ui_24->unkA = +256;
    ui_24->unkC = 128;
    ui_24->unkE = 9;
    ui_24->unk10 = 2;
    ui_24->unk12 = 6;
    ui_24->unk16 = 1;
    ui_24->unk8 = 0;
    ui_24->unk1C = VramMalloc(56);
    sp04.vramC = ui_24->unk1C;
    ui_24->unk21 = 0;

    t = TaskCreate(Task_8055458, sizeof(Strc_Ui_28), 0x2100, 0, TaskDestructor_StrcUI28_8055C4C);
    ui_28 = TASK_DATA(t);
    ui_28->unk24 = 0;
    ui_28->unk26 = 1;
    ui_28->overC.unkC = sp04.task1C;
    ui_28->overC.unk10 = sp04.task20;
    ui_28->overC.unk14 = sp04.task18;
    ui_28->overC.unk18 = sp04.task24;
    ui_28->task1C = sp04.task14;
    ui_28->task20 = t6;
    ui_28->overC.unk0 = 0;
    ui_28->overC.unk2 = 0;
    ui_28->overC.unk4 = 2;
    ui_28->overC.unk6 = 0;
    ui_28->overC.unk8 = 96;
    ui_28->overC.unkA = 1;
    ui_28->unk27 = 0;

    sub_8054A80(&sp04);
    sub_805423C(&ui_28->overC);

    return t;
}
END_NONMATCH
