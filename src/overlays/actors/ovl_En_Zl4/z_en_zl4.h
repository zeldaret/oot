#ifndef Z_EN_ZL4_H
#define Z_EN_ZL4_H

#include "ultra64.h"
#include "global.h"

struct EnZl4;

typedef void (*EnZl4ActionFunc)(struct EnZl4*, PlayState*);
typedef void (*EnZl4DrawFunc)(struct EnZl4*, PlayState*);

typedef struct EnZl4 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnZl4ActionFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ NpcInteractInfo interactInfo;
    /* 0x0208 */ u8 talkState;
    /* 0x0209 */ u8 csState;
    /* 0x020A */ u8 leftEye; //eye texture index
    /* 0x020B */ u8 rightEye; //eye texture index
    /* 0x020C */ u8 mouth; //mouth texture index
    /* 0x020D */ u8 eyeExpression; //controls combined behavior of left and right eye
    /* 0x020E */ u8 mouthExpression; //redundant / buffer for mouth texture index
    /* 0x020F */ u8 unk_20F;
    /* 0x0210 */ s16 blinkTimer;
    /* 0x0212 */ s16 talkTimer1;
    /* 0x0214 */ s16 talkTimer2;
    /* 0x0216 */ s16 cueId;
    /* 0x0218 */ Vec3s jointTable[18];
    /* 0x0284 */ Vec3s morphTable[18];
} EnZl4; // size = 0x02F0

#endif
