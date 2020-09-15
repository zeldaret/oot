#ifndef _Z_EN_KAREBABA_H_
#define _Z_EN_KAREBABA_H_

/**
 * File: z_en_karebaba.h
 * Overlay: ovl_En_Karebaba
 * Description: Withered Deku Baba enemies
 */

#include <ultra64.h>
#include <ultra64/gbi.h>
#include <global.h>
#include <z64.h>
#include <macros.h>

extern const ActorInit En_Karebaba_InitVars;

struct EnKarebaba;

typedef void (*EnKarebabaActionFunc)(struct EnKarebaba*, GlobalContext*);

typedef struct EnKarebaba {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnKarebabaActionFunc actionFunc;
    /* 0x0194 */ Vec3s joints[8];
    /* 0x01C4 */ Vec3s anim[8];
    /* 0x01F4 */ CollisionPoly* boundFloor;
    /* 0x01F8 */ ColliderCylinder hitbox1;
    /* 0x0244 */ ColliderCylinder hitbox2;
} EnKarebaba; // size = 0x0290

#endif
