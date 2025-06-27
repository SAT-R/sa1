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

// 401
#define SA1_ANIM_KIKI_WIDTH  32
#define SA1_ANIM_KIKI_HEIGHT 40

// 403
#define SA1_ANIM_BUZZER_WIDTH  32
#define SA1_ANIM_BUZZER_HEIGHT 40

// 404
#define SA1_ANIM_GAMIGAMI_WIDTH  48
#define SA1_ANIM_GAMIGAMI_HEIGHT 40

// 405
#define SA1_ANIM_RHINOTANK_WIDTH  40
#define SA1_ANIM_RHINOTANK_HEIGHT 32

// 406
#define SA1_ANIM_KEROKERO_WIDTH  40
#define SA1_ANIM_KEROKERO_HEIGHT 32

// 411
#define SA1_ANIM_SENBON_WIDTH  32
#define SA1_ANIM_SENBON_HEIGHT 32

// 410
#define SA1_ANIM_GAMIGAMI_PROJ_WIDTH  16
#define SA1_ANIM_GAMIGAMI_PROJ_HEIGHT 16

// 412
#define SA1_ANIM_TENTOU_WIDTH  24
#define SA1_ANIM_TENTOU_HEIGHT 16

// 413
#define SA1_ANIM_FIREBALL_WIDTH  (32 / 2)
#define SA1_ANIM_FIREBALL_HEIGHT 32

// 415
#define SA1_ANIM_HANABII_WIDTH  32
#define SA1_ANIM_HANABII_HEIGHT 40

// 416
#define SA1_ANIM_HANABII_FIREWORK_WIDTH  32
#define SA1_ANIM_HANABII_FIREWORK_HEIGHT 32

// 417
#define SA1_ANIM_SLOT_WIDTH  24
#define SA1_ANIM_SLOT_HEIGHT 40

// 418
#define SA1_ANIM_PIERROT_WIDTH  48
#define SA1_ANIM_PIERROT_HEIGHT 48

// 419
#define SA1_ANIM_HANABII_PROJ_WIDTH  16
#define SA1_ANIM_HANABII_PROJ_HEIGHT 16

// 420
#define SA1_ANIM_SLOT_PROJ_WIDTH  16
#define SA1_ANIM_SLOT_PROJ_HEIGHT 16

// 421
#define SA1_ANIM_YUKIMARU_PROJ_WIDTH  8
#define SA1_ANIM_YUKIMARU_PROJ_HEIGHT 8

// 422
#define SA1_ANIM_YUKIMARU_WIDTH  (32 / 2)
#define SA1_ANIM_YUKIMARU_HEIGHT 32

// 423
#define SA1_ANIM_YUKIMARU_SIDEWAYS_WIDTH  32
#define SA1_ANIM_YUKIMARU_SIDEWAYS_HEIGHT (32 / 2)

// 424
#define SA1_ANIM_DRISAME_WIDTH  40
#define SA1_ANIM_DRISAME_HEIGHT 16

// 425
#define SA1_ANIM_KURAA_WIDTH  24
#define SA1_ANIM_KURAA_HEIGHT 40

// 426
#define SA1_ANIM_PEN_WIDTH  16
#define SA1_ANIM_PEN_HEIGHT 24

// 430
#define SA1_ANIM_LEON_WIDTH  64
#define SA1_ANIM_LEON_HEIGHT 24

// 431
#define SA1_ANIM_WAMU_WIDTH  16
#define SA1_ANIM_WAMU_HEIGHT 16

// 432
#define SA1_ANIM_MIRROR_WIDTH  40
#define SA1_ANIM_MIRROR_HEIGHT 32

// 433
#define SA1_ANIM_OCT_WIDTH  (32 / 2)
#define SA1_ANIM_OCT_HEIGHT 32

// 434
#define SA1_ANIM_MOLE_WIDTH  32
#define SA1_ANIM_MOLE_HEIGHT 32

// 452
#define SA1_ANIM_CHECKPOINT_WIDTH  24
#define SA1_ANIM_CHECKPOINT_HEIGHT 48

// 453
#define SA1_ANIM_GOAL_WIDTH  48
#define SA1_ANIM_GOAL_HEIGHT 48

// 454
#define SA1_ANIM_SPIKES_WIDTH  32
#define SA1_ANIM_SPIKES_HEIGHT 32

// 455
#define SA1_ANIM_SPRING_WIDTH  32
#define SA1_ANIM_SPRING_HEIGHT 32

// 458
#define SA1_ANIM_ROCK_WIDTH  48
#define SA1_ANIM_ROCK_HEIGHT 32

