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

u32 sub_800ABEC(Sprite *s, s32 x, s32 y, Player *p) { return 0; }
bool32 SA2_LABEL(sub_800C4FC)(Sprite *s, CamCoord worldX, CamCoord worldY) { return FALSE; }
void sa2__sub_8019CCC() { }
void sa2__sub_8019F08() { }
void sub_801C704() { }

void CreatePauseMenu(void) { }

bool32 sub_800A768(Sprite *s, CamCoord worldX, CamCoord worldY, Player *p) { return FALSE; }
u32 sub_800AFDC(Sprite *s, s16 worldX, s16 worldY, Player *p, u32 param4) { }
bool32 sub_800B798(Sprite *s, CamCoord screenX, CamCoord screenY) { return FALSE; }

void sub_805B9E8() { }

void CreateEggRocketStageSeparation(CamCoord worldY) { }

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

// Interactables / Gimmicks

void CreateEntity_StageGoal(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Spikes_Up(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Spikes_Down(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Spikes_Horizontal(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Spikes_HidingUp(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Spikes_HidingDown(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Spring_Normal_Up(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Spring_Normal_Down(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Spring_Horizontal(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Spring_Big_Up(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Spring_Big_Down(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Spring_Small_Up(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Spring_Small_Down(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Decoration(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_PlatformThin(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_PlatformThin_Falling(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_PlatformCrumbling(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Waterfall(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Booster(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Booster_SlightLeft(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Booster_SlightRight(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Booster_Wall(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_BumperHexagon(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_BumperRound_LinearMov(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_BumperRound_CircularMov(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateEntity_DummyEnt(me, regionX, regionY, id);
}
void CreateEntity_BumperTriHorizontal(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_BumperTriVertical(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_BumperTriBig(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Flipper(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Platform_Square(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Flipper_Vertical(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_BarrelOfDoomMini(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_ShipSwing(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Platform_Spiked(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Bowl(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_PanelGate_Vertical(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_PanelGate_Horizontal(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_MarbleTrack_Dir(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_MarbleTrack_Unk(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_MarbleTrack_Entrance(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_MarbleTrack_Exit(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_ConveyorBelt(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_TeleportOrb(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Flipper_SmallBlue(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Carousel(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_SwingingHook(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_SwingRope(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_SteamExhaust(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_CraneClaw(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_MovingSpring(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_HangBar(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_SkatingStone(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Interactable085(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_RunWheel(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Lift(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Interactable089(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_FerrisWheel(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_BoulderSpawner(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_AirBubbles(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_IceBlock(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_UnderwaterLavaPlatform(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateEntity_DummyEnt(me, regionX, regionY, id);
}
void CreateEntity_Booster_Steep(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Booster_Steep2(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_SpikedBarrel_ChaoHunt(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_Track(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_PipeEntrance(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_PipeExit(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_BreakableWall(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }
void CreateEntity_ItemBox_ChaoHunt(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_DummyEnt(me, regionX, regionY, id); }

// Enemies
void CreateEntity_Kiki() { }
void CreateEntity_Buzzer() { }
void CreateEntity_GamiGami() { }
void CreateEntity_Rhinotank() { }
void CreateEntity_KeroKero() { }
void CreateEntity_Tentou() { }
void CreateEntity_Hanabii() { }
void CreateEntity_Slot() { }
void CreateEntity_Leon() { }
void CreateEntity_Mirror() { }
void CreateEntity_Wamu() { }
void CreateEntity_Oct() { }
void CreateEntity_Yukimaru() { }
void CreateEntity_Yukimaru_Wall() { }
void CreateEntity_Drisame() { }
void CreateEntity_PenMk1() { }

// Bosses
void CreateEntity_EggHammerTank_Intro() { }
void CreateEntity_EggHammerTank() { }
void CreateEntity_EggPress() { }
void CreateEntity_EggBall() { }
void CreateEntity_EggSpider() { }
void CreateEntity_MechaKnuckles() { }
void CreateEntity_EggSnake() { }
void CreateEntity_EggWrecker() { }
void CreateEntity_EggDrillster() { }
void CreateEntity_EggX() { }
void CreateEntity_SuperEggRobot() { }

void LoadTinyChaoGarden() { }
void CreateSegaLogo() { }
void CreateTitleScreen() { }
void CreateCharacterSelectionScreen() { }
void CreateMultiplayerModeSelectScreen() { }
void CreateTimeAttackMenu() { }
void CreateTimeAttackLobbyScreen() { }
void CreateOptionsMenu() { }
void CreateEditLanguageScreen() { }
void CreateCongratulationsAnimation() { }
void CreateStaffCredits() { }
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
void sub_804EEA8() { }
void sub_804EF18() { }
void sub_804EFA0() { }
void sub_804F020() { }
void sub_804F73C() { }
void sub_804F760() { }
void sub_804F788() { }
void sub_804F78C() { }
void sub_804F790() { }
void sub_804F7B0() { }
void sub_804F7B4() { }
void sub_804F7C0() { }
void sub_804F7C4() { }
void sub_804F7C8() { }
void sub_804F7CC() { }
void sub_804F7D0() { }
void sub_804F7DC() { }
void sub_804F7E8() { }
void sub_804F7EC() { }
void sub_804F7F0() { }
void sub_804F7F4() { }
void sub_804F834() { }
void sub_804F860() { }
void sub_804F888() { }
void sub_804F8D4() { }
void sub_804F8D8() { }
void sub_804F8DC() { }
void sub_804F934() { }
void sub_804F95C() { }
void sub_804F984() { }
void sub_804F990() { }
void sub_804F9B0() { }
void sub_804FA08() { }
void sub_804FA38() { }
void sub_804FA54() { }
void sub_804FA70() { }
void sub_804FA9C() { }
void sub_804FAC8() { }
void sub_804FAF0() { }
void sub_804FB10() { }
void sub_804FB30() { }
void sub_804FB5C() { }
void sub_804FB7C() { }
void sub_804FBA8() { }
void sub_804FBE4() { }
void sub_804FC28() { }
void sub_804FC78() { }
void sub_804FCA4() { }
void sub_804FCEC() { }
void sub_804FD54() { }
void OptionsSelectPlayerData() { }
void OptionsSelectDifficulty() { }
void OptionsSelectTimeUp() { }
void OptionsSelectSoundTest() { }
void OptionsSelectLanguage() { }
void OptionsSelectButtonConfig() { }
void OptionsSelectDeleteGameData() { }
void OptionsSelectEnd() { }
void PlayerDataSelectName() { }
void PlayerDataSelectVsRecord() { }
void PlayerDataSelectOK() { }