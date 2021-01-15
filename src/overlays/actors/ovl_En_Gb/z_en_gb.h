#ifndef _Z_EN_GB_H_
#define _Z_EN_GB_H_

#include "ultra64.h"
#include "global.h"

struct EnGb;

typedef void (*EnGbActionFunc)(struct EnGb*, GlobalContext*);

typedef struct {
    /* 0x00 */ u8    unk_0;
    /* 0x01 */ u8    unk_1;
    /* 0x02 */ u8    unk_2;
    /* 0x03 */ u8    unk_3;
    /* 0x04 */ u8    unk_4;
    /* 0x06 */ s16   unk_6;
    /* 0x08 */ Vec3f unk_8;
    /* 0x14 */ Vec3f unk_14;
    /* 0x20 */ f32   unk_20;
    /* 0x24 */ f32   unk_24;
    /* 0x28 */ f32   unk_28;
} EnGb_Unk_388; // size = 0x2C

typedef struct EnGb {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ SkelAnime skelAnime;
    /* 0x01A8 */ Vec3s unk_1A8[12];
    /* 0x01F0 */ Vec3s unk_1F0[12];
    /* 0x0238 */ EnGbActionFunc actionFunc;
    /* 0x023C */ ColliderCylinder unk_23C;
    /* 0x0288 */ ColliderCylinder unk_288[3];
    /* 0x036C */ LightNode* unk_36C;
    /* 0x0370 */ LightInfo unk_370;
    /* 0x037E */ u16 unk_37E;
    /* 0x0380 */ s16 unk_380;
    /* 0x0382 */ s16 unk_382;
    /* 0x0384 */ u8 unk_384;
    /* 0x0385 */ u8 unk_385;
    /* 0x0386 */ u8 unk_386;
    /* 0x0387 */ u8 unk_387;
    /* 0x0388 */ EnGb_Unk_388 unk_388[4];
} EnGb; // size = 0x0438

extern const ActorInit En_Gb_InitVars;

#endif
