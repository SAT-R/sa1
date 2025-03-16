/* General module of stub of functions that have not been decompiled */

#include "global.h"
#include "sprite.h"
#include "game/game_over.h"
#include "game/sa1_sa2_shared/camera.h"
#include "game/sa1_sa2_shared/player.h"

void *ewram_end = 0;
void *iwram_end = 0;
char gNumMusicPlayers = 4;
int gMaxLines = 0;

void CreateToBeContinuedScreen() { }

u32 sub_80096B0() { return 0; }
u32 sub_800ABEC() { return 0; }
bool32 SA2_LABEL(sub_800C4FC)(Sprite *s, CamCoord worldX, CamCoord worldY) { return FALSE; }
void sa2__sub_8019CCC() { }
void sa2__sub_8019F08() { }
void sub_801C704() { }
void sa2__sub_8023B5C() { }

// Stage BG Updates
void StageBgUpdate_Zone6Act1() { }

void SetStageSpawnPos(u32 character, u32 level, u32 playerID, Player *p);
void CallSetStageSpawnPos(u32 character, u32 level, u32 playerID, Player *p) { SetStageSpawnPos(character, level, playerID, p); }

void CreatePauseMenu(void) { }

u32 sub_800B2BC(Sprite *s, s16 worldX, s16 worldY, Player *p) { }

void sub_804A5D8() { }

// UI
void sub_80528AC() { }

void sub_805B9E8() { }
void WriteSaveGame() { }
void DestroyPlayerTasks() { }

// Player
void Task_PlayerMain(void) { }
void Task_8045B38(void) { }
void Player_80470AC(Player *p) { }
void Player_804726C(Player *p) { }
void Player_8047280(Player *p) { }
void Task_8049898(void) { }
void sa2__sub_8029AC0() { }
void sa2__sub_8029B0C() { }
void Player_Sonic_JumpHeld() { }
void Player_Tails_JumpHeld() { }
void Player_Knuckles_JumpHeld() { }
s32 SA2_LABEL(sub_8029BB8)(Player *p, u8 *p1, s32 *out) { }
void sub_804A1B8(Player *p) { }
void TaskDestructor_Player(struct Task *t) { }

