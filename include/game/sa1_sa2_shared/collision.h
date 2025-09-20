#ifndef GUARD_STAGE_ENTITIES_0_H
#define GUARD_STAGE_ENTITIES_0_H

#include "core.h"
#include "rect.h"
#include "game/sa1_sa2_shared/camera.h" // for CamCoord
#include "game/sa1_sa2_shared/player.h"

#define COLL_NONE        0
#define COLL_FLAG_1      0x00000001
#define COLL_FLAG_2      0x00000002
#define COLL_FLAG_4      0x00000004
#define COLL_FLAG_8      0x00000008
#define COLL_FLAG_10     0x00000010
#define COLL_FLAG_20     0x00000020
#define COLL_FLAG_40     0x00000040
#define COLL_FLAG_80     0x00000080
#define COLL_FLAG_10000  0x00010000
#define COLL_FLAG_20000  0x00020000
#define COLL_FLAG_40000  0x00040000
#define COLL_FLAG_80000  0x00080000
#define COLL_FLAG_100000 0x00100000

// TODO: Ensure these are correct!
typedef enum EHit {
    HIT_NONE = 0,
    HIT_ENEMY = 1,
    HIT_PLAYER = 2,
} EHit;

#if (GAME == GAME_SA1)
u32 CheckRectCollision_SpritePlayer(Sprite *s, s16 sx, s16 sy, Player *p, struct Rect8 *rectPlayer);
#elif (GAME == GAME_SA2)
u32 CheckRectCollision_SpritePlayer(Sprite *s, s32 sx, s32 sy, Player *p, struct Rect8 *rectPlayer);
#endif

// param4 might be hitbox index?
u32 Coll_Player_Gate(Sprite *s, CamCoord worldX, CamCoord worldY, Player *p, u32 param4);

u32 Coll_Player_PlatformCrumbling(Sprite *s, CamCoord worldX, CamCoord worldY, Player *p);
bool32 Coll_Player_Projectile(Sprite *s, CamCoord screenX, CamCoord screenY); // might be in SA2?
u32 sub_800C0E0(Sprite *s, CamCoord screenX, CamCoord screenY, Player *p);
u32 sub_800C394(Sprite *s, CamCoord screenX, CamCoord screenY, Player *p);

// TODO: Include header this belongs to
u32 sub_800C944(Sprite *, s32, s32);

bool32 sub_800C204(Sprite *, s32, s32, s16, Player *, s16);
bool32 sub_800C320(Sprite *s, s32 sx, s32 sy, s16 hbIndex, Player *p);
bool32 sub_800CA20(Sprite *s, s32 sx, s32 sy, s16 hbIndex, Player *p);
bool32 IsColliding_Cheese(Sprite *sprTarget, s32 sx, s32 sy, s16 hbIndex, Player *p);
u32 sub_800DA4C(Sprite *opponent, s16 oppX, s16 oppY, UNUSED s32 param3, UNUSED s32 param4, u8 layer);

bool32 Coll_DamagePlayer(Player *);
void Collision_AdjustPlayerSpeed(Player *);

u32 sub_80096B0(Sprite *s, CamCoord x, CamCoord y, Player *p);
bool32 Coll_AmyHammer_Spring(Sprite *s, CamCoord worldX, CamCoord worldY, Player *p);
u32 Coll_Player_Spring_Sideways(Sprite *s, CamCoord worldX, CamCoord worldY, Player *p);
u32 Coll_Player_Itembox(Sprite *s, CamCoord worldX, CamCoord worldY, Player *p);
u32 Coll_Player_SkatingStone(Sprite *, CamCoord x, CamCoord y, Player *);
u32 sub_800C1E8(Sprite *inSprite, Rect8 rectB, s16 sx, s16 sy, Player *p);
EHit sub_800C2B8(Sprite *s, s16 sx, s16 sy, Player *p);
bool32 sub_800C934(Sprite *s, s32 x, s32 y, Rect8 *rectPlayer, u32 UNUSED param4, Player *p, u32 *moveState);
bool32 sub_800CBBC(Sprite *s, s32 x, s32 y, Rect8 *rectPlayer, u32 UNUSED param4, Player *p, u32 *param6);
u32 sub_800CCB8(Sprite *, s32 x, s32 y, Player *);
EHit Coll_Player_Boss(Sprite *s, CamCoord worldX, CamCoord worldY, Player *p);
EHit Coll_Player_Boss_1(Sprite *s, CamCoord worldX, CamCoord worldY, Player *p);
EHit Coll_Player_Bosses_2_6(Sprite *s, CamCoord worldX, CamCoord worldY, Player *p);
EHit sub_800BF10(Sprite *s, CamCoord worldX, CamCoord worldY, Player *p);
EHit sub_800BFEC(Sprite *s, CamCoord worldX, CamCoord worldY, Player *p);
u32 sub_800CE94(Sprite *s, s32 sx, s32 sy, struct Rect8 *param3, Player *p);
bool32 sub_800DD54(Player *p);
// bool32 sub_800DE44(Player *p);
u32 sub_800D0A0(Sprite *, s16, s16, s16, s16, u8, u32);

// HandlePlayerDestroy?
#if (GAME == GAME_SA1)
bool32 Coll_Player_Enemy_Attack(Sprite *s, CamCoord worldX, CamCoord worldY);
#elif (GAME == GAME_SA2)
bool32 sub_800C4FC(Sprite *s, CamCoord worldX, CamCoord worldY, u8 hbIndex);
#endif

// HandleHitPlayer
u32 sub_800C84C(Sprite *, s32, s32);

#endif // GUARD_STAGE_ENTITIES_0_H
