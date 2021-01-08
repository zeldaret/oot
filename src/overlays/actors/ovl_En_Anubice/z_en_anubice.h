#ifndef _Z_EN_ANUBICE_H_
#define _Z_EN_ANUBICE_H_

#include "ultra64.h"
#include "global.h"
#include "overlays/actors/ovl_Bg_Hidan_Curtain/z_bg_hidan_curtain.h"

struct EnAnubice;

typedef void (*EnAnubiceActionFunc)(struct EnAnubice*, struct GlobalContext*);

typedef struct EnAnubice {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s jointTable[16];
    /* 0x01F0 */ Vec3s morphTable[16];
    /* 0x0250 */ EnAnubiceActionFunc actionFunc;
    /* 0x0254 */ s16 unk_254;
    /* 0x0256 */ s16 unk_256;
    /* 0x0258 */ s16 unk_258;
    /* 0x025A */ s16 unk_25A;
    /* 0x025C */ s16 unk_25C;
    /* 0x025E */ s16 unk_25E;
    /* 0x0260 */ s16 unk_260;
    /* 0x0262 */ s16 unk_262;
    /* 0x0264 */ s16 unk_264;
    /* 0x0266 */ char unk_266[0x2];
    /* 0x0268 */ f32 unk_268;
    /* 0x026C */ f32 unk_26C;
    /* 0x0270 */ f32 unk_270;
    /* 0x0274 */ f32 unk_274;
    /* 0x0278 */ f32 unk_278;
    /* 0x027C */ f32 unk_27C;
    /* 0x0280 */ Vec3f unk_280;
    /* 0x028C */ f32 unk_28C;
    /* 0x0290 */ f32 unk_290;
    /* 0x0294 */ char unk_294[0x4];
    /* 0x0298 */ Vec3f unk_298;
    /* 0x02A4 */ Vec3f unk_2A4;
    /* 0x02B0 */ BgHidanCurtain* unk_2B0[4];
    /* 0x02C0 */ char unk_2C0[0x8];
    /* 0x02C8 */ ColliderCylinder col;
} EnAnubice; // size = 0x0314

extern const ActorInit En_Anubice_InitVars;

#endif
