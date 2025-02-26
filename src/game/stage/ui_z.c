#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/sa1_sa2_shared/player.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/gTask_03006240.h"
#include "game/multiplayer/mp_player.h"
#include "game/stage/ui.h"
#include "game/water_effects.h"

#include "constants/zones.h"

#define UI_OAM_ORDER_INDEX 1

extern void sub_804C40C(void); // TODO: Move to correct Header!

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
    // TODO: Seems like this (until incl. unk16?) is GameOverB?
    u8 unk0;
    u8 filler1[0x7];
    u16 unk8;
    s16 qUnkA;
    s16 unkC;
    u16 unkE;
    u16 unk10;
    u16 unk12;
    u16 unk14;
    u8 unk16;

    s16 unk18;
    u16 unk1A;
    void *unk1C;
    bool8 unk20;
    u8 unk21;
} Strc_Ui_24;

typedef struct {
    /* 0x00 */ StrcUi_805423C unk0;
    /* 0x0C */ struct Task *taskC; // -> Strc_Ui_24
    /* 0x10 */ struct Task *task10; // -> Strc_Ui_24
    /* 0x14 */ struct Task *task14; // -> Strc_Ui_24
    /* 0x18 */ struct Task *task18; // -> Strc_Ui_24
    /* 0x1C */ struct Task *task1C; // -> Strc_Ui_24
    /* 0x20 */ struct Task *task20; // -> Strc_Ui_24
    /* 0x24 */ s16 unk24;
    /* 0x26 */ bool8 unk26;
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
void sub_804A5D8(s32 x, s32 y);

extern const u8 gUnknown_08688394[];
extern const u8 gUnknown_086883AC[];
extern const u8 gUnknown_086883B0[];

void CreateStageUI(void);
void CreateMultiplayerMultiPakUI(void);

// Output: struct Task *t -> Struct_sub_80550F8
// (94.00%) https://decomp.me/scratch/e0aBK
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
    ui_24->qUnkA = -Q(80. / 256.);
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
    ui_24->qUnkA = +Q(20. / 256.);
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
    ui_24->qUnkA = +Q(180. / 256.);
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
        ui_24->qUnkA = -Q(16. / 256.);
        ui_24->unkC = +42;

    } else {
        ui_24->qUnkA = +Q(240. / 256.);
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
    ui_24->qUnkA = +Q(360. / 256.);
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
    ui_24->qUnkA = +Q(1.0);
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
    ui_28->taskC = sp04.task1C;
    ui_28->task10 = sp04.task20;
    ui_28->task14 = sp04.task18;
    ui_28->task18 = sp04.task24;
    ui_28->task1C = sp04.task14;
    ui_28->task20 = t6;
    ui_28->unk0.unk0 = 0;
    ui_28->unk0.unk2 = 0;
    ui_28->unk0.unk4 = 2;
    ui_28->unk0.unk6 = 0;
    ui_28->unk0.unk8 = 96;
    ui_28->unk0.unkA = 1;
    ui_28->unk27 = 0;

    sub_8054A80(&sp04);
    sub_805423C(&ui_28->unk0);

    return t;
}
END_NONMATCH

