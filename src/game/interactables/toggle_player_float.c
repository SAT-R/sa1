#include "global.h"
#include "core.h"
#include "game/entity.h"

typedef struct {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 filler4[0x30];
    /* 0x34 */ u16 regionX;
    /* 0x36 */ u16 regionY;
    /* 0x38 */ u16 unk38;
    /* 0x3A */ u16 unk3A;
    /* 0x3C */ u8 meX;
    /* 0x3D */ u8 unk3D;
    /* 0x3E */ u8 unk3E;
} TogglePlayerFloat;

#ifndef NON_MATCHING
#define PLAYERFLOAT_DATA_SIZE 0x3F
#else
#define PLAYERFLOAT_DATA_SIZE sizeof(PlayerFloat)
#endif

void Task_PlayerFloatMain(void);

void CreateEntity_Toggle_PlayerFloat(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_PlayerFloatMain, PLAYERFLOAT_DATA_SIZE, 0x2000, 0, NULL);

    TASK_SET_MEMBER(TogglePlayerFloat, t, u16, regionX, regionX);
    TASK_SET_MEMBER(TogglePlayerFloat, t, u16, regionY, regionY);
    TASK_SET_MEMBER(TogglePlayerFloat, t, u16, unk38, 0);
    TASK_SET_MEMBER(TogglePlayerFloat, t, u16, unk3A, 0);
    TASK_SET_MEMBER(TogglePlayerFloat, t, MapEntity *, me, me);
    TASK_SET_MEMBER(TogglePlayerFloat, t, u8, unk3D, 0);
    TASK_SET_MEMBER(TogglePlayerFloat, t, u8, unk3E, 0);
    TASK_SET_MEMBER(TogglePlayerFloat, t, u8, meX, me->x);

    SET_MAP_ENTITY_INITIALIZED(me);
}