#ifndef _Z_EN_BOM_H_
#define _Z_EN_BOM_H_

#include <ultra64.h>
#include <global.h>

struct EnBom;

typedef void (*EnBomActionFunc)(struct EnBomActionFunc*, struct GlobalContext*);

typedef struct EnBom {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder bombCollider;
    /* 0x0198 */ ColliderJntSph jntSphList;
    /* 0x01B8 */ ColliderJntSphItem explosionCollider[1];
    /* 0x01F8 */ s16 timer;
    /* 0x01FA */ s16 unk_1FA;
    /* 0x01FC */ f32 redIntensity;
    /* 0x0200 */ u8 bump;
    /* 0x0203 */ char unk_203[3];
    /* 0x0204 */ EnBomActionFunc actionFunc;
} EnBom; // size = 0x0208

extern const ActorInit En_Bom_InitVars;

#endif
