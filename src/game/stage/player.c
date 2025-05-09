#include "global.h"
#include "trig.h"
#include "flags.h"
#include "malloc_vram.h"
#include "gba/io_reg.h"
#include "lib/m4a/m4a.h"
#include "game/amy_attack_heart_effect.h"
#include "game/multiplayer/mp_player.h"
#include "game/parameters/characters.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/sa1_sa2_shared/camera.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/music_manager.h"
#include "game/sa1_sa2_shared/player.h"
#include "game/save.h"
#include "game/some_task_manager.h"
#include "game/stage/camera.h"
#include "game/stage/terrain_collision.h"
#include "game/stage/dust_effect_braking.h"
#include "game/stage/dust_effect_spindash.h"
#include "game/stage/mp_sprite_task.h"
#include "game/stage/player.h"
#include "game/stage/player_controls.h"
#include "game/stage/rings_scatter.h"
#include "game/stage/spawn_positions.h"
#include "game/stage/stage.h"
#include "game/stage/underwater_effects.h"
#include "game/water_effects.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/songs.h"
#include "constants/vram_hardcoded.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ s8 pid;
    /* 0x04 */ u32 unk4; // TODO: Check the type!
} player_0_Task; /* size: 0x8 */

typedef struct {
    /* 0x00 */ player_0_Task unk0;
    /* 0x08 */ s32 unk8; // counter of some kind
    /* 0x0C */ s32 qXs[16];
    /* 0x0C */ s32 qYs[16];
} MaybeSuperSonic; /* size: 0x8C */

Player ALIGNED(8) gPlayer = {};
#if (GAME == GAME_SA1)
Player ALIGNED(8) gPartner = {};
#endif

// Potentially some extra space on player for this to be aligned 16 (should be 8)
#if (GAME == GAME_SA1)
PlayerSpriteInfo ALIGNED(16) gPartnerLimbsPSI = {};
#endif
PlayerSpriteInfo ALIGNED(16) gPlayerLimbsPSI = {};
PlayerSpriteInfo ALIGNED(16) gPlayerBodyPSI = {};
#if (GAME == GAME_SA1)
PlayerSpriteInfo ALIGNED(16) gPartnerBodyPSI = {};
#endif

extern s16 gUnknown_084ADF78[NUM_LEVEL_IDS][2];
extern s16 gUnknown_084ADFC0[NUM_LEVEL_IDS][2];
extern s16 gUnknown_084AE188[9];
extern s16 gUnknown_084AE19A[9];
extern TileInfoFirework gUnknown_084AE1B0[5];
extern const u8 gCharStatesKnucklesGlideTurn[];

void SA2_LABEL(sub_80232D0)(Player *p);
void Player_8044750(Player *p);
void Player_80447D8(Player *p);
void SA2_LABEL(sub_802460C)(Player *p);
struct Task *Player_Knuckles_InitGfx_UppercutFlame(Player *p);
struct Task *Player_Knuckles_InitGfx_FloatSplash(Player *p);
struct Task *Player_Sonic_InitGfx_InstaShield(Player *p);
struct Task *Player_Tails_InitGfx_TailSwipe(Player *p);

// Super Sonic
extern s32 gUnknown_03005C74;
void Task_804A54C(void);
void Task_804A71C(void);
void TaskDestructor_804A830(struct Task *);
void Task_804AAC4(void);

void Set_3005C74_to_4(void);

void Player_Sonic_80473AC(Player *p);
void Player_Tails_8047BA0(Player *p);
void Player_Knuckles_8049000(Player *p);
void Player_Amy_80497AC(Player *p);

void Player_Sonic_InitInstaShield(Player *p);
void Player_Tails_InitFlying(Player *p);
void Player_Knuckles_InitGlide(Player *p);

void ExtraBossCapsule_UpdateSprite(Sprite *s, s32 screenX, s32 screenY);

void Task_8045AD8(void);
void Task_8045B38(void);
void sub_8045DF0(Player *p);
void Player_80470AC(Player *p);
void Player_804726C(Player *p);
void Player_8047280(Player *p);
s32 sub_8047668(Player *p);
void sub_8047714(Player *p);
void Task_8049898(void);
void Player_SuperSonic_80499CC(Player *p);
void sub_8049D7C(Player *p);
void Player_8049E3C(Player *p);
void sub_8049FD0(Player *p);
bool32 sub_8049BAC(Player *p);
void Player_804A0B8(Player *p);
void sub_804A1B8(Player *p);
void Player_804A20C(Player *p);
void Player_804A254(Player *p);
void sub_804A2FC(Player *p);
void sub_804A498(s32 qWorldX, s32 qWorldY, bool32 param2);
void sub_804A854(Player *p);
void Task_804AD0C(void);

s32 SA2_LABEL(sub_8029BB8)(Player *p, u8 *p1, s32 *out);
void Task_PlayerMain(void);
void TaskDestructor_Player(struct Task *);
void AllocateCharacterStageGfx(Player *p, PlayerSpriteInfo *param2);
void AllocateCharacterMidAirGfx(Player *p, PlayerSpriteInfo *param2);
s32 SA2_LABEL(sub_802195C)(Player *p, u8 *p1, s32 *out);
void SA2_LABEL(sub_802486C)(Player *p, PlayerSpriteInfo *psi);
void SA2_LABEL(sub_8024B10)(Player *p, PlayerSpriteInfo *psi);
void SA2_LABEL(sub_8024F74)(Player *p, PlayerSpriteInfo *psi);

#define EXTRA_BOSS__INITIAL_RING_COUNT 50

#if (GAME == GAME_SA1)
#define UPDATE_POS_SPEEDCAP
#elif (GAME >= GAME_SA2)
#define UPDATE_POS_SPEEDCAP player->qSpeedAirY = MIN(player->qSpeedAirY, Q(PLAYER_AIR_SPEED_MAX));
#endif

#define PLAYERFN_UPDATE_POSITION(player)                                                                                                   \
    {                                                                                                                                      \
        player->qWorldX += player->qSpeedAirX;                                                                                             \
                                                                                                                                           \
        if ((gStageFlags ^ SA2_LABEL(gUnknown_0300544C)) & STAGE_FLAG__GRAVITY_INVERTED) {                                                 \
            player->qSpeedAirY = -player->qSpeedAirY;                                                                                      \
        }                                                                                                                                  \
                                                                                                                                           \
        UPDATE_POS_SPEEDCAP;                                                                                                               \
                                                                                                                                           \
        player->qWorldY = GRAVITY_IS_INVERTED ? player->qWorldY - player->qSpeedAirY : player->qWorldY + player->qSpeedAirY;               \
    }

#if (GAME == GAME_SA1)
#define PLAYERFN_UPDATE_AIR_FALL_SPEED(player)                                                                                             \
    if (!(player->moveState & MOVESTATE_IN_WATER)) {                                                                                       \
        player->qSpeedAirY += Q(PLAYER_GRAVITY);                                                                                           \
    } else {                                                                                                                               \
        player->qSpeedAirY += Q(PLAYER_GRAVITY_UNDER_WATER);                                                                               \
    }
#elif (GAME == GAME_SA2)
#define PLAYERFN_UPDATE_AIR_FALL_SPEED(player)                                                                                             \
    if (player->moveState & MOVESTATE_IN_WATER) {                                                                                          \
        player->qSpeedAirY += Q(PLAYER_GRAVITY_UNDER_WATER);                                                                               \
    } else {                                                                                                                               \
        player->qSpeedAirY += Q(PLAYER_GRAVITY);                                                                                           \
    }
#endif

#define MACRO_8024B10_PSI_UPDATE(p, psi)                                                                                                   \
    ({                                                                                                                                     \
        s32 x, y;                                                                                                                          \
        if (!(p->moveState & MOVESTATE_FACING_LEFT)) {                                                                                     \
            psi->transform.qScaleX = -Q(1.0);                                                                                              \
        } else {                                                                                                                           \
            psi->transform.qScaleX = +Q(1.0);                                                                                              \
        }                                                                                                                                  \
        if (GRAVITY_IS_INVERTED) {                                                                                                         \
            psi->transform.qScaleX = -psi->transform.qScaleX;                                                                              \
        }                                                                                                                                  \
                                                                                                                                           \
        if (psi->transform.qScaleX < 0) {                                                                                                  \
            psi->transform.x--;                                                                                                            \
        }                                                                                                                                  \
                                                                                                                                           \
        if (GRAVITY_IS_INVERTED) {                                                                                                         \
            psi->transform.qScaleY = Q(1.0);                                                                                               \
            /* requires double clamp to match */                                                                                           \
            psi->transform.rotation = CLAMP_SIN_PERIOD(CLAMP_SIN_PERIOD(-Q(1.0) - (psi->transform.rotation + psi->transform.qScaleY)));    \
        } else {                                                                                                                           \
            psi->transform.qScaleY = Q(1.0);                                                                                               \
        }                                                                                                                                  \
                                                                                                                                           \
        x = I(psi->transform.qScaleX * p->SA2_LABEL(unk80));                                                                               \
        y = I(psi->transform.qScaleY * p->SA2_LABEL(unk82));                                                                               \
        psi->transform.qScaleX = x;                                                                                                        \
        psi->transform.qScaleY = y;                                                                                                        \
        UpdateSpriteAnimation(s);                                                                                                          \
    })

// >> acceleration = (sin(angle) * 3) / 32
#define GET_ROTATED_ACCEL(angle)   ((SIN_24_8((angle)*4) * 3) >> 5)
#define GET_ROTATED_ACCEL_2(angle) ((SIN_24_8((angle)*4) * 5) >> 5)
#define GET_ROTATED_ACCEL_3(angle) ((SIN_24_8((angle)*4) * 60))

#define PLAYERFN_UPDATE_UNK2A(player)                                                                                                      \
    {                                                                                                                                      \
        if (player->SA2_LABEL(unk2A) != 0) {                                                                                               \
            player->SA2_LABEL(unk2A) -= 1;                                                                                                 \
        } else if ((player->rotation + Q(0.125)) & 0xC0) {                                                                                 \
            if (ABS(player->qSpeedGround) < Q(1.875)) {                                                                                    \
                player->qSpeedGround = 0;                                                                                                  \
                                                                                                                                           \
                player->moveState |= MOVESTATE_IN_AIR;                                                                                     \
                player->SA2_LABEL(unk2A) = GBA_FRAMES_PER_SECOND / 2;                                                                      \
            }                                                                                                                              \
        }                                                                                                                                  \
    }

void SA2_LABEL(sub_80213C0)(u32 UNUSED characterId, u32 UNUSED levelId, Player *player)
{
    struct Task *t;
    player_0_Task *gt;

    Player *p = player;
    s32 playerID = p->playerID;

#if (GAME == GAME_SA1)
    if (playerID == 0)
#endif
    {
#if (GAME == GAME_SA1)
        if (IS_EXTRA_STAGE(levelId)) {
            p->spriteTask = TaskCreate(Task_8049898, sizeof(MaybeSuperSonic), 0x3000, 0, TaskDestructor_Player);
        } else {
            p->spriteTask = TaskCreate(Task_PlayerMain, sizeof(player_0_Task), 0x3000, 0, TaskDestructor_Player);
        }
#endif
        // NOTE: For this to work MaybeSuperSonic NEEDS to have a player_0_Task as first element!
        gt = (player_0_Task *)TASK_DATA(p->spriteTask);
        gt->pid = playerID;
        gt->unk4 = 0;

#if (GAME == GAME_SA2)
        if (IS_MULTI_PLAYER) {
            if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
                gRingCount = 1;
            } else {
                gRingCount = 0;
            }
        }
#endif

        InitializePlayer(p);

#if (GAME == GAME_SA2)
        PLAYERFN_SET(Player_TouchGround);
#endif

        CreateBrakingDustEffectRelatedTask();
        InitPlayerHitRingsScatter();

#if !TAS_TESTING
        if ((gInputRecorder.mode == RECORDER_RECORD)) {
            InputRecorderLoadTape();
            gInputRecorder.mode = RECORDER_RECORD;
        } else if (gInputRecorder.mode == RECORDER_PLAYBACK) {
            InputRecorderLoadTape();
            gInputRecorder.mode = RECORDER_PLAYBACK;
        }
#endif
    }
#if (GAME == GAME_SA1)
    else {
        // here: playerID != 0
        p->spriteTask = TaskCreate(Task_8045B38, sizeof(player_0_Task), 0x3001, 0, TaskDestructor_Player);
        gt = (player_0_Task *)TASK_DATA(p->spriteTask);
        gt->pid = playerID;
        gt->unk4 = 0;
        InitializePlayer(player);
    }
#endif

#if (GAME == GAME_SA2)
    gStageGoalX = 0;
    gUnknown_030054FC = 0;
    gUnknown_030054E0 = 0;

    InitNewInputCounters();
#endif

#if PORTABLE
    if (p->spriteInfoBody != NULL)
#endif
        AllocateCharacterStageGfx(p, p->spriteInfoBody);
#if PORTABLE
    if (p->spriteInfoLimbs != NULL)
#endif
        AllocateCharacterMidAirGfx(p, p->spriteInfoLimbs);

#if (GAME == GAME_SA1)
    if (IS_EXTRA_STAGE(levelId)) {
        sub_804A1B8(p);
    }
#endif
}

void AllocateCharacterStageGfx(Player *p, PlayerSpriteInfo *psi)
{
    s32 playerID = p->playerID;
    Sprite *s = &psi->s;

    if (playerID == 0) {
        s->graphics.dest = (void *)OBJ_VRAM0;
    } else {
        // TODO: Maybe find out biggest char anim size through preprocessing in the future?
        s->graphics.dest = ALLOC_TILES(SA1_ANIM_SONIC_RUN);
    }

    s->graphics.size = 0;
    s->graphics.anim = p->anim;
    s->variant = p->variant;
    s->prevVariant = -1;
    s->x = I(p->qWorldX);
    s->y = I(p->qWorldY);
#if (GAME == GAME_SA1)
    s->oamFlags = SPRITE_OAM_ORDER(16);
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
#elif (GAME == GAME_SA2)
    s->oamFlags = SPRITE_OAM_ORDER(16 + playerID);
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);

    if (IS_MULTI_PLAYER) {
        s->palId = SIO_MULTI_CNT->id;
    } else {
        s->palId = 0;
    }
#endif

    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    if (IS_MULTI_PLAYER) {
        s->frameFlags |= (SPRITE_FLAG_MASK_18 | SPRITE_FLAG_MASK_19);
    }
    SPRITE_FLAG_SET(s, ROT_SCALE_ENABLE);
    s->frameFlags |= playerID;

    s->hitboxes[0].index = -1;
    s->hitboxes[1].index = -1;

    psi->transform.rotation = 0;
    psi->transform.qScaleX = +Q(1);
    psi->transform.qScaleY = +Q(1);
    psi->transform.x = 0;
    psi->transform.y = 0;
}

// Allocate VRAM for Tails' tails and Cream's ears while mid-air
void AllocateCharacterMidAirGfx(Player *p, PlayerSpriteInfo *param2)
{
    Sprite *s = &param2->s;
    PlayerSpriteInfo *extraSprite = param2;
    u32 character = p->character;

#if (GAME == GAME_SA1)
    if (character == CHARACTER_TAILS) {
        s->graphics.dest = VramMalloc(16);
        s->graphics.size = 0;
        s->graphics.anim = SA1_ANIM_CHAR(TAILS, SPIN_ATTACK);
        extraSprite->s.variant = 1;
    }
#elif (GAME >= GAME_SA2)
    if (character == CHARACTER_CREAM) {
        s->graphics.dest = VramMalloc(16);
        s->graphics.anim = SA2_ANIM_CHAR(SA2_CHAR_ANIM_SPIN_ATTACK, CHARACTER_CREAM);
        extraSprite->s.variant = 1;
    } else if (character == CHARACTER_TAILS) {
        s->graphics.dest = VramMalloc(16);
        s->graphics.anim = SA2_ANIM_CHAR(SA2_CHAR_ANIM_SPIN_ATTACK, CHARACTER_TAILS);
        extraSprite->s.variant = 1;
    }
#endif
    else {
        return;
    }

#if (GAME == GAME_SA2)
    s->graphics.size = 0;
#endif
    s->prevVariant = -1;
    s->x = I(p->qWorldX);
    s->y = I(p->qWorldY);
    s->oamFlags = SPRITE_OAM_ORDER(17);
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);

#if (GAME == GAME_SA2)
    if (IS_MULTI_PLAYER) {
        s->palId = SIO_MULTI_CNT->id;
    } else
#endif
    {
        s->palId = 0;
    }

    s->frameFlags =
#if (GAME == GAME_SA2)
        SPRITE_FLAG_MASK_18 |
#endif
        (SPRITE_FLAG(PRIORITY, 2) | SPRITE_FLAG_MASK_ROT_SCALE_ENABLE | SPRITE_FLAG(ROT_SCALE, 4));

    extraSprite->transform.rotation = 0;
    extraSprite->transform.qScaleX = +Q(1);
    extraSprite->transform.qScaleY = +Q(1);
    extraSprite->transform.x = 0;
    extraSprite->transform.y = 0;
}

void SetStageSpawnPos(u32 character, u32 level, u32 playerID, Player *p)
{
    p->playerID = playerID;
    p->character = character;

    if (IS_SINGLE_PLAYER || (gGameMode == GAME_MODE_RACE) || (gGameMode == GAME_MODE_MULTI_PLAYER)) {
        p->checkPointX = gSpawnPositions[level][0];
        p->checkPointY = gSpawnPositions[level][1];
    } else if (gGameMode == GAME_MODE_CHAO_HUNT) {
        s32 sioId = SIO_MULTI_CNT->id;
        p->checkPointX = gSpawnPositions_Modes_4_and_5[level - NUM_LEVEL_IDS_SP][sioId][0];
        p->checkPointY = gSpawnPositions_Modes_4_and_5[level - NUM_LEVEL_IDS_SP][sioId][1];
    } else if (gGameMode == GAME_MODE_TEAM_PLAY) {
        s32 sioId = SIO_MULTI_CNT->id;

        if (level == ACT_CHAO_HUNT_C) {
            p->checkPointX = gSpawnPositions_Modes_4_and_5[level - NUM_LEVEL_IDS_SP][SIO_MULTI_CNT->id][0];
            p->checkPointY = gSpawnPositions_Modes_4_and_5[level - NUM_LEVEL_IDS_SP][SIO_MULTI_CNT->id][1];
        } else {
            s32 sioMask = ((gMultiplayerConnections & (0x10 << sioId))) >> (sioId + 4);
            u32 i, pid;

            for (pid = 0, i = 0; i < sioId; i++) {
                u32 ithMask = ((gMultiplayerConnections & (0x10 << i))) >> (i + 4);
                if (ithMask == sioMask) {
                    pid++;
                }
            }

            if (sioMask == 0) {
                pid = -pid;
            }

            p->checkPointX = gSpawnPositions_Modes_4_and_5[level - NUM_LEVEL_IDS_SP][sioMask][0] + pid * 24;
            p->checkPointY = gSpawnPositions_Modes_4_and_5[level - NUM_LEVEL_IDS_SP][sioMask][1];
        }
    } else {
        switch (SIO_MULTI_CNT->id) {
            case 0: {
                p->checkPointX = 232;
                p->checkPointY = 829;
            } break;

            case 1: {
                p->checkPointX = 1585;
                p->checkPointY = 926;
            } break;

            case 2: {
                p->checkPointX = 232;
                p->checkPointY = 348;
            } break;

            case 3: {
                p->checkPointX = 1585;
                p->checkPointY = 279;
            } break;
        }
    }

    p->SA2_LABEL(unk98) = 0;

    p->checkpointTime = 0;

    if (playerID == 0) {
        p->spriteInfoBody = &gPlayerBodyPSI;
        p->spriteInfoLimbs = &gPlayerLimbsPSI;
    } else {
        p->spriteInfoBody = &gPartnerBodyPSI;
        p->spriteInfoLimbs = &gPartnerLimbsPSI;
    }
}

void InitializePlayer(Player *p)
{
#if (GAME == GAME_SA1)
#if DEBUG
    gSelectedCharacter = CHARACTER_TAILS;
    p->character = gSelectedCharacter;
#endif

    p->qWorldX = Q(p->checkPointX);
    p->qWorldY = Q(p->checkPointY);
    p->heldInput = gPlayerControls.jump | gPlayerControls.attack;
    p->frameInput = gPlayerControls.jump | gPlayerControls.attack;
#elif (GAME == GAME_SA2)
    if ((gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) && (((p->qWorldX & p->qWorldY) + 1) != 0)) {
        p->qWorldX = Q(460);
    } else {
        p->qWorldX = Q(p->checkPointX);
    }
    p->qWorldY = Q(p->checkPointY);

    p->callback = Player_TouchGround;
    p->heldInput = gPlayerControls.jump | gPlayerControls.attack | gPlayerControls.trick;
    p->frameInput = gPlayerControls.jump | gPlayerControls.attack | gPlayerControls.trick;
#endif

    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->qSpeedGround = 0;
    p->moveState = MOVESTATE_IGNORE_INPUT;
    p->rotation = 0;
    PLAYERFN_SET_SHIFT_OFFSETS(p, 6, 14);
    p->SA2_LABEL(unk25) = 120;
    p->qSpindashAccel = 0;
    p->SA2_LABEL(unk29) = 0;
    p->SA2_LABEL(unk28) = 0;
    p->layer = PLAYER_LAYER__BACK;
#if (GAME == GAME_SA1)
    p->maxSpeed = Q(4.5);
#elif (GAME == GAME_SA2)
    p->maxSpeed = Q(9.0);
#endif

#if (GAME == GAME_SA1)
    p->acceleration = Q(8. / 256.);
    p->deceleration = Q(96. / 256.);
#elif (GAME == GAME_SA2)
    p->acceleration = Q(8. / 256.);
    p->deceleration = Q(64. / 256.);
#endif
    p->charState = CHARSTATE_IDLE;
#if (GAME == GAME_SA1)
    p->prevCharState = 0;
#elif (GAME == GAME_SA2)
    p->prevCharState = CHARSTATE_INVALID;
#endif
    p->anim = -1;
    p->variant = -1;
    p->timerInvulnerability = 0;
    p->timerInvincibility = 0;
    p->timerSpeedup = 0;
    p->timerConfusion = 0;
    p->stoodObj = NULL;
    p->itemEffect = PLAYER_ITEM_EFFECT__NONE;
    p->SA2_LABEL(unk2A) = 0;
    p->SA2_LABEL(unk72) = ZONE_TIME_TO_INT(0, 6);
    p->SA2_LABEL(unk7E) = 0;
    p->SA2_LABEL(unk7C) = 0;
    p->SA2_LABEL(unk82) = Q(1);
    p->SA2_LABEL(unk80) = Q(1);
    p->defeatScoreIndex = 0;
    p->SA2_LABEL(unk61) = 0;
    p->SA2_LABEL(unk62) = 0;
    p->SA2_LABEL(unk63) = 0;
    p->secondsUntilDrown = 30;
    p->framesUntilDrownCountDecrement = 60;
    p->SA2_LABEL(unk88) = 10;

#if (GAME == GAME_SA2)
    p->transition = 0;
    p->unk6E = 0;
    p->prevTransition = 0;
    p->isBoosting = FALSE;
    p->boostSpeed = 0;
    p->unk6C = FALSE;
    p->unk71 = 0;
    p->unk70 = FALSE;
    p->disableTrickTimer = 0;

    sub_8015750();
    sub_801561C();
    Player_HandleBoostThreshold(p);
#endif

    {
        u32 *ptr = (u32 *)(&p->SA2_LABEL(unk99)[0]);
        s32 i = 3;
#if (GAME == GAME_SA2) && !defined(NON_MATCHING)
        register u8 *u99_r6 asm("r6") = (void *)ptr;
#endif
        do {
            // @BUG: agbcc compiles this to an stmia instruction, which writes aligned words,
            //       so the written bytes are off by one, because SA2_LABEL(unk99) isn't word-aligned!
            //       >> writes unk98 - unk99[14]
            *ptr++ = 0;
        } while (i-- != 0);
#if (GAME == GAME_SA2) && !defined(NON_MATCHING)
        *u99_r6 = 0x7F;
#else
        p->SA2_LABEL(unk99)[0] = 0x7F;
#endif
    }

    if ((p->playerID == 0) && IS_SINGLE_PLAYER) {
        if (gCourseTime >= MAX_COURSE_TIME) {
            gCheckpointTime = 0;
            gCourseTime = 0;
            p->checkpointTime = 0;
        } else {
            gCheckpointTime = p->checkpointTime;
            gCourseTime = p->checkpointTime;
        }
    }

    switch (p->character) {
        case CHARACTER_SONIC: {
            p->w.sf.flags = 0;
            p->w.sf.SA2_LABEL(unkAE) = 0;
            p->w.sf.SA2_LABEL(unkB0) = 0;
        } break;

#if (GAME == GAME_SA2)
        case CHARACTER_CREAM: {
            p->w.cf.SA2_LABEL(unkAE) = 0;
            p->w.cf.flyingDuration = 0;
            p->w.cf.SA2_LABEL(unkB0) = 0;
        } break;
#endif

        case CHARACTER_TAILS: {
            p->w.tf.flags = 0;
            p->w.tf.flyingDuration = 0;
            p->w.tf.shift = 0;
        } break;

        case CHARACTER_KNUCKLES: {
            p->w.kf.flags = 0;
            p->w.kf.shift = 0;
            p->w.kf.SA2_LABEL(unkAE) = 0;
        } break;

        case CHARACTER_AMY: {
            p->w.af.flags = 0;
        } break;
    }
}

#if (GAME == GAME_SA2)
// Called anytime the player actively jumps, "autojumps" through touching an IA,
// touches a Boost Pad or a Rotating Handle, touches the ground, etc.
// TODO: Find a better name.
void Player_TransitionCancelFlyingAndBoost(Player *p)
{
    if (p->moveState & MOVESTATE_20000) {
        m4aSongNumStop(SE_281);
    }

    p->moveState &= ~(MOVESTATE_SOME_ATTACK | MOVESTATE_10000000 | MOVESTATE_1000000 | MOVESTATE_80000 | MOVESTATE_40000 | MOVESTATE_20000
                      | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_SPINDASH | MOVESTATE_200 | MOVESTATE_100 | MOVESTATE_20
                      | MOVESTATE_FLIP_WITH_MOVE_DIR);

    p->unk61 = 0;
    p->unk62 = 0;
    p->unk63 = 0;
    p->unk71 = 0;
    p->unk70 = FALSE;

    if (p->character == CHARACTER_TAILS) {
        m4aSongNumStop(SE_TAILS_PROPELLER_FLYING);
    }

    if (p->character == CHARACTER_CREAM) {
        m4aSongNumStop(SE_CREAM_FLYING);
    }

    if (p->character == CHARACTER_SONIC) {
        p->moveState &= ~MOVESTATE_BOOST_EFFECT_ON;
    }
}
#endif

// Very similar to SA2_LABEL(sub_8029BB8)
s32 SA2_LABEL(sub_802195C)(Player *p, u8 *p1, s32 *out)
{
    u8 dummy;
    s32 dummyInt;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    u32 mask;
    u8 anotherByte, anotherByte2;
    s32 r5, r1;
    s32 result;

    if (p1 == NULL)
        p1 = &dummy;
    if (out == NULL)
        out = &dummyInt;

    playerX2 = I(p->qWorldX) - (2 + p->spriteOffsetX);
    playerY2 = I(p->qWorldY) - (p->spriteOffsetY);

    mask = p->layer;
    if (p->qSpeedAirY < Q(3.0)) {
        mask |= 0x80;
    }

    r5 = SA2_LABEL(sub_801E4E4)(playerX2, playerY2, mask, -8, &anotherByte, SA2_LABEL(sub_801ED24));

    playerX = I(p->qWorldX) - (2 + p->spriteOffsetX);
    playerY = I(p->qWorldY) + (p->spriteOffsetY);

    mask = p->layer;
    if (p->qSpeedAirY < Q(3.0)) {
        mask |= 0x80;
    }

    r1 = SA2_LABEL(sub_801E4E4)(playerX, playerY, mask, -8, &anotherByte2, SA2_LABEL(sub_801ED24));

    if (r5 < r1) {
        result = r5;
        *p1 = anotherByte;
        *out = r1;
    } else {
        result = r1;
        *p1 = anotherByte2;
        *out = r5;
    }

    return result;
}

// Very similar to SA2_LABEL(sub_802195C)
s32 SA2_LABEL(sub_8021A34)(Player *p, u8 *p1, s32 *out)
{
    u8 dummy;
    s32 dummyInt;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    u32 mask;
    u8 anotherByte, anotherByte2;
    s32 r5, r1;
    s32 result;

    if (p1 == NULL)
        p1 = &dummy;
    if (out == NULL)
        out = &dummyInt;

    playerX2 = I(p->qWorldX) + (2 + p->spriteOffsetX);
    playerY2 = I(p->qWorldY) - (p->spriteOffsetY);

    mask = p->layer;
    if (p->qSpeedAirY < Q(3.0)) {
        mask |= 0x80;
    }

    r5 = SA2_LABEL(sub_801E4E4)(playerX2, playerY2, mask, +8, &anotherByte, SA2_LABEL(sub_801ED24));

    playerX = I(p->qWorldX) + (2 + p->spriteOffsetX);
    playerY = I(p->qWorldY) + (p->spriteOffsetY);

    mask = p->layer;
    if (p->qSpeedAirY < Q(3.0)) {
        mask |= 0x80;
    }

    r1 = SA2_LABEL(sub_801E4E4)(playerX, playerY, mask, +8, &anotherByte2, SA2_LABEL(sub_801ED24));

    if (r5 < r1) {
        result = r5;
        *p1 = anotherByte;
        *out = r1;
    } else {
        result = r1;
        *p1 = anotherByte2;
        *out = r5;
    }

    return result;
}

// Very similar to SA2_LABEL(sub_802195C)
s32 SA2_LABEL(sub_8021B08)(Player *p, u8 *p1, s32 *out)
{
    u8 dummy;
    s32 dummyInt;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    u32 mask;
    u8 anotherByte, anotherByte2;
    s32 r5, r1;
    s32 result;

    if (p1 == NULL)
        p1 = &dummy;
    if (out == NULL)
        out = &dummyInt;

    playerY2 = I(p->qWorldY) - (p->spriteOffsetY);
    playerX2 = I(p->qWorldX) - (2 + p->spriteOffsetX);

    mask = p->layer;
    if (p->qSpeedAirY < Q(3.0)) {
        mask |= 0x80;
    }

    r5 = SA2_LABEL(sub_801E4E4)(playerY2, playerX2, mask, -8, &anotherByte, SA2_LABEL(sub_801EE64));

    playerY = I(p->qWorldY) - (p->spriteOffsetY);
    playerX = I(p->qWorldX) + (2 + p->spriteOffsetX);

    mask = p->layer;
    if (p->qSpeedAirY < Q(3.0)) {
        mask |= 0x80;
    }

    r1 = SA2_LABEL(sub_801E4E4)(playerY, playerX, mask, -8, &anotherByte2, SA2_LABEL(sub_801EE64));

    if (r5 < r1) {
        result = r5;
        *p1 = anotherByte;
        *out = r1;
    } else {
        result = r1;
        *p1 = anotherByte2;
        *out = r5;
    }

    return result;
}

// NOTE: Not aligned with SA2!
void SA2_LABEL(sub_8021BE0)(Player *p)
{
    if (!(p->moveState & MOVESTATE_200)) {
        if (!(p->moveState & MOVESTATE_800000)) {
#if (GAME == GAME_SA2)
            PLAYERFN_SET(Player_TouchGround);
#endif
            p->charState = 4;
        }

        if (p->moveState & MOVESTATE_4) {
            p->moveState &= ~MOVESTATE_4;
            SA2_LABEL(sub_8023B5C)(p, 14);
        }
        PLAYERFN_SET_SHIFT_OFFSETS(p, 6, 14);
    }

    p->moveState &= ~(MOVESTATE_20);
    p->moveState &= ~(MOVESTATE_100);
    p->moveState &= ~(MOVESTATE_SPINDASH);

    p->SA2_LABEL(unk61) = 0;
    p->SA2_LABEL(unk62) = 0;
    p->SA2_LABEL(unk63) = 0;

    p->moveState &= ~(MOVESTATE_8000);

    if (p->character == CHARACTER_TAILS) {
        m4aSongNumStop(SE_TAILS_PROPELLER_FLYING);
    }

    if (p->character == CHARACTER_AMY) {
        p->moveState &= ~(MOVESTATE_4000000 | MOVESTATE_2000000);
    }

    p->defeatScoreIndex = 0;

#if (GAME == GAME_SA1)
    Player_804726C(p);
    p->moveState &= ~(MOVESTATE_FLIP_WITH_MOVE_DIR | MOVESTATE_IN_AIR);
#endif
}

void SA2_LABEL(sub_8021C4C)(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    s32 *ptr;

    u32 mask;
    u32 mask2 = p->layer;

    playerX = I(p->qWorldX) - (3 + p->spriteOffsetX);
    playerY = I(p->qWorldY);

    mask = mask2;
    if (p->qSpeedAirY < Q(3.0)) {
        mask = 0x80;
        mask |= mask2;
    }

    result = SA2_LABEL(sub_801E4E4)(playerX, playerY, mask, -8, 0, SA2_LABEL(sub_801ED24));

    if (result <= 0) {
        p->qWorldX -= Q(result);
        p->qSpeedAirX = 0;
    }

    playerX2 = I(p->qWorldX) + (3 + p->spriteOffsetX);
    playerY2 = I(p->qWorldY);

    mask = mask2;
    if (p->qSpeedAirY < Q(3.0)) {
        mask |= 0x80;
    }

    result = SA2_LABEL(sub_801E4E4)(playerX2, playerY2, mask, +8, 0, SA2_LABEL(sub_801ED24));

    if (result <= 0) {
        p->qWorldX += Q(result);
        p->qSpeedAirX = 0;
    }

    ptr = &fnOut;
    if (GRAVITY_IS_INVERTED) {
        result = SA2_LABEL(sub_8029AC0)(p, &rotation, ptr);
    } else {
        result = SA2_LABEL(sub_8029B0C)(p, &rotation, ptr);
    }

    if (result < 0) {
        s8 rotCopy;
        s32 r1 = I(p->qSpeedAirY);
        r1 += 6;
        r1 = -r1;

        if ((result >= r1) || (fnOut >= r1)) {
            s32 airY;
            p->rotation = rotation;

            if (GRAVITY_IS_INVERTED) {
                result = -result;
            }

            p->qWorldY += result << 8;

            SA2_LABEL(sub_8021BE0)(p);

            if ((rotation + 32) & 0x40) {
                p->qSpeedAirX = 0;

                if (p->qSpeedAirY > Q(11.8125)) {
                    p->qSpeedAirY = Q(11.8125);
                }
            } else if (!((rotation + 16) & 0x20)) {
                p->qSpeedAirY = 0;
                p->qSpeedGround = p->qSpeedAirX;
                return;
            } else {
                p->qSpeedAirY >>= 1;
            }

            airY = p->qSpeedAirY;
            if (airY < 0) {
                airY = -airY;
            }
            p->qSpeedGround = airY;

            rotCopy = rotation;
            if (rotCopy < 0) {
                p->qSpeedGround = -airY;
            }
        }
    }
}

void SA2_LABEL(sub_8021DB8)(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    s32 *ptr;

    u32 mask;
    u32 mask2 = p->layer;

    playerX = I(p->qWorldX) - (3 + p->spriteOffsetX);
    playerY = I(p->qWorldY);

    mask = mask2;
    if (p->qSpeedAirY < Q(3.0)) {
        mask = 0x80;
        mask |= mask2;
    }

    result = SA2_LABEL(sub_801E4E4)(playerX, playerY, mask, -8, 0, SA2_LABEL(sub_801ED24));

    if (result <= 0) {
        p->qWorldX -= Q(result);
        p->qSpeedAirX = 0;
    }

    playerX2 = I(p->qWorldX) + (3 + p->spriteOffsetX);
    playerY2 = I(p->qWorldY);

    mask = mask2;
    if (p->qSpeedAirY < Q(3.0)) {
        mask |= 0x80;
    }

    result = SA2_LABEL(sub_801E4E4)(playerX2, playerY2, mask, +8, 0, SA2_LABEL(sub_801ED24));

    if (result <= 0) {
        p->qWorldX += Q(result);
        p->qSpeedAirX = 0;
    }

    ptr = &fnOut;
    if (GRAVITY_IS_INVERTED) {
        result = SA2_LABEL(sub_8029B0C)(p, &rotation, ptr);
    } else {
        result = SA2_LABEL(sub_8029AC0)(p, &rotation, ptr);
    }

    if (result <= 0) {
        if (GRAVITY_IS_INVERTED) {
            result = -result;
        }

        p->qWorldY -= result << 8;

        if (((rotation + 32) & 0x40)) {
            s8 *pt = (s8 *)&rotation;
            if ((*pt - 0x40) > 0) {
                s32 speed;
                p->rotation = rotation;

                SA2_LABEL(sub_8021BE0)(p);

                speed = p->qSpeedAirY;
                if (speed < 0) {
                    speed = -speed;
                }
                p->qSpeedGround = speed;
                return;
            }
        }
        p->qSpeedAirY = 0;
    }
}

// NOTE: Not aligned with SA2!
void SA2_LABEL(sub_8021EE4)(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    s32 *ptr;
    u16 gravity;

    u32 mask;
    u32 mask2 = p->layer;

    gravity = GRAVITY_IS_INVERTED;
    if (!gravity) {
        playerX = I(p->qWorldX) - (3 + p->spriteOffsetX);
        playerY = I(p->qWorldY);

        mask = mask2;
        if (p->qSpeedAirY < Q(3.0)) {
            mask |= 0x80;
        }
        result = SA2_LABEL(sub_801E4E4)(playerX, playerY, mask, -8, NULL, SA2_LABEL(sub_801ED24));
    } else {
        playerX2 = I(p->qWorldX) - (3 + p->spriteOffsetX);
        playerY2 = I(p->qWorldY);

        result = SA2_LABEL(sub_801E4E4)(playerX2, playerY2, mask2, -8, NULL, SA2_LABEL(sub_801ED24));
    }

    if (result <= 0) {
        p->qWorldX -= Q(result);
        p->qSpeedAirX = 0;
        p->qSpeedGround = p->qSpeedAirY;
    }

    ptr = &fnOut;
    if (GRAVITY_IS_INVERTED) {
        result = SA2_LABEL(sub_8029B0C)(p, &rotation, ptr);
    } else {
        result = SA2_LABEL(sub_8029AC0)(p, &rotation, ptr);
    }

    if (result <= 0) {
        if (GRAVITY_IS_INVERTED) {
            result = -result;
        }

        p->qWorldY -= Q(result);

        if (p->qSpeedAirY < 0) {
            p->qSpeedAirY = 0;
        }
    } else if (p->qSpeedAirY >= 0) {
        if (GRAVITY_IS_INVERTED) {
            result = SA2_LABEL(sub_8029AC0)(p, &rotation, &fnOut);
        } else {
            result = SA2_LABEL(sub_8029B0C)(p, &rotation, &fnOut);
        }

        if (result <= 0) {
            if (GRAVITY_IS_INVERTED) {
                result = -result;
            }

            p->qWorldY += Q(result);

            p->rotation = rotation;
            SA2_LABEL(sub_8021BE0)(p);

            p->qSpeedAirY = 0;
            p->qSpeedGround = p->qSpeedAirX;
        }
    }
}

