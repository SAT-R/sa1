#ifndef GUARD_ANIMATIONS_SA1_H
#define GUARD_ANIMATIONS_SA1_H

/* Collection of animation indices for Sonic Advance 1.
 * - By JaceCear
 */

// "x_PROJ" means "projectile belonging to x"

#define SA1_ANIM_SONIC_IDLE    0
#define SA1_ANIM_TAILS_IDLE    99
#define SA1_ANIM_KNUCKLES_IDLE 199
#define SA1_ANIM_AMY_IDLE      298

#define SA1_ANIM_TAILS_SPIN_ATTACK 107

#define SA1_CHAR_ANIM_WALK        4
#define SA1_CHAR_ANIM_RUN         5
#define SA1_CHAR_ANIM_SPIN_ATTACK 8
#define SA1_CHAR_ANIM_GRINDING    44

#define SA1_NUM_PLAYER_CHAR_ANIMATIONS (99) // TODO: Don't use constant here
#define SA1_ANIM_CHAR(character, anim) ((SA1_CHAR_ANIM_##anim) + CHARACTER_##character * SA1_NUM_PLAYER_CHAR_ANIMATIONS)

// Enemies
#define SA1_ANIM_KIKI      401
#define SA1_ANIM_KIKI_PROJ 402
#define SA1_ANIM_BUZZER    403
#define SA1_ANIM_GAMIGAMI  404
#define SA1_ANIM_RHINOTANK 405
#define SA1_ANIM_KEROKERO  406
// Defeating enemies / opening item boxes
#define SA1_ANIM_DUST_CLOUD 407

#define SA1_ANIM_SENBON   411
#define SA1_ANIM_TENTOU   412
#define SA1_ANIM_FIREBALL 413
#define SA1_ANIM_HANABII  415

#define SA1_ANIM_SLOT    417
#define SA1_ANIM_PIERROT 418

#define SA1_ANIM_YUKIMARU 422
#define SA1_ANIM_DRISAME  424
#define SA1_ANIM_KURA     425
#define SA1_ANIM_PEN      426

#define SA1_ANIM_LEON   430
#define SA1_ANIM_WAMU   431
#define SA1_ANIM_MIRROR 432
#define SA1_ANIM_OCTO   433
#define SA1_ANIM_MOLE   434

// Interactables
#define SA1_ANIM_CHECKPOINT 452
#define SA1_ANIM_GOAL       453
#define SA1_ANIM_SPIKES     454
#define SA1_ANIM_SPRING     455

#define SA1_ANIM_FALLING_BOULDER 457
#define SA1_ANIM_ROCK            458

#define SA1_ANIM_TRAMPOLINE1    461
#define SA1_ANIM_BOUNCE_BLOCK_1 462
#define SA1_ANIM_PLATFORM_NGH   463
#define SA1_ANIM_WATER_SPLASH_1 464

#define SA1_ANIM_BOUNCE_BAR              468
#define SA1_ANIM_FLAG_H                  469
#define SA1_ANIM_FLAG_V                  470
#define SA1_ANIM_BOOSTER                 471
#define SA1_ANIM_BOOSTER_VERT            472
#define SA1_ANIM_WATER_BRIDGE_SPLASH     473
#define SA1_ANIM_SPLASH_ON_PLAYER        474
#define SA1_ANIM_BUMPER_RIGHTANG         475
#define SA1_ANIM_BUMPER_TRI_H            476
#define SA1_ANIM_BUMPER_TRI_V            477
#define SA1_ANIM_FLIPPER                 478
#define SA1_ANIM_BALLOON_BLUE            479
#define SA1_ANIM_BALLOON_RED             480
#define SA1_ANIM_BALLOON_YELLOW          481
#define SA1_ANIM_FIREWORKS               482 // Casino Paradise BG
#define SA1_ANIM_FIREWORKS_SMALL         483
#define SA1_ANIM_BUMPER_BIG              484
#define SA1_ANIM_BUMPER_ROUND            485
#define SA1_ANIM_BIG_BOWL_CAS_PAR        486
#define SA1_ANIM_GOROUND_CAS_PAR         487
#define SA1_ANIM_CHAR_RESIZER            488
#define SA1_ANIM_VIKING_SHIP_SEGMENT     489
#define SA1_ANIM_VIKING_SHIP_HOOK        490
#define SA1_ANIM_VIKING_SHIP             491
#define SA1_ANIM_SONIC_CHARS             492
#define SA1_ANIM_CYLINDER_CAS_PAR        493
#define SA1_ANIM_PLATFORM_SQUARE_CAS_PAR 494
#define SA1_ANIM_PLATFORM_HORZ_CAS_PAR   495
#define SA1_ANIM_ONEWAY_TURN_SIDEWAYS    496
#define SA1_ANIM_ONEWAY_TURN_UPDOWN      497
#define SA1_ANIM_GRABBER_SEC_BAS         498
#define SA1_ANIM_BOUNCE_BLOCK_2          499
#define SA1_ANIM_GRABBER_SEC_BAS_COPY    500
#define SA1_ANIM_PRESSURE_LID            501

