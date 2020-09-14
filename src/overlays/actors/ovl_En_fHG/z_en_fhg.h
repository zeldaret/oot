#ifndef _Z_EN_FHG_H_
#define _Z_EN_FHG_H_

#include <ultra64.h>
#include <global.h>

struct EnfHG;

typedef struct EnfHG {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x3];
    /* 0x014F */ u8 unk_14F;
    /* 0x0150 */ char unk_150[0x77];
    /* 0x01C7 */ u8 unk_1C7;
    /* 0x01C8 */ char unk_1C8;
    /* 0x01C9 */ u8 flyMode;
    /* 0x01CA */ u8 unk_1CA;
    /* 0x01CB */ char unk_1CB[0x35];
    /* 0x0200 */ Vec3f unk_200;
    /* 0x020C */ Vec3f unk_20C;
    /* 0x0218 */ char unk_218[0x7C];
} EnfHG; // size = 0x0294

extern const ActorInit En_Fhg_InitVars;

#endif