// NOTE: Not aligned with SA2!
void SA2_LABEL(sub_802203C)(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    s32 *ptr;
    u16 gravity;

    u32 mask;
    u32 mask2 = p->layer;

    gravity = GRAVITY_IS_INVERTED;
    if (!gravity) {
        playerX = I(p->qWorldX) + (3 + p->spriteOffsetX);
        playerY = I(p->qWorldY);

        mask = mask2;
        if (p->qSpeedAirY < Q(3.0)) {
            mask |= 0x80;
        }

        result = SA2_LABEL(sub_801E4E4)(playerX, playerY, mask, +8, NULL, SA2_LABEL(sub_801ED24));
    } else {
        playerX2 = I(p->qWorldX) + (3 + p->spriteOffsetX);
        playerY2 = I(p->qWorldY);

        result = SA2_LABEL(sub_801E4E4)(playerX2, playerY2, mask2, +8, NULL, SA2_LABEL(sub_801ED24));
    }

    if (result <= 0) {
        p->qWorldX += Q(result);
        p->qSpeedAirX = 0;
        p->qSpeedGround = p->qSpeedAirY;
    }

    ptr = &fnOut;
    if (GRAVITY_IS_INVERTED) {
        result = SA2_LABEL(sub_8029B0C)(p, &rotation, ptr);
    } else {
        result = SA2_LABEL(sub_8029AC0)(p, &rotation, ptr);
    }

    if (result <= 0) {
        if (GRAVITY_IS_INVERTED) {
            result = -result;
        }

        p->qWorldY -= Q(result);

        if (p->qSpeedAirY < 0) {
            p->qSpeedAirY = 0;
        }
    } else if (p->qSpeedAirY >= 0) {
        if (GRAVITY_IS_INVERTED) {
            result = SA2_LABEL(sub_8029AC0)(p, &rotation, &fnOut);
        } else {
            result = SA2_LABEL(sub_8029B0C)(p, &rotation, &fnOut);
        }

        if (result <= 0) {
            if (GRAVITY_IS_INVERTED) {
                result = -result;
            }

            p->qWorldY += Q(result);

            p->rotation = rotation;
            SA2_LABEL(sub_8021BE0)(p);

            p->qSpeedAirY = 0;
            p->qSpeedGround = p->qSpeedAirX;
        }
    }
}

void SA2_LABEL(sub_8022190)(Player *p)
{
    s16 airY = p->qSpeedAirY;
    u8 arcResult = (GRAVITY_IS_INVERTED) ? 0x80 : 0;
    s16 airX = p->qSpeedAirX;

    if (airX || airY) {
        arcResult = I(ArcTan2(airX, airY));
    }

    arcResult = (arcResult - 0x20) & 0xC0;

    switch (arcResult >> 6) {
        case 0: {
            SA2_LABEL(sub_8021C4C)(p);
        } break;

        case 2: {
            SA2_LABEL(sub_8021DB8)(p);
        } break;

        case 1: {
            SA2_LABEL(sub_8021EE4)(p);
        } break;

        case 3: {
            SA2_LABEL(sub_802203C)(p);
        } break;
    }
}

#if (GAME == GAME_SA2)
void sub_8022218(Player *p)
{
    u8 rotation;
    s32 sp04;
    s32 res;

    // u8 *pRot = &rotation;
    s32 *pSp04 = &sp04;

    if (GRAVITY_IS_INVERTED) {
        res = sub_8029AC0(p, &rotation, pSp04);
    } else {
        res = sub_8029B0C(p, &rotation, pSp04);
    }

    if (res <= 0) {
        if (GRAVITY_IS_INVERTED) {
            res = -res;
        }

        p->qWorldY += Q(res);
        p->rotation = rotation;
        sub_8021BE0(p);

        p->qSpeedAirY = 0;
        p->qSpeedGround = p->qSpeedAirX;
    }
}

void SA2_LABEL(sub_8022284)(Player *p)
{
    u8 rotation;
    s32 sp04;
    s32 res;
    s32 airY;

    // u8 *pRot = &rotation;
    s32 *pSp04 = &sp04;

    if (GRAVITY_IS_INVERTED) {
        res = SA2_LABEL(sub_8029B0C)(p, &rotation, pSp04);
    } else {
        res = SA2_LABEL(sub_8029AC0)(p, &rotation, pSp04);
    }

    if (res <= 0) {
        if (GRAVITY_IS_INVERTED) {
            res = -res;
        }

        p->qWorldY -= Q(res);
        p->rotation = rotation;
        SA2_LABEL(sub_8021BE0)(p);

        airY = p->qSpeedAirY;
        if (airY < 0) {
            airY = -airY;
        }
        p->qSpeedGround = airY;

        if ((s8)rotation >= 0) {
            p->qSpeedGround = -airY;
        }

        if (p->unk6E) {
            p->moveState ^= MOVESTATE_FACING_LEFT;
        }
    }
}
#endif

void SA2_LABEL(sub_8022318)(Player *p)
{
    s32 offsetY;

    if (!(p->moveState & MOVESTATE_4)) {
        p->spriteOffsetX = 6;
        p->spriteOffsetY = 14;
    } else {
        p->moveState &= ~MOVESTATE_4;
        p->charState = CHARSTATE_IDLE;

        offsetY = p->spriteOffsetY - 14;

        if (GRAVITY_IS_INVERTED) {
            offsetY = -offsetY;
        }

        if (((p->rotation + 0x40) << 24) <= 0) {
            offsetY = -offsetY;
        }

        p->spriteOffsetX = 6;
        p->spriteOffsetY = 14;

        p->qWorldY += Q(offsetY);
    }

    p->moveState &= ~MOVESTATE_IN_AIR;
    p->moveState &= ~MOVESTATE_20;
    p->moveState &= ~MOVESTATE_FLIP_WITH_MOVE_DIR;
    p->moveState &= ~MOVESTATE_100;

    p->defeatScoreIndex = 0;

#if (GAME == GAME_SA1)
    p->moveState &= ~MOVESTATE_8000;
#endif

    p->SA2_LABEL(unk25) = 120;
    p->SA2_LABEL(unk61) = 0;

    if (p->charState >= CHARSTATE_KNUCKLES_GLIDE) {
        p->charState = CHARSTATE_IDLE;
    }
}

void SA2_LABEL(sub_80223BC)(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    s32 *ptr;

    u32 mask;
    u32 mask2 = p->layer;

    playerX = I(p->qWorldX) - (3 + p->spriteOffsetX);
    playerY = I(p->qWorldY);

    mask = mask2;
    if (p->qSpeedAirY < Q(3.0)) {
        mask = 0x80;
        mask |= mask2;
    }
    result = SA2_LABEL(sub_801E4E4)(playerX, playerY, mask, -8, NULL, SA2_LABEL(sub_801ED24));

    if (result <= 0) {
        p->qWorldX -= Q(result);
        p->qSpeedAirX = 0;
        // TODO: Find out which character(s) call this, to use the appropriate 'flags'
        p->w.sf.flags |= 0x20;
    }

    playerX2 = I(p->qWorldX) + (3 + p->spriteOffsetX);
    playerY2 = I(p->qWorldY);

    mask = mask2;
    if (p->qSpeedAirY < Q(3.0)) {
        mask |= 0x80;
    }
    result = SA2_LABEL(sub_801E4E4)(playerX2, playerY2, mask, +8, NULL, SA2_LABEL(sub_801ED24));

    if (result <= 0) {
        p->qWorldX += Q(result);
        p->qSpeedAirX = 0;
        p->w.sf.flags |= 0x20;
    }

    ptr = &fnOut;
    if (GRAVITY_IS_INVERTED) {
        result = SA2_LABEL(sub_8029AC0)(p, &rotation, ptr);
    } else {
        result = SA2_LABEL(sub_8029B0C)(p, &rotation, ptr);
    }

    if (result <= 0) {
        if (GRAVITY_IS_INVERTED) {
            result = -result;
        }

        p->qWorldY += Q(result);

        p->rotation = rotation;
        p->qSpeedAirY = 0;
        p->w.sf.flags &= ~0x2;
    }
}

// Similar to SA2_LABEL(sub_80223BC)
void SA2_LABEL(sub_80224DC)(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    s32 *ptr;

    u32 mask;
    u32 mask2 = p->layer;

    playerX = I(p->qWorldX) - (3 + p->spriteOffsetX);
    playerY = I(p->qWorldY);

    mask = mask2;
    if (p->qSpeedAirY < Q(3.0)) {
        mask = 0x80;
        mask |= mask2;
    }
    result = SA2_LABEL(sub_801E4E4)(playerX, playerY, mask, -8, NULL, SA2_LABEL(sub_801ED24));

    if (result <= 0) {
        p->qWorldX -= Q(result);
        p->qSpeedAirX = 0;
        // TODO: Find out which character(s) call this, to use the appropriate 'flags'
        p->w.sf.flags |= 0x20;
    }

    playerX2 = I(p->qWorldX) + (3 + p->spriteOffsetX);
    playerY2 = I(p->qWorldY);

    mask = mask2;
    if (p->qSpeedAirY < Q(3.0)) {
        mask |= 0x80;
    }
    result = SA2_LABEL(sub_801E4E4)(playerX2, playerY2, mask, +8, NULL, SA2_LABEL(sub_801ED24));

    if (result <= 0) {
        p->qWorldX += Q(result);
        p->qSpeedAirX = 0;
        p->w.sf.flags |= 0x20;
    }

    ptr = &fnOut;
    if (GRAVITY_IS_INVERTED) {
        result = SA2_LABEL(sub_8029B0C)(p, &rotation, ptr);
    } else {
        result = SA2_LABEL(sub_8029AC0)(p, &rotation, ptr);
    }

    if (result <= 0) {
        if (GRAVITY_IS_INVERTED) {
            result = -result;
        }

        p->qWorldY -= Q(result);

        p->qSpeedAirY = 0;
    }
}

void SA2_LABEL(sub_80225E8)(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 playerX, playerY;
    s32 *ptr;
    u16 gravity;

    u32 mask;
    u8 *mask2 = &p->layer;

    playerX = I(p->qWorldX) - (2 + p->spriteOffsetX);
    playerY = I(p->qWorldY);

    mask = *mask2;
    if (p->qSpeedAirY < Q(3.0)) {
        mask |= 0x80;
    }
    result = SA2_LABEL(sub_801E4E4)(playerX, playerY, mask, -8, NULL, SA2_LABEL(sub_801ED24));

    if (result <= 0) {
        p->qWorldX -= Q(result);
        p->qSpeedAirX = 0;
        // TODO: Find out which character(s) call this, to use the appropriate 'flags'
        p->w.sf.flags |= 0x20;
    }

    gravity = GRAVITY_IS_INVERTED;
    ptr = &fnOut;
    if (gravity) {
        result = SA2_LABEL(sub_8029B0C)(p, &rotation, ptr);
    } else {
        result = SA2_LABEL(sub_8029AC0)(p, &rotation, ptr);
    }

    if (result <= 0) {
        if (GRAVITY_IS_INVERTED) {
            result = -result;
        }
        p->qWorldY -= Q(result);

        if (p->qSpeedAirY < 0) {
            p->qSpeedAirY = 0;
        }
    } else if (p->qSpeedAirY >= 0) {

        if (GRAVITY_IS_INVERTED) {
            result = SA2_LABEL(sub_8029AC0)(p, &rotation, ptr);
        } else {
            result = SA2_LABEL(sub_8029B0C)(p, &rotation, ptr);
        }

        if (result <= 0) {
            if (GRAVITY_IS_INVERTED) {
                result = -result;
            }

            p->qWorldY += Q(result);

            p->rotation = rotation;
            p->qSpeedAirY = 0;
            p->w.sf.flags &= ~0x2;
        }
    }
}

// Similar to SA2_LABEL(sub_80225E8)
void SA2_LABEL(sub_8022710)(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 playerX, playerY;
    s32 *ptr;
    u16 gravity;

    u32 mask;
    u8 *mask2 = &p->layer;

    playerX = I(p->qWorldX) + (2 + p->spriteOffsetX);
    playerY = I(p->qWorldY);

    mask = *mask2;
    if (p->qSpeedAirY < Q(3.0)) {
        mask |= 0x80;
    }
    result = SA2_LABEL(sub_801E4E4)(playerX, playerY, mask, +8, NULL, SA2_LABEL(sub_801ED24));

    if (result <= 0) {
        p->qWorldX += Q(result);
        p->qSpeedAirX = 0;
        // TODO: Find out which character(s) call this, to use the appropriate 'flags'
        p->w.sf.flags |= 0x20;
    }

    gravity = GRAVITY_IS_INVERTED;
    ptr = &fnOut;
    if (gravity) {
        result = SA2_LABEL(sub_8029B0C)(p, &rotation, ptr);
    } else {
        result = SA2_LABEL(sub_8029AC0)(p, &rotation, ptr);
    }

    if (result <= 0) {
        if (GRAVITY_IS_INVERTED) {
            result = -result;
        }
        p->qWorldY -= Q(result);

        if (p->qSpeedAirY < 0) {
            p->qSpeedAirY = 0;
        }
    } else if (p->qSpeedAirY >= 0) {

        if (GRAVITY_IS_INVERTED) {
            result = SA2_LABEL(sub_8029AC0)(p, &rotation, ptr);
        } else {
            result = SA2_LABEL(sub_8029B0C)(p, &rotation, ptr);
        }

        if (result <= 0) {
            if (GRAVITY_IS_INVERTED) {
                result = -result;
            }

            p->qWorldY += Q(result);

            p->rotation = rotation;
            p->qSpeedAirY = 0;
            p->w.sf.flags &= ~0x2;
        }
    }
}

void SA2_LABEL(sub_8022838)(Player *p)
{
    s16 airX = p->qSpeedAirX;
    s16 airY = p->qSpeedAirY;
    u8 arcResult = 0;

    if (p->moveState & MOVESTATE_STOOD_ON_OBJ) {
        p->w.sf.flags &= ~0x2;
        p->SA2_LABEL(unk29) = 0;
        p->SA2_LABEL(unk28) = 0;
    } else {
        arcResult = I(ArcTan2(airX, airY));

        arcResult = (arcResult - 0x20) & 0xC0;

        switch (arcResult >> 6) {
            case 0: {
                SA2_LABEL(sub_80223BC)(p);
            } break;

            case 2: {
                SA2_LABEL(sub_80224DC)(p);
            } break;

            case 1: {
                SA2_LABEL(sub_80225E8)(p);
            } break;

            case 3: {
                SA2_LABEL(sub_8022710)(p);
            } break;
        }
    }
}

// NOTE: Not aligned with SA2!
void SA2_LABEL(sub_80228C0)(Player *p)
{
    s32 val;
#if (GAME == GAME_SA1)
#endif
    u8 *p29;
    s32 resultB;
#ifndef NON_MATCHING
    register s32 resultA asm("sl");
    register u32 r1 asm("r1");
    register u32 r0 asm("r0");
    register s32 playerX asm("r4") = p->qWorldX;
    register s32 playerY asm("r9") = p->qWorldY;
    register s32 rot asm("r6") = p->rotation;
#else
    s32 resultA;
    u32 r1;
    u32 r0;
    s32 playerX = p->qWorldX;
    s32 playerY = p->qWorldY;
    s32 rot = p->rotation;
#endif
    u32 mask = p->layer;
    s32 py = I(playerY);

    resultA = SA2_LABEL(sub_801E4E4)(py + p->spriteOffsetY, (playerX = I(playerX)) - (2 + p->spriteOffsetX), mask, 8, &p->SA2_LABEL(unk28),
                                     SA2_LABEL(sub_801EE64));

    py = py + (p->spriteOffsetY);
    playerX += 2;
    playerX += p->spriteOffsetX;
    p29 = &p->SA2_LABEL(unk29);
    resultB = SA2_LABEL(sub_801E4E4)(py, playerX, mask, 8, p29, SA2_LABEL(sub_801EE64));

    val = resultB;
    if (resultB > resultA) {
        val = resultA;
    }

    if (val != 0) {
        if (val < 0) {
            if (val < -11) {
                return;
            }

            playerY += Q(val);

            if (resultA < resultB) {
                r0 = p->SA2_LABEL(unk28);
            } else {
                r0 = p->SA2_LABEL(unk29);
            }
            rot = r0;
        } else /* val >= 0 */ {
            s32 airX = p->qSpeedAirX;

            if (airX < 0) {
                airX = -airX;
            }

            airX = I(airX);
            airX += 3;

            if (airX > 11)
                airX = 11;

            if (val <= airX) {
                playerY += Q(val);

                if (resultA < resultB) {
                    r0 = p->SA2_LABEL(unk28);
                } else {
                    r0 = *p29;
                }
                rot = r0;
            } else {
                if (p->moveState & MOVESTATE_800) {
                    playerY += Q(val);
                } else {
                    p->moveState |= MOVESTATE_IN_AIR;
                    p->moveState &= ~MOVESTATE_20;
                    return;
                }
            }
        }
    } else {
        if (resultA < resultB) {
            r0 = p->SA2_LABEL(unk28);
        } else {
            r0 = p->SA2_LABEL(unk29);
        }
        rot = r0;
    }

    p->qWorldY = playerY;

    if (!(rot & 0x1)) {
        vu8 *pRot = &p->rotation;
        *pRot = rot;

        if (GRAVITY_IS_INVERTED) {
            // TODO: CLEANUP (effectively *pRot = -r1)
            rot = *pRot;
            asm("" ::"r"(rot));
            r0 = rot;
            r0 += 0x40;
            r0 <<= 24;
            r0 = -r0;
            rot = r0 >> 24;
            asm("" ::"r"(r0), "r"(rot));
            r0 = rot;
            r0 -= 0x40;

            *pRot = r0;
        }
    }
}

// Similar to sub_80228C0, sub_8022B18
void SA2_LABEL(sub_80229EC)(Player *p)
{
    s32 val;
    u8 *p29;
    s32 resultB;
    s32 playerY;
    s32 py;
#ifndef NON_MATCHING
    register s32 resultA asm("r6");
    register u32 r1 asm("r1");
    register u32 r0 asm("r0");
    register s32 playerX asm("r4");
    register u32 mask asm("r9");
#else
    s32 resultA;
    u32 r1;
    u32 r0;
    s32 playerX;
    u32 mask;
#endif
    playerX = p->qWorldX;
    playerY = (p->qWorldY);
    mask = p->layer;
    py = I(playerY);

    resultA = SA2_LABEL(sub_801E4E4)(py - p->spriteOffsetY, (playerX = I(playerX)) + (2 + p->spriteOffsetX), mask, -8, &p->SA2_LABEL(unk28),
                                     SA2_LABEL(sub_801EE64));

    py = py - (p->spriteOffsetY);
    playerX -= 2;
    playerX -= p->spriteOffsetX;
    p29 = &p->SA2_LABEL(unk29);
    resultB = SA2_LABEL(sub_801E4E4)(py, playerX, mask, -8, p29, SA2_LABEL(sub_801EE64));

    val = resultB;
    if (resultB > resultA) {
        val = resultA;
    }

    if (val != 0) {
        if (val < 0) {
            if (val < -11) {
                return;
            }

            playerY -= Q(val);

            if (resultA < resultB) {
                r0 = p->SA2_LABEL(unk28);
            } else {
                r0 = *p29;
            }
        } else /* val > 0 */ {
            s32 airX = p->qSpeedAirX;

            if (airX < 0) {
                airX = -airX;
            }

            airX = I(airX);
            airX += 3;

            if (airX > 11)
                airX = 11;

            if (val <= airX) {
                playerY -= Q(val);

                if (resultA < resultB) {
                    r0 = p->SA2_LABEL(unk28);
                } else {
                    r0 = *p29;
                }
            } else {
                p->moveState |= MOVESTATE_IN_AIR;
                p->moveState &= ~MOVESTATE_20;
                return;
            }
        }
    } else {
        if (resultA < resultB) {
            r0 = p->SA2_LABEL(unk28);
        } else {
            r0 = p->SA2_LABEL(unk29);
        }
    }

    r1 = r0;
    p->qWorldY = playerY;

    if (!(r1 & 0x1)) {
        vu8 *pRot = &p->rotation;
        *pRot = r1;

        if (GRAVITY_IS_INVERTED) {
            // TODO: CLEANUP (effectively *pRot = 128-r1)
            r1 = *pRot;
            asm("" ::"r"(r1));
            r0 = r1;
            r0 += 0x40;
            r0 <<= 24;
            r0 = -r0;
            r1 = r0 >> 24;
            asm("" ::"r"(r0), "r"(r1));
            r0 = r1;
            r0 -= 0x40;

            *pRot = r0;
        }
    }
}

// Similar to sub_80228C0, sub_80229EC
void SA2_LABEL(sub_8022B18)(Player *p)
{
    s32 val;
    u8 *p29;
    s32 resultB;
    s32 playerX;
    s32 py;
#ifndef NON_MATCHING
    register s32 resultA asm("r6");
    register u32 r1 asm("r1");
    register u32 r0 asm("r0");
    register s32 playerY asm("r4");
    register u32 mask asm("r9");
#else
    s32 resultA;
    u32 r1;
    u32 r0;
    s32 playerY;
    u32 mask;
#endif
    playerX = p->qWorldX;
    playerY = (p->qWorldY);
    mask = p->layer;
    py = I(playerX);

    resultA = SA2_LABEL(sub_801E4E4)(py - p->spriteOffsetY, (playerY = I(playerY)) - (2 + p->spriteOffsetX), mask, -8, &p->SA2_LABEL(unk28),
                                     SA2_LABEL(sub_801ED24));

    py = py - (p->spriteOffsetY);
    playerY += 2;
    playerY += p->spriteOffsetX;
    p29 = &p->SA2_LABEL(unk29);
    resultB = SA2_LABEL(sub_801E4E4)(py, playerY, mask, -8, p29, SA2_LABEL(sub_801ED24));

    val = resultB;
    if (resultB > resultA) {
        val = resultA;
    }

    if (val != 0) {
        if (val < 0) {
            if (val < -11) {
                return;
            }

            playerX -= Q(val);

            if (resultA < resultB) {
                r0 = p->SA2_LABEL(unk28);
            } else {
                r0 = *p29;
            }
        } else /* val > 0 */ {
            s32 airY = p->qSpeedAirY;

            if (airY < 0) {
                airY = -airY;
            }

            airY = I(airY);
            airY += 3;

            if (airY > 11)
                airY = 11;

            if (val <= airY) {
                playerX -= Q(val);

                if (resultA < resultB) {
                    r0 = p->SA2_LABEL(unk28);
                } else {
                    r0 = *p29;
                }
            } else {
                p->moveState |= MOVESTATE_IN_AIR;
                p->moveState &= ~MOVESTATE_20;
                return;
            }
        }
    } else {
        if (resultA < resultB) {
            r0 = p->SA2_LABEL(unk28);
        } else {
            r0 = p->SA2_LABEL(unk29);
        }
    }

    r1 = r0;
    p->qWorldX = playerX;

    if (!(r1 & 0x1)) {
        vu8 *pRot = &p->rotation;
        *pRot = r1;

        if (GRAVITY_IS_INVERTED) {
            // TODO: CLEANUP (effectively *pRot = 128-r1)
            r1 = *pRot;
            asm("" ::"r"(r1));
            r0 = r1;
            r0 += 0x40;
            r0 <<= 24;
            r0 = -r0;
            r1 = r0 >> 24;
            asm("" ::"r"(r0), "r"(r1));
            r0 = r1;
            r0 -= 0x40;

            *pRot = r0;
        }
    }
}

// Similar to sub_80228C0, sub_80229EC, sub_8022B18
void SA2_LABEL(sub_8022C44)(Player *p)
{
    s32 val;
    s32 resultB;
    s32 playerX;
    s32 py;
    s32 resultA;

#ifndef NON_MATCHING
    register u32 r1 asm("r1");
    register u32 r0 asm("r0");
    register s32 playerY asm("r4");
    register u32 mask asm("r8");
#else
    u32 r1;
    u32 r0;
    s32 playerY;
    u32 mask;
#endif
    playerX = p->qWorldX;
    playerY = (p->qWorldY);
    mask = p->layer;
    py = I(playerX);

    resultA = SA2_LABEL(sub_801E4E4)(py + p->spriteOffsetY, (playerY = I(playerY)) + (2 + p->spriteOffsetX), mask, +8, &p->SA2_LABEL(unk28),
                                     SA2_LABEL(sub_801ED24));

    py = py + (p->spriteOffsetY);
    playerY -= 2;
    playerY -= p->spriteOffsetX;
    resultB = SA2_LABEL(sub_801E4E4)(py, playerY, mask, +8, &p->SA2_LABEL(unk29), SA2_LABEL(sub_801ED24));

    val = resultB;
    if (resultB > resultA) {
        val = resultA;
    }

    if (val != 0) {
        if (val < 0) {
            if (val < -11) {
                return;
            }

            playerX += Q(val);

            if (resultA < resultB) {
                r0 = p->SA2_LABEL(unk28);
            } else {
                r0 = p->SA2_LABEL(unk29);
            }
        } else /* val > 0 */ {
            s32 airY = p->qSpeedAirY;

            if (airY < 0) {
                airY = -airY;
            }

            airY = I(airY);
            airY += 3;

            if (airY > 11)
                airY = 11;

            if (val <= airY) {
                playerX += Q(val);

                if (resultA < resultB) {
                    r0 = p->SA2_LABEL(unk28);
                } else {
                    r0 = p->SA2_LABEL(unk29);
                }
            } else {
                p->moveState |= MOVESTATE_IN_AIR;
                p->moveState &= ~MOVESTATE_20;
                return;
            }
        }
    } else {
        if (resultA < resultB) {
            r0 = p->SA2_LABEL(unk28);
        } else {
            r0 = p->SA2_LABEL(unk29);
        }
    }

    r1 = r0;
    p->qWorldX = playerX;

    if (!(r1 & 0x1)) {
        vu8 *pRot = &p->rotation;
        *pRot = r1;

        if (GRAVITY_IS_INVERTED) {
#ifndef NON_MATCHING
            r1 = *pRot;
            asm("" ::"r"(r1));
            r0 = r1;
            r0 += 0x40;
            r0 <<= 24;
            r0 = -r0;
            r1 = r0 >> 24;
            asm("" ::"r"(r0), "r"(r1));
            r0 = r1;
            r0 -= 0x40;

            *pRot = r0;
#else
            *pRot = 128 - r1;
#endif
        }
    }
}

void SA2_LABEL(sub_8022D6C)(Player *p)
{
#if (GAME == GAME_SA1) && !defined(BUG_FIX)
    u8 r1;
#else
    u8 r1 = 0;
#endif
    if (p->moveState & MOVESTATE_STOOD_ON_OBJ) {
        p->SA2_LABEL(unk29) = 0;
        p->SA2_LABEL(unk28) = 0;
        return;
    }

    // NOTE/TODO: Not in SA1, but likely in SA3, so assuming >= GAME_SA2!
#if (GAME >= GAME_SA2)
    if ((gCurrentLevel == 0) && (gWater.isActive == TRUE)) {
        s32 r5 = Q(p->qWorldY) >> 16;
        u32 mask = ~0x3;
        s32 offsetY = p->spriteOffsetY;
        s32 unk4 = gWater.currentWaterLevel;
        s16 r0 = (unk4 - offsetY) & mask;
        r5 &= mask;

        if ((r5 == (r0)) && (p->qSpeedAirY >= 0) && ((u8)(p->rotation + 0x18) <= 0x30) && (!(p->moveState & MOVESTATE_IN_AIR))
            && (ABS(p->qSpeedGround) >= Q(6.0))) {
            SA2_LABEL(sub_80228C0)(p);

            if (p->qWorldY >= Q(r5)) {
                if (!(p->moveState & MOVESTATE_20000)) {
                    p->moveState |= MOVESTATE_20000;

                    if (IS_SINGLE_PLAYER) {
                        CreateRunOnWaterEffect();
                    }
                }

                m4aSongNumStartOrContinue(SE_281);
                p->qWorldY = (r0 << 8);
                p->rotation = 0;
                p->moveState &= ~MOVESTATE_IN_AIR;
            } else {
                if (p->moveState & MOVESTATE_20000) {
                    m4aSongNumStop(SE_281);
                }
                p->moveState &= ~MOVESTATE_20000;
            }
            return;
        } else if (p->moveState & MOVESTATE_20000) {
            p->moveState &= ~MOVESTATE_20000;
            m4aSongNumStop(SE_281);
        }
    }
#endif

    if (GRAVITY_IS_INVERTED) {
        s8 rot = p->rotation;
        rot += 0x40;
        rot = -rot;
        rot -= 0x40;

        if (rot + 0x20 > 0) {
            if (rot <= 0) {
                r1 = rot + 0x20;
            } else {
                r1 = rot + 0x1F;
            }
        } else {
            if (rot > 0) {
                r1 = rot + 0x20;
            } else {
                r1 = rot + 0x1F;
            }
        }

        switch (r1 >> 6) {
            case 0: {
                SA2_LABEL(sub_80228C0)(p);
            } break;

            case 2: {
                SA2_LABEL(sub_80229EC)(p);
            } break;

            case 1: {
                SA2_LABEL(sub_8022B18)(p);
            } break;

            case 3: {
                SA2_LABEL(sub_8022C44)(p);
            } break;
        }
    } else {
        s8 rot = p->rotation;

        if (rot + 0x20 > 0) {
            if (rot <= 0) {
                r1 = rot + 0x20;
            } else {
                r1 = rot + 0x1F;
            }
        } else {
            if (rot > 0) {
                r1 = rot + 0x20;
            } else {
                r1 = rot + 0x1F;
            }
        }

        switch (r1 >> 6) {
            case 0: {
                SA2_LABEL(sub_80228C0)(p);
            } break;

            case 2: {
                SA2_LABEL(sub_80229EC)(p);
            } break;

            case 1: {
                SA2_LABEL(sub_8022B18)(p);
            } break;

            case 3: {
                SA2_LABEL(sub_8022C44)(p);
            } break;
        }
    }
}

#if (GAME == GAME_SA1)
// Basically the opposite to Player_8043A2C.
// Uses the same variables, but checks are inverted.
// Player_WalkLeft ?
void Player_8043970(Player *p)
{
#ifndef NON_MATCHING
    register s32 qSpeedGround asm("r5") = p->qSpeedGround;
#else
    s32 qSpeedGround = p->qSpeedGround;
#endif
    s32 qMaxSpeed = p->maxSpeed;
    s32 qAcceleration = p->acceleration;
    s32 qDeceleration = p->deceleration;

    if (qSpeedGround <= Q(0)) {
        if (!(p->moveState & MOVESTATE_FACING_LEFT)) {
            p->moveState &= ~MOVESTATE_20;
            p->charState = CHARSTATE_22;

            SA2_LABEL(sub_8023B5C)(p, 14);
            PLAYERFN_SET_SHIFT_OFFSETS(p, 6, 14);
        }

        p->moveState |= MOVESTATE_FACING_LEFT;

        qSpeedGround -= qAcceleration;

        if (qSpeedGround < -qMaxSpeed) {
            qSpeedGround += qAcceleration;

            if (qSpeedGround > -qMaxSpeed) {
                qSpeedGround = -qMaxSpeed;
            }

            p->qSpeedGround = qSpeedGround;
        } else {
            p->qSpeedGround = qSpeedGround;
        }

        if (!(p->moveState & (MOVESTATE_800000 | MOVESTATE_8000))) {
            if (p->charState != 22) {
                p->charState = CHARSTATE_WALK;

                SA2_LABEL(sub_8023B5C)(p, 14);
                PLAYERFN_SET_SHIFT_OFFSETS(p, 6, 14);
            }
        }
    } else {
        qSpeedGround -= qDeceleration;

        if (qSpeedGround < Q(0)) {
            qSpeedGround = -Q(96. / 256.);
        }

        p->qSpeedGround = qSpeedGround;

        if (qSpeedGround < Q(3)) {
            return;
        }

        m4aSongNumStart(SE_BRAKE);

        p->charState = CHARSTATE_BRAKE;

        SA2_LABEL(sub_8023B5C)(p, 14);
        PLAYERFN_SET_SHIFT_OFFSETS(p, 6, 14);
    }
}

// Basically the opposite to Player_8043970.
// Uses the same variables, but checks are inverted.
// Player_WalkRight?
void Player_8043A2C(Player *p)
{
#ifndef NON_MATCHING
    register s32 qSpeedGround asm("r5") = p->qSpeedGround;
#else
    s32 qSpeedGround = p->qSpeedGround;
#endif
    s32 qMaxSpeed = p->maxSpeed;
    s32 qAcceleration = p->acceleration;
    s32 qDeceleration = p->deceleration;

    if (qSpeedGround >= Q(0)) {
        if (p->moveState & MOVESTATE_FACING_LEFT) {
            p->moveState &= ~MOVESTATE_20;
            p->charState = CHARSTATE_22;

            SA2_LABEL(sub_8023B5C)(p, 14);
            PLAYERFN_SET_SHIFT_OFFSETS(p, 6, 14);
        }

        p->moveState &= ~MOVESTATE_FACING_LEFT;

        qSpeedGround += qAcceleration;

        if (qSpeedGround > +qMaxSpeed) {
            qSpeedGround -= qAcceleration;

            if (qSpeedGround < +qMaxSpeed) {
                qSpeedGround = +qMaxSpeed;
            }

            p->qSpeedGround = qSpeedGround;
        } else {
            p->qSpeedGround = qSpeedGround;
        }

        if (!(p->moveState & (MOVESTATE_800000 | MOVESTATE_8000))) {
            if (p->charState != 22) {
                p->charState = CHARSTATE_WALK;

                SA2_LABEL(sub_8023B5C)(p, 14);
                PLAYERFN_SET_SHIFT_OFFSETS(p, 6, 14);
            }
        }
    } else {
        qSpeedGround += qDeceleration;

        if (qSpeedGround > Q(0)) {
            qSpeedGround = +Q(96. / 256.);
        }

        p->qSpeedGround = qSpeedGround;

        if (qSpeedGround > -Q(3)) {
            return;
        }

        m4aSongNumStart(SE_BRAKE);

        p->charState = CHARSTATE_BRAKE;

        SA2_LABEL(sub_8023B5C)(p, 14);
        PLAYERFN_SET_SHIFT_OFFSETS(p, 6, 14);
    }
}
#endif

// (100.00%) https://decomp.me/scratch/U0r54
s32 SA2_LABEL(sub_8022F58)(u8 param0, Player *p)
{
    u32 p0;
    s32 result = 0; // maybe u8?
    s32 r4;
    u8 sp0[4];
    s32 sp4[4];
#ifndef NON_MATCHING
    register s32 fnRes asm("r3");
#else
    s32 fnRes;
#endif

    p->SA2_LABEL(unk29) = param0;
    p->SA2_LABEL(unk28) = param0;

    p0 = (param0 + Q(0.125)) & 0xC0;

#ifndef NON_MATCHING
    asm("asr %0, %1, #6\n" : "=r"(r4) : "r"(p0));
#else
    r4 = p0 >> 6;
#endif

    switch (r4) {
        case 0: {
            u8 *ptr = sp0;
            u8 temp;
            fnRes = SA2_LABEL(sub_8029BB8)(p, ptr, &sp4[0]);
            temp = *ptr;

            if (sp0[0] & 0x1) {
                *ptr = result;
            } else {
                if (GRAVITY_IS_INVERTED) {
                    s32 v = -0x80 - temp;
                    *ptr = v;
                }
            }

            result = fnRes;
        } break;

        case 1: {
            u8 *ptr = sp0;
            u8 temp;
            fnRes = SA2_LABEL(sub_802195C)(p, ptr, &sp4[1]);
            temp = *ptr;

            if (temp & 0x1) {
                *ptr = result;
            } else {
                if (GRAVITY_IS_INVERTED) {
                    s32 v = -0x80 - temp;
                    *ptr = v;
                }
            }

            result = fnRes;
        } break;

        case 2: {
            u8 *ptr = sp0;
            u8 temp;
            fnRes = SA2_LABEL(sub_8021B08)(p, ptr, &sp4[2]);
            temp = *ptr;

            if (temp & 0x1) {
                *ptr = result;
            } else {
                if (GRAVITY_IS_INVERTED) {
                    s32 v = -0x80 - temp;
                    *ptr = v;
                }
            }

            result = fnRes;
        } break;

        case 3: {
            u8 *ptr = sp0;
            u8 temp;
            fnRes = SA2_LABEL(sub_8021A34)(p, ptr, &sp4[3]);
            temp = *ptr;

            if (temp & 0x1) {
                *ptr = result;
            } else {
                if (GRAVITY_IS_INVERTED) {
                    s32 v = -0x80 - temp;
                    *ptr = v;
                }
            }

            result = fnRes;
        } break;
    }

    return result;
}

s32 SA2_LABEL(sub_802302C)(u8 param0, Player *p)
{
    s32 r3;
    u32 r0;
    s32 result;
    u32 temp;

    s32 px = I(p->qWorldX);
    s32 py = I(p->qWorldY);

    p->SA2_LABEL(unk29) = param0;
    r3 = (s8)param0;
#ifndef NON_MATCHING
    p->SA2_LABEL(unk28) = ((u32)param0 << 0x18) >> 0x18;
#else
    p->SA2_LABEL(unk28) = param0;
#endif

    if (((param0 + Q(0.125)) << 24) > 0) {
        if (r3 <= 0) {
#ifndef NON_MATCHING
            asm("");
#endif
            param0 += Q(0.125);
        } else {
            param0 += Q(0.125) - 1;
        }
    } else {
        if (r3 <= 0) {
            param0 += Q(0.125) - 1;
        } else {
            param0 += Q(0.125);
        }
    }

    switch (param0 >> 6) {
        case 0: {
            s32 y = py + 2;
            result = SA2_LABEL(sub_801E4E4)(y + p->spriteOffsetX, px, p->layer, +8, NULL, SA2_LABEL(sub_801EE64));
        } break;

        case 2: {
            s32 y = py - 2;
            result = SA2_LABEL(sub_801E4E4)(y - p->spriteOffsetX, px, p->layer, -8, NULL, SA2_LABEL(sub_801EE64));
        } break;

        case 1: {
            s32 x = (px - 2);
            result = SA2_LABEL(sub_801E4E4)(x - p->spriteOffsetX, py, p->layer, -8, NULL, SA2_LABEL(sub_801ED24));
        } break;

        case 3: {
            s32 x = (px + 2);
            result = SA2_LABEL(sub_801E4E4)(x + p->spriteOffsetX, py, p->layer, +8, NULL, SA2_LABEL(sub_801ED24));
        } break;

        default: {
            result = 0;
        }
    }

    return result;
}

void SA2_LABEL(sub_8023128)(Player *p)
{
    u8 r1;
    u32 temp;
    u8 r5;
    s32 r2;

    if (p->qSpeedGround == 0) {
        return;
    }

    r1 = Q(0.25);
    if (p->qSpeedGround >= 0) {
        r1 = -Q(0.25);
    }

    // without temp, the add instr. sources get switched
    temp = p->rotation + r1;
    r5 = temp;

    r2 = Q(SA2_LABEL(sub_802302C)(r5, p));

    if (r2 <= 0) {
        s32 rot = (r5 + Q(0.125));

        switch ((rot & 0xC0) >> 6) {

            case 0: {
                p->qWorldY += r2;
                p->qSpeedAirY = 0;
            } break;

            case 1: {
                p->qWorldX -= r2;
                p->qSpeedAirX = 0;
                p->moveState |= MOVESTATE_20;

#if (GAME == GAME_SA1)
                p->moveState &= ~MOVESTATE_4;
                SA2_LABEL(sub_8023B5C)(p, 14);
                PLAYERFN_SET_SHIFT_OFFSETS(p, 6, 14);
#endif

                p->qSpeedGround = 0;
            } break;

            case 2: {
                p->qWorldY -= r2;
                p->qSpeedAirY = 0;
                p->moveState |= MOVESTATE_IN_AIR;
            } break;

            case 3: {
                p->qWorldX += r2;
                p->qSpeedAirX = 0;
                p->moveState |= MOVESTATE_20;

#if (GAME == GAME_SA1)
                p->moveState &= ~MOVESTATE_4;
                SA2_LABEL(sub_8023B5C)(p, 14);
                PLAYERFN_SET_SHIFT_OFFSETS(p, 6, 14);
#endif

                p->qSpeedGround = 0;
            } break;
        }

        p->SA2_LABEL(unk62) = 0;
        p->SA2_LABEL(unk63) = 0;
    }
}

