#ifndef GAMEPLAY_KEEP_0xCDC0_H
#define GAMEPLAY_KEEP_0xCDC0_H

#include "tex_len.h"
#include "ultra64.h"

#define gSelectionCursorTex_WIDTH 16
#define gSelectionCursorTex_HEIGHT 16
extern u64 gSelectionCursorTex[TEX_LEN(u64, gSelectionCursorTex_WIDTH, gSelectionCursorTex_HEIGHT, 4)];
#define gControlStickTex_WIDTH 16
#define gControlStickTex_HEIGHT 16
extern u64 gControlStickTex[TEX_LEN(u64, gControlStickTex_WIDTH, gControlStickTex_HEIGHT, 8)];
#define gArrowCursorTex_WIDTH 16
#define gArrowCursorTex_HEIGHT 24
extern u64 gArrowCursorTex[TEX_LEN(u64, gArrowCursorTex_WIDTH, gArrowCursorTex_HEIGHT, 8)];

#endif
