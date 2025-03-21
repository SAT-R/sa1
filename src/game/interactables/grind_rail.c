#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"

#include "constants/songs.h"

typedef struct {
    u16 frameCount;
} GrindRailUnk;

typedef struct {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u16 regionX;
    /* 0x06 */ u16 regionY;
    /* 0x08 */ u8 meX;
} GrindRail;

#ifndef NON_MATCHING
#define GRINDRAIL_SIZE     9
#define GRINDRAIL_UNK_SIZE 2
#else
#define GRINDRAIL_SIZE     sizeof(GrindRail)
#define GRINDRAIL_UNK_SIZE sizeof(GrindRailUnk)
#endif

void Task_GrindRailStart(void);
void Task_GrindRailEnd(void);
void Task_8023EFC(void);

// Unused?
void sub_8023ED0(void)
{
    struct Task *t = TaskCreate(Task_8023EFC, GRINDRAIL_UNK_SIZE, 0x2000, 0, NULL);
    TASK_SET_MEMBER(GrindRailUnk, t, u16, frameCount, 0);
}

void Task_8023EFC(void)
{
    GrindRailUnk *unk = TASK_DATA(gCurTask);

    if (++unk->frameCount > 60) {
        m4aSongNumStart(SE_GRINDING);
        TaskDestroy(gCurTask);
    }
}

void CreateEntity_GrindRail_Start(MapEntity *me, u16 regionX, u16 regionY, u8 spriteY)
{
    struct Task *t = TaskCreate(Task_GrindRailStart, GRINDRAIL_SIZE, 0x2000, 0, NULL);

    TASK_SET_MEMBER(GrindRail, t, u16, regionX, regionX);
    TASK_SET_MEMBER(GrindRail, t, u16, regionY, regionY);
    TASK_SET_MEMBER(GrindRail, t, MapEntity *, me, me);
    TASK_SET_MEMBER(GrindRail, t, u8, meX, me->x);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void CreateEntity_GrindRail_End(MapEntity *me, u16 regionX, u16 regionY, u8 spriteY)
{
    struct Task *t = TaskCreate(Task_GrindRailEnd, GRINDRAIL_SIZE, 0x900, 0, NULL);

    TASK_SET_MEMBER(GrindRail, t, u16, regionX, regionX);
    TASK_SET_MEMBER(GrindRail, t, u16, regionY, regionY);
    TASK_SET_MEMBER(GrindRail, t, MapEntity *, me, me);
    TASK_SET_MEMBER(GrindRail, t, u8, meX, me->x);

    SET_MAP_ENTITY_INITIALIZED(me);
}