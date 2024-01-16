extern struct MapHeader *zone_1_act_1_fg0;
extern struct MapHeader *zone_1_act_1_fg1;
extern struct MapHeader *zone_1_act_1_bg;
extern struct MapHeader *zone_1_act_2_fg0;
extern struct MapHeader *zone_1_act_2_fg1;
extern struct MapHeader *zone_1_act_2_bg;
extern struct MapHeader *zone_2_act_1_fg0;
extern struct MapHeader *zone_2_act_1_fg1;
extern struct MapHeader *zone_2_act_1_bg;
extern struct MapHeader *zone_2_act_2_fg0;
extern struct MapHeader *zone_2_act_2_fg1;
extern struct MapHeader *zone_2_act_2_bg;
extern struct MapHeader *zone_3_act_1_fg0;
extern struct MapHeader *zone_3_act_1_fg1;
extern struct MapHeader *zone_3_act_1_bg;
extern struct MapHeader *zone_3_act_2_fg0;
extern struct MapHeader *zone_3_act_2_fg1;
extern struct MapHeader *zone_3_act_2_bg;
extern struct MapHeader *zone_4_act_1_fg0;
extern struct MapHeader *zone_4_act_1_fg1;
extern struct MapHeader *zone_4_act_1_bg;
extern struct MapHeader *zone_4_act_2_fg0;
extern struct MapHeader *zone_4_act_2_fg1;
extern struct MapHeader *zone_4_act_2_bg;
extern struct MapHeader *zone_5_act_1_fg0;
extern struct MapHeader *zone_5_act_1_fg1;
extern struct MapHeader *zone_5_act_1_bg;
extern struct MapHeader *zone_5_act_2_fg0;
extern struct MapHeader *zone_5_act_2_fg1;
extern struct MapHeader *zone_5_act_2_bg;
extern struct MapHeader *zone_6_act_1_fg0;
extern struct MapHeader *zone_6_act_1_fg1;
extern struct MapHeader *zone_6_act_1_bg;
extern struct MapHeader *zone_6_act_2_fg0;
extern struct MapHeader *zone_6_act_2_fg1;
extern struct MapHeader *zone_6_act_2_bg;
extern struct MapHeader *zone_7_act_1_fg0;
extern struct MapHeader *zone_7_act_1_fg1;
extern struct MapHeader *zone_7_act_1_bg;
extern struct MapHeader *zone_7_act_2_fg0;
extern struct MapHeader *zone_7_act_2_fg1;
extern struct MapHeader *zone_7_act_2_bg;
extern struct MapHeader *zone_chao_hunt_act_vs_zone_a_fg0;
extern struct MapHeader *zone_chao_hunt_act_vs_zone_a_fg1;
extern struct MapHeader *zone_chao_hunt_act_vs_zone_a_bg;
extern struct MapHeader *zone_chao_hunt_act_vs_zone_b_fg0;
extern struct MapHeader *zone_chao_hunt_act_vs_zone_b_fg1;
extern struct MapHeader *zone_chao_hunt_act_vs_zone_b_bg;
extern struct MapHeader *zone_chao_hunt_act_vs_zone_c_fg0;
extern struct MapHeader *zone_chao_hunt_act_vs_zone_c_fg1;
extern struct MapHeader *zone_chao_hunt_act_vs_zone_c_bg;
extern struct MapHeader *zone_chao_hunt_act_vs_zone_d_fg0;
extern struct MapHeader *zone_chao_hunt_act_vs_zone_d_fg1;
extern struct MapHeader *zone_chao_hunt_act_vs_zone_d_bg;
extern struct MapHeader *tilemap_54;
extern struct MapHeader *special_stage_bg_frame_0;
extern struct MapHeader *special_stage_bg_frame_1;
extern struct MapHeader *special_stage_bg_frame_2;
extern struct MapHeader *special_stage_bg_frame_3;
extern struct MapHeader *special_stage_bg_frame_4;
extern struct MapHeader *special_stage_bg_frame_5;
extern struct MapHeader *special_stage_bg_frame_6;
extern struct MapHeader *special_stage_bg_frame_7;
extern struct MapHeader *special_stage_bg_frame_8;
extern struct MapHeader *special_stage_bg_frame_9;
extern struct MapHeader *special_stage_bg_frame_10;
extern struct MapHeader *special_stage_bg_frame_11;
extern struct MapHeader *special_stage_bg_frame_12;
extern struct MapHeader *special_stage_bg_frame_13;
extern struct MapHeader *special_stage_bg_frame_14;
extern struct MapHeader *special_stage_bg_frame_15;
extern struct MapHeader *unknown_starfield;
extern struct MapHeader *unknown_clouds;
extern struct MapHeader *tilemap_73;
extern struct MapHeader *tilemap_74;
extern struct MapHeader *tilemap_75;
extern struct MapHeader *mp_choose_pak_type_jp;
extern struct MapHeader *mp_choose_pak_type_en;
extern struct MapHeader *mp_connection_success;
extern struct MapHeader *mp_connection_error;
extern struct MapHeader *mp_continue_screen;
extern struct MapHeader *mp_team_play_screen;
extern struct MapHeader *mp_vs_background;
extern struct MapHeader *mp_singlepak_program_is_being_sent;
extern struct MapHeader *tilemap_84;
extern struct MapHeader *tilemap_85;
extern struct MapHeader *intro_presented_by_sega;
extern struct MapHeader *intro_created_by_sonic_team;
extern struct MapHeader *mp_multipak_player_overview;
extern struct MapHeader *tilemap_89;
#include "global.h"
#include "core.h"

