#ifndef GUARD_SA1_CHAO_H
#define GUARD_SA1_CHAO_H

#define NUM_MP_CHAO 3

// Task -> ChaoTask
extern struct Task *gChaoTasks[NUM_MP_CHAO];

typedef struct {
    u8 filler[0x41];
    u8 unk41;
} ChaoTask;

#endif // GUARD_SA1_CHAO_H