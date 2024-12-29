#ifndef GUARD_SA1_CREDITS_H
#define GUARD_SA1_CREDITS_H

typedef struct CreditsString {
    unsigned char length;
    unsigned char unk1;
    signed char unk2;
    char name[25 + 1];
    char padding[3];
} CreditsString;

#endif // GUARD_SA1_CREDITS_H