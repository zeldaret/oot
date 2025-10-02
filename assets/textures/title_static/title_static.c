#include "versions.h"

// A lot of assets where reordered between NTSC and PAL as well as N64 vs GC for PAL due to the language select
#if OOT_NTSC
#include "assets/textures/title_static/title_static_ntsc.inc.c"
#elif OOT_PAL
#if PLATFORM_GC
#include "assets/textures/title_static/title_static_pal_gc.inc.c"
#else
#include "assets/textures/title_static/title_static_pal_n64.inc.c"
#endif
#endif

Gfx gFileSelWindow1DL[67] = {
#include "assets/textures/title_static/gFileSelWindow1DL.inc.c"
};

Gfx gFileSelWindow2DL[66] = {
#include "assets/textures/title_static/gFileSelWindow2DL.inc.c"
};

Gfx gFileSelWindow3DL[34] = {
#include "assets/textures/title_static/gFileSelWindow3DL.inc.c"
};
