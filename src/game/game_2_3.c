#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/gTask_03006240.h"
#include "game/multiplayer/multipak_connection.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/stage/ui.h"

#include "constants/animations.h"
#include "constants/songs.h"

typedef struct Game_2_3_54 {
    u8 filler0[0x48];
    s32 unk48;
    s16 unk4C;
    u8 unk4E;
    u8 unk4F;
    u8 unk50;
    u8 unk51;
} Game_2_3_54;

typedef struct Game_2_3_5C {
    StrcUi_805423C strc0;
    struct Task *taskC;
    struct Task *task10;
    u8 filler14[0x8];
    Sprite s;
    s32 unk4C;
    s16 unk50;
    s16 unk52;
    u8 unk54;
    u8 unk55;
    u8 unk56;
    u8 unk57;
    u8 unk58;
} Game_2_3_5C;

typedef struct Game_2_3_2DC {
    Sprite sprites[5];
    u8 fillerF0[0x1E0];
    s32 unk2D0;
    s16 unk2D4;
    u8 unk2D6;
    u8 unk2D7;
    u8 unk2D8;
    u8 unk2D9;
    u8 unk2DA;
} Game_2_3_2DC;

void sub_8062EDC(void);
void Task_80631E8(void);
void Task_8063824(void);
void Task_8063914(void);
void TaskDestructor_8063910(struct Task *t2);

extern u8 gUnknown_086A17F4[];
extern u8 gUnknown_086A2534[];
extern u8 gUnknown_086A4FB4[];
extern u16 gUnknown_086A4DB4[256];
extern u8 gUnknown_086A5834[];
extern s32 gUnknown_0868B240[5][3];

void sub_8062EDC(void)
{
    Strc_80528AC gfx;
    s8 *temp_r5;

    UiGfxStackInit();

    gfx.uiGfxID = 128;
    gfx.unk2B = 1;
    gfx.tiles = gUnknown_086A17F4;
    gfx.tilesSize = 0xE00;
    gfx.layout = gUnknown_086A2534;
    gfx.layoutSize = 0x500;
    gfx.unk29 = 1;
    gfx.unk2A = 0x11;
    gfx.unk0.unk4 = 0;
    gfx.unk0.unk8 = 0;
    gfx.unk0.unk9 = 0;
    gfx.unk0.unkA = 0;
    gfx.unk0.unkB = 0;
    sub_80528AC(&gfx);

    gfx.uiGfxID = 128;
    gfx.unk2B = 0;
    gfx.tiles = gUnknown_086A4FB4;
    gfx.tilesSize = 0x1CC0;
    gfx.palette = gUnknown_086A4DB4;
    gfx.paletteSize = 0x200;
    gfx.layout = gUnknown_086A5834;
    gfx.layoutSize = 0x1000;
    gfx.unk28 = 0;
    gfx.unk29 = 0;
    gfx.unk2A = 0x15;
    sub_80528AC(&gfx);
}

void sub_8062F90(void)
{
    struct Task *t;
    Game_2_3_54 *strc54;
    Game_2_3_5C *strc5C;
    Game_2_3_2DC *strc2DC;
    Sprite *s;
    s32 four;
    u8 i;

    gMultiplayerMissingHeartbeats[3] = 0;
    gMultiplayerMissingHeartbeats[2] = 0;
    gMultiplayerMissingHeartbeats[1] = 0;
    gMultiplayerMissingHeartbeats[0] = 0;

    m4aSongNumStart(MUS_COURSE_SELECTION);
    four = 4;
    sub_80535FC();
    gDispCnt = 0x1340;
    gBgCntRegs[0] = 0x1D83;
    gBgCntRegs[1] = 0x1886;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    sub_8062EDC();

    strc5C = TASK_DATA(TaskCreate(Task_80631E8, sizeof(Game_2_3_5C), 0x2000U, 0U, TaskDestructor_8063910));
    strc5C->unk4C = 0;
    strc5C->unk57 = 0;
    strc5C->unk50 = 0x14;
    strc5C->unk52 = 0x14;
    strc5C->unk54 = 0;
    strc5C->unk55 = 0;
    strc5C->unk58 = 4;

    strc5C->strc0.unk0 = 0;
    strc5C->strc0.unk2 = 1;
    strc5C->strc0.unk4 = 2;
    strc5C->strc0.unk6 = 0;
    strc5C->strc0.unk8 = 0x200;
    strc5C->strc0.unkA = 1;

    t = TaskCreate(Task_8063914, sizeof(Game_2_3_54), 0x2030U, 0U, NULL);
    strc54 = TASK_DATA(t);
    strc54->unk48 = 0;
    strc54->unk4C = 0;
    strc54->unk4E = 0;
    strc54->unk51 = 4;
    strc54->unk4F = 0;
    strc5C->taskC = t;

    t = TaskCreate(Task_8063824, sizeof(Game_2_3_2DC), 0x2030U, 0U, NULL);
    strc2DC = TASK_DATA(t);
    strc2DC->unk2D0 = 0;
    strc2DC->unk2D4 = 0;
    strc2DC->unk2D6 = 0;
    strc2DC->unk2D7 = 0;
    strc2DC->unk2DA = four;
    strc2DC->unk2D9 = 0;

    for (i = 0; i < (s32)ARRAY_COUNT(strc2DC->sprites); i++) {
        s = &strc2DC->sprites[i];
        s->graphics.dest = (void *)gUnknown_0868B240[i][0];
        s->graphics.anim = gUnknown_0868B240[i][1];
        s->variant = gUnknown_0868B240[i][2];
        s->oamFlags = 0x480;
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0x2000;
        UpdateSpriteAnimation(s);
    }

    strc5C->task10 = t;

    s = &strc5C->s;
    s->x = (DISPLAY_WIDTH / 2);
    s->y = (DISPLAY_HEIGHT / 2);
    s->graphics.dest = OBJ_VRAM0 + 0xF00;
    s->oamFlags = 0x80;
    s->graphics.size = 0;
    s->graphics.anim = 905;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    sub_805423C(&strc5C->strc0);
}
