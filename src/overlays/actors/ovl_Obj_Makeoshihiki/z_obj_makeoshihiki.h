#ifndef _Z_OBJ_MAKEOSHIHIKI_H_
#define _Z_OBJ_MAKEOSHIHIKI_H_

#include <ultra64.h>
#include <global.h>

struct ObjMakeoshihiki;

typedef struct {
    /* 0x00 */ Vec3f posVecs[3];
    /* 0x24 */ u8 unk_24[0x3];
    /* 0x27 */ u8 paramVal1;
    /* 0x28 */ u8 paramVal2;
    /* 0x29 */ char unk_29[0x1];
    /* 0x2A */ s16 rotY;
} BlockConfig;

typedef struct ObjMakeoshihiki {
    /* 0x0000 */ Actor actor;
} ObjMakeoshihiki; // size = 0x014C

extern const ActorInit Obj_Makeoshihiki_InitVars;

#endif
