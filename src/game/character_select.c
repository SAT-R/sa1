#include "global.h"
#include "core.h"
#include "trig.h"
#include "lib/m4a/m4a.h"
#include "data/ui_graphics.h"
#include "game/gTask_03006240.h"
#include "game/multiplayer/multipak_connection.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/stage/stage.h"
#include "game/stage/ui.h"
#include "game/save.h"
#include "game/time_attack/menu.h"
#include "game/title_screen.h"

#include "constants/characters.h"
#include "constants/songs.h"

typedef struct CharSelect_20 {
    GameOverB overB;
    s32 unk18;
    u16 unk1C;
    s16 unk1E;
} CharSelect_20;

typedef struct CharSelect_34 {
    Sprite s;
    u16 unk30;
    u16 unk32;
} CharSelect_34;

typedef struct CharSelect_3C {
    StrcUi_805423C strc0;
    struct Task *taskC; // -> CharSelect_CC
    struct Task *task10; // -> CharSelect_20
    struct Task *task14; // -> CharSelect_44
    struct Task *task18; // -> CharSelect_20
    struct Task *task1C; // -> CharSelect_20
    struct Task *task20; // -> CharSelect_34
    u32 unk24;
    s16 unk28;
    s8 unk2A;
    s8 unk2B;
    u8 unk2C;
    u8 unk2D;
    u8 unk2E;
    u8 unk2F;
    u8 filler30[0x9];
    s8 unk39;
} CharSelect_3C;

typedef struct CharSelect_44 {
    GameOverB overB;
    GameOverB overB2;
    u32 unk30;
    u32 unk34;
    u32 unk38;
    s32 unk3C;
    s16 unk40;
} CharSelect_44;

typedef struct CharSelect_CC {
    Sprite sprites[4];
    s32 unkC0;
    s16 unkC4;
    u8 unkC6;
    u8 unkC7;
    u8 unkC8;
    u8 unkC9;
} CharSelect_CC;

void Task_8059F9C(void);
void Task_nullsub_805B980(void);
void Task_805A060(void);
void Task_805ACD8(void);
void Task_805AF24(void);
void Task_805B11C(void);
void Task_805B1E0(void);
void Task_805B52C(void);
void Task_805B984(void);
void sub_805B7E4(void);
void sub_805B858(void);
void Task_805A54C(void);
void sub_805A9A4(void);
void Task_805A798(void);
void Task_805AE84(void);
void Task_805B880(void);
void Task_805B8C0(void);
void Task_805B930(void);
void Task_805AAF8(void);
void sub_805ADF0(void);
void sub_805AFC4(void);
void sub_805B324(void);
void sub_805B694(void);

extern u32 gUnknown_03005140;
extern u16 gUnknown_08688570[];
extern u8 gUnknown_0868857C[];

extern void sub_801C9D8();
extern void CreateCourseSelect(u8 param0); // TODO: Header
extern u8 gUnknown_08688580[0x19];
extern u8 gUnknown_0868859C[];
extern u8 gUnknown_086885A8[0x19];
extern u8 gUnknown_086885C4[];
extern u16 gUnknown_086885CE[0x20];
extern u8 gUnknown_086885EE[];
extern void sub_805321C(u8 *param0, GameOverB *param1);
extern u8 gUnknown_086885FC[];
extern u8 gUnknown_08688600[];
extern u8 gUnknown_08688602[2][3];
extern u8 gUnknown_08688608[2][8];

