#ifndef _Z_EN_FHG_H_
#define _Z_EN_FHG_H_

#include <ultra64.h>
#include <global.h>

struct EnfHG;

typedef struct EnfHG {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u8 unk_14C;
    /* 0x014D */ char unk_14D[0x1];
    /* 0x014E */ u8 unk_14E;
    /* 0x014F */ u8 unk_14F;
    /* 0x0150 */ char unk_150[0x77];
    /* 0x01C7 */ u8 unk_1C7;
    /* 0x01C8 */ char unk_1C8;
    /* 0x01C9 */ u8 flyMode;
    /* 0x01CA */ u8 unk_1CA;
    /* 0x01CB */ char unk_1CB[0x13];
    /* 0x01DE */ s16 unk_1DE;
    /* 0x01E0 */ s16 unk_1E0;
    /* 0x01E2 */ char unk_1E2[0x6];
    /* 0x01E8 */ f32 unk_1E8;
    /* 0x01EC */ f32 unk_1EC;
    /* 0x01F0 */ f32 unk_1F0;
    /* 0x01F4 */ f32 unk_1F4;
    /* 0x01F8 */ f32 unk_1F8;
    /* 0x0200 */ Vec3f unk_200;
    /* 0x020C */ Vec3f unk_20C;
    /* 0x0218 */ char unk_218[0x7C];
} EnfHG; // size = 0x0294

extern const ActorInit En_Fhg_InitVars;

#endif
