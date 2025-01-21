#include "global.h"
#include "core.h"
#include "game/gTask_03006240.h"

struct GfxSubstruct {
    struct GfxSubstruct *next;
    void *rom;
    void *vram;
    u8 fillerC[4];
};

typedef struct {
    /* 0x000 */ void *unk0;
    /* 0x004 */ s32 unk4;
    /* 0x008 */ u8 unk8;
    /* 0x009 */ u8 unk9;
    /* 0x00A */ u8 unkA;
    /* 0x00B */ u8 unkB;
    /* 0x00C */ u8 fillerC[0x15C];
    /* 0x168 */ struct GfxSubstruct *first;
    /* 0x16C */ struct GfxSubstruct gfxList[16]; // last entry empty?
    /* 0x26C */ u8 filler26C[0xE0];
} Task_3006240; /* 0x34C */

u16 sub_8053674(void)
{
    Task_3006240 *strc = TASK_DATA(gTask_03006240);
    struct GfxSubstruct *curr = &strc->gfxList[0];
    struct GfxSubstruct *next = &strc->gfxList[1];
    u16 offset;
    s32 i;

    for (i = 0; i < (s32)ARRAY_COUNT(strc->gfxList) - 2; curr++, next++, i++) {
        // Set all "active" elements
        curr->next = next;
    }
    // Set last "active" element's next ptr to empty element
    curr->next = next;

    offset = gTask_03006240->data;
    strc = TASK_DATA(gTask_03006240);
    strc->first = &strc->gfxList[0];

    return offset;
}

void **sub_80536B0(void)
{
    Task_3006240 *strc = TASK_DATA(gTask_03006240);
    struct GfxSubstruct *curr;

    curr = strc->first;

    if (curr != NULL) {
        strc->first = curr->next;
    } else {
        return NULL;
    }

    return &curr->rom;
}

void Task_80536D4(void) { }

void TaskDestructor_80536D8(struct Task *t) { gTask_03006240 = NULL; }
