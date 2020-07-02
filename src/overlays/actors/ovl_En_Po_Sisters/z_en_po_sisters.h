#ifndef _Z_EN_PO_SISTERS_H_
#define _Z_EN_PO_SISTERS_H_

#include <ultra64.h>
#include <global.h>

struct EnPoSisters;

typedef void (*EnPoSistersActionFunc)(struct EnPoSisters*, struct GlobalContext*);

typedef struct EnPoSisters {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnPoSistersActionFunc actionFunc;
    /* 0x0194 */ u8 unk_194;
    /* 0x0195 */ u8 unk_195;
    /* 0x0196 */ u8 unk_196;
    /* 0x0197 */ u8 unk_197;
    /* 0x0198 */ u8 unk_198;
    /* 0x0199 */ u8 unk_199;
    /* 0x019A */ s16 unk_19A;
    /* 0x019A */ s16 unk_19C;
    /* 0x019E */ Vec3s unk_19E;
    /* 0x01A4 */ char unk_1A4[0x042];
    /* 0x01E6 */ Vec3s unk_1E6;
    /* 0x01EC */ char unk_1EC[0x042];
    /* 0x022E */ u8 unk_22E;
    /* 0x022F */ u8 unk_22F;
    /* 0x0230 */ u8 unk_230;
    /* 0x0231 */ u8 unk_231;
    /* 0x0232 */ char unk_232[0x002];
    /* 0x0234 */ Vec3f unk_234;
    /* 0x0234 */ Vec3f unk_240;
    /* 0x0234 */ Vec3f unk_24C;
    /* 0x0234 */ Vec3f unk_258;
    /* 0x0264 */ char unk_264[0x30];
    /* 0x0294 */ f32 unk_294;
    /* 0x0298 */ z_Light* light;
    /* 0x029C */ LightInfoPositional lightInfo;
    /* 0x02AA */ char unk_2AA[0x002];
    /* 0x02AC */ ColliderCylinder collider;
    /* 0x02F8 */ MtxF unk_2F8;
} EnPoSisters; // size = 0x0338

extern const ActorInit En_Po_Sisters_InitVars;

#endif