// 459
#define SA1_ANIM_ROCK_DEBRIS_S_WIDTH  8
#define SA1_ANIM_ROCK_DEBRIS_S_HEIGHT 8

// 460
#define SA1_ANIM_ROCK_DEBRIS_L_WIDTH  16
#define SA1_ANIM_ROCK_DEBRIS_L_HEIGHT 16

// 461
#define SA1_ANIM_TRAMPOLINE1_WIDTH  48
#define SA1_ANIM_TRAMPOLINE1_HEIGHT 32

// 462
#define SA1_ANIM_BOUNCE_BLOCK_1_WIDTH  32
#define SA1_ANIM_BOUNCE_BLOCK_1_HEIGHT 24

// 463
#define SA1_ANIM_PLATFORM_HORZ_1_WIDTH  48
#define SA1_ANIM_PLATFORM_HORZ_1_HEIGHT 24

// 464
#define SA1_ANIM_WATER_SPLASH_WIDTH  48
#define SA1_ANIM_WATER_SPLASH_HEIGHT 24

// 467
#define SA1_ANIM_SHRUBBERY_WIDTH  32
#define SA1_ANIM_SHRUBBERY_HEIGHT 32

// 468
#define SA1_ANIM_BOUNCY_BAR_WIDTH  32
#define SA1_ANIM_BOUNCY_BAR_HEIGHT 24

// 469
#define SA1_ANIM_RED_FLAG_V_WIDTH  24
#define SA1_ANIM_RED_FLAG_V_HEIGHT 32

// 470
#define SA1_ANIM_RED_FLAG_H_WIDTH  24
#define SA1_ANIM_RED_FLAG_H_HEIGHT 32

// 471
#define SA1_ANIM_BOOSTER_WIDTH       32
#define SA1_ANIM_BOOSTER_HEIGHT      16
#define SA1_ANIM_BOOSTER_VAR2_WIDTH  32
#define SA1_ANIM_BOOSTER_VAR2_HEIGHT 24

// 471
#define SA1_ANIM_BOOSTER_VERT_WIDTH  16
#define SA1_ANIM_BOOSTER_VERT_HEIGHT 32

// 473
#define SA1_ANIM_WATER_BRIDGE_SPLASH_WIDTH  56
#define SA1_ANIM_WATER_BRIDGE_SPLASH_HEIGHT 56

// 474
#define SA1_ANIM_WATER_SLIDE_SPLASH_WIDTH  48
#define SA1_ANIM_WATER_SLIDE_SPLASH_HEIGHT 24

// 479
#define SA1_ANIM_BALLOON_BLUE_WIDTH  24
#define SA1_ANIM_BALLOON_BLUE_HEIGHT 48

// 478
#define SA1_ANIM_FLIPPER_WIDTH       48
#define SA1_ANIM_FLIPPER_HEIGHT      32
#define SA1_ANIM_FLIPPER_VAR0_WIDTH  48
#define SA1_ANIM_FLIPPER_VAR0_HEIGHT 24
#define SA1_ANIM_FLIPPER_VAR1_WIDTH  48
#define SA1_ANIM_FLIPPER_VAR1_HEIGHT 32
#define SA1_ANIM_FLIPPER_VAR2_WIDTH  24
#define SA1_ANIM_FLIPPER_VAR2_HEIGHT 48
#define SA1_ANIM_FLIPPER_VAR3_WIDTH  40
#define SA1_ANIM_FLIPPER_VAR3_HEIGHT 48

// 482
#define SA1_ANIM_FIREWORKS_WIDTH  24
#define SA1_ANIM_FIREWORKS_HEIGHT 24

// 483
#define SA1_ANIM_FIREWORKS_SMALL_WIDTH  16
#define SA1_ANIM_FIREWORKS_SMALL_HEIGHT 16

// 484
#define SA1_ANIM_BUMPER_BIG_WIDTH  48
#define SA1_ANIM_BUMPER_BIG_HEIGHT 40

// 489
#define SA1_ANIM_SHIP_SWING_SEGMENT_WIDTH  8
#define SA1_ANIM_SHIP_SWING_SEGMENT_HEIGHT 8

// 490
#define SA1_ANIM_SHIP_SWING_HOOK_WIDTH  24
#define SA1_ANIM_SHIP_SWING_HOOK_HEIGHT 24

// 491
#define SA1_ANIM_SHIP_SWING_WIDTH  (96 / 2)
#define SA1_ANIM_SHIP_SWING_HEIGHT 40

// 492
#define SA1_ANIM_SEGA_SONIC_LETTERS_WIDTH  32
#define SA1_ANIM_SEGA_SONIC_LETTERS_HEIGHT 32

