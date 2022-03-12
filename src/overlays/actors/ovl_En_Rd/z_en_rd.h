#ifndef Z_EN_RD_H
#define Z_EN_RD_H

#include "ultra64.h"
#include "global.h"

struct EnRd;

typedef void (*EnRdActionFunc)(struct EnRd*, GlobalContext*);

typedef struct EnRd {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ Vec3s firePos[10];
    /* 0x0188 */ SkelAnime skelAnime;
    /* 0x01CC */ Vec3s jointTable[26];
    /* 0x0268 */ Vec3s morphTable[26];
    /* 0x0304 */ u8 grabState;
    /* 0x0305 */ u8 isMourning;
    /* 0x0306 */ u8 playerStunWaitTimer; // Cannot stun the player if this is non-zero
    /* 0x0307 */ u8 grabWaitTimer; // Cannot grab the player if this is non-zero
    /* 0x0308 */ EnRdActionFunc actionFunc;
    /* 0x030C */ union {
                    s16 animationJudderTimer;
                    s16 deathTimer;
                    s16 coffinRiseForwardAccelTimer;
                };
    /* 0x030E */ s16 headYRotation;
    /* 0x0310 */ s16 upperBodyYRotation;
    /* 0x0312 */ s16 flags;
    /* 0x0314 */ s16 alpha;
    /* 0x0316 */ s16 sunsSongStunTimer;
    /* 0x0318 */ u8 stunnedBySunsSong;
    /* 0x0319 */ u8 grabDamageTimer;
    /* 0x031A */ u8 fireTimer;
    /* 0x031B */ u8 action;
    /* 0x031C */ u8 damageEffect;
    /* 0x031D */ u8 unk_31D; // related to player->unk_845
    /* 0x0320 */ ColliderCylinder collider;
} EnRd; // size = 0x036C

#endif
