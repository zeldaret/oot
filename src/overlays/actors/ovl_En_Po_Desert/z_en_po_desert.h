#ifndef _Z_EN_PO_DESERT_H_
#define _Z_EN_PO_DESERT_H_

#include <ultra64.h>
#include <global.h>

struct EnPoDesert;

typedef void (*EnPoDesertActionFunc)(struct EnPoDesert*, struct GlobalContext*);

typedef struct EnPoDesert {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnPoDesertActionFunc actionFunc;
    /* 0x0194 */ s16 unk_194;
    /* 0x0194 */ s16 unk_196;
    /* 0x0194 */ s32 unk_198;
    /* 0x019C */ f32 unk_19C;
    /* 0x01A0 */ f32 unk_1A0;
    /* 0x01A4 */ f32 unk_1A4;
    /* 0x01A8 */ Vec3s unk_1A8;
    /* 0x01AE */ char unk_1AE[0x036];
    /* 0x01E4 */ Vec3s unk_1E4;
    /* 0x01EA */ char unk_1EA[0x036];
    /* 0x0220 */ u8 unk_220;
    /* 0x0220 */ u8 unk_221;
    /* 0x0220 */ u8 unk_222;
    /* 0x0220 */ u8 unk_223;
    /* 0x0224 */ z_Light* light;
    /* 0x0228 */ LightInfoPositional lightInfo;
    /* 0x0238 */ ColliderCylinder collider;
} EnPoDesert; // size = 0x0284

extern const ActorInit En_Po_Desert_InitVars;

#endif