// (90.26%) https://decomp.me/scratch/eeD7q
NONMATCH("asm/non_matching/game/stage/ui__Task_8055458.inc", void Task_8055458(void))
{
    Strc_Ui_28 *strcMain = TASK_DATA(gCurTask);
    Strc_Ui_24 *strc1 = TASK_DATA(strcMain->taskC);
    Strc_Ui_24 *strc2 = TASK_DATA(strcMain->task10);
    Strc_Ui_24 *strc3 = TASK_DATA(strcMain->task14);
    Strc_Ui_24 *strc4 = TASK_DATA(strcMain->task18);
    Strc_Ui_24 *strc5 = TASK_DATA(strcMain->task1C);
    Strc_Ui_24 *strc6 = TASK_DATA(strcMain->task20);

    if ((gPressedKeys & (A_BUTTON | B_BUTTON | DPAD_ANY)) && IS_SINGLE_PLAYER) {
        if ((strcMain->unk24 > 35) && (strcMain->unk24 < 215)) {
            strcMain->unk24 = 215;

            strcMain->unk0.unk8 = Div(0x2000 - strcMain->unk0.unk6, 10);

            if (strcMain->unk27 == 0) {
                strcMain->unk26 = sub_805423C(&strcMain->unk0);
            }
        }
    }
    // _080554E8

    strc1->unk18 = strcMain->unk24;
    strc2->unk18 = strcMain->unk24;
    strc3->unk18 = strcMain->unk24;
    strc4->unk18 = strcMain->unk24;
    strc5->unk18 = strcMain->unk24;
    strc6->unk18 = strcMain->unk24;

    strc1->unk20 = strcMain->unk26;
    strc2->unk20 = strcMain->unk26;
    strc3->unk20 = strcMain->unk26;
    strc4->unk20 = strcMain->unk26;
    strc5->unk20 = strcMain->unk26;
    strc6->unk20 = strcMain->unk26;

    strc1->unk21 = strcMain->unk27;
    strc2->unk21 = strcMain->unk27;
    strc3->unk21 = strcMain->unk27;
    strc4->unk21 = strcMain->unk27;
    strc5->unk21 = strcMain->unk27;
    strc6->unk21 = strcMain->unk27;

    if (strcMain->unk27 == 0) {
        if ((strcMain->unk24 <= 105) || !strcMain->unk26) {
            if (strcMain->unk24 > 20) {
                strcMain->unk26 = sub_805423C(&strcMain->unk0);
            } else {
                sub_80543A4(&strcMain->unk0);
            }
        }
    }
    // _080555AE

    if (++strcMain->unk24 > 225) {
        // _080555BE
        if (strc1->unk0 == 0) {
            gDispCnt &= ~(DISPCNT_WIN0_ON | DISPCNT_WIN1_ON | DISPCNT_OBJWIN_ON);
            gBldRegs.bldCnt = 0;
            gBldRegs.bldY = 0;
        }

        if (IS_MULTI_PLAYER) {
            u32 i;
            for (i = 0; (i < MULTI_SIO_PLAYERS_MAX) && (gMultiplayerPlayerTasks[i] != NULL); i++) {
                MultiplayerPlayer *mpp = TASK_DATA(gMultiplayerPlayerTasks[i]);
                mpp->unk5C &= ~0x2;
            }

            gPlayer.timerInvulnerability = ZONE_TIME_TO_INT(0, 2);
        }
        // _08055622

        gStageFlags &= ~STAGE_FLAG__ACT_START;
        gPlayer.moveState &= ~MOVESTATE_IGNORE_INPUT;
        gPartner.moveState &= ~MOVESTATE_IGNORE_INPUT;

        SA2_LABEL(gUnknown_030054B0) = gCurrentLevel;

        gPlayer.itemEffect &= ~PLAYER_ITEM_EFFECT__80;
        gStageFlags &= ~STAGE_FLAG__DISABLE_PAUSE_MENU;

        if (gCurrentLevel == LEVEL_INDEX(ZONE_4, ACT_1) || gCurrentLevel == LEVEL_INDEX(ZONE_4, ACT_2)) {
            LoadPalette423Anim();
            sub_804C40C();
        }

        TaskDestroy(strcMain->task20);
        TaskDestroy(strcMain->task1C);
        TaskDestroy(strcMain->task18);
        TaskDestroy(strcMain->task14);
        TaskDestroy(strcMain->task10);
        TaskDestroy(strcMain->taskC);
        TaskDestroy(gCurTask);

        if (IS_SINGLE_PLAYER | (gGameMode == GAME_MODE_RACE) || (gGameMode == GAME_MODE_MULTI_PLAYER)) {
            CreateStageUI();
        } else {
            CreateMultiplayerMultiPakUI();
        }

        if (IS_EXTRA_STAGE(gCurrentLevel)) {
            sub_804A5D8(Q(DISPLAY_WIDTH / 2), Q(DISPLAY_HEIGHT / 2));
        }
    } else if (gCurrentLevel == LEVEL_INDEX(ZONE_4, ACT_1) || gCurrentLevel == LEVEL_INDEX(ZONE_4, ACT_2)) {
        //_08055708
        sub_804C40C();
    }
}
END_NONMATCH

