#ifndef _Z_OBJ_COMB_H_
#define _Z_OBJ_COMB_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ActorFunc actionFunc;
    /* 0x0150 */ Collider collider;
    /* 0x0168 */ char unk_168[0x4];
    /* 0x016C */ ColliderBody* colliderBodyPtr;
    /* 0x0170 */ ColliderBody colliderBody;
    /* 0x0198 */ char unk_198[0x18];
    /* 0x01B0 */ s16 unk_1B0;
    /* 0x01B2 */ s16 unk_1B2;
} ObjComb; // size = 0x01B4

extern const ActorInit Obj_Comb_InitVars;

#endif
