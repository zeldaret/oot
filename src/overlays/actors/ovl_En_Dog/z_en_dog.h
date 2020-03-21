#ifndef _Z_EN_DOG_H_
#define _Z_EN_DOG_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ ActorFunc actionFunc;
    /* 0x0194 */ ColliderCylinderMain collider;
    /* 0x01E0 */ Path* path;
    /* 0x01E4 */ u8 reverse;
    /* 0x01E6 */ s16 waypoint;
    /* 0x01E8 */ s16 unusedAngle;
    /* 0x01EA */ s16 pad1;
    /* 0x01EC */ s16 behaviorTimer;
    /* 0x01EE */ s16 pad2;
    /* 0x01F0 */ s16 nextBehavior; 
    /* 0x01F2 */ s16 behavior;
    /* 0x01F4 */ u8 unk_1F4; // I believe this and the rest below belong to something skelanime
    /* 0x01F5 */ char unk_1F5[0x4D]; 
    /* 0x0242 */ u8 unk_242; 
    /* 0x0243 */ char unk_243[0x4D]; 
} EnDog; // size = 0x0290

extern const ActorInit En_Dog_InitVars;

#endif
