#include <stdlib.h> // abs()
#include <string.h>

#include "global.h"
#include "core.h"
#include "trig.h"
#include "flags.h"

#ifndef NON_MATCHING
#define MATCH_BREAK asm("")
#else
/* No asm block needed, better for optimization */
#define MATCH_BREAK
#endif

/* TODO: Rename this module to something background-related */
#include "bg_triangles.h"

#if (GAME == GAME_SA1) // SA1
#elif 0 // SA2
const u16 gUnknown_080984F4[] = {
    // Zone 1
    0x0001,
    0x0001,
    0x2430,
    0x0000,

    // Zone 2
    0x0004,
    0x0024,
    0x0300,
    0x0080,

    // Zone 3
    0x0200,
    0x0098,
    0x2430,
    0x0000,

    // Zone 4
    0x0004,
    0x0024,
    0x0300,
    0x0080,

    // Zone 5
    0x0200,
    0x0098,
    0x2430,
    0x0000,

    // Zone 6
    0x0004,
    0x0024,
    0x0300,
    0x0080,

    // Zone 7
    0x0200,
    0x0098,
    0x2430,
    0x0000,

    // Zone Extra
    0x0004,
    0x0024,
    0x0300,
    0x0080,

    // Dummies?
    0x0200,
    0x0098,
};
#else // SA3
const u16 gUnknown_082B5304[] = {
    0x0001,
    0x0001,
};
#endif

typedef struct {
    s16 x;
    s16 y;
} Unknown;

#if 0
#endif

NONMATCH("asm/non_matching/engine/sa2__unused_sub_8005C54.inc", void sa2__sub_8005C54()) { }
END_NONMATCH

NONMATCH("asm/non_matching/engine/sa2__unused_sub_8005FB4.inc", void sa2__sub_8005FB4()) { }
END_NONMATCH

// Almost identical to sub_80064A8
// (99%) https://decomp.me/scratch/78CWY
NONMATCH("asm/non_matching/engine/sa2__sub_8006228.inc",
         void sa2__sub_8006228(u8 bg, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5))
{
    int_vcount *cursor;
    s16 r1, r2, r4, r5, r7, r8;

    gFlags |= FLAGS_4;

    if (bg >= 2) {
        sa2__gUnknown_03002A80 = 4;

        if (bg & 1) {
            cursor = &((int_vcount *)gBgOffsetsHBlank)[2];
            sa2__gUnknown_03002878 = (void *)&REG_WIN0H;
        } else {
            cursor = &((int_vcount *)gBgOffsetsHBlank)[0];
            sa2__gUnknown_03002878 = (void *)&REG_WIN0H;
        }
    } else {
        sa2__gUnknown_03002A80 = 2;
        cursor = &((int_vcount *)gBgOffsetsHBlank)[0];

        if (bg & 1) {
            sa2__gUnknown_03002878 = (void *)&REG_WIN1H;
        } else {
            sa2__gUnknown_03002878 = (void *)&REG_WIN0H;
        }
    }

    r1 = (param3 - param1);
    r4 = (param4 - param2);
    r5 = (param4 - param2);

    r2 = r1;
    r8 = ABS(r2) * 2;

    // _080062EA
    r4 = ABS(r4);
    r7 = (r4 * 2);
    cursor += (sa2__gUnknown_03002A80 * param2);

    // _08006302

    if (ABS(r2) > ABS(r1)) {
        // _0800630A+8
        r4 = -r2;

        if (r2 > 0) {
            cursor[1] = param5;

            for (r2 = 0; r2 < ABS(r1); r2++) {
                param1++;
                r4 += r7;

                if (r4 >= 0) {
                    r4 = ((r4 << 16) >> 16) - r8;
                    cursor[0] = param1;
                    cursor += sa2__gUnknown_03002A80;
                    cursor[1] = param5;
                }
            }
            cursor[0] = param1;
        } else {
            cursor[0] = param1;
            cursor++;

            for (r2 = 0; r2 < ABS(r1); r2++) {
                param1--;
                r4 += r7;

                if (r4 >= 0) {
                    r4 -= r8;
                    *cursor = param5;
                    cursor = (cursor + sa2__gUnknown_03002A80) - 1;
                    *cursor = param1;
#ifndef NON_MATCHING
                    asm("" : "=r"(cursor));
#endif
                    cursor++;
                }
            }
            *cursor = param5;
        }

    } else {
        r4 = -r1;
        // _080063DC
        if (r2 > 0) {
            for (r2 = 0; r2 < ABS(r5); r2++) {
                // _080063F6
                *cursor = param1 + 1;
                cursor++;
                *cursor = param5;
                cursor = (cursor + sa2__gUnknown_03002A80) - 1;

                r4 += r8;

                if (r4 >= 0) {
                    param1++;
                    r4 -= r7;
                }
            }
        } else {
            // _08006450
            for (r2 = 0; r2 < ABS(r5); r2++) {
                *cursor = param1 + 1;
                cursor++;
                *cursor = param5;

                cursor = (cursor + sa2__gUnknown_03002A80) - 1;

                r4 += r8;

                if (r4 >= 0) {
                    param1--;
                    r4 -= r7;
                }
            }
        }
    }
}
END_NONMATCH

