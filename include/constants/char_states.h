#ifndef GUARD_SA1_CHAR_STATES_H
#define GUARD_SA1_CHAR_STATES_H

/* The values in here are used for Player.charState!
   They are used to determine the next behavior (and Player.anim/Player.variant in most instances).
   Some are shared between characters (CHARSTATE_xyz)
*/

#define CHARSTATE_INVALID -1
#define CHARSTATE_IDLE    0

// NOTE: Inferred from CHARSTATE_KNUCKLES_GLIDE in SA2_LABEL(sub_8022318)
#define CHARSTATE_KNUCKLES_GLIDE 62

#endif // GUARD_SA1_CHAR_STATES_H