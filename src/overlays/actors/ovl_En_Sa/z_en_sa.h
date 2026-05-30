#ifndef Z_EN_SA_H
#define Z_EN_SA_H

#include "ultra64.h"
#include "actor.h"

struct EnSa;

typedef void (*EnSaActionFunc)(struct EnSa*, struct PlayState*);

typedef struct EnSa {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnSaActionFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ NpcInteractInfo interactInfo;
    /* 0x0208 */ u8 messageIndex;
    /* 0x0209 */ u8 prevTextState;
    /* 0x020A */ u8 animPhase;
    /* 0x020B */ u8 animGroup;
    /* 0x020C */ s16 stepTimer;
    /* 0x020E */ s16 blinkTimer;
    /* 0x0210 */ s16 cueId;
    /* 0x0212 */ s16 rightEyeIndex;
    /* 0x0214 */ s16 leftEyeIndex;
    /* 0x0216 */ s16 mouthIndex;
    /* 0x0218 */ s16 alpha;
    /* 0x021A */ Vec3s initRot;
    /* 0x0220 */ Vec3s jointTable[17];
    /* 0x0286 */ Vec3s morphTable[17];
} EnSa; // size = 0x02EC

#endif
