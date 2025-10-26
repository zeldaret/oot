#ifndef TITLE_STATIC_H
#define TITLE_STATIC_H

#include "versions.h"

// A lot of assets where reordered between NTSC and PAL as well as N64 vs GC for PAL due to the language select
#if OOT_NTSC
#include "assets/textures/title_static/title_static_ntsc.h"
#elif OOT_PAL
#if PLATFORM_GC
#include "assets/textures/title_static/title_static_pal_gc.h"
#else
#include "assets/textures/title_static/title_static_pal_n64.h"
#endif
#endif

extern Gfx gFileSelWindow1DL[67];
extern Gfx gFileSelWindow2DL[66];
extern Gfx gFileSelWindow3DL[34];

#endif /* TITLE_STATIC_H */
