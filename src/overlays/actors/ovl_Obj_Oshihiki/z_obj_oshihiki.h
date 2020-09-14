#ifndef _Z_OBJ_OSHIHIKI_H_
#define _Z_OBJ_OSHIHIKI_H_

#include <ultra64.h>
#include <global.h>

struct ObjOshihiki;

typedef struct ObjOshihiki {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ char unk_164[0x5A];
    /* 0x01BE */ u8 unk_1BE;
    /* 0x01BF */ char unk_1BF[0x15];
} ObjOshihiki; // size = 0x01D4

extern const ActorInit Obj_Oshihiki_InitVars;

#endif
