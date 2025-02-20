#ifndef GUARD_SA1_CHAR_STATES_H
#define GUARD_SA1_CHAR_STATES_H

/* The values in here are used for Player.charState!
   They are used to determine the next behavior (and Player.anim/Player.variant in most instances).
   Some are shared between characters (CHARSTATE_xyz)
*/

#define CHARSTATE_INVALID    -1
#define CHARSTATE_IDLE       0
#define CHARSTATE_1          1
#define CHARSTATE_CROUCH     2
#define CHARSTATE_3          3
#define CHARSTATE_4          4
#define CHARSTATE_SPINATTACK 5
#define CHARSTATE_SPINDASH   6
#define CHARSTATE_7          7
#define CHARSTATE_8          8
#define CHARSTATE_9          9
#define CHARSTATE_LOOK_UP    10
#define CHARSTATE_11         11
#define CHARSTATE_12         12
#define CHARSTATE_13         13
#define CHARSTATE_22         22
#define CHARSTATE_23         23

#if (GAME == GAME_SA1)
#define CHARSTATE_HIT_AIR     15
#define CHARSTATE_ACT_CLEAR_B 29 // unchecked
#else
#define CHARSTATE_HIT_AIR     20
#define CHARSTATE_ACT_CLEAR_B 29
#endif

// NOTE: Inferred from CHARSTATE_KNUCKLES_GLIDE in SA2_LABEL(sub_8022318)
#define CHARSTATE_KNUCKLES_GLIDE 62

#define CHARSTATE_85 85
#define CHARSTATE_91 91

#endif // GUARD_SA1_CHAR_STATES_H