// Almost identical to sub_8006228
// (99.04%) https://decomp.me/scratch/oriiw
NONMATCH("asm/non_matching/engine/sa2__sub_80064A8.inc",
         void sa2__sub_80064A8(u8 bg, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5))
{
    int_vcount *cursor;
    s16 r1, r2, r4, r5, r7, r8;

    gFlags |= FLAGS_4;

    if (bg >= 2) {
        sa2__gUnknown_03002A80 = 4;

        if (bg & 1) {
            cursor = &((int_vcount *)gBgOffsetsHBlank)[2];
            sa2__gUnknown_03002878 = (void *)&REG_WIN0H;
        } else {
            cursor = &((int_vcount *)gBgOffsetsHBlank)[0];
            sa2__gUnknown_03002878 = (void *)&REG_WIN0H;
        }
    } else {
        sa2__gUnknown_03002A80 = 2;
        cursor = &((int_vcount *)gBgOffsetsHBlank)[0];

        if (bg & 1) {
            sa2__gUnknown_03002878 = (void *)&REG_WIN1H;
        } else {
            sa2__gUnknown_03002878 = (void *)&REG_WIN0H;
        }
    }

    r1 = (param3 - param1);
    r4 = (param4 - param2);
    r5 = (param4 - param2);

    r2 = r1;
    r8 = ABS(r2) * 2;

    r4 = ABS(r4);
    r7 = (r4 * 2);
    cursor += (sa2__gUnknown_03002A80 * param2);

    if (ABS(r2) > ABS(r1)) {
        r4 = -r2;

        if (r2 > 0) {
            cursor[1] = param1;

            for (r2 = 0; r2 < ABS(r1); r2++) {
                param1++;
                r4 += r7;

                if (r4 >= 0) {
                    r4 = ((r4 << 16) >> 16) - r8;
                    cursor[0] = param5;
                    cursor += sa2__gUnknown_03002A80;
                    cursor[1] = param1;
                }
            }
            cursor[0] = param5;
        } else {
            cursor[0] = param5;
            cursor++;

            for (r2 = 0; r2 < ABS(r1); r2++) {
                param1--;
                r4 += r7;

                if (r4 >= 0) {
                    r4 -= r8;
                    *cursor = param1;
                    cursor = (cursor + sa2__gUnknown_03002A80) - 1;
                    *cursor = param5;
#ifndef NON_MATCHING
                    asm("" : "=r"(cursor));
#endif
                    cursor++;
                }
            }
            *cursor = param1;
        }

    } else {
        r4 = -r1;
        if (r2 > 0) {
            for (r2 = 0; r2 < ABS(r5); r2++) {
                *cursor = param5;
                cursor++;
                *cursor = param1;
                cursor = (cursor + sa2__gUnknown_03002A80) - 1;

                r4 += r8;

                if (r4 >= 0) {
                    param1++;
                    r4 -= r7;
                }
            }
        } else {
            for (r2 = 0; r2 < ABS(r5); r2++) {
                *cursor = param5;
                cursor++;
                *cursor = param1;

                cursor = (cursor + sa2__gUnknown_03002A80) - 1;

                r4 += r8;

                if (r4 >= 0) {
                    param1--;
                    r4 -= r7;
                }
            }
        }
    }
}
END_NONMATCH

