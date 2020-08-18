#ifndef _Z_EN_TITE_H_
#define _Z_EN_TITE_H_

#include <ultra64.h>
#include <global.h>

struct EnTite;

typedef void (*EnTiteActionFunc)(struct EnTite*, GlobalContext*);

typedef struct EnTite {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x171];
    /* 0x02BD */ u8 unk2BD;
    /* 0x02BE */ char unk_2BE[0x2];
    /* 0x02C0 */ EnTiteActionFunc actionFunc;
    /* 0x02C4 */ char unk_0x24C[0x18];
    /* 0x02DC */ s32 unk2DC;
    /* 0x02E0 */ char unk_2C4[0x8];
    /* 0x02E8 */ Collider* unk2E8;
    /* 0x02EC */ char unk_2EC[0x5C];
    /* 0x0348 */ Vec3f unk348;
    /* 0x0354 */ Vec3f unk354;
    /* 0x0360 */ Vec3f unk360;
    /* 0x036C */ Vec3f unk36C;
} EnTite; // size = 0x0378

extern const ActorInit En_Tite_InitVars;

#endif
