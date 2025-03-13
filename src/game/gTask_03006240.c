#include "global.h"
#include "core.h"
#include "game/gTask_03006240.h"

/* Work In Progress module */

IwramData sub_8053674(void);
void Task_80536D4(void);
void TaskDestructor_80536D8(struct Task *t);

// TODO: make static
struct Task *gTask_03006240 = NULL;
u8 tempFiller_03006244[0xC] = {};
struct Strc_3006250 gUnknown_03006250[10] = {};
u8 tempFiller_030062B8[0x8] = {};
struct Strc_30063F0 gUnknown_030063C0 = {};
u8 tempFiller_030062E4[0xC] = {};
struct Strc_30063F0 *gUnknown_030063F0 = NULL;

#if 0
void sub_805345C(void *param0, void *param1)
{
    Task_3006240 *strc = TASK_DATA(gTask_03006240);
}
#endif

void sub_8053520(u8 *param0, void *param1, void *param2, u8 param3, u8 param4)
{
    if (gUnknown_030063F0) {
        struct Strc_30063F0 *unkStrc = gUnknown_030063F0;

        s32 i;

        for (i = 0; i < 10; i++) {
            // TODO: Is 0x20 a space char (' ')?
            if (param0[i] == 0x20) {
                break;
            }
        }

        unkStrc->unk20 = i;

        if (i > 0) {
            s32 j = 0;
            struct Strc_30063F0 *curr;

            for (; j < unkStrc->unk20; j++) {
                unkStrc->unk4[j] = param0[j];
            }

            unkStrc->unk10 = param1;
            unkStrc->unk14 = param2;
            unkStrc->unk18 = param3;
            unkStrc->unk1C = param4;

            curr = &gUnknown_030063C0;
            while (curr->next != NULL) {
                curr = curr->next;
            }

            curr->next = unkStrc;
            gUnknown_030063F0 = unkStrc->next;

            unkStrc->next = NULL;
        }
    }
}

void sub_80535C8(struct Strc0 *inTask, u8 param1)
{
    Task_3006240 *strc = TASK_DATA(gTask_03006240);
    struct Strc0 *src = &strc->unk0[param1];

    src->unk4 = inTask->unk4;
    src->unk8 = inTask->unk8;
    src->unk9 = inTask->unk9;
    src->unkA = inTask->unkA;
    src->unkB = inTask->unkB;
}

// (94.42%) https://decomp.me/scratch/QDnYo
NONMATCH("asm/non_matching/game/gTask_3006240__sub_80535FC.inc", void sub_80535FC(void))
{
    if (gTask_03006240 == NULL) {
        struct Strc_3006250 *zeroth = &gUnknown_03006250[0];
        struct Strc_30063F0 **test = &gUnknown_030063F0;
        struct Strc_30063F0 *test2 = &gUnknown_030063C0;
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
        *test = (void *)&gUnknown_03006250[0];
        test2->next = nullPtr;
        gTask_03006240 = TaskCreate(taskPtr, sizeof(Task_3006240), 0x1800, 0, dtorPtr);
        sub_8053674();
    }
}
END_NONMATCH

IwramData sub_8053674(void)
{
    Task_3006240 *strc = TASK_DATA(gTask_03006240);
    struct GfxSubstruct *curr = &strc->gfxList[0];
    struct GfxSubstruct *next = &strc->gfxList[1];
    IwramData offset;
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