NONMATCH("asm/non_matching/engine/sa2__unused_sub_800672C.inc", void SA2_LABEL(sub_800672C)()) { }
END_NONMATCH

void SA2_LABEL(sub_8006DB4)(u8 arg0, u8 *arg1, s32 unused, s32 arg3)
{
    s16 sp0[2];
    s16 sp4[2] = { 1, 1 };
    s16 sp8[2];
    s16 spC[2] = { 0 };
    s16 sp10[2] = { 0 };
    u8 sp14[2];
    s16 maxVal2;
    s32 var_r0_5;
    u8 var_r0_6;
    u8 maxVal;
    u8 minVal;
    u8 *var_r4;

    gFlags |= 4;

    if (arg0 > 1U) {
        sa2__gUnknown_03002A80 = 4;
        if (1 & arg0) {
            var_r4 = gBgOffsetsHBlank + sizeof(winreg_t);
        } else {
            var_r4 = gBgOffsetsHBlank;
        }

        sa2__gUnknown_03002878 = (void *)&REG_WIN0H;
    } else {
        sa2__gUnknown_03002A80 = 2;
        var_r4 = gBgOffsetsHBlank;

        if (1 & arg0) {
            sa2__gUnknown_03002878 = (void *)&REG_WIN1H;
        } else {
            sa2__gUnknown_03002878 = (void *)&REG_WIN0H;
        }
    }

    minVal = MIN(arg1[1], arg1[5]);
    maxVal = MAX(arg1[1], arg1[5]);

    var_r4 += (minVal * sa2__gUnknown_03002A80);
    sp0[0] = (arg1[2] - arg1[0]);
    sp4[0] = (arg1[3] - arg1[1]);
    spC[0] = (ABS(sp0[0]) * 2);
    sp10[0] = (ABS(sp4[0]) * 2);
    sp0[1] = (arg1[6] - arg1[4]);
    sp4[1] = (arg1[7] - arg1[5]);

    spC[1] = (ABS(sp0[1]) * 2);
    var_r0_5 = ABS(sp4[1]);
    sp10[1] = (var_r0_5 * 2);
    sp14[0] = arg1[0];
    sp14[1] = arg1[4];
    sp8[0] = -sp4[0];
    sp8[1] = -sp4[1];

    if ((minVal != maxVal) && (arg1[1] < arg1[5])) {
        while (minVal < maxVal) {
            var_r4[0] = arg3;
            var_r4[1] = sp14[0];
            sp8[0] += spC[0];

            while (sp8[0] >= 0) {
                if (sp0[0] > 0) {
                    if (arg3 > sp14[0]) {
                        sp14[0]++;
                    }
                    sp8[0] -= sp10[0];
                } else {
                    if (sp14[0] != 0) {
                        sp14[0]--;
                    }

                    sp8[0] -= sp10[0];
                    if (sp8[0] >= 0) {
                        var_r4[1] = sp14[0];
                    }
                }
                MATCH_BREAK;
            }

            var_r4 += sa2__gUnknown_03002A80;
            minVal++;
        }
    } else {
        while (minVal < maxVal) {
            var_r4[0] = sp14[1];
            var_r4[1] = 0;
            sp8[1] += spC[1];
            if (sp8[1] >= 0) {
                while (sp8[1] >= 0) {
                    if (sp0[1] > 0) {
                        if (arg3 > sp14[1]) {
                            sp14[1]++;
                        }

                        sp8[1] -= sp10[1];
                        if (sp8[1] >= 0) {
                            var_r4[0] = (sp14[1] + 1);
                        }
                    } else {
                        if (sp14[1] != 0) {
                            sp14[1]--;
                        }
                        sp8[1] -= sp10[1];
                    }

                    MATCH_BREAK;
                }
            }
            var_r4 += sa2__gUnknown_03002A80;
            minVal++;
        }
    }

    maxVal = MIN(arg1[3], arg1[7]);

    while (minVal < maxVal) {
        var_r4[0] = sp14[1];
        var_r4[1] = sp14[0];
        sp8[0] += spC[0];
        sp8[1] += spC[1];

        while (sp8[0] >= 0) {
            if (sp0[0] > 0) {
                if (arg3 > sp14[0]) {
                    sp14[0]++;
                }
                sp8[0] -= sp10[0];
            } else {
                if (sp14[0] != 0) {
                    sp14[0]--;
                }

                sp8[0] -= sp10[0];
                if (sp8[0] >= 0) {
                    var_r4[1] = sp14[0];
                }
            }
            MATCH_BREAK;
        }
        while (sp8[1] >= 0) {
            if (sp0[1] > 0) {
                if (arg3 > sp14[1]) {
                    sp14[1]++;
                }

                sp8[1] -= sp10[1];
                if (sp8[1] >= 0) {
                    var_r4[0] = (sp14[1] + 1);
                }
            } else {
                if (sp14[1] != 0) {
                    sp14[1]--;
                }
                sp8[1] -= sp10[1];
            }
            MATCH_BREAK;
        }

        var_r4 += sa2__gUnknown_03002A80;
        minVal++;
    }

    maxVal = MAX(arg1[3], arg1[7]);

    if (arg1[3] <= arg1[7]) {
        while (minVal < maxVal) {
            var_r4[0] = sp14[1];
            var_r4[1] = 0;
            sp8[1] += spC[1];

            while (sp8[1] >= 0) {
                if (sp0[1] > 0) {
                    if (arg3 > sp14[1]) {
                        sp14[1]++;
                    }
                    sp8[1] -= sp10[1];
                    if (sp8[1] >= 0) {
                        var_r4[0] = (sp14[1] + 1);
                    }
                } else {
                    if (sp14[1] != 0) {
                        sp14[1]--;
                    }
                    sp8[1] -= sp10[1];
                }
                MATCH_BREAK;
            }

            var_r4 += sa2__gUnknown_03002A80;
            minVal++;
        }
    } else {
        while (minVal < maxVal) {
            var_r4[0] = arg3;
            var_r4[1] = sp14[0];
            sp8[0] += spC[0];

            while (sp8[0] >= 0) {
                if (sp0[0] > 0) {
                    if (arg3 > sp14[0]) {
                        sp14[0]++;
                    }
                    sp8[0] = (sp8[0] - sp10[0]);
                } else {
                    if (sp14[0] != 0) {
                        sp14[0]--;
                    }
                    sp8[0] -= sp10[0];
                    if (sp8[0] >= 0) {
                        var_r4[1] = sp14[0];
                    }
                }
                MATCH_BREAK;
            }

            var_r4 += sa2__gUnknown_03002A80;
            minVal++;
        }
    }
}

