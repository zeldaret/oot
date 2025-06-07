#include "ultra64.h"

u64 gN64DDError41Texs[2][0x600 / sizeof(u64)] = {
    {
#include "assets/n64dd/error_textures/gN64DDError41JPNTex.i4.inc.c"
    },
    {
#include "assets/n64dd/error_textures/gN64DDError41ENGTex.i4.inc.c"
    },
};

u64 gN64DDPleaseReadManualTexs[2][0x2800 / sizeof(u64)] = {
    {
#include "assets/n64dd/error_textures/gN64DDPleaseReadManualJPNTex.i4.inc.c"
    },
    {
#include "assets/n64dd/error_textures/gN64DDPleaseReadManualENGTex.i4.inc.c"
    },
};