// (99.35%) https://decomp.me/scratch/Gn2Mk
NONMATCH("asm/non_matching/game/char_select__CreateCharacterSelectionScreen.inc", void CreateCharacterSelectionScreen(u8 selectedCharacter))
{
    Strc_80528AC gfx;
    s32 sp38;
    s8 *sp3C;
    struct Task *t;
    struct Task *t2;
    CharSelect_20 *temp_r0_2;
    CharSelect_20 *temp_r0_4;
    CharSelect_20 *temp_r0_6;
    CharSelect_34 *temp_r4;
    CharSelect_3C *temp_r7;
    CharSelect_44 *temp_r0_8;
    CharSelect_CC *temp_r2_4;
    Sprite *s;
    s32 temp_r1;
    s32 temp_r1_6;
    s8 *temp_r1_3;
    s8 temp_r1_2;
    u16 temp_r2;
    u16 temp_r2_3;

    gTailsEnabled = FALSE;
    gMultiplayerMissingHeartbeats[3] = 0;
    gMultiplayerMissingHeartbeats[2] = 0;
    gMultiplayerMissingHeartbeats[1] = 0;
    gMultiplayerMissingHeartbeats[0] = 0;
    sub_80535FC();
    UiGfxStackInit();
    gDispCnt = 0x1240;
    gBgCntRegs[1] = 0x1907;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;

    temp_r7 = TASK_DATA(TaskCreate(Task_8059F9C, sizeof(CharSelect_3C), 0x2000U, 0U, NULL));
    temp_r7->unk28 = (0x2000 + ((selectedCharacter & 3) << 8));
    temp_r1_2 = (selectedCharacter & 3) + 0x20;
    temp_r7->unk2A = temp_r1_2;
    temp_r7->unk2B = temp_r1_2;
    temp_r7->unk2C = 0;
    temp_r7->unk2D = 0;
    temp_r7->unk2E = 0;
    temp_r7->unk24 = 0;
    temp_r7->unk39 = 0xFF;
    temp_r7->unk2F = 0;
    temp_r7->strc0.unk0 = 0;
    temp_r7->strc0.unk2 = 0;
    temp_r7->strc0.unk4 = 2;
    temp_r7->strc0.unk6 = 0;
    temp_r7->strc0.unk8 = 0x200;
    temp_r7->strc0.unkA = 1;

    t = TaskCreate(Task_nullsub_805B980, sizeof(CharSelect_20), 0x2030U, 0U, NULL);
    temp_r0_2 = TASK_DATA(t);
    temp_r0_2->overB.qUnkA = 0x100;
    temp_r0_2->overB.unkC = 0x40;
    temp_r0_2->overB.unkE = 8;
    temp_r0_2->overB.unk10 = 0;
    temp_r0_2->overB.unk12 = 0xF;
    temp_r0_2->overB.unk16 = 1;
    temp_r0_2->overB.unk8 = 0x5A;
    temp_r0_2->unk18 = 0;
    temp_r0_2->unk1C = (u16)temp_r7->unk28;
    temp_r0_2->unk1E = (u16)temp_r7->unk28;
    temp_r7->task10 = t;

    t = TaskCreate(Task_nullsub_805B980, sizeof(CharSelect_20), 0x2040U, 0U, NULL);
    temp_r0_4 = TASK_DATA(t);
    temp_r0_4->overB.qUnkA = 0x100;
    temp_r0_4->overB.unkC = 0x28;
    temp_r0_4->overB.unkE = 1;
    temp_r0_4->overB.unk10 = 1;
    temp_r0_4->overB.unk12 = 0;
    temp_r0_4->overB.unk16 = 1;
    temp_r0_4->overB.unk8 = 0;
    temp_r0_4->unk18 = 0;
    temp_r0_4->unk1C = 0;
    temp_r7->task1C = t;

    t = TaskCreate(Task_nullsub_805B980, sizeof(CharSelect_20), 0x2030U, 0U, NULL);
    temp_r0_6 = TASK_DATA(t);
    temp_r0_6->overB.qUnkA = 0;
    temp_r0_6->overB.unkC = 0x54;
    temp_r0_6->overB.unkE = 6;
    temp_r0_6->overB.unk10 = 2;
    temp_r0_6->overB.unk12 = 0;
    temp_r0_6->overB.unk16 = 1;
    temp_r0_6->overB.unk8 = 0x14;
    temp_r0_6->unk18 = 0;
    temp_r0_6->unk1C = 0;
    temp_r0_6->unk1E = 0;
    temp_r7->task18 = t;

    t = TaskCreate(Task_nullsub_805B980, sizeof(CharSelect_44), 0x2030U, 0U, NULL);
    temp_r0_8 = TASK_DATA(t);
    temp_r0_8->overB.unk16 = 1;
    temp_r0_8->overB.unk10 = 3;
    temp_r0_8->overB.qUnkA = 0;
    temp_r0_8->overB.unkC = 0x38;
    temp_r0_8->overB.unkE = 8;
    temp_r0_8->overB.unk12 = 0;
    temp_r0_8->overB.unk8 = 0x78;
    temp_r0_8->overB2.qUnkA = 0x118;
    temp_r0_8->overB2.unkC = 0x3A;
    temp_r0_8->overB2.unkE = 9;
    temp_r0_8->overB2.unk10 = 4;
    temp_r0_8->overB2.unk12 = 0;
    temp_r0_8->overB2.unk16 = 1;
    temp_r0_8->overB2.unk8 = 0x64;
    temp_r0_8->unk38 = 0;
    temp_r0_8->unk30 = 0;
    temp_r0_8->unk34 = 0x4600;
    temp_r0_8->unk3C = 0x4600;
    temp_r0_8->unk40 = 0;
    temp_r7->task14 = t;

    t = TaskCreate(Task_805B984, sizeof(CharSelect_34), 0x2020U, 0U, NULL);
    temp_r4 = TASK_DATA(t);
    s = &temp_r4->s;
    temp_r4->unk30 = 0;
    temp_r4->unk32 = 0;
    s->graphics.dest = BG_CHAR_ADDR_FROM_BGCNT(1) + 0x40;
    s->graphics.size = 0;
    s->frameFlags = 0x8000;
    s->x = 0;
    s->y = 0;
    s->oamFlags = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->graphics.anim = 723;
    s->variant = 0;
    temp_r7->task20 = t;
    SA2_LABEL(sub_80036E0)(s);
    SA2_LABEL(sub_8003914)(s);

    gfx.uiGfxID = 0x27;
    gfx.unk2B = 0;
    gfx.tiles = gUiGraphics[gfx.uiGfxID].tiles;
    gfx.palette = gUiGraphics[gfx.uiGfxID].palette + (selectedCharacter * 3);
    gfx.tilesSize = 0x400;
    gfx.paletteSize = 8;
    gfx.unk28 = 0xF;
    gfx.vramC = (u8 *)OBJ_VRAM0 + 0x0020;
    gfx.unk2A = 0xD;
    gfx.unk0.unk4 = gUiGraphics[gfx.uiGfxID].unk8;
    gfx.unk0.unk8 = gUiGraphics[gfx.uiGfxID].unkC;
    gfx.unk0.unk9 = gUiGraphics[gfx.uiGfxID].unk10;
    gfx.unk0.unkA = gUiGraphics[gfx.uiGfxID].unk14;
    gfx.unk0.unkB = gUiGraphics[gfx.uiGfxID].unk18;
    sub_80528AC(&gfx);

    gfx.uiGfxID = 0x28;
    gfx.unk2B = 1;
    gfx.tiles = gUiGraphics[gfx.uiGfxID].tiles;
    gfx.palette = gUiGraphics[gfx.uiGfxID].palette;
    gfx.tilesSize = 0x400;
    gfx.paletteSize = 0x20;
    gfx.unk28 = 0;
    gfx.vramC = (u8 *)OBJ_VRAM0 + 0x0420;
    gfx.unk2A = 0xD;
    gfx.unk0.unk4 = gUiGraphics[gfx.uiGfxID].unk8;
    gfx.unk0.unk8 = gUiGraphics[gfx.uiGfxID].unkC;
    gfx.unk0.unk9 = gUiGraphics[gfx.uiGfxID].unk10;
    gfx.unk0.unkA = gUiGraphics[gfx.uiGfxID].unk14;
    gfx.unk0.unkB = gUiGraphics[gfx.uiGfxID].unk18;
    sub_80528AC(&gfx);

    gfx.uiGfxID = 0x29;
    gfx.unk2B = 2;
    gfx.tiles = gUiGraphics[gfx.uiGfxID].tiles + (selectedCharacter * 0xC00);
    gfx.palette = gUiGraphics[gfx.uiGfxID].palette;
    gfx.tilesSize = 0xC00;
    gfx.vramC = (u8 *)OBJ_VRAM0 + 0x1120;
    gfx.paletteSize = 0x20;
    gfx.unk28 = 0;
    gfx.unk2A = 9;
    gfx.unk0.unk4 = gUiGraphics[gfx.uiGfxID].unk8;
    gfx.unk0.unk8 = gUiGraphics[gfx.uiGfxID].unkC;
    gfx.unk0.unk9 = gUiGraphics[gfx.uiGfxID].unk10;
    gfx.unk0.unkA = gUiGraphics[gfx.uiGfxID].unk14;
    gfx.unk0.unkB = gUiGraphics[gfx.uiGfxID].unk18;
    sub_80528AC(&gfx);

    gfx.uiGfxID = 0x2B;
    gfx.unk2B = 3;
    gfx.tiles = gUiGraphics[gfx.uiGfxID].tiles;
    gfx.tilesSize = 0x100;
    gfx.vramC = (u8 *)OBJ_VRAM0 + 0x820;
    gfx.paletteSize = 0x20;
    gfx.unk28 = 0;
    gfx.unk2A = 9;
    gfx.unk0.unk4 = gUiGraphics[gfx.uiGfxID].unk8;
    gfx.unk0.unk8 = gUiGraphics[gfx.uiGfxID].unkC;
    gfx.unk0.unk9 = gUiGraphics[gfx.uiGfxID].unk10;
    gfx.unk0.unkA = gUiGraphics[gfx.uiGfxID].unk14;
    gfx.unk0.unkB = gUiGraphics[gfx.uiGfxID].unk18;
    sub_80528AC(&gfx);

    gfx.uiGfxID = 0x2A;
    gfx.unk2B = 4;
    gfx.tiles = gUiGraphics[gfx.uiGfxID].tiles;
    gfx.tilesSize = 0x800;
    gfx.vramC = (u8 *)OBJ_VRAM0 + 0x920;
    gfx.paletteSize = 0x20;
    gfx.unk28 = 0;
    gfx.unk2A = 9;
    gfx.unk0.unk4 = gUiGraphics[gfx.uiGfxID].unk8;
    gfx.unk0.unk8 = gUiGraphics[gfx.uiGfxID].unkC;
    gfx.unk0.unk9 = gUiGraphics[gfx.uiGfxID].unk10;
    gfx.unk0.unkA = gUiGraphics[gfx.uiGfxID].unk14;
    gfx.unk0.unkB = gUiGraphics[gfx.uiGfxID].unk18;
    sub_80528AC(&gfx);

    t2 = TaskCreate(Task_nullsub_805B980, sizeof(CharSelect_CC), 0x2010U, 0U, NULL);
    temp_r2_4 = TASK_DATA(t2);
    temp_r2_4->unkC0 = 0;
    temp_r2_4->unkC4 = 0;
    temp_r2_4->unkC6 = 0;
    temp_r2_4->unkC8 = 0;
    temp_r7->taskC = t2;

    {
        Sprite *s = &temp_r2_4->sprites[1];
        s->graphics.dest = OBJ_VRAM0 + 0x2520;
        s->graphics.size = 0;
        s->frameFlags = 0;
        s->x = 280;
        s->y = 110;
        s->oamFlags = 0x7C0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->graphics.anim = 0x2D2;
        s->variant = 0;
    }

    {
        Sprite *s = &temp_r2_4->sprites[0];
        s->graphics.dest = OBJ_VRAM0 + 0x3920;
        s->graphics.size = 0;
        s->frameFlags = 0;
        s->x = -50;
        s->y = 110;
        s->oamFlags = 0x7C0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->graphics.anim = 722;
        s->variant = 6;
    }

    {
        Sprite *s = &temp_r2_4->sprites[2];
        s->graphics.dest = OBJ_VRAM0 + 0x4D20;
        s->graphics.size = 0;
        s->frameFlags = 0;
        s->x = 290;
        s->y = 110;
        s->oamFlags = 0x7C0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->graphics.anim = 722;
        s->variant = 2;
    }

    {
        Sprite *s = &temp_r2_4->sprites[3];
        s->graphics.dest = OBJ_VRAM0 + 0x6120;
        s->graphics.size = 0;
        s->frameFlags = 0;
        s->x = 290;
        s->y = 110;
        s->oamFlags = 0x700;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->graphics.anim = 730;
        s->variant = 0;
        UpdateSpriteAnimation(s);
    }

    sa2__gUnknown_03004D80[1] = 0;
    sa2__gUnknown_03002280[1][0] = 0;
    sa2__gUnknown_03002280[1][1] = 0;
    sa2__gUnknown_03002280[1][2] = -1;
    sa2__gUnknown_03002280[1][3] = 0x20;
    m4aSongNumStartOrContinue(MUS_CHARACTER_SELECTION);
    sub_805423C(&temp_r7->strc0);
}
END_NONMATCH

