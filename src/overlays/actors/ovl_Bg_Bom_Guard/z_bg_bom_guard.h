#ifndef _Z_BG_BOM_GUARD_H_
#define _Z_BG_BOM_GUARD_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ActorFunc actionFunc;
    /* 0x0168 */ u8 unk_168;
    /* 0x016C */ Vec3f unk_16C;
} BgBomGuard; // size = 0x0178

extern const ActorInit Bg_Bom_Guard_InitVars;

#endif