// When this function is called, the background layer that is
// "lightened" by spot lights is fully lit.
void SA2_LABEL(sub_800724C)(u8 arg0, TriParam1 *arg1)
{
    s16 sp0[2];
    s16 sp4[2] = { 1, 1 };
    s16 sp8[2];
    s16 spC[2] = { 0 };
    s16 sp10[2] = { 0 };
    u8 sp14[2];
    u8 *var_r4;
    u8 minVal;
    u8 maxVal;

    gFlags |= 4;

    if (arg0 > 1U) {
        sa2__gUnknown_03002A80 = 4;
        if (1 & arg0) {
            var_r4 = gBgOffsetsHBlank + sizeof(winreg_t);
        } else {
            var_r4 = gBgOffsetsHBlank;
        }

        sa2__gUnknown_03002878 = (void *)&REG_WIN0H;
    } else {
        sa2__gUnknown_03002A80 = 2;
        var_r4 = gBgOffsetsHBlank;
        if (1 & arg0) {
            sa2__gUnknown_03002878 = (void *)&REG_WIN1H;
        } else {
            sa2__gUnknown_03002878 = (void *)&REG_WIN0H;
        }
    }

    minVal = MIN(arg1->unk1, arg1->unk5);
    maxVal = MAX(arg1->unk1, arg1->unk5);

    var_r4 += (minVal * sa2__gUnknown_03002A80);
    sp0[0] = (arg1->unk2 - arg1->unk0);
    sp4[0] = (arg1->unk3 - arg1->unk1);
    spC[0] = (ABS(sp0[0]) * 2);
    sp10[0] = (ABS(sp4[0]) * 2);
    sp0[1] = (arg1->unk6 - arg1->unk4);
    sp4[1] = (arg1->unk7 - arg1->unk5);

    spC[1] = (ABS(sp0[1]) * 2);
    sp10[1] = (ABS(sp4[1]) * 2);
    sp14[0] = arg1->unk0;
    sp14[1] = arg1->unk4;
    sp8[0] = -sp4[0];
    sp8[1] = -sp4[1];

    if ((minVal != maxVal) && (arg1->unk1 < arg1->unk5)) {
        while (minVal < maxVal) {
            var_r4[0] = DISPLAY_WIDTH;
            var_r4[1] = sp14[0];
            sp8[0] += spC[0];

            while (sp8[0] >= 0) {
                if (sp0[0] > 0) {
                    sp14[0]++;
                    sp8[0] -= sp10[0];
                } else {
                    sp14[0]--;

                    sp8[0] -= sp10[0];
                    if (sp8[0] >= 0) {
                        var_r4[1] = sp14[0];
                    }
                }
                MATCH_BREAK;
            }

            var_r4 += sa2__gUnknown_03002A80;
            minVal++;
        }
    } else {
        while (minVal < maxVal) {
            var_r4[0] = sp14[1];
            var_r4[1] = 0;
            sp8[1] += spC[1];
            if (sp8[1] >= 0) {
                while (sp8[1] >= 0) {
                    if (sp0[1] > 0) {
                        sp14[1]++;

                        sp8[1] -= sp10[1];
                        if (sp8[1] >= 0) {
                            var_r4[0] = (sp14[1] + 1);
                        }
                    } else {
                        sp14[1]--;
                        sp8[1] -= sp10[1];
                    }

                    MATCH_BREAK;
                }
            }
            var_r4 += sa2__gUnknown_03002A80;
            minVal++;
        }
    }

    maxVal = MIN(arg1->unk3, arg1->unk7);

    while (minVal < maxVal) {
        var_r4[0] = sp14[1];
        var_r4[1] = sp14[0];
        sp8[0] += spC[0];
        sp8[1] += spC[1];

        while (sp8[0] >= 0) {
            if (sp0[0] > 0) {
                sp14[0]++;
                sp8[0] -= sp10[0];
            } else {
                sp14[0]--;

                sp8[0] -= sp10[0];
                if (sp8[0] >= 0) {
                    var_r4[1] = sp14[0];
                }
            }
            MATCH_BREAK;
        }

        while (sp8[1] >= 0) {
            if (sp0[1] > 0) {
                sp14[1]++;

                sp8[1] -= sp10[1];
                if (sp8[1] >= 0) {
                    var_r4[0] = (sp14[1] + 1);
                }
            } else {
                sp14[1]--;
                sp8[1] -= sp10[1];
            }
            MATCH_BREAK;
        }

        var_r4 += sa2__gUnknown_03002A80;
        minVal++;
    }
}

