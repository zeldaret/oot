#ifndef _Z_EN_TITE_H_
#define _Z_EN_TITE_H_

#include <ultra64.h>
#include <global.h>

struct EnTite;

typedef void (*EnTiteActionFunc)(struct EnTite*, GlobalContext*);

typedef struct EnTite {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime unk14C;
    /* 0x0190 */ char unk190[0x12C];
    /* 0x02BC */ u8 unk2BC;
    /* 0x02BD */ u8 unk2BD; 
    /* 0x02BE */ char unk2BE[0x2];
    /* 0x02C0 */ EnTiteActionFunc actionFunc;
    /* 0x02C4 */ struct_80032E24 unk2C4;
    /* 0x02DC */ s32 unk2DC;
    /* 0x02E0 */ s16 unk2E0;
    /* 0x02E2 */ u8 unk2E2;
    /* 0x02E3 */ u8 unk2E3;
    /* 0x02E4 */ u8 unk2E4;
    /* 0x02E5 */ char unk2E5[0x3];
    /* 0x02E8 */ Collider unk2E8;
    /* 0x0300 */ char unk300[0x4];
    /* 0x0304 */ ColliderBody* unk304;
    /* 0x0308 */ char unk308[0x40];
    /* 0x0348 */ Vec3f unk348;
    /* 0x0354 */ Vec3f unk354;
    /* 0x0360 */ Vec3f unk360;
    /* 0x036C */ Vec3f unk36C;
} EnTite; // size = 0x0378

extern const ActorInit En_Tite_InitVars;

#endif
