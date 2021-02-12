#ifndef _Z_EN_OSSAN_H_
#define _Z_EN_OSSAN_H_

#include "ultra64.h"
#include "global.h"
#include "overlays/actors/ovl_En_Tana/z_en_tana.h"
#include "overlays/actors/ovl_En_GirlA/z_en_girla.h"

struct EnOssan;

typedef void (*EnOssanActionFunc)(struct EnOssan*, GlobalContext*);
typedef void (*TestFunc)(GlobalContext*); //Talk to shopkeeper dialog?
typedef void (*EnOssanUnkFunc1)(struct EnOssan*, GlobalContext*);
typedef void (*EnOssanUnkFunc2)(struct EnOssan*);
typedef s16 (*EnOssanUnkFunc3)(s16);
typedef void (*EnOssanUnkFunc4)(struct EnOssan*, GlobalContext*, Player*);

typedef struct
{
    u32 r;
    u32 g;
    u32 b;
    u32 a;
} EnvColorTest;

#define ColChanMix(c1, c2, m) (c1 - (s32)(c2 * m)) & 0xFF
#define ColChanMix2(c1, c2, m) (c1 - (s32)((f32)(c1 - c2) * m)) & 0xFF
#define ColChanMix3(c1, c2, m) (c1 - (s32)((c1) * m - (c2) * m)) & 0xFF
#define EnvMix(ct, r, g, b, a, r2, g2, b2, a2, m) \
ct.r = ColChanMix(r,r2,m)

typedef struct EnOssan {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnOssanActionFunc actionFunc;
    /* 0x0194 */ EnOssanUnkFunc1 unk_194;
    /* 0x0198 */ ColliderCylinder unk_198;
    /* 0x01E4 */ s16 timer;
    /* 0x01E6 */ s16 unk_1E6;
    /* 0x01E8 */ s8 objectIndex1;
    /* 0x01E9 */ s8 objectIndex2;
    /* 0x01EA */ s8 objectIndex3;
    /* 0x01EB */ u8 unk_1EB;
    /* 0x01EC */ u8 unk_1EC;
    /* 0x01ED */ s8 unk_1ED;
    /* 0x01EE */ s16 unk_1EE;
    /* 0x01F0 */ s16 lookAngle;
    /* 0x01F2 */ s16 unk_1F2;
    /* 0x01F4 */ s16 unk_1F4;
    /* 0x01F6 */ char unk_1F6[0x2];
    /* 0x01F8 */ EnOssanUnkFunc2 unk_1F8;
    /* 0x01FC */ s16 unk_1FC;
    /* 0x01FE */ s16 unk_1FE;
    /* 0x0200 */ EnGirlA* items[8];
    /* 0x0220 */ EnTana* shelves;
    /* 0x0224 */ s32 stickX;
    /* 0x0228 */ s32 stickY;
    /* 0x022C */ u8 moveHorizontal;
    /* 0x022D */ u8 moveVertical;
    /* 0x0230 */ f32 unk_230;
    /* 0x0234 */ f32 unk_234;
    /* 0x0238 */ f32 unk_238;
    
    /* 0x023C */ EnvColorTest unk_23C;
    ///* 0x023C */ s32 unk_23C;
    ///* 0x0240 */ s32 unk_240;
    ///* 0x0244 */ s32 unk_244;
    ///* 0x0248 */ s32 unk_248;
    /* 0x024C */ f32 unk_24C;

    /* 0x0250 */ u8 unk_250;
    /* 0x0251 */ u8 unk_251;
    /* 0x0252 */ u8 unk_252;

    /* 0x0254 */ EnvColorTest unk_254;//s32 unk_254;
    /* 0x0258 */ //s32 unk_258;
    /* 0x025C */ //s32 unk_25C;
    /* 0x0260 */ //s32 unk_260;
    /* 0x0264 */ f32 unk_264;
    /* 0x0268 */ f32 unk_268;
    /* 0x026C */ EnvColorTest unk_26C;
    ///* 0x026C */ s32 unk_26C;
    ///* 0x026C */ s32 unk_270;
    ///* 0x0274 */ s32 unk_274;
    ///* 0x0278 */ s32 unk_278;
    /* 0x027C */ f32 unk_27C;
    /* 0x0280 */ f32 unk_280;
    /* 0x0284 */ f32 unk_284;
    /* 0x0288 */ s32 unk_288; //is?

    /* 0x028C */ EnvColorTest unk_28C;
    ///* 0x0290 */ s32 unk_290;
    ///* 0x0294 */ s32 unk_294;
    ///* 0x0294 */ s32 unk_298;
    /* 0x029C */ f32 unk_29C;
    /* 0x02A0 */ f32 unk_2A0;
    /* 0x02A4 */ EnvColorTest unk_2A4;
    ///* 0x02A4 */ s32 unk_2A4;
    ///* 0x02A8 */ s32 unk_2A8;
    ///* 0x02AC */ s32 unk_2AC;
    ///* 0x02B0 */ s32 unk_2B0;
    /* 0x02B4 */ f32 unk_2B4;
    /* 0x02B8 */ f32 unk_2B8;
    /* 0x02BC */ f32 unk_2BC;
    /* 0x02C0 */ s32 unk_2C0; //is?

    /* 0x02C4 */ f32 unk_2C4;
    /* 0x02C4 */ f32 unk_2C8;
    /* 0x02CC */ u8 unk_2CC;
    /* 0x02CD */ u8 unk_2CD;
    /* 0x02D0 */ f32 unk_2D0;
    /* 0x02D4 */ f32 unk_2D4;
} EnOssan; // size = 0x02D8

extern const ActorInit En_Ossan_InitVars;

#endif
