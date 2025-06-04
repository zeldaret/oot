#include "file_select.h"

#include "ultra64.h"
#include "gfx.h"
#include "versions.h"

Vtx gNameEntryVtx[] = {
#include "assets/overlays/ovl_file_choose/gNameEntryVtx.inc.c"
};

#if OOT_NTSC
s16 gCharPageHira[] = {
#include "assets/overlays/ovl_file_choose/gCharPageHira.inc.c"
};

s16 gCharPageKata[] = {
#include "assets/overlays/ovl_file_choose/gCharPageKata.inc.c"
};

s16 gCharPageEng[] = {
#include "assets/overlays/ovl_file_choose/gCharPageEng.inc.c"
};

s16 gNextCharPage[] = {
#include "assets/overlays/ovl_file_choose/gNextCharPage.inc.c"
};
#endif

Vtx gOptionsMenuHeadersVtx[] = {
#include "assets/overlays/ovl_file_choose/gOptionsMenuHeadersVtx.inc.c"
};

#if OOT_PAL && PLATFORM_GC
Vtx gOptionsMenuHeadersGERVtx[] = {
#include "assets/overlays/ovl_file_choose/gOptionsMenuHeadersGERVtx.inc.c"
};
#endif

Vtx gOptionsMenuSettingsVtx[] = {
#include "assets/overlays/ovl_file_choose/gOptionsMenuSettingsVtx.inc.c"
};

#if OOT_PAL && PLATFORM_GC
Vtx gOptionsMenuSettingsGERVtx[] = {
#include "assets/overlays/ovl_file_choose/gOptionsMenuSettingsGERVtx.inc.c"
};
#endif

#if OOT_PAL && PLATFORM_N64
Vtx gOptionsMenuBrightnessVtx[] = {
#include "assets/overlays/ovl_file_choose/gOptionsMenuBrightnessVtx.inc.c"
};

Vtx gOptionsMenuLanguageVtx[] = {
#include "assets/overlays/ovl_file_choose/gOptionsMenuLanguageVtx.inc.c"
};

u8 ovl_file_choose_zeros_000640[320] = { 0 };
#endif

Vtx gOptionsDividerSoundVtx[] = {
#include "assets/overlays/ovl_file_choose/gOptionsDividerSoundVtx.inc.c"
};

Vtx gOptionsDividerZTargetVtx[] = {
#include "assets/overlays/ovl_file_choose/gOptionsDividerZTargetVtx.inc.c"
};

Vtx gOptionsDividerBrightnessVtx[] = {
#include "assets/overlays/ovl_file_choose/gOptionsDividerBrightnessVtx.inc.c"
};

#if OOT_PAL && PLATFORM_N64
Vtx gOptionsDividerLanguageVtx[] = {
#include "assets/overlays/ovl_file_choose/gOptionsDividerLanguageVtx.inc.c"
};
#endif

#if OOT_PAL
s16 gCharPageEng[] = {
#include "assets/overlays/ovl_file_choose/gCharPageEng.inc.c"
};
#endif
