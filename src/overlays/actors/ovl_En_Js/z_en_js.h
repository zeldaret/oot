#ifndef _Z_EN_JS_H_
#define _Z_EN_JS_H_

#include <ultra64.h>
#include <global.h>

struct EnJs;

typedef void (*EnJsActionFunc)(struct EnJs*, GlobalContext*);

typedef struct EnJs {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider;
    /* 0x0198 */ SkelAnime skelAnime;
    /* 0x01DC */ Vec3s limbDrawTable[13];
    /* 0x022A */ Vec3s transitionDrawTable[13];
    /* 0x0272 */ char unk_272[12];
    /* 0x0284 */ s16 unk_284;
    /* 0x0286 */ char unk_286[6];
    /* 0x028C */ EnJsActionFunc actionfunc;
} EnJs; // size = 0x0290

extern const ActorInit En_Js_InitVars;

#endif
