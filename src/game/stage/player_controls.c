#include "global.h"
#include "game/stage/player_controls.h"
#include "game/save.h"

struct ButtonConfig gPlayerControls = {};

#if 0
UNUSED void SA2_LABEL(sub_802B584)(u16 jump, u16 attack, u16 trick)
{
    struct ButtonConfig *controls = &gPlayerControls;
    s16 i;
    u16 config[3];

    u16 *configs = config;
    configs[0] = jump;
    configs[1] = attack;
    configs[2] = trick;

    for (i = 0; i < 3; i++) {
        switch (config[i]) {
            case 0: {
                if (i == 2)
                    controls->jump = R_BUTTON;
                else
                    controls->jump = A_BUTTON << i;
            } break;

            case 1: {
                if (i == 2)
                    controls->attack = R_BUTTON;
                else
                    controls->attack = A_BUTTON << i;
            } break;

            case 2: {
                if (i == 2)
                    controls->trick = R_BUTTON;
                else
                    controls->trick = A_BUTTON << i;
            } break;
        }
    }

    LOADED_SAVE->buttonConfig.jump = controls->jump;
    LOADED_SAVE->buttonConfig.attack = controls->attack;
    LOADED_SAVE->buttonConfig.trick = controls->trick;
}

void SetPlayerControls(u16 jump, u16 attack, u16 trick)
{
    gPlayerControls.jump = jump;
    gPlayerControls.attack = attack;
    gPlayerControls.trick = trick;
}
#endif