// 493
#define SA1_ANIM_BARREL_OF_DOOM_MINI_WIDTH  32
#define SA1_ANIM_BARREL_OF_DOOM_MINI_HEIGHT 40

// 494
#define SA1_ANIM_PLATFORM_SQU_3_WIDTH  48
#define SA1_ANIM_PLATFORM_SQU_3_HEIGHT 48

// 495
#define SA1_ANIM_PLATFORM_HORZ_3_WIDTH  48
#define SA1_ANIM_PLATFORM_HORZ_3_HEIGHT 24

// 496
#define SA1_ANIM_PANEL_GATE_SIDEWAYS_WIDTH  16
#define SA1_ANIM_PANEL_GATE_SIDEWAYS_HEIGHT 32

// 497
#define SA1_ANIM_PANEL_GATE_UPDOWN_WIDTH  32
#define SA1_ANIM_PANEL_GATE_UPDOWN_HEIGHT 16

// 498
#define SA1_ANIM_CRANE_CLAW_2_WIDTH       48
#define SA1_ANIM_CRANE_CLAW_2_HEIGHT      40
#define SA1_ANIM_CRANE_CLAW_2_VAR3_WIDTH  8
#define SA1_ANIM_CRANE_CLAW_2_VAR3_HEIGHT 24

// 501
#define SA1_ANIM_STEAM_EXHAUST_LID_VAR0_WIDTH  32
#define SA1_ANIM_STEAM_EXHAUST_LID_VAR0_HEIGHT 32
#define SA1_ANIM_STEAM_EXHAUST_LID_VAR1_WIDTH  32
#define SA1_ANIM_STEAM_EXHAUST_LID_VAR1_HEIGHT 32
#define SA1_ANIM_STEAM_EXHAUST_LID_VAR2_WIDTH  32
#define SA1_ANIM_STEAM_EXHAUST_LID_VAR2_HEIGHT 16

// 503
#define SA1_ANIM_ANCHOR_HANDLES_WIDTH  8
#define SA1_ANIM_ANCHOR_HANDLES_HEIGHT 8

// 504
#define SA1_ANIM_HOOK_RAIL_2_WIDTH       32
#define SA1_ANIM_HOOK_RAIL_2_HEIGHT      32
#define SA1_ANIM_HOOK_RAIL_2_VAR0_WIDTH  16
#define SA1_ANIM_HOOK_RAIL_2_VAR0_HEIGHT 24
#define SA1_ANIM_HOOK_RAIL_2_VAR1_WIDTH  32
#define SA1_ANIM_HOOK_RAIL_2_VAR1_HEIGHT 32

// 505
#define SA1_ANIM_TRAMPOLINE2_WIDTH  48
#define SA1_ANIM_TRAMPOLINE2_HEIGHT 40

// 506
#define SA1_ANIM_PLATFORM_HORZ_2_WIDTH  48
#define SA1_ANIM_PLATFORM_HORZ_2_HEIGHT 24

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

// 516
#define SA1_ANIM_SPIKED_BARREL_WIDTH  48
#define SA1_ANIM_SPIKED_BARREL_HEIGHT 40

// 517
#define SA1_ANIM_PLATFORM_HORZ_6_1_WIDTH  48
#define SA1_ANIM_PLATFORM_HORZ_6_1_HEIGHT 24

// 518
#define SA1_ANIM_PLATFORM_SQU_6_1_WIDTH  48
#define SA1_ANIM_PLATFORM_SQU_6_1_HEIGHT 48

// 519
#define SA1_ANIM_PLATFORM_LONG_6_1_WIDTH  80
#define SA1_ANIM_PLATFORM_LONG_6_1_HEIGHT 32

// 523
#define SA1_ANIM_PLATFORM_HORZ_4_WIDTH  48
#define SA1_ANIM_PLATFORM_HORZ_4_HEIGHT 24

// 524
#define SA1_ANIM_PLATFORM_SQU_4_WIDTH  48
#define SA1_ANIM_PLATFORM_SQU_4_HEIGHT 48

// 525
#define SA1_ANIM_PLATFORM_HORZ_4_PURPLE_WIDTH  48
#define SA1_ANIM_PLATFORM_HORZ_4_PURPLE_HEIGHT 24

// 528
#define SA1_ANIM_PLATFORM_SQU_4_PURPLE_WIDTH  48
#define SA1_ANIM_PLATFORM_SQU_4_PURPLE_HEIGHT 40

