#ifndef _Z_OBJ_SYOKUDAI_H_
#define _Z_OBJ_SYOKUDAI_H_

#include <ultra64.h>
#include <global.h>

struct ObjSyokudai;

typedef struct ObjSyokudai {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider1;
    /* 0x0198 */ ColliderCylinder collider2;
    /* 0x01E4 */ s16 timer;
    /* 0x01E6 */ u8 flameTexScroll;
    /* 0x01E8 */ LightNode* lightNode;
    /* 0x01EC */ LightInfo lightInfo;
} ObjSyokudai; // size = 0x01FC

extern const ActorInit Obj_Syokudai_InitVars;

#endif