void Task_8055730(void)
{
    Strc_Ui_24 *strc = TASK_DATA(gCurTask);

    if (strc->unk18 > 215) {
        strc->qUnkA -= Q(8. / 256.);
    } else if (strc->unk18 > 10) {
        strc->qUnkA = 0;
    } else if (strc->unk18 > 0) {
        strc->qUnkA += Q(8. / 256.);
    }

    if (((strc->unk18 >= 0) && (strc->unk18 <= 105)) || !strc->unk20 || (strc->unk21 != 0)) {
        // TODO: Resolve cast!
        sub_8052F78(gUnknown_086883AC, (void *)strc);
    } else {
        // TODO: Resolve cast!
        sub_80530CC(gUnknown_086883AC, (void *)strc);
    }
}

// (65.69%) https://decomp.me/scratch/wlHG6
NONMATCH("asm/non_matching/game/stage/ui__Task_8055798.inc", void Task_8055798(void))
{
    Strc_Ui_24 *strc = TASK_DATA(gCurTask);

    if (strc->unk18 > 215) {
        s32 r5 = 0;
        s16 r6 = -Div((strc->unk18 - 215) << 7, 10);
        s16 r8 = r6;
        const u8 *r7 = &gUnknown_08688394[0];

        for (; r5 < 4; r8 += 0x20, r6 += 0x20, r7++, r5++) {
            strc->unkC = r6;

            if (r8 >= -32) {
                if (((strc->unk18 >= 0) && (strc->unk18 <= 105)) || !strc->unk20 || (strc->unk21 != 0)) {
                    sub_8052F78(r7, (void *)strc); // TODO: cast
                } else {
                    sub_80530CC(r7, (void *)strc); // TODO: cast
                }
            }
            // _08055814
        }
    } else if (strc->unk18 > 31) {
        // _08055826 + 0x4
        s32 r5 = 0;

        const u8 *r6 = &gUnknown_08688394[0];

        for (; r5 < 4; r6++, r5++) {
            strc->unkC = r5 * 32;

            if (((strc->unk18 >= 0) && (strc->unk18 <= 105)) || !strc->unk20 || (strc->unk21 != 0)) {
                sub_8052F78(r6, (void *)strc); // TODO: cast
            } else {
                sub_80530CC(r6, (void *)strc); // TODO: cast
            }
        }
    } else if (strc->unk18 > 25) {
        // _0805586E + 0x4

        s32 r8 = (Div((strc->unk18 - 215) << 7, 6) - 176) & 0x1FF;

        s32 r5 = 0;
        s16 r2 = r8;
        s32 r6 = r2;
        r8 = r2;
        for (; r5 < 4; r2 += 0x20, r6 += 0x20, r5++) {
            if (r8 > 421) {
                strc->unkC = r6;

                if (r2 >= -0x20) {
                    if (((strc->unk18 >= 0) && (strc->unk18 <= 105)) || !strc->unk20 || (strc->unk21 != 0)) {
                        sub_8052F78(&gUnknown_08688394[r5], (void *)strc); // TODO: cast
                    } else {
                        sub_80530CC(&gUnknown_08688394[r5], (void *)strc); // TODO: cast
                    }
                }
            }
        }
    }
}
END_NONMATCH

void Task_8055904(void)
{
    Strc_Ui_24 *strc = TASK_DATA(gCurTask);

    if (strc->unk18 > 215) {
        if (strc->unkC < 160) {
            strc->unkC += 2;
        }
    } else if (strc->unk18 > 35) {
        strc->qUnkA = Q(180. / 256.);
        strc->unkC = 144;
        strc->unkE = 6;
    } else if (strc->unk18 > 30) {
        if (strc->unkC > 144) {
            strc->unkC -= 3;
        }
    }

    if (gCurrentLevel <= LEVEL_INDEX(ZONE_6, ACT_2)) {
        if (((strc->unk18 >= 0) && (strc->unk18 <= 105)) || !strc->unk20 || (strc->unk21 != 0)) {
            sub_8052F78(&gUnknown_086883B0[0], (void *)strc); // TODO: cast
        } else {
            sub_80530CC(&gUnknown_086883B0[0], (void *)strc); // TODO: cast
        }
    }
}
