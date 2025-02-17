#include "global.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/parameters/characters.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/sa1_sa2_shared/camera.h"
#include "game/sa1_sa2_shared/player.h"
#include "game/stage/collision.h"
#include "game/stage/dust_effect_braking.h"
#include "game/stage/dust_effect_spindash.h"
#include "game/stage/player.h"
#include "game/stage/player_controls.h"
#include "game/stage/rings_scatter.h"
#include "game/stage/spawn_positions.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ u8 pid;
    /* 0x04 */ u32 unk4; // TODO: Check the type!
} player_0_Task; /* size: 0x8 */

typedef struct {
    /* 0x00 */ player_0_Task unk0;
    /* 0x08 */ u8 filler[0x84];
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

void Player_8043EC0(Player *p);
void Task_8045B38(void);
void Player_80470AC(Player *p);
void Player_804726C(Player *p);
void Player_8047280(Player *p);
void Task_8049898(void);
void sub_804A1B8(Player *p);
s32 SA2_LABEL(sub_8029BB8)(Player *p, u8 *p1, s32 *out);
void Task_PlayerMain(void);
void TaskDestructor_Player(struct Task *);
void AllocateCharacterStageGfx(Player *p, PlayerSpriteInfo *param2);
void AllocateCharacterMidAirGfx(Player *p, PlayerSpriteInfo *param2);

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
            p->w.sf.unkAE = 0;
            p->w.sf.unkB0 = 0;
        } break;

#if (GAME == GAME_SA2)
        case CHARACTER_CREAM: {
            p->w.cf.unkAE = 0;
            p->w.cf.flyingDuration = 0;
            p->w.cf.unkB0 = 0;
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
            p->w.kf.unkAE = 0;
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

// Very similar to sub_8029BB8
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

// Very similar to sub_802195C
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

// Very similar to sub_802195C
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
                p->charState = CHARSTATE_4;

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

        p->charState = CHARSTATE_9;

        SA2_LABEL(sub_8023B5C)(p, 14);
        PLAYERFN_SET_SHIFT_OFFSETS(p, 6, 14);
    }
}

// Basically the opposite to Player_8043970.
// Uses the same variables, but checks are inverted.
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
                p->charState = CHARSTATE_4;

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

        p->charState = CHARSTATE_9;

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
                p->spriteOffsetX = 6;
                p->spriteOffsetY = 14;
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
                    p->charState = CHARSTATE_4;
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

// (98.92%) https://decomp.me/scratch/KZphy
NONMATCH("asm/non_matching/game/stage/Player__Player_8043EC0.inc", void Player_8043EC0(Player *p))
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

    Player_8043EC0(p);
    SA2_LABEL(sub_8022D6C)(p);

    return TRUE;
}

#endif // (GAME == GAME_SA1)

// (98.55%) https://decomp.me/scratch/lAHT0
NONMATCH("asm/non_matching/game/stage/Player__sub_8044250.inc", bool32 sub_8044250(Player *p))
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