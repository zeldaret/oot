#ifndef _Z_EN_NIW_LADY_H_
#define _Z_EN_NIW_LADY_H_

#include "ultra64.h"
#include "global.h"

struct EnNiwLady;

typedef void (*EnNiwLadyActionFunc)(struct EnNiwLadyt*, GlobalContext*);

typedef struct EnNiwLady {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[16];
    /* 0x01F0 */ Vec3s transitionDrawTable[16];
    /* 0x0250 */ EnNiwLadyActionFunc actionFunc;
    /* 0x0254 */ Vec3s unk_254;
    /* 0x025A */ Vec3s unk_25A;
    /* 0x0260 */ s16 unk_260;
    /* 0x0262 */ s16 unk_262;
    /* 0x0264 */ s16 unk_264;
    /* 0x0266 */ s16 unk_266;
    /* 0x0268 */ s16 NiwInPen;
    /* 0x026A */ s16 unk_26A;
    /* 0x026C */ s16 unk_26C;
    /* 0x026E */ s16 unk_26E;
    /* 0x0270 */ s16 unk_270;
    /* 0x0272 */ u8 unk_272;
    /* 0x0273 */ u8 unk_273;
    /* 0x0274 */ u8 unk_274;
    /* 0x0275 */ u8 unk_275;
    /* 0x0276 */ u8 unk_276;
    /* 0x0277 */ u8 unk_277;
    /* 0x0278 */ s16 unk_278;
    /* 0x027A */ s16 unk_27A;
    /* 0x027C */ s16 unk_27C;
    /* 0x027E */ s16 unk_27E;
    /* 0x0280 */ s8 ObjectAneIndex;
    /* 0x0281 */ s8 ObjectOsAnimeIndex;
    /* 0x0282 */ char unk_282[0x2];
    /* 0x0284 */ s32 unk_284;
    /* 0x0288 */ struct_80034A14_arg1 unk_struct;
    /* 0x02B0 */ ColliderCylinder collider;
} EnNiwLady; // size = 0x02FC

extern const ActorInit En_Niw_Lady_InitVars;

#endif
