#ifndef _Z_DEMO_KANKYO_H_
#define _Z_DEMO_KANKYO_H_

#include "ultra64.h"
#include "global.h"

struct DemoKankyo;

typedef void (*DemoKankyoActionFunc)(struct DemoKankyo*, GlobalContext*);

typedef struct {
    f32 unk_0;
    f32 unk_4;
    f32 unk_8;
    Vec3f unk_C;
    f32 unk_18;
    f32 unk_1C;
    s16 unk_20;
    u8 unk_22;
    u8 unk_23;
    s16 unk_24;
} Struct_Unk_150; // 0x28

typedef struct DemoKankyo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u8 unk_14C;
    /* 0x014D */ u8 unk_14D;
    /* 0x014E */ u8 unk_14E;
    /* 0x014F */ char unk_14F[0x1];
    /* 0x0150 */ Struct_Unk_150 unk_150[30];
    /* 0x0600 */ DemoKankyoActionFunc actionFunc;
} DemoKankyo; // size = 0x0604

extern const ActorInit Demo_Kankyo_InitVars;

#endif
