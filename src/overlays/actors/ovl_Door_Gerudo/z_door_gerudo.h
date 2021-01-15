#ifndef _Z_DOOR_GERUDO_H_
#define _Z_DOOR_GERUDO_H_

#include "ultra64.h"
#include "global.h"

struct DoorGerudo;

typedef void (*DoorGerudoActionFunc)(struct DoorGerudo*, GlobalContext*);

typedef struct DoorGerudo {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ s16 unk_164;
    /* 0x0166 */ u8 unk_166;
    /* 0x0168 */ DoorGerudoActionFunc actionFunc;
} DoorGerudo; // size = 0x016C

extern const ActorInit Door_Gerudo_InitVars;

#endif
