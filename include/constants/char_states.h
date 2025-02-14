#ifndef GUARD_SA1_CHAR_STATES_H
#define GUARD_SA1_CHAR_STATES_H

/* The values in here are used for Player.charState!
   They are used to determine the next behavior (and Player.anim/Player.variant in most instances).
   Some are shared between characters (CHARSTATE_xyz)
*/

#define CHARSTATE_INVALID  -1
#define CHARSTATE_IDLE     0
#define CHARSTATE_CROUCH   2
#define CHARSTATE_4        4
#define CHARSTATE_SPINDASH 6
#define CHARSTATE_9        9
#define CHARSTATE_LOOK_UP  10
#define CHARSTATE_22       22

#if (GAME == GAME_SA1)
#define CHARSTATE_HIT_AIR     15
#define CHARSTATE_ACT_CLEAR_B 29 // unchecked
#else
#define CHARSTATE_HIT_AIR     20
#define CHARSTATE_ACT_CLEAR_B 29
#endif

// NOTE: Inferred from CHARSTATE_KNUCKLES_GLIDE in SA2_LABEL(sub_8022318)
#define CHARSTATE_KNUCKLES_GLIDE 62

#endif // GUARD_SA1_CHAR_STATES_H