void SA2_LABEL(sub_80231C0)(Player *p)
{
    u8 r1;
    u32 temp;
    u8 r5;
    s32 r2;

    if (p->qSpeedGround == 0) {
        return;
    }

    r1 = Q(0.25);
    if (p->qSpeedGround >= 0) {
        r1 = -Q(0.25);
    }

    // without temp, the add instr. sources get switched
    temp = p->rotation + r1;
    r5 = temp;

    r2 = Q(SA2_LABEL(sub_802302C)(r5, p));

    if (r2 <= 0) {
        switch (((r5 + Q(0.125)) & 0xC0) >> 6) {

            case 0: {
                p->qWorldY += r2;
                p->qSpeedAirY = 0;
            } break;

            case 1: {
                p->qWorldX -= r2;
                p->qSpeedAirX = 0;
                p->moveState &= ~MOVESTATE_4;

                SA2_LABEL(sub_8023B5C)(p, 14);
                PLAYERFN_SET_SHIFT_OFFSETS(p, 6, 14);
                p->qSpeedGround = 0;
            } break;

            case 2: {
                p->qWorldY -= r2;
                p->qSpeedAirY = 0;
                p->moveState |= MOVESTATE_IN_AIR;
            } break;

            case 3: {
                p->qWorldX += r2;
                p->qSpeedAirX = 0;
                p->moveState &= ~MOVESTATE_4;

                PLAYERFN_CHANGE_SHIFT_OFFSETS(p, 6, 14);

                p->qSpeedGround = 0;
            } break;
        }
    }
}

// These don'T appear to be in SA2
#if (GAME == GAME_SA1)

void Player_8043DDC(Player *p)
{
    if (p->SA2_LABEL(unk2A) == 0) {
        s32 qSpeedGround;
        if ((p->heldInput & DPAD_SIDEWAYS) != DPAD_RIGHT) {
            if ((p->heldInput & DPAD_SIDEWAYS) == DPAD_LEFT) {
                qSpeedGround = p->qSpeedGround;

                if (qSpeedGround <= Q(0)) {
                    p->moveState |= MOVESTATE_FACING_LEFT;
                } else {
                    qSpeedGround -= Q(24. / 256.);

                    if (qSpeedGround < Q(0)) {
                        qSpeedGround = -Q(96. / 256.);
                        qSpeedGround = qSpeedGround;
                    }

                    p->qSpeedGround = qSpeedGround;
                }
            }
        } else {
            // _08043E14
            qSpeedGround = p->qSpeedGround;

            if (qSpeedGround >= 0) {
                p->moveState &= ~MOVESTATE_FACING_LEFT;
            } else {
                qSpeedGround += Q(24. / 256.);

                if (qSpeedGround > Q(0)) {
                    qSpeedGround = +Q(96. / 256.);
                    qSpeedGround = qSpeedGround;
                }

                p->qSpeedGround = qSpeedGround;
            }
        }
    }

    {
        s32 qHalfAccel = (p->acceleration >> 1);
        s32 qSpeedGround = p->qSpeedGround;
        if (qSpeedGround < 0) {
            qSpeedGround += qHalfAccel;
            if (qSpeedGround > Q(0)) {
                qSpeedGround = Q(0);
            }

            p->qSpeedGround = qSpeedGround;
        } else if (qSpeedGround > 0) {
            qSpeedGround -= qHalfAccel;
            if (qSpeedGround < Q(0)) {
                qSpeedGround = Q(0);
            }

            p->qSpeedGround = qSpeedGround;
        }

        if (qSpeedGround == 0) {
            if (!(p->moveState & MOVESTATE_200)) {
                p->moveState &= ~MOVESTATE_4;

                if (p->heldInput & DPAD_DOWN) {
                    p->charState = CHARSTATE_CROUCH;
                } else {
                    p->charState = CHARSTATE_WALK;
                }

                PLAYERFN_CHANGE_SHIFT_OFFSETS(p, 6, 14);
            } else {
                qSpeedGround = Q(3);

                if (p->moveState & MOVESTATE_FACING_LEFT) {
                    qSpeedGround = -qSpeedGround;
                }

                p->qSpeedGround = qSpeedGround;
                m4aSongNumStart(SE_SPIN_ATTACK);
            }
        }
    }

    Player_80470AC(p);
    SA2_LABEL(sub_8023128)(p);
}

// TODO: Check how this differs from SA2 func sub_80232D0!
// (98.92%) https://decomp.me/scratch/KZphy
NONMATCH("asm/non_matching/game/stage/Player__Player_8043EC0.inc", void SA2_LABEL(sub_80232D0)(Player *p))
{
    Camera *cam = &gCamera;
    s32 qWorldX = p->qWorldX;
    s32 qWorldY = p->qWorldY;

    if (p->playerID == PLAYER_1) {
        s32 unkX = gUnknown_084ADF78[gCurrentLevel][0];
        s32 unkY;

        if ((unkX >= 0) && (qWorldX >= Q(unkX)) && (cam->SA2_LABEL(unk8) != 0) && !(cam->SA2_LABEL(unk50) & 0x1)) {
            s32 r3 = gUnknown_084ADFC0[gCurrentLevel][0];
            s32 r2 = Q(r3);
            qWorldX += r2;

            if (gNumSingleplayerCharacters == 2) {
                gPartner.qWorldX += r2;
            }

            cam->x += r3;
            cam->SA2_LABEL(unk20) += r3;
        }
        // _08043F3E

        unkY = gUnknown_084ADF78[gCurrentLevel][1];

        if ((unkY >= 0) && (qWorldY >= Q(unkY)) && (cam->SA2_LABEL(unkC) != 0) && !(cam->SA2_LABEL(unk50) & 0x2)) {
            s32 r3 = gUnknown_084ADFC0[gCurrentLevel][1] << 8;
            qWorldY += Q(r3);

            if (gNumSingleplayerCharacters == 2) {
                gPartner.qWorldY += Q(r3);
            }

            cam->y += r3;
            cam->SA2_LABEL(unk24) += r3;
        }
    }
    // _08043F9C

    if ((p->moveState & (MOVESTATE_80000000 | MOVESTATE_DEAD)) != MOVESTATE_DEAD) {
        // _08043F9C + 0xC
        s32 qNoclipWorldX, qNoclipWorldY;
        bool32 r1;

        if (!(p->moveState & MOVESTATE_80000000)) {
            if (!(gStageFlags & STAGE_FLAG__GRAVITY_INVERTED)) {
                r1 = (p->qWorldY < Q(gCamera.maxY) - 1) ? FALSE : TRUE;
            } else {
                r1 = (p->qWorldY > Q(gCamera.minY)) ? TRUE : FALSE;
            }

            if (r1) {
                // _08044004
                s32 qSpeedY;
                p->moveState |= MOVESTATE_DEAD;

                if (p->moveState & MOVESTATE_IN_WATER) {
                    p->qSpeedAirY = -Q(PLAYER_JUMP_HEIGHT_UNDER_WATER);
                } else {
                    p->qSpeedAirY = -Q(PLAYER_JUMP_HEIGHT);
                }
                // _0804401E + 0x2

                if (!(gStageFlags & STAGE_FLAG__GRAVITY_INVERTED)) {
                    qWorldY = Q(cam->maxY) - 1;
                } else {
                    qWorldY = Q(cam->minY);
                }
            }
        }
        // _08044042

        qNoclipWorldX = qWorldX;
        qNoclipWorldY = qWorldY;

        qWorldX = CLAMP(qWorldX, Q(cam->minX), Q(cam->maxX) - 1);
        qWorldY = CLAMP(qWorldY, Q(cam->minY), Q(cam->maxY) - 1);

        if (qWorldX != qNoclipWorldX) {
            p->qSpeedAirX = Q(0);
            p->qSpeedGround = Q(0);
        }

        if (qWorldY != qNoclipWorldY) {
            p->qSpeedAirY = Q(0);
            p->qSpeedGround = Q(0);
        }

        p->qWorldX = qWorldX;
        p->qWorldY = qWorldY;
    }
}
END_NONMATCH

bool32 Player_Spindash(Player *p)
{
    if (!(p->moveState & MOVESTATE_SPINDASH)) {
        if ((p->charState != CHARSTATE_CROUCH) || !(p->frameInput & gPlayerControls.jump)) {
            return FALSE;
        }

        p->charState = CHARSTATE_SPINDASH;
        m4aSongNumStart(SE_SPIN_ATTACK);
        CreateSpindashDustEffect();

        p->moveState |= MOVESTATE_SPINDASH;

        {
#ifndef NON_MATCHING
            s16 qInitialAccel;
            asm("mov %0, #0\n" : "=r"(qInitialAccel));
            p->qSpindashAccel = qInitialAccel;
#else
            p->qSpindashAccel = Q(0);
#endif
        }

        PLAYERFN_CHANGE_SHIFT_OFFSETS(p, 6, 9);
    } else {
        if (!(p->heldInput & DPAD_DOWN)) {
            s32 qNewSpeed;

            p->moveState &= ~MOVESTATE_SPINDASH;

            qNewSpeed = !(p->moveState & MOVESTATE_2000) //
                ? gUnknown_084AE188[I(p->qSpindashAccel)]
                : gUnknown_084AE19A[I(p->qSpindashAccel)];

            if (p->playerID == PLAYER_1) {
                gCamera.SA2_LABEL(unk40) = 10;
            }

            if (p->moveState & MOVESTATE_FACING_LEFT) {
                qNewSpeed = -qNewSpeed;
            }

            p->qSpeedGround = qNewSpeed;
            p->moveState |= MOVESTATE_4;

            m4aSongNumStart(SE_SPINDASH_RELEASE);
            p->charState = CHARSTATE_SPINATTACK;
        } else {
            s16 qNewAccel = p->qSpindashAccel;

            s16 qNewAccel2 = qNewAccel;
            if (qNewAccel2 != Q(0)) {
                qNewAccel = qNewAccel2 - (I(qNewAccel << 3));

                if (qNewAccel <= Q(0)) {
                    qNewAccel = Q(0);
                }
            }

            if (p->charState != CHARSTATE_7) {
                p->charState = CHARSTATE_SPINDASH;
            }

            if (p->frameInput & gPlayerControls.jump) {
                struct MP2KPlayerState *mPlayerInfo;
                m4aSongNumStart(SE_SPIN_ATTACK);

                mPlayerInfo = gMPlayTable[gSongTable[SE_SPIN_ATTACK].ms].info;
                m4aMPlayImmInit(mPlayerInfo);
                m4aMPlayPitchControl(mPlayerInfo, 0xFFFF, (qNewAccel & ~0x7F));

                if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
                    if ((p->character == CHARACTER_SONIC) || (p->character == CHARACTER_KNUCKLES)) {
                        p->charState = CHARSTATE_7;
                    }
                }

                qNewAccel += Q(2.0);
                qNewAccel = MAX(qNewAccel, Q(8.0));
            }
            p->qSpindashAccel = qNewAccel;
        }

        Player_804726C(p);
        Player_8047280(p);
    }

    SA2_LABEL(sub_80232D0)(p);
    SA2_LABEL(sub_8022D6C)(p);

    return TRUE;
}

#endif // (GAME == GAME_SA1)

bool32 sub_8044250(Player *p)
{
    u8 rot = p->rotation;
    s32 r5 = 0;
    s32 theta;

    if (!(p->frameInput & gPlayerControls.jump)) {
        return FALSE;
    }

    if (GRAVITY_IS_INVERTED) {
        rot += Q(0.25);
        rot = -rot;
        rot -= Q(0.25);
    }

    if (SA2_LABEL(sub_8022F58)(rot + Q(0.50), p) < 4) {
        return FALSE;
    }

    p->moveState |= MOVESTATE_IN_AIR;
    p->moveState &= ~(MOVESTATE_1000000 | MOVESTATE_20);
    p->moveState |= MOVESTATE_100;
    p->moveState &= ~(MOVESTATE_800);

    switch (p->character) {
        case CHARACTER_SONIC:
        case CHARACTER_TAILS:
        case CHARACTER_KNUCKLES: {
            p->charState = CHARSTATE_SPINATTACK;
            if (p->moveState & MOVESTATE_IN_WATER) {
                r5 = 0x2A0;
            } else {
                r5 = 0x4E0;
            }
        } break;

        case CHARACTER_AMY: {
            if (!(p->heldInput & DPAD_DOWN)) {
                p->charState = CHARSTATE_85;
                if (p->moveState & MOVESTATE_IN_WATER) {
                    r5 = 0x2A0;
                } else {
                    r5 = 0x4E0;
                }
            } else {
                s32 r2;
                p->charState = CHARSTATE_91;
                p->moveState &= ~MOVESTATE_2000000;
                p->moveState |= MOVESTATE_4000000;
                p->moveState &= ~MOVESTATE_100;
                p->w.af.flags = 2;
                if (p->moveState & MOVESTATE_IN_WATER) {
                    r2 = Q(2.50);
                    r5 = Q(0.75);
                } else {
                    r2 = Q(4.00);
                    r5 = Q(1.25);
                }
                if (p->moveState & MOVESTATE_FACING_LEFT) {
                    p->qSpeedAirX = Q_MUL_NEG(r2, COS_24_8(p->rotation * 4));
                    p->qSpeedAirY = Q_MUL_NEG(r2, SIN_24_8(p->rotation * 4));
                } else {
                    p->qSpeedAirX = +Q_MUL(r2, COS_24_8(p->rotation * 4));
                    p->qSpeedAirY = +Q_MUL(r2, SIN_24_8(p->rotation * 4));
                }
            }
        } break;
    }

    rot = p->rotation - Q(0.25);
    p->qSpeedAirX += Q_MUL(r5, COS_24_8(rot * 4));
    p->qSpeedAirY += Q_MUL(r5, SIN_24_8(rot * 4));

    m4aSongNumStart(SE_JUMP);

    if (p->character != CHARACTER_AMY) {
        if (!(p->moveState & MOVESTATE_4)) {
            p->moveState |= MOVESTATE_4;
            PLAYERFN_CHANGE_SHIFT_OFFSETS(p, 6, 9);
        } else {
            p->moveState |= MOVESTATE_FLIP_WITH_MOVE_DIR;
        }
    }

    return TRUE;
}

// (98.55%) https://decomp.me/scratch/lAHT0
NONMATCH("asm/non_matching/game/stage/Player__sub_8044434.inc", bool32 sub_8044434(Player *p))
{
    u8 rot = p->rotation;
    s32 r2 = 0;

    if (!(p->frameInput & gPlayerControls.jump)) {
        return FALSE;
    }

    if (GRAVITY_IS_INVERTED) {
        rot += Q(0.25);
        rot = -rot;
        rot -= Q(0.25);
    }

    p->layer ^= 1;

    if (SA2_LABEL(sub_8022F58)(rot + Q(0.50), p) < 4) {
        p->layer ^= 1;
        return FALSE;
    }

    if (gPlayer.character == CHARACTER_AMY) {
        m4aSongNumStop(SE_AMY_GRINDING);
    } else {
        m4aSongNumStop(SE_GRINDING);
    }

    p->moveState |= MOVESTATE_IN_AIR;
    p->moveState &= ~(MOVESTATE_1000000 | MOVESTATE_20);
    p->moveState |= MOVESTATE_100;
    p->moveState &= ~(MOVESTATE_800);

    gPlayer.itemEffect &= ~PLAYER_ITEM_EFFECT__TELEPORT;

    switch (p->character) {
        case CHARACTER_SONIC:
        case CHARACTER_TAILS:
        case CHARACTER_KNUCKLES: {
            p->charState = CHARSTATE_SPINATTACK;
        } break;

        case CHARACTER_AMY: {
            p->charState = CHARSTATE_85;
        } break;
    }

    if (p->moveState & MOVESTATE_IN_WATER) {
        r2 = Q(2.625);
    } else {
        r2 = Q(4.875);
    }

    rot = p->rotation - Q(0.25);
    p->qSpeedAirY = Q_MUL(r2, SIN_24_8(rot * 4));
    m4aSongNumStart(SE_JUMP);

    SPRITE_FLAG_CLEAR(&p->spriteInfoBody->s, PRIORITY);
    SPRITE_FLAG_SET_VALUE(&p->spriteInfoBody->s, PRIORITY, 2);
    SPRITE_FLAG_CLEAR(&p->spriteInfoLimbs->s, PRIORITY);
    SPRITE_FLAG_SET_VALUE(&p->spriteInfoLimbs->s, PRIORITY, 2);

    if (p->character != CHARACTER_AMY) {
        if (!(p->moveState & MOVESTATE_4)) {
            p->moveState |= MOVESTATE_4;
            PLAYERFN_CHANGE_SHIFT_OFFSETS(p, 6, 9);
        } else {
            p->moveState |= MOVESTATE_FLIP_WITH_MOVE_DIR;
        }
    }

    return TRUE;
}
END_NONMATCH

// (91.12%) https://decomp.me/scratch/hJuDa
NONMATCH("asm/non_matching/game/stage/Player__Player_AirInputControls.inc", void Player_AirInputControls(Player *p))
{
    s32 r5 = p->acceleration * 2;
    s32 r6 = p->maxSpeed;

    if ((p->charState != CHARSTATE_HIT_AIR)) {
        if (!(p->moveState & MOVESTATE_FLIP_WITH_MOVE_DIR)) {
            s16 qAirSpeedS;
            u16 qAirSpeedU = p->qSpeedAirX;

            if (p->heldInput & DPAD_LEFT) {
                if (p->charState != CHARSTATE_BOUNCE) {
                    p->moveState |= MOVESTATE_FACING_LEFT;
                }

                qAirSpeedS = qAirSpeedU;
                qAirSpeedU = qAirSpeedS - r5;
                qAirSpeedS = qAirSpeedU;

                if (qAirSpeedS < -r6) {
                    qAirSpeedU = qAirSpeedS + r5;
                    qAirSpeedS = qAirSpeedU;

                    if (qAirSpeedS > -r6) {
                        qAirSpeedU = -r6;
                    }
                }
            } else if (p->heldInput & DPAD_RIGHT) {
                if ((p->charState != CHARSTATE_BOUNCE)) {
                    p->moveState &= ~MOVESTATE_FACING_LEFT;
                }

                qAirSpeedS = qAirSpeedU;
                qAirSpeedU = qAirSpeedS + r5;
                qAirSpeedS = qAirSpeedU;

                if (qAirSpeedS > r6) {
                    qAirSpeedU = qAirSpeedS - r5;
                    qAirSpeedS = qAirSpeedU;

                    if (qAirSpeedS < r6) {
                        qAirSpeedU = r6;
                    }
                }
            }

            p->qSpeedAirX = qAirSpeedU;
        }

        if ((u16)p->qSpeedAirY > (u16)(-Q(67) - 1)) {
            s16 qSpeedAirX = p->qSpeedAirX;
            s16 qSpeedAirXFrac = p->qSpeedAirX >> 5;
            if (qSpeedAirXFrac < 0) {
                qSpeedAirX -= qSpeedAirXFrac;
                if (qSpeedAirX > 0) {
                    qSpeedAirX = 0;
                }

                p->qSpeedAirX = qSpeedAirX;
            } else if (qSpeedAirXFrac > 0) {
                qSpeedAirX -= qSpeedAirXFrac;

                if (qSpeedAirX < 0)
                    qSpeedAirX = 0;

                p->qSpeedAirX = qSpeedAirX;
            }
        }
    }
}
END_NONMATCH

void Player_8044670(Player *p)
{
    s16 r4 = (!(p->moveState & MOVESTATE_IN_WATER)) ? -Q(3.0) : -Q(1.5);

    if (p->moveState & MOVESTATE_100) {
        if (p->qSpeedAirY < r4) {
            if (!(p->heldInput & gPlayerControls.jump)) {
                p->qSpeedAirY = r4;
            }
        } else {
            // Init mid-air action, if Jump button pressed
            if ((gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) && (p->SA2_LABEL(unk61) == 0) && (p->frameInput & gPlayerControls.jump)
                && (p->charState != CHARSTATE_HIT_AIR)) {
                p->moveState &= ~MOVESTATE_FLIP_WITH_MOVE_DIR;
                p->SA2_LABEL(unk61) = 1;

                switch (p->character) {
                    case CHARACTER_SONIC: {
                        Player_Sonic_InitInstaShield(p);
                    } break;

                    case CHARACTER_TAILS: {
                        Player_Tails_InitFlying(p);
                    } break;

                    case CHARACTER_KNUCKLES: {
                        Player_Knuckles_InitGlide(p);
                    } break;

                    case CHARACTER_AMY: {
                        ;
                    } break;
                }
            }
        }
    } else if (!(p->moveState & MOVESTATE_200)) {
        if (p->qSpeedAirY < -Q(11.8125)) {
            p->qSpeedAirY = -Q(11.8125);
        }
    }
}

void Player_8044750(Player *p)
{
    Camera *cam = &gCamera;

    if ((p->SA2_LABEL(unk25) == 0) || (--p->SA2_LABEL(unk25) == 0)) {
        if (p->playerID == 0) {
            if (!(gStageFlags & STAGE_FLAG__GRAVITY_INVERTED)) {
                if (cam->SA2_LABEL(unk4C) + cam->shiftY > -72) {
                    cam->SA2_LABEL(unk4C) -= 2;
                }
            } else {
                if (cam->SA2_LABEL(unk4C) + cam->shiftY < 72) {
                    cam->SA2_LABEL(unk4C) += 2;
                }
            }
        }
    } else if (p->playerID == 0) {
        if (cam->SA2_LABEL(unk4C) > 0) {
            cam->SA2_LABEL(unk4C) -= 2;
        } else if (cam->SA2_LABEL(unk4C) < 0) {
            cam->SA2_LABEL(unk4C) += 2;
        }
    }
}

// TODO: Look up|down function?
// (98.79%) https://decomp.me/scratch/yy7rw
NONMATCH("asm/non_matching/game/stage/Player__Player_80447D8.inc", void Player_80447D8(Player *p))
{
    Camera *cam = &gCamera;

    p->charState = CHARSTATE_CROUCH;

    if (p->qSpeedGround == 0) {
        if ((p->SA2_LABEL(unk25) == 0) || (--p->SA2_LABEL(unk25) == 0)) {
            if (p->playerID == 0) {
                if (!(gStageFlags & STAGE_FLAG__GRAVITY_INVERTED)) {
                    if (cam->SA2_LABEL(unk4C) + cam->shiftY < +60) {
                        cam->SA2_LABEL(unk4C) += 2;
                    }
                } else {
                    if (cam->SA2_LABEL(unk4C) + cam->shiftY > -60) {
                        cam->SA2_LABEL(unk4C) -= 2;
                    }
                }
            }
        } else if (p->playerID == 0) {
            if (cam->SA2_LABEL(unk4C) > 0) {
                cam->SA2_LABEL(unk4C) -= 2;
            } else if (cam->SA2_LABEL(unk4C) < 0) {
                cam->SA2_LABEL(unk4C) += 2;
            }
        }
    } else if (p->character != CHARACTER_AMY) {
        m4aSongNumStart(SE_SPIN_ATTACK);
        p->moveState |= MOVESTATE_4;
        PLAYERFN_CHANGE_SHIFT_OFFSETS(p, 6, 9);
        p->charState = CHARSTATE_SPINATTACK;

        if (p->playerID == 0) {
            // TODO: Is this entire code block a macro?
            //       (also twice in sub_80448D0)
            p->SA2_LABEL(unk25) = 120;

            if (p->playerID == PLAYER_1) {
                if (cam->SA2_LABEL(unk4C) > 0) {
                    cam->SA2_LABEL(unk4C) -= 2;
                    asm("");
                } else if (cam->SA2_LABEL(unk4C) < 0) {
                    cam->SA2_LABEL(unk4C) += 2;
                }
            }
        }
    }
}
END_NONMATCH

void sub_80448D0(Player *p)
{
    if (p->charState == CHARSTATE_12 || p->charState == CHARSTATE_13) {
        if (p->playerID == 0) {
            // TODO: Is this entire code block a macro?
            //       (also in Player_80447D8)
            p->SA2_LABEL(unk25) = 120;

            if (p->playerID == 0) {
                if (gCamera.SA2_LABEL(unk4C) > 0) {
                    gCamera.SA2_LABEL(unk4C) -= 2;
                } else if (gCamera.SA2_LABEL(unk4C) < 0) {
                    gCamera.SA2_LABEL(unk4C) += 2;
                }
            }
        }
    } else {
        switch (p->heldInput & DPAD_VERTICAL) {
            case 0: {
                if (p->playerID == 0) {
                    p->SA2_LABEL(unk25) = 120;

                    if (p->playerID == 0) {
                        if (gCamera.SA2_LABEL(unk4C) > 0) {
                            gCamera.SA2_LABEL(unk4C) -= 2;
                        } else if (gCamera.SA2_LABEL(unk4C) < 0) {
                            gCamera.SA2_LABEL(unk4C) += 2;
                        }
                    }
                }

                if (p->charState == CHARSTATE_CROUCH) {
                    p->charState = CHARSTATE_3;
                } else if (p->charState == CHARSTATE_LOOK_UP) {
                    p->charState = CHARSTATE_11;
                }
            } break;

            case DPAD_UP: {
                // _0804497C
                if (p->qSpeedGround == 0) {
                    p->charState = CHARSTATE_LOOK_UP;
                    Player_8044750(p);

                } else if (p->playerID == 0) {
                    // _08044990
                    p->SA2_LABEL(unk25) = 120;

                    if (p->playerID == 0) {
                        if (gCamera.SA2_LABEL(unk4C) > 0) {
                            gCamera.SA2_LABEL(unk4C) -= 2;
                        } else if (gCamera.SA2_LABEL(unk4C) < 0) {
                            gCamera.SA2_LABEL(unk4C) += 2;
                        }
                    }
                }
            } break;

            case DPAD_DOWN: {
                Player_80447D8(p);
            } break;
        }
    }
}

void sub_80449D8(Player *p)
{
    s32 qSpeedGround;
    s32 rot;
    s32 qMin;

    // TODO: Down | Right? Is this a bug?
    if (p->heldInput & (DPAD_DOWN | DPAD_RIGHT)) {
        if (((p->rotation + Q(0.375)) & 0xFF) < Q(0.75)) {
            p->qSpeedGround += (SIN_24_8(p->rotation * 4) * 5) >> 5;
        }
    }

    qSpeedGround = p->qSpeedGround;

    if (p->heldInput & DPAD_LEFT) {
        qSpeedGround -= Q(8. / 256.);

        qMin = Q(0.75);
        if (qSpeedGround < qMin) {
            qSpeedGround = qMin;
        }
    }

    qSpeedGround -= Q(8. / 256.);

    qMin = Q(0.75);
    if (qSpeedGround < qMin) {
        qSpeedGround = qMin;
    }

    p->qSpeedGround = qSpeedGround;

    p->charState = CHARSTATE_16;

    qSpeedGround = p->qSpeedGround;
    rot = p->rotation;
    p->qSpeedAirX = Q_MUL(p->qSpeedGround, COS_24_8(rot * 4));
    p->qSpeedAirY = Q_MUL(p->qSpeedGround, SIN_24_8(rot * 4));
}

void SA2_LABEL(sub_8023878)(Player *p)
{
#if (GAME == GAME_SA1) && !defined(BUG_FIX)
#define WATER_ACTIVE_CHECK 1
#else
#define WATER_ACTIVE_CHECK gWater.isActive == TRUE
#endif

    p->moveState &= ~MOVESTATE_1000;
    if (WATER_ACTIVE_CHECK && gWater.currentWaterLevel >= 0 && (I(p->qWorldY) - 4) >= gWater.currentWaterLevel) {
        if (!(p->moveState & MOVESTATE_IN_WATER)) {
            p->moveState |= MOVESTATE_IN_WATER;
            p->moveState |= MOVESTATE_1000;

            p->qSpeedAirX = p->qSpeedAirX >> 1;
            p->qSpeedAirY = p->qSpeedAirY >> 2;
            if ((p->character != CHARACTER_KNUCKLES || p->SA2_LABEL(unk61) != 9) && (s8)p->SA2_LABEL(unk88) < 1) {
                p->SA2_LABEL(unk88) = 10;
                CreateWaterfallSurfaceHitEffect(I(p->qWorldX), gWater.currentWaterLevel);
                m4aSongNumStart(SE_WATERFALL_SURFACE_HIT);
            }
        }

#if (GAME == GAME_SA1)
        if (!(p->moveState & MOVESTATE_2000)) {
            p->maxSpeed = Q(2.25);
            p->acceleration = Q(4. / 256.);
            p->deceleration = Q(48. / 256.);
        } else {
            p->maxSpeed = Q(3.75);
            p->acceleration = Q(18. / 256.);
            p->deceleration = Q(96. / 256.);
        }
#endif

        if (--p->framesUntilDrownCountDecrement < 1) {
            switch (p->secondsUntilDrown--) {
                case 11:
                    if (p->playerID == 0) {
                        gMusicManagerState.unk4 = 16;
                    }
                    break;
                case 12:
                    SpawnDrowningCountdownNum(p, 5);
                    break;
                case 10:
                    SpawnDrowningCountdownNum(p, 4);
                    break;
                case 8:
                    SpawnDrowningCountdownNum(p, 3);
                    break;
                case 6:
                    SpawnDrowningCountdownNum(p, 2);
                    break;
                case 4:
                    SpawnDrowningCountdownNum(p, 1);
                    break;
                case 2:
                    SpawnDrowningCountdownNum(p, 0);
                    break;
            }
            if (p->secondsUntilDrown < 0) {
                p->moveState |= MOVESTATE_DEAD;
                p->qSpeedAirY = 0;
                SpawnAirBubbles(p->qWorldX, p->qWorldY - Q(12), 0, 1);
                SpawnBubblesAfterDrowning(p);
            }
            p->framesUntilDrownCountDecrement = 60;
        }
        if (!(gStageTime % 16u) && !(PseudoRandom32() & 0x300)) {
            s32 qDX = ((p->moveState & MOVESTATE_FACING_LEFT) ? -Q(4) : +Q(4));
            SpawnAirBubbles(p->qWorldX + qDX, p->qWorldY - Q(4), 0, 0);
        }
    } else {
        if (p->moveState & MOVESTATE_IN_WATER) {
            p->moveState &= ~MOVESTATE_IN_WATER;
            p->moveState |= MOVESTATE_1000;
            p->qSpeedAirY = p->qSpeedAirY << 1;

            if ((p->character != CHARACTER_KNUCKLES || p->SA2_LABEL(unk61) != 9) && p->SA2_LABEL(unk88) < 1) {
                p->SA2_LABEL(unk88) = 10;
                CreateWaterfallSurfaceHitEffect(I(p->qWorldX), gWater.currentWaterLevel);
                m4aSongNumStart(SE_WATERFALL_SURFACE_HIT);
            }
        }
#if (GAME == GAME_SA1)
        if (!(p->moveState & MOVESTATE_2000)) {
            p->maxSpeed = Q(4.50);
            p->acceleration = Q(8. / 256.);
            p->deceleration = Q(96. / 256.);
        } else {
            p->maxSpeed = Q(7.50);
            p->acceleration = Q(36. / 256.);
            p->deceleration = Q(192. / 256.);
        }
#endif
        // Inline of Player_InitializeDrowning?
        p->framesUntilDrownCountDecrement = 60;
        p->secondsUntilDrown = 30;

#if (GAME == GAME_SA1)
        if (p->playerID == 0) {
            m4aSongNumStop(MUS_DROWNING);
        }
#else
        if (gMPlayTable[0].info->songHeader == gSongTable[MUS_DROWNING].header && p->playerID == 0) {
            m4aSongNumStartOrContinue(gLevelSongs[gCurrentLevel]);
        }
#endif
    }

    if (p->itemEffect & PLAYER_ITEM_EFFECT__SPEED_UP) {
#if (GAME == GAME_SA1)
        p->maxSpeed = p->maxSpeed * 2;
        p->acceleration = p->acceleration * 2;
        p->deceleration = p->deceleration * 2;
#else
        p->acceleration = p->acceleration * 2;
        p->deceleration = p->deceleration * 2;
#endif
    } else if (p->itemEffect & PLAYER_ITEM_EFFECT__MP_SLOW_DOWN) {
        p->maxSpeed = p->maxSpeed >> 2;
        p->acceleration = p->acceleration >> 2;
        p->deceleration = p->deceleration >> 2;
    }

    if (p->SA2_LABEL(unk88) != 0) {
        p->SA2_LABEL(unk88)--;
    }
}

void Player_8044D74(Player *p)
{
    Sprite *sprBelow = p->stoodObj;
    CamCoord sprWorldX = gCamera.x + sprBelow->x;

    s32 sprWorldSubOffsetLeft = Q(sprWorldX + sprBelow->hitboxes[0].b.left - p->spriteOffsetX + 1);
    s32 sprWorldSub2;

    if ((p->qWorldX < sprWorldSubOffsetLeft) && (sprBelow->hitboxes[0].b.left != 0)) {
        if ((p->moveState & MOVESTATE_FACING_LEFT)) {
            p->charState = CHARSTATE_12;
        } else {
            p->charState = CHARSTATE_13;
        }

        return;
    } else {
        s32 sprWorldSubOffsetRight = Q(sprWorldX + sprBelow->hitboxes[0].b.right + p->spriteOffsetX - 2);

        if ((p->qWorldX > sprWorldSubOffsetRight) && (sprBelow->hitboxes[0].b.right != 0)) {
            if ((p->moveState & MOVESTATE_FACING_LEFT)) {
                p->charState = CHARSTATE_13;
            } else {
                p->charState = CHARSTATE_12;
            }

            return;
        }
    }

    sprWorldSub2 = Q(sprWorldX + sprBelow->hitboxes[0].b.left - p->spriteOffsetX + 2);

    if ((p->qWorldX < sprWorldSub2) || (p->qWorldX > Q(sprWorldX + sprBelow->hitboxes[0].b.right + p->spriteOffsetX - 3))) {
        if (p->prevCharState == 12 || p->prevCharState == 13) {
            // TODO: Are these names accurate, if charState gets get to prevCharState?
            p->charState = p->prevCharState;
        }
    }
}

void Player_8044E48(Player *p)
{
    s32 worldX = I(p->qWorldX);
    s32 worldY = I(p->qWorldY);
    s32 res;

    res = SA2_LABEL(sub_801E4E4)(worldY + p->spriteOffsetY, worldX, p->layer, +8, 0, SA2_LABEL(sub_801EE64));

    if (res > 8) {
        s32 r6;
        if (GRAVITY_IS_INVERTED) {
            s32 x, y;
            s32 x2, y2;
            y = p->spriteOffsetY;
            y = worldY - y;
            x = worldX - 2;
            r6 = SA2_LABEL(sub_801E4E4)(y, x - p->spriteOffsetX, p->layer, -8, 0, SA2_LABEL(sub_801EE64));

            y2 = p->spriteOffsetY;
            y2 = worldY - y2;
            x2 = worldX + 2;
            res = SA2_LABEL(sub_801E4E4)(y2, x2 + p->spriteOffsetX, p->layer, -8, 0, SA2_LABEL(sub_801EE64));
        } else {
            s32 x, y;
            s32 x2, y2;
            y = worldY + p->spriteOffsetY;
            x = worldX - 2;
            r6 = SA2_LABEL(sub_801E4E4)(y, x - p->spriteOffsetX, p->layer, +8, 0, SA2_LABEL(sub_801EE64));

            y2 = worldY + p->spriteOffsetY;
            x2 = worldX + 2;
            res = SA2_LABEL(sub_801E4E4)(y2, x2 + p->spriteOffsetX, p->layer, +8, 0, SA2_LABEL(sub_801EE64));
        }

        if ((r6 > 8) && (res == 0)) {
            if (!(p->moveState & MOVESTATE_FACING_LEFT)) {
                p->charState = CHARSTATE_13;
            } else {
                p->charState = CHARSTATE_12;
            }
        } else if ((r6 == 0) && (res > 8)) {
            if ((p->moveState & MOVESTATE_FACING_LEFT)) {
                p->charState = CHARSTATE_13;
            } else {
                p->charState = CHARSTATE_12;
            }
        }
    }
}

void Player_8044F7C(Player *p)
{
    s32 qSpeed;
    u8 rot;

    if ((p->SA2_LABEL(unk2A) == 0) && (p->charState != CHARSTATE_64) && (p->charState != CHARSTATE_27)) {
        switch (p->heldInput & DPAD_SIDEWAYS) {
            case 0: {
                if (p->qSpeedGround != Q(0)) {
                    if ((p->charState == CHARSTATE_8) || (p->charState == CHARSTATE_BRAKE) || (p->charState == CHARSTATE_IDLE)) {
                        p->charState = CHARSTATE_WALK;

                        SA2_LABEL(sub_8023B5C)(p, 14);
                        PLAYERFN_SET_SHIFT_OFFSETS(p, 6, 14);
                    }
                } else if (!(p->moveState & MOVESTATE_800000)) {
                    if ((p->character != CHARACTER_AMY) || !(p->moveState & MOVESTATE_200)) {

                        if (p->charState == CHARSTATE_CROUCH) {
                            p->charState = CHARSTATE_3;
                        } else if (p->charState == CHARSTATE_LOOK_UP) {
                            p->charState = CHARSTATE_11;
                        } else if ((p->charState != CHARSTATE_3) && (p->charState != CHARSTATE_11)) {
                            p->charState = CHARSTATE_IDLE;
                        }

                        SA2_LABEL(sub_8023B5C)(p, 14);
                        PLAYERFN_SET_SHIFT_OFFSETS(p, 6, 14);
                    }
                }

                if (p->character == CHARACTER_AMY) {
                    if (p->charState == CHARSTATE_CROUCH) {
                        qSpeed = p->qSpeedGround;
                        if (qSpeed > 0) {
                            qSpeed -= p->deceleration;

                            if (qSpeed < 0) {
                                qSpeed = 0;
                            }
                        } else {
                            qSpeed += p->deceleration;

                            if ((qSpeed) > 0) {
                                qSpeed = 0;
                            }
                        }
                        p->qSpeedGround = qSpeed;
                    }
                }

            } break;

            case DPAD_LEFT: {
                Player_8043970(p);
            } break;

            case DPAD_RIGHT: {
                Player_8043A2C(p);
            } break;
        }

        if ((p->character == CHARACTER_AMY) && (p->moveState & MOVESTATE_200)) {
            qSpeed = p->qSpeedGround;
            if (qSpeed == Q(0)) {
                qSpeed = Q(3);
                if (p->moveState & MOVESTATE_FACING_LEFT) {
                    NEGATE(qSpeed);
                }
                p->qSpeedGround = qSpeed;
            }
        } else {
            if ((!((p->rotation + Q(0.125)) & 0xC0)) && (p->qSpeedGround == 0)) {
                p->moveState &= ~MOVESTATE_20;

                if (!(p->moveState & MOVESTATE_800000)) {
                    if ((p->charState != CHARSTATE_3) && (p->charState != CHARSTATE_11)) {
                        p->charState = 0;
                    }

                    if (p->moveState & MOVESTATE_STOOD_ON_OBJ) {
                        Player_8044D74(p);
                    } else {
                        Player_8044E48(p);
                    }
                }
            }
        }
    }

    sub_80448D0(p);

    if (!(p->heldInput & DPAD_SIDEWAYS)) {
        qSpeed = p->qSpeedGround;
        if (qSpeed > 0) {
            qSpeed -= Q(8. / 256.);
            qSpeed = MAX(Q(0), qSpeed);
            p->qSpeedGround = qSpeed;
        } else if (qSpeed < 0) {
            qSpeed += Q(8. / 256.);
            qSpeed = MIN(Q(0), qSpeed);
            p->qSpeedGround = qSpeed;
        }
    }

    qSpeed = p->qSpeedGround;
    p->qSpeedAirX = Q_MUL(qSpeed, COS_24_8((rot = p->rotation) * 4));
    p->qSpeedAirY = Q_MUL(qSpeed, SIN_24_8(rot * 4));

    SA2_LABEL(sub_8023128)(p);
}

