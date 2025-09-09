#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/enemies/bosses_shared.h" // CreatePreBossCameraPan
#include "game/nuts_and_bolts_task.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/stage/terrain_collision.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"

typedef struct Strc_8015C5C {
    /* 0x00 */ Sprite s;
    /* 0x30 */ Sprite s2;
    /* 0x60 */ CamCoord worldX;
    /* 0x62 */ CamCoord worldY;
    /* 0x64 */ s16 unk64;
    /* 0x66 */ s16 unk66;
    /* 0x68 */ u16 unk68;
} Strc_8015C5C;

void Task_8015D88(void);
void Task_8015E6C(void);

void sub_8015C5C(CamCoord worldX, CamCoord worldY)
{
    struct Task *t;
    Strc_8015C5C *strc;
    Sprite *s;

    t = TaskCreate(Task_8015D88, sizeof(Strc_8015C5C), 0x2000U, 0U, NULL);
    strc = TASK_DATA(t);

    strc->worldX = worldX;
    strc->worldY = worldY;
    strc->unk64 = 0;
    strc->unk66 = 0;
    strc->unk68 = 0;

    s = &strc->s;
    s->x = worldX;
    s->y = worldY;
    s->graphics.dest = OBJ_VRAM0 + 0x2580;
    s->oamFlags = 0x540;
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_EGGMOBILE;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;

    s = &strc->s2;
    s->x = worldX;
    s->y = worldY;
    s->graphics.dest = OBJ_VRAM0 + 0x2E40;
    s->oamFlags = 0x4C0;
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_EGGMAN;
    s->variant = 4;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;
}

void Task_8015D88()
{
    Strc_8015C5C *strc = TASK_DATA(gCurTask);
    Sprite *s;
    Sprite *s2;

    s = &strc->s;
    s2 = &strc->s2;
    strc->s.x = strc->worldX - gCamera.x;
    strc->s.y = (strc->worldY + I(strc->unk66)) - gCamera.y;
    s2->x = strc->s.x;
    s2->y = strc->s.y;

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
    UpdateSpriteAnimation(s2);
    DisplaySprite(s2);

    if (strc->unk68 > 45) {
        strc->unk66 -= Q(1);
        if (strc->unk66 <= -Q(80)) {
            gCurTask->main = Task_8015E6C;

            strc->s.graphics.anim = SA1_ANIM_EGGMOBILE;
            strc->s.variant = 1;

            s2->graphics.anim = SA1_ANIM_EGGMAN;
            strc->s2.variant = 9;

            strc->unk66 = I(strc->unk66);
        }
    } else {
        ++strc->unk68;
    }
}
