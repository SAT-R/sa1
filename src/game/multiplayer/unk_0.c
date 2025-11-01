#include "global.h"
#include "core.h"
#include "flags.h"
#include "game/multiplayer/unk_0.h"
#include "game/sa1_sa2_shared/globals.h"

void Task_801C770(void);
void Task_801C810(void);
void Task_801C8D4(void);
void sub_801C9AC(void);
void sub_801C9C0(int_vcount vcount);
void TaskDestructor_801C980(struct Task *t);

extern const winreg_t gUnknown_087C0118[DISPLAY_HEIGHT];

struct Task *sub_801C704(void)
{
    struct Task *t;
    UnkMP0 *strc;

    t = TaskCreate(Task_801C770, 8U, 0x2000U, 0U, TaskDestructor_801C980);
    strc = TASK_DATA(t);
    strc->unk2 = 0;
    strc->unk4 = 600;
    strc->unk6 = 0;
    strc->unk0 = 64;

    gDispCnt |= DISPCNT_WIN0_ON;
    gWinRegs[WINREG_WININ] = 0x1F;
    gWinRegs[WINREG_WINOUT] = 0x3F;
    gBldRegs.bldCnt = 0x3FDF;
    gBldRegs.bldY = 0;

    return t;
}

void Task_801C770()
{
    u16 temp_r0;
    u8 temp_r0_2;
    u8 temp_r0_3;

    UnkMP0 *strc = TASK_DATA(gCurTask);

    strc->unk2 += 0x40;
    if (strc->unk2 == 0x1000) {
        gCurTask->main = Task_801C810;
    }

    gBldRegs.bldY = I(strc->unk2);
    gWinRegs[WINREG_WIN0V] = WIN_RANGE(17, DISPLAY_HEIGHT - 16);
    gVBlankCallbacks[gNumVBlankCallbacks++] = sub_801C9AC;
    gFlags |= FLAGS_EXECUTE_VBLANK_CALLBACKS;
    gHBlankCallbacks[gNumHBlankCallbacks++] = sub_801C9C0;
    gFlags |= FLAGS_EXECUTE_HBLANK_CALLBACKS;
}

void Task_801C810()
{
    u16 temp_r0;
    u8 temp_r0_2;
    u8 temp_r0_3;

    UnkMP0 *strc = TASK_DATA(gCurTask);
    u32 siocnt = REG_SIOCNT_32;

    gBldRegs.bldY = I(strc->unk2);
    gVBlankCallbacks[gNumVBlankCallbacks++] = sub_801C9AC;
    gFlags |= FLAGS_EXECUTE_VBLANK_CALLBACKS;
    gHBlankCallbacks[gNumHBlankCallbacks++] = sub_801C9C0;
    gFlags |= FLAGS_EXECUTE_HBLANK_CALLBACKS;

    if (--strc->unk4 == 0) {
        gCurTask->main = Task_801C8D4;
    }

    if (SA2_LABEL(gUnknown_030054B4[SIO_MULTI_CNT->id]) != -1) {
        TaskDestroy(gCurTask);
    }
}

void Task_801C8D4()
{
    u16 temp_r0;
    u8 temp_r0_2;
    u8 temp_r0_3;

    UnkMP0 *strc = TASK_DATA(gCurTask);

    strc->unk2 -= 0x40;
    if ((strc->unk2 < 0x0) || (SA2_LABEL(gUnknown_030054B4[SIO_MULTI_CNT->id]) != -1)) {
        TaskDestroy(gCurTask);
        return;
    }

    gBldRegs.bldY = I(strc->unk2);
    gVBlankCallbacks[gNumVBlankCallbacks++] = sub_801C9AC;
    gFlags |= FLAGS_EXECUTE_VBLANK_CALLBACKS;
    gHBlankCallbacks[gNumHBlankCallbacks++] = sub_801C9C0;
    gFlags |= FLAGS_EXECUTE_HBLANK_CALLBACKS;
}

void TaskDestructor_801C980(struct Task *t)
{
    gDispCnt &= ~DISPCNT_WIN0_ON;
    gBldRegs.bldCnt = 0;
    gBldRegs.bldY = 0;
    gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, 0);
    gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, 0);
}

void sub_801C9AC(void)
{
    volatile winreg_t *regs = &REG_WIN0H;
    *regs = gUnknown_087C0118[0];
}

void sub_801C9C0(int_vcount vcount)
{
    volatile winreg_t *reg = &REG_WIN0H;
    const winreg_t *src = &gUnknown_087C0118[vcount];
    *reg = *src;
}
