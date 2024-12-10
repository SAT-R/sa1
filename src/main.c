#include "core.h"

extern void GameStart(void);

void AgbMain(void)
{
    EngineInit();
    GameStart();
    EngineMainLoop();
}