void Task_8059F9C(void)
{
    CharSelect_3C *strc3C = TASK_DATA(gCurTask);
    if (sub_805423C(&strc3C->strc0)) {
        strc3C->strc0.unk0 = 0;
        strc3C->strc0.unk2 = 1;
        strc3C->strc0.unk4 = 1;
        strc3C->strc0.unk6 = 0;
        strc3C->strc0.unk8 = 0x200;
        strc3C->strc0.unkA = 1;
        gDispCnt |= 0x6000;

        gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, 40);
        gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, 240);
        gWinRegs[WINREG_WIN1H] = WIN_RANGE(200, 240);
        gWinRegs[WINREG_WIN1V] = WIN_RANGE(0, 240);
        gWinRegs[WINREG_WININ] = 0x3F3F;
        gWinRegs[WINREG_WINOUT] = 0x1F;
        gBldRegs.bldCnt = 0x1290;
        gBldRegs.bldAlpha = 0x10;
        gBldRegs.bldY = 8;

        strc3C->taskC->main = Task_805B1E0;
        strc3C->task10->main = Task_805B52C;
        strc3C->task1C->main = Task_805B11C;
        strc3C->task18->main = Task_805AF24;
        strc3C->task14->main = Task_805ACD8;

        gCurTask->main = Task_805A060;
    }
}

// (99.88%) https://decomp.me/scratch/WGT0R
NONMATCH("asm/non_matching/game/char_select__Task_805A060.inc", void Task_805A060())
{
    CharSelect_20 *sp0;
    CharSelect_44 *sp4;
    CharSelect_20 *sp8;
    CharSelect_34 *spC;
    s32 temp_r2_4;
    s32 var_r4;
    s32 var_r6_2;
    s8 temp_r0_8;
    s16 var_r8;
    u32 var_r0_4;
    u32 i;

    CharSelect_3C *strc3C = TASK_DATA(gCurTask);
    CharSelect_CC *temp_sl;

    sp8 = TASK_DATA(strc3C->task18);
    sp0 = TASK_DATA(strc3C->task10);
    temp_sl = TASK_DATA(strc3C->taskC);
    sp4 = TASK_DATA(strc3C->task14);
    spC = TASK_DATA(strc3C->task20);
    if (IS_MULTI_PLAYER) {
        for (i = 0; (i < 4) && GetBit(gMultiplayerConnections, i); i++) {
            if (!CheckBit(gMultiSioStatusFlags, i)) {
                if (gMultiplayerMissingHeartbeats[i]++ > 0xB4U) {
                    TasksDestroyInPriorityRange(0U, 0xFFFFU);
                    gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
                    sa2__gUnknown_03005390 = 0;
                    gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
                    MultiPakCommunicationError();
                    return;
                }
            } else {
                gMultiplayerMissingHeartbeats[i] = 0;
            }
        }

        if (IS_MULTI_PLAYER) {
            strc3C->unk2F = 0U;

            for (i = 0; i < MULTI_SIO_PLAYERS_MAX; i++) {
                if (i != SIO_MULTI_CNT->id) {
                    if (GetBit(gMultiplayerConnections, i)) {
                        struct MultiSioData_0_0 *data = &gMultiSioRecv[i].pat0;
                        if (data->unk0 > 0x20U) {
                            strc3C->unk2F |= BitValue(data->unk2);
                        }
                    }
                }
            }
        }
    }

    var_r8 = strc3C->unk2B;
    sub_805B7E4();
    if ((B_BUTTON & gRepeatedKeys) && (strc3C->unk24 > 0x21U) && ((s16)var_r8 == strc3C->unk2A) && IS_SINGLE_PLAYER) {
        m4aSongNumStart(0x6BU);
        sub_805B858();
        var_r6_2 = strc3C->unk2C;
        var_r4 = strc3C->unk2D;
    } else {
        if ((A_BUTTON & gRepeatedKeys) && (var_r8 == strc3C->unk2A) && (strc3C->unk24 > 0x21U) && !GetBit(strc3C->unk2F, (var_r8 & 0x3))) {
            m4aSongNumStart(0x6AU);
            if (IS_SINGLE_PLAYER) {
                sub_805A9A4();
            } else {
                strc3C->task1C->flags |= TASK_INACTIVE;
                gCurTask->main = Task_805A54C;
            }
        } else if ((0x20 & gRepeatedKeys) && ((u32)strc3C->unk24 > 0x21U)) {
            var_r8--;
            if (strc3C->unk2C == 0) {
                strc3C->unk2C = 2;
                strc3C->unk2E = 0x10;
                m4aSongNumStart(0x67U);
            }
        } else if ((0x10 & gRepeatedKeys) && ((u32)strc3C->unk24 > 0x21U)) {
            var_r8++;
            if (strc3C->unk2C == 0) {
                strc3C->unk2C = 1;
                strc3C->unk2E = 0x10;
                m4aSongNumStart(0x67U);
            }
        } else {
            if (var_r8 > strc3C->unk2A) {
                if (strc3C->unk2C == 0) {
                    strc3C->unk2C = 1;
                    strc3C->unk2E = 0x10;
                    m4aSongNumStart(0x67U);
                }
            } else if (var_r8 < strc3C->unk2A) {
                if (strc3C->unk2C == 0) {
                    strc3C->unk2C = 2;
                    strc3C->unk2E = 0x10;
                    m4aSongNumStart(0x67U);
                }
            } else {
                if (GetBit(strc3C->unk2F, (var_r8 & 0x3)) && ((u32)strc3C->unk24 > 0x21U)) {
                    if (strc3C->unk2D != 0) {
                        if (1 & strc3C->unk2D) {
                            var_r8++;
                        } else {
                            var_r8--;
                        }
                    } else {
                        strc3C->unk2C = 1;
                        strc3C->unk2E = 0x10;
                        m4aSongNumStart(0x67U);
                    }
                }
            }
        }
    }
    strc3C->unk2D = strc3C->unk2C;
    if (strc3C->unk2C != 0) {
        if (1 & strc3C->unk2C) {
            if (strc3C->unk2E != 0) {
                strc3C->unk28 += 0x10;
                if (--strc3C->unk2E == 0) {
                    strc3C->unk2C = 0U;
                }
            }
        } else {
            if (strc3C->unk2E != 0) {
                strc3C->unk28 -= 0x10;

                if (--strc3C->unk2E == 0) {
                    strc3C->unk2C = 0U;
                }
            }
        }
    }
    strc3C->unk28 = (u16)(0x3FFF & strc3C->unk28);
    temp_r0_8 = 0x3F & var_r8;
    strc3C->unk2B = temp_r0_8;
    if (strc3C->unk2A <= temp_r0_8) {
        strc3C->unk2A = I(strc3C->unk28);
    } else {
        s32 v = (u16)strc3C->unk28;
        v <<= 16;
        temp_r2_4 = v >> 24;
        strc3C->unk2A = temp_r2_4;
        if (0xFF & strc3C->unk28) {
            var_r0_4 = temp_r2_4 + 1;
            strc3C->unk2A = (s8)var_r0_4;
        }
    }
    strc3C->unk2A &= 0x3F;
    if ((strc3C->unk2A > 0x24) && ((s32)strc3C->unk2B > 0x24) && ((strc3C->unk28 > Q(36)))) {
        while (strc3C->unk2A > 0x24) {
            strc3C->unk2A -= 4;
        }

        while (strc3C->unk2B > 0x24) {
            strc3C->unk2B -= 4;
        }

        while (strc3C->unk28 > 0x2400) {
            strc3C->unk28 -= 0x400;
        }
    } else {
        if ((strc3C->unk2A < 0x1C) && (strc3C->unk2B < 0x1C) && (strc3C->unk28 < Q(28))) {
            while (strc3C->unk2A < 0x1C) {
                strc3C->unk2A += 4;
            }

            while (strc3C->unk2B < 0x1C) {
                strc3C->unk2B += 4;
            }

            while (strc3C->unk28 < 0x1C00) {
                strc3C->unk28 += 0x400;
            }
        }
    }
    sp8->unk1C = (0x3FF & strc3C->unk28);
    sp0->unk1C = (0x3FF & strc3C->unk28);
    temp_sl->unkC4 = (0x3FF & strc3C->unk28);
    temp_sl->unkC6 = strc3C->unk2C;
    spC->unk32 = (0x3FF & strc3C->unk28);
    temp_sl->unkC8 = strc3C->unk2F;
    sp4->unk38 = ++strc3C->unk24;
    if (IS_MULTI_PLAYER) {
        gMultiSioSend.pat0.unk0 = 0x20;
        gMultiSioSend.pat0.unk2 = (u8)((u32)(0x300 & sp8->unk1C) >> 8);
    }
}
END_NONMATCH

