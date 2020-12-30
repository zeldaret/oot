#ifndef _Z_BG_JYA_BIGMIRROR_H_
#define _Z_BG_JYA_BIGMIRROR_H_

#include "ultra64.h"
#include "global.h"
#include "overlays/actors/ovl_Bg_Jya_Cobra/z_bg_jya_cobra.h"

struct BgJyaBigmirror;

typedef struct {
    /* 0x00 */ BgJyaCobra* cobra;
    /* 0x04 */ s16 rotY;
} BigmirrorCobra; // size = 0x08

typedef struct BgJyaBigmirror {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ BigmirrorCobra cobraInfo[2];
    /* 0x015C */ u8 puzzleFlags;
    /* 0x015D */ u8 spawned;
    /* 0x0160 */ Actor* lightBeams[3];
    /* 0x016C */ s32 mirRayObjIndex;
    /* 0x0170 */ f32 liftHeight;
} BgJyaBigmirror; // size = 0x0174

extern const ActorInit Bg_Jya_Bigmirror_InitVars;

#endif