// TODO: param2 might be horizontal
void SA2_LABEL(sub_80075D0)(u8 bg, u8 param1, u8 param2, s16 param3, u16 param4, u16 param5)
{
    int_vcount *cursor;
    s16 r1;
    u16 sb = (param5 * param5);

    gFlags |= FLAGS_4;

    if (bg >= 2) {
        sa2__gUnknown_03002A80 = 4;

        if (bg & 1) {
            cursor = &((int_vcount *)gBgOffsetsHBlank)[2];
            sa2__gUnknown_03002878 = (void *)&REG_WIN0H;
        } else {
            cursor = &((int_vcount *)gBgOffsetsHBlank)[0];
            sa2__gUnknown_03002878 = (void *)&REG_WIN0H;
        }
    } else {
        sa2__gUnknown_03002A80 = 2;
        cursor = &((int_vcount *)gBgOffsetsHBlank)[0];

        if (bg & 1) {
            sa2__gUnknown_03002878 = (void *)&REG_WIN1H;
        } else {
            sa2__gUnknown_03002878 = (void *)&REG_WIN0H;
        }
    }

    r1 = param4;

    if ((r1 - param1) > param5) {
        param1 = (param4 - param5);
    }

    if ((param2 - r1) > param5) {
        param2 = (param4 + param5);
    }

    cursor += (sa2__gUnknown_03002A80 * param1);

    for (; param1 < param2; param1++) {
        s16 num = param1 - param4;
        s16 sqrtRes;

        num = num * num;
        sqrtRes = Sqrt(sb - num);

        r1 = param3 + sqrtRes;
        if (r1 < 0) {
            *cursor = 0;
            cursor++;
        } else if (r1 > DISPLAY_WIDTH) {
            *cursor = DISPLAY_WIDTH;
            cursor++;
        } else {
            *cursor = r1;
            cursor++;
        }

        r1 = param3 - sqrtRes;
        if (r1 > DISPLAY_WIDTH) {
            *cursor = DISPLAY_WIDTH;
            cursor++;
        } else if (r1 < 0) {
            *cursor = 0;
            cursor++;
        } else {
            *cursor = r1;
            cursor++;
        }

        cursor += (sa2__gUnknown_03002A80 - 2);
    }
}

