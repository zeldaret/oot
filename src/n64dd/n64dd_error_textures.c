#include "ultra64.h"

#if PLATFORM_N64

u64 gN64DDError41Texs[2][0x600 / sizeof(u64)] = {
    {
#include "assets/n64dd/error_textures/n64dd_error_41_jpn.i4.inc.c"
    },
    {
#include "assets/n64dd/error_textures/n64dd_error_41_jpn.i4.inc.c"
    },
};

u64 gN64DDPleaseReadManualTexs[2][0x2800 / sizeof(u64)] = {
    {
#include "assets/n64dd/error_textures/n64dd_please_read_manual_jpn.i4.inc.c"
    },
    {
#include "assets/n64dd/error_textures/n64dd_please_read_manual_jpn.i4.inc.c"
    },
};

#else

// Stub out missing assets
u64 gN64DDError41Texs[2][0x600 / sizeof(u64)] = { 0 };
u64 gN64DDPleaseReadManualTexs[2][0x2800 / sizeof(u64)] = { 0 };

#endif
