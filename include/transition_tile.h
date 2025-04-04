#ifndef TRANSITION_TILE_H
#define TRANSITION_TILE_H

#include "ultra64.h"

typedef struct TransitionTileVtxData {
    /* 0x0 */ f32 x;
    /* 0x4 */ f32 y;
} TransitionTileVtxData; // size = 0x8

typedef struct TransitionTile {
    /* 0x00 */ s32 cols;
    /* 0x04 */ s32 rows;
    /* 0x08 */ s32 frame;
    /* 0x0C */ TransitionTileVtxData* vtxData;
    /* 0x10 */ Vtx* vtxFrame1;
    /* 0x14 */ Vtx* vtxFrame2;
    /* 0x18 */ Mtx projection;
    /* 0x58 */ Mtx modelView;
    /* 0x98 */ Mtx unk_98;
    /* 0xD8 */ Gfx* gfx; // "gfxtbl"
    /* 0xDC */ u16* zBuffer;
} TransitionTile; // size = 0xE0

TransitionTile* TransitionTile_Init(TransitionTile* this, s32 cols, s32 rows);
void TransitionTile_Destroy(TransitionTile* this);
void TransitionTile_Update(TransitionTile* this);
void TransitionTile_Draw(TransitionTile* this, Gfx** gfxP);

#endif