void SA2_LABEL(sub_8023B5C)(Player *p, s32 spriteOffsetY)
{
    u8 rot;
    if (p->spriteOffsetY == spriteOffsetY) {
        return;
    }

    rot = p->rotation;
    if (GRAVITY_IS_INVERTED) {
        rot += Q(1. / 4.);
        rot = -rot;
        rot -= Q(1. / 4.);
    }

    if ((s32)(rot + Q(1. / 8.)) > 0) {
        if (rot != 0) {
            rot = (rot + Q(1. / 8.)) - 1;
            ;
        } else {
            rot = Q(1. / 8.);
        }
    } else {
        if (rot != 0) {
            rot = (rot + Q(1. / 8.));
        } else {
            rot = Q(1. / 8.) - 1;
        }
    }

    switch ((rot >> 6)) {
        case 0: {
            p->qWorldY -= Q(spriteOffsetY - p->spriteOffsetY);
        } break;

        case 2: {
            p->qWorldY += Q(spriteOffsetY - p->spriteOffsetY);
        } break;

        case 1: {
            p->qWorldX += Q(spriteOffsetY - p->spriteOffsetY);
        } break;

        case 3: {
            p->qWorldX -= Q(spriteOffsetY - p->spriteOffsetY);
        } break;
    }
}

void Player_Debug_TestRingScatter(Player *p)
{
    if (p->moveState & MOVESTATE_80000000) {
        s32 qSpeedGround = p->qSpeedGround;
        if (gInput & DPAD_ANY) {
            qSpeedGround += Q(0.125);
            qSpeedGround = qSpeedGround >= Q(0) ? CLAMP(qSpeedGround, Q(0), Q(16)) : Q(0);
        } else {
            qSpeedGround = 0;
        }
        p->qSpeedGround = qSpeedGround;

        switch (gInput & DPAD_SIDEWAYS) {
            case DPAD_LEFT:
                p->qSpeedAirX = -qSpeedGround;
                break;

            case DPAD_RIGHT:
                p->qSpeedAirX = +qSpeedGround;
                break;

            default:
                p->qSpeedAirX = 0;
        }

        switch (gInput & DPAD_VERTICAL) {
            case DPAD_UP:
                p->qSpeedAirY = -qSpeedGround;
                break;

            case DPAD_DOWN:
                p->qSpeedAirY = +qSpeedGround;
                break;

            default:
                p->qSpeedAirY = 0;
        }

        PLAYERFN_UPDATE_POSITION(p);
        SA2_LABEL(sub_80232D0)(p);

        if (gPressedKeys & B_BUTTON) {
            InitScatteringRings(I(p->qWorldX), I(p->qWorldY), 1);
        }
    }
}

void Task_PlayerHandleDeath(void)
{
    player_0_Task *gt = TASK_DATA(gCurTask);
    u32 val = gt->unk4;
    if (val == 0) {
        if (IS_SINGLE_PLAYER) {
            TaskDestroy(gCurTask);

            if ((!LOADED_SAVE->timeLimitDisabled
                 && (gCourseTime > MAX_COURSE_TIME || (gStageFlags & STAGE_FLAG__TIMER_REVERSED && gCourseTime == 0)))
#if (GAME == GAME_SA2)
                || ((gGameMode == GAME_MODE_TIME_ATTACK || gGameMode == GAME_MODE_BOSS_TIME_ATTACK) && gCourseTime > MAX_COURSE_TIME)
#endif
            ) {
                HandleDeath();
            } else {
                gRingCount = 0;
#if (GAME == GAME_SA2)
                gSpecialRingCount = 0;
#endif
                HandleLifeLost();
            }
        } else {
#if (GAME == GAME_SA1)
            if (gGameMode != GAME_MODE_CHAO_HUNT && gGameMode != GAME_MODE_TEAM_PLAY)
#endif
            {
                gRingCount = 0;
            }

#if (GAME == GAME_SA2)
            if (gGameMode == GAME_MODE_MULTI_PLAYER) {
                gRingCount = 1;
            }
#endif

#if (GAME == GAME_SA2)
            gSpecialRingCount = 0;
#endif
            InitializePlayer(&gPlayer);
            gCamera.x = I(gPlayer.qWorldX) + gCamera.shiftX - (DISPLAY_WIDTH / 2);
            gCamera.y = I(gPlayer.qWorldY) + gCamera.shiftY - (DISPLAY_HEIGHT / 2);
            m4aMPlayTempoControl(&gMPlayInfo_BGM, 256);
            gPlayer.moveState = 0;
            gStageFlags &= ~STAGE_FLAG__GRAVITY_INVERTED;

            gPlayer.spriteInfoBody->s.frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;
            gPlayer.spriteInfoBody->s.frameFlags |= SPRITE_FLAG(PRIORITY, 2);
            gPlayer.spriteInfoLimbs->s.frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;
            gPlayer.spriteInfoLimbs->s.frameFlags |= SPRITE_FLAG(PRIORITY, 2);

            gCamera.SA2_LABEL(unk50) &= ~0x3;

#if (GAME == GAME_SA2)
            if (gPlayer.character == CHARACTER_CREAM && gCheese != NULL) {
                gCheese->posX = gPlayer.qWorldX;
                gCheese->posY = gPlayer.qWorldY;
            }
#endif

            gCurTask->main = Task_PlayerMain;
            // gPlayer.callback = Player_TouchGround;
        }
    } else {
        val--;
        gt->unk4 = val;
    }
}

static inline bool32 DeadPlayerLeftScreen(Player *p, struct Camera *cam, s32 playerY)
{
    if (p->moveState & MOVESTATE_80000000) {
        return FALSE;
    }
#if (GAME == GAME_SA1)
    if (!GRAVITY_IS_INVERTED) {
        if (playerY >= Q(cam->y) + Q(DISPLAY_HEIGHT + 80) - 1) {
            return TRUE;
        }
    } else {
        if (playerY <= Q(cam->y - 80)) {
            return TRUE;
        }
    }
#elif (GAME == GAME_SA2)
    if (GRAVITY_IS_INVERTED) {
        if (playerY <= Q(cam->y - 80)) {
            return TRUE;
        }
    } else {
        if (playerY >= Q(cam->y) + Q(DISPLAY_HEIGHT + 80) - 1) {
            return TRUE;
        }
    }
#endif
    return FALSE;
}

void Task_PlayerDied(void)
{
    Player *p = &gPlayer;

    PlayerSpriteInfo *psi1 = gPlayer.spriteInfoBody;
    PlayerSpriteInfo *psi2 = gPlayer.spriteInfoLimbs;

    if (DeadPlayerLeftScreen(&gPlayer, &gCamera, gPlayer.qWorldY)) {
        player_0_Task *gt = TASK_DATA(gCurTask);
        gt->unk4 = ZONE_TIME_TO_INT(0, 1);
#if (GAME == GAME_SA2)
        gPlayer.moveState |= MOVESTATE_100000;
        if (IS_MULTI_PLAYER) {
            sub_8024B10(p, psi1);
        }
#endif
        gCurTask->main = Task_PlayerHandleDeath;
        return;
    }

#if (GAME == GAME_SA1)
    PLAYERFN_UPDATE_POSITION(p);
    PLAYERFN_UPDATE_AIR_FALL_SPEED(p);
#elif (GAME == GAME_SA2)
    PLAYERFN_UPDATE_AIR_FALL_SPEED(p);
    PLAYERFN_UPDATE_POSITION(p);
#endif
    SA2_LABEL(sub_802486C)(p, psi1);
    SA2_LABEL(sub_8024B10)(p, psi1);
    SA2_LABEL(sub_8024F74)(p, psi2);
}

void Task_PlayerMain(void)
{
    Player *p = &gPlayer;

#if (GAME == GAME_SA2)
    Player_HandleBoostThreshold(p);
    sub_80298DC(p);
    Player_ApplyBoostPhysics(p);
    Player_HandleWalkAnim(p);

    gUnknown_030054FC = 0;
    gUnknown_030054E0 = 0;
    sub_802460C(p);
    sub_800DF8C(p);
    sub_8023878(p);
    CallPlayerTransition(p);

    if (!(p->moveState & MOVESTATE_IA_OVERRIDE)) {
        p->callback(p);
    } else if (IS_BOSS_STAGE(gCurrentLevel)) {
        sub_80232D0(p);
    }

    sub_802486C(p, p->spriteInfoBody);
    sub_8024B10(p, p->spriteInfoBody);
    sub_8024F74(p, p->spriteInfoLimbs);

    if (p->charState != CHARSTATE_HIT_AIR && p->timerInvulnerability > 0) {
        p->timerInvulnerability--;
    }

    if (p->disableTrickTimer != 0) {
        p->disableTrickTimer--;
    }

    sub_8023748(p);

    // from boost_effect.c
    sub_8015790();
    sub_80156D0();

    p->moveState &= ~MOVESTATE_ICE_SLIDE;
    gHomingTarget.squarePlayerDistance = SQUARE(128);
    gHomingTarget.angle = 0;
    gCheeseTarget.squarePlayerDistance = SQUARE(CHEESE_DISTANCE_MAX);
    gCheeseTarget.task = NULL;
#endif

    if (p->moveState & MOVESTATE_DEAD) {
        struct Camera *cam = &gCamera;
        gCurTask->main = Task_PlayerDied;
        p->charState = CHARSTATE_DEAD;
        p->qSpeedAirX = 0;

#if (GAME == GAME_SA2)
        if (p->qSpeedAirY < -Q(4)) {
            p->qSpeedAirY = -Q(2);
        } else if (p->qSpeedAirY > 0) {
            p->qSpeedAirY = 0;
        }
#endif

        p->timerInvulnerability = 2;
        p->itemEffect = 0;
        p->moveState &= ~MOVESTATE_20;
        p->moveState &= ~MOVESTATE_STOOD_ON_OBJ;
        p->stoodObj = NULL;
        cam->SA2_LABEL(unk50) |= 3;

        if (IS_SINGLE_PLAYER) {
            gStageFlags |= STAGE_FLAG__ACT_START;
        }

        p->spriteInfoBody->s.frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;
        p->spriteInfoBody->s.frameFlags |= SPRITE_FLAG(PRIORITY, 1);
        p->SA2_LABEL(unk80) = 0x100;
        p->SA2_LABEL(unk82) = 0x100;

#if (GAME == GAME_SA1)
        m4aSongNumStop(28);
        m4aSongNumStop(27);
        m4aSongNumStop(SE_TAILS_PROPELLER_FLYING);
#elif (GAME == GAME_SA2)
        // TODO: macro IS_SONG_PLAYING(...)
        if (gMPlayTable[0].info->songHeader == gSongTable[MUS_DROWNING].header) {
            m4aSongNumStartOrContinue(gLevelSongs[gCurrentLevel]);
        }
        if (gMPlayTable[0].info->songHeader == gSongTable[MUS_INVINCIBILITY].header) {
            m4aSongNumStartOrContinue(gLevelSongs[gCurrentLevel]);
        }

        m4aSongNumStop(MUS_DROWNING);

        if (p->character == CHARACTER_TAILS) {
            m4aSongNumStop(SE_TAILS_PROPELLER_FLYING);
        }

        if (p->character == CHARACTER_CREAM) {
            m4aSongNumStop(SE_CREAM_FLYING);
        }
#endif

        if (p->secondsUntilDrown < 0) {
            m4aSongNumStart(192);
        } else {
            m4aSongNumStart(SE_LIFE_LOST);
        }
    } else {
#if (GAME == GAME_SA1)
        SA2_LABEL(sub_802460C)(p);
        SA2_LABEL(sub_8023878)(p);

        if (!(p->moveState & 0x400000)) {
            switch (p->character) {
                case CHARACTER_SONIC: {
                    Player_Sonic_80473AC(p);
                } break;

                case CHARACTER_TAILS: {
                    Player_Tails_8047BA0(p);
                } break;

                case CHARACTER_KNUCKLES: {
                    Player_Knuckles_8049000(p);
                } break;

                case CHARACTER_AMY: {
                    Player_Amy_80497AC(p);
                } break;
            }
        }
#endif
    }
    // 124
#if (GAME == GAME_SA1)
    SA2_LABEL(sub_802486C)(p, p->spriteInfoBody);
    SA2_LABEL(sub_8024B10)(p, p->spriteInfoBody);
    SA2_LABEL(sub_8024F74)(p, p->spriteInfoLimbs);

    if ((p->charState != CHARSTATE_HIT_AIR) && (p->timerInvulnerability > 0)) {
        p->timerInvulnerability--;
    }

    if (p->itemEffect != 0) {
        if ((p->itemEffect & PLAYER_ITEM_EFFECT__SPEED_UP) && (--p->timerSpeedup == 0)) {
            m4aMPlayTempoControl(&gMPlayInfo_BGM, Q(1.0));
            p->itemEffect &= ~PLAYER_ITEM_EFFECT__SPEED_UP;
        }

        if ((p->itemEffect & PLAYER_ITEM_EFFECT__MP_SLOW_DOWN) && (--p->timerSpeedup == 0)) {
            m4aMPlayTempoControl(&gMPlayInfo_BGM, Q(1.0));
            p->itemEffect &= ~PLAYER_ITEM_EFFECT__MP_SLOW_DOWN;
        }

        if ((p->itemEffect & PLAYER_ITEM_EFFECT__INVINCIBILITY) && (--p->timerInvincibility == 0)) {
            p->itemEffect &= ~PLAYER_ITEM_EFFECT__INVINCIBILITY;
            m4aSongNumStop(28);
        }

        if ((p->itemEffect & PLAYER_ITEM_EFFECT__20) && (--p->timer24 == 0)) {
            p->itemEffect &= ~PLAYER_ITEM_EFFECT__20;

            gDispCnt &= ~0x8000;
            gWinRegs[5] = 0x3F;
        }
    }
#endif
}

// TODO(Jace): Could this be exclusively for the CPU Tails?
//             I didn't find a way to trigger this procedure yet.
// (93.14%) https://decomp.me/scratch/CpseV
NONMATCH("asm/non_matching/game/stage/Player__Player_Tails_804571C.inc", void Player_Tails_804571C(Player *p))
{
    u16 gravityFlag = (gStageFlags & STAGE_FLAG__GRAVITY_INVERTED);

    p->layer = gPlayer.layer;

    if (gPlayer.moveState & MOVESTATE_1000000) {
        gPlayer.layer ^= 0x1;
    }

    if (p->moveState & MOVESTATE_IN_WATER) {
        p->charState = CHARSTATE_SWIMMING;
    } else {
        p->charState = CHARSTATE_FLYING;
    }

    if (I(p->qWorldX) < gCamera.x - CAM_REGION_WIDTH) {
        p->qWorldX = Q(gCamera.x - CAM_REGION_WIDTH);
    }

    if (I(p->qWorldX) > gCamera.x + DISPLAY_WIDTH + CAM_REGION_WIDTH) {
        p->qWorldX = Q(gCamera.x + DISPLAY_WIDTH + CAM_REGION_WIDTH);
    }

    if (I(p->qWorldY) < gCamera.y - CAM_REGION_WIDTH) {
        p->qWorldY = Q(gCamera.y - CAM_REGION_WIDTH);
    }

    if (I(p->qWorldY) > gCamera.y + DISPLAY_HEIGHT + CAM_REGION_WIDTH) {
        p->qWorldY = Q(gCamera.y + DISPLAY_HEIGHT + CAM_REGION_WIDTH);
    }
    // _080457CE

    if (((I(p->qWorldX) - 32) < I(gPlayer.qWorldX)) && ((I(p->qWorldX) + 32) > I(gPlayer.qWorldX))
        && ((!gravityFlag && ((I(p->qWorldY) - 32) < I(gPlayer.qWorldY) - 48) && ((I(p->qWorldY) + 32) > I(gPlayer.qWorldY) - 48))
            || (gravityFlag && ((I(p->qWorldY) - 32) < I(gPlayer.qWorldY) + 48) && ((I(p->qWorldY) + 32) > I(gPlayer.qWorldY) + 48)))
        && (SA2_LABEL(sub_8022F58)(0, p) >= 0)) {
        // _08045834 + 0xA
        p->moveState &= ~MOVESTATE_20;
        p->moveState &= ~MOVESTATE_100;
        p->moveState &= ~MOVESTATE_SPINDASH;
        p->SA2_LABEL(unk61) = 0;
        p->SA2_LABEL(unk62) = 0;
        p->SA2_LABEL(unk63) = 0;
        p->moveState &= ~MOVESTATE_8000;

        if (p->character == CHARACTER_TAILS) {
            m4aSongNumStop(SE_TAILS_PROPELLER_FLYING);
        }

        if (p->character == CHARACTER_AMY) {
            p->moveState &= ~(MOVESTATE_2000000 | MOVESTATE_4000000);
        }

        p->qSpeedGround = Q(0);
        p->qSpeedAirX = Q(0);
        p->qSpeedAirY = Q(0);

        p->charState = CHARSTATE_56;
        p->moveState &= ~MOVESTATE_4;
        p->moveState &= ~MOVESTATE_FLIP_WITH_MOVE_DIR;
        p->moveState &= ~MOVESTATE_200;
        p->moveState &= ~MOVESTATE_100000;
        p->moveState &= ~MOVESTATE_800000;
        p->moveState &= ~MOVESTATE_DEAD;
        p->moveState &= ~MOVESTATE_IGNORE_INPUT;
        p->moveState &= ~MOVESTATE_IA_OVERRIDE;
        p->moveState &= ~MOVESTATE_STOOD_ON_OBJ;
        p->stoodObj = NULL;

        gCurTask->main = Task_8045B38;
    } else {
        s32 r2;
        s32 qWorld;
        s32 qDelta;
        s32 world;
        // _080458F8
        if ((I(p->qWorldX) + 1) < I(gPlayer.qWorldX)) {
            p->qWorldX += Q(2);
            p->moveState &= ~MOVESTATE_FACING_LEFT;
        } else if (I(gPlayer.qWorldX) < (I(p->qWorldX) - 1)) {
            p->qWorldX -= Q(2);
            p->moveState |= MOVESTATE_FACING_LEFT;
        }
        // _08045934

        world = I(p->qWorldY);
        qDelta = p->qWorldY;

        if (!gravityFlag) {
            r2 = I(gPlayer.qWorldY) - 48;
        } else {
            r2 = I(gPlayer.qWorldY) + 48;
        }

        if (world < r2) {
            qDelta = +Q(1);
        } else if (r2 < world) {
            qDelta = -Q(1);
        } else {
            return;
        }

        p->qWorldY += qDelta;
    }
}
END_NONMATCH

// (90.78%) https://decomp.me/scratch/SwkK7
NONMATCH("asm/non_matching/game/stage/Player__Task_804597C.inc", void Task_804597C(void))
{
    PlayerSpriteInfo *psiPartnerBody = gPartner.spriteInfoBody;
    PlayerSpriteInfo *psiPartnerLimbs = gPartner.spriteInfoLimbs;
    s32 qPartnerWorldY = gPartner.qWorldY;
    u32 qPartnerMovestate = gPartner.moveState;
    Camera *cam = &gCamera;
    s32 qWorld;

    if (!(qPartnerMovestate & MOVESTATE_80000000)) {
        s32 r1;

        if (!GRAVITY_IS_INVERTED) {
            if (qPartnerWorldY >= Q(cam->y) + Q(DISPLAY_WIDTH) - 1) {
                r1 = 1;
            } else {
                r1 = 0;
            }
        } else {
            if (qPartnerWorldY > Q(cam->y - (DISPLAY_HEIGHT / 2))) {
                r1 = 0;
            } else {
                r1 = 1;
            }
        }

        if (r1) {
            // _080459D8

            gPartner.qWorldX = Q(cam->x - 256);
            gPartner.qWorldY = Q(cam->y - 256);
            gPartner.spriteInfoBody->s.frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;
            gPartner.spriteInfoBody->s.frameFlags |= SPRITE_FLAG(PRIORITY, 2);
            gPartner.moveState &= ~MOVESTATE_20;
            gPartner.moveState &= ~MOVESTATE_DEAD;

            if (gPartner.moveState & MOVESTATE_IN_WATER) {
                gPartner.charState = CHARSTATE_SWIMMING;
            } else {
                gPartner.charState = CHARSTATE_FLYING;
            }

            // Inline of Player_InitializeDrowning?
            gPartner.framesUntilDrownCountDecrement = ZONE_TIME_TO_INT(0, 1);
            gPartner.secondsUntilDrown = 30;

            if (gPartner.playerID == 0) {
                m4aSongNumStop(MUS_DROWNING);
            }
            // _08045A4E

            gCurTask->main = Task_8045AD8;
            return;
        }
    }
    // _08045A60

    gPartner.qWorldX += gPartner.qSpeedAirX;

    if ((gStageFlags ^ SA2_LABEL(gUnknown_0300544C)) & STAGE_FLAG__GRAVITY_INVERTED) {
        gPartner.qSpeedAirY = -gPartner.qSpeedAirY;
    }
    // _08045A80

    if (gStageFlags & STAGE_FLAG__GRAVITY_INVERTED) {
        qWorld = gPartner.qWorldY - gPartner.qSpeedAirY;
    } else {
        qWorld = gPartner.qWorldY + gPartner.qSpeedAirY;
    }

    gPartner.qWorldY = qWorld;

    if (!(gPartner.moveState & MOVESTATE_IN_WATER)) {
        gPartner.qSpeedAirY += Q(42. / 256.);
    } else {
        gPartner.qSpeedAirY += Q(12. / 256.);
    }

    SA2_LABEL(sub_802486C)(&gPartner, psiPartnerBody);
    SA2_LABEL(sub_8024B10)(&gPartner, psiPartnerBody);
    SA2_LABEL(sub_8024F74)(&gPartner, psiPartnerLimbs);
}
END_NONMATCH

void Task_8045AD8(void)
{
    Player *partner = &gPartner;

    SA2_LABEL(sub_8023878)(partner);

    if (gPartner.character == CHARACTER_TAILS) {
        Player_Tails_804571C(partner);
    }

    SA2_LABEL(sub_802486C)(partner, gPartner.spriteInfoBody);
    SA2_LABEL(sub_8024B10)(partner, gPartner.spriteInfoBody);
    SA2_LABEL(sub_8024F74)(partner, gPartner.spriteInfoLimbs);

    if (gPartner.charState != CHARSTATE_HIT_AIR) {
        if (gPartner.timerInvulnerability > 0) {
            gPartner.timerInvulnerability--;
        }
    }

    partner->SA2_LABEL(unk25) = 120;
}

void Task_8045B38(void)
{
    Player *partner = &gPartner;
    PlayerSpriteInfo *psiBody;

    if (!IS_ALIVE(partner)) {
        gCurTask->main = Task_804597C;

        partner->charState = CHARSTATE_DEAD;
        partner->qSpeedAirX = Q(0);
        partner->timerInvulnerability = 2;
        partner->itemEffect = 0;
        partner->moveState &= ~MOVESTATE_20;
        partner->moveState &= ~MOVESTATE_STOOD_ON_OBJ;
        partner->stoodObj = NULL;
        psiBody = partner->spriteInfoBody;
        psiBody->s.frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;
        psiBody->s.frameFlags |= SPRITE_FLAG(PRIORITY, 1);
        partner->SA2_LABEL(unk80) = Q(1.0);
        partner->SA2_LABEL(unk82) = Q(1.0);

        m4aSongNumStop(SE_TAILS_PROPELLER_FLYING);

        if (partner->secondsUntilDrown < 0) {
            m4aSongNumStart(SE_DROWNED);
        } else {
            m4aSongNumStart(SE_LIFE_LOST);
        }
    } else {
        sub_8045DF0(partner);
        SA2_LABEL(sub_8023878)(partner);

        if ((I(partner->qWorldX) < gCamera.x - CAM_REGION_WIDTH) || (I(partner->qWorldX) > gCamera.x + DISPLAY_WIDTH + CAM_REGION_WIDTH)
            || (I(partner->qWorldY) < gCamera.y - CAM_REGION_WIDTH)
            || (I(partner->qWorldY) > gCamera.y + DISPLAY_HEIGHT + CAM_REGION_WIDTH)) {
            if (partner->character == CHARACTER_TAILS) {
                if (partner->moveState & MOVESTATE_IN_WATER) {
                    partner->charState = CHARSTATE_SWIMMING;
                } else {
                    partner->charState = CHARSTATE_FLYING;
                }
            }

            partner->moveState |= MOVESTATE_DEAD;
            partner->moveState &= ~MOVESTATE_20;

            // Inline of Player_InitializeDrowning?
            partner->framesUntilDrownCountDecrement = ZONE_TIME_TO_INT(0, 1);
            partner->secondsUntilDrown = 30;

            if (partner->playerID == PLAYER_1) {
                m4aSongNumStop(MUS_DROWNING);
            }

            gCurTask->main = Task_8045AD8;
        } else if (!(partner->moveState & MOVESTATE_IA_OVERRIDE)) {
            // TODO: This might be a macro.
            //       Task_8045B38 explicitly loads the partner data
            //       and that can only be Tails.
            //       (Unless gPartner is also used in MP matches?)
            switch (partner->character) {
                case CHARACTER_SONIC: {
                    Player_Sonic_80473AC(partner);
                } break;

                case CHARACTER_TAILS: {
                    Player_Tails_8047BA0(partner);
                } break;

                case CHARACTER_KNUCKLES: {
                    Player_Knuckles_8049000(partner);
                } break;

                case CHARACTER_AMY: {
                    Player_Amy_80497AC(partner);
                } break;
            }
        }
    }

    SA2_LABEL(sub_802486C)(partner, partner->spriteInfoBody);
    SA2_LABEL(sub_8024B10)(partner, partner->spriteInfoBody);
    SA2_LABEL(sub_8024F74)(partner, partner->spriteInfoLimbs);

    if (partner->charState != CHARSTATE_HIT_AIR) {
        if (partner->timerInvulnerability > 0) {
            partner->timerInvulnerability--;
        }
    }

    partner->SA2_LABEL(unk25) = 120;
}

// Confusion state related
void SA2_LABEL(sub_802460C)(Player *p)
{
    u8 r0;
    u8 r1;
    u8 r2;
    u16 r6;

    if (IS_MULTI_PLAYER && (SIO_MULTI_CNT->id != gCamera.spectatorTarget)) {
        p->heldInput = 0;
        r6 = 0;
        sub_804D13C(0);
    } else {
        r6 = p->heldInput;

        if (!(p->moveState & MOVESTATE_IGNORE_INPUT)) {
            p->heldInput = gInput;

            if (IS_MULTI_PLAYER && (p->itemEffect & PLAYER_ITEM_EFFECT__CONFUSION)) {
                r2 = ((p->heldInput & DPAD_ANY) >> 4);
                r1 = ((gStageTime + p->timerConfusion) & 0x3);

                if (r1 == 0) {
                    r1 = 1;
                }

                r2 <<= r1;
                r0 = ((r2 >> 4) | r2);
                r2 = r0 << 4;

                p->heldInput = (p->heldInput & 0xFF0F) | r2;
                if (--p->timerConfusion == 0) {
                    p->itemEffect &= ~PLAYER_ITEM_EFFECT__CONFUSION;
                }
            }

            sub_804D13C(p->heldInput);
        } else {
            sub_804D13C(0);
        }
    }

    r6 ^= p->heldInput;
    r6 &= p->heldInput;
    p->frameInput = r6;

    if (p->heldInput & DPAD_SIDEWAYS) {
        p->heldInput &= ~DPAD_VERTICAL;
    }

    if (p->frameInput & DPAD_SIDEWAYS) {
        p->frameInput &= ~DPAD_VERTICAL;
    }
}

// TODO: Remove gotos
void sub_8045DF0(Player *p)
{
    u16 r4 = p->heldInput;
    u16 r6 = r4;
    u32 r5;

    if (!(p->moveState & MOVESTATE_IGNORE_INPUT)) {
        r4 = gUnknown_030060F0[20];

        if (((p->rotation + Q(0.125)) & 0xC0) == 0) {
            if ((p->qWorldX + Q(16)) < gPlayer.qWorldX) {

                if (!(r4 & DPAD_DOWN)) {
                    r4 |= DPAD_RIGHT;
                    r4 &= ~DPAD_LEFT;
                }

            } else if ((p->qWorldX - Q(16)) > gPlayer.qWorldX) {
                // _08045E48 + 0x8
                if (!(r4 & DPAD_DOWN)) {
                    r4 |= DPAD_LEFT;
                    r4 &= ~DPAD_RIGHT;
                }
            } else {
                r4 &= ~(DPAD_LEFT | DPAD_RIGHT);
            }
            // _08045E74

            if (!(r4 & DPAD_SIDEWAYS) && (p->qSpeedGround == Q(0)) && !(p->moveState & MOVESTATE_IN_AIR) && (p->SA2_LABEL(unk62) == 0)
                && ((p->charState == 4) || (p->charState == 0))
                && !(p->moveState & (MOVESTATE_800000 | MOVESTATE_8000 | MOVESTATE_SPINDASH | MOVESTATE_200 | MOVESTATE_STOOD_ON_OBJ))) {
                if (gPlayer.moveState & MOVESTATE_FACING_LEFT) {
                    if (!(p->moveState & MOVESTATE_FACING_LEFT)) {
                        p->moveState |= MOVESTATE_FACING_LEFT;
                        p->charState = CHARSTATE_8;
                    }
                } else {
                    if (p->moveState & MOVESTATE_FACING_LEFT) {
                        p->moveState &= ~MOVESTATE_FACING_LEFT;
                        p->charState = CHARSTATE_8;
                    }
                }
            }
        }
    }
    // _08045EEE
    r5 = r4;
    r5 &= ~r6;

    if (!(p->moveState & MOVESTATE_IGNORE_INPUT)) {
        switch (p->moveState & MOVESTATE_IN_AIR) {
            case 0: {
                if (!GRAVITY_IS_INVERTED) {
                    if (p->qWorldY - Q(80) > gPlayer.qWorldY) {
                        goto _08045FC6;
                    }
                } else {
                    // _08045F38
                    if (p->qWorldY + Q(80) < gPlayer.qWorldY) {
                        r5 |= gPlayerControls.jump;
                    }
                }
            } break;

            case MOVESTATE_IN_AIR: {
                if (!GRAVITY_IS_INVERTED) {
                    if (p->qWorldY > gPlayer.qWorldY - Q(16)) {
                        goto _08045F90;
                    }
                } else {
                    // _08045F7C
                    if (p->qWorldY < gPlayer.qWorldY + Q(16)) {
                    _08045F90:
                        if ((p->SA2_LABEL(unk61) != 0) || (p->qSpeedAirY > Q(0))) {
                            // _08045FA8
                            if (!GRAVITY_IS_INVERTED) {
                                if (p->qWorldY > gPlayer.qWorldY) {
                                    goto _08045FC6;
                                }
                            } else {
                                // _08045FC0
                                if (p->qWorldY < gPlayer.qWorldY) {
                                _08045FC6:
                                    r5 |= gPlayerControls.jump;
                                }
                            }
                        } else {
                            r4 |= gPlayerControls.jump;
                        }
                    }
                }
            } break;
        }
    }
    // _08045FDA

    if (r4 & DPAD_SIDEWAYS) {
        r4 &= ~DPAD_VERTICAL;
    }
    // _08045FE8

    if (r5 & DPAD_SIDEWAYS) {
        u16 mask = ~DPAD_VERTICAL;
        r5 &= mask;
    }

    // _08045FF4
    p->heldInput = r4;
    p->frameInput = r5;
}

// This function is in SA2, but looks very different in many aspects
// (99.16%) https://decomp.me/scratch/7kBSw
NONMATCH("asm/non_matching/game/stage/Player__sa2__sub_802486C.inc", void SA2_LABEL(sub_802486C)(Player *p, PlayerSpriteInfo *psi))
{
    s32 speed;
    Sprite *s = &psi->s;

    if (p->moveState & MOVESTATE_20) {
        p->SA2_LABEL(unk62) = 0;
        p->SA2_LABEL(unk63) = 0;
        p->charState = 14;
    }

    p->anim = sCharStateAnimInfo[p->charState][0];

    if (p->charState < CHARSTATE_SHARED_COUNT) {
        p->anim += gPlayerCharacterIdleAnims[p->character];
    }
    p->variant = sCharStateAnimInfo[p->charState][1];
    psi->s.animSpeed = SPRITE_ANIM_SPEED(1.0);

#if (GAME == GAME_SA1)
    if ((p->qSpeedGround != Q(0)) || (p->heldInput & (DPAD_ANY | A_BUTTON | B_BUTTON))) {
        p->SA2_LABEL(unk72) = ZONE_TIME_TO_INT(0, 6);
    }

#endif
    switch (p->charState) {
        case 0: {
            if (p->SA2_LABEL(unk72) != 0) {
                p->SA2_LABEL(unk72)--;
            } else {
                p->anim = gPlayerCharacterIdleAnims[p->character] + 1; // SA1_CHAR_ANIM_WALK;
                p->variant = 0; // p->walkAnim;
            }
        } break;

        case 4: {
            if (ABS(p->qSpeedGround) >= Q(4.5)) {
                p->anim = gPlayerCharacterIdleAnims[p->character] + 5;
                p->variant = 0;
                s->animSpeed = SPRITE_ANIM_SPEED(1.0);
                break;
            }
        } // FALLTHROUGH

        case 24:
        case 25:
        case 26: {
            s32 animSpeed = (ABS(p->qSpeedGround) >> 4);
            if (animSpeed >= SPRITE_ANIM_SPEED(0.5)) {
                if (animSpeed > SPRITE_ANIM_SPEED(1.0)) {
                    animSpeed = SPRITE_ANIM_SPEED(1.0);
                }
            } else {
                animSpeed = SPRITE_ANIM_SPEED(0.5);
            }
            s->animSpeed = animSpeed;
        } break;

        case 21:
        case 85: {
            if (p->qSpeedAirY >= -Q(1.5)) {
                p->charState = CHARSTATE_18;
            }
        } break;

        case 9: {
            if (ABS(p->qSpeedGround) < Q(1.5)) {
                // _080461A2 + 0x6
                p->anim = gPlayerCharacterIdleAnims[p->character] + 7;
                p->variant = 0;
            }
            // _080461C4

            if ((gStageTime % 4u) == 0) {
                s32 offsetY = p->spriteOffsetY;

                if (GRAVITY_IS_INVERTED) {
                    offsetY = -offsetY;
                }

                CreateBrakingDustEffect(I(p->qWorldX), I(p->qWorldY) + offsetY);
            }
        } break;

        case 16: {
            if ((((p->rotation + Q(0.125)) & 0xC0) != 0)) {
                p->anim = gPlayerCharacterIdleAnims[p->character] + 44;
                p->variant = 1;
                p->moveState &= ~MOVESTATE_FACING_LEFT;
            }

        } break;
    }

    if (p->moveState & MOVESTATE_IN_WATER) {
        s->animSpeed -= (s->animSpeed >> 1);
    }

    if (!(p->moveState & MOVESTATE_FACING_LEFT)) {
        SPRITE_FLAG_SET(s, X_FLIP);
    } else {
        SPRITE_FLAG_CLEAR(s, X_FLIP);
    }

    if (GRAVITY_IS_INVERTED) {
        SPRITE_FLAG_SET(s, Y_FLIP);
    } else {
        SPRITE_FLAG_CLEAR(s, Y_FLIP);
    }

    if (IS_MULTI_PLAYER) {
        p->SA2_LABEL(unk98) = 0;
    }

    if (
#if (GAME == GAME_SA2)
        p->SA2_LABEL(unk6C) ||
#endif
        (s->graphics.anim != p->anim) || (s->variant != p->variant)) {
#if (GAME == GAME_SA2)
        p->SA2_LABEL(unk6C) = FALSE;
#endif
        s->graphics.anim = p->anim;
        s->variant = p->variant;
        s->prevVariant = -1;
        s->hitboxes[0].index = -1;
        s->hitboxes[1].index = -1;

        if (IS_MULTI_PLAYER) {
            p->SA2_LABEL(unk98) = 1;
        }
    }

    p->prevCharState = p->charState;
}
END_NONMATCH

