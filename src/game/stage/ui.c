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
    /* 0x00 */ u8 filler0[0x8];
    /* 0x08 */ s16 unk8;
    /* 0x0A */ s16 unkA;
    /* 0x0C */ s16 unkC;
    /* 0x0E */ s16 unkE;
    /* 0x10 */ s16 unk10;
    /* 0x12 */ s16 unk12;
    /* 0x16 */ s16 unk16;
    /* 0x20 */ GameOverB unk20;
    /* 0x40 */ u8 filler38[0x18];
} StageUI; /* 0x50 */

typedef struct {
    // TODO: Seems like this (until incl. unk16?) is GameOverB?
    GameOverB unk0;

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
extern const u8 gUnknown_086883B8[];
extern const u8 gUnknown_086883C4[];
extern const u8 gUnknown_086883CC[16];

void CreateStageUI(void);
void CreateMultiplayerMultiPakUI(void);

#if 0
void Task_StageUIMain(void)
{

}
#endif