// Interactables / Gimmicks
void CreateEntity_StageGoal() { }
void CreateEntity_Spikes_Up() { }
void CreateEntity_Spikes_Down() { }
void CreateEntity_Spikes_Horizontal() { }
void CreateEntity_Spikes_HidingUp() { }
void CreateEntity_Spikes_HidingDown() { }
void CreateEntity_Checkpoint() { }
void CreateEntity_Spring_Normal_Up() { }
void CreateEntity_Spring_Normal_Down() { }
void CreateEntity_Spring_Horizontal() { }
void CreateEntity_Spring_Big_Up() { }
void CreateEntity_Spring_Big_Down() { }
void CreateEntity_Spring_Small_Up() { }
void CreateEntity_Spring_Small_Down() { }
void CreateEntity_Decoration() { }
void CreateEntity_GrindRail_Start() { }
void CreateEntity_GrindRail_End() { }
void CreateEntity_PlatformThin() { }
void CreateEntity_PlatformThin_Falling() { }
void CreateEntity_PlatformCrumbling() { }
void CreateEntity_BounceBlock() { }
void CreateEntity_InclineRamp() { }
void CreateEntity_Waterfall() { }
void CreateEntity_HalfPipeStart() { }
void CreateEntity_HalfPipeEnd() { }
void CreateEntity_Shrubbery() { }
void CreateEntity_Booster() { }
void CreateEntity_Booster_SlightLeft() { }
void CreateEntity_Booster_SlightRight() { }
void CreateEntity_MiniLoop_StartBoost() { }
void CreateEntity_MiniLoop_Exit() { }
void CreateEntity_MiniLoop_Entrance() { }
void CreateEntity_RedFlag() { }
void CreateEntity_WallPole_Left() { }
void CreateEntity_WallPole_Right() { }
void CreateEntity_ForcedIceSlide() { }
void CreateEntity_Booster_Wall() { }
void CreateEntity_BumperHexagon() { }
void CreateEntity_BumperRound_LinearMov() { }
void CreateEntity_BumperRound_CircularMov() { }
void CreateEntity_BumperTriHorizontal() { }
void CreateEntity_BumperTriVertical() { }
void CreateEntity_BumperTriBig() { }
void CreateEntity_Flipper() { }
void CreateEntity_Platform_Square() { }
void CreateEntity_Flipper_Vertical() { }
void CreateEntity_BarrelOfDoomMini() { }
void CreateEntity_SEGA_SONIC_Letter() { }
void CreateEntity_PartyBalloon() { }
void CreateEntity_ShipSwing() { }
void CreateEntity_Platform_Spiked() { }
void CreateEntity_Bowl() { }
void CreateEntity_PanelGate_Vertical() { }
void CreateEntity_PanelGate_Horizontal() { }
void CreateEntity_MarbleTrack_Dir() { }
void CreateEntity_MarbleTrack_Unk() { }
void CreateEntity_MarbleTrack_Entrance() { }
void CreateEntity_MarbleTrack_Exit() { }
void CreateEntity_ConveyorBelt() { }
void CreateEntity_TeleportOrb() { }
void CreateEntity_Flipper_SmallBlue() { }
void CreateEntity_Carousel() { }
void CreateEntity_HookRail() { }
void CreateEntity_SwingingHook() { }
void CreateEntity_SecurityGate() { }
void CreateEntity_SwingRope() { }
void CreateEntity_SteamExhaust() { }
void CreateEntity_CraneClaw() { }
void CreateEntity_MovingSpring() { }
void CreateEntity_HangBar() { }
void CreateEntity_SkatingStone() { }
void CreateEntity_Interactable085() { }
void CreateEntity_RunWheel() { }
void CreateEntity_Lift() { }
void CreateEntity_Interactable089() { }
void CreateEntity_PlayerFloat() { }
void CreateEntity_FerrisWheel() { }
void CreateEntity_BoulderSpawner() { }
void CreateEntity_SpikedBarrel() { }
void CreateEntity_AirBubbles() { }
void CreateEntity_IceBlock() { }
void CreateEntity_UnderwaterLavaPlatform() { }
void CreateEntity_Booster_Steep() { }
void CreateEntity_Booster_Steep2() { }
void CreateEntity_SpecialSpring() { }
void CreateEntity_SpikedBarrel_ChaoHunt() { }
void CreateEntity_SmallFallBlock() { }
void CreateEntity_Track() { }
void CreateEntity_Interactable107() { }
void CreateEntity_Spring_Hiding() { }
void CreateEntity_PipeEntrance() { }
void CreateEntity_PipeExit() { }
void CreateEntity_BreakableWall() { }
void CreateEntity_ItemBox_ChaoHunt() { }

// Enemies
void CreateEntity_Kiki() { }
void CreateEntity_Buzzer() { }
void CreateEntity_GamiGami() { }
void CreateEntity_Rhinotank() { }
void CreateEntity_KeroKero() { }
void CreateEntity_Senbon() { }
void CreateEntity_Tentou() { }
void CreateEntity_Fireball() { }
void CreateEntity_Hanabii() { }
void CreateEntity_Slot() { }
void CreateEntity_Leon() { }
void CreateEntity_Mirror() { }
void CreateEntity_Wamu() { }
void CreateEntity_Oct() { }
void CreateEntity_Yukimaru() { }
void CreateEntity_Yukimaru_Wall() { }
void CreateEntity_Drisame() { }
void CreateEntity_Kuraa() { }
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
void CreateOpponentPositionIndicator() { }
void CreateMultiplayerChao() { }
void CreateMultiplayerMultiPakUI() { }
void CreateSpecialStage() { }

bool32 SaveGameExists() { return FALSE; }

void Player_TransitionCancelFlyingAndBoost() { }

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