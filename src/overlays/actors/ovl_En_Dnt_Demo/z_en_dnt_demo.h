#ifndef _Z_EN_DNT_DEMO_H_
#define _Z_EN_DNT_DEMO_H_

#include "ultra64.h"
#include "global.h"

struct EnDntDemo;

typedef void (*EnDntDemoActionFunc)(struct EnDntDemo*, GlobalContext*);

typedef struct EnDntDemo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnDntDemoActionFunc actionFunc;
    /* 0x0150 */ s16 unk_150;
    /* 0x0152 */ s16 unk_152;
    /* 0x0154 */ s16 unk_154;
    /* 0x0156 */ s16 unk_156;
    /* 0x0158 */ s16 unk_158;
    /* 0x015A */ s16 unk_15A;
    /* 0x015C */ s16 unk_15C;
    /* 0x015E */ s16 unk_15E;
    /* 0x0160 */ Vec3f unk_160[9];
    /* 0x01CC */ Vec3f unk_1CC;
    /* 0x01D8 */ struct EnDntNomal* unk_1D8[9];
    /* 0x01FC */ struct EnDntJiji* unk_1FC;
} EnDntDemo; // size = 0x0200

extern const ActorInit En_Dnt_Demo_InitVars;

#endif
