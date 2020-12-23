#ifndef _Z_EN_DNT_NOMAL_H_
#define _Z_EN_DNT_NOMAL_H_

#include "ultra64.h"
#include "global.h"

struct EnDntNomal;

typedef void (*EnDntNomalActionFunc)(struct EnDntNomal*, GlobalContext*);

typedef struct EnDntNomal {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTbl[11];
    /* 0x01D2 */ Vec3s transitionDrawTbl[11];
    /* 0x0214 */ EnDntNomalActionFunc actionFunc;
    /* 0x0218 */ u8 unk_218;
    /* 0x0219 */ Vec3f unk_21C;
    /* 0x0228 */ Vec3f unk_228[4];
    /* 0x0258 */ s16 unk_258;
    /* 0x025A */ s16 unk_25A;
    /* 0x025C */ s16 unk_25C;
    /* 0x025E */ s16 unk_25E;
    /* 0x0260 */ s16 unk_260;
    /* 0x0262 */ s16 unk_262;
    /* 0x0264 */ s16 unk_264;
    /* 0x0266 */ s16 unk_266;
    /* 0x0268 */ s16 unk_268;
    /* 0x026A */ s16 unk_26A;
    /* 0x026C */ char unk_26C[4];
    /* 0x0270 */ s16 unk_270;
    /* 0x0272 */ char unk_272[2];
    /* 0x0274 */ s16 unk_274;
    /* 0x0276 */ u8 unk_276;
    /* 0x0277 */ char unk_277[1];
    /* 0x0278 */ u8 unk_278;
    /* 0x0279 */ s8 unk_279;
    /* 0x027A */ char unk_27A[2];
    /* 0x027C */ Vec3f unk_27C;
    /* 0x0288 */ Vec3f unk_288;
    /* 0x0294 */ ColliderQuad targetQuad;
    /* 0x0314 */ ColliderCylinder bodyCyl;
} EnDntNomal; // size = 0x0360

extern const ActorInit En_Dnt_Nomal_InitVars;

#endif
