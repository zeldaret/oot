#ifndef GAMEPLAY_KEEP_UNUSED_HEART_PIECE_ICON_TEX_NTSC_H
#define GAMEPLAY_KEEP_UNUSED_HEART_PIECE_ICON_TEX_NTSC_H

#include "tex_len.h"
#include "ultra64.h"
#include "region.h"

#if OOT_REGION != REGION_EU
#define gUnusedHeartPieceIconTex_WIDTH 32
#define gUnusedHeartPieceIconTex_HEIGHT 32
extern u64 gUnusedHeartPieceIconTex[TEX_LEN(u64, gUnusedHeartPieceIconTex_WIDTH, gUnusedHeartPieceIconTex_HEIGHT, 16)];
#endif

#endif