// NOTE: Main thing preventing this to match are the jumps due to the
//       if-else blocks setting CHARSTATE_IDLE and CHARSTATE_WALK.
//       It "matches semantically".
// (99.99%) https://decomp.me/scratch/e9oqw
NONMATCH("asm/non_matching/game/stage/Player__sa2__sub_8024B10.inc", void SA2_LABEL(sub_8024B10)(Player *p, PlayerSpriteInfo *inPsi))
{
    struct MultiSioData_0_4 *send;
    MultiplayerPlayer *mpp;
    AnimCmdResult acmdRes;
    Sprite *s = &inPsi->s;
    PlayerSpriteInfo *psi = inPsi;

    struct Camera *cam = &gCamera;
    s16 camX = cam->x;
    s16 camY = cam->y;

    // required for match
#ifndef BUG_FIX
    // The prevAnim check compares to a 0xFF, not 0xFFFF!
    bool32 cond = ({
        bool32 r2 = s->prevVariant == 0xFF || s->prevAnim == 0xFF;
        r2;
    });
#else
    bool32 cond = ({
        bool32 r2 = s->prevVariant == 0xFF || s->prevAnim == 0xFFFF;
        r2;
    });
#endif

top:
    s->x = I(p->qWorldX) - camX;
    s->y = I(p->qWorldY) - camY;

    psi->transform.x = I(p->qWorldX) - camX;
    psi->transform.y = I(p->qWorldY) - camY;
#if (GAME == GAME_SA1)
    if (p->charState == CHARSTATE_WALK || p->charState == 23 || p->charState == 32 || p->charState == 40)
#elif (GAME == GAME_SA2)
    if (p->charState == CHARSTATE_WALK_A || p->charState == CHARSTATE_GRINDING || p->charState == CHARSTATE_ICE_SLIDE
        || p->charState == CHARSTATE_WALK_B || (p->charState == CHARSTATE_CREAM_CHAO_ATTACK && p->character == CHARACTER_CREAM))
#endif
    {
        if (p->charState != 32) {
            psi->transform.rotation = p->rotation << 2;
        }
        // _08046386

        s->frameFlags &= ~(SPRITE_FLAG_MASK_X_FLIP | SPRITE_FLAG_MASK_Y_FLIP);
        s->frameFlags &= ~SPRITE_FLAG_MASK_ROT_SCALE;
        s->frameFlags |= p->playerID | SPRITE_FLAG_MASK_ROT_SCALE_ENABLE;

        MACRO_8024B10_PSI_UPDATE(p, psi);
        if (IS_SINGLE_PLAYER) {
            // _08046464
            TransformSprite(s, &psi->transform);
        }
    } else {
        // _08046474
        psi->transform.rotation = 0;
        s->frameFlags &= ~(SPRITE_FLAG_MASK_ROT_SCALE_ENABLE | SPRITE_FLAG_MASK_ROT_SCALE);

        if (!(p->moveState & MOVESTATE_FACING_LEFT)) {
            s->frameFlags |= SPRITE_FLAG_MASK_X_FLIP;
        } else {
            // _08046498
            s->frameFlags &= ~SPRITE_FLAG_MASK_X_FLIP;
            s->frameFlags &= ~SPRITE_FLAG_MASK_ROT_SCALE;
            s->frameFlags &= ~SPRITE_FLAG_MASK_ROT_SCALE_ENABLE;
            s->x++;
        }
        // _080464A8

        if (GRAVITY_IS_INVERTED) {
            s->frameFlags |= SPRITE_FLAG_MASK_Y_FLIP;
        } else {
            s->frameFlags &= ~SPRITE_FLAG_MASK_Y_FLIP;
        }
        // _080464D6

        acmdRes = UpdateSpriteAnimation(s);
#if (GAME == GAME_SA1)
        if (acmdRes == ACMD_RESULT__ENDED) {
            s8 oldCharState = p->charState; // sp04

            // TODO: Seems like this is a switch-case?
            if (p->charState == CHARSTATE_7) {
                p->charState = CHARSTATE_SPINDASH;
            } else if (p->charState == CHARSTATE_3) {
                if (p->qSpeedGround != 0) {
                    p->charState = CHARSTATE_WALK;
                } else {
                    p->charState = CHARSTATE_IDLE;
                }
            } else if (p->charState == CHARSTATE_11) {
                p->charState = CHARSTATE_IDLE;
            } else if (p->charState == CHARSTATE_22) {
                p->charState = CHARSTATE_WALK;
            } else if (p->charState == CHARSTATE_17) {
                p->charState = CHARSTATE_19;
            } else if (p->charState == CHARSTATE_18) {
                p->charState = CHARSTATE_19;
            } else if (p->charState == CHARSTATE_27) {
                p->charState = CHARSTATE_WALK;
            } else if (p->charState == CHARSTATE_74) {
                // _0804652C + 0x4
                if (p->moveState & MOVESTATE_FACING_LEFT) {
                    p->qWorldX -= Q(p->spriteOffsetX + 3);
                } else {
                    // _08046548
                    p->qWorldX += Q(p->spriteOffsetX + 3);
                }
                PLAYERFN_SET_SHIFT_OFFSETS(p, 6, 14);

                // TODO: What is going on here?
                if (GRAVITY_IS_INVERTED) {
                    p->qWorldY += Q(p->spriteOffsetY);
                } else {
                    p->qWorldY -= Q(14);
                }
                // _0804657E

                p->charState = CHARSTATE_75;

                p->SA2_LABEL(unk62)++;

            } else if (p->charState == CHARSTATE_75) {
                // _08046594 + 0x4
                p->rotation = 0;
                SA2_LABEL(sub_8021BE0)(p);
            } else if (p->charState == CHARSTATE_45 || p->charState == CHARSTATE_48) {
                // _080465A4
                p->moveState &= ~MOVESTATE_20;
                p->moveState &= ~MOVESTATE_100;
                p->moveState &= ~MOVESTATE_SPINDASH;

                p->SA2_LABEL(unk61) = 0;
                p->SA2_LABEL(unk62) = 0;
                p->SA2_LABEL(unk63) = 0;
                p->moveState &= ~MOVESTATE_8000;

                if (p->character == CHARACTER_TAILS) {
                    m4aSongNumStop(SE_TAILS_PROPELLER_FLYING);
                }
                // _080465E0

                if (p->character == CHARACTER_AMY) {
                    p->moveState &= ~(MOVESTATE_2000000 | MOVESTATE_4000000);
                }
                // _080465F0
                if (p->qSpeedGround == 0) {
                    p->charState = CHARSTATE_IDLE;
                } else {
                    p->charState = CHARSTATE_WALK;
                }
            } else if (p->charState == CHARSTATE_46) {
                // _08046608 + 0xA
                if (p->SA2_LABEL(unk63) == 1) {
                    if (p->moveState & MOVESTATE_FACING_LEFT) {
                        p->qSpeedGround = -Q(4);
                    } else {
                        p->qSpeedGround = +Q(4);
                    }
                    // _08046632

                    p->SA2_LABEL(unk62)++;
                    p->SA2_LABEL(unk63) = 0;

                    p->charState = CHARSTATE_47;

                    m4aSongNumStart(SE_SONIC_SKID_ATTACK);
                } else if (p->SA2_LABEL(unk63) == 2) {
                    // _0804664E + 0x4
                    p->moveState &= ~MOVESTATE_20;
                    p->moveState &= ~MOVESTATE_100;
                    p->moveState &= ~MOVESTATE_SPINDASH;

                    p->SA2_LABEL(unk61) = 0;
                    p->SA2_LABEL(unk62) = 0;
                    p->SA2_LABEL(unk63) = 0;
                    p->moveState &= ~MOVESTATE_8000;

                    if (p->character == CHARACTER_TAILS) {
                        m4aSongNumStop(SE_TAILS_PROPELLER_FLYING);
                    }
                    // _0804668C

                    if (p->character == CHARACTER_AMY) {
                        p->moveState &= ~(MOVESTATE_2000000 | MOVESTATE_4000000);
                    }
                    // _0804669C

                    p->qSpeedAirX = -p->qSpeedAirX;
                    p->qSpeedAirY = -Q(4.875);

                    if (p->moveState & MOVESTATE_IN_WATER) {
                        p->qSpeedAirY = -Q(2.625);
                    }
                    // _080466B4

                    p->moveState |= MOVESTATE_IN_AIR;
                    p->moveState |= MOVESTATE_4;
                    PLAYERFN_CHANGE_SHIFT_OFFSETS(p, 6, 9);

                    p->charState = CHARSTATE_49;

                    m4aSongNumStart(SE_JUMP);
                } else {
                    // _080466F0
                    p->SA2_LABEL(unk62) = 0;
                    p->SA2_LABEL(unk63) = 0;
                    p->charState = CHARSTATE_IDLE;
                    p->defeatScoreIndex = 0;
                    p->qSpeedGround = 0;
                }

            } else if (p->charState == CHARSTATE_54) {
                // _08046704 + 4
                p->charState = CHARSTATE_FLYING;
            } else if (p->charState == CHARSTATE_58) {
                p->charState = CHARSTATE_SWIMMING;
            } else if (p->charState == CHARSTATE_GROUND_ATTACK) {
                // _08046714 + 0x4

                p->SA2_LABEL(unk62) = 0;
                p->SA2_LABEL(unk63) = 0;

                if (p->qSpeedGround == 0) {
                    p->charState = CHARSTATE_IDLE;
                } else {
                    p->charState = CHARSTATE_WALK;
                }

                p->defeatScoreIndex = 0;
            } else if (p->charState == CHARSTATE_64) {
                SA2_LABEL(sub_8021BE0)(p);
            } else if (p->charState == CHARSTATE_70) {
                p->charState = CHARSTATE_71;
            } else if (p->charState == CHARSTATE_76 || p->charState == CHARSTATE_77) {
                // _0804674E + 0xA

                if (p->SA2_LABEL(unk63) != 0) {
                    s32 qSpeed;

                    p->SA2_LABEL(unk62)++;
                    p->SA2_LABEL(unk63) = 0;

                    if (p->charState == CHARSTATE_77) {
                        m4aSongNumStart(SE_127);
                    } else {
                        m4aSongNumStart(SE_126);
                    }
                    // _08046788

                    p->charState++;

                    qSpeed = Q(3);
                    if (p->moveState & MOVESTATE_FACING_LEFT) {
                        qSpeed = -qSpeed;
                    }
                    p->qSpeedGround += qSpeed;
                } else {
                    // _080467A6
                    p->SA2_LABEL(unk62) = 0;
                    p->SA2_LABEL(unk63) = 0;
                    p->charState = CHARSTATE_IDLE;
                    p->defeatScoreIndex = 0;
                    p->qSpeedGround = 0;
                }
            } else if (p->charState == CHARSTATE_87) {
                s32 qSpeed;
                // _080467B8 + 0x4

                if (p->SA2_LABEL(unk63) == 0) {
                    p->SA2_LABEL(unk62) = 0;

                    if (p->qSpeedGround != 0) {
                        p->charState = CHARSTATE_WALK;
                    } else {
                        p->charState = CHARSTATE_IDLE;
                    }
                } else {
                    p->SA2_LABEL(unk63) = 0;
                    p->SA2_LABEL(unk62)++;
                    p->charState = CHARSTATE_88;

                    qSpeed = Q(3);
                    if (p->moveState & MOVESTATE_FACING_LEFT) {
                        qSpeed = -qSpeed;
                    }
                    p->qSpeedGround += qSpeed;

                    CreateAmyAttackHeartEffect();
                }
            } else if (p->charState == CHARSTATE_88) {
                p->SA2_LABEL(unk62) = 0;

                if (p->qSpeedGround != 0) {
                    p->charState = CHARSTATE_WALK;
                } else {
                    p->charState = CHARSTATE_IDLE;
                }
            } else if (p->charState == CHARSTATE_93) {
                p->SA2_LABEL(unk62) = 0;
                p->SA2_LABEL(unk63) = 0;
                p->charState = CHARSTATE_IDLE;
                p->defeatScoreIndex = 0;
            }

            // _08046836
            if (p->charState != oldCharState) {
                SA2_LABEL(sub_802486C)(p, inPsi);
                goto top;
            }
        }
#endif
    }
    // _0804684E

    if (IS_SINGLE_PLAYER) {
        // Draw Player sprite in SP modes
        if (p->moveState & MOVESTATE_DEAD
            || (!(p->moveState & MOVESTATE_100000) && (p->timerInvulnerability == 0 || (gStageTime & 2) == 0))) {
            DisplaySprite(s);
        }

#ifndef NON_MATCHING
        if (IS_SINGLE_PLAYER)
#endif
        {
            return;
        }
    }

    send = &gMultiSioSend.pat4;
    mpp = TASK_DATA(gMultiplayerPlayerTasks[SIO_MULTI_CNT->id]);
#if (GAME == GAME_SA1)
    send->unk0 = 0x1000;
#elif (GAME == GAME_SA2)
    send->unk0 = 0x5000;
#endif
    send->x = I(p->qWorldX) + p->SA2_LABEL(unk7C);
    send->y = I(p->qWorldY);
    send->unk6 = s->graphics.anim;
    send->unkA = p->itemEffect;
    if (gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
#if (GAME == GAME_SA2)
        send->unk6 -= gPlayerCharacterIdleAnims[p->character];
#endif
        send->unk6 |= gRingCount << 8;
    }
#if (GAME == GAME_SA1)
    else if (gGameMode == 4 || gGameMode == 5) {
        send->unk6 |= (mpp->unk5C & 0x70000) >> 4;
    }
#endif

    send->unkB = s->variant | (p->spriteOffsetY << 3);
    send->unkC = s->animSpeed;
    send->unkD = psi->transform.rotation >> 2;

    if (s->frameFlags & SPRITE_FLAG_MASK_ROT_SCALE_ENABLE) {
        send->unk8 |= 1;
    } else {
        send->unk8 &= ~1;
    }

    if (!(p->moveState & 1)) {
        send->unk8 |= 2;
    } else {
        send->unk8 &= ~2;
    }

    if (GRAVITY_IS_INVERTED) {
        send->unk8 |= 8;
    } else {
        send->unk8 &= ~8;
    }

    if (p->moveState & MOVESTATE_DEAD || mpp->unk5C & 1
#if (GAME == GAME_SA2)
        || p->moveState & MOVESTATE_IN_SCRIPTED
#endif
        || p->timerInvulnerability != 0) {
        send->unk8 |= 4;
    } else {
        send->unk8 &= ~4;
    }

    if (mpp->unk5C & 1) {
        send->unk8 |= 0x100;
    } else {
        send->unk8 &= ~0x100;
    }

    if (p->moveState & MOVESTATE_100000) {
        send->unk8 |= 0x40;
    } else {
        send->unk8 &= ~0x40;
    }

    send->unk8 &= ~0x30;
    send->unk8 |= ((gPlayer.spriteInfoBody->s.frameFlags & 0x3000) >> 8);
    if (p->layer != 0) {
        send->unk8 |= 0x80;
    } else {
        send->unk8 &= ~0x80;
    }

    if (cond) {
        send->unk8 |= 0x800;
    } else {
        send->unk8 &= ~0x800;
    }

    mpp->unk64 = SIO_MULTI_CNT->id;
    if (gPlayer.moveState & MOVESTATE_STOOD_ON_OBJ) {
        u8 i;
        for (i = 0; i < MULTI_SIO_PLAYERS_MAX; i++) {
            s32 id = SIO_MULTI_CNT->id;
            if (id != i) {
                MultiplayerPlayer *mpp2;
                if (gMultiplayerPlayerTasks[i] == NULL) {
                    break;
                }

                mpp2 = TASK_DATA(gMultiplayerPlayerTasks[i]);
                if (gPlayer.stoodObj == &mpp2->s) {
                    mpp->unk64 = i;
                }
            }
        }
    }

    send->unk8 &= ~0x600;
    send->unk8 |= (mpp->unk64 << 9);
}
END_NONMATCH

void SA2_LABEL(sub_8024F74)(Player *p, PlayerSpriteInfo *inPsi)
{
    struct MultiSioData_0_4 *recv;

    Sprite *s = &inPsi->s;
    PlayerSpriteInfo *psi = inPsi;

    struct Camera *cam = &gCamera;
    s16 camX = cam->x;
    s16 camY = cam->y;

    if (IS_MULTI_PLAYER) {
        s32 id = SIO_MULTI_CNT->id;
        recv = &gMultiSioRecv[id].pat4;
        psi->transform.x = recv->x - camX;
        psi->transform.y = recv->y - camY;
    } else {
        psi->transform.x = I(p->qWorldX) - camX;
        psi->transform.y = I(p->qWorldY) - camY;
    }

    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    if (p->moveState & MOVESTATE_IN_WATER) {
        s->animSpeed = 8;
    }

    switch (p->character) {
        case CHARACTER_AMY:
        case CHARACTER_KNUCKLES:
        case CHARACTER_SONIC:
            break;

#if (GAME == GAME_SA2)
        case CHARACTER_CREAM: {
            u16 anim = p->anim;
            u16 variant = p->variant;
            anim = anim - gPlayerCharacterIdleAnims[p->character];
            if (MACRO_8024F74_ANIM_CHECK(anim, variant)) {
                u8 rotation = p->rotation;
                p->w.cf.unkB0 = rotation;
                psi->transform.rotation = rotation << 2;
                s->frameFlags &= ~SPRITE_FLAG_MASK_ROT_SCALE;
                s->frameFlags |= SA2_LABEL(gUnknown_030054B8)++ | SPRITE_FLAG_MASK_ROT_SCALE_ENABLE;

                MACRO_8024B10_PSI_UPDATE(p, psi);
                TransformSprite(s, &psi->transform);

                if (p->moveState & MOVESTATE_DEAD
                    || (!(p->moveState & MOVESTATE_100000) && (p->timerInvulnerability == 0 || (gStageTime & 2) == 0))) {
                    DisplaySprite(s);
                }
            }
            break;
        }
#endif
        case CHARACTER_TAILS: {
            s32 asx = p->qSpeedAirX;
            s32 asy = p->qSpeedAirY;

            u16 anim = p->anim;
            u16 variant = p->variant;
            anim = anim - gPlayerCharacterIdleAnims[p->character];

#if (GAME == GAME_SA2)
            if (MACRO_8024F74_ANIM_CHECK(anim, variant))
#endif
            {
                u8 shift;
                if (asx != 0 || asy != 0) {
                    shift = (I(ArcTan2(asx, asy)) + 0x40);
                } else {
                    shift = p->moveState & MOVESTATE_FACING_LEFT ? 0xC0 : 0x40;
                }
                p->w.tf.shift = shift;

#if (GAME == GAME_SA1)
                if (p->charState == CHARSTATE_SPINATTACK)
#endif
                {
                    psi->transform.rotation = shift << 2;
                    s->frameFlags &= ~SPRITE_FLAG_MASK_ROT_SCALE;
                    s->frameFlags |= SA2_LABEL(gUnknown_030054B8)++ | SPRITE_FLAG_MASK_ROT_SCALE_ENABLE;

                    MACRO_8024B10_PSI_UPDATE(p, psi);
                    TransformSprite(s, &psi->transform);

                    if (p->moveState & MOVESTATE_DEAD
                        || (!(p->moveState & MOVESTATE_100000) && (p->timerInvulnerability == 0 || (gStageTime & 2) == 0))) {
                        DisplaySprite(s);
                    }
                }
            }
            break;
        }
    }
}

void CallSetStageSpawnPos(u32 character, u32 level, u32 playerID, Player *p) { SetStageSpawnPos(character, level, playerID, p); }

void DestroyPlayerTasks(Player *p)
{
    TaskDestroy(p->spriteTask);
    p->spriteTask = NULL;

    if (p->playerID == 0) {
        DestroyBrakingDustEffectRelatedTask();
        DestroyRingsScatterTask();
    }
}

// Called anytime the player actively jumps, "autojumps" through touching an IA,
// touches a Boost Pad or a Rotating Handle, touches the ground, etc.
// TODO: Find a better name.
void Player_TransitionCancelFlyingAndBoost(Player *p)
{
#if (GAME == GAME_SA1)
    p->moveState &= ~MOVESTATE_20;
    p->moveState &= ~MOVESTATE_100;
    p->moveState &= ~MOVESTATE_SPINDASH;

    p->SA2_LABEL(unk61) = 0;
    p->SA2_LABEL(unk62) = 0;
    p->SA2_LABEL(unk63) = 0;

    p->moveState &= ~MOVESTATE_8000;
#elif (GAME == GAME_SA2)
    if (p->moveState & MOVESTATE_20000) {
        m4aSongNumStop(SE_281);
    }

    p->moveState &= ~(MOVESTATE_SOME_ATTACK | MOVESTATE_10000000 | MOVESTATE_1000000 | MOVESTATE_80000 | MOVESTATE_40000 | MOVESTATE_20000
                      | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_400 | MOVESTATE_200 | MOVESTATE_100 | MOVESTATE_20
                      | MOVESTATE_FLIP_WITH_MOVE_DIR);

    p->SA2_LABEL(unk61) = 0;
    p->SA2_LABEL(unk62) = 0;
    p->SA2_LABEL(unk63) = 0;

    p->SA2_LABEL(unk71) = 0;
    p->SA2_LABEL(unk70) = FALSE;
#endif

    if (p->character == CHARACTER_TAILS) {
        m4aSongNumStop(SE_TAILS_PROPELLER_FLYING);
    }

#if (GAME == GAME_SA1)
    if (p->character == CHARACTER_AMY) {
        p->moveState &= ~(MOVESTATE_4000000 | MOVESTATE_2000000);
    }
#elif (GAME == GAME_SA2)
    if (p->character == CHARACTER_CREAM) {
        m4aSongNumStop(SE_CREAM_FLYING);
    }

    if (p->character == CHARACTER_SONIC) {
        p->moveState &= ~MOVESTATE_BOOST_EFFECT_ON;
    }
#endif
}

// s32 SA2_LABEL(sub_8029A28)(Player *p, u8 *p1, s32 *out)
s32 SA2_LABEL(sub_8029A28)(Player *p, u8 *p1, s32 *out)
{
    s32 result;

    u8 dummy;

    // TODO: Why is dummyInt unused?
    s32 dummyInt;
    s32 p1Value;

    if (p1 == NULL)
        p1 = &dummy;
    if (out == NULL)
        out = &dummyInt;

    result = SA2_LABEL(sub_802195C)(p, p1, out);

    p1Value = *p1;

    if (p1Value & 0x1)
        *p1 = 0;
    else {
        if (GRAVITY_IS_INVERTED) {
            s32 val = -0x80;
            val -= p1Value;
            *p1 = val;
        }
    }

    return result;
}

s32 SA2_LABEL(sub_8029A74)(Player *p, u8 *p1, s32 *out)
{
    s32 result;

    u8 dummy;

    s32 dummyInt;
    s32 p1Value;

    if (p1 == NULL)
        p1 = &dummy;
    if (out == NULL)
        out = &dummyInt;

    result = SA2_LABEL(sub_8021A34)(p, p1, out);

    p1Value = *p1;

    if (p1Value & 0x1)
        *p1 = 0;
    else {
        if (GRAVITY_IS_INVERTED) {
            s32 val = -0x80;
            val -= p1Value;
            *p1 = val;
        }
    }

    return result;
}

s32 SA2_LABEL(sub_8029AC0)(Player *p, u8 *p1, s32 *out)
{
    s32 result;

    u8 dummy;

    // TODO: Why is dummyInt unused?
    s32 dummyInt;
    s32 p1Value;

    if (p1 == NULL)
        p1 = &dummy;
    if (out == NULL)
        out = &dummyInt;

    result = SA2_LABEL(sub_8021B08)(p, p1, out);

    p1Value = *p1;

    if (p1Value & 0x1)
        *p1 = 0;
    else {
        if (GRAVITY_IS_INVERTED) {
            s32 val = -0x80;
            val -= p1Value;
            *p1 = val;
        }
    }

    return result;
}

s32 SA2_LABEL(sub_8029B0C)(Player *p, u8 *p1, s32 *out)
{
    s32 result;

    u8 dummy;

    // TODO: Why is dummyInt unused?
    s32 dummyInt;
    s32 p1Value;

    if (p1 == NULL)
        p1 = &dummy;
    if (out == NULL)
        out = &dummyInt;

    result = SA2_LABEL(sub_8029BB8)(p, p1, out);

    p1Value = *p1;

    if (p1Value & 0x1)
        *p1 = 0;
    else {
        if (GRAVITY_IS_INVERTED) {
            s32 val = -0x80;
            val -= p1Value;
            *p1 = val;
        }
    }

    return result;
}

s32 SA2_LABEL(sub_8029B58)(Player *p, u8 *p1, s32 *out)
{
    s32 result;

    if (GRAVITY_IS_INVERTED) {
        result = SA2_LABEL(sub_8029B0C)(p, p1, out);
    } else {
        result = SA2_LABEL(sub_8029AC0)(p, p1, out);
    }

    return result;
}

s32 SA2_LABEL(sub_8029B88)(Player *p, u8 *p1, s32 *out)
{
    s32 result;

    if (GRAVITY_IS_INVERTED) {
        result = SA2_LABEL(sub_8029AC0)(p, p1, out);
    } else {
        result = SA2_LABEL(sub_8029B0C)(p, p1, out);
    }

    return result;
}

// Very similar to SA2_LABEL(sub_802195C)
s32 SA2_LABEL(sub_8029BB8)(Player *p, u8 *p1, s32 *out)
{
    u8 dummy;
    s32 dummyInt;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    u32 mask;
    u8 anotherByte, anotherByte2;
    s32 r5, r1;
    s32 result;

    if (p1 == NULL)
        p1 = &dummy;
    if (out == NULL)
        out = &dummyInt;

    playerY2 = I(p->qWorldY) + p->spriteOffsetY;
    playerX2 = I(p->qWorldX) - (2 + p->spriteOffsetX);

    mask = p->layer;
    if (p->qSpeedAirY < 0) {
        mask |= 0x80;
    }

    r5 = SA2_LABEL(sub_801E4E4)(playerY2, playerX2, mask, 8, &anotherByte, SA2_LABEL(sub_801EE64));

    playerY = I(p->qWorldY) + p->spriteOffsetY;
    playerX = I(p->qWorldX) + (2 + p->spriteOffsetX);

    mask = p->layer;
    if (p->qSpeedAirY < 0) {
        mask |= 0x80;
    }

    r1 = SA2_LABEL(sub_801E4E4)(playerY, playerX, mask, 8, &anotherByte2, SA2_LABEL(sub_801EE64));

    if (r5 < r1) {
        result = r5;
        *p1 = anotherByte;
        *out = r1;
    } else {
        result = r1;
        *p1 = anotherByte2;
        *out = r5;
    }

    return result;
}

#if (GAME == GAME_SA2)
void SA2_LABEL(sub_8029C84)(Player *p)
{
    s32 rot = p->rotation + Q(0.25);

    if ((rot & UINT8_MAX) > INT8_MAX)
        p->qSpeedGround = 0;
}
#endif

void SA2_LABEL(sub_8029CA0)(Player *p)
{
#if (GAME == GAME_SA1)
    s32 rot;
    if (((p->rotation + Q(0.375)) & 0xFF) < Q(0.75))
#else
    s32 rot = p->rotation;
    if (((rot + Q(0.375)) & 0xFF) < Q(0.75))
#endif
    {
#if (GAME == GAME_SA1)
        rot = GET_ROTATED_ACCEL(p->rotation);
#else
        rot = GET_ROTATED_ACCEL(rot);
#endif

        if (p->qSpeedGround != 0) {
            p->qSpeedGround += rot;
        }
    }
}

#if (GAME == GAME_SA1)
void SA2_LABEL(sub_8029CE0)(Player *p)
{
    s8 rot;
    if (((p->rotation + Q(0.375)) & 0xFF) < Q(0.75)) {
        rot = GET_ROTATED_ACCEL_2(p->rotation);

        p->qSpeedGround += rot;
    }
}
#else
void SA2_LABEL(sub_8029CE0)(Player *p)
{
    s32 rot = p->rotation;
    if (((rot + Q(0.375)) & 0xFF) < Q(0.75)) {
        s32 other = GET_ROTATED_ACCEL_2(rot);

        p->qSpeedGround += other;
    }
}
#endif

void SA2_LABEL(sub_8029D14)(Player *p)
{
#ifndef NON_MATCHING
    register s32 grndSpeed asm("r2") = p->qSpeedGround;
#else
    s32 grndSpeed = p->qSpeedGround;
#endif

    if ((((p->rotation + Q(0.375)) & 0xFF) < Q(0.75)) && grndSpeed != 0) {
        s32 accelInt = I(GET_ROTATED_ACCEL_3(p->rotation));

        if (grndSpeed > 0) {
            if (accelInt <= 0) {
                accelInt = (accelInt >> 2);
            }
        } else {
            if (accelInt >= 0) {
                accelInt = (accelInt >> 2);
            }
        }

        p->qSpeedGround = grndSpeed + accelInt;
    }
}

// Code part of SA2_LABEL(sub_802A660)
// They merged Player_8047064 and Player_8047088 into one!
void Player_8047064(Player *p)
{
    s32 qSpeed = p->qSpeedGround;
    if (qSpeed <= Q(0)) {
        p->moveState |= MOVESTATE_FACING_LEFT;
    } else if (qSpeed - Q(24. / 256.) < Q(0)) {
        qSpeed = Q(96. / 256.);
        p->qSpeedGround = -qSpeed;
    } else {
        p->qSpeedGround = qSpeed - Q(24. / 256.);
    }
}

// Code part of SA2_LABEL(sub_802A660)
// They merged Player_8047064 and Player_8047088 into one!
void Player_8047088(Player *p)
{
    s32 qSpeed = p->qSpeedGround;
    if (qSpeed >= Q(0)) {
        p->moveState &= ~MOVESTATE_FACING_LEFT;
    } else if (qSpeed + Q(24. / 256.) > Q(0)) {
        qSpeed = Q(96. / 256.);
        p->qSpeedGround = +qSpeed;
    } else {
        p->qSpeedGround = qSpeed + Q(24. / 256.);
    }
}

void Player_80470AC(Player *p)
{
    s32 qSpeed = p->qSpeedGround;
    u32 rot;
#ifndef NON_MATCHING
    const s16 *sinTbl = &gSineTable[0];
    asm("" ::"r"(sinTbl));
#endif
    rot = p->rotation;

    p->qSpeedAirX = Q_MUL(qSpeed, COS_24_8(rot * 4));
    p->qSpeedAirY = Q_MUL(qSpeed, SIN_24_8(rot * 4));
}

void Player_UpdatePosition(Player *p) { PLAYERFN_UPDATE_POSITION(p); }

void PlayerFn_Cmd_UpdateAirFallSpeed(Player *p) { PLAYERFN_UPDATE_AIR_FALL_SPEED(p); }

bool32 SA2_LABEL(sub_8029DE8)(Player *p)
{
    struct Camera *cam = &gCamera;
    s32 playerY = p->qWorldY;

    if (!(p->moveState & MOVESTATE_80000000)) {
#if (GAME == GAME_SA1)
        if (!GRAVITY_IS_INVERTED) {
            if (playerY >= Q(cam->maxY) - 1)
                return TRUE;
        } else {
            if (playerY <= Q(cam->minY))
                return TRUE;
        }
#elif (GAME == GAME_SA2)
        if (GRAVITY_IS_INVERTED) {
            if (playerY <= Q(cam->minY))
                return TRUE;
        } else {
            if (playerY >= Q(cam->maxY) - 1)
                return TRUE;
        }
#endif
    }

    return FALSE;
}

bool32 DeadPlayerLeftScreen_UnusedCopy(Player *p)
{
    struct Camera *cam = &gCamera;
    s32 playerY = p->qWorldY;

    if (!(p->moveState & MOVESTATE_80000000)) {
#if (GAME == GAME_SA1)
        if (!GRAVITY_IS_INVERTED) {
            if (playerY >= Q(cam->y) + Q(DISPLAY_HEIGHT + 80) - 1)
                return TRUE;
        } else {
            if (playerY <= Q(cam->y - 80))
                return TRUE;
        }
#elif (GAME == GAME_SA2)
        if (GRAVITY_IS_INVERTED) {
            if (playerY <= Q(cam->y - 80))
                return TRUE;
        } else {
            if (playerY >= Q(cam->y) + Q(DISPLAY_HEIGHT + 80) - 1)
                return TRUE;
        }
#endif
    }

    return FALSE;
}

void SA2_LABEL(sub_8029ED8)(Player *p)
{
#if (GAME == GAME_SA1)
    // TODO: Is this part of the macro in SA1?
    if (!(p->moveState & MOVESTATE_800))
#endif
    {
        PLAYERFN_UPDATE_UNK2A(p);
    }
}

void Player_8047224(Player *p)
{
    s32 rot = (s8)p->rotation;

    if (p->charState == CHARSTATE_BOUNCE) {
        if (p->moveState & MOVESTATE_FACING_LEFT) {
            p->rotation -= Q(4. / 256.);
        } else {
            p->rotation += Q(4. / 256.);
        }
    } else {
        if (rot < 0) {
            if (rot + 2 > 0) {
                rot = 0;
            } else {
                rot += 2;
            }
        } else if (rot > 0) {
            if (rot - 2 < 0) {
                rot = 0;
            } else {
                rot -= 2;
            }
        }

        p->rotation = rot;
    }
}

void Player_804726C(Player *p)
{
    if (p->playerID == PLAYER_1) {
        p->SA2_LABEL(unk25) = 120;
    }
}

void Player_8047280(Player *p)
{
    if (p->playerID == PLAYER_1) {
        if (gCamera.SA2_LABEL(unk4C) > 0) {
            gCamera.SA2_LABEL(unk4C) -= 2;
        } else if (gCamera.SA2_LABEL(unk4C) < 0) {
            gCamera.SA2_LABEL(unk4C) += 2;
        }
    }
}

void sub_80472AC(Player *p) { p->SA2_LABEL(unk72) = ZONE_TIME_TO_INT(0, 6); }

void sub_80472B8(Player *p)
{
    if (!sub_8044434(p)) {
        sub_80449D8(p);
        SA2_LABEL(sub_80232D0)(p);

        PLAYERFN_UPDATE_POSITION(p);

        SA2_LABEL(sub_8022D6C)(p);
    }
}

void Player_InitializeDrowning(Player *p)
{
    p->framesUntilDrownCountDecrement = 60;
    p->secondsUntilDrown = 30;

#if (GAME == GAME_SA1)
    if (p->playerID == 0) {
        m4aSongNumStop(MUS_DROWNING);
    }
#endif
}

void TaskDestructor_Player(struct Task *t)
{
    player_0_Task *gt = TASK_DATA(t);
    Player *p;

    if (gt->pid != PLAYER_1) {
        p = &gPartner;
    } else {
        p = &gPlayer;
    }

    p->spriteTask = NULL;

    if (p->playerID != PLAYER_1) {
        // Free Tails' Body
        VramFree(p->spriteInfoBody->s.graphics.dest);
    }

    if (p->character == CHARACTER_TAILS) {
        // Free Tails' tails
        VramFree(p->spriteInfoLimbs->s.graphics.dest);
    }
}

void Player_Sonic_80473AC(Player *p)
{
    switch (p->moveState & MOVESTATE_JUMPING) {
        case 0: {
            if (p->moveState & MOVESTATE_1000000) {
                sub_80472B8(p);
            } else {
                if (p->SA2_LABEL(unk62) == 0) {
                    if ((gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) || (sub_8047668(p) == 0)) {
                        if (!Player_Spindash(p) && !sub_8044250(p)) {
                            SA2_LABEL(sub_8029CA0)(p);
                            Player_8044F7C(p);

                            SA2_LABEL(sub_80232D0)(p);
                            Player_UpdatePosition(p);
                            SA2_LABEL(sub_8022D6C)(p);
                            SA2_LABEL(sub_8029ED8)(p);
                        }
                    }
                } else {
                    SA2_LABEL(sub_8029CA0)(p);
                    if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
                        sub_8047668(p);
                    }

                    SA2_LABEL(sub_80232D0)(p);
                    Player_UpdatePosition(p);
                    SA2_LABEL(sub_8022D6C)(p);
                    SA2_LABEL(sub_8029ED8)(p);
                }
            }
        } break;

        case MOVESTATE_IN_AIR: {
            Player_804726C(p);
            Player_8047280(p);
            Player_8044670(p);
            Player_AirInputControls(p);
            SA2_LABEL(sub_80232D0)(p);
            Player_UpdatePosition(p);
            PlayerFn_Cmd_UpdateAirFallSpeed(p);
            Player_8047224(p);
            SA2_LABEL(sub_8022190)(p);
        } break;

        case MOVESTATE_4: {
            Player_804726C(p);
            Player_8047280(p);
            if (!sub_8044250(p)) {
                SA2_LABEL(sub_8029D14)(p);
                Player_8043DDC(p);

                // _0804749E
                SA2_LABEL(sub_80232D0)(p);
                Player_UpdatePosition(p);
                SA2_LABEL(sub_8022D6C)(p);
                SA2_LABEL(sub_8029ED8)(p);
            }
        } break;

        case MOVESTATE_JUMPING: {
            Player_804726C(p);
            Player_8047280(p);

            if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
                sub_8047714(p);
            }

            Player_8044670(p);
            Player_AirInputControls(p);
            SA2_LABEL(sub_80232D0)(p);
            Player_UpdatePosition(p);
            PlayerFn_Cmd_UpdateAirFallSpeed(p);
            Player_8047224(p);
            SA2_LABEL(sub_8022190)(p);
        } break;
    }
}

void sub_8047508(Player *p)
{
    if (!(p->moveState & MOVESTATE_SPINDASH) && ((p->rotation + Q(0.25)) << 24 > 0) && !(p->moveState & MOVESTATE_20)
        && (p->frameInput & gPlayerControls.attack)) {
        if (p->moveState & MOVESTATE_FACING_LEFT) {
            p->qSpeedGround = -Q(2.0);
        } else {
            p->qSpeedGround = +Q(2.0);
        }

        p->qSpeedAirX = 0;
        p->SA2_LABEL(unk62)++;
        p->charState = CHARSTATE_45;
        m4aSongNumStart(SE_SPIN_ATTACK);
    }
}

void sub_804756C(Player *p)
{
    s32 qSpeed = p->qSpeedGround;

    if (qSpeed > 0) {
        if ((qSpeed - Q(8. / 256.)) < 0) {
            qSpeed = 0;
        } else {
            qSpeed -= Q(8. / 256.);
        }

        p->qSpeedGround = qSpeed;
    } else if (qSpeed < 0) {
        if ((qSpeed + Q(8. / 256.)) > 0) {
            qSpeed = 0;
        } else {
            qSpeed += Q(8. / 256.);
        }

        p->qSpeedGround = qSpeed;
    }

    Player_80470AC(p);

    if (p->qSpeedGround == Q(0)) {
        p->charState = 0;
        p->SA2_LABEL(unk62) = 0;
    }

    if (p->frameInput & gPlayerControls.attack) {
        if (p->moveState & MOVESTATE_FACING_LEFT) {
            p->qSpeedGround = -Q(3);
        } else {
            p->qSpeedGround = +Q(3);
        }

        p->SA2_LABEL(unk62)++;
        p->SA2_LABEL(unk63) = 0;
        p->charState = CHARSTATE_46;

        m4aSongNumStart(SE_TAILS_TAIL_SWIPE);
    }

    SA2_LABEL(sub_80231C0)(p);
}

void sub_80475FC(Player *p)
{
    s32 qSpeed = p->qSpeedGround;
    s32 v;

    if (qSpeed > 0) {
        if ((qSpeed - Q(8. / 256.)) < 0) {
            qSpeed = 0;
        } else {
            qSpeed -= Q(8. / 256.);
        }

        p->qSpeedGround = qSpeed;
    } else if (qSpeed < 0) {
        if ((qSpeed + Q(8. / 256.)) > 0) {
            qSpeed = 0;
        } else {
            qSpeed += Q(8. / 256.);
        }

        p->qSpeedGround = qSpeed;
    }

    Player_80470AC(p);

    v = p->SA2_LABEL(unk63);
    if (v == 0) {
        if (p->frameInput & gPlayerControls.attack) {
            p->SA2_LABEL(unk63) = 1;
        }

        v = p->SA2_LABEL(unk63);
        if (v == 0) {
            if (p->frameInput & gPlayerControls.jump) {
                p->SA2_LABEL(unk63) = 2;
            }
        }
    }

    SA2_LABEL(sub_80231C0)(p);
}

s32 sub_8047668(Player *p)
{
    switch (p->SA2_LABEL(unk62)) {
        case 0: {
            sub_8047508(p);
            return p->SA2_LABEL(unk62);
        } break;

        case 1: {
            sub_804756C(p);
            return p->SA2_LABEL(unk62);
        } break;

        case 2: {
            sub_80475FC(p);
            return p->SA2_LABEL(unk62);
        } break;

        case 3: {
            s32 qSpeed = p->qSpeedGround;

            if (qSpeed > 0) {
                if ((qSpeed - Q(32. / 256.)) < 0) {
                    qSpeed = 0;
                } else {
                    qSpeed -= Q(32. / 256.);
                }

                p->qSpeedGround = qSpeed;
            } else if (qSpeed < 0) {
                if ((qSpeed + Q(32. / 256.)) > 0) {
                    qSpeed = 0;
                } else {
                    qSpeed += Q(32. / 256.);
                }

                p->qSpeedGround = qSpeed;
            }

            Player_80470AC(p);

            if (p->qSpeedGround == 0) {
                p->charState = CHARSTATE_48;
                p->SA2_LABEL(unk62)++;
            }

            SA2_LABEL(sub_80231C0)(p);
            return p->SA2_LABEL(unk62);
        } break;

        case 4: {
            return p->SA2_LABEL(unk62);
        } break;
    }

    return 0;
}

