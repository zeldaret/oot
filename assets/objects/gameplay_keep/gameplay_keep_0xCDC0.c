#include "gameplay_keep_0xCDC0.h"
#include "region.h"

u64 gSelectionCursorTex[TEX_LEN(u64, gSelectionCursorTex_WIDTH, gSelectionCursorTex_HEIGHT, 4)] = {
#include "assets/objects/gameplay_keep/gSelectionCursorTex.ia4.inc.c"
};

u64 gControlStickTex[TEX_LEN(u64, gControlStickTex_WIDTH, gControlStickTex_HEIGHT, 8)] = {
#include "assets/objects/gameplay_keep/gControlStickTex.ia8.inc.c"
};

u64 gArrowCursorTex[TEX_LEN(u64, gArrowCursorTex_WIDTH, gArrowCursorTex_HEIGHT, 8)] = {
#include "assets/objects/gameplay_keep/gArrowCursorTex.ia8.inc.c"
};
