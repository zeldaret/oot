#ifndef _Z_DEMO_KEKKAI_H_
#define _Z_DEMO_KEKKAI_H_

#include "ultra64.h"
#include "global.h"

struct DemoKekkai;

typedef void (*DemoKekkaiActionFunc)(struct DemoKekkai* this, GlobalContext* globalCtx);

typedef struct DemoKekkai {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider1;
    /* 0x0198 */ ColliderCylinder collider2;
    /* 0x01E4 */ f32 unk_1E4;
    /* 0x01E8 */ f32 unk_1E8;
    /* 0x01EC */ f32 unk_1EC;
    /* 0x01F0 */ f32 unk_1F0;
    /* 0x01F4 */ u16 unk_1F4;
    /* 0x01F6 */ u16 unk_1F6;
    /* 0x01F8 */ DemoKekkaiActionFunc unk_1F8;
} DemoKekkai; // size = 0x01FC

extern const ActorInit Demo_Kekkai_InitVars;

#endif
