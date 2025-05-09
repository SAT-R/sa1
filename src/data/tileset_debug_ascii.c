#include "global.h"
#include "data/tileset_debug_ascii.h"

// Tiles used for debug strings, like the unused (in the retail version) Stage Select.
#ifdef NON_MATCHING
const u8 ALIGNED(8) Tileset_DebugAscii[] = INCBIN_U8("graphics/tilesets/debug_ascii/debug_ascii.4bpp");
#else
const u8 ALIGNED(8) Tileset_DebugAscii[] = {};
#endif