// (89.07%) https://decomp.me/scratch/IYC6j
NONMATCH("asm/non_matching/game/char_select__Task_805A54C.inc", void Task_805A54C())
{
    s32 temp_r0_2;
    u32 i;
    s32 var_r4;
    s32 var_r6;
    struct Task *temp_r2;
    struct Task *temp_r2_2;
    u16 temp_r2_3;
    u8 *temp_r1_3;
    u8 *var_r2;
    u8 temp_r0;
    u8 temp_r4;
    union MultiSioData *var_r2_2;
    void *temp_r1;
    void *temp_r1_2;
    union MultiSioData *send, *recv;
    u8 charactersSelected[NUM_CHARACTERS] = { 0 };

    CharSelect_3C *strc3C = TASK_DATA(gCurTask);

    if (IS_MULTI_PLAYER) {
        for (i = 0; i < 4 && GetBit(gMultiplayerConnections, i); i++) {
            if (!CheckBit(gMultiSioStatusFlags, i)) {
                if (gMultiplayerMissingHeartbeats[i]++ > 0xB4U) {
                    TasksDestroyAll();
                    PAUSE_BACKGROUNDS_QUEUE();
                    SA2_LABEL(gUnknown_03005390) = 0;
                    PAUSE_GRAPHICS_QUEUE();
                    MultiPakCommunicationError();
                    return;
                }
            } else {
                gMultiplayerMissingHeartbeats[i] = 0;
            }
        }
    }

    if (B_BUTTON & gPressedKeys) {
        temp_r2 = strc3C->task1C;
        temp_r2->flags &= ~0x1;
        gCurTask->main = Task_805A060;
    } else {
        struct MultiSioData_0_0 *temp_r1;
        if (gMultiSioRecv->pat0.unk0 == 0x22) {
            for (i = 0; i < 4; i++) {
                if (GetBit(gMultiplayerConnections, i)) {
                    gMultiplayerCharacters[i] = gMultiSioRecv[i].pat0.unk2;
                }
            }
            gCurTask->main = Task_805A798;
            return;
        }

        // TODO: Compare with SA2's Task_MultiplayerWaitForSelections() to maybe get a closer match!
        for (i = 0; i < 4; i++) {
            if ((((s32)gMultiplayerConnections >> i) & 1) && (i != SIO_MULTI_CNT->id)) {
                temp_r1 = &gMultiSioRecv[i].pat0;
                if ((temp_r1->unk0 == 0x21) && (temp_r1->unk2 == ((u32)(0x300 & strc3C->unk28) >> 8)) && (i < SIO_MULTI_CNT->id)) {
                    temp_r2_2 = strc3C->task1C;
                    temp_r2_2->flags &= 0xFFFE;
                    gCurTask->main = Task_805A060;
                }
            }
        }
        if (gMultiSioStatusFlags & 0x80) {
            gMultiSioSend.pat0.unk0 = 0x22;
            gMultiSioSend.pat0.unk2 = I(0x300 & strc3C->unk28);
            for (i = 0; i < 4; i++) {
                if (GetBit(gMultiplayerConnections, i)) {
                    temp_r1 = &gMultiSioRecv[i].pat0;
                    if ((temp_r1->unk0 != 0x21) || (++charactersSelected[temp_r1->unk2] > 1)) {
                        gMultiSioSend.pat0.unk0 = 0x21;
                        break;
                    }
                }
            }
        } else {
            gMultiSioSend.pat0.unk0 = 0x21;
            gMultiSioSend.pat0.unk2 = (u8)((u32)(0x300 & strc3C->unk28) >> 8);
        }
    }
}
END_NONMATCH

