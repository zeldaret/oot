#ifndef _Z_EN_NIW_GIRL_H_
#define _Z_EN_NIW_GIRL_H_

#include <ultra64.h>
#include <global.h>

struct EnNiwGirl;

typedef void (*EnNiwGirlActionFunc)(struct EnNuGIrl*, GlobalContext*);

typedef struct EnNiwGirl {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[17];
    /* 0x01F6 */ Vec3s transitionDrawTable[17];
    /* 0x025C */ EnNiwGirlActionFunc actionFunc;
    /* 0x0260 */ char unk_260[0x16];
    /* 0x0276 */ s16 unkFlag;
    /* 0x027A*/ char unk_278[0xC];
    /* 0x0284 */ Actor* attachedActor;
    /* 0x0288 */ ColliderCylinder collider;
    /* 0x02D4 */ char unk_2D4[0x28];
} EnNiwGirl; // size = 0x02FC

extern const ActorInit En_Niw_Girl_InitVars;

#endif
