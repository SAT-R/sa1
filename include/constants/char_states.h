#ifndef GUARD_SA1_CHAR_STATES_H
#define GUARD_SA1_CHAR_STATES_H

/* The values in here are used for Player.charState!
   They are used to determine the next behavior (and Player.anim/Player.variant in most instances).
   Some are shared between characters (CHARSTATE_xyz)
*/

#define CHARSTATE_INVALID         -1
#define CHARSTATE_IDLE            0
#define CHARSTATE_DEAD            1
#define CHARSTATE_CROUCH          2
#define CHARSTATE_3               3 // Look-down state?
#define CHARSTATE_WALK            4
#define CHARSTATE_SPINATTACK      5
#define CHARSTATE_SPINDASH        6
#define CHARSTATE_7               7
#define CHARSTATE_8               8
#define CHARSTATE_BRAKE           9
#define CHARSTATE_LOOK_UP         10
#define CHARSTATE_11              11
#define CHARSTATE_12              12
#define CHARSTATE_13              13
#define CHARSTATE_16              16
#define CHARSTATE_17              17
#define CHARSTATE_18              18
#define CHARSTATE_RAIL_EXTRA_JUMP 20
#define CHARSTATE_21              21
#define CHARSTATE_22              22
#define CHARSTATE_23              23
#define CHARSTATE_27              27

#if (GAME == GAME_SA1)
#define CHARSTATE_HIT_AIR     15
#define CHARSTATE_ACT_CLEAR_B 29 // unchecked
#else
#define CHARSTATE_HIT_AIR     20
#define CHARSTATE_ACT_CLEAR_B 29
#endif

#define CHARSTATE_32       32
#define CHARSTATE_43       43
#define CHARSTATE_AIR_DASH 44
#define CHARSTATE_45       45
#define CHARSTATE_46       46
#define CHARSTATE_47       47
#define CHARSTATE_48       48

#define CHARSTATE_FLYING        53
#define CHARSTATE_54            54
#define CHARSTATE_FLY_EXHAUSTED 55
#define CHARSTATE_56            56
#define CHARSTATE_SWIMMING      57
#define CHARSTATE_58            58
#define CHARSTATE_GROUND_ATTACK 60

// NOTE: Inferred from CHARSTATE_KNUCKLES_GLIDE in SA2_LABEL(sub_8022318)
#define CHARSTATE_KNUCKLES_GLIDE 62
#define CHARSTATE_63             63
#define CHARSTATE_64             64
#define CHARSTATE_65             65
#define CHARSTATE_66             66
#define CHARSTATE_67             67
#define CHARSTATE_68             68
#define CHARSTATE_69             69
#define CHARSTATE_70             70
#define CHARSTATE_71             71
#define CHARSTATE_72             72
#define CHARSTATE_73             73
#define CHARSTATE_74             74
#define CHARSTATE_75             75
#define CHARSTATE_76             76
#define CHARSTATE_77             77
#define CHARSTATE_78             78
#define CHARSTATE_79             79
#define CHARSTATE_80             80
#define CHARSTATE_KNUCKLES_SWIM  81
#define CHARSTATE_KNUCKLES_FLOAT 82
#define CHARSTATE_83             83
#define CHARSTATE_84             84
#define CHARSTATE_85             85
#define CHARSTATE_91             91

#if (GAME == GAME_SA1)
#define CHARSTATE_SHARED_COUNT 43
#elif (GAME == GAME_SA2)
#define CHARSTATE_SHARED_COUNT 80
#endif

#endif // GUARD_SA1_CHAR_STATES_H