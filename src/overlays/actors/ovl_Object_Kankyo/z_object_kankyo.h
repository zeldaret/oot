#ifndef _Z_OBJECT_KANKYO_H_
#define _Z_OBJECT_KANKYO_H_

#include "ultra64.h"
#include "global.h"

struct ObjectKankyo;

typedef void (*ObjectKankyoActionFunc)(struct ObjectKankyo*, GlobalContext*);

typedef struct ObjectKankyoInner {
    u8 state;
    Vec3f unk4;
    Vec3f unk10;
    Vec3f unk1C;
    Vec3f unk28;
    f32 unk34;
    f32 unk38;
    u16 unk3C;
    u16 unk3E;
    u8 alpha;
    f32 unk44;
    u16 unk48;
    u16 unk4A;
    f32 unk4C;
    u16 unk50;
} ObjectKankyoInner; // size = 0x54

typedef struct ObjectKankyo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ObjectKankyoInner unk_14C[64];
    /* 0x164C */ Vec3f unk_164C;
    /* 0x1658 */ u8 unk_1658;
    /* 0x1659 */ u8 unk_1659;
    /* 0x165C */ ObjectKankyoActionFunc actionFunc;
} ObjectKankyo; // size = 0x1660

#endif