// 529
#define SA1_ANIM_SKATING_STONE_4_WIDTH  48
#define SA1_ANIM_SKATING_STONE_4_HEIGHT 32

// 534
#define SA1_ANIM_SECURITY_GATE_WIDTH  16
#define SA1_ANIM_SECURITY_GATE_HEIGHT 48

// 536
#define SA1_ANIM_PLATFORM_LONG_V_5_WIDTH  32
#define SA1_ANIM_PLATFORM_LONG_V_5_HEIGHT 80

// 537
#define SA1_ANIM_PLATFORM_LONG_H_5_WIDTH  80
#define SA1_ANIM_PLATFORM_LONG_H_5_HEIGHT 32

// 541
#define SA1_ANIM_IRON_BALL_5_WIDTH  48
#define SA1_ANIM_IRON_BALL_5_HEIGHT 48

// 542
#define SA1_ANIM_RUN_WHEEL_HEIGHT 32
#define SA1_ANIM_RUN_WHEEL_WIDTH  32

// 544
#define SA1_ANIM_PLATFORM_SQU_ARROW_WIDTH  40
#define SA1_ANIM_PLATFORM_SQU_ARROW_HEIGHT 40

// 545
#define SA1_ANIM_LIFT_VAR0_WIDTH  8
#define SA1_ANIM_LIFT_VAR0_HEIGHT 32
#define SA1_ANIM_LIFT_VAR1_WIDTH  24
#define SA1_ANIM_LIFT_VAR1_HEIGHT 24

// 547
#define SA1_ANIM_SKATING_STONE_WIDTH  48
#define SA1_ANIM_SKATING_STONE_HEIGHT 32

// 548
#define SA1_ANIM_SKATING_STONE_DEBRIS_L_WIDTH  32
#define SA1_ANIM_SKATING_STONE_DEBRIS_L_HEIGHT 32

// 549
#define SA1_ANIM_SKATING_STONE_DEBRIS_S_WIDTH  8
#define SA1_ANIM_SKATING_STONE_DEBRIS_S_HEIGHT 8

// 553
#define SA1_ANIM_SKATING_STONE_DEBRIS_4_L_WIDTH  64
#define SA1_ANIM_SKATING_STONE_DEBRIS_4_L_HEIGHT 64

// 554
#define SA1_ANIM_SKATING_STONE_DEBRIS_4_S_WIDTH  8
#define SA1_ANIM_SKATING_STONE_DEBRIS_4_S_HEIGHT 8

// 558
#define SA1_ANIM_TORCH5_WIDTH  24
#define SA1_ANIM_TORCH5_HEIGHT 40

// 558
#define SA1_ANIM_BREAKABLE_WALL_1_WIDTH  32
#define SA1_ANIM_BREAKABLE_WALL_1_HEIGHT 64

// 564
#define SA1_ANIM_DEBRIS_A_WIDTH  8
#define SA1_ANIM_DEBRIS_A_HEIGHT 8

// 564
#define SA1_ANIM_DEBRIS_B_WIDTH  8
#define SA1_ANIM_DEBRIS_B_HEIGHT 16

// 566
#define SA1_ANIM_DEBRIS_C_WIDTH  8
#define SA1_ANIM_DEBRIS_C_HEIGHT 8

// 567
#define SA1_ANIM_STEAM_EXHAUST_WIDTH  32
#define SA1_ANIM_STEAM_EXHAUST_HEIGHT 48

// 569
#define SA1_ANIM_HOOK_RAIL_3_WIDTH  16
#define SA1_ANIM_HOOK_RAIL_3_HEIGHT 24

// 570
#define SA1_ANIM_BOOSTER_STEEP_CLOCKWISE_WIDTH  32
#define SA1_ANIM_BOOSTER_STEEP_CLOCKWISE_HEIGHT 24

// 571
#define SA1_ANIM_BOOSTER_STEEP_COUNTER_CLOCKWISE_WIDTH  32
#define SA1_ANIM_BOOSTER_STEEP_COUNTER_CLOCKWISE_HEIGHT 24

// 572
#define SA1_ANIM_SPECIAL_SPRING_WIDTH  32
#define SA1_ANIM_SPECIAL_SPRING_HEIGHT 48

// 573
#define SA1_ANIM_DRISAME_ICEBLOCK_WIDTH  56
#define SA1_ANIM_DRISAME_ICEBLOCK_HEIGHT 32

// 574
#define SA1_ANIM_FALLING_BRICK_XZONE_WIDTH  16
#define SA1_ANIM_FALLING_BRICK_XZONE_HEIGHT 24