// (87.54%) https://decomp.me/scratch/MOYRn
NONMATCH("asm/non_matching/game/char_select__Task_805A798.inc", void Task_805A798())
{
    s32 temp_r0_2;
    u32 i;
    s32 var_r6;
    struct Task *temp_r2;
    struct Task *temp_r2_2;
    u16 temp_r2_3;
    u8 *temp_r1_3;
    u8 *var_r2;
    void *temp_r3;
    u8 temp_r0;
    u8 temp_r4;
    void *temp_r1;
    void *temp_r1_2;
    union MultiSioData *send, *recv;

    CharSelect_3C *strc3C = TASK_DATA(gCurTask);

    if (IS_MULTI_PLAYER) {
        for (i = 0; i < 4 && GetBit(gMultiplayerConnections, i); i++) {
            if (!CheckBit(gMultiSioStatusFlags, i)) {
                if (gMultiplayerMissingHeartbeats[i]++ > 0xB4U) {
                    TasksDestroyAll();
                    PAUSE_BACKGROUNDS_QUEUE();
                    SA2_LABEL(gUnknown_03005390) = 0;
                    PAUSE_GRAPHICS_QUEUE();
                    MultiPakCommunicationError();
                    return;
                }
            } else {
                gMultiplayerMissingHeartbeats[i] = 0;
            }
        }
    }

    if (gMultiSioRecv->pat0.unk0 == 0x23) {
        gUnknown_03005140 = 0;
        for (i = 0; i < 4; i++) {
            if (GetBit(gMultiplayerConnections, i)) {
                s32 var_r0 = gMultiSioRecv[i].pat0.unk3;
                if ((u32)var_r0 < (u32)gUnknown_03005140) {
                    var_r0 = gUnknown_03005140;
                }
                gUnknown_03005140 = var_r0;
                if (!(gMultiSioStatusFlags & 0x80)) {
                    gMultiplayerCharacters[i] = gMultiSioRecv[i].pat0.unk2;
                }
            }
        }
        sub_805A9A4();
        return;
    }

    if (gMultiSioRecv->pat0.unk0 == 0x21) {
        gMultiSioSend.pat0.unk0 = 0x20;
        strc3C->task1C->flags &= ~1;
        gCurTask->main = Task_805A060;
        return;
    }
    if (gMultiSioStatusFlags & 0x80) {
        gMultiSioSend.pat0.unk0 = 0x23;
        gMultiSioSend.pat0.unk2 = (u8)((u32)(0x300 & strc3C->unk28) >> 8);
        gMultiSioSend.pat0.unk3 = (u8)LOADED_SAVE->unk8[gMultiSioSend.pat0.unk2];
        for (i = 0; i < 4; i++) {
            if (GetBit(gMultiplayerConnections, i) && (i != 0)
                && (gMultiplayerCharacters[i] = gMultiSioRecv[i].pat0.unk2, (gMultiSioRecv[i].pat0.unk0 != 0x22))) {
                gMultiSioSend.pat0.unk0 = 0x22;

                if (B_BUTTON & gPressedKeys) {
                    gMultiSioSend.pat0.unk0 = 0x21;
                }

                break;
            }
        }
    } else {
        gMultiSioSend.pat0.unk0 = 0x22;
        gMultiSioSend.pat0.unk2 = (u8)((u32)(0x300 & strc3C->unk28) >> 8);
        gMultiSioSend.pat0.unk3 = (u8)LOADED_SAVE->unk8[gMultiSioSend.pat0.unk2];
    }
}
END_NONMATCH

void sub_805A9A4()
{
    Strc_80528AC gfx;
    s32 strc44_2;

    CharSelect_3C *strc3C = TASK_DATA(gCurTask);
    CharSelect_CC *strcCC = TASK_DATA(strc3C->taskC);
    CharSelect_44 *strc44 = TASK_DATA(strc3C->task14);

    gSelectedCharacter = (s8)((u32)(0x300 & (u16)strc3C->unk28) >> 8);
    strcCC->sprites[1].variant = (s8)(((u32)(0x300 & (u16)strc3C->unk28) >> 7) + 1);
    strc3C->task14->main = Task_805AE84;
    strc3C->taskC->main = Task_805B8C0;
    strc3C->task18->main = Task_805B880;
    strc3C->task10->main = Task_805B930;
    TaskDestroy(strc3C->task1C);
    TaskDestroy(strc3C->task20);
    strc3C->unk24 = 0;
    strc44->unk40 = 0xB4;
    gBldRegs.bldY = 0;
    strc44->unk40 = 0xB4;

    gfx.uiGfxID = 0x2C;
    gfx.unk2B = 4;
    gfx.tiles = gUiGraphics[gfx.uiGfxID].tiles;
    gfx.tilesSize = 0x200;
    gfx.vramC = OBJ_VRAM0 + 0x920;
    gfx.paletteSize = 0x20;
    gfx.unk28 = 0;
    gfx.unk2A = 9;
    gfx.unk0.unk4 = gUiGraphics[gfx.uiGfxID].unk8;
    gfx.unk0.unk8 = gUiGraphics[gfx.uiGfxID].unkC;
    gfx.unk0.unk9 = gUiGraphics[gfx.uiGfxID].unk10;
    gfx.unk0.unkA = gUiGraphics[gfx.uiGfxID].unk14;
    gfx.unk0.unkB = gUiGraphics[gfx.uiGfxID].unk18;
    sub_80528AC(&gfx);

    gCurTask->main = Task_805AAF8;
}

void Task_805AAF8()
{
    CharSelect_3C *strc3C;
    u8 arr[4];
    struct Task *task18;

    memcpy(arr, &gUnknown_0868857C, 4);
    strc3C = TASK_DATA(gCurTask);
    task18 = strc3C->task18;
    if (++strc3C->unk24 > 0x38U) {
        u8 temp_r6 = strc3C->unk39;

        TaskDestroy(task18);
        TaskDestroy(strc3C->task10);
        TaskDestroy(strc3C->taskC);
        TaskDestroy(strc3C->task14);
        TaskDestroy(gCurTask);

        gDispCnt &= 0xFFF;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;

        if (IS_MULTI_PLAYER) {
            sub_801C9D8();
        } else {
            if (gGameMode == GAME_MODE_SINGLE_PLAYER) {
                if (temp_r6 == 8) {
                    m4aSongNumStart(SE_RING_COPY);
                    gTailsEnabled = 1;
                }
                if ((gGameMode == GAME_MODE_SINGLE_PLAYER) && (LOADED_SAVE->unk8[gSelectedCharacter] == 0)) {
                    gCurrentLevel = 0;
                    gMultiplayerCurrentLevel = 0;
                    ApplyGameStageSettings();
                    return;
                }
            }

            CreateCourseSelect(0);
        }
    } else if (strc3C->unk24 > arr[gSelectedCharacter]) {
        sub_805423C(&strc3C->strc0);
    }
}

void Task_805AC00()
{
    CharSelect_3C *strc3C = TASK_DATA(gCurTask);

    strc3C->unk24 += 1;
    strc3C->strc0.unk8 = 0x180;
    strc3C->strc0.unkA = 0x10;

    if (sub_805423C(&strc3C->strc0)) {
        m4aSongNumStop(3U);
        gDispCnt &= 0xFFF;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
        TaskDestroy(gCurTask);

        if (gGameMode == 1) {
            CreateTimeAttackMenu();
        } else {
            CreateMainMenu(1U);
        }

        return;
    } else if (strc3C->unk24 == 0x10) {
        TaskDestroy(strc3C->task18);
        TaskDestroy(strc3C->task10);
        TaskDestroy(strc3C->taskC);
        TaskDestroy(strc3C->task14);
        TaskDestroy(strc3C->task1C);
        TaskDestroy(strc3C->task20);

        sa2__gUnknown_03004D80[0] = 0;
        sa2__gUnknown_03002280[0][0] = 0;
        sa2__gUnknown_03002280[0][1] = 0;
        sa2__gUnknown_03002280[0][2] = 0xFF;
        sa2__gUnknown_03002280[0][3] = 0x14;

        sa2__gUnknown_03004D80[1] = 0;
        sa2__gUnknown_03002280[1][0] = 0;
        sa2__gUnknown_03002280[1][1] = 0;
        sa2__gUnknown_03002280[1][2] = -1;
        sa2__gUnknown_03002280[1][3] = 0x14;

        sa2__gUnknown_03004D80[2] = 0;
        sa2__gUnknown_03002280[2][0] = 0;
        sa2__gUnknown_03002280[2][1] = 0;
        sa2__gUnknown_03002280[2][2] = -1;
        sa2__gUnknown_03002280[2][3] = 0x14;
    }
}