void SA2_LABEL(sub_8007738)(u8 bg, int_vcount minY, int_vcount maxY, u16 param3, u8 param4, u8 param5, u16 param6, u8 param7, u8 param8,
                            s16 param9, s16 param10)
{
    u16 *cursor;

    gFlags |= FLAGS_4;

    sa2__gUnknown_03002878 = (void *)&((u8 *)&REG_BG0HOFS)[bg * 4];
    sa2__gUnknown_03002A80 = 4;

    cursor = &((u16 *)gBgOffsetsHBlank)[minY * 2];

    while (minY < maxY) {
        *cursor = (((SIN(param3 & ONE_CYCLE) * param4) >> 14) + param9) & 0x1FF;
        cursor++;
        *cursor = (((SIN(param6 & ONE_CYCLE) * param7) >> 14) + param10) & 0x1FF;
        cursor++;

        param3 += param5;
        param6 += param8;

        minY++;
    }
}

void sa2__sub_8007858(u8 param0, int_vcount minY, int_vcount maxY, u16 param3, u16 param4)
{
    u16 *cursor;

    gFlags |= FLAGS_4;

    sa2__gUnknown_03002878 = (void *)&((u8 *)&REG_BG0HOFS)[param0 * 4];
    sa2__gUnknown_03002A80 = 4;

    cursor = &((u16 *)gBgOffsetsHBlank)[minY * 2];

    param4 = (param4 - minY) & 0x1FF;
    param3 &= 0x1FF;

    while (minY < maxY) {
        *cursor = param3;
        cursor++;
        *cursor = param4--;
        cursor++;

        minY++;
    }
}