void sub_8047714(Player *p)
{
    if ((p->SA2_LABEL(unk61) == 0) && (p->moveState & MOVESTATE_100)) {
        s32 res = sub_804D060(10);

        if (res != 0) {
            p->SA2_LABEL(unk61) = 2;
            p->charState = CHARSTATE_AIR_DASH;
            m4aSongNumStart(SE_SONIC_MIDAIR_SOMERSAULT);

            if (res > 0) {
                p->qSpeedAirX += (p->maxSpeed >> 2);
            } else if (res < 0) {
                p->qSpeedAirX -= (p->maxSpeed >> 2);
            }

            p->qSpeedAirY = 0;
        }
    }
}

void sub_8047774(Player *p)
{
    if (p->SA2_LABEL(unk62) == 0) {
        if ((gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) || (sub_8047668(p) == 0)) {
            if (!Player_Spindash(p) && !sub_8044250(p)) {
                SA2_LABEL(sub_8029CA0)(p);
                Player_8044F7C(p);
                SA2_LABEL(sub_80232D0)(p);
                Player_UpdatePosition(p);
                SA2_LABEL(sub_8022D6C)(p);
                SA2_LABEL(sub_8029ED8)(p);
            }
        }
    } else {
        SA2_LABEL(sub_8029CA0)(p);

        if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
            sub_8047668(p);
        }

        SA2_LABEL(sub_80232D0)(p);
        Player_UpdatePosition(p);
        SA2_LABEL(sub_8022D6C)(p);
        SA2_LABEL(sub_8029ED8)(p);
    }
}

void sub_804780C(Player *p)
{
    Player_804726C(p);
    Player_8047280(p);
    Player_8044670(p);
    Player_AirInputControls(p);
    SA2_LABEL(sub_80232D0)(p);
    Player_UpdatePosition(p);
    PlayerFn_Cmd_UpdateAirFallSpeed(p);
    Player_8047224(p);
    SA2_LABEL(sub_8022190)(p);
}

void sub_804784C(Player *p)
{
    Player_804726C(p);
    Player_8047280(p);

    if (!sub_8044250(p)) {
        SA2_LABEL(sub_8029D14)(p);
        Player_8043DDC(p);
        SA2_LABEL(sub_80232D0)(p);
        Player_UpdatePosition(p);
        SA2_LABEL(sub_8022D6C)(p);
        SA2_LABEL(sub_8029ED8)(p);
    }
}

void sub_8047890(Player *p)
{
    Player_804726C(p);
    Player_8047280(p);

    if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
        sub_8047714(p);
    }

    Player_8044670(p);
    Player_AirInputControls(p);
    SA2_LABEL(sub_80232D0)(p);
    Player_UpdatePosition(p);
    PlayerFn_Cmd_UpdateAirFallSpeed(p);
    Player_8047224(p);
    SA2_LABEL(sub_8022190)(p);
}

void Player_Sonic_InitInstaShield(Player *p)
{
    struct Task *t;
    MultiplayerSpriteTask *mps;
    Sprite *s;

    p->charState = CHARSTATE_43;
    m4aSongNumStart(SE_SONIC_INSTA_SHIELD);

    t = Player_Sonic_InitGfx_InstaShield(p);
    mps = TASK_DATA(t);
    s = &mps->s;

    if (!(p->moveState & MOVESTATE_FACING_LEFT)) {
        s->frameFlags |= SPRITE_FLAG(X_FLIP, 1);
    } else {
        s->frameFlags &= ~SPRITE_FLAG(X_FLIP, 1);
    }
}

struct Task *Player_Sonic_InitGfx_InstaShield(Player *p)
{
    struct Task *t
        = CreateMultiplayerSpriteTask(0, 0, 160, p->playerID, Task_UpdateMpSpriteTaskSprite, TaskDestructor_MultiplayerSpriteTask);
    MultiplayerSpriteTask *mps = TASK_DATA(t);
    Sprite *s = &mps->s;

    s->graphics.dest = ALLOC_TILES(SA1_CHAR_ANIM_50);
    s->graphics.anim = SA1_CHAR_ANIM_50;
    s->variant = 1;
    s->oamFlags = 0x200;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    return t;
}

void nullsub_804798C() { }

/* Tails Start */

void Player_Tails_8047990(Player *p)
{
    if (p->w.tf.flyingDuration == 0) {
        p->charState = CHARSTATE_FLY_EXHAUSTED;
        m4aSongNumStop(SE_TAILS_PROPELLER_FLYING);
    } else if (p->moveState & MOVESTATE_IN_WATER) {
        if (((p->heldInput & DPAD_LEFT) && !(p->moveState & MOVESTATE_FACING_LEFT))
            || ((p->heldInput & DPAD_RIGHT) && (p->moveState & MOVESTATE_FACING_LEFT))) {
            p->charState = CHARSTATE_58;
        } else if (p->charState != CHARSTATE_54) {
            p->charState = CHARSTATE_SWIMMING;
        }

        RandomlySpawnAirBubbles(p);

        m4aSongNumStop(SE_TAILS_PROPELLER_FLYING);
    } else {
        if (((p->heldInput & DPAD_LEFT) && !(p->moveState & MOVESTATE_FACING_LEFT))
            || ((p->heldInput & DPAD_RIGHT) && (p->moveState & MOVESTATE_FACING_LEFT))) {
            p->charState = CHARSTATE_54;
        } else if (p->charState != CHARSTATE_54) {
            p->charState = CHARSTATE_FLYING;
        }

        m4aSongNumStartOrChange(SE_TAILS_PROPELLER_FLYING);
    }
}

void sub_8047A3C(Player *p)
{
    if ((gStageTime & 0x1) != 0) {
        if (p->w.tf.flyingDuration != 0) {
            p->w.tf.flyingDuration--;
        }
    }

    if (p->SA2_LABEL(unk61) != 1) {
        if (p->qSpeedAirY >= -Q(0.75)) {
            p->qSpeedAirY -= Q(24. / 256.);

            if (++p->SA2_LABEL(unk61) == 32) {
                p->SA2_LABEL(unk61) = 1;
            }
        } else {
            p->SA2_LABEL(unk61) = 1;
        }
    } else {
        // _08047A94
        if (p->frameInput & gPlayerControls.jump) {
            s32 qSpeed = p->qSpeedAirY;
            if (qSpeed >= -Q(0.75)) {
                if (p->w.tf.flyingDuration != 0) {
                    p->SA2_LABEL(unk61) = 2;
                }
            }
        }
        // _08047ABA

        if (p->moveState & MOVESTATE_10000) {
            p->qSpeedAirY += Q(16. / 256.);
        } else {
            p->qSpeedAirY += Q(8. / 256.);
        }
    }
    // _08047AD6

    if (p->qWorldY < Q(gCamera.minY)) {
        p->qWorldY = Q(gCamera.minY);

        if (p->qSpeedAirY < Q(0)) {
            p->qSpeedAirY = Q(0);
        }
    }

    Player_Tails_8047990(p);
}

s32 sub_8047B04(Player *p)
{
    switch (p->SA2_LABEL(unk62)) {
        case 0: {
            if (!(p->moveState & MOVESTATE_SPINDASH) && ((p->rotation + Q(0.25)) << 24 > 0) && !(p->moveState & MOVESTATE_20)
                && (p->frameInput & gPlayerControls.attack)) {
                p->SA2_LABEL(unk62)++;
                p->charState = CHARSTATE_GROUND_ATTACK;
                Player_Tails_InitGfx_TailSwipe(p);
            }
            return p->SA2_LABEL(unk62);
        } break;

        case 1: {
            s32 qSpeed = p->qSpeedGround;

            if (qSpeed > Q(0)) {
                qSpeed -= (p->deceleration >> 1);
                if (qSpeed < 0) {
                    qSpeed = 0;
                }
            } else {
                qSpeed += (p->deceleration >> 1);
                if (qSpeed > Q(0)) {
                    qSpeed = 0;
                }
            }

            p->qSpeedGround = qSpeed;

            Player_80470AC(p);
            SA2_LABEL(sub_80231C0)(p);

            return p->SA2_LABEL(unk62);
        } break;
    }
    return 0;
}

void Player_Tails_8047BA0(Player *p)
{
    switch (p->moveState & MOVESTATE_JUMPING) {
        case 0: {
            if (p->SA2_LABEL(unk62) == 0) {
                if ((gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) || (sub_8047B04(p) == 0)) {
                    if (!Player_Spindash(p) && !sub_8044250(p)) {
                        SA2_LABEL(sub_8029CA0)(p);
                        Player_8044F7C(p);

                        SA2_LABEL(sub_80232D0)(p);
                        Player_UpdatePosition(p);
                        SA2_LABEL(sub_8022D6C)(p);
                        SA2_LABEL(sub_8029ED8)(p);
                    }
                }
            } else {
                SA2_LABEL(sub_8029CA0)(p);
                if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
                    sub_8047B04(p);
                }

                SA2_LABEL(sub_80232D0)(p);
                Player_UpdatePosition(p);
                SA2_LABEL(sub_8022D6C)(p);
                SA2_LABEL(sub_8029ED8)(p);
            }

        } break;

        case MOVESTATE_IN_AIR: {
            Player_804726C(p);
            Player_8047280(p);

            if (p->SA2_LABEL(unk61) == 0) {
                Player_8044670(p);
                Player_AirInputControls(p);
                SA2_LABEL(sub_80232D0)(p);
                Player_UpdatePosition(p);
                PlayerFn_Cmd_UpdateAirFallSpeed(p);
            } else {
                sub_8047A3C(p);
                Player_AirInputControls(p);
                SA2_LABEL(sub_80232D0)(p);
                Player_UpdatePosition(p);
            }

            Player_8047224(p);
            SA2_LABEL(sub_8022190)(p);
        } break;

        case MOVESTATE_4: {
            Player_804726C(p);
            Player_8047280(p);
            if (!sub_8044250(p)) {
                SA2_LABEL(sub_8029D14)(p);
                Player_8043DDC(p);

                // _0804749E
                SA2_LABEL(sub_80232D0)(p);
                Player_UpdatePosition(p);
                SA2_LABEL(sub_8022D6C)(p);
                SA2_LABEL(sub_8029ED8)(p);
            }
        } break;

        case MOVESTATE_JUMPING: {
            Player_804726C(p);
            Player_8047280(p);

            Player_8044670(p);
            Player_AirInputControls(p);
            SA2_LABEL(sub_80232D0)(p);
            Player_UpdatePosition(p);
            PlayerFn_Cmd_UpdateAirFallSpeed(p);
            Player_8047224(p);
            SA2_LABEL(sub_8022190)(p);
        } break;
    }
}

void Task_8047D04(void)
{
    MultiplayerSpriteTask *mps = TASK_DATA(gCurTask);
    u8 mpid = mps->mpPlayerID;
    Sprite *s = &mps->s;
    SpriteTransform *tf = &mps->transform;
    Camera *cam = &gCamera;
    Player *p;
    s32 v, w;

    if (IS_MULTI_PLAYER) {
        TaskDestroy(gCurTask);
        return;
    }

    p = &gPlayer;
    if (mpid != PLAYER_1) {
        p = &gPartner;
    }

    if ((p->character != CHARACTER_TAILS) || (p->charState != CHARSTATE_32) || (p->SA2_LABEL(unk99)[0] == 0x7F)) {
        TaskDestroy(gCurTask);
        return;
    }

    tf->x = (I(p->qWorldX) - cam->x) + p->SA2_LABEL(unk7C);
    tf->y = (I(p->qWorldY) - cam->y);

    s->frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;
    s->frameFlags |= SPRITE_FLAG(PRIORITY, 0);

    s->frameFlags |= p->spriteInfoLimbs->s.frameFlags & 0x3000;
    s->frameFlags &= ~SPRITE_FLAG_MASK_ROT_SCALE;
    s->frameFlags |= SA2_LABEL(gUnknown_030054B8)++ | SPRITE_FLAG_MASK_ROT_SCALE_ENABLE;

    tf->rotation = (u8)p->w.tf.shift * 4;
    tf->qScaleX = Q(1.0);
    tf->qScaleY = Q(1.0);
    v = p->SA2_LABEL(unk80);
    w = p->SA2_LABEL(unk82);
    tf->qScaleX = v;
    tf->qScaleY = w;

    UpdateSpriteAnimation(s);
    TransformSprite(s, tf);
    DisplaySprite(s);
}

struct Task *Player_Tails_InitGfxMarbleTrack(Player *p)
{
    struct Task *t = CreateMultiplayerSpriteTask(0, 0, 96, p->playerID, Task_8047D04, TaskDestructor_MultiplayerSpriteTask);
    MultiplayerSpriteTask *mps = TASK_DATA(t);
    Sprite *s = &mps->s;
    SpriteTransform *tf = &mps->transform;

    s->graphics.dest = ALLOC_TILES(SA1_CHAR_ANIM_MARBLE_TRACK);
    s->graphics.anim = SA1_CHAR_ANIM_MARBLE_TRACK + SA1_ANIM_TAILS_IDLE;
    s->variant = 1;
    s->oamFlags = 0x400;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    tf->rotation = 0;
    tf->qScaleX = Q(1.0);
    tf->qScaleY = Q(1.0);
    tf->x = 0;
    tf->y = 0;
    return t;
}

void sub_8047E94(Player *p)
{
    if (p->SA2_LABEL(unk62) == 0) {
        if ((gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) || (sub_8047B04(p) == 0)) {
            if (!Player_Spindash(p) && !sub_8044250(p)) {
                SA2_LABEL(sub_8029CA0)(p);
                Player_8044F7C(p);
                SA2_LABEL(sub_80232D0)(p);
                Player_UpdatePosition(p);
                SA2_LABEL(sub_8022D6C)(p);
                SA2_LABEL(sub_8029ED8)(p);
            }
        }
    } else {
        SA2_LABEL(sub_8029CA0)(p);

        if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
            sub_8047B04(p);
        }

        SA2_LABEL(sub_80232D0)(p);
        Player_UpdatePosition(p);
        SA2_LABEL(sub_8022D6C)(p);
        SA2_LABEL(sub_8029ED8)(p);
    }
}

void sub_8047F2C(Player *p)
{
    Player_804726C(p);
    Player_8047280(p);

    if (p->SA2_LABEL(unk61) == 0) {
        Player_8044670(p);
        Player_AirInputControls(p);
        SA2_LABEL(sub_80232D0)(p);
        Player_UpdatePosition(p);
        PlayerFn_Cmd_UpdateAirFallSpeed(p);
        Player_8047224(p);
        SA2_LABEL(sub_8022190)(p);
    } else {
        sub_8047A3C(p);
        Player_AirInputControls(p);
        SA2_LABEL(sub_80232D0)(p);
        Player_UpdatePosition(p);
        Player_8047224(p);
        SA2_LABEL(sub_8022190)(p);
    }
}

void sub_8047FA0(Player *p)
{
    Player_804726C(p);
    Player_8047280(p);

    if (!sub_8044250(p)) {
        SA2_LABEL(sub_8029D14)(p);
        Player_8043DDC(p);
        SA2_LABEL(sub_80232D0)(p);
        Player_UpdatePosition(p);
        SA2_LABEL(sub_8022D6C)(p);
        SA2_LABEL(sub_8029ED8)(p);
    }
}

void sub_8047FE4(Player *p)
{
    Player_804726C(p);
    Player_8047280(p);
    Player_8044670(p);
    Player_AirInputControls(p);
    SA2_LABEL(sub_80232D0)(p);
    Player_UpdatePosition(p);
    PlayerFn_Cmd_UpdateAirFallSpeed(p);
    Player_8047224(p);
    SA2_LABEL(sub_8022190)(p);
}

void Player_Tails_InitFlying(Player *p)
{
    if (p->moveState & MOVESTATE_4) {
        p->moveState &= ~MOVESTATE_4;
        PLAYERFN_CHANGE_SHIFT_OFFSETS(p, 6, 14);
    }

    p->w.tf.flyingDuration = ZONE_TIME_TO_INT(0, 4);
    Player_Tails_8047990(p);
}

struct Task *Player_Tails_InitGfx_TailSwipe(Player *p)
{
    struct Task *t
        = CreateMultiplayerSpriteTask(0, 0, 224, p->playerID, Task_UpdateMpSpriteTaskSprite, TaskDestructor_MultiplayerSpriteTask);
    MultiplayerSpriteTask *mps = TASK_DATA(t);
    Sprite *s = &mps->s;

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_TAILS_TAIL_SWIPE);
    s->graphics.anim = SA1_ANIM_TAILS_TAIL_SWIPE;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(8);
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    return t;
}

void sub_80480C4(Player *p)
{
    if ((!(p->moveState & MOVESTATE_SPINDASH)) && (((p->rotation + Q(0.25)) << 24) > 0) && !(p->moveState & MOVESTATE_20)
        && (p->frameInput & gPlayerControls.attack)) {
        p->SA2_LABEL(unk62)++;
        p->charState = CHARSTATE_GROUND_ATTACK;
        Player_Tails_InitGfx_TailSwipe(p);
    }
}

/* Knuckles Start */

void sub_8048110(Player *p)
{
    s32 qSpeed = p->qSpeedGround;

    if (qSpeed > Q(0)) {
        qSpeed -= (p->deceleration >> 1);
        if (qSpeed < 0) {
            qSpeed = 0;
        }
    } else {
        qSpeed += (p->deceleration >> 1);
        if (qSpeed > Q(0)) {
            qSpeed = 0;
        }
    }

    p->qSpeedGround = qSpeed;

    Player_80470AC(p);
    SA2_LABEL(sub_80231C0)(p);
}

void Player_Knuckles_InitGlide(Player *p)
{
    p->moveState &= ~MOVESTATE_4;
    p->spriteOffsetX = 6;
    p->spriteOffsetY = 6;
    p->qSpeedAirY += Q(1.5);

    if (p->qSpeedAirY < 0) {
        p->qSpeedAirY = 0;
    }

    p->qSpeedGround = Q(3);

    if (p->moveState & MOVESTATE_IN_WATER) {
        HALVE(p->qSpeedGround);
    }

    if (p->moveState & MOVESTATE_FACING_LEFT) {
        p->qSpeedGround = -p->qSpeedGround;
        p->qSpeedAirX = p->qSpeedGround;
        p->w.kf.shift = -128;
    } else {
        p->qSpeedAirX = p->qSpeedGround;
        p->w.kf.shift = 0;
    }
    p->rotation = 0;
    p->w.kf.flags = 0x2;
}

void sub_80481B8(Player *p)
{
    // TODO: Maybe "w.kf.shift" is a bitfield (7:1) ?
    u8 shift = p->w.kf.shift;
    s32 sgnShift;

    p->moveState &= ~MOVESTATE_20;
    p->moveState &= ~MOVESTATE_FACING_LEFT;

    sgnShift = (s8)shift;
    if ((sgnShift % 128u) == 0) {
        if (p->moveState & MOVESTATE_IN_WATER) {
            p->charState = CHARSTATE_KNUCKLES_SWIM;
            RandomlySpawnAirBubbles(p);
        } else {
            // _080481F4
            p->charState = CHARSTATE_KNUCKLES_GLIDE;
        }
        // _080481FC

        if (shift == 0x80) {
            p->moveState |= MOVESTATE_FACING_LEFT;
        }
    } else {
        if (sgnShift < 0) {
            shift = -sgnShift;
        }

        p->charState = gCharStatesKnucklesGlideTurn[(shift & 0x7F) >> 5];
    }
}

// TODO: Remove gotos
// (98.53%) https://decomp.me/scratch/3hZ4x
NONMATCH("asm/non_matching/game/stage/Player__sub_8048230.inc", void sub_8048230(Player *p))
{
    s32 sp08;
    u8 *knuxFlags;
    s32 r6;
    u8 flags;
    u32 mask;

    SA2_LABEL(sub_8022838)(p);

    knuxFlags = &p->w.kf.flags;
    flags = *knuxFlags;
    mask = 2;
    if (!(flags & 2)) {
        if (p->qSpeedAirX <= Q(0)) {
            p->moveState |= MOVESTATE_FACING_LEFT;
        } else {
            p->moveState &= ~MOVESTATE_FACING_LEFT;
        }
        // _08048268

        if ((((p->rotation + Q(0.125)) & -Q(0.25)) << 24) != 0) {
            if (((u8)p->w.kf.shift + 0x40) << 24 <= 0) {
                p->moveState |= MOVESTATE_FACING_LEFT;
            } else {
                p->moveState &= ~MOVESTATE_FACING_LEFT;
            }

            p->qSpeedAirY = 0;
            SA2_LABEL(sub_8022318)(p);

            if (p->qSpeedGround != Q(0)) {
                p->charState = CHARSTATE_WALK;
            } else {
                p->charState = CHARSTATE_IDLE;
            }
        } else {
            // _080482C2
            p->SA2_LABEL(unk61) = 3;
            p->charState = CHARSTATE_65;
            m4aSongNumStart(SE_SONIC_SKID_ATTACK);
        }

    } else if (*knuxFlags & 0x20) {
        // _080482D8 + 0x10
        // _080482E2
        if (p->w.kf.SA2_LABEL(unkAE) >= 0) {
            // _080482F2
            if (((u8)p->w.kf.shift + 0x40) << 24 <= 0) {
                p->moveState |= MOVESTATE_FACING_LEFT;
                r6 = SA2_LABEL(sub_8029A28)(p, NULL, &sp08);

                if (r6 == sp08) {
                    // _08048324

                    if (r6 != 0) {
                        if (GRAVITY_IS_INVERTED) {
                            s32 worldX, worldY;
                            worldY = (I(p->qWorldY) - 1);
                            worldY -= p->spriteOffsetY;
                            worldX = (I(p->qWorldX) - 1);
                            worldX -= p->spriteOffsetX;

                            if (SA2_LABEL(sub_801E4E4)(worldY, worldX, p->layer, -8, NULL, SA2_LABEL(sub_801EE64)) < 0) {
                                p->SA2_LABEL(unk61) = mask;
                                goto _08048454;
                            } else {
                                goto lbl0;
                            }
                        } else {
                            // _08048378
                            s32 worldX, worldY;
                            worldY = (I(p->qWorldY) + 1);
                            worldY += p->spriteOffsetY;
                            worldX = (I(p->qWorldX) - 1);
                            worldX -= p->spriteOffsetX;

                            if (SA2_LABEL(sub_801E4E4)(worldY, worldX, p->layer, +8, NULL, SA2_LABEL(sub_801EE64)) < 0) {
                                goto _08048450;
                            } else {
                            lbl0:
                                p->qWorldX -= Q(r6);

                                goto nullset;
                            }
                        }
                    } else {
                        goto nullset;
                    }
                }
            } else {
                // _080483B4
                p->moveState &= ~MOVESTATE_FACING_LEFT;
                r6 = SA2_LABEL(sub_8029A74)(p, 0, &sp08);
                if (r6 != sp08) {
                    p->SA2_LABEL(unk61) = mask;
                    asm("");
                    goto _08048454;
                } else if (r6 != 0) {
                    if (!GRAVITY_IS_INVERTED) {
                        s32 worldX, worldY;
                        worldY = (I(p->qWorldY) + 1);
                        worldY += p->spriteOffsetY;
                        worldX = (I(p->qWorldX) + 1);
                        worldX += p->spriteOffsetX;

                        if (SA2_LABEL(sub_801E4E4)(worldY, worldX, p->layer, +8, NULL, sa2__sub_801EE64) < 0) {
                            goto _08048450;
                        }
                    }

                    p->qWorldX += Q(r6);
                }
            nullset:
                p->qSpeedGround = 0;
                p->qSpeedAirX = 0;
                p->qSpeedAirY = 0;
                p->SA2_LABEL(unk61) = 4;
                p->w.kf.shift = 3;
                p->charState = 70;
                return;
            }
        }
    _08048450:
        p->SA2_LABEL(unk61) = mask;
    _08048454:
        p->charState = CHARSTATE_63;
    _08048458:
        p->spriteOffsetX = 6;
        p->spriteOffsetY = 14;
        *knuxFlags |= 0x2;
    } else if (!(p->heldInput & gPlayerControls.jump)) {
        p->SA2_LABEL(unk61) = mask;
        p->charState = CHARSTATE_63;

        if (p->qSpeedAirX <= Q(0)) {
            p->moveState |= MOVESTATE_FACING_LEFT;
        } else {
            p->moveState &= ~MOVESTATE_FACING_LEFT;
        }

        p->qSpeedAirX >>= 2;
        p->spriteOffsetX = 6;
        p->spriteOffsetY = 14;
    } else {
        sub_80481B8(p);
    }
}
END_NONMATCH

void sub_80484CC(Player *p)
{
    Player_AirInputControls(p);
    PlayerFn_Cmd_UpdateAirFallSpeed(p);
    SA2_LABEL(sub_8022838)(p);

    if (!(p->w.kf.flags & 0x2)) {
        p->qSpeedGround = 0;
        p->qSpeedAirX = 0;
        p->qSpeedAirY = 0;
        p->spriteOffsetX = 6;
        p->spriteOffsetY = 14;
        SA2_LABEL(sub_8022318)(p);

        if (((p->rotation + Q(0.125)) & 0xC0) == 0) {
            p->SA2_LABEL(unk2A) = 15;
            p->charState = CHARSTATE_64;
        }
    }
}

// (100.0%) https://decomp.me/scratch/s2CMM
void sub_8048524(Player *inPlayer)
{
#ifndef NON_MATCHING
    register Player *p asm("r4") = inPlayer;
#else
    Player *p = inPlayer;
#endif
    u8 rot;
    u32 sp04;
    s32 offsetY;

    if ((gStageTime % 4u) == 0) {
        offsetY = p->spriteOffsetY;

        if (GRAVITY_IS_INVERTED) {
            offsetY = -offsetY;
        }

        CreateBrakingDustEffect(I(p->qWorldX), I(p->qWorldY) + offsetY);
    }

    SA2_LABEL(sub_8022838)(p);

    offsetY = SA2_LABEL(sub_8029B88)(p, &rot, &sp04);
    if (offsetY < 12) {
        if (GRAVITY_IS_INVERTED) {
            offsetY = -offsetY;
        }

        p->qWorldY += Q(offsetY);
        p->rotation = rot;
    } else if (!(p->moveState & MOVESTATE_STOOD_ON_OBJ)) {
#ifndef NON_MATCHING
        register u32 flag asm("r0");
        register u32 r1 asm("r1");
        register u8 *r2 asm("r2");
#else
        u32 flag;
        u32 r1;
        u8 *r2;
#endif

        p->SA2_LABEL(unk61) = flag = 2;
        PLAYERFN_CHANGE_SHIFT_OFFSETS(p, 6, 14);
        r2 = &p->w.kf.flags;
        r1 = *r2;
        flag = 2;
        *r2 = flag | r1;
    }
}

void sub_80485CC(Player *p)
{
    s32 offsetY;

    if (p->heldInput & gPlayerControls.jump) {
        if (p->qSpeedAirX <= Q(0)) {
            p->qSpeedAirX += Q(24. / 256.);

            if (p->qSpeedAirX < 0) {
                sub_8048524(p);
                return;
            }
        } else {
            p->qSpeedAirX -= Q(24. / 256.);

            if (p->qSpeedAirX > 0) {
                sub_8048524(p);
                return;
            }
        }
    }
    // _0804860C

    p->qSpeedGround = Q(0);
    p->qSpeedAirX = Q(0);
    p->qSpeedAirY = Q(0);

    offsetY = p->spriteOffsetY - 14;

    if (GRAVITY_IS_INVERTED) {
        offsetY = -offsetY;
    }

    p->qWorldY += Q(offsetY);

    SA2_LABEL(sub_8022318)(p);

    p->SA2_LABEL(unk2A) = 15;
    p->charState = CHARSTATE_3;
}

s32 sub_8048650(Player *p)
{
    u8 arr;

    s32 result;
    if (p->moveState & MOVESTATE_FACING_LEFT) {
        s32 worldX, worldY;
        worldX = I(p->qWorldX) - 2;
        worldX -= p->spriteOffsetX;
        worldY = I(p->qWorldY);
        result = SA2_LABEL(sub_801E4E4)(worldX, worldY, p->layer, -8, &arr, SA2_LABEL(sub_801ED24));

        if (arr & 0x1) {
            p->rotation = +Q(0.25);
        } else {
            p->rotation = arr;
        }
    } else {
        s32 worldX, worldY;
        worldX = I(p->qWorldX) + 2;
        worldX += p->spriteOffsetX;
        worldY = I(p->qWorldY);
        result = SA2_LABEL(sub_801E4E4)(worldX, worldY, p->layer, +8, &arr, SA2_LABEL(sub_801ED24));

        if (!(arr & 0x1)) {
            p->rotation = arr;
        } else {
            p->rotation = -Q(0.25);
        }
    }

    return result;
}

// TODO: Remove gotos and register fake-match
void sub_80486E8(Player *p)
{
    u8 sp00;
    s32 res;
    s32 offsetY;
    s32 qSpeed;

    if (p->w.kf.SA2_LABEL(unkAE) < 0) {
        goto _08048924;
    }

    if (p->moveState & MOVESTATE_STOOD_ON_OBJ) {
        goto _08048924;
    }

    // _08048710
    p->qSpeedGround = Q(0);
    p->qSpeedAirX = Q(0);
    p->qSpeedAirY = Q(0);

    if (p->charState != CHARSTATE_70) {
        p->charState = CHARSTATE_71;
    }
    // _08048728

    if (p->heldInput & DPAD_UP) {
        // __08048738
        offsetY = Q(p->spriteOffsetY);

        if (GRAVITY_IS_INVERTED) {
            offsetY = -offsetY;
        }
        // _08048750

        p->qWorldY -= offsetY;
        res = sub_8048650(p);
        p->qWorldY += offsetY;

        if (res > 2) {
            goto _0804893A;
        } else if (res < 0) {
            goto _080488CA;
        } else {
            // _08048770
            offsetY = Q(9);

            if (GRAVITY_IS_INVERTED) {
                offsetY = -offsetY;
            }
            // _08048780

            p->qWorldY -= offsetY;
            res = SA2_LABEL(sub_8029AC0)(p, &sp00, NULL);
            p->qWorldY += offsetY;

            if (res < 0) {
                p->charState = CHARSTATE_72;
                p->qWorldY -= Q(res);

                goto _08048862;
            } else {
                // _080487AC
                p->charState = CHARSTATE_72;
                qSpeed = Q(0.75);

                if (p->moveState & MOVESTATE_IN_WATER) {
                    qSpeed = Q(0.50);
                }
                // _080487C0

                if (p->moveState & MOVESTATE_2000) {
                    qSpeed <<= 1;
                }
                // _080487CC

                p->qSpeedAirY = -qSpeed;
            }
        }

        goto _08048862;
    } else if (p->heldInput & DPAD_DOWN) {
        // _080487D2 + 0xA
        offsetY = Q(p->spriteOffsetY);

        if (GRAVITY_IS_INVERTED) {
            offsetY = -offsetY;
        }

        p->qWorldY += offsetY;
        res = sub_8048650(p);
        p->qWorldY -= offsetY;

        if (res > 0) {
            goto _08048924;
        }
        // _0804880A

        res = SA2_LABEL(sub_8029B0C)(p, &sp00, NULL);

        if (res < 0) {
            p->qWorldY += Q(res);
            p->rotation = sp00;
            p->qSpeedGround = Q(0);
            p->qSpeedAirX = Q(0);
            p->qSpeedAirY = Q(0);

            SA2_LABEL(sub_8022318)(p);
            p->charState = CHARSTATE_63;
            return;
        } else {
            // _08048840
            p->charState = CHARSTATE_73;

            qSpeed = Q(0.75);

            if (p->moveState & MOVESTATE_IN_WATER) {
                qSpeed = Q(0.50);
            }
            // _080487C0

            if (p->moveState & MOVESTATE_2000) {
                qSpeed <<= 1;
            }
            // _080487CC

            p->qSpeedAirY = +qSpeed;
        }

    _08048862:
        Player_8047280(p);
        goto _08048876;
    } else {
        res = sub_8048650(p);
        if (res > 0) {
            goto _08048924;
        }
    }
    // _08048876
_08048876:
    res = 1;

    if (!(p->heldInput & DPAD_VERTICAL)) {
        res = SA2_LABEL(sub_8029B0C)(p, &sp00, NULL);
        if (res < 0) {
            p->qWorldY += Q(res);
            p->rotation = sp00;
            p->qSpeedGround = Q(0);
            p->qSpeedAirX = Q(0);
            p->qSpeedAirY = Q(0);

            SA2_LABEL(sub_8022318)(p);
            p->charState = CHARSTATE_63;
            return;
        }
    }
    // _080488B2

    if (res != 0) {
        if (--p->w.kf.shift == 0) {
            p->w.kf.shift = 3;
        }
    }

_080488CA:
    if (p->frameInput & gPlayerControls.jump) {
#ifndef NON_MATCHING
        register s32 v asm("r1");
#else
        s32 v;
#endif
        p->qSpeedAirY = -Q(2.625);
        p->qSpeedAirX = +Q(3.0);
        p->moveState ^= MOVESTATE_FACING_LEFT;

        if (p->moveState & MOVESTATE_FACING_LEFT) {
            p->qSpeedAirX = -p->qSpeedAirX;
        }
        // _080488F2

        p->moveState |= MOVESTATE_4;
        p->moveState |= MOVESTATE_IN_AIR;
        p->moveState |= MOVESTATE_100;
        p->spriteOffsetX = 6;
        p->spriteOffsetY = 9;
        v = 0;
        p->charState = 5;
        p->SA2_LABEL(unk61) = v;
    }
    return;
_08048924:
    p->SA2_LABEL(unk61) = 2;
    p->spriteOffsetX = 6;
    p->spriteOffsetY = 14;
    p->charState = CHARSTATE_63;
    return;
_0804893A:
    p->charState = CHARSTATE_74;

    if (GRAVITY_IS_INVERTED) {
        p->qWorldY += Q(p->spriteOffsetY);
    } else {
        p->qWorldY -= Q(p->spriteOffsetY);
    }

    p->SA2_LABEL(unk61) = 5;
    p->w.kf.shift = 0;
}

// (96.50%) https://decomp.me/scratch/4vHPC
NONMATCH("asm/non_matching/game/stage/Player__sub_8048980.inc", void sub_8048980(Player *p))
{
    s32 qSpeedGround = ABS(p->qSpeedGround);
    s8 shift = p->w.kf.shift;

    if (p->SA2_LABEL(unk61) == 1) {
        if (qSpeedGround < Q(3)) {
            qSpeedGround += Q(6. / 256.);
        } else if ((qSpeedGround < Q(18)) && ((shift & 0x7F) == 0)) {
            qSpeedGround += Q(3. / 256.);

            if (p->moveState & MOVESTATE_2000) {
                qSpeedGround += Q(6. / 256.);
            }
        }
        // _080489D8

        if (p->moveState & MOVESTATE_IN_WATER) {
            s32 qSpeedCap = Q(3);
            if (qSpeedGround > qSpeedCap) {
                qSpeedGround -= Q(9. / 256.);

                if (p->moveState & MOVESTATE_2000) {
                    qSpeedGround -= Q(3. / 256.);
                }

                if (qSpeedGround < qSpeedCap) {
                    qSpeedGround = qSpeedCap;
                }
            }
        }
        // _080489FC

        if (((u8)p->w.kf.shift + 0x40) << 24 <= 0) {
            p->qSpeedGround = -qSpeedGround;
        } else {
            p->qSpeedGround = +qSpeedGround;
        }
        // _08048A18

        if (p->heldInput & DPAD_LEFT) {
            // _08048A18 + 0xC

            if ((u8)shift != 0x80) {
                if (shift < 0) {
                    shift = -shift;
                }

                shift += 2;
            }
        } else if (p->heldInput & DPAD_RIGHT) {
            // _08048A42 + 0x8
            if (shift != 0) {
                if (shift > 0) {
                    shift = -shift;
                }

                shift += 2;
            }
        } else if ((shift & 0x7F) != 0) {
            shift += 2;
        }
        // _08048A78
        p->w.kf.shift = shift;

        p->qSpeedAirX = Q_MUL(COS_24_8((u8)shift << 2), qSpeedGround);

        if (p->qSpeedAirY < Q(0.5)) {
            p->qSpeedAirY += Q(24. / 256.);
        } else {
            p->qSpeedAirY -= Q(24. / 256.);
        }
    }
    // _08048AB8

    if (gCamera.SA2_LABEL(unk4C) > 0) {
        gCamera.SA2_LABEL(unk4C) -= 2;
    } else if (gCamera.SA2_LABEL(unk4C) < 0) {
        gCamera.SA2_LABEL(unk4C) += 4;
    }
}
END_NONMATCH

bool32 sub_8048ADC(Player *p)
{
    if ((p->moveState & MOVESTATE_SPINDASH) || ((s8)(p->rotation + Q(0.25)) <= Q(0)) || (p->moveState & MOVESTATE_20)
        || !(p->frameInput & gPlayerControls.attack)) {
        return 0;
    } else {
        s32 qSpeed = Q(3);
        if (p->moveState & MOVESTATE_FACING_LEFT) {
            qSpeed = -qSpeed;
        }
        p->qSpeedGround += qSpeed;

        p->SA2_LABEL(unk62)++;
        p->charState = CHARSTATE_76;

        return 1;
    }
}

bool32 sub_8048B38(Player *p)
{
    u8 rot = p->rotation;
    s32 qSpeed;

    if (GRAVITY_IS_INVERTED) {
        rot += Q(0.25);
        rot = -rot;
        rot -= Q(0.25);
    }

    if (SA2_LABEL(sub_8022F58)(rot + Q(0.5), p) < 4) {
        SA2_LABEL(sub_8021BE0)(p);
        return FALSE;
    }

    p->moveState |= MOVESTATE_IN_AIR;
    p->moveState &= ~(MOVESTATE_1000000 | MOVESTATE_20);
    p->moveState &= ~(MOVESTATE_800);

    /* 1st speed apply */
    if (p->moveState & MOVESTATE_IN_WATER) {
        qSpeed = Q(1);
    } else {
        qSpeed = Q(2);
    }

    rot = p->rotation - Q(0.25); // turn 90 degrees left
    p->qSpeedAirX += Q_MUL(qSpeed, COS_24_8(rot * 4));
    p->qSpeedAirY += Q_MUL(qSpeed, SIN_24_8(rot * 4));

    /* 2nd speed apply */
    if (p->moveState & MOVESTATE_FACING_LEFT) {
        qSpeed = -Q(2);
    } else {
        qSpeed = +Q(2);
    }

    rot += Q(0.25); // turn 90 degrees right (back to original)
    p->qSpeedAirX += Q_MUL(qSpeed, COS_24_8(rot * 4));
    p->qSpeedAirY += Q_MUL(qSpeed, SIN_24_8(rot * 4));

    p->charState = CHARSTATE_79;
    Player_Knuckles_InitGfx_UppercutFlame(p);

    return TRUE;
}

s32 sub_8048C3C(Player *p)
{
    switch (p->SA2_LABEL(unk62)) {
        case 0: {
            sub_8048ADC(p);
            return p->SA2_LABEL(unk62);
        } break;

        case 1: {
            if (p->frameInput & gPlayerControls.attack) {
                p->SA2_LABEL(unk63) = 1;
            }

            return p->SA2_LABEL(unk62);
        } break;

        case 2: {
            if (p->frameInput & gPlayerControls.attack) {
                p->SA2_LABEL(unk63) = 1;
            }

            return p->SA2_LABEL(unk62);
        } break;

        case 3: {
            sub_8048B38(p);
            return p->SA2_LABEL(unk62);
        } break;
    }

    return 0;
}

