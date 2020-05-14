#ifndef _Z_EN_DHA_H_
#define _Z_EN_DHA_H_

#include <ultra64.h>
#include <global.h>

struct EnDha;

typedef void (*EnDhaActionFunc)(struct EnDha*, GlobalContext*);

typedef struct EnDha {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[4];
    /* 0x01A8 */ Vec3s transitionDrawTable[4];
    /* 0x01C0 */ u8 unk_1C0;
    /* 0x01C4 */ EnDhaActionFunc actionFunc;
    /* 0x01C8 */ s16 unk_1C8;
    /* 0x01CA */ s16 unk_1CA;
    /* 0x01CC */ u8 unk_1CC;
    /* 0x01CE */ s16 unk_1CE;
    /* 0x01D0 */ Vec3s unk_1D0;
    /* 0x01D6 */ Vec3s unk_1D6;
    /* 0x01DC */ Vec3f unk_1DC;
    /* 0x01E8 */ Vec3f unk_1E8;
    /* 0x01F4 */ Vec3f unk_1F4;
    /* 0x0200 */ ColliderJntSph collider;
    /* 0x0220 */ ColliderJntSphItem colliderItem[5];
} EnDha; // size = 0x0360

extern const ActorInit En_Dha_InitVars;

#endif
