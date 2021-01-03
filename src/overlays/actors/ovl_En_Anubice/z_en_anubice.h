#ifndef _Z_EN_ANUBICE_H_
#define _Z_EN_ANUBICE_H_

#include "ultra64.h"
#include "global.h"

struct EnAnubice;

typedef void (*EnAnubiceActionFunc)(struct EnAnubice*, struct GlobalContext*);

typedef struct EnAnubice {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s jointTable[16];
    /* 0x01F0 */ Vec3s morphTable[16];
    /* 0x0250 */ EnAnubiceActionFunc actionFunc;
    /* 0x0254 */ char unk_254[0x6];
    /* 0x025A */ s16 unk_25A;
    /* 0x025C */ char unk_25C[0x2];
    /* 0x025E */ s16 unk_25E;
    /* 0x0260 */ s16 unk_260;
    /* 0x0262 */ s16 unk_262;
    /* 0x0264 */ char unk_264[0x4];
    /* 0x0268 */ f32 unk_268;
    /* 0x026C */ char unk_26C[0x4];
    /* 0x0270 */ f32 unk_270;
    /* 0x0274 */ f32 unk_274;
    /* 0x0278 */ char unk_278[0x4];
    /* 0x027C */ f32 unk_27C;
    /* 0x0280 */ Vec3f unk_280;
    /* 0x028C */ f32 unk_28C;
    /* 0x0290 */ f32 unk_290;
    /* 0x0294 */ char unk_294[0x4];
    /* 0x0298 */ Vec3f unk_298;
    /* 0x02A4 */ char unk_2A4[0x24];
    /* 0x02C8 */ ColliderCylinder col;
} EnAnubice; // size = 0x0314

extern const ActorInit En_Anubice_InitVars;

#endif
