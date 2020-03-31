#ifndef _Z_OBJ_COMB_H_
#define _Z_OBJ_COMB_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ActorFunc actionFunc;
    /* 0x0150 */ Collider collider;
    /* 0x0168 */ char unk_168[0x4];
    /* 0x016C */ ColliderBody* colliderBody;
    /* 0x0170 */ char unk_170[0x2C];
    /* 0x019C */ char unk_19C[0x14];
    /* 0x01B0 */ s16 unk_1B0;
    /* 0x01B2 */ s16 unk_1B2;
} ObjComb; // size = 0x01B4

extern const ActorInit Obj_Comb_InitVars;

#endif