#define SA1_ANIM_HANDLES_SEC_BAS_ANCHOR 503
#define SA1_ANIM_HANDLES_SEC_BAS        504
#define SA1_ANIM_TRAMPOLINE2            505
#define SA1_ANIM_PLATFORM2              506
#define SA1_ANIM_BOUNCE_BLOCK_6_1       507
#define SA1_ANIM_CONVEYOR_BIG           508
#define SA1_ANIM_CONVEYOR_SMALL         509
#define SA1_ANIM_SPIKE_BALL_YELLOW      510
#define SA1_ANIM_TORCH6_1               511
#define SA1_ANIM_TORCH6_2               512

#define SA1_ANIM_PROPELLER    515
#define SA1_ANIM_SPIKY_BARREL 516

#define SA1_ANIM_MINI_FLIPPER 522
#define SA1_ANIM_ICE_PLATFORM 523

#define SA1_ANIM_LAVA_PLATFORM_ICE_MTN 525

#define SA1_ANIM_AIR_BUBBLES          532
#define SA1_ANIM_MINIBUBBLES          533
#define SA1_ANIM_BLACKYELLOW_SHUTDOOR 534

#define SA1_ANIM_PLATFORM_SPIKE_ANG_ISL_UP     538
#define SA1_ANIM_PLATFORM_SPIKE_ANG_ISL_DOWN   539
#define SA1_ANIM_SPRING_PLATFORM_ANG_ISL       540
#define SA1_ANIM_SPIKE_BALL_BLACK              541
#define SA1_ANIM_WOODWHEEL_ANG_ISL             542
#define SA1_ANIM_BOUNCE_BLOCK_5                543
#define SA1_ANIM_PLATFORM_SQUARE_ARROW_ANG_ISL 544
#define SA1_ANIM_SILVER_HANDLE                 545
#define SA1_ANIM_BIG_BOWL_ANG_ISL              546
#define SA1_ANIM_ACCEL_PLATFORM_ANG_ISL        547

#define SA1_ANIM_TORCH5 558

#define SA1_ANIM_WATER_SPLASH_5 464

#define SA1_ANIM_ICE_PLATFORM_SQUARE 555

#define SA1_ANIM_FIRE                558
#define SA1_ANIM_DESTRUCTABLE_PILLAR 559

#define SA1_ANIM_WATER_SURFACE 563
#define SA1_ANIM_DEBRIS_A      564
#define SA1_ANIM_DEBRIS_B      565
#define SA1_ANIM_DEBRIS_C      566

/* Version without lid (with lid: SA1_ANIM_PRESSURE_LID) */
#define SA1_ANIM_PRESSURE_TUBE 567

#define SA1_ANIM_BOOSTER_TURNED_CLOCKWISE         570
#define SA1_ANIM_BOOSTER_TURNED_COUNTER_CLOCKWISE 571
#define SA1_ANIM_SPECIAL_SPRING                   572

#define SA1_ANIM_FALLING_BRICK_XZONE 574

#define SA1_ANIM_WATER_FALL_HIT_SURFACE 581

