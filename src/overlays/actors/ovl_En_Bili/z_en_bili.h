#ifndef _Z_EN_BILI_H_
#define _Z_EN_BILI_H_

#include "ultra64.h"
#include "global.h"

struct EnBili;

typedef void (*EnBiliActionFunc)(struct EnBili*, GlobalContext*);

typedef struct EnBili {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnBiliActionFunc actionFunc;
    /* 0x0194 */ u8 unk_194;
    /* 0x0195 */ u8 unk_195;
    /* 0x0196 */ s16 unk_196;
    /* 0x0198 */ Vec3s jointTable[5];
    /* 0x01B6 */ Vec3s morphTable[5];
    /* 0x01D4 */ ColliderCylinder collider;
} EnBili; // size = 0x0220

extern const ActorInit En_Bili_InitVars;

#endif