void sub_8048CB0(Player *p)
{
    if (p->SA2_LABEL(unk62) == 0) {
        if ((gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) || (sub_8048C3C(p) == 0)) {
            if (Player_Spindash(p) || sub_8044250(p)) {
                return;
            }

            SA2_LABEL(sub_8029CA0)(p);
            Player_8044F7C(p);
        }

        SA2_LABEL(sub_80232D0)(p);
        Player_UpdatePosition(p);
        SA2_LABEL(sub_8022D6C)(p);
        SA2_LABEL(sub_8029ED8)(p);
    } else {
        SA2_LABEL(sub_8029CA0)(p);
        if ((gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) && (sub_8048C3C(p) != 3)) {
            s32 qSpeed = p->qSpeedGround;

            if (qSpeed > Q(0)) {
                if ((qSpeed - Q(96. / 256.)) < Q(0)) {
                    qSpeed = 0;
                } else {
                    qSpeed -= Q(96. / 256.);
                }

                p->qSpeedGround = qSpeed;
            } else if (qSpeed < Q(0)) {
                if ((qSpeed + Q(96. / 256.)) > Q(0)) {
                    qSpeed = 0;
                } else {
                    qSpeed += Q(96. / 256.);
                }

                p->qSpeedGround = qSpeed;
            }

            Player_80470AC(p);
            SA2_LABEL(sub_80231C0)(p);
        }

        SA2_LABEL(sub_80232D0)(p);
        Player_UpdatePosition(p);
        SA2_LABEL(sub_8022D6C)(p);
        SA2_LABEL(sub_8029ED8)(p);
    }
}

void Player_Knuckles_SwimFloat_8048D74(Player *p)
{
    Water *water = &gWater;

    if (p->heldInput & DPAD_DOWN) {
        p->charState = CHARSTATE_18;
        p->SA2_LABEL(unk61) = 0;
        return;
    } else if (p->moveState & MOVESTATE_IN_WATER) {
        s16 qSpeed;
#ifndef NON_MATCHING
        register s32 r3 asm("r3");
#else
        s32 r3;
#endif
        s32 qOldSpeed = (u16)p->qSpeedAirY - Q(24. / 256.);
        p->qSpeedAirY -= Q(24. / 256.);
        r3 = qOldSpeed;
        qSpeed = qOldSpeed;

        if (qSpeed < -Q(1)) {
            r3 = -Q(1);
        }

        p->qSpeedAirY = r3;
    }

    if (I(p->qWorldY) - 4 < water->currentWaterLevel) {
        p->qWorldY = Q(water->currentWaterLevel + 4);
        p->qSpeedAirY = 0;
        p->moveState |= MOVESTATE_IN_WATER;
        p->framesUntilDrownCountDecrement = GBA_FRAMES_PER_SECOND;
        p->secondsUntilDrown = 30;
        m4aSongNumStop(27);
    }

    if (p->heldInput & DPAD_UP) {
        p->charState = CHARSTATE_83;
        Player_8044750(p);
    } else {
        Player_804726C(p);
        Player_8047280(p);

        if (p->charState != CHARSTATE_KNUCKLES_FLOAT) {
            Player_Knuckles_InitGfx_FloatSplash(p);
        }

        p->charState = CHARSTATE_KNUCKLES_FLOAT;
    }
}

void sub_8048E34(Player *p)
{
    if (p->SA2_LABEL(unk61) == 0) {
        Player_804726C(p);
        Player_8047280(p);

        if (p->SA2_LABEL(unk62) == 0) {
            Player_8044670(p);

            if (p->moveState & MOVESTATE_1000) {
                if ((p->moveState & MOVESTATE_IN_WATER) && (p->qSpeedAirY >= Q(0))) {
                    p->SA2_LABEL(unk61) = 9;
                    p->moveState &= ~(MOVESTATE_4 | MOVESTATE_FLIP_WITH_MOVE_DIR);
                    p->charState = CHARSTATE_KNUCKLES_FLOAT;
                    Player_Knuckles_InitGfx_FloatSplash(p);
                }
            }
            Player_AirInputControls(p);
        } else {
            if (p->moveState & MOVESTATE_1000) {
                if ((p->moveState & MOVESTATE_IN_WATER) && (p->qSpeedAirY >= Q(0))) {
                    p->SA2_LABEL(unk61) = 9;
                    p->moveState &= ~(MOVESTATE_4 | MOVESTATE_FLIP_WITH_MOVE_DIR);
                    p->charState = CHARSTATE_KNUCKLES_FLOAT;
                    Player_Knuckles_InitGfx_FloatSplash(p);
                }
            }
        }

        SA2_LABEL(sub_80232D0)(p);
        Player_UpdatePosition(p);
        PlayerFn_Cmd_UpdateAirFallSpeed(p);
        Player_8047224(p);
        SA2_LABEL(sub_8022190)(p);
    } else if (p->SA2_LABEL(unk61) < 9) {
        Player_804726C(p);
        Player_8047280(p);

        if (p->SA2_LABEL(unk61) == 2) {
            if (p->moveState & MOVESTATE_1000) {
                if ((p->moveState & MOVESTATE_IN_WATER) && (p->qSpeedAirY >= Q(0))) {
                    p->SA2_LABEL(unk61) = 9;
                    p->moveState &= ~(MOVESTATE_4 | MOVESTATE_FLIP_WITH_MOVE_DIR);
                    p->charState = CHARSTATE_KNUCKLES_FLOAT;
                    Player_Knuckles_InitGfx_FloatSplash(p);
                }
            }
        }

        sub_8048980(p);
        sa2__sub_80232D0(p);
        Player_UpdatePosition(p);

        switch (p->SA2_LABEL(unk61)) {
            case 0: {
                return;
            } break;

            case 1: {
                sub_8048230(p);
            } break;

            case 2: {
                sub_80484CC(p);
            } break;

            case 3: {
                sub_80485CC(p);
            } break;

            case 4: {
                sub_80486E8(p);
            } break;

            case 5: {
                return;
            } break;

            case 6: {
                return;
            } break;
        }
    } else if (sub_8044250(p)) {
        p->qSpeedAirY >>= 1;
        p->SA2_LABEL(unk61) = 0;
    } else {
        Player_AirInputControls(p);
        SA2_LABEL(sub_80232D0)(p);
        Player_UpdatePosition(p);
        Player_Knuckles_SwimFloat_8048D74(p);
        PlayerFn_Cmd_UpdateAirFallSpeed(p);
        Player_8047224(p);
        SA2_LABEL(sub_8022190)(p);
    }
}

void Player_Knuckles_8049000(Player *p)
{
    switch (p->moveState & MOVESTATE_JUMPING) {
        case 0: {
            {
                sub_8048CB0(p);
            }

        } break;

        case MOVESTATE_IN_AIR: {
            sub_8048E34(p);
        } break;

        case MOVESTATE_4: {
            Player_804726C(p);
            Player_8047280(p);
            if (!sub_8044250(p)) {
                SA2_LABEL(sub_8029D14)(p);
                Player_8043DDC(p);

                // _0804749E
                SA2_LABEL(sub_80232D0)(p);
                Player_UpdatePosition(p);
                SA2_LABEL(sub_8022D6C)(p);
                SA2_LABEL(sub_8029ED8)(p);
            }
        } break;

        case MOVESTATE_JUMPING: {
            // Inline of sub_8049208?
            Player_804726C(p);
            Player_8047280(p);
            Player_8044670(p);

            if (p->moveState & MOVESTATE_1000) {
                if ((p->moveState & MOVESTATE_IN_WATER) && (p->qSpeedAirY >= Q(0))) {
                    p->SA2_LABEL(unk61) = 9;
                    p->moveState &= ~(MOVESTATE_4 | MOVESTATE_FLIP_WITH_MOVE_DIR);

                    p->charState = CHARSTATE_KNUCKLES_FLOAT;

                    Player_Knuckles_InitGfx_FloatSplash(p);
                }
            }
            Player_AirInputControls(p);
            SA2_LABEL(sub_80232D0)(p);
            Player_UpdatePosition(p);
            PlayerFn_Cmd_UpdateAirFallSpeed(p);
            Player_8047224(p);
            SA2_LABEL(sub_8022190)(p);
        } break;
    }
}

void Task_KnucklesFloatSplash(void)
{
    struct Task *t = gCurTask;
    MultiplayerSpriteTask *mps = TASK_DATA(gCurTask);
    u8 mpid = mps->mpPlayerID;
    Sprite *s = &mps->s;
    Camera *cam = &gCamera;
    Water *water;
    Player *p;
    u32 mask;

    if (IS_SINGLE_PLAYER) {
        p = &gPlayer;

        if (mpid != PLAYER_1) {
            p = &gPartner;
        }

        water = &gWater;

        if (p->charState != CHARSTATE_KNUCKLES_FLOAT) {
            TaskDestroy(t);
            return;
        }
    } else {
        TaskDestroy(t);
        return;
    }

    s->x = (I(p->qWorldX) - cam->x) + p->SA2_LABEL(unk7C);
    s->y = (I(p->qWorldY) - ({ (u16) cam->y + 4; }));

    s->frameFlags &= ~0x3000;
    mask = p->spriteInfoBody->s.frameFlags & 0x3000;
    s->frameFlags |= mask;

    if (!(p->moveState & MOVESTATE_FACING_LEFT)) {
        SPRITE_FLAG_SET(s, X_FLIP);
    } else {
        SPRITE_FLAG_CLEAR(s, X_FLIP);
    }

    UpdateSpriteAnimation(s);

    if (water->currentWaterLevel >= 0) {
        if (I(p->qWorldY) - 6 < water->currentWaterLevel) {
            DisplaySprite(s);
        }
    }
}

void sub_80491C4(Player *p)
{
    Player_804726C(p);
    Player_8047280(p);

    if (!sub_8044250(p)) {
        SA2_LABEL(sub_8029D14)(p);
        Player_8043DDC(p);
        SA2_LABEL(sub_80232D0)(p);
        Player_UpdatePosition(p);
        SA2_LABEL(sub_8022D6C)(p);
        SA2_LABEL(sub_8029ED8)(p);
    }
}

void sub_8049208(Player *p)
{
    Player_804726C(p);
    Player_8047280(p);
    Player_8044670(p);

    if (p->moveState & MOVESTATE_1000) {
        if ((p->moveState & MOVESTATE_IN_WATER) && (p->qSpeedAirY >= Q(0))) {
            p->SA2_LABEL(unk61) = 9;
            p->moveState &= ~(MOVESTATE_4 | MOVESTATE_FLIP_WITH_MOVE_DIR);

            p->charState = CHARSTATE_KNUCKLES_FLOAT;

            Player_Knuckles_InitGfx_FloatSplash(p);
        }
    }
    Player_AirInputControls(p);
    SA2_LABEL(sub_80232D0)(p);
    Player_UpdatePosition(p);
    PlayerFn_Cmd_UpdateAirFallSpeed(p);
    Player_8047224(p);
    SA2_LABEL(sub_8022190)(p);
}

struct Task *Player_Knuckles_InitGfx_UppercutFlame(Player *p)
{
    struct Task *t
        = CreateMultiplayerSpriteTask(0, 0, 224, p->playerID, Task_UpdateMpSpriteTaskSprite, TaskDestructor_MultiplayerSpriteTask);
    MultiplayerSpriteTask *mps = TASK_DATA(t);
    Sprite *s = &mps->s;

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_KNUCKLES_UPPERCUT);
    s->graphics.anim = SA1_ANIM_CHAR(KNUCKLES, ATTACK);
    s->variant = 3;
    s->oamFlags = SPRITE_OAM_ORDER(8);
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    return t;
}

struct Task *Player_Knuckles_InitGfx_FloatSplash(Player *p)
{
    struct Task *t = CreateMultiplayerSpriteTask(0, 0, 96, p->playerID, Task_KnucklesFloatSplash, TaskDestructor_MultiplayerSpriteTask);
    MultiplayerSpriteTask *mps = TASK_DATA(t);
    Sprite *s = &mps->s;

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_KNUCKLES_FLOAT_SPLASH);
    s->graphics.anim = SA1_ANIM_KNUCKLES_FLOAT_SPLASH;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(8);
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    return t;
}

void sub_8049348(Player *p)
{
    p->SA2_LABEL(unk61) = 2;
    p->charState = CHARSTATE_63;
    p->spriteOffsetX = 6;
    p->spriteOffsetY = 14;
#ifndef NON_MATCHING
    {
        u32 flag;
        u32 r1 = p->w.kf.flags;
        asm("mov %0, #2" : "=r"(flag));
        p->w.kf.flags = flag | r1;
    }
#else
    // This generates the correct instruction with ANY other value, except for 2, because 2 is used in the 1st line...
    p->w.kf.flags |= 2;
#endif
}

void sub_804936C() { }

/* Amy Start */

bool32 sub_8049370(Player *p)
{
    s32 qSpeed;
    u8 rot; // r3

    if ((p->frameInput & gPlayerControls.attack) && !(p->moveState & MOVESTATE_8000)) {
        rot = p->rotation;

        if (!(p->heldInput & DPAD_DOWN)) {
            if (((p->rotation + Q(0.25)) << 24 > Q(0)) && !(p->moveState & MOVESTATE_20)) {
                p->SA2_LABEL(unk62) = 1;
                p->charState = CHARSTATE_87;
                CreateAmyAttackHeartEffect();
                return TRUE;
            } else {
                return FALSE;
            }
        } else {
            if (GRAVITY_IS_INVERTED) {
                rot += Q(0.25);
                rot = -rot;
                rot -= Q(0.25);
            }

            if (SA2_LABEL(sub_8022F58)(rot + Q(0.5), p) < 4) {
                return FALSE;
            }
        }
    } else {
        return FALSE;
    }

    p->charState = CHARSTATE_86;

    qSpeed = (p->moveState & MOVESTATE_IN_WATER) ? Q(3.375) : Q(6.0);

    rot = p->rotation - Q(0.25);
    p->qSpeedAirX += Q_MUL(qSpeed, COS_24_8(rot * 4));
    p->qSpeedAirY += Q_MUL(qSpeed, SIN_24_8(rot * 4));

    p->moveState |= MOVESTATE_IN_AIR;
    p->moveState &= ~(MOVESTATE_1000000 | MOVESTATE_20);
    p->moveState |= MOVESTATE_100;
    p->moveState &= ~MOVESTATE_800;

    m4aSongNumStart(SE_JUMP);

    p->moveState &= ~MOVESTATE_4000000;
    p->moveState |= MOVESTATE_2000000;

    return TRUE;
}

void Player_804948C(Player *p)
{
    if ((p->SA2_LABEL(unk62) == 0) && (p->frameInput & gPlayerControls.attack) && (p->charState != CHARSTATE_HIT_AIR)) {
        p->SA2_LABEL(unk62) = 1;

        if (p->heldInput & DPAD_DOWN) {
            // Downwards "Hammer Swirl"
            m4aSongNumStart(SE_AMY_HAMMER_SWIRL);
            p->charState = CHARSTATE_90;
            p->qSpeedAirX = Q(0);
        } else {
            // "Super Hammer Attack"
            m4aSongNumStart(SE_AMY_SUPER_HAMMER_ATTACK);
            p->charState = CHARSTATE_89;
        }

        CreateAmyAttackHeartEffect();
    }
}

// (95.75%) https://decomp.me/scratch/kGINh
NONMATCH("asm/non_matching/game/stage/Player__Player_Amy_80494E8.inc", void Player_Amy_80494E8(Player *p))
{
    if (p->SA2_LABEL(unk62) == 0) {
        if ((gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) || (sub_8049370(p) == 0)) {
            if (!sub_8044250(p)) {

                if (!(p->moveState & MOVESTATE_200)) {
                    SA2_LABEL(sub_8029CA0)(p);
                } else {
                    SA2_LABEL(sub_8029D14)(p);
                }

                Player_8044F7C(p);
                SA2_LABEL(sub_80232D0)(p);
                Player_UpdatePosition(p);
                SA2_LABEL(sub_8022D6C)(p);
                SA2_LABEL(sub_8029ED8)(p);
            }
        }
    } else {
        // _08049552
        s32 qSpeed;

        if ((gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) && (p->SA2_LABEL(unk62) == 1) && !(p->moveState & MOVESTATE_SPINDASH)
            && ((p->rotation + Q(0.25)) << 24 > Q(0)) && !(p->moveState & MOVESTATE_20) && (p->SA2_LABEL(unk63) == 0)
            && (p->frameInput & gPlayerControls.attack)) {
            p->SA2_LABEL(unk63) = 1;
        }

        // _0804959A

        SA2_LABEL(sub_8029CA0)(p);

        qSpeed = p->qSpeedGround;
        if (qSpeed > Q(0)) {
            qSpeed -= Q(0.375);

            if (qSpeed < 0) {
                qSpeed = Q(0);
            }
            p->qSpeedGround = qSpeed;
        } else if (qSpeed < Q(0)) {
            qSpeed += Q(0.375);

            if (qSpeed > 0) {
                qSpeed = Q(0);
            }
            p->qSpeedGround = qSpeed;
        }

        Player_80470AC(p);
        SA2_LABEL(sub_80231C0)(p);
        SA2_LABEL(sub_80232D0)(p);
        Player_UpdatePosition(p);
        SA2_LABEL(sub_8022D6C)(p);
        SA2_LABEL(sub_8029ED8)(p);
    }
}
END_NONMATCH

void Player_80495F0(Player *p)
{
    Player_804726C(p);
    Player_8047280(p);
    sa2__sub_80232D0(p);
    Player_UpdatePosition(p);
    PlayerFn_Cmd_UpdateAirFallSpeed(p);
    Player_8047224(p);

    switch (p->SA2_LABEL(unk62)) {
        case 0: {
            if ((p->frameInput & gPlayerControls.attack) && (p->charState != CHARSTATE_HIT_AIR)) {
                p->charState = CHARSTATE_92;
                p->SA2_LABEL(unk62) = 1;
            }

            SA2_LABEL(sub_8022190)(p);
        } break;

        case 1: {
            SA2_LABEL(sub_8022838)(p);

            if (!(p->w.kf.flags & 0x2)) {
                // _08049676
#ifndef NON_MATCHING
                register s32 r0 asm("r0");
#else
                s32 r0;
#endif

                u32 isInWater = p->moveState & MOVESTATE_IN_WATER;
                s32 qSpeed = Q(2);

                if (isInWater) {
                    qSpeed -= Q(0.75);
                }

                if (p->moveState & MOVESTATE_FACING_LEFT) {
                    s32 r1 = -p->qSpeedAirX;
                    r0 = qSpeed;
                    if (r0 < r1) {
                        r0 = r1;
                    }
                    r0 = -r0;
                } else {
                    // _0804969E
                    s32 r1 = +p->qSpeedAirX;
                    r0 = qSpeed;
                    if (r0 < r1) {
                        r0 = r1;
                    }
                }
                p->qSpeedAirX = r0;

#ifndef NON_MATCHING
                p->qSpeedGround = *(volatile s16 *)&p->qSpeedAirX;
#else
                p->qSpeedGround = qSpeed;
#endif
                p->SA2_LABEL(unk62) = 2;

                m4aSongNumStart(SE_SONIC_SKID_ATTACK);
            }
        } break;

        case 2: {
            SA2_LABEL(sub_8022838)(p);

            if (!(p->w.kf.flags & 0x2)) {
                if (p->qSpeedAirX <= 0) {
                    p->qSpeedAirX += Q(24. / 256.);

                    if (p->qSpeedAirX < Q(0)) {
                        goto _08049720;
                    }
                } else {
                    // _080496EC
                    p->qSpeedAirX -= Q(24. / 256.);

                    if (p->qSpeedAirX > Q(0)) {
                        goto _08049720;
                    }
                }
                // _080496F8

                p->qSpeedGround = Q(0);
                p->qSpeedAirX = Q(0);
                p->qSpeedAirY = Q(0);

                SA2_LABEL(sub_8022318)(p);

                p->moveState &= ~MOVESTATE_4000000;
                p->SA2_LABEL(unk2A) = 15;

                p->charState = CHARSTATE_93;
                return;
            }
        _08049720:
            // _08049720

            { // TODO: Not direct inline of sub_8048524, but similar structure!
                s32 offsetY;
                u8 rot;

                if ((gStageTime % 4u) == 0) {
                    offsetY = p->spriteOffsetY;

                    if (GRAVITY_IS_INVERTED) {
                        offsetY = -offsetY;
                    }

                    CreateBrakingDustEffect(I(p->qWorldX), I(p->qWorldY) + offsetY);
                }

                SA2_LABEL(sub_8022838)(p);

                offsetY = SA2_LABEL(sub_8029B88)(p, &rot, NULL);
                if (offsetY < 7) {
                    if (GRAVITY_IS_INVERTED) {
                        offsetY = -offsetY;
                    }

                    p->qWorldY += Q(offsetY);
                    p->rotation = rot;
                } else if (!(p->moveState & MOVESTATE_STOOD_ON_OBJ)) {
                    p->SA2_LABEL(unk62) = 1;
                    p->w.kf.flags |= 2;
                }
            }
        } break;
    }
}

void Player_Amy_80497AC(Player *p)
{
    switch (p->moveState & MOVESTATE_IN_AIR) {
        case 0: {
            if (p->moveState & MOVESTATE_1000000) {
                sub_80472B8(p);
            } else {
                Player_Amy_80494E8(p);
            }
        } break;

        case MOVESTATE_IN_AIR: {
            switch (p->moveState & (MOVESTATE_2000000 | MOVESTATE_4000000)) {
                case 0: {
                    Player_804726C(p);
                    Player_8047280(p);
                    Player_804948C(p);
                    Player_8044670(p);

                    Player_AirInputControls(p);
                    SA2_LABEL(sub_80232D0)(p);
                    Player_UpdatePosition(p);
                    PlayerFn_Cmd_UpdateAirFallSpeed(p);
                    Player_8047224(p);
                    SA2_LABEL(sub_8022190)(p);
                } break;

                case MOVESTATE_2000000: {
                    Player_804726C(p);
                    Player_8047280(p);

                    Player_AirInputControls(p);
                    SA2_LABEL(sub_80232D0)(p);
                    Player_UpdatePosition(p);
                    PlayerFn_Cmd_UpdateAirFallSpeed(p);
                    Player_8047224(p);
                    SA2_LABEL(sub_8022190)(p);
                } break;

                case MOVESTATE_4000000: {
                    Player_80495F0(p);
                } break;
            }
        } break;
    }
}

void Player_Amy_8049854(Player *p)
{
    Player_804726C(p);
    Player_8047280(p);
    Player_804948C(p);
    Player_8044670(p);
    Player_AirInputControls(p);
    SA2_LABEL(sub_80232D0)(p);
    Player_UpdatePosition(p);
    PlayerFn_Cmd_UpdateAirFallSpeed(p);
    Player_8047224(p);
    SA2_LABEL(sub_8022190)(p);
}

/* Start of Super Sonic ? */
#include "game/enemies/boss_super_egg_robo.h"

#define CAPSULE_STATE__CAPTURED  +1
#define CAPSULE_STATE__MOVING    0
#define CAPSULE_STATE__DESTROYED -1

typedef s32 CapsuleState;

s32 ExtraBoss__CapsuleGetCaptureState(SomeTaskManager_7C *mgr, Sprite *s, SuperEggRobo *extraBoss, Player *p);
void Task_804B370(void);

void Task_8049898(void)
{
    Player *p = &gPlayer;
    Camera *cam = &gCamera;
    const Collision *coll = gRefCollision;
    MaybeSuperSonic *super;
    Sprite *s;
    s32 r3;

    cam->minY = coll->pxHeight - 200;
    cam->maxX = 480;
    cam->shiftX = 64;
    cam->shiftY = 0;

    Player_804A254(p);

    if (!IS_ALIVE(p)) {
        gCurTask->main = Task_PlayerDied;
        p->charState = CHARSTATE_DEAD;
        p->qSpeedAirX = Q(0);
        p->timerInvulnerability = 2;
        p->itemEffect = 0;
        cam->SA2_LABEL(unk50) |= 3;

        if (IS_SINGLE_PLAYER) {
            gStageFlags |= STAGE_FLAG__ACT_START;
        }

        p->spriteInfoBody->s.frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;
        p->spriteInfoBody->s.frameFlags |= SPRITE_FLAG(PRIORITY, 1);

        p->SA2_LABEL(unk80) = Q(1.0);
        p->SA2_LABEL(unk82) = Q(1.0);
        m4aSongNumStop(0x1C);
        m4aSongNumStop(0x1B);
        m4aSongNumStop(0x78);
    } else if (!(p->moveState & MOVESTATE_IA_OVERRIDE)) {
        sub_8049D7C(p);
    }

    Player_804A20C(p);

    super = TASK_DATA(p->spriteTask);
    r3 = (super->unk8 + 1) & 0xF;

    super->qXs[r3] = p->qWorldX;
    super->qYs[r3] = p->qWorldY;

    super->unk8 = r3;

    Player_8049E3C(p);

    if (p->SA2_LABEL(unk2A) != 0) {
        p->SA2_LABEL(unk2A)--;
    } else if (p->timerInvulnerability > 0) {
        p->timerInvulnerability--;
    }

    Player_SuperSonic_80499CC(p);
}

void Player_SuperSonic_80499CC(Player *p)
{
    if (!(gStageFlags & STAGE_FLAG__ACT_START)) {
#ifdef BUG_FIX
        if (gExtraBossTaskData)
#endif
        {
            if (!(gExtraBossTaskData->flags58 & SER_FLAG__80)) {
                if (++p->timerSpeedup >= GBA_FRAMES_PER_SECOND) {
                    p->timerSpeedup -= GBA_FRAMES_PER_SECOND;

                    if (--gRingCount <= 10) {
                        m4aSongNumStart(SE_TIMER);
                    }

                    if (gRingCount == 0) {
                        // TODO: Is this a macro?
                        gRingCount = 0;
                        p->moveState |= MOVESTATE_DEAD;
                    }
                }
            }
        }
    }
}

void Player_SuperSonic_8049A34(Player *p)
{
    switch (p->heldInput & DPAD_SIDEWAYS) {
        case 0: {
            if (p->qSpeedGround != 0) {
                if (p->qSpeedGround > Q(0)) {
                    p->qSpeedGround -= Q(96. / 256.);

                    if (p->qSpeedGround < Q(0)) {
                        p->qSpeedGround = Q(0);
                    }
                } else if (p->qSpeedGround < Q(0)) {
                    p->qSpeedGround += Q(96. / 256.);
                    if (p->qSpeedGround > Q(0)) {
                        p->qSpeedGround = Q(0);
                    }
                }
            }
        } break;

        case DPAD_LEFT: {
            p->qSpeedGround -= Q(36. / 256.);

            if (p->qSpeedGround < -Q(2)) {
                p->qSpeedGround = -Q(2);
            }
        } break;

        case DPAD_RIGHT: {
            p->qSpeedGround += Q(36. / 256.);

            if (p->qSpeedGround > +Q(2)) {
                p->qSpeedGround = +Q(2);
            }
        } break;
    }

    p->qSpeedAirX = p->qSpeedGround;
}

void Player_SuperSonic_8049AB8(Player *p)
{
    s32 r0, r3;
    s32 qWorldX;

    if (p->SA2_LABEL(unk62) == 0) {
        if (!sub_8049BAC(p)) {
            if (p->frameInput & gPlayerControls.jump) {
                p->moveState |= MOVESTATE_IN_AIR;
                p->moveState |= MOVESTATE_100;

                p->qSpeedAirY -= Q(4.25);
                m4aSongNumStart(SE_JUMP);
            } else {
                // _08049B04
                Player_SuperSonic_8049A34(p);

                qWorldX = p->qWorldX;
                r3 = qWorldX;
                if (p->qWorldX >= 0) {
                    r0 = qWorldX;
                    if (r0 > Q(480)) {
                        r0 = Q(480);
                    }
                } else {
                    r0 = 0;
                }
                qWorldX = r0;

                if (qWorldX != r3) {
                    if (!(p->moveState & MOVESTATE_IN_AIR)) {
                        p->qSpeedGround = Q(0);
                    }

                    p->qSpeedAirX = 0;
                }

                p->qWorldX = qWorldX;

                Player_UpdatePosition(p);
                Player_UpdatePosition(p);
                Player_804A0B8(p);

                // TODO: Do CHARSTATE_ values have different meanings for Super Sonic?
                p->charState = CHARSTATE_CROUCH;
                return;
            }
        }
    } else {
        sub_804A2FC(p);

        qWorldX = p->qWorldX;
        r3 = qWorldX;
        if (p->qWorldX >= 0) {
            r0 = qWorldX;
            if (r0 > Q(480)) {
                r0 = Q(480);
            }
        } else {
            r0 = 0;
        }
        qWorldX = r0;

        if (qWorldX != r3) {
            if (!(p->moveState & MOVESTATE_IN_AIR)) {
                p->qSpeedGround = Q(0);
            }

            p->qSpeedAirX = 0;
        }

        p->qWorldX = qWorldX;

        Player_UpdatePosition(p);
        Player_UpdatePosition(p);
        Player_804A0B8(p);

        // TODO: Do CHARSTATE_ values have different meanings for Super Sonic?
        p->charState = CHARSTATE_3;
        return;
    }
}

// (87.78%) https://decomp.me/scratch/wiHzX
NONMATCH("asm/non_matching/game/stage/Player__sub_8049BAC.inc", bool32 sub_8049BAC(Player *p))
{
    if ((p->SA2_LABEL(unk61) == 0) || (--p->SA2_LABEL(unk61) == 0)) {
        if (p->frameInput & gPlayerControls.attack) {
            p->SA2_LABEL(unk61) = 8;
            p->SA2_LABEL(unk62) = 1;
            p->qSpeedGround = Q(4);
            p->qSpeedAirX = Q(0);
            p->qSpeedAirY = Q(0);

            sub_804A854(p);
            m4aSongNumStart(SE_SONIC_MIDAIR_SOMERSAULT);
            return TRUE;
        }
    }

    return FALSE;
}
END_NONMATCH

// TODO: Fake-match
void Player_SuperSonic_8049C0C(Player *p)
{
    s32 r0;
    s32 r3;
    s32 qWorldX;
    s32 rot;

    if (p->SA2_LABEL(unk62) == 0) {
        if (!sub_8049BAC(p)) {
            if (!(p->heldInput & gPlayerControls.jump) && (p->moveState & MOVESTATE_100)) {
                s32 qSpeed;
                r0 = p->qSpeedAirY;
#ifndef NON_MATCHING
                asm("movs %0, %1" : "=r"(qSpeed) : "r"(r0));
#else
                qSpeed = r0;
#endif

                if (p->qSpeedAirY < -Q(1.5)) {
                    qSpeed = -Q(1.5);
                }

                p->qSpeedAirY = qSpeed;
            }

            switch (p->heldInput & DPAD_SIDEWAYS) {
                case DPAD_LEFT: {
                    p->qSpeedAirX -= Q(72. / 256.);

                    if (p->qSpeedAirX < -Q(2)) {
                        p->qSpeedAirX = -Q(2);
                    }
                } break;

                case DPAD_RIGHT: {
                    p->qSpeedAirX += Q(72. / 256.);

                    if (p->qSpeedAirX > +Q(2)) {
                        p->qSpeedAirX = +Q(2);
                    }
                } break;
            }

            qWorldX = p->qWorldX;
            r3 = qWorldX;
            if (p->qWorldX >= 0) {
                r0 = qWorldX;
                if (r0 > Q(480)) {
                    r0 = Q(480);
                }
            } else {
                r0 = 0;
            }
            qWorldX = r0;

            if (qWorldX != r3) {
                if (!(p->moveState & MOVESTATE_IN_AIR)) {
                    p->qSpeedGround = Q(0);
                }

                p->qSpeedAirX = 0;
            }
            p->qWorldX = qWorldX;

            // TODO: Find out why Player_UpdatePosition is often called twice in Super Sonic code
            Player_UpdatePosition(p);
            Player_UpdatePosition(p);

            p->qSpeedAirY += Q(32. / 256.);

            rot = (s8)p->rotation;
            if (rot < 0) {
                rot += 2;

                if (rot > 0) {
                    rot = 0;
                }
            } else if (rot > 0) {
                rot -= 2;

                if (rot < 0) {
                    rot = 0;
                }
            }

            p->rotation = rot;

            if (p->qSpeedAirY >= 0) {
                sub_8049FD0(p);
            }

            p->charState = CHARSTATE_CROUCH;
        }
    } else {
        p->qSpeedGround -= Q(0.25);

        if (p->qSpeedGround <= Q(0)) {
            p->SA2_LABEL(unk62) = Q(0);
            p->qSpeedAirX = Q(0);
            p->qSpeedAirY = Q(0);
        } else {
            p->qSpeedAirX = p->qSpeedGround;
        }

        qWorldX = p->qWorldX;
        r3 = qWorldX;
        if (p->qWorldX >= 0) {
            r0 = qWorldX;
            if (r0 > Q(480)) {
                r0 = Q(480);
            }
        } else {
            r0 = 0;
        }
        qWorldX = r0;

        if (qWorldX != r3) {
            if (!(p->moveState & MOVESTATE_IN_AIR)) {
                p->qSpeedGround = Q(0);
            }

            p->qSpeedAirX = 0;
        }
        p->qWorldX = qWorldX;

        // TODO: Find out why Player_UpdatePosition is often called twice in Super Sonic code
        Player_UpdatePosition(p);
        Player_UpdatePosition(p);
        Player_804A0B8(p);
        p->charState = CHARSTATE_3;
    }
}

void sub_8049D7C(Player *p)
{
    if (p->SA2_LABEL(unk2A) != 0) {
        p->rotation -= Q(12. / 256.);
        Player_UpdatePosition(p);
        Player_UpdatePosition(p);
        Player_804A0B8(p);
    } else {
        if (p->moveState & MOVESTATE_IN_AIR) {
            Player_SuperSonic_8049C0C(p);
        } else {
            Player_SuperSonic_8049AB8(p);
        }

        if ((gStageTime % 4u) == 0) {
            if (PseudoRandom32() & 0x10000) {
                s32 qWorldX, qWorldY;
                s32 qRand;
                qWorldX = p->qWorldX + (((u32)PseudoRandom32() & 0xF0000) >> 8);
                qWorldY = p->qWorldY + (((u32)PseudoRandom32() & 0xF0000) >> 8) - Q(8);
                qRand = (((u32)PseudoRandom32() & 0x10000) >> 16);

                sub_804A498(qWorldX, qWorldY, qRand);
            }
        }
    }
}

// (100.0%) https://decomp.me/scratch/S7Q8B
void Player_8049E3C(Player *p)
{
    Sprite *s = &p->spriteInfoBody->s;
    PlayerSpriteInfo *psiBody = p->spriteInfoBody;
    MaybeSuperSonic *superSonic;
    s32 sp00;

    SPRITE_FLAG_CLEAR(s, ROT_SCALE_ENABLE);
    SPRITE_FLAG_CLEAR(s, ROT_SCALE);
    SPRITE_FLAG_SET(s, X_FLIP);
    UpdateSpriteAnimation(s);

    if (IS_ALIVE(p)) {
        if (p->moveState & MOVESTATE_100000) {
            return;
        }

        if ((p->SA2_LABEL(unk2A) == 0) && (p->timerInvulnerability != 0) && (gStageTime & 0x2)) {
            return;
        }
    }

    superSonic = TASK_DATA(p->spriteTask);
    sp00 = superSonic->unk8;

    {
        psiBody->transform.x = s->x = I(p->qWorldX) - gCamera.x;
        psiBody->transform.y = s->y = I(p->qWorldY) - gCamera.y;

        if (p->charState == CHARSTATE_WALK) {
            SPRITE_FLAG_CLEAR(s, X_FLIP);
            SPRITE_FLAG_CLEAR(s, ROT_SCALE);
            SPRITE_FLAG_SET(s, ROT_SCALE_ENABLE);

            psiBody->transform.rotation = p->rotation * 4;
            psiBody->transform.qScaleX = -Q(1);

            TransformSprite(s, &psiBody->transform);
        }

        DisplaySprite(s);
    }

    s->frameFlags |= (SPRITE_FLAG(18, 1) | SPRITE_FLAG(19, 1));

    if ((gStageTime & 0x2) == 0) {
        s32 r6 = 1;
#ifndef NON_MATCHING
        register s32 *qXs asm("sl") = &superSonic->qXs[0];
        register s32 *qYs asm("r9") = &superSonic->qYs[0];
#else
        s32 *qXs = &superSonic->qXs[0];
        s32 *qYs = &superSonic->qYs[0];
#endif
        s32 r7 = sp00 - 2;

        for (; r6 < 4; r7 -= 2, r6++) {
            s32 index = r7 % ARRAY_COUNT(superSonic->qXs);
#ifndef NON_MATCHING
            // All this for an add with swapped params...
            s32 x;
            asm("mov r3, %1\n"
                "add %0, r3, %2\n"
                "ldr %0, [%0]\n"
                : "=r"(x)
                : "r"(qXs), "r"(index * 4));
#else
            s32 x = qXs[index];
#endif
            psiBody->transform.x = s->x = I(x) - r6 * 8 - gCamera.x;
            psiBody->transform.y = s->y = I(qYs[index]) - gCamera.y;

            if (p->charState == 4) {
                SPRITE_FLAG_CLEAR(s, X_FLIP);
                SPRITE_FLAG_CLEAR(s, ROT_SCALE);
                SPRITE_FLAG_SET(s, ROT_SCALE_ENABLE);
                SPRITE_FLAG_SET_VALUE(s, ROT_SCALE, r6);

                psiBody->transform.rotation = p->rotation * 4;
                psiBody->transform.qScaleX = -Q(1);

                TransformSprite(s, &psiBody->transform);
            }

            DisplaySprite(s);
        }
    }

    s->frameFlags &= ~(SPRITE_FLAG(18, 1) | SPRITE_FLAG(19, 1));
}

void sub_8049FD0(Player *p)
{
#ifndef NON_MATCHING
    register s32 x asm("r4") = gCamera.x;
#else
    s32 x = gCamera.x;
#endif
    s32 scrollX = (x + gStageTime * 8);
    s32 y;
    s32 sp08;
    s32 px, py;
    s32 res0;
    s32 res1;
    u8 layer;
    // 2688(0xA80) =
    //          3072         -          600
    // Moon Zone Pixel Width - (4 * Metatile_Width)
    const s32 scrollMaxX = (28 * 96);

    if (scrollX - 72 >= scrollMaxX) {
        scrollX -= 72;
        scrollX = Mod(scrollX, scrollMaxX) + 72;
    }

    px = Q(x - scrollX);
    x = p->qWorldX;
    x -= px;

    y = p->qWorldY;

    sp08 = p->SA2_LABEL(unk61);
    layer = p->layer;
    y = I(y);
    py = y + p->spriteOffsetY;
    x = I(x);
    px = x - 2;
    px -= p->spriteOffsetX;
    res0 = SA2_LABEL(sub_801E4E4)(py, px, layer, +8, 0, SA2_LABEL(sub_801EE64));

    y += p->spriteOffsetY;
    x += 2;
    x += p->spriteOffsetX;
    res1 = SA2_LABEL(sub_801E4E4)(y, x, layer, +8, 0, SA2_LABEL(sub_801EE64));

    if (res1 > res0) {
        res1 = res0;
    }

    if (res1 < 0) {
        p->qWorldY += Q(res1);
        p->qSpeedGround = p->qSpeedAirX;
        p->qSpeedAirY = 0;

        SA2_LABEL(sub_8021BE0)(p);

        p->SA2_LABEL(unk61) = sp08;
    }
}