// 579
#define SA1_ANIM_DRISAME_ICEBLOCK_DEBRIS_LARGE_WIDTH  16
#define SA1_ANIM_DRISAME_ICEBLOCK_DEBRIS_LARGE_HEIGHT 16

// 579
#define SA1_ANIM_DRISAME_ICEBLOCK_DEBRIS_SMALL_WIDTH  8
#define SA1_ANIM_DRISAME_ICEBLOCK_DEBRIS_SMALL_HEIGHT 8

// 584
#define SA1_ANIM_PIPE_ENTER_6_1_V_WIDTH  56
#define SA1_ANIM_PIPE_ENTER_6_1_V_HEIGHT 80

// 585
#define SA1_ANIM_PIPE_EXIT_6_1_V_WIDTH  56
#define SA1_ANIM_PIPE_EXIT_6_1_V_HEIGHT 80

// 586
#define SA1_ANIM_PIPE_ENTER_6_1_H_WIDTH  80
#define SA1_ANIM_PIPE_ENTER_6_1_H_HEIGHT 56

// 587
#define SA1_ANIM_PIPE_EXIT_6_1_H_WIDTH  56
#define SA1_ANIM_PIPE_EXIT_6_1_H_HEIGHT 80

// 588
#define SA1_ANIM_PIPE_GATE_2_H_WIDTH  80
#define SA1_ANIM_PIPE_GATE_2_H_HEIGHT 56

// 589
#define SA1_ANIM_PIPE_GATE_2_V_WIDTH  56
#define SA1_ANIM_PIPE_GATE_2_V_HEIGHT 80

// 590
#define SA1_ANIM_PIPE_ENTER_6_2_H_WIDTH  104
#define SA1_ANIM_PIPE_ENTER_6_2_H_HEIGHT 56

// 591
#define SA1_ANIM_PIPE_ENTER_6_2_V_WIDTH  56
#define SA1_ANIM_PIPE_ENTER_6_2_V_HEIGHT 88

// 592
#define SA1_ANIM_AIR_MAZE_CORNER_WIDTH  32
#define SA1_ANIM_AIR_MAZE_CORNER_HEIGHT 32

// 599
#define SA1_ANIM_PLATFORM_SQU_6_2_WIDTH  48
#define SA1_ANIM_PLATFORM_SQU_6_2_HEIGHT 48

// 600
#define SA1_ANIM_PLATFORM_LONG_6_2_WIDTH  80
#define SA1_ANIM_PLATFORM_LONG_6_2_HEIGHT 32

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

// 718
#define SA1_ANIM_PAUSE_WIDTH  80
#define SA1_ANIM_PAUSE_HEIGHT 16

// 719
#define SA1_ANIM_WARNING_WIDTH       32
#define SA1_ANIM_WARNING_HEIGHT      32
#define SA1_ANIM_WARNING_VAR0_WIDTH  32
#define SA1_ANIM_WARNING_VAR0_HEIGHT 32
#define SA1_ANIM_WARNING_VAR1_WIDTH  32
#define SA1_ANIM_WARNING_VAR1_HEIGHT 32
#define SA1_ANIM_WARNING_VAR2_WIDTH  32
#define SA1_ANIM_WARNING_VAR2_HEIGHT 32

// 720
#define SA1_ANIM_PAUSE_BACKGROUND_WIDTH  96
#define SA1_ANIM_PAUSE_BACKGROUND_HEIGHT 32

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

// 809
#define SA1_ANIM_PAUSE_BACKGROUND_TA_WIDTH  128
#define SA1_ANIM_PAUSE_BACKGROUND_TA_HEIGHT 48

// 810
#define SA1_ANIM_PAUSE_TA_WIDTH       128
#define SA1_ANIM_PAUSE_TA_HEIGHT      32
#define SA1_ANIM_PAUSE_TA_VAR0_WIDTH  80
#define SA1_ANIM_PAUSE_TA_VAR0_HEIGHT 32
#define SA1_ANIM_PAUSE_TA_VAR1_WIDTH  128
#define SA1_ANIM_PAUSE_TA_VAR1_HEIGHT 32

// 857
#define SA1_ANIM_MENU_CURSOR_WIDTH  16
#define SA1_ANIM_MENU_CURSOR_HEIGHT 16

// 879
#define SA1_ANIM_ONLY_CHAO_MSGBOX_WIDTH  208
#define SA1_ANIM_ONLY_CHAO_MSGBOX_HEIGHT 40

// 906
#define SA1_ANIM_CRUMBLE_PLATFORM_WIDTH  64
#define SA1_ANIM_CRUMBLE_PLATFORM_HEIGHT 32

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