void Task_805ACD8()
{
    s16 temp_r0;
    s16 temp_r4;
    s32 var_r0;
    u32 temp_r0_2;
    u32 temp_r1;

    CharSelect_44 *strc44;
    u8 arr[0x19];

    memcpy(arr, &gUnknown_08688580, sizeof(arr));

    strc44 = TASK_DATA(gCurTask);

    temp_r0 = strc44->unk38;
    if ((s32)temp_r0 > 0x20) {
        strc44->overB.unkC = 6;
        strc44->unk38 = 0;
        strc44->unk3C = (u32)(strc44->unk3C - 0xB4);
        gCurTask->main = sub_805ADF0;
    } else {
        if ((s32)temp_r0 > 0xC) {
            temp_r4 = temp_r0 - 0xD;
            strc44->overB.unkC = (u16)(0x38 - ((s32)((u16)gSineTable[temp_r4 * (Div(temp_r4, 10) + 0x11)] << 0x10) >> 0x18));
            strc44->unk3C = strc44->unk3C - 0xB4;
        } else if ((s32)temp_r0 > 9) {
            strc44->overB.qUnkA = 0;
            strc44->unk3C = strc44->unk3C - 0xB4;
        } else {
            strc44->overB.qUnkA = (0x100 - Div(temp_r0 << 8, 10));
            strc44->unk3C = strc44->unk3C + 0xFFFFF9C0;
        }
    }
    sub_8052F78(gUnknown_0868859C, &strc44->overB);
    temp_r0_2 = strc44->unk3C;
    if (strc44->unk3C > 0) {
        strc44->overB2.unkE = (u16)(9 - Div(strc44->unk3C >> 6, 32));
    } else {
        strc44->overB2.unkE = 9;
    }
    if ((s32)strc44->unk3C > 0x3C00) {
        strc44->overB2.unkE = 0;
    }

    if (strc44->unk3C < -1984) {
        strc44->unk3C = (u32)(strc44->unk3C + 0x800);
        strc44->unk30 = (strc44->unk30 + 1) & 7;
    }
    strc44->overB2.qUnkA = (strc44->unk3C >> 6);
    strc44->overB2.unkC = strc44->overB.unkC;
    sub_8052F78(&arr[strc44->unk30], &strc44->overB2);
}

void sub_805ADF0()
{
    s16 temp_r0;
    s16 temp_r4;
    s32 var_r0;
    u32 temp_r0_2;
    u32 temp_r1;

    CharSelect_44 *strc44;
    u8 arr[0x19];

    memcpy(arr, &gUnknown_08688580, sizeof(arr));

    strc44 = TASK_DATA(gCurTask);
    strc44->overB.qUnkA = 0;

    temp_r0 = strc44->unk38;

    sub_8052F78(gUnknown_0868859C, &strc44->overB);

    strc44->unk34++;
    strc44->overB2.unkC = 6;
    strc44->unk3C -= 0xB4;

    temp_r0_2 = strc44->unk3C;
    if (strc44->unk3C > 0) {
        strc44->overB2.unkE = (u16)(9 - Div(strc44->unk3C >> 6, 32));
    } else {
        strc44->overB2.unkE = 9;
    }

    if (strc44->unk3C < -1984) {
        strc44->unk3C = (u32)(strc44->unk3C + 0x800);
        strc44->unk30 = (strc44->unk30 + 1) & 7;
    }
    strc44->overB2.qUnkA = (strc44->unk3C >> 6);
    sub_8052F78(&arr[strc44->unk30], &strc44->overB2);
}

void Task_805AE84()
{
    s32 temp_r1;
    s32 temp_r4;
    s32 var_r2;

    CharSelect_44 *strc44;
    u8 arr[0x19];

    memcpy(arr, &gUnknown_086885A8, 25);

    strc44 = TASK_DATA(gCurTask);

    strc44->unk34++;
    strc44->overB.qUnkA = 0;
    sub_805321C(gUnknown_0868859C, &strc44->overB);
    strc44->overB2.unkC = 6;
    strc44->unk3C -= strc44->unk40;

    for (var_r2 = 0; var_r2 < 3; var_r2++) {
        if (strc44->unk40 != 0) {
            strc44->unk40--;
        }
    }

    if (strc44->unk3C < -1984) {
        strc44->unk3C += 0x800;
        strc44->unk30 = (s32)((strc44->unk30 + 1) & 7);
    }
    strc44->overB2.qUnkA = (strc44->unk3C >> 6);
    sub_805321C(&arr[strc44->unk30], &strc44->overB2);
}

void Task_805AF24()
{
    s16 unk18;

    CharSelect_20 *strc20 = TASK_DATA(gCurTask);

    unk18 = ++strc20->unk18;
    if (unk18 > 0x21) {
        strc20->overB.unkC = 0x84;
        strc20->unk18 = 0;
        gCurTask->main = sub_805AFC4;
    } else if (unk18 > 13) {
        strc20->overB.unkC = ((SIN((Div(unk18 * 103, 110) - 10) * 17) >> 0x8) + 0x54);
    } else if (unk18 > 0xA) {
        strc20->overB.qUnkA = gUnknown_08688570[0];
    } else {
        strc20->overB.qUnkA = 0x100 - Div(unk18 << 8, 0xA);
        strc20->overB.qUnkA += gUnknown_08688570[0];
    }
    sub_8052F78(gUnknown_086885C4, &strc20->overB);
}

void sub_805AFC4()
{
    Strc_80528AC gfx;
    u16 sp30[16];
    s16 var_r0_2;
    s16 var_r6;
    u32 var_r4;
    u8 temp_r1;
    CharSelect_20 *strc20;
    s16 unk1C;

    memcpy(sp30, &gUnknown_086885CE, 0x20);

    strc20 = TASK_DATA(gCurTask);

    unk1C = (strc20->unk1C % 256u);
    if (unk1C != 0) {
        u32 index = 0x300;
        index &= strc20->unk1C;
        var_r4 = index >> 8;

        if (unk1C - 0x7F < 0) {
            var_r0_2 = (0x7F - unk1C) >> 1;
        } else {
            var_r0_2 = (unk1C - 0x7F) >> 1;
        }
        var_r6 = var_r0_2;

        if (strc20->unk1E == 0) {
            var_r4 = (u32)(0x300 & strc20->unk1C) >> 8;
            if ((s16)(0xFF & strc20->unk1C) > 128) {
                var_r4 += 1;
            }
            var_r4 = var_r4 & 3;

            UiGfxStackInit();

            gfx.uiGfxID = 0x29;
            gfx.unk2B = 2;
            gfx.tiles = gUiGraphics[gfx.uiGfxID].tiles + (var_r4 * 0xC00);
            gfx.tilesSize = 0xC00;
            gfx.vramC = OBJ_VRAM0 + 0x1120;
            gfx.unk2A = 9;
            gfx.unk0.unk4 = gUiGraphics[gfx.uiGfxID].unk8;
            gfx.unk0.unk8 = gUiGraphics[gfx.uiGfxID].unkC;
            gfx.unk0.unk9 = gUiGraphics[gfx.uiGfxID].unk10;
            gfx.unk0.unkA = gUiGraphics[gfx.uiGfxID].unk14;
            gfx.unk0.unkB = gUiGraphics[gfx.uiGfxID].unk18;
            sub_80528AC(&gfx);
        }
        strc20->unk1E = (var_r6);
        strc20->overB.qUnkA = gUnknown_08688570[var_r4] + sp30[(strc20->unk1C % 256u) >> 4];
    } else {
        u16 *ptr = gUnknown_08688570;
        s32 index = 0x300;
        index &= strc20->unk1C;
        strc20->overB.qUnkA = ptr[index >> 8];
    }
    sub_8052F78(gUnknown_086885C4, &strc20->overB);
}

