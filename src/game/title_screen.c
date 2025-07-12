#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/multiplayer/mode_select.h"
#include "game/options_screen.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/stage/terrain_collision.h"
#include "game/stage/player.h"
#include "game/time_attack/menu.h"
#include "game/title_screen.h"
#include "game/water_effects.h"

#include "constants/animations.h"
#include "constants/char_states.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

const ALIGNED(4) AnimId gUnknown_080BB310[] = { SA1_ANIM_PRESS_START_MSG_JP, SA1_ANIM_PRESS_START_MSG_EN };
const u8 gUnknown_080BB314[] = { 1, 1, 2, 2, 3, 3, 4, 4, 5, 5 };
const u8 sTitlescreenFrameTileSizes[] = { 28, 16, 28, 20, 40 };
const u8 gUnknown_080BB323[] = { 0, 2, 4, 6 };
const u8 gUnknown_080BB327[] = { 0, 1, 3, 2, 0 };
const VoidFn gUnknown_080BB32C[] = { CreateMultiplayerModeSelectScreen, CreateTimeAttackMenu, CreateOptionsMenu, LoadTinyChaoGarden };
const ALIGNED(4) AnimId gUnknown_080BB33C[] = { SA1_ANIM_PRESS_START_MSG_JP, SA1_ANIM_PRESS_START_MSG_EN };

// const AnimId gUnknown_080BB33C[] = {SA1_ANIM_PRESS_START_MSG_JP, SA1_ANIM_PRESS_START_MSG_EN};
