#ifndef GUARD_SOME_TASK_MANAGER_H
#define GUARD_SOME_TASK_MANAGER_H

typedef struct {
    TileInfoBitfield tileInfo;
    void *vram4;
} SomeTaskManager_Graphic;

typedef struct {
    /* 0x00 */ u16 unk0;
    /* 0x02 */ u8 unk2;
    /* 0x03 */ u8 unk3;
    /* 0x04 */ u32 unk4;
    /* 0x08 */ u32 unk8;
    /* 0x0C */ SpriteTransform transform;
    /* 0x18 */ Sprite s;
    /* 0x48 */ Hitbox reserved;
    /* 0x50 */ s32 qUnk50;
    /* 0x54 */ s32 qUnk54;
    /* 0x58 */ s16 qUnk58;
    /* 0x5A */ s16 qUnk5A;
    /* 0x5C */ u16 qUnk5C;
    /* 0x5E */ u16 qUnk5E;
} SomeTaskManager_60; /* 0x60 */

typedef struct {
    /* 0x00 */ SomeTaskManager_60 unk0;
    /* 0x60 */ u32 unk60;
    /* 0x64 */ u32 unk64;
    /* 0x68 */ u32 unk68;
    /* 0x6C */ u32 unk6C;
    /* 0x70 */ u16 unk70;
    /* 0x72 */ u16 unk72;
    /* 0x74 */ u16 unk74;
    /* 0x76 */ u16 unk76;
    /* 0x78 */ u8 filler78[0x4];
} SomeTaskManager_7C; /* 0x7C */

s32 sub_804D060(s32 n);
void sub_804D13C(u16 param0);
struct Task *CreateSomeTaskManager_60_Task(SomeTaskManager_Graphic *gfx, TaskMain proc, TaskDestructor dtor);
struct Task *CreateSomeTaskManager_7C_Task(SomeTaskManager_Graphic *gfx, TaskMain proc, TaskDestructor dtor);
void TaskDestructor_SomeTaskManager_60_Common(struct Task *t);

extern ALIGNED(16) u16 gUnknown_030060F0[64];

#endif // GUARD_SOME_TASK_MANAGER_H