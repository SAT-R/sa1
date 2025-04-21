#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/entities_manager.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/vram_hardcoded.h"
#include "constants/zones.h"

#define NUM_SPARKS 2

typedef struct {
    // NOTE: EntityShared HAS to be the first element,
    //       as long as TaskDestructor_EntityShared is used.
    /* 0x00 */ EntityShared shared;
    /* 0x3C */ u16 unk3C;
    /* 0x3E */ u16 unk3E;
    /* 0x40 */ u16 unk40;
    /* 0x44 */ s32 unk44;
} Fireball; /* 0x48 */

typedef struct {
    // NOTE: EntityShared HAS to be the first element,
    //       as long as TaskDestructor_EntityShared is used.
    /* 0x00 */ Sprite s;
    /* 0x30 */ s16 unk30;
    /* 0x32 */ u16 unk32;
    /* 0x34 */ s16 qUnk34;
    /* 0x36 */ u16 unk36;
} FireballSpark; /* 0x38 */

typedef struct {
    // NOTE: EntityShared HAS to be the first element,
    //       as long as TaskDestructor_EntityShared is used.
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u16 unk4;
    /* 0x06 */ u8 meX;
    /* 0x08 */ u16 regionX;
    /* 0x0A */ u16 regionY;
} FireballParent;

void Task_Fireball(void);
void Task_FireballSpark(void);

// Reg-swap
// (99.61%) https://decomp.me/scratch/MmGb6
NONMATCH("asm/non_matching/game/enemies/fireball__CreateFireballSparks.inc", void CreateFireballSparks(s16 screenX, s16 screenY))
{
    struct Task *t;
    FireballSpark *spark;
    Sprite *s;
    s32 i;
    s32 v;

    for (i = 0; i < NUM_SPARKS; i++) {
        t = TaskCreate(Task_FireballSpark, sizeof(FireballSpark), 0x3000, 0, NULL);
        spark = TASK_DATA(t);
        s = &spark->s;

        v = screenX * 4;
        spark->unk30 = v;
        spark->qUnk34 = -Q(2);
        spark->unk32 = 6;

        if (i != 0) {
            s32 six = -spark->unk32;
            spark->unk32 = six;
            s->x = screenX - 8;
        } else {
            spark->unk30 = screenX * 4;
            s->x = screenX + 8;
        }

        s->y = screenY;

        s->graphics.dest = VRAM_RESERVED_FIREBALL_SPARK;
        s->oamFlags = SPRITE_OAM_ORDER(9);
        s->graphics.size = 0;
        s->graphics.anim = SA1_ANIM_FIREBALL_PROJ;
        s->variant = 0;
        s->animCursor = 0;
        s->qAnimDelay = Q(0);
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
        s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

        UpdateSpriteAnimation(s);
    }
}
END_NONMATCH

void Task_FireballSpark(void)
{
    FireballSpark *fireball = TASK_DATA(gCurTask);
    Sprite *s = &fireball->s;
    s16 oldWorldX, oldWorldY;
    s16 screenX, screenY;
    s32 worldX;

    fireball->unk30 += fireball->unk32;

    worldX = fireball->unk30;
    if (worldX < 0) {
        worldX += 3;
    }

    s->x = worldX >> 2;

    fireball->qUnk34 += Q(40. / 256.);
    s->y += I(fireball->qUnk34);
    oldWorldX = fireball->s.x;
    oldWorldY = fireball->s.y;

    sub_800B798(s, oldWorldX, oldWorldY);

    // WorldPos -> ScreenPos
    fireball->s.x -= gCamera.x;
    fireball->s.y -= gCamera.y;

    // TODO:
    //   if(IS_OUT_OF_RANGE_OLD(u16, s->x, s->y, 40))
    if ((((u16)(s->x + (40 / 2)) > DISPLAY_WIDTH + 36) || (s->y + (40 / 2) < 0) || (s->y > DISPLAY_HEIGHT + 80))) {
        TaskDestroy(gCurTask);
        return;
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s->x = oldWorldX;
    s->y = oldWorldY;
}

void CreateEntity_Fireball(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Fireball, sizeof(FireballParent), 0x2000, 0, NULL);
    FireballParent *fireballParent = TASK_DATA(t);

    fireballParent->me = me;
    fireballParent->unk4 = 0;
    fireballParent->meX = me->x;
    fireballParent->regionX = regionX;
    fireballParent->regionY = regionY;

    SET_MAP_ENTITY_INITIALIZED(me);
}