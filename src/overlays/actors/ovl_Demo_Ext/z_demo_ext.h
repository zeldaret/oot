#ifndef _Z_DEMO_EXT_H_
#define _Z_DEMO_EXT_H_

#include "ultra64.h"
#include "global.h"

struct DemoExt;

typedef void (*DemoExtActionFunc)(struct DemoExt*, GlobalContext*);
typedef void (*DemoExtDrawFunc)(Actor*, GlobalContext*);

typedef struct DemoExt {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 unk_14C;
    /* 0x014C */ s32 unk_150;
    /* 0x0154 */ s32 unk_154;
    // /* 0x0158 */ u16 unk_158;
    // /* 0x015A */ u16 unk_15A;
    // /* 0x015C */ u16 unk_15C;
    /* 0x015E */ s16 unk_158[4];
    /* 0x0160 */ s16 unk_160[4];
    /* 0x0168 */ s16 unk_168;
    /* 0x0160 */ char unk_16A[0x2];
    /* 0x0170 */ f32 unk_16C;
    /* 0x0170 */ s32 unk_170;
    /* 0x0174 */ s32 unk_174;
    /* 0x0178 */ Vec3f unk_178;
} DemoExt; // size = 0x0184

extern const ActorInit Demo_Ext_InitVars;

#endif
