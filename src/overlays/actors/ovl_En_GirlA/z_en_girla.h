#ifndef _Z_EN_GIRLA_H_
#define _Z_EN_GIRLA_H_

#include "ultra64.h"
#include "global.h"

struct EnGirlA;

typedef void (*EnGirlAActionFunc)(struct EnGirlA*, GlobalContext*);
typedef void (*EnGirlA2Func)(GlobalContext*, struct EnGirlA*);
typedef void (*EnGirlA3Func)(Actor*, GlobalContext*, s32);

typedef struct EnGirlA {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnGirlAActionFunc actionFunc;
    /* 0x0194 */ s8 unk_194;
    /* 0x0195 */ s8 unk_195;
    /* 0x0196 */ s16 unk_196;
    /* 0x0198 */ EnGirlAActionFunc unk_198;
    /* 0x019C */ s32 unk_19C;
    /* 0x01A0 */ s16 unk_1A0;
    /* 0x01A2 */ s16 unk_1A2;
    /* 0x01A4 */ s32 unk_1A4;
    /* 0x01A8 */ s16 unk_1A8;
    /* 0x01AA */ s16 unk_1AA;
    /* 0x01AC */ EnGirlA2Func unk_1AC;
    /* 0x01B0 */ EnGirlA2Func unk_1B0;
    /* 0x01B4 */ s16 unk_1B4;
    /* 0x01B6 */ s16 unk_1B6;
    /* 0x01B8 */ s16 unk_1B8;
    /* 0x01BA */ s16 unk_1BA;
    /* 0x01BC */ void* unk_1BC;
    /* 0x01C0 */ void* unk_1C0;
    /* 0x01C4 */ void* unk_1C4;
    /* 0x01C8 */ s16 unk_1C8;
    /* 0x01CA */ s16 unk_1CA;
    /* 0x01CC */ s16 unk_1CC;
    /* 0x01CE */ s16 unk_1CE;
    /* 0x01D0 */ EnGirlA3Func unk_1D0;
} EnGirlA; // size = 0x01D4

extern const ActorInit En_Girla_InitVars;

#endif
