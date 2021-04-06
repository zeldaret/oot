#ifndef _Z_EN_OSSAN_H_
#define _Z_EN_OSSAN_H_

#include "ultra64.h"
#include "global.h"
#include "overlays/actors/ovl_En_Tana/z_en_tana.h"
#include "overlays/actors/ovl_En_GirlA/z_en_girla.h"

struct EnOssan;

typedef void (*EnOssanActionFunc)(struct EnOssan*, GlobalContext*);
typedef void (*EnOssanTalkOwnerFunc)(GlobalContext*);
typedef void (*EnOssanUnkFunc1)(struct EnOssan*, GlobalContext*);
typedef void (*EnOssanUnkFunc2)(struct EnOssan*);
typedef s16 (*EnOssanUnkFunc3)(s16);
typedef void (*EnOssanUnkFunc4)(struct EnOssan*, GlobalContext*, Player*);

typedef struct {
    u32 r;
    u32 g;
    u32 b;
    u32 a;
} EnvColor;

typedef struct {

    /* 0x0254 */ EnvColor colorA;
    /* 0x0264 */ f32 xA;
    /* 0x0268 */ f32 yA;
    /* 0x026C */ EnvColor colorB;
    /* 0x027C */ f32 xB;
    /* 0x0280 */ f32 yB;
    /* 0x0284 */ f32 z;
    /* 0x0288 */ s32 isEnabled;
} TextRect;

#define ColChanMix(c1, c2, m) (c1 - (s32)(c2 * m)) & 0xFF

typedef struct EnOssan {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnOssanActionFunc actionFunc;
    /* 0x0194 */ EnOssanUnkFunc1 unk_194; //ObjectIndex3 VirtualToPhysical
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
    
    /* 0x023C */ EnvColor unk_23C;
    /* 0x024C */ f32 unk_24C;

    /* 0x0250 */ u8 unk_250;
    /* 0x0251 */ u8 unk_251;
    /* 0x0252 */ u8 unk_252;

    /* 0x0254 */ TextRect unk_254;
    /* 0x028C */ TextRect unk_28C;

    /* 0x02C4 */ f32 unk_2C4;
    /* 0x02C4 */ f32 unk_2C8;
    /* 0x02CC */ u8 unk_2CC;
    /* 0x02CD */ u8 unk_2CD;
    /* 0x02D0 */ f32 unk_2D0;
    /* 0x02D4 */ f32 unk_2D4;
} EnOssan; // size = 0x02D8

extern const ActorInit En_Ossan_InitVars;

#endif