void Task_805B11C()
{
    s16 temp_r2;
    s16 temp_r4;
    s32 temp_r1_2;
    s32 temp_r3;

    u8 arr[0xE];
    CharSelect_20 *strc20;

    memcpy(arr, gUnknown_086885EE, 0xE);
    strc20 = TASK_DATA(gCurTask);
    temp_r1_2 = strc20->unk18;
    temp_r3 = temp_r1_2 + 1;
    strc20->unk18 = temp_r3;
    temp_r2 = (s16)temp_r3;
    if ((s32)temp_r2 > 0x26) {
        s32 index;
        u8 *ptr;
        if ((s32)temp_r2 > 0x62) {
            strc20->unk18 = (s32)(temp_r1_2 - 0x3B);
        }
        temp_r4 = (s16)Mod((s32)temp_r2, 0x3C);
        strc20->overB.qUnkA = arr[Div((s32)temp_r4, 10)];
        sub_8052F78(gUnknown_086885FC, &strc20->overB);
        index = Div((s32)temp_r4, 10);
        ptr = &arr[7];
        strc20->overB.qUnkA = ptr[index];
        sub_8052F78(gUnknown_08688600, &strc20->overB);
        return;
    }
    if ((u32)temp_r3 > 30) {
        strc20->overB.qUnkA = (s16)(((temp_r1_2 - 0x1D) * 6) - 0x24);
        sub_8052F78(gUnknown_086885FC, &strc20->overB);
        strc20->overB.qUnkA = (s16)(0xF0 - ((strc20->unk18 - 0x1E) * 6));
        sub_8052F78(gUnknown_08688600, &strc20->overB);
    }
}

void Task_805B1E0()
{
    s32 *temp_r1;
    s32 *temp_r1_2;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r4;
    s32 temp_r5;
    u32 temp_sb;
    u32 mask;

    CharSelect_CC *strcCC = TASK_DATA(gCurTask);

    temp_sb = (u32)(0x300 & (u16)strcCC->unkC4) >> 8;
    temp_r1 = &strcCC->unkC0;
    temp_r0 = *temp_r1;
    temp_r0_2 = temp_r0 + 1;
    *temp_r1 = temp_r0_2;
    if ((u32)temp_r0_2 > 0x11U) {
        temp_r5 = temp_r0 - 0x10;
        strcCC->sprites[1].x = 0x100 - Div(temp_r5 << 7, 0xB);
        temp_r4 = temp_r5 << 5;
        strcCC->sprites[2].x = 0x11C - Div(temp_r4, 0xB);
        strcCC->sprites[0].x = Div(temp_r4, 0xB) - 0x20;
        strcCC->sprites[1].y = 0x6E;
        if (temp_r5 <= 4) {
            gWinRegs[WINREG_WIN1H] = WIN_RANGE(DISPLAY_WIDTH, DISPLAY_WIDTH);
        } else {
#ifndef NON_MATCHING
            gWinRegs[WINREG_WIN1H] = (((DISPLAY_WIDTH - ((temp_r0 - 0x15) * 5)) << 8) + DISPLAY_WIDTH);
#else
            gWinRegs[WINREG_WIN1H] = WIN_RANGE((DISPLAY_WIDTH - ((temp_r0 - 0x15) * 5)), DISPLAY_WIDTH);
#endif
        }
    }
    temp_r1_2 = &strcCC->unkC0;
    if (strcCC->unkC0 > 0x1CU) {
        strcCC->unkC0 = 0;
        gWinRegs[WINREG_WIN1H] = WIN_RANGE(DISPLAY_WIDTH - 40, DISPLAY_WIDTH);
        gCurTask->main = sub_805B324;
    }

    mask = 3;
    strcCC->sprites[1].variant = temp_sb * 2;
    strcCC->sprites[2].variant = ((temp_sb + 1) & mask) * 2;
    strcCC->sprites[0].variant = ((temp_sb + 3) & mask) * 2;
    UpdateSpriteAnimation(&strcCC->sprites[0]);
    DisplaySprite(&strcCC->sprites[0]);
    UpdateSpriteAnimation(&strcCC->sprites[1]);
    DisplaySprite(&strcCC->sprites[1]);
    UpdateSpriteAnimation(&strcCC->sprites[2]);
    DisplaySprite(&strcCC->sprites[2]);
}

