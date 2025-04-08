#ifndef GUARD_ANIM_SIZES_H
#define GUARD_ANIM_SIZES_H

// TODO: Auto-generate this file
#define MAX_TILES(_animName)                   ((_animName##_WIDTH / 8) * (_animName##_HEIGHT / 8))
#define MAX_TILES_VARIANT(_animName, _variant) ((_animName##_VAR##_variant##_WIDTH / 8) * (_animName##_VAR##_variant##_HEIGHT / 8))
#define ALLOC_TILES(_animName)                 VramMalloc(((_animName##_WIDTH / 8) * (_animName##_HEIGHT / 8)))
#define ALLOC_TILES_VARIANT(_animName, _variant)                                                                                           \
    VramMalloc(((_animName##_VAR##_variant##_WIDTH / 8) * (_animName##_VAR##_variant##_HEIGHT / 8)))

#if (GAME == GAME_SA1)
// 005
#define SA1_ANIM_SONIC_RUN_WIDTH  64
#define SA1_ANIM_SONIC_RUN_HEIGHT 64

// 39/138/...
#define SA1_CHAR_ANIM_MARBLE_TRACK_WIDTH  64
#define SA1_CHAR_ANIM_MARBLE_TRACK_HEIGHT 64

// 50/149/...
#define SA1_CHAR_ANIM_50_WIDTH  32
#define SA1_CHAR_ANIM_50_HEIGHT 32

// 250
#define SA1_ANIM_KNUCKLES_UPPERCUT_WIDTH  32
#define SA1_ANIM_KNUCKLES_UPPERCUT_HEIGHT 48

// 400
#define SA1_ANIM_SUPER_SONIC_DASH_WIDTH  64
#define SA1_ANIM_SUPER_SONIC_DASH_HEIGHT 40

// 411
#define SA1_ANIM_SENBON_WIDTH  32
#define SA1_ANIM_SENBON_HEIGHT 32

// 418
#define SA1_ANIM_PIERROT_WIDTH  48
#define SA1_ANIM_PIERROT_HEIGHT 48

// 425
#define SA1_ANIM_KURAA_WIDTH  24
#define SA1_ANIM_KURAA_HEIGHT 40

// 434
#define SA1_ANIM_MOLE_WIDTH  32
#define SA1_ANIM_MOLE_HEIGHT 32

// 452
#define SA1_ANIM_CHECKPOINT_WIDTH  24
#define SA1_ANIM_CHECKPOINT_HEIGHT 48

// 455
#define SA1_ANIM_SPRING_WIDTH  32
#define SA1_ANIM_SPRING_HEIGHT 32

// 461
#define SA1_ANIM_TRAMPOLINE1_WIDTH  48
#define SA1_ANIM_TRAMPOLINE1_HEIGHT 32

// 467
#define SA1_ANIM_SHRUBBERY_WIDTH  32
#define SA1_ANIM_SHRUBBERY_HEIGHT 32

// 479
#define SA1_ANIM_BALLOON_BLUE_WIDTH  24
#define SA1_ANIM_BALLOON_BLUE_HEIGHT 48

// 473
#define SA1_ANIM_WATER_BRIDGE_SPLASH_WIDTH  56
#define SA1_ANIM_WATER_BRIDGE_SPLASH_HEIGHT 56

// 474
#define SA1_ANIM_SPLASH_ON_PLAYER_WIDTH  48
#define SA1_ANIM_SPLASH_ON_PLAYER_HEIGHT 24

// 482
#define SA1_ANIM_FIREWORKS_WIDTH  24
#define SA1_ANIM_FIREWORKS_HEIGHT 24

// 492
#define SA1_ANIM_SEGA_SONIC_LETTERS_WIDTH  32
#define SA1_ANIM_SEGA_SONIC_LETTERS_HEIGHT 32

// 483
#define SA1_ANIM_FIREWORKS_SMALL_WIDTH  16
#define SA1_ANIM_FIREWORKS_SMALL_HEIGHT 16

// 505
#define SA1_ANIM_TRAMPOLINE2_WIDTH  48
#define SA1_ANIM_TRAMPOLINE2_HEIGHT 40

// 508
#define SA1_ANIM_CONVEYOR_BELT_2_WIDE_WIDTH  96
#define SA1_ANIM_CONVEYOR_BELT_2_WIDE_HEIGHT 24

// 509
#define SA1_ANIM_CONVEYOR_BELT_2_SLIM_WIDTH  72
#define SA1_ANIM_CONVEYOR_BELT_2_SLIM_HEIGHT 24

// 510
#define SA1_ANIM_IRON_BALL_WIDTH  48
#define SA1_ANIM_IRON_BALL_HEIGHT 48

// 511
#define SA1_ANIM_TORCH6_1_WIDTH  16
#define SA1_ANIM_TORCH6_1_HEIGHT 16

// 512
#define SA1_ANIM_TORCH6_2_WIDTH  32
#define SA1_ANIM_TORCH6_2_HEIGHT 16

// 515
#define SA1_ANIM_PROPELLER_WIDTH  144
#define SA1_ANIM_PROPELLER_HEIGHT 24

// 534
#define SA1_ANIM_SECURITY_GATE_WIDTH  16
#define SA1_ANIM_SECURITY_GATE_HEIGHT 48

// 541
#define SA1_ANIM_IRON_BALL_5_WIDTH  48
#define SA1_ANIM_IRON_BALL_5_HEIGHT 48

// 558
#define SA1_ANIM_TORCH5_WIDTH  24
#define SA1_ANIM_TORCH5_HEIGHT 40

// 564
#define SA1_ANIM_DEBRIS_A_WIDTH  8
#define SA1_ANIM_DEBRIS_A_HEIGHT 8

// 564
#define SA1_ANIM_DEBRIS_B_WIDTH  8
#define SA1_ANIM_DEBRIS_B_HEIGHT 16

// 566
#define SA1_ANIM_DEBRIS_C_WIDTH  8
#define SA1_ANIM_DEBRIS_C_HEIGHT 8

// 603
#define SA1_ANIM_CONVEYOR_BELT_6_SLIM_WIDTH  72
#define SA1_ANIM_CONVEYOR_BELT_6_SLIM_HEIGHT 24

// 604
#define SA1_ANIM_CONVEYOR_BELT_6_WIDE_WIDTH  96
#define SA1_ANIM_CONVEYOR_BELT_6_WIDE_HEIGHT 24

// 670
#define SA1_ANIM_EXTRA_BOSS_CAPSULE_WIDTH  32
#define SA1_ANIM_EXTRA_BOSS_CAPSULE_HEIGHT 16

// 671
#define SA1_ANIM_EXTRA_BOSS_CAPSULE_PART_WIDTH  16
#define SA1_ANIM_EXTRA_BOSS_CAPSULE_PART_HEIGHT 16

// 672
#define SA1_ANIM_EXTRA_BOSS_LASER_WIDTH  16
#define SA1_ANIM_EXTRA_BOSS_LASER_HEIGHT 96

// 705
#define SA1_ANIM_ITEMBOX_WIDTH  32
#define SA1_ANIM_ITEMBOX_HEIGHT 32

// 706
#define SA1_ANIM_ITEMBOX_TYPE_WIDTH  16
#define SA1_ANIM_ITEMBOX_TYPE_HEIGHT 16

// 709
#define SA1_ANIM_SCORE_WIDTH  16
#define SA1_ANIM_SCORE_HEIGHT 8

// 715
#define SA1_ANIM_GAME_OVER_WIDTH       64
#define SA1_ANIM_GAME_OVER_HEIGHT      64
#define SA1_ANIM_GAME_OVER_VAR0_WIDTH  64 // GAME
#define SA1_ANIM_GAME_OVER_VAR0_HEIGHT 64

#define SA1_ANIM_GAME_OVER_VAR1_WIDTH  64 // OVER
#define SA1_ANIM_GAME_OVER_VAR1_HEIGHT 64
#define SA1_ANIM_GAME_OVER_VAR2_WIDTH  64 // CONTI
#define SA1_ANIM_GAME_OVER_VAR2_HEIGHT 64
#define SA1_ANIM_GAME_OVER_VAR3_WIDTH  64 // NUE?
#define SA1_ANIM_GAME_OVER_VAR3_HEIGHT 64
#define SA1_ANIM_GAME_OVER_VAR4_WIDTH  64 // TIME
#define SA1_ANIM_GAME_OVER_VAR4_HEIGHT 64

// 719
#define SA1_ANIM_WARNING_WIDTH       32
#define SA1_ANIM_WARNING_HEIGHT      32
#define SA1_ANIM_WARNING_VAR0_WIDTH  32
#define SA1_ANIM_WARNING_VAR0_HEIGHT 32
#define SA1_ANIM_WARNING_VAR1_WIDTH  32
#define SA1_ANIM_WARNING_VAR1_HEIGHT 32
#define SA1_ANIM_WARNING_VAR2_WIDTH  32
#define SA1_ANIM_WARNING_VAR2_HEIGHT 32

// 721
#define SA1_ANIM_DEMO_PLAY_WIDTH  24
#define SA1_ANIM_DEMO_PLAY_HEIGHT 8

// 749
#define SA1_ANIM_GRIND_EFFECT_WIDTH  32
#define SA1_ANIM_GRIND_EFFECT_HEIGHT 32

// 750
#define SA1_ANIM_SHIELD_NORMAL_WIDTH  48
#define SA1_ANIM_SHIELD_NORMAL_HEIGHT 48

// 751
#define SA1_ANIM_SHIELD_MAGNETIC_WIDTH  48
#define SA1_ANIM_SHIELD_MAGNETIC_HEIGHT 48

// 752
#define SA1_ANIM_INVINCIBILITY_WIDTH       48
#define SA1_ANIM_INVINCIBILITY_HEIGHT      48
#define SA1_ANIM_INVINCIBILITY_VAR0_WIDTH  48
#define SA1_ANIM_INVINCIBILITY_VAR0_HEIGHT 48
#define SA1_ANIM_INVINCIBILITY_VAR1_WIDTH  24
#define SA1_ANIM_INVINCIBILITY_VAR1_HEIGHT 24

// 775
#define SA1_ANIM_SUPER_SONIC_SPARKLE_WIDTH  16
#define SA1_ANIM_SUPER_SONIC_SPARKLE_HEIGHT 16

// 778
#define SA1_ANIM_TAILS_TAIL_SWIPE_WIDTH  40
#define SA1_ANIM_TAILS_TAIL_SWIPE_HEIGHT 24

// 778
#define SA1_ANIM_PRESS_START_MSG_JP_WIDTH  184
#define SA1_ANIM_PRESS_START_MSG_JP_HEIGHT 16

// 779
#define SA1_ANIM_PRESS_START_MSG_EN_WIDTH  32
#define SA1_ANIM_PRESS_START_MSG_EN_HEIGHT 32

// 781
#define SA1_ANIM_DROWN_COUNTDOWN_WIDTH  16
#define SA1_ANIM_DROWN_COUNTDOWN_HEIGHT 16

// 782
#define SA1_ANIM_KNUCKLES_FLOAT_SPLASH_WIDTH  32
#define SA1_ANIM_KNUCKLES_FLOAT_SPLASH_HEIGHT 16

// 794
#define SA1_ANIM_CONFUSION_WIDTH  32
#define SA1_ANIM_CONFUSION_HEIGHT 16

#elif (GAME == GAME_SA2)
#elif (GAME == GAME_SA3)
// 858
#define ANIM_CHAOMAP_EMERALD_WIDTH                  24
#define ANIM_CHAOMAP_EMERALD_HEIGHT                 16

// 840
#define ANIM_ANIMAL_WIDTH                           16
#define ANIM_ANIMAL_HEIGHT                          16

// 866
#define ANIM_SPRING_WIDTH                           32
#define ANIM_SPRING_HEIGHT                          40

// 866
#define ANIM_DASH_RING_WIDTH                        48
#define ANIM_DASH_RING_HEIGHT                       48
#define ANIM_DASH_RING_VAR0_WIDTH                   16
#define ANIM_DASH_RING_VAR0_HEIGHT                  48
#define ANIM_DASH_RING_VAR1_WIDTH                   8
#define ANIM_DASH_RING_VAR1_HEIGHT                  48
#define ANIM_DASH_RING_VAR2_WIDTH                   48
#define ANIM_DASH_RING_VAR2_HEIGHT                  16
#define ANIM_DASH_RING_VAR3_WIDTH                   48
#define ANIM_DASH_RING_VAR3_HEIGHT                  8
#define ANIM_DASH_RING_VAR4_WIDTH                   48
#define ANIM_DASH_RING_VAR4_HEIGHT                  48
#define ANIM_DASH_RING_VAR5_WIDTH                   40
#define ANIM_DASH_RING_VAR5_HEIGHT                  40

// 869
#define ANIM_SPIKES_WIDTH                           32
#define ANIM_SPIKES_HEIGHT                          32

// 870
#define ANIM_RAMP_WIDTH                             40
#define ANIM_RAMP_HEIGHT                            32
#define ANIM_RAMP_VAR0_WIDTH                        40
#define ANIM_RAMP_VAR0_HEIGHT                       32
#define ANIM_RAMP_VAR1_WIDTH                        40
#define ANIM_RAMP_VAR1_HEIGHT                       24

// 872
#define ANIM_ZONE_WARP_WIDTH                        48
#define ANIM_ZONE_WARP_HEIGHT                       32

// 873
#define ANIM_BOUNCY_BAR_WIDTH                       32
#define ANIM_BOUNCY_BAR_HEIGHT                      24

// 874
#define ANIM_ROTATING_HANDLE_WIDTH                  24
#define ANIM_ROTATING_HANDLE_HEIGHT                 24

// 875
#define ANIM_CHECKPOINT_WIDTH                       24
#define ANIM_CHECKPOINT_HEIGHT                      48
#define ANIM_CHECKPOINT_VAR0_WIDTH                  16
#define ANIM_CHECKPOINT_VAR0_HEIGHT                 48
#define ANIM_CHECKPOINT_VAR1_WIDTH                  24
#define ANIM_CHECKPOINT_VAR1_HEIGHT                 48

// 876
#define ANIM_LIFT_WIDTH                             8
#define ANIM_LIFT_HEIGHT                            24
#define ANIM_LIFT_VAR0_WIDTH                        8
#define ANIM_LIFT_VAR0_HEIGHT                       24
#define ANIM_LIFT_VAR1_WIDTH                        8
#define ANIM_LIFT_VAR1_HEIGHT                       8
#define ANIM_LIFT_VAR2_WIDTH                        24
#define ANIM_LIFT_VAR2_HEIGHT                       16

// 877
#define ANIM_PLATFORM_CRUMBLING_1_WIDTH             48
#define ANIM_PLATFORM_CRUMBLING_1_HEIGHT            32

// 878
#define ANIM_TRAMPOLINE_WIDTH                       48
#define ANIM_TRAMPOLINE_HEIGHT                      32

// 878
#define ANIM_BUTTON_BLUE_WIDTH                      24
#define ANIM_BUTTON_BLUE_HEIGHT                     24

// 880
#define ANIM_BUTTON_SPRING_1_VAR0_WIDTH             32
#define ANIM_BUTTON_SPRING_1_VAR0_HEIGHT            40
#define ANIM_BUTTON_SPRING_1_VAR5_WIDTH             40
#define ANIM_BUTTON_SPRING_1_VAR5_HEIGHT            24
#define ANIM_BUTTON_SPRING_1_VAR10_WIDTH            32
#define ANIM_BUTTON_SPRING_1_VAR10_HEIGHT           32
#define ANIM_BUTTON_SPRING_1_VAR15_WIDTH            24
#define ANIM_BUTTON_SPRING_1_VAR15_HEIGHT           24

// 882
#define ANIM_DECO_ROCK_WIDTH                        48
#define ANIM_DECO_ROCK_HEIGHT                       32

// 883
#define ANIM_FLAT_SPRING_WIDTH                      32
#define ANIM_FLAT_SPRING_HEIGHT                     32

// 884
#define ANIM_PLATFORM_RAISING_WHEEL_WIDTH           32
#define ANIM_PLATFORM_RAISING_WHEEL_HEIGHT          24
#define ANIM_PLATFORM_RAISING_WHEEL_PLATFORM_WIDTH  24
#define ANIM_PLATFORM_RAISING_WHEEL_PLATFORM_HEIGHT 24

// 886
#define ANIM_ACCORDION_SPRING_2_WIDTH               32
#define ANIM_ACCORDION_SPRING_2_HEIGHT              24

// 889
#define ANIM_PLATFORM_2_WIDTH                       48
#define ANIM_PLATFORM_2_HEIGHT                      24

// 886
#define ANIM_PLATFORM_CRUMBLING_2_WIDTH             48
#define ANIM_PLATFORM_CRUMBLING_2_HEIGHT            24

// 898
#define ANIM_PLATFORM_ON_A_PATH_3_WIDTH             56
#define ANIM_PLATFORM_ON_A_PATH_3_HEIGHT            24

// 891
#define ANIM_BUNGEE_CORD_WIDTH                      8
#define ANIM_BUNGEE_CORD_HEIGHT                     8
#define ANIM_BUNGEE_CORD_VAR0_WIDTH                 8
#define ANIM_BUNGEE_CORD_VAR0_HEIGHT                8

// 892
#define ANIM_SUNSET_BRIDGE_WIDTH                    24
#define ANIM_SUNSET_BRIDGE_HEIGHT                   32

// 893
#define ANIM_PLATFORM_2_2_WIDTH                     48
#define ANIM_PLATFORM_2_2_HEIGHT                    16
#define ANIM_PLATFORM_2_2_VAR0_WIDTH                48
#define ANIM_PLATFORM_2_2_VAR0_HEIGHT               16

// 894
#define ANIM_WAGGLE_COIL_WIDTH                      48
#define ANIM_WAGGLE_COIL_HEIGHT                     56

// 900
#define ANIM_PLATFORM_3_0_WIDTH                     (48 / 2)
#define ANIM_PLATFORM_3_0_HEIGHT                    24

// 901
#define ANIM_SUCTION_3_VERTICAL_WIDTH               24
#define ANIM_SUCTION_3_VERTICAL_HEIGHT              56

// 902
#define ANIM_SUCTION_3_HORIZONTAL_WIDTH             56
#define ANIM_SUCTION_3_HORIZONTAL_HEIGHT            24

// 903
#define ANIM_DEATH_CRUSHER_SPIKED_WIDTH             24
#define ANIM_DEATH_CRUSHER_SPIKED_HEIGHT            80

// 904
#define ANIM_DEATH_CRUSHER_NO_LED_WIDTH             24
#define ANIM_DEATH_CRUSHER_NO_LED_HEIGHT            48

// 905
#define ANIM_DEATH_CRUSHER_WIDTH                    24
#define ANIM_DEATH_CRUSHER_HEIGHT                   48

// 907
#define ANIM_PLATFORM_CRUMBLING_3_WIDTH             48
#define ANIM_PLATFORM_CRUMBLING_3_HEIGHT            48

// 908 - x-mirrored
#define ANIM_PROPELLER_BUTTON_PLATFORM_WIDTH        (64 / 2)
#define ANIM_PROPELLER_BUTTON_PLATFORM_HEIGHT       48

// 910
#define ANIM_WATER_CANNON_WIDTH                     32
#define ANIM_WATER_CANNON_HEIGHT                    48

// 911
#define ANIM_FACTORY_RING_WIDTH                     48
#define ANIM_FACTORY_RING_HEIGHT                    48

// 912
#define ANIM_SPECIAL_SPRING_WIDTH                   32
#define ANIM_SPECIAL_SPRING_HEIGHT                  48

// 913
#define ANIM_BONUS_UFO_WIDTH                        24
#define ANIM_BONUS_UFO_HEIGHT                       48

// 914
#define ANIM_BONUS_UFO_RAY_WIDTH                    24
#define ANIM_BONUS_UFO_RAY_HEIGHT                   56

// 915
#define ANIM_ROCKET_WIDTH                           48
#define ANIM_ROCKET_HEIGHT                          48
#define ANIM_ROCKET_VAR0_WIDTH                      16
#define ANIM_ROCKET_VAR0_HEIGHT                     8
#define ANIM_ROCKET_VAR1_WIDTH                      16
#define ANIM_ROCKET_VAR1_HEIGHT                     8
#define ANIM_ROCKET_VAR2_WIDTH                      8
#define ANIM_ROCKET_VAR2_HEIGHT                     8
#define ANIM_ROCKET_VAR3_WIDTH                      8
#define ANIM_ROCKET_VAR3_HEIGHT                     8
#define ANIM_ROCKET_VAR4_WIDTH                      8
#define ANIM_ROCKET_VAR4_HEIGHT                     8
#define ANIM_ROCKET_VAR5_WIDTH                      8
#define ANIM_ROCKET_VAR5_HEIGHT                     8
#define ANIM_ROCKET_VAR6_WIDTH                      8
#define ANIM_ROCKET_VAR6_HEIGHT                     8

// 916
#define ANIM_FERRIS_WHEEL_HEIGHT                    8
#define ANIM_FERRIS_WHEEL_WIDTH                     8
#define ANIM_FERRIS_WHEEL_VAR0_HEIGHT               8
#define ANIM_FERRIS_WHEEL_VAR0_WIDTH                8
#define ANIM_FERRIS_WHEEL_VAR1_HEIGHT               8
#define ANIM_FERRIS_WHEEL_VAR1_WIDTH                8

// 917
#define ANIM_TOY_BALLOON_WIDTH                      32
#define ANIM_TOY_BALLOON_HEIGHT                     48

// 918 (x-mirrored)
#define ANIM_SPRING_IN_A_BOX_WIDTH                  (64 / 2)
#define ANIM_SPRING_IN_A_BOX_HEIGHT                 64

// 919
#define ANIM_PANDA_CART_WIDTH                       48
#define ANIM_PANDA_CART_HEIGHT                      40

// 920
#define ANIM_PENDULUM_WIDTH                         40
#define ANIM_PENDULUM_HEIGHT                        40
#define ANIM_PENDULUM_VAR0_WIDTH                    40
#define ANIM_PENDULUM_VAR0_HEIGHT                   40
#define ANIM_PENDULUM_VAR1_WIDTH                    8
#define ANIM_PENDULUM_VAR1_HEIGHT                   8

// 921 (x-mirrored)
#define ANIM_PLATFORM_SPIKED_WIDTH                  32
#define ANIM_PLATFORM_SPIKED_HEIGHT                 48

// 922
#define ANIM_ICE_SPIKE_WIDTH                        32
#define ANIM_ICE_SPIKE_HEIGHT                       32

// 923
#define ANIM_ICE_LAUNCHER_WIDTH                     48
#define ANIM_ICE_LAUNCHER_HEIGHT                    64

// 924
#define ANIM_WINDUP_BLOCK_WIDTH                     24
#define ANIM_WINDUP_BLOCK_HEIGHT                    24
#define ANIM_WINDUP_BLOCK_VAR0_WIDTH                24
#define ANIM_WINDUP_BLOCK_VAR0_HEIGHT               24
#define ANIM_WINDUP_BLOCK_VAR1_WIDTH                24
#define ANIM_WINDUP_BLOCK_VAR1_HEIGHT               24
#define ANIM_WINDUP_BLOCK_VAR2_WIDTH                24
#define ANIM_WINDUP_BLOCK_VAR2_HEIGHT               24
#define ANIM_WINDUP_BLOCK_VAR3_WIDTH                24
#define ANIM_WINDUP_BLOCK_VAR3_HEIGHT               24

// 925
#define ANIM_MINECART_WIDTH                         64
#define ANIM_MINECART_HEIGHT                        64
#define ANIM_MINECART_VAR0_WIDTH                    64
#define ANIM_MINECART_VAR0_HEIGHT                   64
#define ANIM_MINECART_VAR1_WIDTH                    64
#define ANIM_MINECART_VAR1_HEIGHT                   64
#define ANIM_MINECART_VAR2_WIDTH                    16
#define ANIM_MINECART_VAR2_HEIGHT                   16
#define ANIM_MINECART_VAR3_WIDTH                    8
#define ANIM_MINECART_VAR3_HEIGHT                   8
#define ANIM_MINECART_VAR4_WIDTH                    8
#define ANIM_MINECART_VAR4_HEIGHT                   8

// 926
#define ANIM_AIR_BUBBLES_WIDTH                      24
#define ANIM_AIR_BUBBLES_HEIGHT                     24
#define ANIM_AIR_BUBBLES_VAR0_WIDTH                 24
#define ANIM_AIR_BUBBLES_VAR0_HEIGHT                24
#define ANIM_AIR_BUBBLES_VAR1_WIDTH                 8
#define ANIM_AIR_BUBBLES_VAR1_HEIGHT                8
#define ANIM_AIR_BUBBLES_VAR2_WIDTH                 24
#define ANIM_AIR_BUBBLES_VAR2_HEIGHT                24

// 927
#define ANIM_ATTACHED_PLATFORM_WIDTH                48
#define ANIM_ATTACHED_PLATFORM_HEIGHT               16
#define ANIM_ATTACHED_PLATFORM_VAR0_WIDTH           48
#define ANIM_ATTACHED_PLATFORM_VAR0_HEIGHT          16
#define ANIM_ATTACHED_PLATFORM_VAR1_WIDTH           16
#define ANIM_ATTACHED_PLATFORM_VAR1_HEIGHT          16
#define ANIM_ATTACHED_PLATFORM_VAR2_WIDTH           8
#define ANIM_ATTACHED_PLATFORM_VAR2_HEIGHT          8

// 929
#define ANIM_BOULDER_WIDTH                          40
#define ANIM_BOULDER_HEIGHT                         40
#define ANIM_BOULDER_VAR0_WIDTH                     40
#define ANIM_BOULDER_VAR0_HEIGHT                    40
#define ANIM_BOULDER_VAR1_WIDTH                     16
#define ANIM_BOULDER_VAR1_HEIGHT                    16
#define ANIM_BOULDER_VAR2_WIDTH                     8
#define ANIM_BOULDER_VAR2_HEIGHT                    8

// 931
#define ANIM_UFO_PLATFORM_WIDTH                     48
#define ANIM_UFO_PLATFORM_HEIGHT                    24

// 930
#define ANIM_CLOSING_WALL_WIDTH                     72
#define ANIM_CLOSING_WALL_HEIGHT                    24

// 933
#define ANIM_FALL_PLATFORM_CA_WIDTH                 48
#define ANIM_FALL_PLATFORM_CA_HEIGHT                16

// 934
#define ANIM_WATER_CANNON_SPLASH_WIDTH              48
#define ANIM_WATER_CANNON_SPLASH_HEIGHT             40

// 935
#define ANIM_PLATFORM_CRUMBLING_7_WIDTH             48
#define ANIM_PLATFORM_CRUMBLING_7_HEIGHT            40

// 936
#define ANIM_SPRING_6_WIDTH                         24
#define ANIM_SPRING_6_HEIGHT                        40

// 938
#define ANIM_PLATFORM_CRUMBLING_6_WIDTH             48
#define ANIM_PLATFORM_CRUMBLING_6_HEIGHT            24

// 939
#define ANIM_SPRING_PLATFORM_6_WIDTH                24
#define ANIM_SPRING_PLATFORM_6_HEIGHT               64

// 940
#define ANIM_MAZE_WIDTH                             48
#define ANIM_MAZE_HEIGHT                            64
#define ANIM_MAZE_VAR0_WIDTH                        48
#define ANIM_MAZE_VAR0_HEIGHT                       64
#define ANIM_MAZE_VAR1_WIDTH                        48
#define ANIM_MAZE_VAR1_HEIGHT                       64
#define ANIM_MAZE_VAR2_WIDTH                        48
#define ANIM_MAZE_VAR2_HEIGHT                       64
#define ANIM_MAZE_VAR3_WIDTH                        64
#define ANIM_MAZE_VAR3_HEIGHT                       48
#define ANIM_MAZE_VAR4_WIDTH                        64
#define ANIM_MAZE_VAR4_HEIGHT                       48
#define ANIM_MAZE_VAR5_WIDTH                        64
#define ANIM_MAZE_VAR5_HEIGHT                       48
#define ANIM_MAZE_VAR6_WIDTH                        24
#define ANIM_MAZE_VAR6_HEIGHT                       24
#define ANIM_MAZE_VAR7_WIDTH                        48
#define ANIM_MAZE_VAR7_HEIGHT                       56
#define ANIM_MAZE_VAR8_WIDTH                        56
#define ANIM_MAZE_VAR8_HEIGHT                       48

// 942
#define ANIM_PLATFORM_ON_A_PATH_6_WIDTH             56
#define ANIM_PLATFORM_ON_A_PATH_6_HEIGHT            24

// 945
#define ANIM_MUD_FX_WIDTH                           48
#define ANIM_MUD_FX_HEIGHT                          24
#define ANIM_MUD_FX_CHAOS_ANGEL_WIDTH               48
#define ANIM_MUD_FX_CHAOS_ANGEL_HEIGHT              24

// 948
#define ANIM_GOAL_RING_WIDTH                        24
#define ANIM_GOAL_RING_HEIGHT                       24
#define ANIM_GOAL_RING_VAR8_WIDTH                   24 // Sparkle effect
#define ANIM_GOAL_RING_VAR8_HEIGHT                  16

// 949
#define ANIM_SUCTION_VERTICAL_WIDTH                 24
#define ANIM_SUCTION_VERTICAL_HEIGHT                56

// 950
#define ANIM_SUCTION_HORIZONTAL_WIDTH               56
#define ANIM_SUCTION_HORIZONTAL_HEIGHT              24

// 951
#define ANIM_PLATFORM_CRUMBLING_4_WIDTH             48
#define ANIM_PLATFORM_CRUMBLING_4_HEIGHT            24

// 952
#define ANIM_PLATFORM_CRUMBLING_5_WIDTH             48
#define ANIM_PLATFORM_CRUMBLING_5_HEIGHT            32

// 955
#define ANIM_SUCTION_STREAM_HORIZONTAL_WIDTH        24
#define ANIM_SUCTION_STREAM_HORIZONTAL_HEIGHT       56

// 956
#define ANIM_SUCTION_STREAM_VERTICAL_WIDTH          56
#define ANIM_SUCTION_STREAM_VERTICAL_HEIGHT         24

// 969
#define ANIM_WINDUP_BLOCK_7_WIDTH                   24
#define ANIM_WINDUP_BLOCK_7_HEIGHT                  24
#define ANIM_WINDUP_BLOCK_7_VAR0_WIDTH              24
#define ANIM_WINDUP_BLOCK_7_VAR0_HEIGHT             24
#define ANIM_WINDUP_BLOCK_7_VAR1_WIDTH              8
#define ANIM_WINDUP_BLOCK_7_VAR1_HEIGHT             24
#define ANIM_WINDUP_BLOCK_7_VAR2_WIDTH              24
#define ANIM_WINDUP_BLOCK_7_VAR2_HEIGHT             24
#define ANIM_WINDUP_BLOCK_7_VAR3_WIDTH              24
#define ANIM_WINDUP_BLOCK_7_VAR3_HEIGHT             8

// 976
#define ANIM_TOY_BALLOON_POPPED_WIDTH               32
#define ANIM_TOY_BALLOON_POPPED_HEIGHT              48

// 976
#define ANIM_OMOCHAO0_WIDTH                         24
#define ANIM_OMOCHAO0_HEIGHT                        24

// 977
#define ANIM_OMOCHAO1_WIDTH                         24
#define ANIM_OMOCHAO1_HEIGHT                        24

// 978
#define ANIM_OMOCHAO2_WIDTH                         24
#define ANIM_OMOCHAO2_HEIGHT                        24

// 979
#define ANIM_OMOCHAO3_WIDTH                         24
#define ANIM_OMOCHAO3_HEIGHT                        24

// 980
#define ANIM_OMOCHAO4_WIDTH                         24
#define ANIM_OMOCHAO4_HEIGHT                        24

// 981
#define ANIM_OMOCHAO5_WIDTH                         24
#define ANIM_OMOCHAO5_HEIGHT                        24

// 983
#define ANIM_ACT_RING_WIDTH                         32
#define ANIM_ACT_RING_HEIGHT                        32
#define ANIM_ACT_RING_VAR0_WIDTH                    32
#define ANIM_ACT_RING_VAR0_HEIGHT                   32
#define ANIM_ACT_RING_VAR1_WIDTH                    32
#define ANIM_ACT_RING_VAR1_HEIGHT                   32
#define ANIM_ACT_RING_VAR2_WIDTH                    32
#define ANIM_ACT_RING_VAR2_HEIGHT                   32
// "Crown" signalling completion
#define ANIM_ACT_RING_VAR3_WIDTH                    24
#define ANIM_ACT_RING_VAR3_HEIGHT                   16

// 984
#define ANIM_SPRING_PLATFORM_4_WIDTH                24
#define ANIM_SPRING_PLATFORM_4_HEIGHT               64

// 986
#define ANIM_SLOW_LIFT_7_WIDTH                      (112 / 2)
#define ANIM_SLOW_LIFT_7_HEIGHT                     24

// 987
#define ANIM_SPRING_4_WIDTH                         32
#define ANIM_SPRING_4_HEIGHT                        40

// 995
#define ANIM_BUTTON_SPRING_6_VAR0_WIDTH             32
#define ANIM_BUTTON_SPRING_6_VAR0_HEIGHT            40
#define ANIM_BUTTON_SPRING_6_VAR5_WIDTH             40
#define ANIM_BUTTON_SPRING_6_VAR5_HEIGHT            24
#define ANIM_BUTTON_SPRING_6_VAR10_WIDTH            32
#define ANIM_BUTTON_SPRING_6_VAR10_HEIGHT           32

// 997
#define ANIM_PLATFORM_BONUS_WIDTH                   48
#define ANIM_PLATFORM_BONUS_HEIGHT                  48
#define ANIM_PLATFORM_BONUS_VAR0_WIDTH              48
#define ANIM_PLATFORM_BONUS_VAR0_HEIGHT             48
#define ANIM_PLATFORM_BONUS_VAR1_WIDTH              48
#define ANIM_PLATFORM_BONUS_VAR1_HEIGHT             24

// 1004
#define ANIM_CHAO_SITTING_WIDTH                     32
#define ANIM_CHAO_SITTING_HEIGHT                    32

// 1042
#define ANIM_UI_PROMPT_BUTTON_WIDTH                 16
#define ANIM_UI_PROMPT_BUTTON_HEIGHT                16

// 1059
#define ANIM_BONUS_UI_TIMER_DIGITS_WIDTH            8
#define ANIM_BONUS_UI_TIMER_DIGITS_HEIGHT           16

// 1063
#define ANIM_BONUS_UI_FLOWER_WIDTH                  16
#define ANIM_BONUS_UI_FLOWER_HEIGHT                 24

// 1064
#define ANIM_BONUS_UI_BAR_WIDTH                     16
#define ANIM_BONUS_UI_BAR_HEIGHT                    16

// 1065
#define ANIM_BONUS_UI_X_WIDTH                       48
#define ANIM_BONUS_UI_X_HEIGHT                      32
#define ANIM_BONUS_UI_X_VAR0_WIDTH                  16
#define ANIM_BONUS_UI_X_VAR0_HEIGHT                 16
#define ANIM_BONUS_UI_X_VAR1_WIDTH                  48
#define ANIM_BONUS_UI_X_VAR1_HEIGHT                 32

// 1154
#define ANIM_BONUS_CAPSULE_WIDTH                    56
#define ANIM_BONUS_CAPSULE_HEIGHT                   72

// 1155
#define ANIM_BONUS_CAPSULE_POINTS_WIDTH             24
#define ANIM_BONUS_CAPSULE_POINTS_HEIGHT            24

// 1156
#define ANIM_BONUS_CAPSULE_SWITCH_WIDTH             24
#define ANIM_BONUS_CAPSULE_SWITCH_HEIGHT            16

// 1160
#define ANIM_BONUS_UI_SCORE_WIDTH                   32
#define ANIM_BONUS_UI_SCORE_HEIGHT                  16

// Enemies
// 1166
#define ANIM_SPINNER_WIDTH                          48
#define ANIM_SPINNER_HEIGHT                         32

// 1168
#define ANIM_CONDOR_WIDTH                           48
#define ANIM_CONDOR_HEIGHT                          40

// 1168
#define ANIM_AKATENTO_WIDTH                         32
#define ANIM_AKATENTO_HEIGHT                        24

// 1169
#define ANIM_AOTENTO_WIDTH                          32
#define ANIM_AOTENTO_HEIGHT                         32

// 1171
#define ANIM_APE_WIDTH                              40
#define ANIM_APE_HEIGHT                             32
#define ANIM_APE_VAR2_WIDTH                         16
#define ANIM_APE_VAR2_HEIGHT                        16

// 1172
#define ANIM_APE_PROJ_WIDTH                         16
#define ANIM_APE_PROJ_HEIGHT                        16

// 1173
#define ANIM_FROG_WIDTH                             32
#define ANIM_FROG_HEIGHT                            48

// 1174
#define ANIM_MINIMOLE_WIDTH                         48
#define ANIM_MINIMOLE_HEIGHT                        24
#define ANIM_MINIMOLE_VAR0_WIDTH                    48
#define ANIM_MINIMOLE_VAR0_HEIGHT                   24
#define ANIM_MINIMOLE_VAR1_WIDTH                    32
#define ANIM_MINIMOLE_VAR1_HEIGHT                   8

// 1175
#define ANIM_BUZZER_WIDTH                           48
#define ANIM_BUZZER_HEIGHT                          32

// 1176
#define ANIM_BUZZER_PROJ_WIDTH                      16
#define ANIM_BUZZER_PROJ_HEIGHT                     16

// 1178
#define ANIM_TAKKON_WIDTH                           32
#define ANIM_TAKKON_HEIGHT                          48

// 1177
#define ANIM_JOUSUN_WIDTH                           40
#define ANIM_JOUSUN_HEIGHT                          32

// 1180
#define ANIM_TAKKON_PROJ_WIDTH                      24
#define ANIM_TAKKON_PROJ_HEIGHT                     24
#define ANIM_TAKKON_PROJ_VAR0_WIDTH                 8
#define ANIM_TAKKON_PROJ_VAR0_HEIGHT                24
#define ANIM_TAKKON_PROJ_VAR4_WIDTH                 24
#define ANIM_TAKKON_PROJ_VAR4_HEIGHT                24

// 1182
#define ANIM_GAOGAO_WIDTH                           32
#define ANIM_GAOGAO_HEIGHT                          32

// 1187
#define ANIM_GINPE_WIDTH                            24
#define ANIM_GINPE_HEIGHT                           32

// 1187
#define ANIM_GINPE_PROJ_WIDTH                       8
#define ANIM_GINPE_PROJ_HEIGHT                      8

// 1191
#define ANIM_YADOKK_WIDTH                           32
#define ANIM_YADOKK_HEIGHT                          32
#define ANIM_YADOKK_VAR2_WIDTH                      32
#define ANIM_YADOKK_VAR2_HEIGHT                     32

// 1315
#define ANIM_ITEM_BOX_TYPE_WIDTH                    16
#define ANIM_ITEM_BOX_TYPE_HEIGHT                   16

// 1316
#define ANIM_ITEM_BOX_WIDTH                         32
#define ANIM_ITEM_BOX_HEIGHT                        32

// 1338
#define ANIM_ITEM_BOX_CLOUD_EFFECT_WIDTH            32
#define ANIM_ITEM_BOX_CLOUD_EFFECT_HEIGHT           32

// 1139
#define ANIM_CONDOR_PROJ_EXPLOSION_WIDTH            32
#define ANIM_CONDOR_PROJ_EXPLOSION_HEIGHT           32

// 1344
#define ANIM_ICE_SHIVER_WIDTH                       16
#define ANIM_ICE_SHIVER_HEIGHT                      16

// 1348
#define ANIM_SPECIAL_KEY_WIDTH                      32
#define ANIM_SPECIAL_KEY_HEIGHT                     32

// 1423
#define ANIM_LIFE_ICONS_WIDTH                       16
#define ANIM_LIFE_ICONS_HEIGHT                      16
#define ANIM_LIFE_ICONS_VAR0_WIDTH                  16
#define ANIM_LIFE_ICONS_VAR0_HEIGHT                 16
#define ANIM_LIFE_ICONS_VAR1_WIDTH                  16
#define ANIM_LIFE_ICONS_VAR1_HEIGHT                 16
#define ANIM_LIFE_ICONS_VAR2_WIDTH                  16
#define ANIM_LIFE_ICONS_VAR2_HEIGHT                 16
#define ANIM_LIFE_ICONS_VAR3_WIDTH                  16
#define ANIM_LIFE_ICONS_VAR3_HEIGHT                 16
#define ANIM_LIFE_ICONS_VAR4_WIDTH                  16
#define ANIM_LIFE_ICONS_VAR4_HEIGHT                 16
#define ANIM_LIFE_ICONS_VAR5_WIDTH                  16
#define ANIM_LIFE_ICONS_VAR5_HEIGHT                 16
#define ANIM_LIFE_ICONS_VAR6_WIDTH                  16
#define ANIM_LIFE_ICONS_VAR6_HEIGHT                 16
#endif

#endif // GUARD_ANIM_SIZES_H