#define SA1_ANIM_MAZE_LAUNCHER_HORZ 588
#define SA1_ANIM_MAZE_LAUNCHER_VERT 589

#define SA1_ANIM_MAZE_AIR_CORNER  592
#define SA1_ANIM_BOUNCE_BLOCK_6_2 601

#define SA1_ANIM_BOSS_1 607

#define SA1_ANIM_BOSS_2 620

#define SA1_ANIM_BOSS_1_INTRO 693

#define SA1_ANIM_CHAO_SHOCKED         698
#define SA1_ANIM_CHAO_HOVER_SIDE      699
#define SA1_ANIM_CHAO_FACE_FORWARD    700
#define SA1_ANIM_CHAO_FACE_DIAGONAL_L 701
#define SA1_ANIM_CHAO_FACE_DIAGONAL_R 702
#define SA1_ANIM_CHAO_TURN            703
#define SA1_ANIM_CHAO_SITTING         704
#define SA1_ANIM_ITEMBOX              705
#define SA1_ANIM_ITEMBOX_TYPE         706
#define SA1_ANIM_RING                 707
#define SA1_ANIM_RING_COLLECT_EFFECT  708
#define SA1_ANIM_SCORE                709

#define SA1_ANIM_GAME_OVER 715

#define SA1_ANIM_PAUSE                      718
#define SA1_ANIM_WARNING                    719
#define SA1_ANIM_PAUSE_BACKGROUND           720
#define SA1_ANIM_DEMO_PLAY                  721
#define SA1_ANIM_INTRO_CHARACTERS           722
#define SA1_ANIM_CHAR_SELECT_BG             723
#define SA1_ANIM_ZONE_SELECT_ACTS           724
#define SA1_ANIM_ZONE_SELECT_THUMBNAIL_1    725
#define SA1_ANIM_ZONE_SELECT_THUMBNAIL_2    726
#define SA1_ANIM_ZONE_SELECT_THUMBNAIL_3    727
#define SA1_ANIM_ZONE_SELECT_THUMBNAIL_4    728
#define SA1_ANIM_ZONE_SELECT_THUMBNAIL_5    729
#define SA1_ANIM_CHAR_SELECT_NOT_SELECTABLE 730

#define SA1_ANIM_SPINDASH_DUST_EFFECT     746
#define SA1_ANIM_SPINDASH_DUST_EFFECT_BIG 747
#define SA1_ANIM_SMALL_DUST_PARTICLE      748
#define SA1_ANIM_GRIND_EFFECT             749
#define SA1_ANIM_SHIELD_NORMAL            750
#define SA1_ANIM_SHIELD_MAGNETIC          751
#define SA1_ANIM_INVINCIBILITY            752
#define SA1_ANIM_BUBBLES_SMALL            753
#define SA1_ANIM_BUBBLES_GROUP            754

#define SA1_ANIM_HEART         759
#define SA1_ANIM_TRIANGLE_BLUE 767

#define SA1_ANIM_PRESS_START_MSG_JP 778
#define SA1_ANIM_PRESS_START_MSG_EN 779

#define SA1_ANIM_DROWN_COUNTDOWN 781

#define SA1_ANIM_CONFUSION 794
#define SA1_ANIM_RING_2    795

#define SA1_ANIM_LOAD_PALETTE_423    852
#define SA1_ANIM_SOUNDTEST_AMY_BYE   853
#define SA1_ANIM_SOUNDTEST_AMY_IDLE  854
#define SA1_ANIM_SOUNDTEST_AMY_SHAKE 855
#define SA1_ANIM_SOUNDTEST_AMY_KISS  856

#define SA1_ANIM_MP_CHAO_ERROR     886
#define SA1_ANIM_MP_CHAO_AVATAR    887
#define SA1_ANIM_MP_CHAO_SEARCHING 888
#define SA1_ANIM_MP_CHAO_CONNECTED 889

#define SA1_ANIM_VS_RESULT        904
#define SA1_ANIM_VS_MENU_WAIT     905
#define SA1_ANIM_CRUMBLE_PLATFORM 906

#endif // GUARD_ANIMATIONS_SA1_H