void Player_804A0B8(Player *p)
{
#ifndef NON_MATCHING
    register s32 x asm("r4") = gCamera.x;
#else
    s32 x = gCamera.x;
#endif
    s32 y;
    s32 anotherY;
    s32 scrollX = (x + gStageTime * 8);
    s32 sp08;
    s32 px, py;
    s32 res0;
    s32 res1;
    u8 layer;
    // 2688(0xA80) =
    //          3072         -          600
    // Moon Zone Pixel Width - (4 * Metatile_Width)
    const s32 scrollMaxX = (28 * 96);

    if (scrollX - 72 >= scrollMaxX) {
        scrollX -= 72;
        scrollX = Mod(scrollX, scrollMaxX) + 72;
    }

    px = Q(x - scrollX);
    x = p->qWorldX;
    x -= px;

    y = p->qWorldY;

    layer = p->layer;
    anotherY = I(y);
    py = anotherY + p->spriteOffsetY;
    x = I(x);
    px = x - 2;
    px -= p->spriteOffsetX;
    res0 = SA2_LABEL(sub_801E4E4)(py, px, layer, +8, 0, SA2_LABEL(sub_801EE64));

    anotherY += p->spriteOffsetY;
    x += 2;
    x += p->spriteOffsetX;
    res1 = SA2_LABEL(sub_801E4E4)(anotherY, x, layer, +8, 0, SA2_LABEL(sub_801EE64));

    if (res1 > res0) {
        res1 = res0;
    }

    if (res1 != 0) {
        if (res1 < 0) {
            if (res1 < -11) {
                return;
            }

            y += Q(res1);
        } else {
            // bc:
            s32 airX = I(ABS(p->qSpeedAirX));

            if ((airX += 11) > 11) {
                airX = 11;
            }

            if (res1 > airX) {
                if (!(p->moveState & MOVESTATE_GOAL_REACHED)) {
                    p->moveState |= MOVESTATE_IN_AIR;
                } else {
                    p->qWorldY = y;
                }

                return;
            }

            y += Q(res1);
        }
    }

    p->qWorldY = y;
}

// Called when Super Sonic is initialized
void sub_804A1B8(Player *p)
{
    MaybeSuperSonic *superSonic = TASK_DATA(p->spriteTask);
    s32 ringCount;
    s32 i;

    superSonic->unk8 = 0;
    ringCount = gRingCount;

    for (i = 0; i < (s32)ARRAY_COUNT(superSonic->qXs); i++) {
        superSonic->qXs[i] = p->qWorldX;
        superSonic->qYs[i] = p->qWorldY;
    }

    gRingCount = EXTRA_BOSS__INITIAL_RING_COUNT;

    p->spriteInfoBody->s.frameFlags &= ~SPRITE_FLAG_MASK_PRIORITY;
    p->spriteInfoBody->s.frameFlags |= SPRITE_FLAG(PRIORITY, 1);

    Set_3005C74_to_4();
}

void Player_804A20C(Player *p)
{
    Sprite *s = &p->spriteInfoBody->s;
    TileInfoFirework *tileInfo = &gUnknown_084AE1B0[p->charState];

    if ((s->graphics.anim != tileInfo->anim) || (s->variant != tileInfo->variant)) {
        s->graphics.anim = tileInfo->anim;
        s->variant = tileInfo->variant;
        s->prevVariant = -1;
    }
}

void Player_804A254(Player *p)
{
    u16 input = p->heldInput;

    if (!(p->moveState & MOVESTATE_IGNORE_INPUT)) {
        p->heldInput = gInput;
    }

    input ^= p->heldInput;
    input &= p->heldInput;

    p->frameInput = input;
}

bool32 Player_SuperSonic_UnusedJump(Player *p)
{
    bool32 result;

    if (p->frameInput & gPlayerControls.jump) {
        p->moveState |= MOVESTATE_IN_AIR;
        p->moveState |= MOVESTATE_100;

        p->qSpeedAirY -= Q(4.25);

        m4aSongNumStart(SE_JUMP);
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void sub_804A2B8(Player *p)
{
    switch (p->heldInput & DPAD_SIDEWAYS) {
        case DPAD_LEFT: {
            p->qSpeedAirX -= Q(72. / 256.);

            if (p->qSpeedAirX < -Q(2)) {
                p->qSpeedAirX = -Q(2);
            }
        } break;

        case DPAD_RIGHT: {
            p->qSpeedAirX += Q(72. / 256.);

            if (p->qSpeedAirX > +Q(2)) {
                p->qSpeedAirX = +Q(2);
            }
        } break;
    }
}

void sub_804A2FC(Player *p)
{
    p->qSpeedGround = (p->qSpeedGround - Q(0.25));

    if (p->qSpeedGround <= Q(0)) {
        p->SA2_LABEL(unk62) = 0;
        p->qSpeedAirX = Q(0);
        p->qSpeedAirY = Q(0);
    } else {
        p->qSpeedAirX = p->qSpeedGround;
    }
}

void sub_804A320(Player *p)
{
    bool32 result;

    if (!(p->heldInput & gPlayerControls.jump) && (p->moveState & MOVESTATE_100)) {
#ifndef NON_MATCHING
        register s32 r3 asm("r3");
#else
        s32 r3;
#endif
        s32 qSpeed = p->qSpeedAirY;
        r3 = qSpeed;
        if (qSpeed < -Q(1.5)) {
            r3 = -Q(1.5);
        }

        p->qSpeedAirY = r3;
    }
}

void sub_804A354(Player *p) { p->qSpeedAirX = p->qSpeedGround; }

void sub_804A35C(Player *p)
{
    s32 rot = (s8)p->rotation;

    if (rot < 0) {
        rot += 2;

        if (rot > 0) {
            rot = 0;
        }
    } else if (rot > 0) {
        rot -= 2;

        if (rot < 0) {
            rot = 0;
        }
    }

    p->rotation = rot;
}

void sub_804A37C(Player *p)
{
    s32 r2 = p->qWorldX;
    s32 r4 = r2;
    s32 r0;

    if (p->qWorldX >= Q(0)) {
        r0 = p->qWorldX;

        if (r0 > Q(480)) {
            r0 = Q(480);
        }
    } else {
        r0 = 0;
    }

    r2 = r0;

    if (r2 != r4) {
        if (!(p->moveState & MOVESTATE_IN_AIR)) {
            p->qSpeedGround = 0;
        }

        p->qSpeedAirX = 0;
    }

    p->qWorldX = r2;
}

void sub_804A3B8(Player *p) { p->qSpeedAirY += Q(32. / 256.); }

void Task_804A3C0(void)
{
#ifndef NON_MATCHING
    register struct Task *t asm("r2") = gCurTask;
#else
    struct Task *t = gCurTask;
#endif
    SomeTaskManager_60 *mgr = TASK_DATA(t);
    Sprite *s = &mgr->s;
    Player *p = &gPlayer;
    Camera *cam = &gCamera;
    s32 x, y;

    mgr->qUnk50 = p->qWorldX;
    mgr->qUnk54 = p->qWorldY;

    if (!IS_ALIVE(p) || ((mgr->unk2) && (s->frameFlags & 0x4000))) {
        TaskDestroy(t);
        return;
    }

    if ((p->SA2_LABEL(unk62) == 0) || (p->moveState & MOVESTATE_GOAL_REACHED)) {
        mgr->unk2 = 1;

        s->graphics.anim = SA1_ANIM_SUPER_SONIC_DASH;
        s->variant = 1;
    }

    x = I(mgr->qUnk50) - cam->x;
    y = I(mgr->qUnk54) - cam->y;

    s->x = x;
    s->y = y;

    if (gStageTime & 0x2) {
        SPRITE_FLAG_CLEAR(s, PRIORITY);
        SPRITE_FLAG_SET_VALUE(s, PRIORITY, 2);
    } else {
        SPRITE_FLAG_CLEAR(s, PRIORITY);
        SPRITE_FLAG_SET_VALUE(s, PRIORITY, 1);
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_804A498(s32 qWorldX, s32 qWorldY, bool32 param2)
{
    struct Task *t;
    SomeTaskManager_Graphic sp00;
    SomeTaskManager_60 *mgr;

    if (gUnknown_03005C74 > 0) {
        gUnknown_03005C74--;

        if (param2) {
            sp00.tileInfo.anim = SA1_ANIM_SUPER_SONIC_SPARKLE;
            sp00.tileInfo.variant = 1;

        } else {
            sp00.tileInfo.anim = SA1_ANIM_SUPER_SONIC_SPARKLE;
            sp00.tileInfo.variant = 0;
        }

        sp00.vram4 = ALLOC_TILES(SA1_ANIM_SUPER_SONIC_SPARKLE);

        t = CreateSomeTaskManager_60_Task(&sp00, Task_804A54C, TaskDestructor_804A830);
        mgr = TASK_DATA(t);
        mgr->qUnk50 = qWorldX;
        mgr->qUnk54 = qWorldY;
        mgr->qUnk58 = 0;
        mgr->qUnk5C = -Q(0.25);
        mgr->s.oamFlags = SPRITE_OAM_ORDER(8);
        mgr->s.frameFlags = SPRITE_FLAG(X_FLIP, 1) | SPRITE_FLAG(PRIORITY, 1);
    }
}

void Task_804A54C(void)
{
    SomeTaskManager_60 *mgr = TASK_DATA(gCurTask);
    Sprite *s = &mgr->s;
    Camera *cam = &gCamera;
    s32 screenX, screenY;

    screenX = I(mgr->qUnk50) - cam->x;
    screenY = I(mgr->qUnk54) - cam->y;

    if ((s->frameFlags & 0x4000) || ((screenX < -16) || screenX >= DISPLAY_WIDTH + 16)) {
        TaskDestroy(gCurTask);
        return;
    }

    s->x = screenX;
    s->y = screenY;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    mgr->qUnk50 += mgr->qUnk58;
    mgr->qUnk58 += mgr->qUnk5C;
}

void sub_804A5D8(s32 screenX, s32 screenY)
{
    struct Task *t;
    SomeTaskManager_60 *mgr;
    SomeTaskManager_Graphic sp00, sp08, sp0C, sp10;

    sp00.tileInfo.anim = SA1_ANIM_WARNING;
    sp00.tileInfo.variant = 0;
    sp00.vram4 = ALLOC_TILES_VARIANT(SA1_ANIM_WARNING, 0);
    t = CreateSomeTaskManager_60_Task(&sp00, Task_804A71C, TaskDestructor_SomeTaskManager_60_Common);
    mgr = TASK_DATA(t);
    mgr->unk0 = 0;
    mgr->qUnk50 = screenX; // NOTE: Q-value set to integer
    mgr->qUnk54 = screenY; // NOTE: Q-value set to integer
    mgr->s.oamFlags = 0;
    mgr->s.frameFlags = 0;
    mgr->transform.qScaleX = Q(1);
    mgr->transform.qScaleY = Q(1);

    sp08.tileInfo.anim = SA1_ANIM_WARNING;
    sp08.tileInfo.variant = 1;
    sp08.vram4 = ALLOC_TILES_VARIANT(SA1_ANIM_WARNING, 1);
    t = CreateSomeTaskManager_60_Task(&sp08, Task_804A71C, TaskDestructor_SomeTaskManager_60_Common);
    mgr = TASK_DATA(t);
    mgr->unk0 = 1;
    mgr->qUnk50 = screenX; // NOTE: Q-value set to integer
    mgr->qUnk54 = screenY; // NOTE: Q-value set to integer
    mgr->s.oamFlags = 0;
    mgr->transform.qScaleX = Q(1);
    mgr->transform.qScaleY = Q(1);
    mgr->s.frameFlags = SPRITE_FLAG(18, 1);

    sp0C.tileInfo.anim = SA1_ANIM_WARNING;
    sp0C.tileInfo.variant = 2;
    sp0C.vram4 = ALLOC_TILES_VARIANT(SA1_ANIM_WARNING, 1);
    t = CreateSomeTaskManager_60_Task(&sp0C, Task_804A71C, TaskDestructor_SomeTaskManager_60_Common);
    mgr = TASK_DATA(t);
    mgr->unk0 = 2;
    mgr->qUnk50 = screenX; // NOTE: Q-value set to integer
    mgr->qUnk54 = screenY; // NOTE: Q-value set to integer
    mgr->s.oamFlags = 0;
    mgr->transform.qScaleX = Q(1);
    mgr->transform.qScaleY = Q(1);

#ifndef NON_MATCHING
    asm("lsl %0, %0, #0xB\n"
        "str %0, [%1, #0x28]" ::"r"(0x80),
        "r"(mgr));
#else
    mgr->s.frameFlags = SPRITE_FLAG(18, 1);
#endif

    sp10.tileInfo.anim = SA1_ANIM_WARNING;
    sp10.tileInfo.variant = 3;
    sp10.vram4 = ALLOC_TILES_VARIANT(SA1_ANIM_WARNING, 1);
    t = CreateSomeTaskManager_60_Task(&sp10, Task_804A71C, TaskDestructor_SomeTaskManager_60_Common);
    mgr = TASK_DATA(t);
    mgr->unk0 = 3;
    mgr->qUnk50 = screenX; // NOTE: Q-value set to integer
    mgr->qUnk54 = screenY; // NOTE: Q-value set to integer
    mgr->s.oamFlags = 0;
    mgr->s.frameFlags = 0;
    mgr->transform.qScaleX = Q(1);
    mgr->transform.qScaleY = Q(1);
    mgr->s.frameFlags = SPRITE_FLAG(18, 1);
}

void Task_804A71C(void)
{
    SomeTaskManager_60 *mgr = TASK_DATA(gCurTask);
    Sprite *s = &mgr->s;
    SpriteTransform *tf;
    s32 x, y;
    s32 v;
#ifndef NON_MATCHING
    register s32 r0 asm("r0");
#else
    s32 r0;
#endif
    s32 r2;

    if (mgr->unk4 >= 0xC0) {
        TaskDestroy(gCurTask);
        return;
    }

    if ((mgr->unk4 == 0x80) && (mgr->unk0 == 0)) {
#ifdef BUG_FIX
        if (gExtraBossTaskData)
#endif
        {
            gExtraBossTaskData->flags58 &= ~0x400000;
        }
    }

    x = I(mgr->qUnk50);
    y = I(mgr->qUnk54);

    v = ((mgr->unk4 & 0x1F) << 11);
    if (v != 0) {
        if (v < 0x4000) {
            r2 = Q(1);

            r0 = SIN_24_8(v >> 6);

        } else if (v >= 0xE000) {
            // TODO: Remove ONE_CYCLE
            s32 theta = (v - 0xE000) << 1;
            r0 = SIN_24_8((theta >> 6) & ONE_CYCLE);
            r2 = r0 + Q(1);
            r0 = Q(1) - r0;
        } else {
            r0 = Q(1);
            r2 = r0;
        }
    } else {
        r0 = Q(1);
        r2 = r0;
    }

    if (r2 == 0) {
        r2 = 2;
    }

    if (r0 == 0) {
        r0 = 2;
    }

    tf = &mgr->transform;
    tf->x = x;
    tf->y = y;
    tf->qScaleX = r2;
    tf->qScaleY = r0;

    SPRITE_FLAG_CLEAR(s, ROT_SCALE);
    s->frameFlags |= SPRITE_FLAG(ROT_SCALE_DOUBLE_SIZE, 1) | SPRITE_FLAG(ROT_SCALE_ENABLE, 1) | SA2_LABEL(gUnknown_030054B8)++;

    UpdateSpriteAnimation(s);
    TransformSprite(s, tf);
    DisplaySprite(s);

    mgr->unk4++;
}

void TaskDestructor_804A830(struct Task *t)
{
    SomeTaskManager_60 *mgr = TASK_DATA(t);
    gUnknown_03005C74++;
    TaskDestructor_SomeTaskManager_60_Common(t);
}

void Set_3005C74_to_4() { gUnknown_03005C74 = 4; }

void sub_804A854(Player *p)
{
    SomeTaskManager_Graphic sp00;
    SomeTaskManager_60 *mgr;
    struct Task *t;

    sp00.tileInfo.anim = SA1_ANIM_SUPER_SONIC_DASH;
    sp00.tileInfo.variant = 0;
    sp00.vram4 = ALLOC_TILES(SA1_ANIM_SUPER_SONIC_DASH);
    t = CreateSomeTaskManager_60_Task(&sp00, Task_804A3C0, TaskDestructor_SomeTaskManager_60_Common);
    mgr = TASK_DATA(t);
    mgr->s.oamFlags = SPRITE_OAM_ORDER(8);
    mgr->s.frameFlags = SPRITE_FLAG(X_FLIP, 1) | SPRITE_FLAG(PRIORITY, 1);
}

void sub_804A8A8(s32 qX, s32 qY, s32 param2)
{
    SomeTaskManager_Graphic sp00;
    struct Task *t;
    SomeTaskManager_7C *mgr;

    switch (param2) {
        case 0: {
            sp00.tileInfo.anim = SA1_ANIM_EXTRA_BOSS_ROCK0;
            sp00.tileInfo.variant = 0;
            sp00.vram4 = VRAM_RESERVED_EXTRA_BOSS_ROCK0;
        } break;

        case 1: {
            sp00.tileInfo.anim = SA1_ANIM_EXTRA_BOSS_ROCK1;
            sp00.tileInfo.variant = 0;
            sp00.vram4 = VRAM_RESERVED_EXTRA_BOSS_ROCK1;
        } break;

        case 2: {
            sp00.tileInfo.anim = SA1_ANIM_EXTRA_BOSS_ROCK2;
            sp00.tileInfo.variant = 0;
            sp00.vram4 = VRAM_RESERVED_EXTRA_BOSS_ROCK2;
        } break;
    }

    t = CreateSomeTaskManager_7C_Task(&sp00, Task_804AAC4, NULL);
    mgr = TASK_DATA(t);
    mgr->unk0.unk0 = param2;
    mgr->unk0.qUnk50 = qX;
    mgr->unk0.qUnk54 = qY;

    if (qX == Q(512)) {
        mgr->unk0.qUnk58 = -(((u32)PseudoRandom32() << 14) >> 22);
        mgr->unk0.qUnk5A = ((u32)PseudoRandom32() & 0xFF00) >> 8;
    } else {
        mgr->unk0.qUnk58 = (((u32)PseudoRandom32() & 0x3FF00) >> 8) - 0x300;
        mgr->unk0.qUnk5A = -(((u32)PseudoRandom32() & 0x3FF00) >> 8) - 0x80;
    }

    if (param2 == 2) {
        mgr->unk0.qUnk58 >>= 2;
        mgr->unk0.qUnk5A >>= 2;
    }

    mgr->unk0.qUnk5E = Q(7. / 256.);
    mgr->unk70 = (u32)PseudoRandom32() >> 8;
    mgr->unk72 = (((u32)PseudoRandom32() << 11) >> 19) - 0x1000;

    mgr->unk0.s.oamFlags = SPRITE_OAM_ORDER(12);
    mgr->unk0.s.frameFlags = SPRITE_FLAG(PRIORITY, 1);

    if (param2 == 0) {
        s32 a, b;
        u32 v;
        mgr->unk72 >>= 1;

        v = (u32)PseudoRandom32();
        a = mgr->unk0.transform.qScaleX;
        mgr->unk0.transform.qScaleX = a - ((v & 0x4000) >> 8);
        v = (u32)PseudoRandom32();
        b = mgr->unk0.transform.qScaleY;
        mgr->unk0.transform.qScaleY = b - ((v & 0x4000) >> 8);
    }

    if ((u32)PseudoRandom32() & 0x10000) {
        mgr->unk0.transform.qScaleY = -mgr->unk0.transform.qScaleY;
    }
}

void Task_804AAC4(void)
{
    SomeTaskManager_7C *mgr = TASK_DATA(gCurTask);
    Sprite *s = &mgr->unk0.s;
    SpriteTransform *transform = &mgr->unk0.transform;
    SuperEggRobo *extraBoss = gExtraBossTaskData;
    Player *p = &gPlayer;
    Camera *cam = &gCamera;
    s32 screenX, screenY;

    // TODO: 2 * DISPLAY_<dim> does not feel correct!
    if (((mgr->unk0.qUnk50 < -Q(32)) || (mgr->unk0.qUnk50 > +Q(DISPLAY_WIDTH + 240 + 32)))
        || ((mgr->unk0.qUnk54 < -Q(32)) || (mgr->unk0.qUnk54 > +Q((DISPLAY_HEIGHT + 128) + 32)))) {
        TaskDestroy(gCurTask);
        return;
    }

    screenX = I(mgr->unk0.qUnk50) - cam->x;
    screenY = I(mgr->unk0.qUnk54) - cam->y;

    if (p->SA2_LABEL(unk62) != 0) {
        if (sub_800C0E0(s, I(mgr->unk0.qUnk50), I(mgr->unk0.qUnk54), p) != 0) {
            s32 i = 3 - mgr->unk0.unk0;

            do {
                sub_804A8A8(mgr->unk0.qUnk50, mgr->unk0.qUnk54, 2);
            } while (--i != 0);

            m4aSongNumStart(SE_126);

            TaskDestroy(gCurTask);
            return;
        }
    } else if ((p->timerInvulnerability == 0) && !(extraBoss->flags58 & SER_FLAG__80)) {
        sub_800BFEC(s, I(mgr->unk0.qUnk50), I(mgr->unk0.qUnk54), p);
    }

    transform->x = screenX;
    transform->y = screenY;

    transform->rotation = mgr->unk70 >> 6;
    SPRITE_FLAG_CLEAR(s, ROT_SCALE);
    s->frameFlags |= SA2_LABEL(gUnknown_030054B8)++ | SPRITE_FLAG_MASK_ROT_SCALE_ENABLE;

    UpdateSpriteAnimation(s);
    TransformSprite(s, transform);
    DisplaySprite(s);

    mgr->unk0.qUnk50 += mgr->unk0.qUnk58;
    mgr->unk0.qUnk54 += mgr->unk0.qUnk5A;
    mgr->unk0.qUnk58 += mgr->unk0.qUnk5C;
    mgr->unk0.qUnk5A += mgr->unk0.qUnk5E;
    mgr->unk70 += mgr->unk72;
}

void Task_804AC4C(void)
{
    SomeTaskManager_7C *mgr = TASK_DATA(gCurTask);
    Sprite *s = &mgr->unk0.s;
    Camera *cam = &gCamera;
    s32 screenX, screenY;

    screenX = I(mgr->unk0.qUnk50) - cam->x;
    screenY = I(mgr->unk0.qUnk54) - cam->y;

    // TODO: 2 * DISPLAY_<dim> does not feel correct!
    if ((mgr->unk0.qUnk50 < -Q(32)) || (mgr->unk0.qUnk50 > +Q(DISPLAY_WIDTH + 240))) {
        TaskDestroy(gCurTask);
        return;
    }

    ExtraBossCapsule_UpdateSprite(s, screenX, screenY);
    sub_804CFA0(&mgr->unk0);

    if (--mgr->unk0.unk4 <= 0) {
        s->graphics.anim = SA1_ANIM_EXTRA_BOSS_CAPSULE;
        s->variant = 2;
        s->prevVariant = -1;

        mgr->unk0.qUnk58 = 0;
        mgr->unk0.qUnk5A = 0;

        gCurTask->main = Task_804AD0C;
    }
}

void Task_804AD0C(void)
{
    SomeTaskManager_7C *mgr = TASK_DATA(gCurTask);
    Sprite *s = &mgr->unk0.s;
    SuperEggRobo *extraBoss = gExtraBossTaskData;
    Player *p = &gPlayer;
    Camera *cam = &gCamera;
    s32 screenX, screenY;

    screenX = I(mgr->unk0.qUnk50) - cam->x;
    screenY = I(mgr->unk0.qUnk54) - cam->y;

    // TODO: 2 * DISPLAY_<dim> does not feel correct!
    if ((mgr->unk0.qUnk50 < -Q(32)) || (mgr->unk0.qUnk50 > +Q(DISPLAY_WIDTH + 240))) {
        TaskDestroy(gCurTask);
        return;
    }

    switch (ExtraBoss__CapsuleGetCaptureState(mgr, s, extraBoss, p)) {
        case CAPSULE_STATE__DESTROYED: {
            return;
        } break;

        case CAPSULE_STATE__MOVING: {
            ExtraBossCapsule_UpdateSprite(s, screenX, screenY);
        } break;

        case CAPSULE_STATE__CAPTURED: {
            ExtraBossCapsule_UpdateSprite(s, screenX, screenY);
            return;
        } break;
    }

    sub_804CFA0(&mgr->unk0);

    if (p->qWorldY - mgr->unk0.qUnk54 < -Q(8)) {
        mgr->unk0.qUnk5A = -Q(1);
        return;
    } else if (p->qWorldY - mgr->unk0.qUnk54 > +Q(8)) {
        mgr->unk0.qUnk5A = +Q(1);
        return;
    }

    mgr->unk0.qUnk58 = -Q(3);
    mgr->unk0.qUnk5A = +Q(0);

    gCurTask->main = Task_804B370;
}

void sub_804AFCC(s32 qX, s32 qY);
void Task_804AF00(void);
void Task_804B0D8(void);

void Task_804AE14(void)
{
    SomeTaskManager_7C *mgr = TASK_DATA(gCurTask);
    Sprite *s = &mgr->unk0.s;
    Player *p = &gPlayer;
    Camera *cam = &gCamera;
    s32 screenX, screenY;

    if (p->timerInvulnerability != 0) {
        p->moveState &= ~MOVESTATE_GOAL_REACHED;

        sub_804AFCC(mgr->unk0.qUnk50, mgr->unk0.qUnk54);
        TaskDestroy(gCurTask);
        return;
    }
    // _0804AE6C

    mgr->unk0.qUnk50 = p->qWorldX;
    mgr->unk0.qUnk54 = p->qWorldY;

    screenX = I(mgr->unk0.qUnk50) - cam->x;
    screenY = I(mgr->unk0.qUnk54) - cam->y;
    ExtraBossCapsule_UpdateSprite(s, screenX, screenY);

    if (s->frameFlags & SPRITE_FLAG(ANIM_OVER, 1)) {
        mgr->unk0.unk4 = 240;

        p->qSpeedGround = 0;
        p->qSpeedAirX = 0;
        p->qSpeedAirY = 0;
        p->SA2_LABEL(unk62) = 0;
        p->moveState |= MOVESTATE_IA_OVERRIDE;
        p->moveState |= MOVESTATE_100000;

        s->graphics.anim = SA1_ANIM_EXTRA_BOSS_CAPSULE;
        s->variant = 1;
        s->prevVariant = -1;

        gCurTask->main = Task_804AF00;
    }
}

void Task_804AF00(void)
{
    SomeTaskManager_7C *mgr = TASK_DATA(gCurTask);
    Sprite *s = &mgr->unk0.s;
    Player *p = &gPlayer;
    Camera *cam = &gCamera;
    s32 screenX, screenY;

    if ((p->timerInvulnerability != 0) || (--mgr->unk0.unk4 < 0)) {
        p->moveState &= ~MOVESTATE_GOAL_REACHED;
        p->moveState &= ~MOVESTATE_IA_OVERRIDE;
        p->moveState &= ~MOVESTATE_100000;

        sub_804AFCC(mgr->unk0.qUnk50, mgr->unk0.qUnk54);

        TaskDestroy(gCurTask);
        return;
    } else {
        u32 input;

        if (p->frameInput & DPAD_SIDEWAYS) {
            mgr->unk0.unk4 -= 20;
        }

        Player_804A0B8(p);

        mgr->unk0.qUnk50 = p->qWorldX + mgr->unk68;
        mgr->unk0.qUnk54 = p->qWorldY;
        mgr->unk68 -= mgr->unk68 >> 2;

        input = (p->frameInput & DPAD_RIGHT) << 1;
        input -= (p->frameInput & DPAD_LEFT);
        mgr->unk68 = (input << 5);

        ExtraBossCapsule_UpdateSprite(s, I(mgr->unk0.qUnk50) - cam->x, I(mgr->unk0.qUnk54) - cam->y);
    }
}

void sub_804AFCC(s32 qX, s32 qY)
{
    SomeTaskManager_Graphic sp00;
    SomeTaskManager_7C *mgr;
    struct Task *t;
    s32 i;

    sp00.tileInfo.anim = SA1_ANIM_EXTRA_BOSS_CAPSULE_PART;
    sp00.tileInfo.variant = 0;
    sp00.vram4 = VRAM_RESERVED_EXTRA_BOSS_CAPSULE;

    for (i = 0; i < 2; i++) {
        t = CreateSomeTaskManager_7C_Task(&sp00, Task_804B0D8, NULL);
        mgr = TASK_DATA(t);

        mgr->unk0.qUnk50 = qX;
        mgr->unk0.qUnk54 = qY;

        mgr->unk0.qUnk58 = -((((u32)PseudoRandom32() & 0x7F00) >> 8) + 0x80);
        mgr->unk0.qUnk5A = +((((u32)PseudoRandom32() & 0x7F00) >> 8) + 0x40);
        mgr->unk0.qUnk5E = Q(7. / 256.);

        mgr->unk72 = (((u32)PseudoRandom32() << 13) >> 21) - Q(4);

        if (i & 1) {
            mgr->unk0.transform.qScaleX = -Q(1);
            mgr->unk0.qUnk58 = -mgr->unk0.qUnk58;
        }

        mgr->unk0.s.oamFlags = SPRITE_OAM_ORDER(12);
        mgr->unk0.s.frameFlags = SPRITE_FLAG(PRIORITY, 1);
    }
}

// TODO: Similar to Task_804AAC4, document diffs
void Task_804B0D8(void)
{
    SomeTaskManager_7C *mgr = TASK_DATA(gCurTask);
    Sprite *s = &mgr->unk0.s;
    SpriteTransform *transform = &mgr->unk0.transform;
    Camera *cam = &gCamera;
    s32 screenX, screenY;

    screenX = I(mgr->unk0.qUnk50) - cam->x;
    screenY = I(mgr->unk0.qUnk54) - cam->y;

    // TODO: 2 * DISPLAY_<dim> does not feel correct!
    if (((mgr->unk0.qUnk50 < -Q(32)) || (mgr->unk0.qUnk50 > +Q(DISPLAY_WIDTH + 240 + 32)))
        || ((mgr->unk0.qUnk54 < -Q(32)) || (mgr->unk0.qUnk54 > +Q((DISPLAY_HEIGHT + 128) + 32)))) {
        TaskDestroy(gCurTask);
        return;
    }

    transform->x = screenX;
    transform->y = screenY;
    transform->rotation = mgr->unk70 >> 6;

    SPRITE_FLAG_CLEAR(s, ROT_SCALE);
    s->frameFlags |= SA2_LABEL(gUnknown_030054B8)++ | SPRITE_FLAG_MASK_ROT_SCALE_ENABLE;

    UpdateSpriteAnimation(s);
    TransformSprite(s, transform);
    DisplaySprite(s);

    mgr->unk0.qUnk50 += mgr->unk0.qUnk58;
    mgr->unk0.qUnk54 += mgr->unk0.qUnk5A;
    mgr->unk0.qUnk58 += mgr->unk0.qUnk5C;
    mgr->unk0.qUnk5A += mgr->unk0.qUnk5E;
    mgr->unk70 += mgr->unk72;
}

// NOTE: If you change this function or use a different compiler to agbcc,
//       you HAVE to remove the NON_MATCHING block.
//       Best by declaring -D NON_MATCHING as a compiler flag, if it isn't set already.
// (100.0%) https://decomp.me/scratch/CSS1H
s32 ExtraBoss__CapsuleGetCaptureState(SomeTaskManager_7C *mgr, Sprite *s, SuperEggRobo *extraBoss, Player *p)
{
    u32 res;
    typedef u32 (*FakematchFuncCast)(Sprite *, CamCoord, CamCoord);
    if (p->moveState & MOVESTATE_GOAL_REACHED) {
        return 0;
    }

#ifndef NON_MATCHING
    // TODO: Fix this, holy [REDACTED]!!!
    //       This only works because p is still in R3 at this point in time, when using agbcc.
    res = ((FakematchFuncCast)sub_800C0E0)(s, I(mgr->unk0.qUnk50), I(mgr->unk0.qUnk54));
#else
    res = sub_800C0E0(s, I(mgr->unk0.qUnk50), I(mgr->unk0.qUnk54), p);
#endif
    if (res != 0) {
        if (p->SA2_LABEL(unk62) != 0) {
            m4aSongNumStart(SE_ITEM_BOX);
            InitScatteringRings_ExtraBossCapsule(I(mgr->unk0.qUnk50), I(mgr->unk0.qUnk54), 8);
            sub_804AFCC(mgr->unk0.qUnk50, mgr->unk0.qUnk54);

            TaskDestroy(gCurTask);
            return CAPSULE_STATE__DESTROYED;
        } else if ((p->timerInvulnerability == 0) && !(extraBoss->flags58 & SER_FLAG__80)) {
            s->graphics.anim = SA1_ANIM_EXTRA_BOSS_CAPSULE;
            s->variant = 3;
            s->prevVariant = -1;
            p->moveState |= MOVESTATE_GOAL_REACHED;

            gCurTask->main = Task_804AE14;

            return CAPSULE_STATE__CAPTURED;
        }
    }

    return CAPSULE_STATE__MOVING;
}

void sub_804B2BC(s32 qWorldX, s32 qWorldY)
{
    SomeTaskManager_Graphic sp00;
    struct Task *t;
    SomeTaskManager_7C *mgr;

    sp00.tileInfo.anim = SA1_ANIM_EXTRA_BOSS_CAPSULE;
    sp00.tileInfo.variant = 0;
    sp00.vram4 = ALLOC_TILES(SA1_ANIM_EXTRA_BOSS_CAPSULE);

    t = CreateSomeTaskManager_7C_Task(&sp00, Task_804AC4C, TaskDestructor_SomeTaskManager_60_Common);
    mgr = TASK_DATA(t);

    mgr->unk0.qUnk50 = qWorldX;
    mgr->unk0.qUnk54 = qWorldY;
    mgr->unk0.qUnk58 = -Q(1);
    mgr->unk0.unk4 = 48;
    mgr->unk0.s.oamFlags = SPRITE_OAM_ORDER(12);
    mgr->unk0.s.frameFlags = SPRITE_FLAG(PRIORITY, 1);
}

// TODO: Maybe not just the ring capsule?
void ExtraBossCapsule_UpdateSprite(Sprite *s, s32 screenX, s32 screenY)
{
    s->x = screenX;
    s->y = screenY;
    UpdateSpriteAnimation(s);

    s->frameFlags |= SPRITE_FLAG(18, 1) | SPRITE_FLAG(19, 1);
    s->frameFlags |= SPRITE_FLAG(Y_FLIP, 1);
    DisplaySprite(s);

    s->frameFlags &= ~(SPRITE_FLAG(18, 1) | SPRITE_FLAG(19, 1));
    s->frameFlags &= ~(SPRITE_FLAG(Y_FLIP, 1));
    DisplaySprite(s);
}

// NOTE: Almost a complete copy of Task_804AD0C, just without lines below sub_804CFA0() call.
// TODO: Maybe this was used as an inline?
void Task_804B370(void)
{
    SomeTaskManager_7C *mgr = TASK_DATA(gCurTask);
    Sprite *s = &mgr->unk0.s;
    SuperEggRobo *extraBoss = gExtraBossTaskData;
    Player *p = &gPlayer;
    Camera *cam = &gCamera;
    s32 screenX, screenY;

    screenX = I(mgr->unk0.qUnk50) - cam->x;
    screenY = I(mgr->unk0.qUnk54) - cam->y;

    // TODO: 2 * DISPLAY_<dim> does not feel correct!
    if ((mgr->unk0.qUnk50 < -Q(32)) || (mgr->unk0.qUnk50 > +Q(DISPLAY_WIDTH + 240))) {
        TaskDestroy(gCurTask);
        return;
    }

    switch (ExtraBoss__CapsuleGetCaptureState(mgr, s, extraBoss, p)) {
        case CAPSULE_STATE__DESTROYED: {
            return;
        } break;

        case CAPSULE_STATE__MOVING: {
            ExtraBossCapsule_UpdateSprite(s, screenX, screenY);
        } break;

        case CAPSULE_STATE__CAPTURED: {
            ExtraBossCapsule_UpdateSprite(s, screenX, screenY);
            return;
        } break;
    }

    sub_804CFA0(&mgr->unk0);
}

void Task_804B420(void)
{
    SomeTaskManager_7C *mgr = TASK_DATA(gCurTask);
    Sprite *s = &mgr->unk0.s;
    SuperEggRobo *extraBoss = gExtraBossTaskData;
    Player *p = &gPlayer;
    Camera *cam = &gCamera;
    s32 scrollX;

    // TODO: 2 * DISPLAY_<dim> does not feel correct!
    if ((s->frameFlags & SPRITE_FLAG(ANIM_OVER, 1)) || ((mgr->unk0.qUnk50 < -Q(32)) || (mgr->unk0.qUnk50 > +Q(DISPLAY_WIDTH + 240 + 32)))) {
        TaskDestroy(gCurTask);
        return;
    }

    {
        s32 screenX, screenY;
        s32 res;
        s32 x;
        s32 scrollX = cam->x;
        const s32 scrollMaxX = (28 * 96);

        scrollX = (scrollX + gStageTime * 8);

        // 2688(0xA80) =
        //          3072         -          600
        // Moon Zone Pixel Width - (4 * Metatile_Width)

        if (scrollX - 72 >= scrollMaxX) {
            scrollX -= 72;
            scrollX = Mod(scrollX, scrollMaxX) + 72;
        }
        // _0804B4A2

        x = scrollX - cam->x;

        res = SA2_LABEL(sub_801F100)(I(mgr->unk0.qUnk54), I(mgr->unk0.qUnk50) + x, 1, +8, SA2_LABEL(sub_801EC3C));

        mgr->unk0.qUnk54 += Q(res);

        screenX = I(mgr->unk0.qUnk50) - cam->x;
        screenY = I(mgr->unk0.qUnk54) - cam->y;

        if ((p->SA2_LABEL(unk62) == 0) && (p->timerInvulnerability == 0) && !(extraBoss->flags58 & SER_FLAG__80)) {
            sub_800BFEC(s, I(mgr->unk0.qUnk50), I(mgr->unk0.qUnk54), p);
        }

        s->x = screenX;
        s->y = screenY;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);

        mgr->unk0.qUnk50 += mgr->unk0.qUnk58;
        mgr->unk0.qUnk54 += mgr->unk0.qUnk5A;
        mgr->unk0.qUnk58 += mgr->unk0.qUnk5C;
        mgr->unk0.qUnk5A += mgr->unk0.qUnk5E;
    }
}

// Create Laser
void sub_804B570(s32 qWorldX, s32 qWorldY)
{
    SomeTaskManager_Graphic sp00;
    struct Task *t;
    SomeTaskManager_7C *mgr;

    sp00.tileInfo.anim = SA1_ANIM_EXTRA_BOSS_LASER;
    sp00.tileInfo.variant = 0;
    sp00.vram4 = ALLOC_TILES(SA1_ANIM_EXTRA_BOSS_LASER);

    t = CreateSomeTaskManager_7C_Task(&sp00, Task_804B420, TaskDestructor_SomeTaskManager_60_Common);
    mgr = TASK_DATA(t);

    mgr->unk0.qUnk50 = qWorldX;
    mgr->unk0.qUnk54 = qWorldY;

    mgr->unk0.s.oamFlags = SPRITE_OAM_ORDER(12);
    mgr->unk0.s.frameFlags = SPRITE_FLAG(PRIORITY, 1);
}
