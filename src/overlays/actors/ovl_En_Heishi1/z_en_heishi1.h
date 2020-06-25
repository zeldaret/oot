#ifndef _Z_EN_HEISHI1_H_
#define _Z_EN_HEISHI1_H_

#include <ultra64.h>
#include <global.h>

struct EnHeishi1;

typedef void (*EnHeishi1ActionFunc)(struct EnHeishi1*, Camera*, Player*);

typedef struct EnHeishi1 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[17];
    /* 0x01F6 */ Vec3s transitionDrawTable[17];
    /* 0x025C */ EnHeishi1ActionFunc actionFunc;
    /* 0x0260 */ char unk_160[0xA];
    /* 0x026A */ s16 type;
    /* 0x026C */ s16 path;
    /* 0x0270 */ char unk_270[0x12];
    /* 0x0280 */ f32 unk_280;
    union{
        struct{
            /* 0x0284 */ f32 animSpeed;
            /* 0x0288 */ f32 interpolation;
            /* 0x028C */ f32 moveSpeedTarget;
            /* 0x0290 */ f32 moveSpeedMax;
            /* 0x0294 */ f32 bodyTurnSpeedTarget;
            /* 0x0298 */ f32 bodyTurnSpeedMax;
            /* 0x029C */ f32 headTurnSpeedTarget;
            /* 0x02A0 */ f32 headTurnSpeedMax;
        };
        f32 animParams[8];
    };
    /* 0x02A4 */ char unk_2A4[0x8];
} EnHeishi1; // size = 0x02AC

extern const ActorInit En_Heishi1_InitVars;

#endif
