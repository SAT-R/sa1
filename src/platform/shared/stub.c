/* General module of stub of functions that have not been decompiled */

#include "global.h"
#include "core.h"
#include "sprite.h"
#include "game/game_over.h"
#include "game/sa1_sa2_shared/camera.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/player.h"

void *ewram_end = 0;
void *iwram_end = 0;
char gNumMusicPlayers = 4;
int gMaxLines = 0;

// TEMP
#include "game/enemies/boss_super_egg_robo.h"
SuperEggRobo *gExtraBossTaskData = { 0 };

void sa2__sub_8019CCC() { }
void sa2__sub_8019F08() { }
void sub_801C704() { }

void sub_805B9E8() { }

// Player
s32 gUnknown_03005C74 = 0;

// Dummy
#include "constants/animations.h"
#include "game/entity.h"
#include "malloc_vram.h"
typedef struct {
    SpriteBase base;
    Sprite s;
} DummyEnt;

void Task_DummyEnt(void)
{
    DummyEnt *dummy = TASK_DATA(gCurTask);
    MapEntity *me = dummy->base.me;
    Sprite *s = &dummy->s;

    s->x = TO_WORLD_POS(dummy->base.meX, dummy->base.regionX) - gCamera.x;
    s->y = TO_WORLD_POS(me->y, dummy->base.regionY) - gCamera.y;

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, dummy->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void TaskDestructor_DummyEnt(struct Task *t)
{
    DummyEnt *dummy = TASK_DATA(t);
    MapEntity *me = dummy->base.me;
    Sprite *s = &dummy->s;

    VramFree(s->graphics.dest);
}

void CreateEntity_DummyEnt(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_DummyEnt, sizeof(DummyEnt), 0x2000, 0, TaskDestructor_DummyEnt);
    DummyEnt *dummy = TASK_DATA(t);
    Sprite *s = &dummy->s;
    s32 worldX, worldY;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SPRITE_INIT(s, 4, SA1_ANIM_INDICATOR_SONIC, 0, 0, 2);

    dummy->base.me = me;
    dummy->base.regionX = regionX;
    dummy->base.regionY = regionY;
    dummy->base.meX = me->x;
    dummy->base.id = id;
    SET_MAP_ENTITY_INITIALIZED(me);
}

// Interactables / GimmicksCreateEntity_BreakableWall

void CreateEntity_ItemBox_ChaoHunt(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }

// Bosses
extern void CreateEntity_StageGoal(MapEntity *me, u16 regionX, u16 regionY, u8 id);
void CreateEntity_EggSnake(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_StageGoal(me, regionX, regionY, id); }
void CreateEntity_EggDrillster(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_StageGoal(me, regionX, regionY, id); }
void CreateEntity_EggX(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_StageGoal(me, regionX, regionY, id); }
void CreateEntity_SuperEggRobot(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_StageGoal(me, regionX, regionY, id); }

struct Task *CreatePreBossCameraPan(s16 yMin, s16 yMax) { return NULL; }

#include "game/nuts_and_bolts_task.h"
struct Task *sub_8017540(s32 qParam0, s32 qParam1)
{
    struct Task *t = NULL;
    s32 temp_r0_2;
    NutsAndBolts *bolts;
    Sprite *s;

    t = CreateNutsAndBoltsTask(0x2000U, (void *)(OBJ_VRAM0 + 1000), 0x263U, 0U, NULL);
    bolts = TASK_DATA(t);
    s = &bolts->s;
    bolts->qUnk30 = qParam0;
    bolts->qUnk34 = qParam1;
    s->frameFlags = 0x2000;
    s->oamFlags = 0x500;
    s->frameFlags |= ((PseudoRandom32() & 0xC00) | 0x2000);
    return t;
}

struct Task *sub_80171BC(s16 minY, s16 maxY, s16 param2, s16 someX) { return NULL; }

void sub_802E290(void) { }

void CreateCharacterSelectionScreen() { }
void CreateMultiplayerModeSelectScreen() { }
void CreateOptionsMenu() { }
void CreateCongratulationsAnimation() { }
void CreateStaffCredits() { }

#include "game/save.h" // TimeRecord
void sub_8069C94(TimeRecord record) { }

void CreateExtraStageResults() { }
void CreateChaoMessageMP() { }
void CreateMultiplayerPlayer() { }
void CreateMultipackOutcomeScreen() { }
void MultiPakCommunicationError() { }
void ShowSinglePakResults() { }
void CreateMultiplayerChao() { }
void CreateMultiplayerMultiPakUI() { }
void CreateSpecialStage() { }
void CreateSpecialStageIntro() { }

void sub_800E934() { }
void sub_800F318() { }

void sub_8061948(u8 param0) { }
void sub_8063918(void) { }

void CreatePlayerNameInputMenu() { }
void CreateVsRecord() { }
void OptionsSelectPlayerData() { }
void OptionsSelectDifficulty() { }
void OptionsSelectTimeUp() { }
void OptionsSelectSoundTest() { }
void OptionsSelectLanguage() { }
void OptionsSelectButtonConfig() { }
void OptionsSelectDeleteGameData() { }
void OptionsSelectEnd() { }
