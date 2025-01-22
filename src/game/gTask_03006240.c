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

struct Strc_3006250 {
    struct Strc_3006250 *next;
    u8 unk4[0x20];
}; /* 0x24 */

u16 sub_8053674(void);
void Task_80536D4(void);
void TaskDestructor_80536D8(struct Task *t);

// TODO: make static
extern struct Strc_3006250 gUnknown_03006250[10];
extern void *gUnknown_030063C0;
extern void *gUnknown_030063F0;

NONMATCH("asm/non_matching/game/gTask_3006240__sub_80535FC.inc", void sub_80535FC(void))
{
    if (gTask_03006240 == NULL) {
        struct Strc_3006250 *zeroth = &gUnknown_03006250[0];
        void **test = &gUnknown_030063F0;
        void **test2 = &gUnknown_030063C0;
#ifndef NON_MATCHING
        register void *taskPtr asm("ip") = Task_80536D4;
#else
        void *taskPtr = Task_80536D4;
#endif
        void *dtorPtr = TaskDestructor_80536D8;
        struct Strc_3006250 *second = &gUnknown_03006250[ARRAY_COUNT(gUnknown_03006250) - 1];
        struct Strc_3006250 *curr = &gUnknown_03006250[ARRAY_COUNT(gUnknown_03006250) - 2];
        void *nullPtr;

        do {
            curr->next = second;

            second--, curr--;
        } while ((intptr_t)curr >= (intptr_t)zeroth);

        nullPtr = NULL;
        gUnknown_03006250[ARRAY_COUNT(gUnknown_03006250) - 1].next = nullPtr;
        *test = &gUnknown_03006250[0];
        *test2 = nullPtr;
        gTask_03006240 = TaskCreate(taskPtr, sizeof(Task_3006240), 0x1800, 0, dtorPtr);
        sub_8053674();
    }
}
END_NONMATCH

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
