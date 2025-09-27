#ifndef GUARD_SA1_CREDITS_H
#define GUARD_SA1_CREDITS_H

typedef struct CreditsString {
    unsigned char length;
    unsigned char unk1;
    signed char unk2;
    char name[25 + 1];
    char padding[3];
} CreditsString;

extern void CreateStaffCredits();
extern void CreateCongratulationsAnimation();

#define NUM_ENTRIES 334
extern const CreditsString sCreditsEntries[NUM_ENTRIES];

#endif // GUARD_SA1_CREDITS_H