void sa2__sub_80078D4(u8 bg, int_vcount minY, int_vcount maxY, u16 offsetEven, u16 offsetOdd)
{
    s32 fillVal;

    gFlags |= FLAGS_4;

    sa2__gUnknown_03002878 = (void *)&((u8 *)&REG_BG0HOFS)[bg * 4];
    sa2__gUnknown_03002A80 = 4;

    if (minY < maxY) {
        fillVal = (offsetEven %= 512u) | ((offsetOdd % 512u) << 16);

        DmaFill32(3, fillVal, &((u16 *)gBgOffsetsHBlank)[minY * 2], (maxY - minY) * 4);
    }
}

void sa2__sub_8007958(u8 bg, int_vcount minY, int_vcount maxY, s16 param3, s8 param4, u16 param5, u16 param6)
{
    u16 *cursor;

    gFlags |= FLAGS_4;

    sa2__gUnknown_03002878 = (void *)&((u8 *)&REG_BG0HOFS)[bg * 4];
    sa2__gUnknown_03002A80 = 4;

    cursor = &((u16 *)gBgOffsetsHBlank)[minY * 2];

    while (minY < maxY) {
        *cursor = (param3 + param5) & 0x1FF;
        cursor++;
        *cursor = param6;
        cursor++;

        param3 = -(param3 + param4);
        param4 = -param4;

        minY++;
    }
}

void sa2__sub_8007A08(u8 bg, u8 param1, u8 param2, u8 param3, u8 param4)
{
    u8 *cursor;

    gFlags |= FLAGS_4;

    if (bg >= 2) {
        sa2__gUnknown_03002A80 = 4;

        if (bg & 1) {
            cursor = &((u8 *)gBgOffsetsHBlank)[2];
            sa2__gUnknown_03002878 = (void *)&REG_WIN0H;
        } else {
            cursor = &((u8 *)gBgOffsetsHBlank)[0];
            sa2__gUnknown_03002878 = (void *)&REG_WIN0H;
        }
    } else {
        sa2__gUnknown_03002A80 = 2;
        cursor = &((u8 *)gBgOffsetsHBlank)[0];

        if (bg & 1) {
            sa2__gUnknown_03002878 = (void *)&REG_WIN1H;
        } else {
            sa2__gUnknown_03002878 = (void *)&REG_WIN0H;
        }
    }

    cursor += param2 * sa2__gUnknown_03002A80;
    while (param2 < param4) {
#ifndef NON_MATCHING
        register u8 v asm("r0");
#else
        u8 v;
#endif
        u8 *p;
        *cursor = param3;
        cursor++;

        *cursor = param1;

        v = sa2__gUnknown_03002A80;
#ifndef NON_MATCHING
        asm("add %0, %0, %2" : "=r"(p) : "r"(v), "r"(cursor));
#else
        p = v + cursor;
#endif
        cursor = p - 1;

        param2++;
    }
}

#if ((GAME == GAME_SA1) || (GAME == GAME_SA2))
void sa2__sub_8007AC0(u8 affineBg, int_vcount minY, int_vcount maxY)
{
    u16 *cursor;
    u16 affine;
    void **ptr;
    u32 bg = affineBg;

    gFlags |= FLAGS_4;

    ptr = &sa2__gUnknown_03002878;

    bg *= 16;
#ifndef NON_MATCHING
    asm("sub %0, #0x20" ::"r"(bg));
    *ptr = (void *)(REG_ADDR_BG2PA + bg);
#else
    bg -= 0x20;
    *ptr = (void *)(((uintptr_t)&REG_BG2PA) + bg);
#endif

    sa2__gUnknown_03002A80 = 2;

    cursor = &((u16 *)gBgOffsetsHBlank)[minY];

#ifdef NON_MATCHING
    // assert(affineBg < NUM_AFFINE_BACKGROUNDS);
#endif

    affine = gBgAffineRegs[affineBg].pa;

    while (minY < maxY) {
        *cursor = affine + ((maxY - minY) * 4);

        cursor++;
        minY++;
    }
}
#endif