NONMATCH("asm/non_matching/game/char_select__sub_805B324.inc", void sub_805B324())
{
    Sprite *temp_r4;
    Sprite *temp_r4_2;
    s16 *temp_r0;
    s16 *temp_r0_3;
    s16 *temp_r0_4;
    s16 *temp_r0_5;
    s16 *temp_r0_6;
    s16 *temp_r0_7;
    s16 *temp_r2_2;
    s16 *temp_r2_3;
    s16 *temp_r2_4;
    s16 *temp_r2_5;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r1_5;
    s32 temp_r2;
    s8 var_r2;
    s32 var_r2_2;
    s32 var_r3;
    s32 var_r6;
    u32 temp_r0_2;
    s16 var_r4;
    u8 *temp_r1_2;
    u8 *temp_r7_2;
    u8 temp_r1;
    u8 arr[2][3];
    CharSelect_CC *strcCC;

    memcpy(arr, &gUnknown_08688602, 6);
    strcCC = TASK_DATA(gCurTask);
    temp_r0 = &strcCC->unkC4;
    var_r4 = ((u8)strcCC->unkC4 % 256u) >> 4;
    temp_r0_2 = (u32)(0x300 & (u16)strcCC->unkC4) >> 8;

    if (strcCC->unkC6 == 0) {
        strcCC->sprites[0].x = -8;
        strcCC->sprites[1].x = 120;
        strcCC->sprites[2].x = 248;
        var_r6 = 0;
    } else {
        if (1 & strcCC->unkC6) {
            var_r3 = 1;
            var_r2 = -1;
        } else {
            var_r3 = 0;
            var_r2 = +1;
            var_r4 = (0x10 - var_r4);
        }

        var_r6 = var_r2 << 0x18;
        if (var_r4 == 4) {
            strcCC->sprites[1].variant = ((arr[var_r3][0] + temp_r0_2) & 3) * 2;
            strcCC->sprites[2].variant = ((arr[var_r3][1] + temp_r0_2) & 3) * 2;
            strcCC->sprites[0].variant = ((arr[var_r3][2] + temp_r0_2) & 3) * 2;
            temp_r1_3 = var_r6 >> 0x11;
            strcCC->sprites[0].x -= temp_r1_3;
            strcCC->sprites[1].x -= temp_r1_3;
            strcCC->sprites[2].x -= temp_r1_3;
        }
        if (var_r4 <= 8) {
            temp_r1_4 = var_r6 >> 0x14;
            strcCC->sprites[0].x += temp_r1_4;
            strcCC->sprites[1].x += temp_r1_4;
            strcCC->sprites[2].x += temp_r1_4;
        }
    }

    temp_r1_5 = var_r6 >> 0x18;
    if (temp_r1_5 == 1) {
        if (var_r4 <= 3) {
            var_r2_2 = 1;
        } else {
            var_r2_2 = 0;
        }
    } else if ((temp_r1_5 != -1) || (var_r2_2 = 1, (var_r4 <= 3))) {
        var_r2_2 = 0;
    }

    if ((strcCC->unkC8 >> (((var_r2_2 - 1) + temp_r0_2) & 3)) & 1) {
        strcCC->sprites[3].x = strcCC->sprites[0].x;
        strcCC->sprites[3].y = strcCC->sprites[0].y;
        DisplaySprite(&strcCC->sprites[3]);
    }
    UpdateSpriteAnimation(&strcCC->sprites[0]);
    DisplaySprite(&strcCC->sprites[0]);

    if ((strcCC->unkC8 >> ((temp_r0_2 + var_r2_2) & 3)) & 1) {
        strcCC->sprites[3].x = strcCC->sprites[1].x;
        strcCC->sprites[3].y = strcCC->sprites[1].y;
        DisplaySprite(&strcCC->sprites[3]);
    }
    UpdateSpriteAnimation(&strcCC->sprites[1]);
    DisplaySprite(&strcCC->sprites[1]);

    if ((strcCC->unkC8 >> ((var_r2_2 + 1 + temp_r0_2) & 3)) & 1) {
        strcCC->sprites[3].x = strcCC->sprites[2].x;
        strcCC->sprites[3].y = strcCC->sprites[2].y;
        DisplaySprite(&strcCC->sprites[3]);
    }
    UpdateSpriteAnimation(&strcCC->sprites[2]);
    DisplaySprite(&strcCC->sprites[2]);
}
END_NONMATCH

void Task_805B52C()
{
    u8 arr[2][8];
    Strc_80528AC gfx;
    s16 temp_r4;
    CharSelect_20 *strc20;

    memcpy(arr, &gUnknown_08688608, 0x10);
    strc20 = TASK_DATA(gCurTask);
    temp_r4 = ++strc20->unk18;
    if (temp_r4 > 0x21) {
        strc20->unk18 = 0;
        strc20->overB.unkC = 0x70;
        gCurTask->main = sub_805B694;
    } else if ((s32)temp_r4 > 0xD) {
        strc20->overB.unkC = ((SIN((Div(temp_r4 * 0x67, 0x6E) - 0xA) * 0x11) >> 0x8) + 0x40);
    } else if ((s32)temp_r4 > 0xA) {
        strc20->overB.qUnkA = 0;
    } else {
        strc20->overB.qUnkA = (u16)(0x100 - Div(temp_r4 << 8, 0xA));
        if (temp_r4 == 1) {
            u16 index = strc20->unk1C & 0x300;
            index >>= 8;
            gfx.uiGfxID = 0x27;
            gfx.unk2B = 0;
            gfx.palette = gUiGraphics[gfx.uiGfxID].palette + (index * 3);
            gfx.vramC = (u8 *)OBJ_VRAM0 + 0x20;
            gfx.paletteSize = 8;
            gfx.unk28 = 0xF;
            gfx.unk2A = 0xC;
            gfx.unk0.unk4 = gUiGraphics[gfx.uiGfxID].unk8;
            gfx.unk0.unk8 = gUiGraphics[gfx.uiGfxID].unkC;
            gfx.unk0.unk9 = gUiGraphics[gfx.uiGfxID].unk10;
            gfx.unk0.unkA = gUiGraphics[gfx.uiGfxID].unk14;
            gfx.unk0.unkB = gUiGraphics[gfx.uiGfxID].unk18;
            sub_80528AC(&gfx);
        }
    }
    sub_8052F78(&arr[0][0], &strc20->overB);
    strc20->overB.unkC += 0x20;
    sub_8052F78(&arr[1][0], &strc20->overB);
    strc20->overB.unkC -= 0x20;
}

// TODO: Match without asm blocks
void sub_805B694()
{
    Strc_80528AC gfx;
    u8 sp30[2][8];
    u8 sp38;
    u16 temp_r0_2;
    u32 temp_r0;
    u8 temp_r1;
    s32 var_r0;
    s32 var_r1;
    u32 var_r3;
    s32 var_r4;
    CharSelect_20 *strc20;

    memcpy(&sp30, &gUnknown_08688608, 0x10);
    strc20 = TASK_DATA(gCurTask);
    strc20->overB.qUnkA = 0;
    temp_r1 = strc20->unk1C;
    if (temp_r1 != 0) {
        s32 sub0;
        var_r0 = temp_r1 - 0x7F;
        if (var_r0 < 0) {
            var_r0 = 0x7F - temp_r1;
        }
        var_r0 = var_r0 << 15;
        var_r0 = (u32)var_r0 >> 16;
#ifndef NON_MATCHING
        asm("" ::"r"(var_r0));
#endif
        temp_r0 = var_r0;
        var_r4 = temp_r0;
        sub0 = 168;
#ifndef NON_MATCHING
        asm("" ::"r"(sub0));
#endif
        var_r1 = var_r4 << 16;
        var_r1 >>= 16;
        strc20->overB.unkC = (sub0 - var_r1);

        if ((s16)strc20->unk1E == 0) {
            s32 v0 = strc20->unk1C;
            var_r1 = 0x300;
            var_r1 &= v0;
            var_r3 = (u32)var_r1 >> 8;
            var_r1 = 0xFF;
            var_r1 &= strc20->unk1C;
            if ((var_r1) > 0x80) {
                var_r3 += 1;
            }

            var_r3 &= 3;

            gfx.uiGfxID = 0x27;
            gfx.unk2B = 0;
            gfx.palette = gUiGraphics[gfx.uiGfxID].palette + (var_r3 * 3);
            gfx.vramC = OBJ_VRAM0 + 0x20;
            gfx.paletteSize = 0x8;
            gfx.unk28 = 0xF;
            gfx.unk2A = 0xC;
            gfx.unk0.unk4 = gUiGraphics[gfx.uiGfxID].unk8;
            gfx.unk0.unk8 = gUiGraphics[gfx.uiGfxID].unkC;
            gfx.unk0.unk9 = gUiGraphics[gfx.uiGfxID].unk10;
            gfx.unk0.unkA = gUiGraphics[gfx.uiGfxID].unk14;
            gfx.unk0.unkB = gUiGraphics[gfx.uiGfxID].unk18;
            sub_80528AC(&gfx);
        }
        strc20->unk1E = (u16)temp_r0;
    } else {
        strc20->overB.unkC = 0x70;
    }
    if ((s32)(s16)strc20->overB.unkC <= 0x6F) {
        strc20->overB.unkC = 0x70;
    }
    sub_8052F78(&sp30[0][0], &strc20->overB);
    strc20->overB.unkC += 0x20;
    sub_8052F78(&sp30[1][0], &strc20->overB);
    strc20->overB.unkC -= 0x20;
}
