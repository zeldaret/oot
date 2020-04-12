#ifndef _Z_OBJ_SYOKUDAI_H_
#define _Z_OBJ_SYOKUDAI_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinderMain collider_14C;
    /* 0x0198 */ ColliderCylinderMain collider_198;
    /* 0x01E4 */ char unk_1E4[0x8];
    /* 0x01EC */ LightInfoPositional lightInfo;
    /* 0x01FA */ char unk_1FA[0x2];
} ObjSyokudai; // size = 0x01FC

extern const ActorInit Obj_Syokudai_InitVars;

#endif
