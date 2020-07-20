#ifndef _Z_EN_OSSAN_H_
#define _Z_EN_OSSAN_H_

#include <ultra64.h>
#include <global.h>

#include "overlays/actors/ovl_En_GirlA/z_en_girla.h"
#include "overlays/actors/ovl_En_Tana/z_en_tana.h"

struct EnOssan;

typedef void (*EnOssanActionFunc)(struct EnOssan*, GlobalContext*);
typedef void (*EnOssanFunc2)(struct EnOssan*);
typedef void (*EnOssanFunc3)(struct EnOssan*, GlobalContext*, Player*);
typedef s16  (*EnOssanFunc4)(s16);
typedef void (*EnOssanFunc5)(GlobalContext*);

typedef struct EnOssan {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnOssanActionFunc actionFunc;
    /* 0x0194 */ EnOssanActionFunc unk_194;
    /* 0x0198 */ ColliderCylinder collider;
    /* 0x01E4 */ s16 unk_1E4;
    /* 0x01E6 */ s16 unk_1E6;
    /* 0x01E8 */ s8 unk_1E8;
    /* 0x01E9 */ s8 unk_1E9;
    /* 0x01EB */ s8 unk_1EA;
    /* 0x01EB */ u8 unk_1EB;
    /* 0x01EC */ u8 unk_1EC;
    /* 0x01EE */ s16 unk_1EE;
    /* 0x01F0 */ s16 unk_1F0;
    /* 0x01F2 */ s16 unk_1F2;
    /* 0x01F4 */ s16 unk_1F4;
    /* 0x01F6 */ u16 unk_1F6;
    /* 0x01F8 */ EnOssanFunc2 unk_1F8;
    /* 0x01FC */ s16 unk_1FC;
    /* 0x01FE */ s16 unk_1FE;
    /* 0x0200 */ EnGirlA* unk_200[8];
    /* 0x0220 */ EnTana* tana;
    /* 0x0224 */ s32 unk_224;
    /* 0x0228 */ s32 unk_228;
    /* 0x022C */ u8 unk_22C;
    /* 0x022D */ s8 unk_22D;
    /* 0x022E */ s8 unk_22E;
    /* 0x022F */ s8 unk_22F;
    /* 0x0230 */ f32 unk_230;
    /* 0x0234 */ f32 unk_234;
    /* 0x0238 */ f32 unk_238;
    /* 0x023C */ s32 unk_23C[4];
    /* 0x024C */ f32 unk_24C;
    /* 0x0250 */ u8 unk_250;
    /* 0x0251 */ u8 unk_251;
    /* 0x0252 */ u8 unk_252;
    /* 0x0253 */ u8 unk_253;
    /* 0x0254 */ s32 unk_254;
    /* 0x0258 */ s32 unk_258;
    /* 0x025C */ s32 unk_25C;
    /* 0x0260 */ s32 unk_260;
    /* 0x0264 */ f32 unk_264;
    /* 0x0268 */ f32 unk_268;
    /* 0x026C */ s32 unk_26C;
    /* 0x0270 */ s32 unk_270;
    /* 0x0274 */ s32 unk_274;
    /* 0x0278 */ s32 unk_278;
    /* 0x027C */ f32 unk_27C;
    /* 0x0280 */ f32 unk_280;
    /* 0x0284 */ f32 unk_284;
    /* 0x0288 */ s32 unk_288;
    /* 0x028C */ s32 unk_28C;
    /* 0x0290 */ s32 unk_290;
    /* 0x0294 */ s32 unk_294;
    /* 0x0298 */ s32 unk_298;
    /* 0x029C */ f32 unk_29C;
    /* 0x02A0 */ f32 unk_2A0;
    /* 0x02A4 */ s32 unk_2A4;
    /* 0x02A8 */ s32 unk_2A8;
    /* 0x02AC */ s32 unk_2AC;
    /* 0x02B0 */ s32 unk_2B0;
    /* 0x02B4 */ f32 unk_2B4;
    /* 0x02B8 */ f32 unk_2B8;
    /* 0x02BC */ f32 unk_2BC;
    /* 0x02C0 */ s32 unk_2C0;
    /* 0x02C4 */ f32 unk_2C4;
    /* 0x02C8 */ f32 unk_2C8;
    /* 0x02CC */ u8 unk_2CC;
    /* 0x02CD */ u8 unk_2CD;
    /* 0x02CE */ char pad[0x2];
    /* 0x02D0 */ f32 unk_2D0;
    /* 0x02D4 */ f32 unk_2D4;
} EnOssan; // size = 0x02D8

extern const ActorInit En_Ossan_InitVars;

#endif
