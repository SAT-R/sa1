#include "global.h"
#include "core.h"

typedef struct Game_2_1_34 {
    u8 filler0[0x18];
    s32 unk18;
    s32 unk1C;
    u8 filler20[0x6];
    u16 unk26;
    u8 filler28[0x2];
    u8 unk2A;
    u8 unk2B[7];
} Game_2_1_34;

void sub_805C900(u8 arg0)
{
    s16 var_r4;
    s32 temp_r0_2;
    s32 strc34_2;
    u8 *temp_r5;
    s32 var_r6;
    s32 temp_r0_3;
    Game_2_1_34 *strc34;

    strc34 = TASK_DATA(gCurTask);
    if (0) {
    } else if (arg0 == 0) {
        var_r6 = strc34->unk26 * 100;
    } else if (arg0 == 1) {
        var_r6 = strc34->unk18;
    } else if (arg0 == 2) {
        var_r6 = strc34->unk1C;
    } else if (arg0 == 3) {
        var_r6 = strc34->unk2A;
    }

    for (var_r4 = 6; var_r4 >= 0; var_r4--) {
        u8 *ptrUnk2B = strc34->unk2B;
        temp_r0_2 = Div(var_r6, 10);
        temp_r5 = &ptrUnk2B[var_r4];
        strc34_2 = ((temp_r0_2 << 3) + (temp_r0_2 << 1));
        temp_r0_3 = ((var_r6 - strc34_2) + 32);
        *temp_r5 = temp_r0_3;
        if ((var_r6 != strc34_2) && (arg0 == 3)) {
            *temp_r5 = (temp_r0_3 + 0xB);
        }
        var_r6 = temp_r0_2;
    }
}