#include "constants/tilemaps.h"

// 0x084ADD40
const Tilemap * const gTilemaps[] = {
    [0] = (Tilemap *)&zone_1_act_1_fg0,
    [1] = (Tilemap *)&zone_1_act_1_fg1,
    [2] = (Tilemap *)&zone_1_act_1_bg,
    [3] = (Tilemap *)&zone_1_act_2_fg0,
    [4] = (Tilemap *)&zone_1_act_2_fg1,
    [5] = (Tilemap *)&zone_1_act_1_bg,
    [6] = (Tilemap *)&zone_2_act_1_fg0,
    [7] = (Tilemap *)&zone_2_act_1_fg1,
    [8] = (Tilemap *)&zone_2_act_1_bg,
    [9] = (Tilemap *)&zone_2_act_2_fg0,
    [10] = (Tilemap *)&zone_2_act_2_fg1,
    [11] = (Tilemap *)&zone_2_act_1_bg,
    [12] = (Tilemap *)&zone_3_act_1_fg0,
    [13] = (Tilemap *)&zone_3_act_1_fg1,
    [14] = (Tilemap *)&zone_3_act_1_bg,
    [15] = (Tilemap *)&zone_3_act_2_fg0,
    [16] = (Tilemap *)&zone_3_act_2_fg1,
    [17] = (Tilemap *)&zone_3_act_1_bg,
    [18] = (Tilemap *)&zone_4_act_1_fg0,
    [19] = (Tilemap *)&zone_4_act_1_fg1,
    [20] = (Tilemap *)&zone_4_act_1_bg,
    [21] = (Tilemap *)&zone_4_act_2_fg0,
    [22] = (Tilemap *)&zone_4_act_2_fg1,
    [23] = (Tilemap *)&zone_4_act_1_bg,
    [24] = (Tilemap *)&zone_5_act_1_fg0,
    [25] = (Tilemap *)&zone_5_act_1_fg1,
    [26] = (Tilemap *)&zone_5_act_1_bg,
    [27] = (Tilemap *)&zone_5_act_2_fg0,
    [28] = (Tilemap *)&zone_5_act_2_fg1,
    [29] = (Tilemap *)&zone_5_act_1_bg,
    [30] = (Tilemap *)&zone_6_act_1_fg0,
    [31] = (Tilemap *)&zone_6_act_1_fg1,
    [32] = (Tilemap *)&zone_6_act_1_bg,
    [33] = (Tilemap *)&zone_6_act_2_fg0,
    [34] = (Tilemap *)&zone_6_act_2_fg1,
    [35] = (Tilemap *)&zone_6_act_2_bg,
    [36] = (Tilemap *)&zone_7_act_1_fg0,
    [37] = (Tilemap *)&zone_7_act_1_fg1,
    [38] = (Tilemap *)&zone_7_act_1_bg,
    [39] = (Tilemap *)&zone_7_act_2_fg0,
    [40] = (Tilemap *)&zone_7_act_2_fg1,
    [41] = (Tilemap *)&zone_7_act_2_bg,
    [42] = (Tilemap *)&zone_chao_hunt_act_vs_zone_a_fg0,
    [43] = (Tilemap *)&zone_chao_hunt_act_vs_zone_a_fg1,
    [44] = (Tilemap *)&zone_chao_hunt_act_vs_zone_a_bg,
    [45] = (Tilemap *)&zone_chao_hunt_act_vs_zone_b_fg0,
    [46] = (Tilemap *)&zone_chao_hunt_act_vs_zone_b_fg1,
    [47] = (Tilemap *)&zone_chao_hunt_act_vs_zone_b_bg,
    [48] = (Tilemap *)&zone_chao_hunt_act_vs_zone_c_fg0,
    [49] = (Tilemap *)&zone_chao_hunt_act_vs_zone_c_fg1,
    [50] = (Tilemap *)&zone_chao_hunt_act_vs_zone_c_bg,
    [51] = (Tilemap *)&zone_chao_hunt_act_vs_zone_d_fg0,
    [52] = (Tilemap *)&zone_chao_hunt_act_vs_zone_d_fg1,
    [53] = (Tilemap *)&zone_chao_hunt_act_vs_zone_d_bg,
    [TM_TILEMAP_54] = (Tilemap *)&tilemap_54,
    [TM_SPECIAL_STAGE_BG_FRAME_0] = (Tilemap *)&special_stage_bg_frame_0,
    [TM_SPECIAL_STAGE_BG_FRAME_1] = (Tilemap *)&special_stage_bg_frame_1,
    [TM_SPECIAL_STAGE_BG_FRAME_2] = (Tilemap *)&special_stage_bg_frame_2,
    [TM_SPECIAL_STAGE_BG_FRAME_3] = (Tilemap *)&special_stage_bg_frame_3,
    [TM_SPECIAL_STAGE_BG_FRAME_4] = (Tilemap *)&special_stage_bg_frame_4,
    [TM_SPECIAL_STAGE_BG_FRAME_5] = (Tilemap *)&special_stage_bg_frame_5,
    [TM_SPECIAL_STAGE_BG_FRAME_6] = (Tilemap *)&special_stage_bg_frame_6,
    [TM_SPECIAL_STAGE_BG_FRAME_7] = (Tilemap *)&special_stage_bg_frame_7,
    [TM_SPECIAL_STAGE_BG_FRAME_8] = (Tilemap *)&special_stage_bg_frame_8,
    [TM_SPECIAL_STAGE_BG_FRAME_9] = (Tilemap *)&special_stage_bg_frame_9,
    [TM_SPECIAL_STAGE_BG_FRAME_10] = (Tilemap *)&special_stage_bg_frame_10,
    [TM_SPECIAL_STAGE_BG_FRAME_11] = (Tilemap *)&special_stage_bg_frame_11,
    [TM_SPECIAL_STAGE_BG_FRAME_12] = (Tilemap *)&special_stage_bg_frame_12,
    [TM_SPECIAL_STAGE_BG_FRAME_13] = (Tilemap *)&special_stage_bg_frame_13,
    [TM_SPECIAL_STAGE_BG_FRAME_14] = (Tilemap *)&special_stage_bg_frame_14,
    [TM_SPECIAL_STAGE_BG_FRAME_15] = (Tilemap *)&special_stage_bg_frame_15,
    [TM_UNKNOWN_STARFIELD] = (Tilemap *)&unknown_starfield,
    [TM_UNKNOWN_CLOUDS] = (Tilemap *)&unknown_clouds,
    [TM_TILEMAP_73] = (Tilemap *)&tilemap_73,
    [TM_SA1_TITLE_LOGO] = (Tilemap *)&tilemap_74,
    [TM_SA1_TITLE_BG] = (Tilemap *)&tilemap_75,
    [TM_MP_CHOOSE_PAK_TYPE_JP] = (Tilemap *)&mp_choose_pak_type_jp,
    [TM_MP_CHOOSE_PAK_TYPE_EN] = (Tilemap *)&mp_choose_pak_type_en,
    [TM_MP_CONNECTION_SUCCESS] = (Tilemap *)&mp_connection_success,
    [TM_MP_CONNECTION_ERROR] = (Tilemap *)&mp_connection_error,
    [TM_MP_CONTINUE_SCREEN] = (Tilemap *)&mp_continue_screen,
    [TM_MP_TEAM_PLAY_SCREEN] = (Tilemap *)&mp_team_play_screen,
    [TM_MP_VS_BACKGROUND] = (Tilemap *)&mp_vs_background,
    [TM_MP_SINGLEPAK_PROGRAM_IS_BEING_SENT] = (Tilemap *)&mp_singlepak_program_is_being_sent,
    [TM_TILEMAP_84] = (Tilemap *)&tilemap_84,
    [TM_TILEMAP_85] = (Tilemap *)&tilemap_85,
    [TM_INTRO_PRESENTED_BY_SEGA] = (Tilemap *)&intro_presented_by_sega,
    [TM_INTRO_CREATED_BY_SONIC_TEAM] = (Tilemap *)&intro_created_by_sonic_team,
    [TM_MP_MULTIPAK_PLAYER_OVERVIEW] = (Tilemap *)&mp_multipak_player_overview,
    [TM_TILEMAP_89] = (Tilemap *)&tilemap_89,
};
